; Disassembly of "mgolf.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $035", ROMX[$4000], BANK[$35]

    inc h                                         ; $4000: $24
    ld b, b                                       ; $4001: $40
    cp [hl]                                       ; $4002: $be
    ld b, e                                       ; $4003: $43
    ccf                                           ; $4004: $3f
    ld b, l                                       ; $4005: $45
    ld hl, sp+$47                                 ; $4006: $f8 $47
    cp d                                          ; $4008: $ba
    ld c, [hl]                                    ; $4009: $4e
    dec bc                                        ; $400a: $0b
    ld d, e                                       ; $400b: $53
    adc e                                         ; $400c: $8b
    ld d, l                                       ; $400d: $55
    ld l, h                                       ; $400e: $6c
    ld e, c                                       ; $400f: $59
    ld d, b                                       ; $4010: $50
    ld e, e                                       ; $4011: $5b
    add sp, $5d                                   ; $4012: $e8 $5d
    ld [c], a                                     ; $4014: $e2
    ld l, c                                       ; $4015: $69
    ld d, h                                       ; $4016: $54
    ld l, h                                       ; $4017: $6c
    xor h                                         ; $4018: $ac
    ld l, l                                       ; $4019: $6d
    ld d, l                                       ; $401a: $55
    ld [hl], e                                    ; $401b: $73
    ei                                            ; $401c: $fb
    ld [hl], h                                    ; $401d: $74
    cp $75                                        ; $401e: $fe $75
    ld c, h                                       ; $4020: $4c
    ld a, b                                       ; $4021: $78
    ld e, h                                       ; $4022: $5c
    ld a, c                                       ; $4023: $79
    rst $28                                       ; $4024: $ef
    ld b, b                                       ; $4025: $40
    or $40                                        ; $4026: $f6 $40
    ld [hl-], a                                   ; $4028: $32
    ld b, b                                       ; $4029: $40
    rst $38                                       ; $402a: $ff
    ld b, b                                       ; $402b: $40
    ld l, d                                       ; $402c: $6a
    ld b, c                                       ; $402d: $41
    and l                                         ; $402e: $a5
    ld b, c                                       ; $402f: $41
    xor [hl]                                      ; $4030: $ae
    ld b, c                                       ; $4031: $41
    ld hl, $007b                                  ; $4032: $21 $7b $00
    dec b                                         ; $4035: $05
    and b                                         ; $4036: $a0
    ld a, [bc]                                    ; $4037: $0a
    adc b                                         ; $4038: $88
    add b                                         ; $4039: $80
    nop                                           ; $403a: $00
    ld b, b                                       ; $403b: $40
    ld bc, $2129                                  ; $403c: $01 $29 $21
    ld a, e                                       ; $403f: $7b
    nop                                           ; $4040: $00
    dec b                                         ; $4041: $05
    and b                                         ; $4042: $a0
    ld a, [bc]                                    ; $4043: $0a
    ld [hl], b                                    ; $4044: $70
    add b                                         ; $4045: $80
    nop                                           ; $4046: $00
    ld b, b                                       ; $4047: $40
    ld bc, $212a                                  ; $4048: $01 $2a $21
    ld a, e                                       ; $404b: $7b
    nop                                           ; $404c: $00
    dec b                                         ; $404d: $05
    and b                                         ; $404e: $a0
    ld a, [bc]                                    ; $404f: $0a
    ld [hl], b                                    ; $4050: $70
    add b                                         ; $4051: $80
    nop                                           ; $4052: $00
    ld b, b                                       ; $4053: $40
    ld bc, $212b                                  ; $4054: $01 $2b $21
    ld a, e                                       ; $4057: $7b
    nop                                           ; $4058: $00
    dec b                                         ; $4059: $05
    and b                                         ; $405a: $a0
    inc b                                         ; $405b: $04
    adc c                                         ; $405c: $89
    add b                                         ; $405d: $80
    nop                                           ; $405e: $00
    ld b, b                                       ; $405f: $40
    ld bc, $2129                                  ; $4060: $01 $29 $21
    ld a, e                                       ; $4063: $7b
    nop                                           ; $4064: $00
    dec b                                         ; $4065: $05
    and b                                         ; $4066: $a0
    inc b                                         ; $4067: $04
    ld [hl], c                                    ; $4068: $71
    add b                                         ; $4069: $80
    nop                                           ; $406a: $00
    ld b, b                                       ; $406b: $40
    ld bc, $212a                                  ; $406c: $01 $2a $21
    ld a, e                                       ; $406f: $7b
    nop                                           ; $4070: $00
    dec b                                         ; $4071: $05
    and b                                         ; $4072: $a0
    inc b                                         ; $4073: $04
    ld [hl], c                                    ; $4074: $71
    add b                                         ; $4075: $80
    nop                                           ; $4076: $00
    ld b, b                                       ; $4077: $40
    ld bc, $212b                                  ; $4078: $01 $2b $21
    ld a, e                                       ; $407b: $7b
    nop                                           ; $407c: $00
    ld de, $0aa0                                  ; $407d: $11 $a0 $0a
    adc d                                         ; $4080: $8a
    add b                                         ; $4081: $80
    nop                                           ; $4082: $00
    ld b, b                                       ; $4083: $40
    ld bc, $2129                                  ; $4084: $01 $29 $21
    ld a, e                                       ; $4087: $7b
    nop                                           ; $4088: $00
    ld de, $0aa0                                  ; $4089: $11 $a0 $0a
    ld [hl], d                                    ; $408c: $72
    add b                                         ; $408d: $80
    nop                                           ; $408e: $00
    ld b, b                                       ; $408f: $40
    ld bc, $212a                                  ; $4090: $01 $2a $21
    ld a, e                                       ; $4093: $7b
    nop                                           ; $4094: $00
    ld de, $0aa0                                  ; $4095: $11 $a0 $0a
    ld [hl], d                                    ; $4098: $72
    add b                                         ; $4099: $80
    nop                                           ; $409a: $00
    ld b, b                                       ; $409b: $40
    ld bc, $212b                                  ; $409c: $01 $2b $21
    ld a, e                                       ; $409f: $7b
    nop                                           ; $40a0: $00
    ld de, $04a0                                  ; $40a1: $11 $a0 $04
    adc e                                         ; $40a4: $8b
    add b                                         ; $40a5: $80
    nop                                           ; $40a6: $00
    ld b, b                                       ; $40a7: $40
    ld bc, $2129                                  ; $40a8: $01 $29 $21
    ld a, e                                       ; $40ab: $7b
    nop                                           ; $40ac: $00
    ld de, $04a0                                  ; $40ad: $11 $a0 $04
    ld [hl], e                                    ; $40b0: $73
    add b                                         ; $40b1: $80
    nop                                           ; $40b2: $00
    ld b, b                                       ; $40b3: $40
    ld bc, $212a                                  ; $40b4: $01 $2a $21
    ld a, e                                       ; $40b7: $7b
    nop                                           ; $40b8: $00
    ld de, $04a0                                  ; $40b9: $11 $a0 $04
    ld [hl], e                                    ; $40bc: $73
    add b                                         ; $40bd: $80
    nop                                           ; $40be: $00
    ld b, b                                       ; $40bf: $40
    ld bc, $212b                                  ; $40c0: $01 $2b $21
    ld a, e                                       ; $40c3: $7b
    nop                                           ; $40c4: $00
    dec bc                                        ; $40c5: $0b
    and b                                         ; $40c6: $a0
    ld b, $75                                     ; $40c7: $06 $75
    add b                                         ; $40c9: $80
    nop                                           ; $40ca: $00
    ld b, b                                       ; $40cb: $40
    ld bc, $2129                                  ; $40cc: $01 $29 $21
    ld a, e                                       ; $40cf: $7b
    nop                                           ; $40d0: $00
    dec bc                                        ; $40d1: $0b
    and b                                         ; $40d2: $a0
    ld b, $74                                     ; $40d3: $06 $74
    add b                                         ; $40d5: $80
    nop                                           ; $40d6: $00
    ld b, b                                       ; $40d7: $40
    ld bc, $212a                                  ; $40d8: $01 $2a $21
    ld a, e                                       ; $40db: $7b
    nop                                           ; $40dc: $00
    dec bc                                        ; $40dd: $0b
    and b                                         ; $40de: $a0
    ld b, $74                                     ; $40df: $06 $74
    add b                                         ; $40e1: $80
    nop                                           ; $40e2: $00
    ld b, b                                       ; $40e3: $40
    ld bc, $002b                                  ; $40e4: $01 $2b $00
    nop                                           ; $40e7: $00
    nop                                           ; $40e8: $00
    nop                                           ; $40e9: $00
    nop                                           ; $40ea: $00
    nop                                           ; $40eb: $00
    nop                                           ; $40ec: $00
    nop                                           ; $40ed: $00
    rst $38                                       ; $40ee: $ff
    ld bc, $00c0                                  ; $40ef: $01 $c0 $00
    dec bc                                        ; $40f2: $0b
    nop                                           ; $40f3: $00
    rrca                                          ; $40f4: $0f
    rst $38                                       ; $40f5: $ff
    ld bc, $00ff                                  ; $40f6: $01 $ff $00
    nop                                           ; $40f9: $00
    nop                                           ; $40fa: $00
    nop                                           ; $40fb: $00
    inc bc                                        ; $40fc: $03
    rlca                                          ; $40fd: $07
    rst $38                                       ; $40fe: $ff
    rst $38                                       ; $40ff: $ff
    rst $18                                       ; $4100: $df
    nop                                           ; $4101: $00
    ld a, [bc]                                    ; $4102: $0a
    ld hl, $0172                                  ; $4103: $21 $72 $01
    rst $18                                       ; $4106: $df
    ld c, $0a                                     ; $4107: $0e $0a
    ld a, $00                                     ; $4109: $3e $00
    rst $18                                       ; $410b: $df
    ld [$df0a], sp                                ; $410c: $08 $0a $df
    ld [bc], a                                    ; $410f: $02
    ld a, [bc]                                    ; $4110: $0a
    rst $28                                       ; $4111: $ef
    ld b, b                                       ; $4112: $40
    ld [bc], a                                    ; $4113: $02
    ret                                           ; $4114: $c9


    rst $30                                       ; $4115: $f7
    nop                                           ; $4116: $00
    ld c, $28                                     ; $4117: $0e $28
    ld c, a                                       ; $4119: $4f
    ld a, $01                                     ; $411a: $3e $01
    ld [$c3e0], a                                 ; $411c: $ea $e0 $c3
    ld hl, $0088                                  ; $411f: $21 $88 $00
    call Call_035_4345                            ; $4122: $cd $45 $43
    ret                                           ; $4125: $c9


    rst $30                                       ; $4126: $f7
    jr nz, jr_035_4137                            ; $4127: $20 $0e

    jr z, jr_035_4169                             ; $4129: $28 $3e

    ld a, $02                                     ; $412b: $3e $02
    ld [$c3e0], a                                 ; $412d: $ea $e0 $c3
    ld hl, $0089                                  ; $4130: $21 $89 $00
    call Call_035_4345                            ; $4133: $cd $45 $43
    ret                                           ; $4136: $c9


jr_035_4137:
    rst $30                                       ; $4137: $f7
    ld b, b                                       ; $4138: $40
    ld c, $28                                     ; $4139: $0e $28
    dec l                                         ; $413b: $2d
    ld a, $03                                     ; $413c: $3e $03
    ld [$c3e0], a                                 ; $413e: $ea $e0 $c3
    ld hl, $008a                                  ; $4141: $21 $8a $00
    call Call_035_4345                            ; $4144: $cd $45 $43
    ret                                           ; $4147: $c9


    rst $30                                       ; $4148: $f7
    ld h, b                                       ; $4149: $60
    ld c, $28                                     ; $414a: $0e $28
    inc e                                         ; $414c: $1c
    ld a, $04                                     ; $414d: $3e $04
    ld [$c3e0], a                                 ; $414f: $ea $e0 $c3
    ld hl, $008b                                  ; $4152: $21 $8b $00
    call Call_035_4345                            ; $4155: $cd $45 $43
    ret                                           ; $4158: $c9


    rst $30                                       ; $4159: $f7
    add b                                         ; $415a: $80
    ld c, $28                                     ; $415b: $0e $28
    dec bc                                        ; $415d: $0b
    ld a, $05                                     ; $415e: $3e $05
    ld [$c3e0], a                                 ; $4160: $ea $e0 $c3
    ld hl, $0075                                  ; $4163: $21 $75 $00
    call Call_035_4345                            ; $4166: $cd $45 $43

jr_035_4169:
    ret                                           ; $4169: $c9


    ld bc, $00ff                                  ; $416a: $01 $ff $00
    nop                                           ; $416d: $00
    dec d                                         ; $416e: $15
    ld b, c                                       ; $416f: $41
    ld b, $00                                     ; $4170: $06 $00
    ld [bc], a                                    ; $4172: $02
    rst $38                                       ; $4173: $ff
    nop                                           ; $4174: $00
    nop                                           ; $4175: $00
    ld h, $41                                     ; $4176: $26 $41
    ld b, $00                                     ; $4178: $06 $00
    inc bc                                        ; $417a: $03
    rst $38                                       ; $417b: $ff
    nop                                           ; $417c: $00
    nop                                           ; $417d: $00
    scf                                           ; $417e: $37
    ld b, c                                       ; $417f: $41
    ld b, $00                                     ; $4180: $06 $00
    inc b                                         ; $4182: $04
    rst $38                                       ; $4183: $ff
    nop                                           ; $4184: $00
    nop                                           ; $4185: $00
    ld c, b                                       ; $4186: $48
    ld b, c                                       ; $4187: $41
    ld b, $00                                     ; $4188: $06 $00
    dec b                                         ; $418a: $05
    rst $38                                       ; $418b: $ff
    nop                                           ; $418c: $00
    nop                                           ; $418d: $00
    ld e, c                                       ; $418e: $59
    ld b, c                                       ; $418f: $41
    ld b, $00                                     ; $4190: $06 $00
    rst $38                                       ; $4192: $ff
    rst $18                                       ; $4193: $df
    nop                                           ; $4194: $00
    ld a, [bc]                                    ; $4195: $0a
    ld hl, $0172                                  ; $4196: $21 $72 $01
    rst $18                                       ; $4199: $df
    ld c, $0a                                     ; $419a: $0e $0a
    ld a, $00                                     ; $419c: $3e $00
    rst $18                                       ; $419e: $df
    ld [$df0a], sp                                ; $419f: $08 $0a $df
    ld [bc], a                                    ; $41a2: $02
    ld a, [bc]                                    ; $41a3: $0a
    ret                                           ; $41a4: $c9


    ld bc, $00ff                                  ; $41a5: $01 $ff $00
    nop                                           ; $41a8: $00
    sub e                                         ; $41a9: $93
    ld b, c                                       ; $41aa: $41
    nop                                           ; $41ab: $00
    nop                                           ; $41ac: $00
    rst $38                                       ; $41ad: $ff
    call Call_035_41b2                            ; $41ae: $cd $b2 $41
    ret                                           ; $41b1: $c9


Call_035_41b2:
    rst $30                                       ; $41b2: $f7
    add b                                         ; $41b3: $80
    ld c, $ca                                     ; $41b4: $0e $ca
    inc bc                                        ; $41b6: $03
    ld b, d                                       ; $41b7: $42
    rst $30                                       ; $41b8: $f7
    and b                                         ; $41b9: $a0
    ld c, $ca                                     ; $41ba: $0e $ca
    rst $18                                       ; $41bc: $df
    ld b, c                                       ; $41bd: $41
    ld a, $0f                                     ; $41be: $3e $0f
    ld bc, $3f00                                  ; $41c0: $01 $00 $3f
    ld de, $3f00                                  ; $41c3: $11 $00 $3f
    rst $18                                       ; $41c6: $df
    jr nz, @+$0c                                  ; $41c7: $20 $0a

    ld a, $10                                     ; $41c9: $3e $10
    ld bc, $3f00                                  ; $41cb: $01 $00 $3f
    ld de, $3f00                                  ; $41ce: $11 $00 $3f
    rst $18                                       ; $41d1: $df
    jr nz, @+$0c                                  ; $41d2: $20 $0a

    ld a, $0e                                     ; $41d4: $3e $0e
    ld bc, $0b00                                  ; $41d6: $01 $00 $0b
    ld de, $06a0                                  ; $41d9: $11 $a0 $06
    rst $18                                       ; $41dc: $df
    jr nz, jr_035_41e9                            ; $41dd: $20 $0a

    ld h, $05                                     ; $41df: $26 $05
    ld l, $16                                     ; $41e1: $2e $16
    rst $18                                       ; $41e3: $df
    ld c, h                                       ; $41e4: $4c
    ld [bc], a                                    ; $41e5: $02
    and a                                         ; $41e6: $a7
    jr z, jr_035_41eb                             ; $41e7: $28 $02

jr_035_41e9:
    jr jr_035_41f8                                ; $41e9: $18 $0d

jr_035_41eb:
    ld a, $0f                                     ; $41eb: $3e $0f
    ld bc, $3f00                                  ; $41ed: $01 $00 $3f
    ld de, $3f00                                  ; $41f0: $11 $00 $3f
    rst $18                                       ; $41f3: $df
    jr nz, jr_035_4200                            ; $41f4: $20 $0a

    jr jr_035_4203                                ; $41f6: $18 $0b

jr_035_41f8:
    ld a, $10                                     ; $41f8: $3e $10
    ld bc, $3f00                                  ; $41fa: $01 $00 $3f
    ld de, $3f00                                  ; $41fd: $11 $00 $3f

jr_035_4200:
    rst $18                                       ; $4200: $df
    jr nz, @+$0c                                  ; $4201: $20 $0a

jr_035_4203:
    rst $30                                       ; $4203: $f7
    ld h, b                                       ; $4204: $60
    ld c, $ca                                     ; $4205: $0e $ca
    ld d, h                                       ; $4207: $54
    ld b, d                                       ; $4208: $42
    rst $30                                       ; $4209: $f7
    ld h, b                                       ; $420a: $60
    ld de, $30ca                                  ; $420b: $11 $ca $30
    ld b, d                                       ; $420e: $42
    ld a, $0c                                     ; $420f: $3e $0c
    ld bc, $3f00                                  ; $4211: $01 $00 $3f
    ld de, $3f00                                  ; $4214: $11 $00 $3f
    rst $18                                       ; $4217: $df
    jr nz, @+$0c                                  ; $4218: $20 $0a

    ld a, $0d                                     ; $421a: $3e $0d
    ld bc, $3f00                                  ; $421c: $01 $00 $3f
    ld de, $3f00                                  ; $421f: $11 $00 $3f
    rst $18                                       ; $4222: $df
    jr nz, @+$0c                                  ; $4223: $20 $0a

    ld a, $0b                                     ; $4225: $3e $0b
    ld bc, $1100                                  ; $4227: $01 $00 $11
    ld de, $04a0                                  ; $422a: $11 $a0 $04
    rst $18                                       ; $422d: $df
    jr nz, jr_035_423a                            ; $422e: $20 $0a

    ld h, $04                                     ; $4230: $26 $04
    ld l, $16                                     ; $4232: $2e $16
    rst $18                                       ; $4234: $df
    ld c, h                                       ; $4235: $4c
    ld [bc], a                                    ; $4236: $02
    and a                                         ; $4237: $a7
    jr z, jr_035_423c                             ; $4238: $28 $02

jr_035_423a:
    jr jr_035_4249                                ; $423a: $18 $0d

jr_035_423c:
    ld a, $0c                                     ; $423c: $3e $0c
    ld bc, $3f00                                  ; $423e: $01 $00 $3f
    ld de, $3f00                                  ; $4241: $11 $00 $3f
    rst $18                                       ; $4244: $df
    jr nz, jr_035_4251                            ; $4245: $20 $0a

    jr jr_035_4254                                ; $4247: $18 $0b

jr_035_4249:
    ld a, $0d                                     ; $4249: $3e $0d
    ld bc, $3f00                                  ; $424b: $01 $00 $3f
    ld de, $3f00                                  ; $424e: $11 $00 $3f

jr_035_4251:
    rst $18                                       ; $4251: $df
    jr nz, jr_035_425e                            ; $4252: $20 $0a

jr_035_4254:
    rst $30                                       ; $4254: $f7
    ld b, b                                       ; $4255: $40
    ld c, $28                                     ; $4256: $0e $28
    ld c, e                                       ; $4258: $4b
    rst $30                                       ; $4259: $f7
    ld b, b                                       ; $425a: $40
    ld de, $80ca                                  ; $425b: $11 $ca $80

jr_035_425e:
    ld b, d                                       ; $425e: $42
    ld a, $09                                     ; $425f: $3e $09
    ld bc, $3f00                                  ; $4261: $01 $00 $3f
    ld de, $3f00                                  ; $4264: $11 $00 $3f
    rst $18                                       ; $4267: $df
    jr nz, @+$0c                                  ; $4268: $20 $0a

    ld a, $0a                                     ; $426a: $3e $0a
    ld bc, $3f00                                  ; $426c: $01 $00 $3f
    ld de, $3f00                                  ; $426f: $11 $00 $3f
    rst $18                                       ; $4272: $df
    jr nz, @+$0c                                  ; $4273: $20 $0a

    ld a, $08                                     ; $4275: $3e $08
    ld bc, $1100                                  ; $4277: $01 $00 $11
    ld de, $0aa0                                  ; $427a: $11 $a0 $0a
    rst $18                                       ; $427d: $df
    jr nz, jr_035_428a                            ; $427e: $20 $0a

    ld h, $03                                     ; $4280: $26 $03
    ld l, $16                                     ; $4282: $2e $16
    rst $18                                       ; $4284: $df
    ld c, h                                       ; $4285: $4c
    ld [bc], a                                    ; $4286: $02
    and a                                         ; $4287: $a7
    jr z, jr_035_428c                             ; $4288: $28 $02

jr_035_428a:
    jr jr_035_4299                                ; $428a: $18 $0d

jr_035_428c:
    ld a, $09                                     ; $428c: $3e $09
    ld bc, $3f00                                  ; $428e: $01 $00 $3f
    ld de, $3f00                                  ; $4291: $11 $00 $3f
    rst $18                                       ; $4294: $df
    jr nz, jr_035_42a1                            ; $4295: $20 $0a

    jr jr_035_42a4                                ; $4297: $18 $0b

jr_035_4299:
    ld a, $0a                                     ; $4299: $3e $0a
    ld bc, $3f00                                  ; $429b: $01 $00 $3f
    ld de, $3f00                                  ; $429e: $11 $00 $3f

jr_035_42a1:
    rst $18                                       ; $42a1: $df
    jr nz, @+$0c                                  ; $42a2: $20 $0a

jr_035_42a4:
    rst $30                                       ; $42a4: $f7
    jr nz, @+$10                                  ; $42a5: $20 $0e

    jr z, jr_035_42f4                             ; $42a7: $28 $4b

    rst $30                                       ; $42a9: $f7
    jr nz, @+$13                                  ; $42aa: $20 $11

    jp z, Jump_035_42d0                           ; $42ac: $ca $d0 $42

    ld a, $06                                     ; $42af: $3e $06
    ld bc, $3f00                                  ; $42b1: $01 $00 $3f
    ld de, $3f00                                  ; $42b4: $11 $00 $3f
    rst $18                                       ; $42b7: $df
    jr nz, @+$0c                                  ; $42b8: $20 $0a

    ld a, $07                                     ; $42ba: $3e $07
    ld bc, $3f00                                  ; $42bc: $01 $00 $3f
    ld de, $3f00                                  ; $42bf: $11 $00 $3f
    rst $18                                       ; $42c2: $df
    jr nz, @+$0c                                  ; $42c3: $20 $0a

    ld a, $05                                     ; $42c5: $3e $05
    ld bc, $0500                                  ; $42c7: $01 $00 $05
    ld de, $04a0                                  ; $42ca: $11 $a0 $04
    rst $18                                       ; $42cd: $df
    jr nz, jr_035_42da                            ; $42ce: $20 $0a

Jump_035_42d0:
    ld h, $02                                     ; $42d0: $26 $02
    ld l, $16                                     ; $42d2: $2e $16
    rst $18                                       ; $42d4: $df
    ld c, h                                       ; $42d5: $4c
    ld [bc], a                                    ; $42d6: $02
    and a                                         ; $42d7: $a7
    jr z, jr_035_42dc                             ; $42d8: $28 $02

jr_035_42da:
    jr jr_035_42e9                                ; $42da: $18 $0d

jr_035_42dc:
    ld a, $06                                     ; $42dc: $3e $06
    ld bc, $3f00                                  ; $42de: $01 $00 $3f
    ld de, $3f00                                  ; $42e1: $11 $00 $3f
    rst $18                                       ; $42e4: $df
    jr nz, jr_035_42f1                            ; $42e5: $20 $0a

    jr jr_035_42f4                                ; $42e7: $18 $0b

jr_035_42e9:
    ld a, $07                                     ; $42e9: $3e $07
    ld bc, $3f00                                  ; $42eb: $01 $00 $3f
    ld de, $3f00                                  ; $42ee: $11 $00 $3f

jr_035_42f1:
    rst $18                                       ; $42f1: $df
    jr nz, jr_035_42fe                            ; $42f2: $20 $0a

jr_035_42f4:
    rst $30                                       ; $42f4: $f7
    nop                                           ; $42f5: $00
    ld c, $28                                     ; $42f6: $0e $28
    ld c, e                                       ; $42f8: $4b
    rst $30                                       ; $42f9: $f7
    nop                                           ; $42fa: $00
    ld de, $20ca                                  ; $42fb: $11 $ca $20

jr_035_42fe:
    ld b, e                                       ; $42fe: $43
    ld a, $03                                     ; $42ff: $3e $03
    ld bc, $3f00                                  ; $4301: $01 $00 $3f
    ld de, $3f00                                  ; $4304: $11 $00 $3f
    rst $18                                       ; $4307: $df
    jr nz, @+$0c                                  ; $4308: $20 $0a

    ld a, $04                                     ; $430a: $3e $04
    ld bc, $3f00                                  ; $430c: $01 $00 $3f
    ld de, $3f00                                  ; $430f: $11 $00 $3f
    rst $18                                       ; $4312: $df
    jr nz, @+$0c                                  ; $4313: $20 $0a

    ld a, $02                                     ; $4315: $3e $02
    ld bc, $0500                                  ; $4317: $01 $00 $05
    ld de, $0aa0                                  ; $431a: $11 $a0 $0a
    rst $18                                       ; $431d: $df
    jr nz, jr_035_432a                            ; $431e: $20 $0a

    ld h, $01                                     ; $4320: $26 $01
    ld l, $16                                     ; $4322: $2e $16
    rst $18                                       ; $4324: $df
    ld c, h                                       ; $4325: $4c
    ld [bc], a                                    ; $4326: $02
    and a                                         ; $4327: $a7
    jr z, jr_035_432c                             ; $4328: $28 $02

jr_035_432a:
    jr jr_035_4339                                ; $432a: $18 $0d

jr_035_432c:
    ld a, $03                                     ; $432c: $3e $03
    ld bc, $3f00                                  ; $432e: $01 $00 $3f
    ld de, $3f00                                  ; $4331: $11 $00 $3f
    rst $18                                       ; $4334: $df
    jr nz, jr_035_4341                            ; $4335: $20 $0a

    jr jr_035_4344                                ; $4337: $18 $0b

jr_035_4339:
    ld a, $04                                     ; $4339: $3e $04
    ld bc, $3f00                                  ; $433b: $01 $00 $3f
    ld de, $3f00                                  ; $433e: $11 $00 $3f

jr_035_4341:
    rst $18                                       ; $4341: $df
    jr nz, @+$0c                                  ; $4342: $20 $0a

jr_035_4344:
    ret                                           ; $4344: $c9


Call_035_4345:
    add hl, hl                                    ; $4345: $29
    add hl, hl                                    ; $4346: $29
    add hl, hl                                    ; $4347: $29
    add hl, hl                                    ; $4348: $29
    add hl, hl                                    ; $4349: $29
    ld e, l                                       ; $434a: $5d
    ld d, h                                       ; $434b: $54
    call Call_000_2d10                            ; $434c: $cd $10 $2d
    jr z, jr_035_436d                             ; $434f: $28 $1c

    ld hl, $083f                                  ; $4351: $21 $3f $08
    rst $18                                       ; $4354: $df
    ld c, $0a                                     ; $4355: $0e $0a
    ld a, [$c3e0]                                 ; $4357: $fa $e0 $c3
    rst $18                                       ; $435a: $df
    ld e, d                                       ; $435b: $5a
    dec b                                         ; $435c: $05
    ld a, [$c3e0]                                 ; $435d: $fa $e0 $c3
    cp $05                                        ; $4360: $fe $05
    jr nz, jr_035_438a                            ; $4362: $20 $26

    rst $18                                       ; $4364: $df
    db $10                                        ; $4365: $10
    ld a, [bc]                                    ; $4366: $0a
    ld a, $80                                     ; $4367: $3e $80
    rst $18                                       ; $4369: $df
    ld [$c90a], sp                                ; $436a: $08 $0a $c9

jr_035_436d:
    rst $30                                       ; $436d: $f7
    nop                                           ; $436e: $00
    nop                                           ; $436f: $00
    jr nz, jr_035_437a                            ; $4370: $20 $08

    ld hl, $0843                                  ; $4372: $21 $43 $08
    rst $18                                       ; $4375: $df
    ld c, $0a                                     ; $4376: $0e $0a
    jr jr_035_4380                                ; $4378: $18 $06

jr_035_437a:
    ld hl, $0841                                  ; $437a: $21 $41 $08
    rst $18                                       ; $437d: $df
    ld c, $0a                                     ; $437e: $0e $0a

jr_035_4380:
    ld a, [$c3e0]                                 ; $4380: $fa $e0 $c3
    cp $05                                        ; $4383: $fe $05
    jr nz, jr_035_438a                            ; $4385: $20 $03

    rst $18                                       ; $4387: $df
    db $10                                        ; $4388: $10
    ld a, [bc]                                    ; $4389: $0a

jr_035_438a:
    call Call_035_4396                            ; $438a: $cd $96 $43
    call Call_035_43ae                            ; $438d: $cd $ae $43
    ld a, $80                                     ; $4390: $3e $80
    rst $18                                       ; $4392: $df
    ld [$c90a], sp                                ; $4393: $08 $0a $c9

Call_035_4396:
    ld a, [$c3e0]                                 ; $4396: $fa $e0 $c3
    ld h, a                                       ; $4399: $67
    ld l, $16                                     ; $439a: $2e $16
    rst $18                                       ; $439c: $df
    ld c, h                                       ; $439d: $4c
    ld [bc], a                                    ; $439e: $02
    and a                                         ; $439f: $a7
    jr z, jr_035_43a8                             ; $43a0: $28 $06

    ld a, $02                                     ; $43a2: $3e $02
    ld [$c3e1], a                                 ; $43a4: $ea $e1 $c3
    ret                                           ; $43a7: $c9


jr_035_43a8:
    ld a, $03                                     ; $43a8: $3e $03
    ld [$c3e1], a                                 ; $43aa: $ea $e1 $c3
    ret                                           ; $43ad: $c9


Call_035_43ae:
    ld a, [$c3e0]                                 ; $43ae: $fa $e0 $c3
    rst $18                                       ; $43b1: $df
    ld e, d                                       ; $43b2: $5a
    dec b                                         ; $43b3: $05
    ld a, [$c3e1]                                 ; $43b4: $fa $e1 $c3
    ld l, a                                       ; $43b7: $6f
    ld h, $00                                     ; $43b8: $26 $00
    rst $18                                       ; $43ba: $df
    ld d, [hl]                                    ; $43bb: $56
    dec b                                         ; $43bc: $05
    ret                                           ; $43bd: $c9


    ld [bc], a                                    ; $43be: $02
    ld b, h                                       ; $43bf: $44
    add hl, bc                                    ; $43c0: $09
    ld b, h                                       ; $43c1: $44
    call z, Call_000_1243                         ; $43c2: $cc $43 $12
    ld b, h                                       ; $43c5: $44
    inc de                                        ; $43c6: $13
    ld b, h                                       ; $43c7: $44
    inc d                                         ; $43c8: $14
    ld b, h                                       ; $43c9: $44
    dec d                                         ; $43ca: $15
    ld b, h                                       ; $43cb: $44
    nop                                           ; $43cc: $00
    nop                                           ; $43cd: $00
    nop                                           ; $43ce: $00
    nop                                           ; $43cf: $00
    nop                                           ; $43d0: $00
    nop                                           ; $43d1: $00
    nop                                           ; $43d2: $00
    nop                                           ; $43d3: $00
    rst $38                                       ; $43d4: $ff
    ld hl, $007b                                  ; $43d5: $21 $7b $00
    dec bc                                        ; $43d8: $0b
    nop                                           ; $43d9: $00
    dec b                                         ; $43da: $05
    nop                                           ; $43db: $00
    nop                                           ; $43dc: $00
    nop                                           ; $43dd: $00
    ld b, b                                       ; $43de: $40
    ld bc, $2114                                  ; $43df: $01 $14 $21
    ld a, e                                       ; $43e2: $7b
    nop                                           ; $43e3: $00
    add hl, bc                                    ; $43e4: $09
    nop                                           ; $43e5: $00
    dec b                                         ; $43e6: $05
    nop                                           ; $43e7: $00
    nop                                           ; $43e8: $00
    nop                                           ; $43e9: $00
    ld b, b                                       ; $43ea: $40
    ld bc, $210e                                  ; $43eb: $01 $0e $21
    ld a, e                                       ; $43ee: $7b
    nop                                           ; $43ef: $00
    dec c                                         ; $43f0: $0d
    nop                                           ; $43f1: $00
    dec b                                         ; $43f2: $05
    nop                                           ; $43f3: $00
    nop                                           ; $43f4: $00
    nop                                           ; $43f5: $00
    ld b, b                                       ; $43f6: $40
    ld bc, $0015                                  ; $43f7: $01 $15 $00
    nop                                           ; $43fa: $00
    nop                                           ; $43fb: $00
    nop                                           ; $43fc: $00
    nop                                           ; $43fd: $00
    nop                                           ; $43fe: $00
    nop                                           ; $43ff: $00
    nop                                           ; $4400: $00
    rst $38                                       ; $4401: $ff
    ld bc, $00c0                                  ; $4402: $01 $c0 $00
    dec bc                                        ; $4405: $0b
    nop                                           ; $4406: $00
    dec bc                                        ; $4407: $0b
    rst $38                                       ; $4408: $ff
    ld bc, $00ff                                  ; $4409: $01 $ff $00
    nop                                           ; $440c: $00
    nop                                           ; $440d: $00
    nop                                           ; $440e: $00
    ld [hl-], a                                   ; $440f: $32
    ld bc, $ffff                                  ; $4410: $01 $ff $ff
    ret                                           ; $4413: $c9


    rst $38                                       ; $4414: $ff
    ld hl, $0487                                  ; $4415: $21 $87 $04
    rst $18                                       ; $4418: $df
    ld c, $0a                                     ; $4419: $0e $0a
    ldh a, [$95]                                  ; $441b: $f0 $95
    ld hl, $43d5                                  ; $441d: $21 $d5 $43
    rst $18                                       ; $4420: $df
    ld b, $0a                                     ; $4421: $06 $0a
    ld a, $02                                     ; $4423: $3e $02
    ld bc, $0010                                  ; $4425: $01 $10 $00
    rst $18                                       ; $4428: $df
    ld d, $0a                                     ; $4429: $16 $0a
    ld a, $03                                     ; $442b: $3e $03
    ld bc, $0010                                  ; $442d: $01 $10 $00
    rst $18                                       ; $4430: $df
    ld d, $0a                                     ; $4431: $16 $0a
    ld a, $04                                     ; $4433: $3e $04
    ld bc, $0010                                  ; $4435: $01 $10 $00
    rst $18                                       ; $4438: $df
    ld d, $0a                                     ; $4439: $16 $0a
    ld c, $08                                     ; $443b: $0e $08
    call Call_000_25af                            ; $443d: $cd $af $25
    call Call_000_2625                            ; $4440: $cd $25 $26
    push af                                       ; $4443: $f5
    ld a, $0a                                     ; $4444: $3e $0a
    rst $18                                       ; $4446: $df
    inc b                                         ; $4447: $04
    ld a, [bc]                                    ; $4448: $0a
    pop af                                        ; $4449: $f1
    ld a, $02                                     ; $444a: $3e $02
    ld b, a                                       ; $444c: $47
    ld a, $07                                     ; $444d: $3e $07
    rst $18                                       ; $444f: $df
    ld [hl-], a                                   ; $4450: $32
    ld a, [bc]                                    ; $4451: $0a
    ld a, $02                                     ; $4452: $3e $02
    rst $18                                       ; $4454: $df
    inc [hl]                                      ; $4455: $34
    ld a, [bc]                                    ; $4456: $0a
    push af                                       ; $4457: $f5
    ld a, $0a                                     ; $4458: $3e $0a
    rst $18                                       ; $445a: $df
    inc b                                         ; $445b: $04
    ld a, [bc]                                    ; $445c: $0a
    pop af                                        ; $445d: $f1
    push af                                       ; $445e: $f5
    ld a, $0a                                     ; $445f: $3e $0a
    rst $18                                       ; $4461: $df
    inc b                                         ; $4462: $04
    ld a, [bc]                                    ; $4463: $0a
    pop af                                        ; $4464: $f1
    push af                                       ; $4465: $f5
    ld a, $14                                     ; $4466: $3e $14
    rst $18                                       ; $4468: $df
    inc b                                         ; $4469: $04
    ld a, [bc]                                    ; $446a: $0a
    pop af                                        ; $446b: $f1
    push af                                       ; $446c: $f5
    ld a, $0a                                     ; $446d: $3e $0a
    rst $18                                       ; $446f: $df
    inc b                                         ; $4470: $04
    ld a, [bc]                                    ; $4471: $0a
    pop af                                        ; $4472: $f1
    ld a, $02                                     ; $4473: $3e $02
    ld b, $80                                     ; $4475: $06 $80
    rst $18                                       ; $4477: $df
    inc l                                         ; $4478: $2c
    ld a, [bc]                                    ; $4479: $0a
    push af                                       ; $447a: $f5
    ld a, $14                                     ; $447b: $3e $14
    rst $18                                       ; $447d: $df
    inc b                                         ; $447e: $04
    ld a, [bc]                                    ; $447f: $0a
    pop af                                        ; $4480: $f1
    ld a, $03                                     ; $4481: $3e $03
    ld b, $00                                     ; $4483: $06 $00
    rst $18                                       ; $4485: $df
    inc l                                         ; $4486: $2c
    ld a, [bc]                                    ; $4487: $0a
    push af                                       ; $4488: $f5
    ld a, $1e                                     ; $4489: $3e $1e
    rst $18                                       ; $448b: $df
    inc b                                         ; $448c: $04
    ld a, [bc]                                    ; $448d: $0a
    pop af                                        ; $448e: $f1
    ld a, $02                                     ; $448f: $3e $02
    ld b, $40                                     ; $4491: $06 $40
    rst $18                                       ; $4493: $df
    inc l                                         ; $4494: $2c
    ld a, [bc]                                    ; $4495: $0a
    push af                                       ; $4496: $f5
    ld a, $0a                                     ; $4497: $3e $0a
    rst $18                                       ; $4499: $df
    inc b                                         ; $449a: $04
    ld a, [bc]                                    ; $449b: $0a
    pop af                                        ; $449c: $f1
    ld a, $03                                     ; $449d: $3e $03
    ld b, $40                                     ; $449f: $06 $40
    rst $18                                       ; $44a1: $df
    inc l                                         ; $44a2: $2c
    ld a, [bc]                                    ; $44a3: $0a
    push af                                       ; $44a4: $f5
    ld a, $0a                                     ; $44a5: $3e $0a
    rst $18                                       ; $44a7: $df
    inc b                                         ; $44a8: $04
    ld a, [bc]                                    ; $44a9: $0a
    pop af                                        ; $44aa: $f1
    ld a, $03                                     ; $44ab: $3e $03
    ld b, $40                                     ; $44ad: $06 $40
    ld de, $0200                                  ; $44af: $11 $00 $02
    rst $18                                       ; $44b2: $df
    jr z, jr_035_44bf                             ; $44b3: $28 $0a

    ld a, $03                                     ; $44b5: $3e $03
    rst $18                                       ; $44b7: $df
    ld e, $0a                                     ; $44b8: $1e $0a
    push af                                       ; $44ba: $f5
    ld a, $0a                                     ; $44bb: $3e $0a
    rst $18                                       ; $44bd: $df
    inc b                                         ; $44be: $04

jr_035_44bf:
    ld a, [bc]                                    ; $44bf: $0a
    pop af                                        ; $44c0: $f1
    push af                                       ; $44c1: $f5
    ld a, $0a                                     ; $44c2: $3e $0a
    rst $18                                       ; $44c4: $df
    inc b                                         ; $44c5: $04
    ld a, [bc]                                    ; $44c6: $0a
    pop af                                        ; $44c7: $f1
    ld a, $03                                     ; $44c8: $3e $03
    ld b, $c0                                     ; $44ca: $06 $c0
    rst $18                                       ; $44cc: $df
    inc l                                         ; $44cd: $2c
    ld a, [bc]                                    ; $44ce: $0a
    push af                                       ; $44cf: $f5
    ld a, $14                                     ; $44d0: $3e $14
    rst $18                                       ; $44d2: $df
    inc b                                         ; $44d3: $04
    ld a, [bc]                                    ; $44d4: $0a
    pop af                                        ; $44d5: $f1
    ld a, $03                                     ; $44d6: $3e $03
    ld b, a                                       ; $44d8: $47
    ld a, $07                                     ; $44d9: $3e $07
    rst $18                                       ; $44db: $df
    ld [hl-], a                                   ; $44dc: $32
    ld a, [bc]                                    ; $44dd: $0a
    ld a, $03                                     ; $44de: $3e $03
    rst $18                                       ; $44e0: $df
    inc [hl]                                      ; $44e1: $34
    ld a, [bc]                                    ; $44e2: $0a
    push af                                       ; $44e3: $f5
    ld a, $0a                                     ; $44e4: $3e $0a
    rst $18                                       ; $44e6: $df
    inc b                                         ; $44e7: $04
    ld a, [bc]                                    ; $44e8: $0a
    pop af                                        ; $44e9: $f1
    push af                                       ; $44ea: $f5
    ld a, $0a                                     ; $44eb: $3e $0a
    rst $18                                       ; $44ed: $df
    inc b                                         ; $44ee: $04
    ld a, [bc]                                    ; $44ef: $0a
    pop af                                        ; $44f0: $f1
    ld a, $03                                     ; $44f1: $3e $03
    ld b, $40                                     ; $44f3: $06 $40
    rst $18                                       ; $44f5: $df
    inc l                                         ; $44f6: $2c
    ld a, [bc]                                    ; $44f7: $0a
    push af                                       ; $44f8: $f5
    ld a, $0a                                     ; $44f9: $3e $0a
    rst $18                                       ; $44fb: $df
    inc b                                         ; $44fc: $04
    ld a, [bc]                                    ; $44fd: $0a
    pop af                                        ; $44fe: $f1
    push af                                       ; $44ff: $f5
    ld a, $0a                                     ; $4500: $3e $0a
    rst $18                                       ; $4502: $df
    inc b                                         ; $4503: $04
    ld a, [bc]                                    ; $4504: $0a
    pop af                                        ; $4505: $f1
    ld a, $03                                     ; $4506: $3e $03
    ld b, $40                                     ; $4508: $06 $40
    rst $18                                       ; $450a: $df
    inc l                                         ; $450b: $2c
    ld a, [bc]                                    ; $450c: $0a
    ld a, $04                                     ; $450d: $3e $04
    ld b, $40                                     ; $450f: $06 $40
    ld de, $0200                                  ; $4511: $11 $00 $02
    rst $18                                       ; $4514: $df
    jr z, jr_035_4521                             ; $4515: $28 $0a

    ld a, $04                                     ; $4517: $3e $04
    rst $18                                       ; $4519: $df
    ld e, $0a                                     ; $451a: $1e $0a
    push af                                       ; $451c: $f5
    ld a, $0a                                     ; $451d: $3e $0a
    rst $18                                       ; $451f: $df
    inc b                                         ; $4520: $04

jr_035_4521:
    ld a, [bc]                                    ; $4521: $0a
    pop af                                        ; $4522: $f1
    push af                                       ; $4523: $f5
    ld a, $14                                     ; $4524: $3e $14
    rst $18                                       ; $4526: $df
    inc b                                         ; $4527: $04
    ld a, [bc]                                    ; $4528: $0a
    pop af                                        ; $4529: $f1
    ld a, $02                                     ; $452a: $3e $02
    ld b, $40                                     ; $452c: $06 $40
    ld de, $0200                                  ; $452e: $11 $00 $02
    rst $18                                       ; $4531: $df
    jr z, jr_035_453e                             ; $4532: $28 $0a

    ld a, $02                                     ; $4534: $3e $02
    rst $18                                       ; $4536: $df
    ld e, $0a                                     ; $4537: $1e $0a
    ld a, $01                                     ; $4539: $3e $01
    ld [$c441], a                                 ; $453b: $ea $41 $c4

jr_035_453e:
    ret                                           ; $453e: $c9


    jp nz, $c945                                  ; $453f: $c2 $45 $c9

    ld b, l                                       ; $4542: $45
    ld c, l                                       ; $4543: $4d
    ld b, l                                       ; $4544: $45
    inc l                                         ; $4545: $2c
    ld b, [hl]                                    ; $4546: $46
    ld e, l                                       ; $4547: $5d
    ld b, [hl]                                    ; $4548: $46
    sub c                                         ; $4549: $91
    ld b, a                                       ; $454a: $47
    sbc d                                         ; $454b: $9a
    ld b, a                                       ; $454c: $47
    ld hl, $007b                                  ; $454d: $21 $7b $00
    dec e                                         ; $4550: $1d
    nop                                           ; $4551: $00
    rla                                           ; $4552: $17
    nop                                           ; $4553: $00
    nop                                           ; $4554: $00
    nop                                           ; $4555: $00
    add b                                         ; $4556: $80
    ld bc, $2116                                  ; $4557: $01 $16 $21
    ld a, e                                       ; $455a: $7b
    nop                                           ; $455b: $00
    add hl, de                                    ; $455c: $19
    nop                                           ; $455d: $00
    rla                                           ; $455e: $17
    nop                                           ; $455f: $00
    nop                                           ; $4560: $00
    nop                                           ; $4561: $00
    nop                                           ; $4562: $00
    ld bc, $210d                                  ; $4563: $01 $0d $21
    ld a, e                                       ; $4566: $7b
    nop                                           ; $4567: $00
    dec de                                        ; $4568: $1b
    nop                                           ; $4569: $00
    inc de                                        ; $456a: $13
    nop                                           ; $456b: $00
    nop                                           ; $456c: $00
    nop                                           ; $456d: $00
    ret nz                                        ; $456e: $c0

    ld bc, $210a                                  ; $456f: $01 $0a $21
    ld a, e                                       ; $4572: $7b
    nop                                           ; $4573: $00
    dec bc                                        ; $4574: $0b
    nop                                           ; $4575: $00
    add hl, de                                    ; $4576: $19
    nop                                           ; $4577: $00
    nop                                           ; $4578: $00
    nop                                           ; $4579: $00
    ret nz                                        ; $457a: $c0

    ld bc, $210d                                  ; $457b: $01 $0d $21
    ld a, e                                       ; $457e: $7b
    nop                                           ; $457f: $00
    add hl, bc                                    ; $4580: $09
    nop                                           ; $4581: $00
    rla                                           ; $4582: $17
    nop                                           ; $4583: $00
    nop                                           ; $4584: $00
    nop                                           ; $4585: $00
    ret nz                                        ; $4586: $c0

    ld bc, $210a                                  ; $4587: $01 $0a $21
    ld a, e                                       ; $458a: $7b
    nop                                           ; $458b: $00
    rlca                                          ; $458c: $07
    nop                                           ; $458d: $00
    add hl, bc                                    ; $458e: $09
    cp l                                          ; $458f: $bd
    nop                                           ; $4590: $00
    nop                                           ; $4591: $00
    nop                                           ; $4592: $00
    ld bc, $2104                                  ; $4593: $01 $04 $21
    ld a, e                                       ; $4596: $7b
    nop                                           ; $4597: $00
    add hl, bc                                    ; $4598: $09
    nop                                           ; $4599: $00
    rlca                                          ; $459a: $07
    cp l                                          ; $459b: $bd
    nop                                           ; $459c: $00
    nop                                           ; $459d: $00
    ld b, b                                       ; $459e: $40
    ld bc, $2105                                  ; $459f: $01 $05 $21
    ld a, e                                       ; $45a2: $7b
    nop                                           ; $45a3: $00
    dec bc                                        ; $45a4: $0b
    nop                                           ; $45a5: $00
    rlca                                          ; $45a6: $07
    cp l                                          ; $45a7: $bd
    nop                                           ; $45a8: $00
    nop                                           ; $45a9: $00
    ld b, b                                       ; $45aa: $40
    ld bc, $2106                                  ; $45ab: $01 $06 $21
    ld a, e                                       ; $45ae: $7b
    nop                                           ; $45af: $00
    dec c                                         ; $45b0: $0d
    nop                                           ; $45b1: $00
    add hl, bc                                    ; $45b2: $09
    cp l                                          ; $45b3: $bd
    nop                                           ; $45b4: $00
    nop                                           ; $45b5: $00
    add b                                         ; $45b6: $80
    ld bc, $0007                                  ; $45b7: $01 $07 $00
    nop                                           ; $45ba: $00
    nop                                           ; $45bb: $00
    nop                                           ; $45bc: $00
    nop                                           ; $45bd: $00
    nop                                           ; $45be: $00
    nop                                           ; $45bf: $00
    nop                                           ; $45c0: $00
    rst $38                                       ; $45c1: $ff
    ld bc, $00c0                                  ; $45c2: $01 $c0 $00
    jr jr_035_45c7                                ; $45c5: $18 $00

jr_035_45c7:
    ld e, $ff                                     ; $45c7: $1e $ff
    ld bc, $00ff                                  ; $45c9: $01 $ff $00
    nop                                           ; $45cc: $00
    nop                                           ; $45cd: $00
    nop                                           ; $45ce: $00
    ld bc, $ff01                                  ; $45cf: $01 $01 $ff

Call_035_45d2:
    ld a, $02                                     ; $45d2: $3e $02
    rst $18                                       ; $45d4: $df
    ld a, [bc]                                    ; $45d5: $0a
    ld a, [bc]                                    ; $45d6: $0a
    push af                                       ; $45d7: $f5
    ld a, $0a                                     ; $45d8: $3e $0a
    rst $18                                       ; $45da: $df
    inc b                                         ; $45db: $04
    ld a, [bc]                                    ; $45dc: $0a
    pop af                                        ; $45dd: $f1
    rst $18                                       ; $45de: $df
    ld [de], a                                    ; $45df: $12
    ld a, [bc]                                    ; $45e0: $0a
    rst $18                                       ; $45e1: $df
    inc c                                         ; $45e2: $0c
    ld a, [bc]                                    ; $45e3: $0a
    push af                                       ; $45e4: $f5
    ld a, $05                                     ; $45e5: $3e $05
    rst $18                                       ; $45e7: $df
    inc b                                         ; $45e8: $04
    ld a, [bc]                                    ; $45e9: $0a
    pop af                                        ; $45ea: $f1
    and a                                         ; $45eb: $a7
    jr z, jr_035_45f4                             ; $45ec: $28 $06

    ld a, $02                                     ; $45ee: $3e $02
    rst $18                                       ; $45f0: $df
    ld [$c90a], sp                                ; $45f1: $08 $0a $c9

jr_035_45f4:
    rst $18                                       ; $45f4: $df
    db $10                                        ; $45f5: $10
    ld a, [bc]                                    ; $45f6: $0a
    ld a, $02                                     ; $45f7: $3e $02
    rst $18                                       ; $45f9: $df
    ld [$f50a], sp                                ; $45fa: $08 $0a $f5
    ld a, $0a                                     ; $45fd: $3e $0a
    rst $18                                       ; $45ff: $df
    inc b                                         ; $4600: $04
    ld a, [bc]                                    ; $4601: $0a
    pop af                                        ; $4602: $f1
    ret                                           ; $4603: $c9


    ld hl, $0466                                  ; $4604: $21 $66 $04
    rst $18                                       ; $4607: $df
    ld c, $0a                                     ; $4608: $0e $0a
    call Call_035_45d2                            ; $460a: $cd $d2 $45
    ret                                           ; $460d: $c9


    ld hl, $046b                                  ; $460e: $21 $6b $04
    rst $18                                       ; $4611: $df
    ld c, $0a                                     ; $4612: $0e $0a
    call Call_035_45d2                            ; $4614: $cd $d2 $45
    ret                                           ; $4617: $c9


    ld hl, $0470                                  ; $4618: $21 $70 $04
    rst $18                                       ; $461b: $df
    ld c, $0a                                     ; $461c: $0e $0a
    call Call_035_45d2                            ; $461e: $cd $d2 $45
    ret                                           ; $4621: $c9


    ld hl, $0475                                  ; $4622: $21 $75 $04
    rst $18                                       ; $4625: $df
    ld c, $0a                                     ; $4626: $0e $0a
    call Call_035_45d2                            ; $4628: $cd $d2 $45
    ret                                           ; $462b: $c9


    ld [bc], a                                    ; $462c: $02
    rst $38                                       ; $462d: $ff
    nop                                           ; $462e: $00
    nop                                           ; $462f: $00
    jp hl                                         ; $4630: $e9


    ld bc, $0000                                  ; $4631: $01 $00 $00
    inc bc                                        ; $4634: $03
    rst $38                                       ; $4635: $ff
    nop                                           ; $4636: $00
    nop                                           ; $4637: $00
    ld [$0001], a                                 ; $4638: $ea $01 $00
    nop                                           ; $463b: $00
    inc b                                         ; $463c: $04
    rst $38                                       ; $463d: $ff
    nop                                           ; $463e: $00
    nop                                           ; $463f: $00
    db $eb                                        ; $4640: $eb
    ld bc, $0003                                  ; $4641: $01 $03 $00
    dec b                                         ; $4644: $05
    rst $38                                       ; $4645: $ff
    nop                                           ; $4646: $00
    nop                                           ; $4647: $00
    db $ec                                        ; $4648: $ec
    ld bc, $0001                                  ; $4649: $01 $01 $00
    ld b, $ff                                     ; $464c: $06 $ff
    nop                                           ; $464e: $00
    nop                                           ; $464f: $00
    db $ed                                        ; $4650: $ed
    ld bc, $0003                                  ; $4651: $01 $03 $00
    dec bc                                        ; $4654: $0b
    rst $38                                       ; $4655: $ff
    nop                                           ; $4656: $00
    nop                                           ; $4657: $00
    db $ed                                        ; $4658: $ed
    ld bc, $0003                                  ; $4659: $01 $03 $00
    rst $38                                       ; $465c: $ff
    ld bc, $00ff                                  ; $465d: $01 $ff $00
    nop                                           ; $4660: $00
    ld a, e                                       ; $4661: $7b
    ld a, e                                       ; $4662: $7b
    ld b, $00                                     ; $4663: $06 $00
    rst $38                                       ; $4665: $ff
    call Call_035_47bf                            ; $4666: $cd $bf $47
    ret                                           ; $4669: $c9


Call_035_466a:
    ld a, $00                                     ; $466a: $3e $00
    ld bc, $0018                                  ; $466c: $01 $18 $00
    rst $18                                       ; $466f: $df
    ld d, $0a                                     ; $4670: $16 $0a
    ld bc, $0018                                  ; $4672: $01 $18 $00
    rst $18                                       ; $4675: $df
    ld [hl], $0a                                  ; $4676: $36 $0a
    ld a, $00                                     ; $4678: $3e $00
    ld bc, $1800                                  ; $467a: $01 $00 $18
    ld de, $1900                                  ; $467d: $11 $00 $19
    rst $18                                       ; $4680: $df
    ld [hl+], a                                   ; $4681: $22
    ld a, [bc]                                    ; $4682: $0a
    xor a                                         ; $4683: $af
    ld bc, $1800                                  ; $4684: $01 $00 $18
    ld de, $1900                                  ; $4687: $11 $00 $19
    rst $18                                       ; $468a: $df
    jr c, @+$0c                                   ; $468b: $38 $0a

    rst $18                                       ; $468d: $df
    inc a                                         ; $468e: $3c
    ld a, [bc]                                    ; $468f: $0a
    ld a, $00                                     ; $4690: $3e $00
    ld bc, $1500                                  ; $4692: $01 $00 $15
    ld de, $1900                                  ; $4695: $11 $00 $19
    rst $18                                       ; $4698: $df
    ld [hl+], a                                   ; $4699: $22
    ld a, [bc]                                    ; $469a: $0a
    xor a                                         ; $469b: $af
    ld bc, $1500                                  ; $469c: $01 $00 $15
    ld de, $1900                                  ; $469f: $11 $00 $19
    rst $18                                       ; $46a2: $df
    jr c, @+$0c                                   ; $46a3: $38 $0a

    rst $18                                       ; $46a5: $df
    inc a                                         ; $46a6: $3c
    ld a, [bc]                                    ; $46a7: $0a
    ld a, $00                                     ; $46a8: $3e $00
    ld bc, $1500                                  ; $46aa: $01 $00 $15
    ld de, $1600                                  ; $46ad: $11 $00 $16
    rst $18                                       ; $46b0: $df
    ld [hl+], a                                   ; $46b1: $22
    ld a, [bc]                                    ; $46b2: $0a
    xor a                                         ; $46b3: $af
    ld bc, $1500                                  ; $46b4: $01 $00 $15
    ld de, $1600                                  ; $46b7: $11 $00 $16
    rst $18                                       ; $46ba: $df
    jr c, @+$0c                                   ; $46bb: $38 $0a

    rst $18                                       ; $46bd: $df
    inc a                                         ; $46be: $3c
    ld a, [bc]                                    ; $46bf: $0a
    ld a, $00                                     ; $46c0: $3e $00
    ld bc, $0b00                                  ; $46c2: $01 $00 $0b
    ld de, $1600                                  ; $46c5: $11 $00 $16
    rst $18                                       ; $46c8: $df
    ld [hl+], a                                   ; $46c9: $22
    ld a, [bc]                                    ; $46ca: $0a
    xor a                                         ; $46cb: $af
    ld bc, $0b00                                  ; $46cc: $01 $00 $0b
    ld de, $1600                                  ; $46cf: $11 $00 $16
    rst $18                                       ; $46d2: $df
    jr c, @+$0c                                   ; $46d3: $38 $0a

    rst $18                                       ; $46d5: $df
    inc a                                         ; $46d6: $3c
    ld a, [bc]                                    ; $46d7: $0a
    ld a, $00                                     ; $46d8: $3e $00
    ld bc, $0b00                                  ; $46da: $01 $00 $0b
    ld de, $1400                                  ; $46dd: $11 $00 $14
    rst $18                                       ; $46e0: $df
    ld [hl+], a                                   ; $46e1: $22
    ld a, [bc]                                    ; $46e2: $0a
    xor a                                         ; $46e3: $af
    ld bc, $0b00                                  ; $46e4: $01 $00 $0b
    ld de, $1400                                  ; $46e7: $11 $00 $14
    rst $18                                       ; $46ea: $df
    jr c, jr_035_46f7                             ; $46eb: $38 $0a

    rst $18                                       ; $46ed: $df
    inc a                                         ; $46ee: $3c
    ld a, [bc]                                    ; $46ef: $0a
    rst $30                                       ; $46f0: $f7
    and b                                         ; $46f1: $a0
    rla                                           ; $46f2: $17
    jr z, jr_035_46f6                             ; $46f3: $28 $01

    ret                                           ; $46f5: $c9


jr_035_46f6:
    xor a                                         ; $46f6: $af

jr_035_46f7:
    ld [$c4b3], a                                 ; $46f7: $ea $b3 $c4
    ld de, $87c0                                  ; $46fa: $11 $c0 $87
    ld b, $00                                     ; $46fd: $06 $00
    rst $18                                       ; $46ff: $df
    inc c                                         ; $4700: $0c
    ld bc, $ddcd                                  ; $4701: $01 $cd $dd
    dec b                                         ; $4704: $05
    ld a, $0f                                     ; $4705: $3e $0f
    ld hl, $4666                                  ; $4707: $21 $66 $46
    call Call_000_23e8                            ; $470a: $cd $e8 $23
    ld hl, $01ee                                  ; $470d: $21 $ee $01
    rst $18                                       ; $4710: $df
    ld c, $0a                                     ; $4711: $0e $0a
    ld bc, $0020                                  ; $4713: $01 $20 $00
    rst $18                                       ; $4716: $df
    ld [hl], $0a                                  ; $4717: $36 $0a
    ld a, $06                                     ; $4719: $3e $06
    ld b, $c0                                     ; $471b: $06 $c0
    rst $18                                       ; $471d: $df
    inc l                                         ; $471e: $2c
    ld a, [bc]                                    ; $471f: $0a
    ld a, $06                                     ; $4720: $3e $06
    ld b, a                                       ; $4722: $47
    ld a, $07                                     ; $4723: $3e $07
    rst $18                                       ; $4725: $df
    ld [hl-], a                                   ; $4726: $32
    ld a, [bc]                                    ; $4727: $0a
    ld a, $06                                     ; $4728: $3e $06
    rst $18                                       ; $472a: $df
    inc [hl]                                      ; $472b: $34
    ld a, [bc]                                    ; $472c: $0a
    push af                                       ; $472d: $f5
    ld a, $0a                                     ; $472e: $3e $0a
    rst $18                                       ; $4730: $df
    inc b                                         ; $4731: $04
    ld a, [bc]                                    ; $4732: $0a
    pop af                                        ; $4733: $f1
    ld a, $00                                     ; $4734: $3e $00
    ld b, $40                                     ; $4736: $06 $40
    rst $18                                       ; $4738: $df
    inc l                                         ; $4739: $2c
    ld a, [bc]                                    ; $473a: $0a
    ld a, $05                                     ; $473b: $3e $05
    ld b, $c0                                     ; $473d: $06 $c0
    rst $18                                       ; $473f: $df
    inc l                                         ; $4740: $2c
    ld a, [bc]                                    ; $4741: $0a
    push af                                       ; $4742: $f5
    ld a, $0a                                     ; $4743: $3e $0a
    rst $18                                       ; $4745: $df
    inc b                                         ; $4746: $04
    ld a, [bc]                                    ; $4747: $0a
    pop af                                        ; $4748: $f1
    ld a, $05                                     ; $4749: $3e $05
    ld b, $c0                                     ; $474b: $06 $c0
    ld de, $0200                                  ; $474d: $11 $00 $02
    rst $18                                       ; $4750: $df
    jr z, jr_035_475d                             ; $4751: $28 $0a

    ld a, $05                                     ; $4753: $3e $05
    rst $18                                       ; $4755: $df
    ld e, $0a                                     ; $4756: $1e $0a
    push af                                       ; $4758: $f5
    ld a, $0a                                     ; $4759: $3e $0a
    rst $18                                       ; $475b: $df
    inc b                                         ; $475c: $04

jr_035_475d:
    ld a, [bc]                                    ; $475d: $0a
    pop af                                        ; $475e: $f1
    rst $30                                       ; $475f: $f7
    nop                                           ; $4760: $00
    ld de, $1228                                  ; $4761: $11 $28 $12
    rst $30                                       ; $4764: $f7
    jr nz, @+$13                                  ; $4765: $20 $11

    jr z, jr_035_4776                             ; $4767: $28 $0d

    rst $30                                       ; $4769: $f7
    ld b, b                                       ; $476a: $40
    ld de, $0828                                  ; $476b: $11 $28 $08
    rst $30                                       ; $476e: $f7
    ld h, b                                       ; $476f: $60
    ld de, $0328                                  ; $4770: $11 $28 $03
    rst $18                                       ; $4773: $df
    db $10                                        ; $4774: $10
    ld a, [bc]                                    ; $4775: $0a

jr_035_4776:
    push af                                       ; $4776: $f5
    ld a, $1e                                     ; $4777: $3e $1e
    rst $18                                       ; $4779: $df
    inc b                                         ; $477a: $04
    ld a, [bc]                                    ; $477b: $0a
    pop af                                        ; $477c: $f1
    xor a                                         ; $477d: $af
    ld bc, $0a00                                  ; $477e: $01 $00 $0a
    ld de, $0d00                                  ; $4781: $11 $00 $0d
    rst $18                                       ; $4784: $df
    jr c, jr_035_4791                             ; $4785: $38 $0a

    rst $18                                       ; $4787: $df
    inc a                                         ; $4788: $3c
    ld a, [bc]                                    ; $4789: $0a
    ld hl, $4666                                  ; $478a: $21 $66 $46
    call Call_000_2449                            ; $478d: $cd $49 $24
    ret                                           ; $4790: $c9


jr_035_4791:
    ld bc, $60ff                                  ; $4791: $01 $ff $60
    nop                                           ; $4794: $00
    ld l, d                                       ; $4795: $6a
    ld b, [hl]                                    ; $4796: $46
    nop                                           ; $4797: $00
    nop                                           ; $4798: $00
    rst $38                                       ; $4799: $ff
    ld c, $08                                     ; $479a: $0e $08
    call Call_000_25af                            ; $479c: $cd $af $25
    call Call_000_2625                            ; $479f: $cd $25 $26
    call Call_035_466a                            ; $47a2: $cd $6a $46
    ld a, $01                                     ; $47a5: $3e $01
    ld [$c441], a                                 ; $47a7: $ea $41 $c4
    ret                                           ; $47aa: $c9


    ldh a, [$f0]                                  ; $47ab: $f0 $f0
    nop                                           ; $47ad: $00
    nop                                           ; $47ae: $00
    ld [hl], b                                    ; $47af: $70
    jr nz, jr_035_47b2                            ; $47b0: $20 $00

jr_035_47b2:
    nop                                           ; $47b2: $00
    ld d, b                                       ; $47b3: $50
    inc d                                         ; $47b4: $14
    jr nz, jr_035_47b7                            ; $47b5: $20 $00

jr_035_47b7:
    ld d, b                                       ; $47b7: $50
    inc d                                         ; $47b8: $14
    nop                                           ; $47b9: $00
    nop                                           ; $47ba: $00
    jr nc, jr_035_47dd                            ; $47bb: $30 $20

    jr nz, jr_035_47bf                            ; $47bd: $20 $00

Call_035_47bf:
jr_035_47bf:
    push af                                       ; $47bf: $f5
    push bc                                       ; $47c0: $c5
    push de                                       ; $47c1: $d5
    push hl                                       ; $47c2: $e5
    ld a, [$c4b3]                                 ; $47c3: $fa $b3 $c4
    add a                                         ; $47c6: $87
    add a                                         ; $47c7: $87
    ld hl, $47ab                                  ; $47c8: $21 $ab $47
    add l                                         ; $47cb: $85
    ld l, a                                       ; $47cc: $6f
    jr nc, jr_035_47d0                            ; $47cd: $30 $01

    inc h                                         ; $47cf: $24

jr_035_47d0:
    ld a, [hl+]                                   ; $47d0: $2a
    ld d, a                                       ; $47d1: $57
    ld a, [hl+]                                   ; $47d2: $2a
    ld e, a                                       ; $47d3: $5f
    ld b, [hl]                                    ; $47d4: $46
    ld a, [$c4b2]                                 ; $47d5: $fa $b2 $c4
    rrca                                          ; $47d8: $0f
    and $07                                       ; $47d9: $e6 $07
    bit 5, b                                      ; $47db: $cb $68

jr_035_47dd:
    jr z, jr_035_47e0                             ; $47dd: $28 $01

    cpl                                           ; $47df: $2f

jr_035_47e0:
    add $00                                       ; $47e0: $c6 $00
    add d                                         ; $47e2: $82
    ld d, a                                       ; $47e3: $57
    ld a, [$c4b2]                                 ; $47e4: $fa $b2 $c4
    rrca                                          ; $47e7: $0f
    and $07                                       ; $47e8: $e6 $07
    add $08                                       ; $47ea: $c6 $08
    add e                                         ; $47ec: $83
    ld e, a                                       ; $47ed: $5f
    ld c, $7c                                     ; $47ee: $0e $7c
    call Call_000_26a4                            ; $47f0: $cd $a4 $26
    pop hl                                        ; $47f3: $e1
    pop de                                        ; $47f4: $d1
    pop bc                                        ; $47f5: $c1
    pop af                                        ; $47f6: $f1
    ret                                           ; $47f7: $c9


    or a                                          ; $47f8: $b7
    ld c, b                                       ; $47f9: $48
    jp z, Jump_000_0648                           ; $47fa: $ca $48 $06

    ld c, b                                       ; $47fd: $48
    db $e3                                        ; $47fe: $e3
    ld c, b                                       ; $47ff: $48
    db $e4                                        ; $4800: $e4
    ld c, b                                       ; $4801: $48
    push hl                                       ; $4802: $e5
    ld c, b                                       ; $4803: $48
    and $48                                       ; $4804: $e6 $48
    ld hl, $007b                                  ; $4806: $21 $7b $00
    inc bc                                        ; $4809: $03
    nop                                           ; $480a: $00
    dec c                                         ; $480b: $0d
    nop                                           ; $480c: $00
    nop                                           ; $480d: $00
    nop                                           ; $480e: $00
    add b                                         ; $480f: $80
    ld bc, $2116                                  ; $4810: $01 $16 $21

jr_035_4813:
    ld a, e                                       ; $4813: $7b
    nop                                           ; $4814: $00
    rrca                                          ; $4815: $0f
    nop                                           ; $4816: $00
    rrca                                          ; $4817: $0f
    nop                                           ; $4818: $00
    nop                                           ; $4819: $00
    nop                                           ; $481a: $00
    ret nz                                        ; $481b: $c0

    ld bc, $870d                                  ; $481c: $01 $0d $87
    ld c, b                                       ; $481f: $48
    nop                                           ; $4820: $00
    rla                                           ; $4821: $17
    nop                                           ; $4822: $00
    ld de, $0000                                  ; $4823: $11 $00 $00
    nop                                           ; $4826: $00
    add b                                         ; $4827: $80
    ld bc, $2116                                  ; $4828: $01 $16 $21
    ld a, e                                       ; $482b: $7b
    nop                                           ; $482c: $00
    dec e                                         ; $482d: $1d
    nop                                           ; $482e: $00
    dec c                                         ; $482f: $0d
    nop                                           ; $4830: $00
    nop                                           ; $4831: $00
    nop                                           ; $4832: $00
    add b                                         ; $4833: $80
    ld bc, $210d                                  ; $4834: $01 $0d $21
    ld a, e                                       ; $4837: $7b
    nop                                           ; $4838: $00
    add hl, bc                                    ; $4839: $09
    nop                                           ; $483a: $00
    dec bc                                        ; $483b: $0b
    nop                                           ; $483c: $00
    nop                                           ; $483d: $00
    nop                                           ; $483e: $00
    ld b, b                                       ; $483f: $40
    ld bc, $211d                                  ; $4840: $01 $1d $21
    ld a, e                                       ; $4843: $7b
    nop                                           ; $4844: $00
    add hl, bc                                    ; $4845: $09
    nop                                           ; $4846: $00
    ld b, c                                       ; $4847: $41
    nop                                           ; $4848: $00
    nop                                           ; $4849: $00
    nop                                           ; $484a: $00
    add b                                         ; $484b: $80
    ld bc, $210c                                  ; $484c: $01 $0c $21
    ld a, e                                       ; $484f: $7b
    ld b, b                                       ; $4850: $40
    jr jr_035_4813                                ; $4851: $18 $c0

    ld a, [bc]                                    ; $4853: $0a
    nop                                           ; $4854: $00
    nop                                           ; $4855: $00
    nop                                           ; $4856: $00
    ld b, b                                       ; $4857: $40
    ld bc, $2126                                  ; $4858: $01 $26 $21
    ld a, e                                       ; $485b: $7b
    ld b, b                                       ; $485c: $40
    ld [hl+], a                                   ; $485d: $22
    ret nz                                        ; $485e: $c0

    ld a, [bc]                                    ; $485f: $0a
    nop                                           ; $4860: $00
    nop                                           ; $4861: $00
    nop                                           ; $4862: $00
    ld b, b                                       ; $4863: $40
    ld bc, $2126                                  ; $4864: $01 $26 $21
    ld a, e                                       ; $4867: $7b
    ld b, b                                       ; $4868: $40
    ld [hl-], a                                   ; $4869: $32
    ret nz                                        ; $486a: $c0

    ld a, [bc]                                    ; $486b: $0a
    nop                                           ; $486c: $00
    nop                                           ; $486d: $00
    nop                                           ; $486e: $00
    ld b, b                                       ; $486f: $40
    ld bc, $2126                                  ; $4870: $01 $26 $21
    ld a, e                                       ; $4873: $7b
    nop                                           ; $4874: $00
    daa                                           ; $4875: $27
    nop                                           ; $4876: $00
    dec bc                                        ; $4877: $0b
    nop                                           ; $4878: $00
    nop                                           ; $4879: $00
    nop                                           ; $487a: $00
    ld b, b                                       ; $487b: $40
    ld bc, $0000                                  ; $487c: $01 $00 $00
    nop                                           ; $487f: $00
    nop                                           ; $4880: $00
    nop                                           ; $4881: $00
    nop                                           ; $4882: $00
    nop                                           ; $4883: $00
    nop                                           ; $4884: $00
    nop                                           ; $4885: $00
    rst $38                                       ; $4886: $ff
    ld bc, $0d0a                                  ; $4887: $01 $0a $0d
    ld c, $05                                     ; $488a: $0e $05
    nop                                           ; $488c: $00
    dec c                                         ; $488d: $0d
    dec de                                        ; $488e: $1b
    ld bc, $0700                                  ; $488f: $01 $00 $07
    ret nz                                        ; $4892: $c0

    nop                                           ; $4893: $00
    ld [bc], a                                    ; $4894: $02
    ld [bc], a                                    ; $4895: $02
    ld bc, $0746                                  ; $4896: $01 $46 $07
    ld b, b                                       ; $4899: $40
    nop                                           ; $489a: $00
    ld [bc], a                                    ; $489b: $02
    ld [bc], a                                    ; $489c: $02
    ld bc, $0746                                  ; $489d: $01 $46 $07
    ret nz                                        ; $48a0: $c0

    nop                                           ; $48a1: $00
    ld [bc], a                                    ; $48a2: $02
    ld [bc], a                                    ; $48a3: $02
    ld bc, $075a                                  ; $48a4: $01 $5a $07
    ld b, b                                       ; $48a7: $40
    nop                                           ; $48a8: $00
    ld bc, $0102                                  ; $48a9: $01 $02 $01
    ld b, [hl]                                    ; $48ac: $46
    rlca                                          ; $48ad: $07
    ret nz                                        ; $48ae: $c0

    nop                                           ; $48af: $00
    ld bc, $0102                                  ; $48b0: $01 $02 $01
    ld e, d                                       ; $48b3: $5a
    inc c                                         ; $48b4: $0c
    db $e3                                        ; $48b5: $e3
    rst $38                                       ; $48b6: $ff
    ld bc, $00c0                                  ; $48b7: $01 $c0 $00
    add hl, bc                                    ; $48ba: $09
    nop                                           ; $48bb: $00
    dec c                                         ; $48bc: $0d
    ld [bc], a                                    ; $48bd: $02
    nop                                           ; $48be: $00
    nop                                           ; $48bf: $00
    ld hl, $0d00                                  ; $48c0: $21 $00 $0d
    inc bc                                        ; $48c3: $03
    ret nz                                        ; $48c4: $c0

    nop                                           ; $48c5: $00
    add hl, bc                                    ; $48c6: $09
    nop                                           ; $48c7: $00
    dec c                                         ; $48c8: $0d
    rst $38                                       ; $48c9: $ff
    ld bc, $00ff                                  ; $48ca: $01 $ff $00
    nop                                           ; $48cd: $00
    nop                                           ; $48ce: $00
    nop                                           ; $48cf: $00
    inc [hl]                                      ; $48d0: $34
    ld bc, $ff02                                  ; $48d1: $01 $02 $ff
    nop                                           ; $48d4: $00
    nop                                           ; $48d5: $00
    nop                                           ; $48d6: $00
    nop                                           ; $48d7: $00
    inc [hl]                                      ; $48d8: $34
    ld bc, $ff03                                  ; $48d9: $01 $03 $ff
    nop                                           ; $48dc: $00
    nop                                           ; $48dd: $00
    nop                                           ; $48de: $00
    nop                                           ; $48df: $00
    inc [hl]                                      ; $48e0: $34
    ld bc, $ffff                                  ; $48e1: $01 $ff $ff
    ret                                           ; $48e4: $c9


    rst $38                                       ; $48e5: $ff
    ld a, [$c46a]                                 ; $48e6: $fa $6a $c4
    cp $01                                        ; $48e9: $fe $01
    jp z, Jump_035_492c                           ; $48eb: $ca $2c $49

    cp $02                                        ; $48ee: $fe $02
    jp z, Jump_035_4ae5                           ; $48f0: $ca $e5 $4a

    cp $03                                        ; $48f3: $fe $03
    jp z, Jump_035_4b7d                           ; $48f5: $ca $7d $4b

    ret                                           ; $48f8: $c9


    dec c                                         ; $48f9: $0d
    ld c, $08                                     ; $48fa: $0e $08
    nop                                           ; $48fc: $00
    inc b                                         ; $48fd: $04
    nop                                           ; $48fe: $00
    dec de                                        ; $48ff: $1b
    nop                                           ; $4900: $00
    dec c                                         ; $4901: $0d
    ld [bc], a                                    ; $4902: $02
    rlca                                          ; $4903: $07
    ret nz                                        ; $4904: $c0

    add b                                         ; $4905: $80
    ld [bc], a                                    ; $4906: $02
    ld [bc], a                                    ; $4907: $02
    rlca                                          ; $4908: $07
    ret nz                                        ; $4909: $c0

    ld b, b                                       ; $490a: $40
    ld [bc], a                                    ; $490b: $02
    db $10                                        ; $490c: $10
    ld a, [bc]                                    ; $490d: $0a
    ld [bc], a                                    ; $490e: $02
    inc bc                                        ; $490f: $03
    nop                                           ; $4910: $00
    dec de                                        ; $4911: $1b
    nop                                           ; $4912: $00
    ld hl, $0201                                  ; $4913: $21 $01 $02
    nop                                           ; $4916: $00
    dec c                                         ; $4917: $0d
    ld c, $08                                     ; $4918: $0e $08
    nop                                           ; $491a: $00
    inc b                                         ; $491b: $04
    nop                                           ; $491c: $00
    dec de                                        ; $491d: $1b
    nop                                           ; $491e: $00
    dec c                                         ; $491f: $0d
    ld [bc], a                                    ; $4920: $02
    rlca                                          ; $4921: $07
    ret nz                                        ; $4922: $c0

    add b                                         ; $4923: $80
    ld [bc], a                                    ; $4924: $02
    ld [bc], a                                    ; $4925: $02
    rlca                                          ; $4926: $07
    ret nz                                        ; $4927: $c0

    ld b, b                                       ; $4928: $40
    ld [bc], a                                    ; $4929: $02
    ld [bc], a                                    ; $492a: $02
    nop                                           ; $492b: $00

Jump_035_492c:
    call Call_035_4d9f                            ; $492c: $cd $9f $4d
    ld c, $04                                     ; $492f: $0e $04
    call Call_000_25af                            ; $4931: $cd $af $25
    call Call_000_2625                            ; $4934: $cd $25 $26
    ld de, $000e                                  ; $4937: $11 $0e $00
    ld a, $07                                     ; $493a: $3e $07
    ld bc, $1d00                                  ; $493c: $01 $00 $1d
    ld de, $0b00                                  ; $493f: $11 $00 $0b
    rst $18                                       ; $4942: $df
    jr nz, jr_035_494f                            ; $4943: $20 $0a

    ld a, [$c450]                                 ; $4945: $fa $50 $c4
    cp $08                                        ; $4948: $fe $08
    jp nz, Jump_035_4987                          ; $494a: $c2 $87 $49

    ld a, $02                                     ; $494d: $3e $02

jr_035_494f:
    ld bc, $1500                                  ; $494f: $01 $00 $15
    ld de, $0d80                                  ; $4952: $11 $80 $0d
    rst $18                                       ; $4955: $df
    jr nz, @+$0c                                  ; $4956: $20 $0a

    ld a, $03                                     ; $4958: $3e $03
    ld bc, $1700                                  ; $495a: $01 $00 $17
    ld de, $0d80                                  ; $495d: $11 $80 $0d
    rst $18                                       ; $4960: $df
    jr nz, @+$0c                                  ; $4961: $20 $0a

    ld a, $04                                     ; $4963: $3e $04
    ld bc, $1b00                                  ; $4965: $01 $00 $1b
    ld de, $0d80                                  ; $4968: $11 $80 $0d
    rst $18                                       ; $496b: $df
    jr nz, @+$0c                                  ; $496c: $20 $0a

    ld a, $05                                     ; $496e: $3e $05
    ld bc, $1900                                  ; $4970: $01 $00 $19
    ld de, $0d80                                  ; $4973: $11 $80 $0d
    rst $18                                       ; $4976: $df
    jr nz, @+$0c                                  ; $4977: $20 $0a

    ld a, $0b                                     ; $4979: $3e $0b
    ld bc, $3f00                                  ; $497b: $01 $00 $3f
    ld de, $3f00                                  ; $497e: $11 $00 $3f
    rst $18                                       ; $4981: $df
    jr nz, jr_035_498e                            ; $4982: $20 $0a

    jp Jump_035_4a34                              ; $4984: $c3 $34 $4a


Jump_035_4987:
    ld a, $00                                     ; $4987: $3e $00
    ld b, $01                                     ; $4989: $06 $01
    rst $18                                       ; $498b: $df
    ld a, [hl+]                                   ; $498c: $2a
    ld a, [bc]                                    ; $498d: $0a

jr_035_498e:
    ld a, $00                                     ; $498e: $3e $00
    ld b, $40                                     ; $4990: $06 $40
    ld de, $0280                                  ; $4992: $11 $80 $02
    rst $18                                       ; $4995: $df
    jr z, jr_035_49a2                             ; $4996: $28 $0a

    ld a, $00                                     ; $4998: $3e $00
    rst $18                                       ; $499a: $df
    ld e, $0a                                     ; $499b: $1e $0a
    ldh a, [$95]                                  ; $499d: $f0 $95
    ld b, a                                       ; $499f: $47
    ld a, $04                                     ; $49a0: $3e $04

jr_035_49a2:
    ld de, $7b22                                  ; $49a2: $11 $22 $7b
    rst $18                                       ; $49a5: $df
    jr @+$0c                                      ; $49a6: $18 $0a

    push af                                       ; $49a8: $f5
    ld a, $01                                     ; $49a9: $3e $01
    rst $18                                       ; $49ab: $df
    inc b                                         ; $49ac: $04
    ld a, [bc]                                    ; $49ad: $0a
    pop af                                        ; $49ae: $f1
    ld a, $02                                     ; $49af: $3e $02
    ld bc, $0010                                  ; $49b1: $01 $10 $00
    rst $18                                       ; $49b4: $df
    ld d, $0a                                     ; $49b5: $16 $0a
    ld a, $03                                     ; $49b7: $3e $03
    ld bc, $0010                                  ; $49b9: $01 $10 $00
    rst $18                                       ; $49bc: $df
    ld d, $0a                                     ; $49bd: $16 $0a
    ld a, $04                                     ; $49bf: $3e $04
    ld bc, $0010                                  ; $49c1: $01 $10 $00
    rst $18                                       ; $49c4: $df
    ld d, $0a                                     ; $49c5: $16 $0a
    ld a, $05                                     ; $49c7: $3e $05
    ld bc, $0010                                  ; $49c9: $01 $10 $00
    rst $18                                       ; $49cc: $df
    ld d, $0a                                     ; $49cd: $16 $0a
    push af                                       ; $49cf: $f5
    ld a, $01                                     ; $49d0: $3e $01
    rst $18                                       ; $49d2: $df
    inc b                                         ; $49d3: $04
    ld a, [bc]                                    ; $49d4: $0a
    pop af                                        ; $49d5: $f1
    ld a, $02                                     ; $49d6: $3e $02
    ld bc, $1580                                  ; $49d8: $01 $80 $15
    ld de, $0d80                                  ; $49db: $11 $80 $0d
    rst $18                                       ; $49de: $df
    ld [hl+], a                                   ; $49df: $22
    ld a, [bc]                                    ; $49e0: $0a
    ld a, $03                                     ; $49e1: $3e $03
    ld b, $c0                                     ; $49e3: $06 $c0
    ld de, $0200                                  ; $49e5: $11 $00 $02
    rst $18                                       ; $49e8: $df
    jr z, jr_035_49f5                             ; $49e9: $28 $0a

    ld a, $03                                     ; $49eb: $3e $03
    rst $18                                       ; $49ed: $df
    ld e, $0a                                     ; $49ee: $1e $0a
    ld a, $03                                     ; $49f0: $3e $03
    ld bc, $1700                                  ; $49f2: $01 $00 $17

jr_035_49f5:
    ld de, $0d80                                  ; $49f5: $11 $80 $0d
    rst $18                                       ; $49f8: $df
    ld [hl+], a                                   ; $49f9: $22
    ld a, [bc]                                    ; $49fa: $0a
    ld a, $04                                     ; $49fb: $3e $04
    ld bc, $1a00                                  ; $49fd: $01 $00 $1a
    ld de, $0d80                                  ; $4a00: $11 $80 $0d
    rst $18                                       ; $4a03: $df
    ld [hl+], a                                   ; $4a04: $22
    ld a, [bc]                                    ; $4a05: $0a
    ld a, $05                                     ; $4a06: $3e $05
    ld bc, $1880                                  ; $4a08: $01 $80 $18
    ld de, $0d80                                  ; $4a0b: $11 $80 $0d
    rst $18                                       ; $4a0e: $df
    ld [hl+], a                                   ; $4a0f: $22
    ld a, [bc]                                    ; $4a10: $0a
    ld a, $05                                     ; $4a11: $3e $05
    rst $18                                       ; $4a13: $df
    ld e, $0a                                     ; $4a14: $1e $0a
    ld a, $00                                     ; $4a16: $3e $00
    ld b, $00                                     ; $4a18: $06 $00
    rst $18                                       ; $4a1a: $df
    ld a, [hl+]                                   ; $4a1b: $2a
    ld a, [bc]                                    ; $4a1c: $0a
    push af                                       ; $4a1d: $f5
    ld a, $0f                                     ; $4a1e: $3e $0f
    rst $18                                       ; $4a20: $df
    inc b                                         ; $4a21: $04
    ld a, [bc]                                    ; $4a22: $0a
    pop af                                        ; $4a23: $f1
    ld a, $00                                     ; $4a24: $3e $00
    ld bc, $0900                                  ; $4a26: $01 $00 $09
    ld de, $0d00                                  ; $4a29: $11 $00 $0d
    rst $18                                       ; $4a2c: $df
    ld [hl+], a                                   ; $4a2d: $22
    ld a, [bc]                                    ; $4a2e: $0a
    ld a, $00                                     ; $4a2f: $3e $00
    rst $18                                       ; $4a31: $df
    ld e, $0a                                     ; $4a32: $1e $0a

Jump_035_4a34:
    ld a, $00                                     ; $4a34: $3e $00
    ld b, a                                       ; $4a36: $47
    ld a, $05                                     ; $4a37: $3e $05
    rst $18                                       ; $4a39: $df
    ld [hl-], a                                   ; $4a3a: $32
    ld a, [bc]                                    ; $4a3b: $0a
    push af                                       ; $4a3c: $f5
    ld a, $1e                                     ; $4a3d: $3e $1e
    rst $18                                       ; $4a3f: $df
    inc b                                         ; $4a40: $04
    ld a, [bc]                                    ; $4a41: $0a
    pop af                                        ; $4a42: $f1
    ld a, $04                                     ; $4a43: $3e $04
    ld bc, $3f00                                  ; $4a45: $01 $00 $3f
    ld de, $3f00                                  ; $4a48: $11 $00 $3f
    rst $18                                       ; $4a4b: $df
    jr nz, jr_035_4a58                            ; $4a4c: $20 $0a

    ld bc, $0040                                  ; $4a4e: $01 $40 $00
    rst $18                                       ; $4a51: $df
    ld [hl], $0a                                  ; $4a52: $36 $0a
    xor a                                         ; $4a54: $af
    ld bc, $1900                                  ; $4a55: $01 $00 $19

jr_035_4a58:
    ld de, $0b00                                  ; $4a58: $11 $00 $0b
    rst $18                                       ; $4a5b: $df
    jr c, jr_035_4a68                             ; $4a5c: $38 $0a

    ld a, $02                                     ; $4a5e: $3e $02
    rst $18                                       ; $4a60: $df
    ld e, $0a                                     ; $4a61: $1e $0a
    ld a, $02                                     ; $4a63: $3e $02
    ld b, $00                                     ; $4a65: $06 $00
    rst $18                                       ; $4a67: $df

jr_035_4a68:
    inc l                                         ; $4a68: $2c
    ld a, [bc]                                    ; $4a69: $0a
    ld a, $03                                     ; $4a6a: $3e $03
    ld b, $00                                     ; $4a6c: $06 $00
    rst $18                                       ; $4a6e: $df
    inc l                                         ; $4a6f: $2c
    ld a, [bc]                                    ; $4a70: $0a
    ld a, $04                                     ; $4a71: $3e $04
    ld b, $00                                     ; $4a73: $06 $00
    rst $18                                       ; $4a75: $df
    inc l                                         ; $4a76: $2c
    ld a, [bc]                                    ; $4a77: $0a
    ld a, $05                                     ; $4a78: $3e $05
    ld b, $00                                     ; $4a7a: $06 $00
    rst $18                                       ; $4a7c: $df
    inc l                                         ; $4a7d: $2c
    ld a, [bc]                                    ; $4a7e: $0a
    ld a, $00                                     ; $4a7f: $3e $00
    ld bc, $000d                                  ; $4a81: $01 $0d $00
    rst $18                                       ; $4a84: $df
    ld d, $0a                                     ; $4a85: $16 $0a
    ld a, $00                                     ; $4a87: $3e $00
    ld bc, $1280                                  ; $4a89: $01 $80 $12
    ld de, $0d80                                  ; $4a8c: $11 $80 $0d
    rst $18                                       ; $4a8f: $df
    ld [hl+], a                                   ; $4a90: $22
    ld a, [bc]                                    ; $4a91: $0a
    ld a, $00                                     ; $4a92: $3e $00
    rst $18                                       ; $4a94: $df
    ld e, $0a                                     ; $4a95: $1e $0a
    ldh a, [$95]                                  ; $4a97: $f0 $95
    ld b, a                                       ; $4a99: $47
    ld a, $05                                     ; $4a9a: $3e $05
    ld de, $48f9                                  ; $4a9c: $11 $f9 $48
    rst $18                                       ; $4a9f: $df
    jr jr_035_4aac                                ; $4aa0: $18 $0a

    push af                                       ; $4aa2: $f5
    ld a, $01                                     ; $4aa3: $3e $01
    rst $18                                       ; $4aa5: $df
    inc b                                         ; $4aa6: $04
    ld a, [bc]                                    ; $4aa7: $0a
    pop af                                        ; $4aa8: $f1
    ldh a, [$95]                                  ; $4aa9: $f0 $95
    ld b, a                                       ; $4aab: $47

jr_035_4aac:
    ld a, $03                                     ; $4aac: $3e $03
    ld de, $48f9                                  ; $4aae: $11 $f9 $48
    rst $18                                       ; $4ab1: $df
    jr jr_035_4abe                                ; $4ab2: $18 $0a

    push af                                       ; $4ab4: $f5
    ld a, $01                                     ; $4ab5: $3e $01
    rst $18                                       ; $4ab7: $df
    inc b                                         ; $4ab8: $04
    ld a, [bc]                                    ; $4ab9: $0a
    pop af                                        ; $4aba: $f1
    ldh a, [$95]                                  ; $4abb: $f0 $95
    ld b, a                                       ; $4abd: $47

jr_035_4abe:
    ld a, $02                                     ; $4abe: $3e $02
    ld de, $48f9                                  ; $4ac0: $11 $f9 $48
    rst $18                                       ; $4ac3: $df
    jr jr_035_4ad0                                ; $4ac4: $18 $0a

    push af                                       ; $4ac6: $f5
    ld a, $01                                     ; $4ac7: $3e $01
    rst $18                                       ; $4ac9: $df
    inc b                                         ; $4aca: $04
    ld a, [bc]                                    ; $4acb: $0a
    pop af                                        ; $4acc: $f1
    ldh a, [$95]                                  ; $4acd: $f0 $95
    ld b, a                                       ; $4acf: $47

jr_035_4ad0:
    ld a, $00                                     ; $4ad0: $3e $00
    ld de, $48f9                                  ; $4ad2: $11 $f9 $48
    rst $18                                       ; $4ad5: $df
    jr @+$0c                                      ; $4ad6: $18 $0a

    push af                                       ; $4ad8: $f5
    ld a, $aa                                     ; $4ad9: $3e $aa
    rst $18                                       ; $4adb: $df
    inc b                                         ; $4adc: $04
    ld a, [bc]                                    ; $4add: $0a
    pop af                                        ; $4ade: $f1
    ld a, $01                                     ; $4adf: $3e $01
    ld [$c441], a                                 ; $4ae1: $ea $41 $c4
    ret                                           ; $4ae4: $c9


Jump_035_4ae5:
    ld a, $0b                                     ; $4ae5: $3e $0b
    ld bc, $3f00                                  ; $4ae7: $01 $00 $3f
    ld de, $3f00                                  ; $4aea: $11 $00 $3f
    rst $18                                       ; $4aed: $df
    jr nz, @+$0c                                  ; $4aee: $20 $0a

    call Call_035_4dd7                            ; $4af0: $cd $d7 $4d
    ld c, $04                                     ; $4af3: $0e $04
    call Call_000_25af                            ; $4af5: $cd $af $25
    ld bc, $0010                                  ; $4af8: $01 $10 $00
    rst $18                                       ; $4afb: $df
    ld [hl], $0a                                  ; $4afc: $36 $0a
    ld a, $00                                     ; $4afe: $3e $00
    ld bc, $0010                                  ; $4b00: $01 $10 $00
    rst $18                                       ; $4b03: $df
    ld d, $0a                                     ; $4b04: $16 $0a
    xor a                                         ; $4b06: $af
    ld bc, $2900                                  ; $4b07: $01 $00 $29
    ld de, $0d00                                  ; $4b0a: $11 $00 $0d
    rst $18                                       ; $4b0d: $df
    jr c, jr_035_4b1a                             ; $4b0e: $38 $0a

    ld a, $00                                     ; $4b10: $3e $00
    ld bc, $2b00                                  ; $4b12: $01 $00 $2b
    ld de, $0d00                                  ; $4b15: $11 $00 $0d
    rst $18                                       ; $4b18: $df
    ld [hl+], a                                   ; $4b19: $22

jr_035_4b1a:
    ld a, [bc]                                    ; $4b1a: $0a
    ld a, $00                                     ; $4b1b: $3e $00
    rst $18                                       ; $4b1d: $df
    ld e, $0a                                     ; $4b1e: $1e $0a
    push af                                       ; $4b20: $f5
    ld a, $28                                     ; $4b21: $3e $28
    rst $18                                       ; $4b23: $df
    inc b                                         ; $4b24: $04
    ld a, [bc]                                    ; $4b25: $0a
    pop af                                        ; $4b26: $f1
    ld a, $0b                                     ; $4b27: $3e $0b
    ld bc, $2b00                                  ; $4b29: $01 $00 $2b
    ld de, $0700                                  ; $4b2c: $11 $00 $07
    rst $18                                       ; $4b2f: $df
    jr nz, jr_035_4b3c                            ; $4b30: $20 $0a

    ld a, $0b                                     ; $4b32: $3e $0b
    ld b, $40                                     ; $4b34: $06 $40
    ld de, $0100                                  ; $4b36: $11 $00 $01
    rst $18                                       ; $4b39: $df
    jr z, jr_035_4b46                             ; $4b3a: $28 $0a

jr_035_4b3c:
    ld a, $0b                                     ; $4b3c: $3e $0b
    rst $18                                       ; $4b3e: $df
    ld e, $0a                                     ; $4b3f: $1e $0a
    ld a, $0b                                     ; $4b41: $3e $0b
    ld de, $ff40                                  ; $4b43: $11 $40 $ff

jr_035_4b46:
    rst $18                                       ; $4b46: $df
    ld b, b                                       ; $4b47: $40
    ld a, [bc]                                    ; $4b48: $0a
    ld a, $0b                                     ; $4b49: $3e $0b
    ld bc, $2700                                  ; $4b4b: $01 $00 $27
    ld de, $0b00                                  ; $4b4e: $11 $00 $0b
    rst $18                                       ; $4b51: $df
    ld [hl+], a                                   ; $4b52: $22
    ld a, [bc]                                    ; $4b53: $0a
    ld a, $0b                                     ; $4b54: $3e $0b
    rst $18                                       ; $4b56: $df
    ld e, $0a                                     ; $4b57: $1e $0a
    ld a, $0b                                     ; $4b59: $3e $0b
    ld b, $40                                     ; $4b5b: $06 $40
    rst $18                                       ; $4b5d: $df
    inc l                                         ; $4b5e: $2c
    ld a, [bc]                                    ; $4b5f: $0a
    ld a, $00                                     ; $4b60: $3e $00
    ld bc, $2900                                  ; $4b62: $01 $00 $29
    ld de, $0d00                                  ; $4b65: $11 $00 $0d
    rst $18                                       ; $4b68: $df
    ld [hl+], a                                   ; $4b69: $22
    ld a, [bc]                                    ; $4b6a: $0a
    ld a, $00                                     ; $4b6b: $3e $00
    rst $18                                       ; $4b6d: $df
    ld e, $0a                                     ; $4b6e: $1e $0a
    push af                                       ; $4b70: $f5
    ld a, $50                                     ; $4b71: $3e $50
    rst $18                                       ; $4b73: $df
    inc b                                         ; $4b74: $04
    ld a, [bc]                                    ; $4b75: $0a
    pop af                                        ; $4b76: $f1
    ld a, $02                                     ; $4b77: $3e $02
    ld [$c441], a                                 ; $4b79: $ea $41 $c4
    ret                                           ; $4b7c: $c9


Jump_035_4b7d:
    call Call_035_4dbb                            ; $4b7d: $cd $bb $4d
    ldh a, [$95]                                  ; $4b80: $f0 $95
    ld hl, $4d5d                                  ; $4b82: $21 $5d $4d
    rst $18                                       ; $4b85: $df
    ld b, $0a                                     ; $4b86: $06 $0a
    rst $18                                       ; $4b88: $df
    nop                                           ; $4b89: $00
    ld a, [bc]                                    ; $4b8a: $0a
    ld c, $04                                     ; $4b8b: $0e $04
    call Call_000_25af                            ; $4b8d: $cd $af $25
    call Call_000_2625                            ; $4b90: $cd $25 $26
    ld a, $05                                     ; $4b93: $3e $05
    ld b, a                                       ; $4b95: $47
    ld a, $06                                     ; $4b96: $3e $06
    rst $18                                       ; $4b98: $df
    ld [hl-], a                                   ; $4b99: $32
    ld a, [bc]                                    ; $4b9a: $0a
    ld a, $05                                     ; $4b9b: $3e $05
    rst $18                                       ; $4b9d: $df
    inc [hl]                                      ; $4b9e: $34
    ld a, [bc]                                    ; $4b9f: $0a
    ld a, $02                                     ; $4ba0: $3e $02
    ld b, a                                       ; $4ba2: $47
    ld a, $00                                     ; $4ba3: $3e $00
    rst $18                                       ; $4ba5: $df
    jr nc, jr_035_4bb2                            ; $4ba6: $30 $0a

    push af                                       ; $4ba8: $f5
    ld a, $1e                                     ; $4ba9: $3e $1e
    rst $18                                       ; $4bab: $df
    inc b                                         ; $4bac: $04
    ld a, [bc]                                    ; $4bad: $0a
    pop af                                        ; $4bae: $f1
    ld a, $05                                     ; $4baf: $3e $05
    ld b, a                                       ; $4bb1: $47

jr_035_4bb2:
    ld a, $07                                     ; $4bb2: $3e $07
    rst $18                                       ; $4bb4: $df
    ld [hl-], a                                   ; $4bb5: $32
    ld a, [bc]                                    ; $4bb6: $0a
    ld a, $05                                     ; $4bb7: $3e $05
    rst $18                                       ; $4bb9: $df
    inc [hl]                                      ; $4bba: $34
    ld a, [bc]                                    ; $4bbb: $0a
    push af                                       ; $4bbc: $f5
    ld a, $1e                                     ; $4bbd: $3e $1e
    rst $18                                       ; $4bbf: $df
    inc b                                         ; $4bc0: $04
    ld a, [bc]                                    ; $4bc1: $0a
    pop af                                        ; $4bc2: $f1
    ld a, $05                                     ; $4bc3: $3e $05
    ld b, a                                       ; $4bc5: $47
    ld a, $05                                     ; $4bc6: $3e $05
    rst $18                                       ; $4bc8: $df
    ld [hl-], a                                   ; $4bc9: $32
    ld a, [bc]                                    ; $4bca: $0a
    ld a, $05                                     ; $4bcb: $3e $05
    rst $18                                       ; $4bcd: $df
    inc [hl]                                      ; $4bce: $34
    ld a, [bc]                                    ; $4bcf: $0a
    rst $18                                       ; $4bd0: $df
    db $10                                        ; $4bd1: $10
    ld a, [bc]                                    ; $4bd2: $0a
    ld a, $00                                     ; $4bd3: $3e $00
    ld b, $c0                                     ; $4bd5: $06 $c0
    rst $18                                       ; $4bd7: $df
    inc l                                         ; $4bd8: $2c
    ld a, [bc]                                    ; $4bd9: $0a
    ld a, $02                                     ; $4bda: $3e $02
    ld b, $c0                                     ; $4bdc: $06 $c0
    rst $18                                       ; $4bde: $df
    inc l                                         ; $4bdf: $2c
    ld a, [bc]                                    ; $4be0: $0a
    push af                                       ; $4be1: $f5
    ld a, $1e                                     ; $4be2: $3e $1e
    rst $18                                       ; $4be4: $df
    inc b                                         ; $4be5: $04
    ld a, [bc]                                    ; $4be6: $0a
    pop af                                        ; $4be7: $f1
    ld a, $05                                     ; $4be8: $3e $05
    ld b, a                                       ; $4bea: $47
    ld a, $05                                     ; $4beb: $3e $05
    rst $18                                       ; $4bed: $df
    ld [hl-], a                                   ; $4bee: $32
    ld a, [bc]                                    ; $4bef: $0a
    ld a, $05                                     ; $4bf0: $3e $05
    rst $18                                       ; $4bf2: $df
    inc [hl]                                      ; $4bf3: $34
    ld a, [bc]                                    ; $4bf4: $0a
    ld a, $04                                     ; $4bf5: $3e $04
    ld b, a                                       ; $4bf7: $47
    ld a, $03                                     ; $4bf8: $3e $03
    rst $18                                       ; $4bfa: $df
    jr nc, jr_035_4c07                            ; $4bfb: $30 $0a

    push af                                       ; $4bfd: $f5
    ld a, $1e                                     ; $4bfe: $3e $1e
    rst $18                                       ; $4c00: $df
    inc b                                         ; $4c01: $04
    ld a, [bc]                                    ; $4c02: $0a
    pop af                                        ; $4c03: $f1
    ld a, $04                                     ; $4c04: $3e $04
    ld b, a                                       ; $4c06: $47

jr_035_4c07:
    ld a, $05                                     ; $4c07: $3e $05
    rst $18                                       ; $4c09: $df
    ld [hl-], a                                   ; $4c0a: $32
    ld a, [bc]                                    ; $4c0b: $0a
    ld a, $03                                     ; $4c0c: $3e $03
    ld b, a                                       ; $4c0e: $47
    ld a, $05                                     ; $4c0f: $3e $05
    rst $18                                       ; $4c11: $df
    ld [hl-], a                                   ; $4c12: $32
    ld a, [bc]                                    ; $4c13: $0a
    ld a, $03                                     ; $4c14: $3e $03
    rst $18                                       ; $4c16: $df
    inc [hl]                                      ; $4c17: $34
    ld a, [bc]                                    ; $4c18: $0a
    ld a, $04                                     ; $4c19: $3e $04
    ld b, $c0                                     ; $4c1b: $06 $c0
    rst $18                                       ; $4c1d: $df
    inc l                                         ; $4c1e: $2c
    ld a, [bc]                                    ; $4c1f: $0a
    ld a, $03                                     ; $4c20: $3e $03
    ld b, $c0                                     ; $4c22: $06 $c0
    rst $18                                       ; $4c24: $df
    inc l                                         ; $4c25: $2c
    ld a, [bc]                                    ; $4c26: $0a
    ld a, $04                                     ; $4c27: $3e $04
    ld b, a                                       ; $4c29: $47
    ld a, $05                                     ; $4c2a: $3e $05
    rst $18                                       ; $4c2c: $df
    ld [hl-], a                                   ; $4c2d: $32
    ld a, [bc]                                    ; $4c2e: $0a
    ld a, $00                                     ; $4c2f: $3e $00
    ld b, a                                       ; $4c31: $47
    ld a, $05                                     ; $4c32: $3e $05
    rst $18                                       ; $4c34: $df
    ld [hl-], a                                   ; $4c35: $32
    ld a, [bc]                                    ; $4c36: $0a
    ld a, $02                                     ; $4c37: $3e $02
    ld b, a                                       ; $4c39: $47
    ld a, $05                                     ; $4c3a: $3e $05
    rst $18                                       ; $4c3c: $df
    ld [hl-], a                                   ; $4c3d: $32
    ld a, [bc]                                    ; $4c3e: $0a
    ld a, $03                                     ; $4c3f: $3e $03
    ld b, a                                       ; $4c41: $47
    ld a, $05                                     ; $4c42: $3e $05
    rst $18                                       ; $4c44: $df
    ld [hl-], a                                   ; $4c45: $32
    ld a, [bc]                                    ; $4c46: $0a
    ld a, $03                                     ; $4c47: $3e $03
    rst $18                                       ; $4c49: $df
    inc [hl]                                      ; $4c4a: $34
    ld a, [bc]                                    ; $4c4b: $0a
    ld a, $00                                     ; $4c4c: $3e $00
    ld bc, $0010                                  ; $4c4e: $01 $10 $00
    rst $18                                       ; $4c51: $df
    ld d, $0a                                     ; $4c52: $16 $0a
    ld a, $02                                     ; $4c54: $3e $02
    ld bc, $0010                                  ; $4c56: $01 $10 $00
    rst $18                                       ; $4c59: $df
    ld d, $0a                                     ; $4c5a: $16 $0a
    ld a, $03                                     ; $4c5c: $3e $03
    ld bc, $0010                                  ; $4c5e: $01 $10 $00
    rst $18                                       ; $4c61: $df
    ld d, $0a                                     ; $4c62: $16 $0a
    ld a, $04                                     ; $4c64: $3e $04
    ld bc, $0010                                  ; $4c66: $01 $10 $00
    rst $18                                       ; $4c69: $df
    ld d, $0a                                     ; $4c6a: $16 $0a
    ld bc, $0010                                  ; $4c6c: $01 $10 $00
    rst $18                                       ; $4c6f: $df
    ld [hl], $0a                                  ; $4c70: $36 $0a
    push af                                       ; $4c72: $f5
    ld a, $01                                     ; $4c73: $3e $01
    rst $18                                       ; $4c75: $df
    inc b                                         ; $4c76: $04
    ld a, [bc]                                    ; $4c77: $0a
    pop af                                        ; $4c78: $f1
    xor a                                         ; $4c79: $af
    ld bc, $1d80                                  ; $4c7a: $01 $80 $1d
    ld de, $0d80                                  ; $4c7d: $11 $80 $0d
    rst $18                                       ; $4c80: $df
    jr c, jr_035_4c8d                             ; $4c81: $38 $0a

    ld a, $00                                     ; $4c83: $3e $00
    ld bc, $1d80                                  ; $4c85: $01 $80 $1d
    ld de, $0d80                                  ; $4c88: $11 $80 $0d
    rst $18                                       ; $4c8b: $df
    ld [hl+], a                                   ; $4c8c: $22

jr_035_4c8d:
    ld a, [bc]                                    ; $4c8d: $0a
    ld a, $02                                     ; $4c8e: $3e $02
    ld b, $00                                     ; $4c90: $06 $00
    ld de, $0200                                  ; $4c92: $11 $00 $02
    rst $18                                       ; $4c95: $df
    jr z, jr_035_4ca2                             ; $4c96: $28 $0a

    ld a, $02                                     ; $4c98: $3e $02
    rst $18                                       ; $4c9a: $df
    ld e, $0a                                     ; $4c9b: $1e $0a
    ld a, $02                                     ; $4c9d: $3e $02
    ld bc, $1b00                                  ; $4c9f: $01 $00 $1b

jr_035_4ca2:
    ld de, $0d80                                  ; $4ca2: $11 $80 $0d
    rst $18                                       ; $4ca5: $df
    ld [hl+], a                                   ; $4ca6: $22
    ld a, [bc]                                    ; $4ca7: $0a
    ld a, $04                                     ; $4ca8: $3e $04
    ld b, $c0                                     ; $4caa: $06 $c0
    ld de, $0200                                  ; $4cac: $11 $00 $02
    rst $18                                       ; $4caf: $df
    jr z, @+$0c                                   ; $4cb0: $28 $0a

    push af                                       ; $4cb2: $f5
    ld a, $05                                     ; $4cb3: $3e $05
    rst $18                                       ; $4cb5: $df
    inc b                                         ; $4cb6: $04
    ld a, [bc]                                    ; $4cb7: $0a
    pop af                                        ; $4cb8: $f1
    ld a, $03                                     ; $4cb9: $3e $03
    ld b, $c0                                     ; $4cbb: $06 $c0
    ld de, $0200                                  ; $4cbd: $11 $00 $02
    rst $18                                       ; $4cc0: $df
    jr z, jr_035_4ccd                             ; $4cc1: $28 $0a

    ld a, $03                                     ; $4cc3: $3e $03
    rst $18                                       ; $4cc5: $df
    ld e, $0a                                     ; $4cc6: $1e $0a
    ld a, $03                                     ; $4cc8: $3e $03
    ld bc, $1900                                  ; $4cca: $01 $00 $19

jr_035_4ccd:
    ld de, $0d80                                  ; $4ccd: $11 $80 $0d
    rst $18                                       ; $4cd0: $df
    ld [hl+], a                                   ; $4cd1: $22
    ld a, [bc]                                    ; $4cd2: $0a
    ld a, $04                                     ; $4cd3: $3e $04
    ld bc, $1700                                  ; $4cd5: $01 $00 $17
    ld de, $0d80                                  ; $4cd8: $11 $80 $0d
    rst $18                                       ; $4cdb: $df
    ld [hl+], a                                   ; $4cdc: $22
    ld a, [bc]                                    ; $4cdd: $0a
    ld a, $04                                     ; $4cde: $3e $04
    rst $18                                       ; $4ce0: $df
    ld e, $0a                                     ; $4ce1: $1e $0a
    rst $18                                       ; $4ce3: $df
    inc a                                         ; $4ce4: $3c
    ld a, [bc]                                    ; $4ce5: $0a
    ld a, $00                                     ; $4ce6: $3e $00
    rst $18                                       ; $4ce8: $df
    ld e, $0a                                     ; $4ce9: $1e $0a
    ld a, $00                                     ; $4ceb: $3e $00
    ld b, $80                                     ; $4ced: $06 $80
    rst $18                                       ; $4cef: $df
    inc l                                         ; $4cf0: $2c
    ld a, [bc]                                    ; $4cf1: $0a
    ld a, $02                                     ; $4cf2: $3e $02
    ld b, a                                       ; $4cf4: $47
    ld a, $05                                     ; $4cf5: $3e $05
    rst $18                                       ; $4cf7: $df
    ld [hl-], a                                   ; $4cf8: $32
    ld a, [bc]                                    ; $4cf9: $0a
    ld a, $02                                     ; $4cfa: $3e $02
    rst $18                                       ; $4cfc: $df
    inc [hl]                                      ; $4cfd: $34
    ld a, [bc]                                    ; $4cfe: $0a
    ld a, $00                                     ; $4cff: $3e $00
    ld b, a                                       ; $4d01: $47
    ld a, $07                                     ; $4d02: $3e $07
    rst $18                                       ; $4d04: $df
    ld [hl-], a                                   ; $4d05: $32
    ld a, [bc]                                    ; $4d06: $0a
    ld a, $00                                     ; $4d07: $3e $00
    rst $18                                       ; $4d09: $df
    inc [hl]                                      ; $4d0a: $34
    ld a, [bc]                                    ; $4d0b: $0a
    ldh a, [$95]                                  ; $4d0c: $f0 $95
    ld b, a                                       ; $4d0e: $47
    ld a, $02                                     ; $4d0f: $3e $02
    ld de, $48f9                                  ; $4d11: $11 $f9 $48
    rst $18                                       ; $4d14: $df
    jr jr_035_4d21                                ; $4d15: $18 $0a

    push af                                       ; $4d17: $f5
    ld a, $15                                     ; $4d18: $3e $15
    rst $18                                       ; $4d1a: $df
    inc b                                         ; $4d1b: $04
    ld a, [bc]                                    ; $4d1c: $0a
    pop af                                        ; $4d1d: $f1
    ldh a, [$95]                                  ; $4d1e: $f0 $95
    ld b, a                                       ; $4d20: $47

jr_035_4d21:
    ld a, $03                                     ; $4d21: $3e $03
    ld de, $48f9                                  ; $4d23: $11 $f9 $48
    rst $18                                       ; $4d26: $df
    jr jr_035_4d33                                ; $4d27: $18 $0a

    push af                                       ; $4d29: $f5
    ld a, $01                                     ; $4d2a: $3e $01
    rst $18                                       ; $4d2c: $df
    inc b                                         ; $4d2d: $04
    ld a, [bc]                                    ; $4d2e: $0a
    pop af                                        ; $4d2f: $f1
    ldh a, [$95]                                  ; $4d30: $f0 $95
    ld b, a                                       ; $4d32: $47

jr_035_4d33:
    ld a, $04                                     ; $4d33: $3e $04
    ld de, $48f9                                  ; $4d35: $11 $f9 $48
    rst $18                                       ; $4d38: $df
    jr jr_035_4d45                                ; $4d39: $18 $0a

    push af                                       ; $4d3b: $f5
    ld a, $64                                     ; $4d3c: $3e $64
    rst $18                                       ; $4d3e: $df
    inc b                                         ; $4d3f: $04
    ld a, [bc]                                    ; $4d40: $0a
    pop af                                        ; $4d41: $f1
    ldh a, [$95]                                  ; $4d42: $f0 $95
    ld b, a                                       ; $4d44: $47

jr_035_4d45:
    ld a, $00                                     ; $4d45: $3e $00
    ld de, $48f9                                  ; $4d47: $11 $f9 $48
    rst $18                                       ; $4d4a: $df
    jr @+$0c                                      ; $4d4b: $18 $0a

    push af                                       ; $4d4d: $f5
    ld a, $5a                                     ; $4d4e: $3e $5a
    rst $18                                       ; $4d50: $df
    inc b                                         ; $4d51: $04
    ld a, [bc]                                    ; $4d52: $0a
    pop af                                        ; $4d53: $f1
    ld a, $03                                     ; $4d54: $3e $03
    ld [$c441], a                                 ; $4d56: $ea $41 $c4
    rst $18                                       ; $4d59: $df
    ld [bc], a                                    ; $4d5a: $02
    ld a, [bc]                                    ; $4d5b: $0a
    ret                                           ; $4d5c: $c9


    ld hl, $007b                                  ; $4d5d: $21 $7b $00
    rlca                                          ; $4d60: $07
    nop                                           ; $4d61: $00
    dec c                                         ; $4d62: $0d
    nop                                           ; $4d63: $00
    nop                                           ; $4d64: $00
    nop                                           ; $4d65: $00
    ret nz                                        ; $4d66: $c0

    ld bc, $212d                                  ; $4d67: $01 $2d $21
    ld a, e                                       ; $4d6a: $7b
    nop                                           ; $4d6b: $00
    add hl, bc                                    ; $4d6c: $09
    nop                                           ; $4d6d: $00
    rrca                                          ; $4d6e: $0f
    nop                                           ; $4d6f: $00
    nop                                           ; $4d70: $00
    nop                                           ; $4d71: $00
    ret nz                                        ; $4d72: $c0

    ld bc, $210d                                  ; $4d73: $01 $0d $21
    ld a, e                                       ; $4d76: $7b
    nop                                           ; $4d77: $00
    rlca                                          ; $4d78: $07
    nop                                           ; $4d79: $00
    rrca                                          ; $4d7a: $0f
    nop                                           ; $4d7b: $00
    nop                                           ; $4d7c: $00
    nop                                           ; $4d7d: $00
    ret nz                                        ; $4d7e: $c0

    ld bc, $2116                                  ; $4d7f: $01 $16 $21
    ld a, e                                       ; $4d82: $7b
    nop                                           ; $4d83: $00
    add hl, bc                                    ; $4d84: $09
    nop                                           ; $4d85: $00
    dec bc                                        ; $4d86: $0b
    nop                                           ; $4d87: $00
    nop                                           ; $4d88: $00
    nop                                           ; $4d89: $00
    ld b, b                                       ; $4d8a: $40
    ld bc, $001d                                  ; $4d8b: $01 $1d $00
    nop                                           ; $4d8e: $00
    nop                                           ; $4d8f: $00
    nop                                           ; $4d90: $00
    nop                                           ; $4d91: $00
    nop                                           ; $4d92: $00
    nop                                           ; $4d93: $00
    nop                                           ; $4d94: $00
    rst $38                                       ; $4d95: $ff
    nop                                           ; $4d96: $00
    nop                                           ; $4d97: $00
    nop                                           ; $4d98: $00
    nop                                           ; $4d99: $00
    nop                                           ; $4d9a: $00
    nop                                           ; $4d9b: $00
    nop                                           ; $4d9c: $00
    nop                                           ; $4d9d: $00
    rst $38                                       ; $4d9e: $ff

Call_035_4d9f:
    rst $18                                       ; $4d9f: $df
    inc a                                         ; $4da0: $3c
    ld a, [bc]                                    ; $4da1: $0a
    ld b, $01                                     ; $4da2: $06 $01
    ld c, $15                                     ; $4da4: $0e $15
    ld d, $01                                     ; $4da6: $16 $01
    ld e, $06                                     ; $4da8: $1e $06
    ld h, $3a                                     ; $4daa: $26 $3a
    ld l, $04                                     ; $4dac: $2e $04
    rst $18                                       ; $4dae: $df
    ld a, [bc]                                    ; $4daf: $0a
    dec bc                                        ; $4db0: $0b
    ld hl, $4e0a                                  ; $4db1: $21 $0a $4e
    ld de, $0206                                  ; $4db4: $11 $06 $02
    call Call_000_0595                            ; $4db7: $cd $95 $05
    ret                                           ; $4dba: $c9


Call_035_4dbb:
    rst $18                                       ; $4dbb: $df
    inc a                                         ; $4dbc: $3c
    ld a, [bc]                                    ; $4dbd: $0a
    ld b, $01                                     ; $4dbe: $06 $01
    ld c, $1a                                     ; $4dc0: $0e $1a
    ld d, $01                                     ; $4dc2: $16 $01
    ld e, $06                                     ; $4dc4: $1e $06
    ld h, $3a                                     ; $4dc6: $26 $3a
    ld l, $04                                     ; $4dc8: $2e $04
    rst $18                                       ; $4dca: $df
    ld a, [bc]                                    ; $4dcb: $0a
    dec bc                                        ; $4dcc: $0b
    ld hl, $4e4a                                  ; $4dcd: $21 $4a $4e
    ld de, $0206                                  ; $4dd0: $11 $06 $02
    call Call_000_0595                            ; $4dd3: $cd $95 $05
    ret                                           ; $4dd6: $c9


Call_035_4dd7:
    rst $18                                       ; $4dd7: $df
    inc a                                         ; $4dd8: $3c
    ld a, [bc]                                    ; $4dd9: $0a
    ld b, $01                                     ; $4dda: $06 $01
    ld c, $1f                                     ; $4ddc: $0e $1f
    ld d, $01                                     ; $4dde: $16 $01
    ld e, $06                                     ; $4de0: $1e $06
    ld h, $3a                                     ; $4de2: $26 $3a
    ld l, $04                                     ; $4de4: $2e $04
    rst $18                                       ; $4de6: $df
    ld a, [bc]                                    ; $4de7: $0a
    dec bc                                        ; $4de8: $0b
    ld hl, $4e8a                                  ; $4de9: $21 $8a $4e
    ld de, $0206                                  ; $4dec: $11 $06 $02
    call Call_000_0595                            ; $4def: $cd $95 $05
    push af                                       ; $4df2: $f5
    ld a, $0a                                     ; $4df3: $3e $0a
    rst $18                                       ; $4df5: $df
    inc b                                         ; $4df6: $04
    ld a, [bc]                                    ; $4df7: $0a
    pop af                                        ; $4df8: $f1
    ret                                           ; $4df9: $c9


    add b                                         ; $4dfa: $80
    nop                                           ; $4dfb: $00
    jr nz, @+$57                                  ; $4dfc: $20 $55

    and b                                         ; $4dfe: $a0
    ld a, [hl]                                    ; $4dff: $7e
    rst $38                                       ; $4e00: $ff
    ld a, a                                       ; $4e01: $7f
    ld [$0825], sp                                ; $4e02: $08 $25 $08
    dec h                                         ; $4e05: $25
    ld [$0825], sp                                ; $4e06: $08 $25 $08
    dec h                                         ; $4e09: $25
    nop                                           ; $4e0a: $00
    dec hl                                        ; $4e0b: $2b
    rst $18                                       ; $4e0c: $df
    ld bc, $4bff                                  ; $4e0d: $01 $ff $4b
    xor c                                         ; $4e10: $a9
    inc [hl]                                      ; $4e11: $34
    rst $38                                       ; $4e12: $ff
    ld c, e                                       ; $4e13: $4b
    adc [hl]                                      ; $4e14: $8e
    ld a, a                                       ; $4e15: $7f
    nop                                           ; $4e16: $00
    dec hl                                        ; $4e17: $2b
    xor c                                         ; $4e18: $a9
    inc [hl]                                      ; $4e19: $34
    rst $38                                       ; $4e1a: $ff
    ld c, e                                       ; $4e1b: $4b
    rst $18                                       ; $4e1c: $df
    ld bc, $4bff                                  ; $4e1d: $01 $ff $4b
    xor c                                         ; $4e20: $a9
    inc [hl]                                      ; $4e21: $34
    rst $38                                       ; $4e22: $ff
    ld a, a                                       ; $4e23: $7f
    xor c                                         ; $4e24: $a9
    inc [hl]                                      ; $4e25: $34
    jr nz, jr_035_4e56                            ; $4e26: $20 $2e

    nop                                           ; $4e28: $00
    dec hl                                        ; $4e29: $2b
    adc [hl]                                      ; $4e2a: $8e
    ld a, a                                       ; $4e2b: $7f
    rst $38                                       ; $4e2c: $ff
    ld a, a                                       ; $4e2d: $7f
    rra                                           ; $4e2e: $1f
    ld bc, $44ad                                  ; $4e2f: $01 $ad $44
    ld [$0825], sp                                ; $4e32: $08 $25 $08
    dec h                                         ; $4e35: $25
    ld [$0825], sp                                ; $4e36: $08 $25 $08
    dec h                                         ; $4e39: $25
    add b                                         ; $4e3a: $80
    nop                                           ; $4e3b: $00
    jr nz, @+$57                                  ; $4e3c: $20 $55

    and b                                         ; $4e3e: $a0
    ld a, [hl]                                    ; $4e3f: $7e
    rst $38                                       ; $4e40: $ff
    ld a, a                                       ; $4e41: $7f
    ld [$0825], sp                                ; $4e42: $08 $25 $08
    dec h                                         ; $4e45: $25
    ld [$0825], sp                                ; $4e46: $08 $25 $08
    dec h                                         ; $4e49: $25
    ld c, h                                       ; $4e4a: $4c
    ld [bc], a                                    ; $4e4b: $02
    ld e, d                                       ; $4e4c: $5a
    nop                                           ; $4e4d: $00
    call c, $a912                                 ; $4e4e: $dc $12 $a9
    inc h                                         ; $4e51: $24
    call c, $9f12                                 ; $4e52: $dc $12 $9f
    ld [bc], a                                    ; $4e55: $02

jr_035_4e56:
    ld c, h                                       ; $4e56: $4c
    ld [bc], a                                    ; $4e57: $02
    xor c                                         ; $4e58: $a9
    inc h                                         ; $4e59: $24
    call c, $5a12                                 ; $4e5a: $dc $12 $5a
    nop                                           ; $4e5d: $00
    call c, $a912                                 ; $4e5e: $dc $12 $a9
    inc h                                         ; $4e61: $24
    rra                                           ; $4e62: $1f
    ld h, e                                       ; $4e63: $63
    xor c                                         ; $4e64: $a9
    inc h                                         ; $4e65: $24
    jp z, $4c05                                   ; $4e66: $ca $05 $4c

    ld [bc], a                                    ; $4e69: $02
    sbc a                                         ; $4e6a: $9f
    ld [bc], a                                    ; $4e6b: $02
    rra                                           ; $4e6c: $1f
    ld h, e                                       ; $4e6d: $63
    rst $18                                       ; $4e6e: $df
    nop                                           ; $4e6f: $00
    jp z, Jump_000_0828                           ; $4e70: $ca $28 $08

    dec h                                         ; $4e73: $25
    ld [$0825], sp                                ; $4e74: $08 $25 $08
    dec h                                         ; $4e77: $25
    ld [$8025], sp                                ; $4e78: $08 $25 $80
    nop                                           ; $4e7b: $00
    jr nz, @+$57                                  ; $4e7c: $20 $55

    and b                                         ; $4e7e: $a0
    ld a, [hl]                                    ; $4e7f: $7e
    rst $38                                       ; $4e80: $ff
    ld a, a                                       ; $4e81: $7f
    ld [$0825], sp                                ; $4e82: $08 $25 $08
    dec h                                         ; $4e85: $25
    ld [$0825], sp                                ; $4e86: $08 $25 $08
    dec h                                         ; $4e89: $25
    ldh [rSTAT], a                                ; $4e8a: $e0 $41
    db $f4                                        ; $4e8c: $f4
    inc d                                         ; $4e8d: $14
    call nc, $862a                                ; $4e8e: $d4 $2a $86
    inc l                                         ; $4e91: $2c
    call nc, Call_035_5f2a                        ; $4e92: $d4 $2a $5f
    ld h, c                                       ; $4e95: $61
    ldh [rSTAT], a                                ; $4e96: $e0 $41
    add [hl]                                      ; $4e98: $86
    inc l                                         ; $4e99: $2c
    call nc, $f42a                                ; $4e9a: $d4 $2a $f4
    inc d                                         ; $4e9d: $14
    call nc, $862a                                ; $4e9e: $d4 $2a $86
    inc l                                         ; $4ea1: $2c
    rst $18                                       ; $4ea2: $df
    ld a, [hl]                                    ; $4ea3: $7e
    add [hl]                                      ; $4ea4: $86
    inc l                                         ; $4ea5: $2c
    dec h                                         ; $4ea6: $25
    dec l                                         ; $4ea7: $2d
    ldh [rSTAT], a                                ; $4ea8: $e0 $41
    ld e, a                                       ; $4eaa: $5f
    ld h, c                                       ; $4eab: $61
    rst $18                                       ; $4eac: $df
    ld a, [hl]                                    ; $4ead: $7e
    inc d                                         ; $4eae: $14
    db $10                                        ; $4eaf: $10
    ret z                                         ; $4eb0: $c8

    inc [hl]                                      ; $4eb1: $34
    ld [$0825], sp                                ; $4eb2: $08 $25 $08
    dec h                                         ; $4eb5: $25
    ld [$0825], sp                                ; $4eb6: $08 $25 $08
    dec h                                         ; $4eb9: $25
    ld bc, $204f                                  ; $4eba: $01 $4f $20
    ld c, a                                       ; $4ebd: $4f
    ret z                                         ; $4ebe: $c8

    ld c, [hl]                                    ; $4ebf: $4e
    add hl, hl                                    ; $4ec0: $29
    ld c, a                                       ; $4ec1: $4f
    dec hl                                        ; $4ec2: $2b
    ld c, a                                       ; $4ec3: $4f
    inc [hl]                                      ; $4ec4: $34
    ld c, a                                       ; $4ec5: $4f
    dec [hl]                                      ; $4ec6: $35
    ld c, a                                       ; $4ec7: $4f
    ld hl, $007b                                  ; $4ec8: $21 $7b $00
    dec bc                                        ; $4ecb: $0b
    nop                                           ; $4ecc: $00
    rrca                                          ; $4ecd: $0f
    nop                                           ; $4ece: $00
    nop                                           ; $4ecf: $00
    nop                                           ; $4ed0: $00
    ret nz                                        ; $4ed1: $c0

    ld bc, $3814                                  ; $4ed2: $01 $14 $38
    ld d, c                                       ; $4ed5: $51
    nop                                           ; $4ed6: $00
    add hl, bc                                    ; $4ed7: $09
    ld h, b                                       ; $4ed8: $60
    ld c, $00                                     ; $4ed9: $0e $00
    nop                                           ; $4edb: $00
    nop                                           ; $4edc: $00
    ld b, b                                       ; $4edd: $40
    ld bc, $3829                                  ; $4ede: $01 $29 $38
    ld d, c                                       ; $4ee1: $51
    nop                                           ; $4ee2: $00
    add hl, bc                                    ; $4ee3: $09
    ld h, b                                       ; $4ee4: $60
    ld c, $00                                     ; $4ee5: $0e $00
    nop                                           ; $4ee7: $00
    nop                                           ; $4ee8: $00
    ld b, b                                       ; $4ee9: $40
    ld bc, $382a                                  ; $4eea: $01 $2a $38
    ld d, c                                       ; $4eed: $51
    nop                                           ; $4eee: $00
    add hl, bc                                    ; $4eef: $09
    ld h, b                                       ; $4ef0: $60
    ld c, $00                                     ; $4ef1: $0e $00
    nop                                           ; $4ef3: $00
    nop                                           ; $4ef4: $00
    ld b, b                                       ; $4ef5: $40
    ld bc, $002b                                  ; $4ef6: $01 $2b $00
    nop                                           ; $4ef9: $00
    nop                                           ; $4efa: $00
    nop                                           ; $4efb: $00
    nop                                           ; $4efc: $00
    nop                                           ; $4efd: $00
    nop                                           ; $4efe: $00
    nop                                           ; $4eff: $00
    rst $38                                       ; $4f00: $ff
    ld bc, $0040                                  ; $4f01: $01 $40 $00
    dec bc                                        ; $4f04: $0b
    nop                                           ; $4f05: $00
    ld a, [bc]                                    ; $4f06: $0a
    ld [bc], a                                    ; $4f07: $02
    ld b, b                                       ; $4f08: $40
    nop                                           ; $4f09: $00
    dec bc                                        ; $4f0a: $0b
    nop                                           ; $4f0b: $00
    ld a, [bc]                                    ; $4f0c: $0a
    inc bc                                        ; $4f0d: $03
    ld b, b                                       ; $4f0e: $40
    nop                                           ; $4f0f: $00
    dec bc                                        ; $4f10: $0b
    nop                                           ; $4f11: $00
    ld a, [bc]                                    ; $4f12: $0a
    inc b                                         ; $4f13: $04
    ld b, b                                       ; $4f14: $40
    nop                                           ; $4f15: $00
    dec bc                                        ; $4f16: $0b
    nop                                           ; $4f17: $00
    ld a, [bc]                                    ; $4f18: $0a
    ld a, [bc]                                    ; $4f19: $0a
    ld b, b                                       ; $4f1a: $40
    nop                                           ; $4f1b: $00
    dec bc                                        ; $4f1c: $0b
    nop                                           ; $4f1d: $00
    ld a, [bc]                                    ; $4f1e: $0a
    rst $38                                       ; $4f1f: $ff
    ld bc, $00ff                                  ; $4f20: $01 $ff $00
    nop                                           ; $4f23: $00
    nop                                           ; $4f24: $00
    nop                                           ; $4f25: $00
    ld [hl-], a                                   ; $4f26: $32
    ld bc, $ffff                                  ; $4f27: $01 $ff $ff
    ret                                           ; $4f2a: $c9


    ld bc, $00ff                                  ; $4f2b: $01 $ff $00
    nop                                           ; $4f2e: $00
    ld a, e                                       ; $4f2f: $7b
    ld a, e                                       ; $4f30: $7b
    ld b, $00                                     ; $4f31: $06 $00
    rst $38                                       ; $4f33: $ff
    rst $38                                       ; $4f34: $ff
    ld c, $7f                                     ; $4f35: $0e $7f
    call Call_000_25a1                            ; $4f37: $cd $a1 $25
    ld a, $04                                     ; $4f3a: $3e $04
    ld b, $00                                     ; $4f3c: $06 $00
    rst $18                                       ; $4f3e: $df
    ld b, [hl]                                    ; $4f3f: $46
    ld a, [bc]                                    ; $4f40: $0a
    ld a, $05                                     ; $4f41: $3e $05
    ld b, $00                                     ; $4f43: $06 $00
    rst $18                                       ; $4f45: $df
    ld b, [hl]                                    ; $4f46: $46
    ld a, [bc]                                    ; $4f47: $0a
    call Call_035_4f51                            ; $4f48: $cd $51 $4f
    ld a, $01                                     ; $4f4b: $3e $01
    ld [$c441], a                                 ; $4f4d: $ea $41 $c4
    ret                                           ; $4f50: $c9


Call_035_4f51:
    rst $18                                       ; $4f51: $df
    nop                                           ; $4f52: $00
    ld a, [bc]                                    ; $4f53: $0a
    xor a                                         ; $4f54: $af
    ld bc, $0b00                                  ; $4f55: $01 $00 $0b
    ld de, $0e00                                  ; $4f58: $11 $00 $0e
    rst $18                                       ; $4f5b: $df
    jr c, @+$0c                                   ; $4f5c: $38 $0a

    rst $18                                       ; $4f5e: $df
    inc a                                         ; $4f5f: $3c
    ld a, [bc]                                    ; $4f60: $0a
    ld c, $04                                     ; $4f61: $0e $04
    call Call_000_25af                            ; $4f63: $cd $af $25
    call Call_000_2625                            ; $4f66: $cd $25 $26
    ld hl, $0c3c                                  ; $4f69: $21 $3c $0c
    rst $18                                       ; $4f6c: $df
    ld c, $0a                                     ; $4f6d: $0e $0a
    call Call_035_5117                            ; $4f6f: $cd $17 $51
    push af                                       ; $4f72: $f5
    ld a, $14                                     ; $4f73: $3e $14
    rst $18                                       ; $4f75: $df
    inc b                                         ; $4f76: $04
    ld a, [bc]                                    ; $4f77: $0a
    pop af                                        ; $4f78: $f1
    ld a, $00                                     ; $4f79: $3e $00
    ld b, a                                       ; $4f7b: $47
    ld a, $07                                     ; $4f7c: $3e $07
    rst $18                                       ; $4f7e: $df
    ld [hl-], a                                   ; $4f7f: $32
    ld a, [bc]                                    ; $4f80: $0a
    ld a, $00                                     ; $4f81: $3e $00
    rst $18                                       ; $4f83: $df
    inc [hl]                                      ; $4f84: $34
    ld a, [bc]                                    ; $4f85: $0a
    ld a, $02                                     ; $4f86: $3e $02
    ld b, $40                                     ; $4f88: $06 $40
    rst $18                                       ; $4f8a: $df
    inc l                                         ; $4f8b: $2c
    ld a, [bc]                                    ; $4f8c: $0a
    push af                                       ; $4f8d: $f5
    ld a, $1e                                     ; $4f8e: $3e $1e
    rst $18                                       ; $4f90: $df
    inc b                                         ; $4f91: $04
    ld a, [bc]                                    ; $4f92: $0a
    pop af                                        ; $4f93: $f1
    ld a, $02                                     ; $4f94: $3e $02
    ld b, $80                                     ; $4f96: $06 $80
    rst $18                                       ; $4f98: $df
    inc l                                         ; $4f99: $2c
    ld a, [bc]                                    ; $4f9a: $0a
    push af                                       ; $4f9b: $f5
    ld a, $1e                                     ; $4f9c: $3e $1e
    rst $18                                       ; $4f9e: $df
    inc b                                         ; $4f9f: $04
    ld a, [bc]                                    ; $4fa0: $0a
    pop af                                        ; $4fa1: $f1
    ld a, $02                                     ; $4fa2: $3e $02
    ld b, $40                                     ; $4fa4: $06 $40
    rst $18                                       ; $4fa6: $df
    inc l                                         ; $4fa7: $2c
    ld a, [bc]                                    ; $4fa8: $0a
    push af                                       ; $4fa9: $f5
    ld a, $0a                                     ; $4faa: $3e $0a
    rst $18                                       ; $4fac: $df
    inc b                                         ; $4fad: $04
    ld a, [bc]                                    ; $4fae: $0a
    pop af                                        ; $4faf: $f1
    ld a, $02                                     ; $4fb0: $3e $02
    ld b, $00                                     ; $4fb2: $06 $00
    rst $18                                       ; $4fb4: $df
    inc l                                         ; $4fb5: $2c
    ld a, [bc]                                    ; $4fb6: $0a
    push af                                       ; $4fb7: $f5
    ld a, $1e                                     ; $4fb8: $3e $1e
    rst $18                                       ; $4fba: $df
    inc b                                         ; $4fbb: $04
    ld a, [bc]                                    ; $4fbc: $0a
    pop af                                        ; $4fbd: $f1
    ld a, $02                                     ; $4fbe: $3e $02
    ld b, $40                                     ; $4fc0: $06 $40
    rst $18                                       ; $4fc2: $df
    inc l                                         ; $4fc3: $2c
    ld a, [bc]                                    ; $4fc4: $0a
    ld a, [$c450]                                 ; $4fc5: $fa $50 $c4
    cp $18                                        ; $4fc8: $fe $18
    jr nz, jr_035_4fd2                            ; $4fca: $20 $06

    ld hl, $0c3e                                  ; $4fcc: $21 $3e $0c
    rst $18                                       ; $4fcf: $df
    ld c, $0a                                     ; $4fd0: $0e $0a

jr_035_4fd2:
    ld hl, $0c3f                                  ; $4fd2: $21 $3f $0c
    rst $18                                       ; $4fd5: $df
    ld c, $0a                                     ; $4fd6: $0e $0a
    ld a, $00                                     ; $4fd8: $3e $00
    ld b, $80                                     ; $4fda: $06 $80
    rst $18                                       ; $4fdc: $df
    inc l                                         ; $4fdd: $2c
    ld a, [bc]                                    ; $4fde: $0a
    push af                                       ; $4fdf: $f5
    ld a, $14                                     ; $4fe0: $3e $14
    rst $18                                       ; $4fe2: $df
    inc b                                         ; $4fe3: $04
    ld a, [bc]                                    ; $4fe4: $0a
    pop af                                        ; $4fe5: $f1
    ld a, $00                                     ; $4fe6: $3e $00
    ld b, $00                                     ; $4fe8: $06 $00
    rst $18                                       ; $4fea: $df
    inc l                                         ; $4feb: $2c
    ld a, [bc]                                    ; $4fec: $0a
    push af                                       ; $4fed: $f5
    ld a, $14                                     ; $4fee: $3e $14
    rst $18                                       ; $4ff0: $df
    inc b                                         ; $4ff1: $04
    ld a, [bc]                                    ; $4ff2: $0a
    pop af                                        ; $4ff3: $f1
    ld a, $00                                     ; $4ff4: $3e $00
    ld b, $40                                     ; $4ff6: $06 $40
    rst $18                                       ; $4ff8: $df
    inc l                                         ; $4ff9: $2c
    ld a, [bc]                                    ; $4ffa: $0a
    push af                                       ; $4ffb: $f5
    ld a, $14                                     ; $4ffc: $3e $14
    rst $18                                       ; $4ffe: $df
    inc b                                         ; $4fff: $04
    ld a, [bc]                                    ; $5000: $0a
    pop af                                        ; $5001: $f1
    ld a, $00                                     ; $5002: $3e $00
    ld b, a                                       ; $5004: $47
    ld a, $02                                     ; $5005: $3e $02
    rst $18                                       ; $5007: $df
    ld l, $0a                                     ; $5008: $2e $0a
    push af                                       ; $500a: $f5
    ld a, $14                                     ; $500b: $3e $14
    rst $18                                       ; $500d: $df
    inc b                                         ; $500e: $04
    ld a, [bc]                                    ; $500f: $0a
    pop af                                        ; $5010: $f1

Call_035_5011:
    ld a, $02                                     ; $5011: $3e $02
    ld bc, $0008                                  ; $5013: $01 $08 $00
    rst $18                                       ; $5016: $df
    ld d, $0a                                     ; $5017: $16 $0a
    ld a, $03                                     ; $5019: $3e $03
    ld bc, $0008                                  ; $501b: $01 $08 $00
    rst $18                                       ; $501e: $df
    ld d, $0a                                     ; $501f: $16 $0a
    ld a, $04                                     ; $5021: $3e $04
    ld bc, $0008                                  ; $5023: $01 $08 $00
    rst $18                                       ; $5026: $df
    ld d, $0a                                     ; $5027: $16 $0a
    ld a, $05                                     ; $5029: $3e $05
    ld bc, $0008                                  ; $502b: $01 $08 $00
    rst $18                                       ; $502e: $df
    ld d, $0a                                     ; $502f: $16 $0a
    ld a, $02                                     ; $5031: $3e $02
    ld b, $80                                     ; $5033: $06 $80
    rst $18                                       ; $5035: $df
    inc l                                         ; $5036: $2c
    ld a, [bc]                                    ; $5037: $0a
    ld a, $02                                     ; $5038: $3e $02
    ld bc, $0a00                                  ; $503a: $01 $00 $0a
    ld de, $0f00                                  ; $503d: $11 $00 $0f
    rst $18                                       ; $5040: $df
    ld [hl+], a                                   ; $5041: $22
    ld a, [bc]                                    ; $5042: $0a
    ld a, $02                                     ; $5043: $3e $02
    rst $18                                       ; $5045: $df
    ld e, $0a                                     ; $5046: $1e $0a
    ld a, $03                                     ; $5048: $3e $03
    ld bc, $0a80                                  ; $504a: $01 $80 $0a
    ld de, $0e00                                  ; $504d: $11 $00 $0e
    rst $18                                       ; $5050: $df
    ld [hl+], a                                   ; $5051: $22
    ld a, [bc]                                    ; $5052: $0a
    ld a, $04                                     ; $5053: $3e $04
    ld bc, $0a80                                  ; $5055: $01 $80 $0a
    ld de, $0e00                                  ; $5058: $11 $00 $0e
    rst $18                                       ; $505b: $df
    ld [hl+], a                                   ; $505c: $22
    ld a, [bc]                                    ; $505d: $0a
    ld a, $05                                     ; $505e: $3e $05
    ld bc, $0a80                                  ; $5060: $01 $80 $0a
    ld de, $0e00                                  ; $5063: $11 $00 $0e
    rst $18                                       ; $5066: $df
    ld [hl+], a                                   ; $5067: $22
    ld a, [bc]                                    ; $5068: $0a
    push af                                       ; $5069: $f5
    ld a, $14                                     ; $506a: $3e $14
    rst $18                                       ; $506c: $df
    inc b                                         ; $506d: $04
    ld a, [bc]                                    ; $506e: $0a
    pop af                                        ; $506f: $f1
    ld a, $02                                     ; $5070: $3e $02
    ld b, $01                                     ; $5072: $06 $01
    rst $18                                       ; $5074: $df
    ld a, [hl+]                                   ; $5075: $2a
    ld a, [bc]                                    ; $5076: $0a
    ld a, $02                                     ; $5077: $3e $02
    ld bc, $0a80                                  ; $5079: $01 $80 $0a
    ld de, $0f00                                  ; $507c: $11 $00 $0f
    rst $18                                       ; $507f: $df
    ld [hl+], a                                   ; $5080: $22
    ld a, [bc]                                    ; $5081: $0a
    ld a, $02                                     ; $5082: $3e $02
    rst $18                                       ; $5084: $df
    ld e, $0a                                     ; $5085: $1e $0a
    ld a, $02                                     ; $5087: $3e $02
    ld b, $00                                     ; $5089: $06 $00
    rst $18                                       ; $508b: $df
    ld a, [hl+]                                   ; $508c: $2a
    ld a, [bc]                                    ; $508d: $0a
    ld a, $02                                     ; $508e: $3e $02
    ld b, $c0                                     ; $5090: $06 $c0
    rst $18                                       ; $5092: $df
    inc l                                         ; $5093: $2c
    ld a, [bc]                                    ; $5094: $0a
    ld a, $03                                     ; $5095: $3e $03
    ld bc, $0b40                                  ; $5097: $01 $40 $0b
    ld de, $0c00                                  ; $509a: $11 $00 $0c
    rst $18                                       ; $509d: $df
    ld [hl+], a                                   ; $509e: $22
    ld a, [bc]                                    ; $509f: $0a
    ld a, $04                                     ; $50a0: $3e $04
    ld bc, $0b40                                  ; $50a2: $01 $40 $0b
    ld de, $0c00                                  ; $50a5: $11 $00 $0c
    rst $18                                       ; $50a8: $df
    ld [hl+], a                                   ; $50a9: $22
    ld a, [bc]                                    ; $50aa: $0a
    ld a, $05                                     ; $50ab: $3e $05
    ld bc, $0b40                                  ; $50ad: $01 $40 $0b
    ld de, $0c00                                  ; $50b0: $11 $00 $0c
    rst $18                                       ; $50b3: $df
    ld [hl+], a                                   ; $50b4: $22
    ld a, [bc]                                    ; $50b5: $0a
    ld a, $02                                     ; $50b6: $3e $02
    ld bc, $0b00                                  ; $50b8: $01 $00 $0b
    ld de, $0c80                                  ; $50bb: $11 $80 $0c
    rst $18                                       ; $50be: $df
    ld [hl+], a                                   ; $50bf: $22
    ld a, [bc]                                    ; $50c0: $0a
    ld a, $02                                     ; $50c1: $3e $02
    rst $18                                       ; $50c3: $df
    ld e, $0a                                     ; $50c4: $1e $0a
    ld a, $00                                     ; $50c6: $3e $00
    ld b, a                                       ; $50c8: $47
    ld a, $02                                     ; $50c9: $3e $02
    rst $18                                       ; $50cb: $df
    ld l, $0a                                     ; $50cc: $2e $0a
    push af                                       ; $50ce: $f5
    ld a, $14                                     ; $50cf: $3e $14
    rst $18                                       ; $50d1: $df
    inc b                                         ; $50d2: $04
    ld a, [bc]                                    ; $50d3: $0a
    pop af                                        ; $50d4: $f1
    ld a, $01                                     ; $50d5: $3e $01
    ld [$c441], a                                 ; $50d7: $ea $41 $c4
    rst $18                                       ; $50da: $df
    ld [bc], a                                    ; $50db: $02
    ld a, [bc]                                    ; $50dc: $0a
    ret                                           ; $50dd: $c9


    rst $18                                       ; $50de: $df
    nop                                           ; $50df: $00
    ld a, [bc]                                    ; $50e0: $0a
    ld c, $04                                     ; $50e1: $0e $04
    call Call_000_25af                            ; $50e3: $cd $af $25
    call Call_000_2625                            ; $50e6: $cd $25 $26
    push af                                       ; $50e9: $f5
    ld a, $14                                     ; $50ea: $3e $14
    rst $18                                       ; $50ec: $df
    inc b                                         ; $50ed: $04
    ld a, [bc]                                    ; $50ee: $0a
    pop af                                        ; $50ef: $f1
    ld a, $02                                     ; $50f0: $3e $02
    ld b, a                                       ; $50f2: $47
    ld a, $05                                     ; $50f3: $3e $05
    rst $18                                       ; $50f5: $df
    ld [hl-], a                                   ; $50f6: $32
    ld a, [bc]                                    ; $50f7: $0a
    ld a, $02                                     ; $50f8: $3e $02
    rst $18                                       ; $50fa: $df
    inc [hl]                                      ; $50fb: $34
    ld a, [bc]                                    ; $50fc: $0a
    ld hl, $0c41                                  ; $50fd: $21 $41 $0c
    rst $18                                       ; $5100: $df
    ld c, $0a                                     ; $5101: $0e $0a
    ld hl, $0000                                  ; $5103: $21 $00 $00
    ld a, [$c46a]                                 ; $5106: $fa $6a $c4
    sub $01                                       ; $5109: $d6 $01
    add l                                         ; $510b: $85
    ld l, a                                       ; $510c: $6f
    jr nc, jr_035_5110                            ; $510d: $30 $01

    inc h                                         ; $510f: $24

jr_035_5110:
    rst $18                                       ; $5110: $df
    ld d, [hl]                                    ; $5111: $56
    dec b                                         ; $5112: $05
    call Call_035_5011                            ; $5113: $cd $11 $50
    ret                                           ; $5116: $c9


Call_035_5117:
    ld a, [$c450]                                 ; $5117: $fa $50 $c4
    cp $1b                                        ; $511a: $fe $1b
    jr nz, jr_035_5122                            ; $511c: $20 $04

    ld a, $04                                     ; $511e: $3e $04
    jr jr_035_5134                                ; $5120: $18 $12

jr_035_5122:
    cp $1a                                        ; $5122: $fe $1a
    jr nz, jr_035_512a                            ; $5124: $20 $04

    ld a, $03                                     ; $5126: $3e $03
    jr jr_035_5134                                ; $5128: $18 $0a

jr_035_512a:
    cp $19                                        ; $512a: $fe $19
    jr nz, jr_035_5132                            ; $512c: $20 $04

    ld a, $02                                     ; $512e: $3e $02
    jr jr_035_5134                                ; $5130: $18 $02

jr_035_5132:
    ld a, $01                                     ; $5132: $3e $01

jr_035_5134:
    rst $18                                       ; $5134: $df
    ld e, d                                       ; $5135: $5a
    dec b                                         ; $5136: $05
    ret                                           ; $5137: $c9


    db $10                                        ; $5138: $10
    ld a, [bc]                                    ; $5139: $0a
    ld bc, $0c32                                  ; $513a: $01 $32 $0c
    ei                                            ; $513d: $fb
    rst $38                                       ; $513e: $ff
    ld b, $16                                     ; $513f: $06 $16
    ld c, $0a                                     ; $5141: $0e $0a
    ld d, $0a                                     ; $5143: $16 $0a
    ld e, $0a                                     ; $5145: $1e $0a
    ld h, $02                                     ; $5147: $26 $02
    ld l, $02                                     ; $5149: $2e $02
    rst $18                                       ; $514b: $df
    ld a, [bc]                                    ; $514c: $0a
    dec bc                                        ; $514d: $0b
    ret                                           ; $514e: $c9


    ld b, $19                                     ; $514f: $06 $19
    ld c, $0a                                     ; $5151: $0e $0a
    ld d, $0a                                     ; $5153: $16 $0a
    ld e, $0a                                     ; $5155: $1e $0a
    ld h, $02                                     ; $5157: $26 $02
    ld l, $02                                     ; $5159: $2e $02
    rst $18                                       ; $515b: $df
    ld a, [bc]                                    ; $515c: $0a
    dec bc                                        ; $515d: $0b
    ret                                           ; $515e: $c9


    nop                                           ; $515f: $00
    add b                                         ; $5160: $80
    nop                                           ; $5161: $00
    jr nz, @+$57                                  ; $5162: $20 $55

    and b                                         ; $5164: $a0
    ld a, [hl]                                    ; $5165: $7e
    rst $38                                       ; $5166: $ff
    ld a, a                                       ; $5167: $7f
    ld [$0825], sp                                ; $5168: $08 $25 $08
    dec h                                         ; $516b: $25
    ld [$0825], sp                                ; $516c: $08 $25 $08
    dec h                                         ; $516f: $25
    ld h, d                                       ; $5170: $62
    ld a, l                                       ; $5171: $7d
    jp hl                                         ; $5172: $e9


    inc l                                         ; $5173: $2c
    add sp, $7e                                   ; $5174: $e8 $7e
    rst $38                                       ; $5176: $ff
    ld a, a                                       ; $5177: $7f
    ld b, b                                       ; $5178: $40
    inc bc                                        ; $5179: $03
    sub $01                                       ; $517a: $d6 $01
    ld b, b                                       ; $517c: $40
    ld [bc], a                                    ; $517d: $02
    ld e, a                                       ; $517e: $5f
    ld [bc], a                                    ; $517f: $02
    add sp, $7e                                   ; $5180: $e8 $7e
    jp hl                                         ; $5182: $e9


    inc l                                         ; $5183: $2c
    sub $01                                       ; $5184: $d6 $01
    rst $38                                       ; $5186: $ff
    ld a, a                                       ; $5187: $7f
    ld b, b                                       ; $5188: $40
    inc bc                                        ; $5189: $03
    ld a, a                                       ; $518a: $7f
    inc hl                                        ; $518b: $23
    rra                                           ; $518c: $1f
    ld h, h                                       ; $518d: $64
    ld b, [hl]                                    ; $518e: $46
    db $10                                        ; $518f: $10
    ld b, b                                       ; $5190: $40
    inc bc                                        ; $5191: $03
    sbc a                                         ; $5192: $9f
    ld [bc], a                                    ; $5193: $02
    dec e                                         ; $5194: $1d
    nop                                           ; $5195: $00
    ld b, [hl]                                    ; $5196: $46
    db $10                                        ; $5197: $10
    ld [$0825], sp                                ; $5198: $08 $25 $08
    dec h                                         ; $519b: $25
    ld [$0825], sp                                ; $519c: $08 $25 $08
    dec h                                         ; $519f: $25
    add b                                         ; $51a0: $80
    nop                                           ; $51a1: $00
    jr nz, @+$57                                  ; $51a2: $20 $55

    and b                                         ; $51a4: $a0
    ld a, [hl]                                    ; $51a5: $7e
    rst $38                                       ; $51a6: $ff
    ld a, a                                       ; $51a7: $7f
    ld [$0825], sp                                ; $51a8: $08 $25 $08
    dec h                                         ; $51ab: $25
    ld [$0825], sp                                ; $51ac: $08 $25 $08
    dec h                                         ; $51af: $25
    and h                                         ; $51b0: $a4
    ld a, l                                       ; $51b1: $7d
    ld a, [bc]                                    ; $51b2: $0a
    ld sp, $7f2a                                  ; $51b3: $31 $2a $7f
    rst $38                                       ; $51b6: $ff
    ld a, a                                       ; $51b7: $7f
    and $0b                                       ; $51b8: $e6 $0b
    add hl, de                                    ; $51ba: $19
    ld [bc], a                                    ; $51bb: $02
    and b                                         ; $51bc: $a0
    ld [bc], a                                    ; $51bd: $02
    rra                                           ; $51be: $1f
    inc bc                                        ; $51bf: $03
    ld a, [hl+]                                   ; $51c0: $2a
    ld a, a                                       ; $51c1: $7f
    ld a, [bc]                                    ; $51c2: $0a
    ld sp, $0219                                  ; $51c3: $31 $19 $02
    rst $38                                       ; $51c6: $ff
    ld a, a                                       ; $51c7: $7f
    and $0b                                       ; $51c8: $e6 $0b
    rst $18                                       ; $51ca: $df
    ld [bc], a                                    ; $51cb: $02
    rra                                           ; $51cc: $1f
    ld h, h                                       ; $51cd: $64
    ld b, [hl]                                    ; $51ce: $46
    db $10                                        ; $51cf: $10
    and $0b                                       ; $51d0: $e6 $0b
    rst $38                                       ; $51d2: $ff
    dec sp                                        ; $51d3: $3b
    dec e                                         ; $51d4: $1d
    nop                                           ; $51d5: $00
    ld b, [hl]                                    ; $51d6: $46
    db $10                                        ; $51d7: $10
    ld [$0825], sp                                ; $51d8: $08 $25 $08
    dec h                                         ; $51db: $25
    ld [$0825], sp                                ; $51dc: $08 $25 $08
    dec h                                         ; $51df: $25
    add b                                         ; $51e0: $80
    nop                                           ; $51e1: $00
    jr nz, jr_035_5239                            ; $51e2: $20 $55

    and b                                         ; $51e4: $a0
    ld a, [hl]                                    ; $51e5: $7e
    rst $38                                       ; $51e6: $ff
    ld a, a                                       ; $51e7: $7f
    ld [$0825], sp                                ; $51e8: $08 $25 $08
    dec h                                         ; $51eb: $25
    ld [$0825], sp                                ; $51ec: $08 $25 $08
    dec h                                         ; $51ef: $25
    ld d, c                                       ; $51f0: $51
    ld a, l                                       ; $51f1: $7d
    dec hl                                        ; $51f2: $2b
    dec [hl]                                      ; $51f3: $35
    ld a, [$ff7d]                                 ; $51f4: $fa $7d $ff
    ld a, a                                       ; $51f7: $7f
    ld [hl], $03                                  ; $51f8: $36 $03
    ld e, e                                       ; $51fa: $5b
    ld bc, $0233                                  ; $51fb: $01 $33 $02
    ld e, a                                       ; $51fe: $5f
    ld [de], a                                    ; $51ff: $12
    ld a, [$2b7d]                                 ; $5200: $fa $7d $2b
    dec [hl]                                      ; $5203: $35
    ld e, e                                       ; $5204: $5b
    ld bc, $7fff                                  ; $5205: $01 $ff $7f
    ld [hl], $03                                  ; $5208: $36 $03
    ld a, a                                       ; $520a: $7f
    inc hl                                        ; $520b: $23
    rra                                           ; $520c: $1f
    ld h, h                                       ; $520d: $64
    ld b, [hl]                                    ; $520e: $46
    db $10                                        ; $520f: $10
    ld [hl], $03                                  ; $5210: $36 $03
    sbc a                                         ; $5212: $9f
    ld [bc], a                                    ; $5213: $02
    dec e                                         ; $5214: $1d
    nop                                           ; $5215: $00
    ld b, [hl]                                    ; $5216: $46
    db $10                                        ; $5217: $10
    ld [$0825], sp                                ; $5218: $08 $25 $08
    dec h                                         ; $521b: $25
    ld [$0825], sp                                ; $521c: $08 $25 $08
    dec h                                         ; $521f: $25
    add b                                         ; $5220: $80
    nop                                           ; $5221: $00
    jr nz, jr_035_5279                            ; $5222: $20 $55

    and b                                         ; $5224: $a0
    ld a, [hl]                                    ; $5225: $7e
    rst $38                                       ; $5226: $ff
    ld a, a                                       ; $5227: $7f
    ld [$0825], sp                                ; $5228: $08 $25 $08
    dec h                                         ; $522b: $25
    ld [$0825], sp                                ; $522c: $08 $25 $08
    dec h                                         ; $522f: $25
    or e                                          ; $5230: $b3
    ld a, h                                       ; $5231: $7c
    swap h                                        ; $5232: $cb $34
    call c, $9f7d                                 ; $5234: $dc $7d $9f
    ld a, a                                       ; $5237: $7f
    ld b, b                                       ; $5238: $40

jr_035_5239:
    ld c, e                                       ; $5239: $4b
    ld d, a                                       ; $523a: $57
    dec e                                         ; $523b: $1d
    ld b, b                                       ; $523c: $40
    ld a, [hl-]                                   ; $523d: $3a
    rra                                           ; $523e: $1f
    ld a, [hl-]                                   ; $523f: $3a
    call c, $cb7d                                 ; $5240: $dc $7d $cb
    inc [hl]                                      ; $5243: $34
    ld d, a                                       ; $5244: $57
    dec e                                         ; $5245: $1d
    sbc a                                         ; $5246: $9f
    ld a, a                                       ; $5247: $7f
    ld b, b                                       ; $5248: $40
    ld c, e                                       ; $5249: $4b
    rst $18                                       ; $524a: $df
    ld [bc], a                                    ; $524b: $02
    rra                                           ; $524c: $1f
    ld h, h                                       ; $524d: $64
    ld b, [hl]                                    ; $524e: $46
    db $10                                        ; $524f: $10
    ld b, b                                       ; $5250: $40
    ld c, e                                       ; $5251: $4b
    rst $38                                       ; $5252: $ff
    dec sp                                        ; $5253: $3b
    dec e                                         ; $5254: $1d
    nop                                           ; $5255: $00
    ld b, [hl]                                    ; $5256: $46
    db $10                                        ; $5257: $10
    ld [$0825], sp                                ; $5258: $08 $25 $08
    dec h                                         ; $525b: $25
    ld [$0825], sp                                ; $525c: $08 $25 $08
    dec h                                         ; $525f: $25
    ldh a, [$96]                                  ; $5260: $f0 $96
    push af                                       ; $5262: $f5
    ld a, $06                                     ; $5263: $3e $06
    ldh [$96], a                                  ; $5265: $e0 $96
    ldh [rSVBK], a                                ; $5267: $e0 $70
    ld a, [$d443]                                 ; $5269: $fa $43 $d4
    cp $02                                        ; $526c: $fe $02
    jr nc, jr_035_52a2                            ; $526e: $30 $32

    add a                                         ; $5270: $87
    add l                                         ; $5271: $85
    ld l, a                                       ; $5272: $6f
    jr nc, jr_035_5276                            ; $5273: $30 $01

    inc h                                         ; $5275: $24

jr_035_5276:
    ld a, [hl+]                                   ; $5276: $2a
    ld h, [hl]                                    ; $5277: $66
    ld l, a                                       ; $5278: $6f

jr_035_5279:
    ld a, [hl+]                                   ; $5279: $2a
    ld e, a                                       ; $527a: $5f
    ld a, [hl+]                                   ; $527b: $2a
    ld d, a                                       ; $527c: $57
    and e                                         ; $527d: $a3
    cp $ff                                        ; $527e: $fe $ff
    jr z, jr_035_52a2                             ; $5280: $28 $20

    call Call_000_2d10                            ; $5282: $cd $10 $2d
    jr z, jr_035_529a                             ; $5285: $28 $13

    push hl                                       ; $5287: $e5
    ld a, [hl+]                                   ; $5288: $2a
    ld e, a                                       ; $5289: $5f
    ld a, [hl+]                                   ; $528a: $2a
    ld d, a                                       ; $528b: $57
    push de                                       ; $528c: $d5
    ld a, [hl+]                                   ; $528d: $2a
    ld e, a                                       ; $528e: $5f
    ld a, [hl+]                                   ; $528f: $2a
    ld d, a                                       ; $5290: $57
    ld a, [hl+]                                   ; $5291: $2a
    ld c, a                                       ; $5292: $4f
    ld a, [hl+]                                   ; $5293: $2a
    ld b, a                                       ; $5294: $47
    pop hl                                        ; $5295: $e1
    call Call_035_52a8                            ; $5296: $cd $a8 $52
    pop hl                                        ; $5299: $e1

jr_035_529a:
    inc hl                                        ; $529a: $23
    inc hl                                        ; $529b: $23
    inc hl                                        ; $529c: $23
    inc hl                                        ; $529d: $23
    inc hl                                        ; $529e: $23
    inc hl                                        ; $529f: $23
    jr jr_035_5279                                ; $52a0: $18 $d7

jr_035_52a2:
    pop af                                        ; $52a2: $f1
    ldh [$96], a                                  ; $52a3: $e0 $96
    ldh [rSVBK], a                                ; $52a5: $e0 $70
    ret                                           ; $52a7: $c9


Call_035_52a8:
    push hl                                       ; $52a8: $e5
    ld h, e                                       ; $52a9: $63
    ld l, $00                                     ; $52aa: $2e $00
    ld e, d                                       ; $52ac: $5a
    ld d, $d0                                     ; $52ad: $16 $d0
    srl h                                         ; $52af: $cb $3c
    rr l                                          ; $52b1: $cb $1d
    srl h                                         ; $52b3: $cb $3c
    rr l                                          ; $52b5: $cb $1d
    add hl, de                                    ; $52b7: $19
    pop de                                        ; $52b8: $d1
    push hl                                       ; $52b9: $e5
    ld h, e                                       ; $52ba: $63
    ld l, $00                                     ; $52bb: $2e $00
    ld e, d                                       ; $52bd: $5a
    ld d, $d0                                     ; $52be: $16 $d0
    srl h                                         ; $52c0: $cb $3c
    rr l                                          ; $52c2: $cb $1d
    srl h                                         ; $52c4: $cb $3c
    rr l                                          ; $52c6: $cb $1d
    add hl, de                                    ; $52c8: $19
    pop de                                        ; $52c9: $d1
    ldh a, [$96]                                  ; $52ca: $f0 $96
    push af                                       ; $52cc: $f5
    ld a, $03                                     ; $52cd: $3e $03
    ldh [$96], a                                  ; $52cf: $e0 $96
    ldh [rSVBK], a                                ; $52d1: $e0 $70
    call Call_035_52e5                            ; $52d3: $cd $e5 $52
    ld a, $02                                     ; $52d6: $3e $02
    ldh [$96], a                                  ; $52d8: $e0 $96
    ldh [rSVBK], a                                ; $52da: $e0 $70
    call Call_035_52e5                            ; $52dc: $cd $e5 $52
    pop af                                        ; $52df: $f1
    ldh [$96], a                                  ; $52e0: $e0 $96
    ldh [rSVBK], a                                ; $52e2: $e0 $70
    ret                                           ; $52e4: $c9


Call_035_52e5:
    push af                                       ; $52e5: $f5
    push bc                                       ; $52e6: $c5
    push de                                       ; $52e7: $d5
    push hl                                       ; $52e8: $e5

jr_035_52e9:
    push bc                                       ; $52e9: $c5
    push hl                                       ; $52ea: $e5
    push de                                       ; $52eb: $d5

jr_035_52ec:
    ld a, [hl+]                                   ; $52ec: $2a
    ld [de], a                                    ; $52ed: $12
    inc de                                        ; $52ee: $13
    dec b                                         ; $52ef: $05
    jr nz, jr_035_52ec                            ; $52f0: $20 $fa

    pop de                                        ; $52f2: $d1
    ld a, $40                                     ; $52f3: $3e $40
    add e                                         ; $52f5: $83
    ld e, a                                       ; $52f6: $5f
    jr nc, jr_035_52fa                            ; $52f7: $30 $01

    inc d                                         ; $52f9: $14

jr_035_52fa:
    pop hl                                        ; $52fa: $e1
    ld a, $40                                     ; $52fb: $3e $40
    add l                                         ; $52fd: $85
    ld l, a                                       ; $52fe: $6f
    jr nc, jr_035_5302                            ; $52ff: $30 $01

    inc h                                         ; $5301: $24

jr_035_5302:
    pop bc                                        ; $5302: $c1
    dec c                                         ; $5303: $0d
    jr nz, jr_035_52e9                            ; $5304: $20 $e3

    pop hl                                        ; $5306: $e1
    pop de                                        ; $5307: $d1
    pop bc                                        ; $5308: $c1
    pop af                                        ; $5309: $f1
    ret                                           ; $530a: $c9


    ld a, [hl-]                                   ; $530b: $3a
    ld d, e                                       ; $530c: $53
    ld b, a                                       ; $530d: $47
    ld d, e                                       ; $530e: $53
    add hl, de                                    ; $530f: $19
    ld d, e                                       ; $5310: $53
    ld d, b                                       ; $5311: $50
    ld d, e                                       ; $5312: $53
    ld d, c                                       ; $5313: $51
    ld d, e                                       ; $5314: $53
    xor c                                         ; $5315: $a9
    ld d, h                                       ; $5316: $54
    or d                                          ; $5317: $b2
    ld d, h                                       ; $5318: $54
    ld hl, $007b                                  ; $5319: $21 $7b $00
    rra                                           ; $531c: $1f
    nop                                           ; $531d: $00
    add hl, hl                                    ; $531e: $29
    nop                                           ; $531f: $00
    nop                                           ; $5320: $00
    nop                                           ; $5321: $00
    ld b, b                                       ; $5322: $40
    ld bc, $210d                                  ; $5323: $01 $0d $21
    ld a, e                                       ; $5326: $7b
    nop                                           ; $5327: $00
    ld bc, $1900                                  ; $5328: $01 $00 $19
    nop                                           ; $532b: $00
    nop                                           ; $532c: $00
    nop                                           ; $532d: $00
    ld b, b                                       ; $532e: $40
    ld bc, $0002                                  ; $532f: $01 $02 $00
    nop                                           ; $5332: $00
    nop                                           ; $5333: $00
    nop                                           ; $5334: $00
    nop                                           ; $5335: $00
    nop                                           ; $5336: $00
    nop                                           ; $5337: $00
    nop                                           ; $5338: $00
    rst $38                                       ; $5339: $ff
    ld bc, $00c0                                  ; $533a: $01 $c0 $00
    rla                                           ; $533d: $17
    nop                                           ; $533e: $00
    dec sp                                        ; $533f: $3b
    ld [bc], a                                    ; $5340: $02
    ret nz                                        ; $5341: $c0

    nop                                           ; $5342: $00
    add hl, hl                                    ; $5343: $29
    nop                                           ; $5344: $00
    dec h                                         ; $5345: $25
    rst $38                                       ; $5346: $ff
    ld bc, $00ff                                  ; $5347: $01 $ff $00
    nop                                           ; $534a: $00
    nop                                           ; $534b: $00
    nop                                           ; $534c: $00
    ld [hl], $01                                  ; $534d: $36 $01
    rst $38                                       ; $534f: $ff
    rst $38                                       ; $5350: $ff
    rst $38                                       ; $5351: $ff

Call_035_5352:
    ld b, $3f                                     ; $5352: $06 $3f
    ld c, $26                                     ; $5354: $0e $26
    ld d, $19                                     ; $5356: $16 $19
    ld e, $24                                     ; $5358: $1e $24
    ld h, $01                                     ; $535a: $26 $01
    ld l, $01                                     ; $535c: $2e $01
    rst $18                                       ; $535e: $df
    ld a, [bc]                                    ; $535f: $0a
    dec bc                                        ; $5360: $0b
    ld b, $3f                                     ; $5361: $06 $3f
    ld c, $24                                     ; $5363: $0e $24
    ld d, $19                                     ; $5365: $16 $19
    ld e, $27                                     ; $5367: $1e $27
    ld h, $01                                     ; $5369: $26 $01
    ld l, $01                                     ; $536b: $2e $01
    rst $18                                       ; $536d: $df
    ld a, [bc]                                    ; $536e: $0a
    dec bc                                        ; $536f: $0b
    ld b, $3f                                     ; $5370: $06 $3f
    ld c, $26                                     ; $5372: $0e $26
    ld d, $1c                                     ; $5374: $16 $1c
    ld e, $2a                                     ; $5376: $1e $2a
    ld h, $01                                     ; $5378: $26 $01
    ld l, $01                                     ; $537a: $2e $01
    rst $18                                       ; $537c: $df
    ld a, [bc]                                    ; $537d: $0a
    dec bc                                        ; $537e: $0b
    ld b, $3f                                     ; $537f: $06 $3f
    ld c, $28                                     ; $5381: $0e $28
    ld d, $1f                                     ; $5383: $16 $1f
    ld e, $28                                     ; $5385: $1e $28
    ld h, $01                                     ; $5387: $26 $01
    ld l, $01                                     ; $5389: $2e $01
    rst $18                                       ; $538b: $df
    ld a, [bc]                                    ; $538c: $0a
    dec bc                                        ; $538d: $0b
    ld c, $04                                     ; $538e: $0e $04
    call Call_000_25af                            ; $5390: $cd $af $25
    ld bc, $0020                                  ; $5393: $01 $20 $00
    rst $18                                       ; $5396: $df
    ld [hl], $0a                                  ; $5397: $36 $0a
    ld hl, $14ea                                  ; $5399: $21 $ea $14
    rst $18                                       ; $539c: $df
    ld c, $0a                                     ; $539d: $0e $0a
    push af                                       ; $539f: $f5
    ld a, $0a                                     ; $53a0: $3e $0a
    rst $18                                       ; $53a2: $df
    inc b                                         ; $53a3: $04
    ld a, [bc]                                    ; $53a4: $0a
    pop af                                        ; $53a5: $f1
    ld a, $02                                     ; $53a6: $3e $02
    ld b, $00                                     ; $53a8: $06 $00
    rst $18                                       ; $53aa: $df
    ld a, [hl-]                                   ; $53ab: $3a
    ld a, [bc]                                    ; $53ac: $0a
    rst $18                                       ; $53ad: $df
    inc a                                         ; $53ae: $3c
    ld a, [bc]                                    ; $53af: $0a
    ld a, $02                                     ; $53b0: $3e $02
    ld b, $00                                     ; $53b2: $06 $00
    rst $18                                       ; $53b4: $df
    inc l                                         ; $53b5: $2c
    ld a, [bc]                                    ; $53b6: $0a
    push af                                       ; $53b7: $f5
    ld a, $1e                                     ; $53b8: $3e $1e
    rst $18                                       ; $53ba: $df
    inc b                                         ; $53bb: $04
    ld a, [bc]                                    ; $53bc: $0a
    pop af                                        ; $53bd: $f1
    ld a, $02                                     ; $53be: $3e $02
    ld b, $40                                     ; $53c0: $06 $40
    rst $18                                       ; $53c2: $df
    inc l                                         ; $53c3: $2c
    ld a, [bc]                                    ; $53c4: $0a
    push af                                       ; $53c5: $f5
    ld a, $0a                                     ; $53c6: $3e $0a
    rst $18                                       ; $53c8: $df
    inc b                                         ; $53c9: $04
    ld a, [bc]                                    ; $53ca: $0a
    pop af                                        ; $53cb: $f1
    ld a, $02                                     ; $53cc: $3e $02
    ld b, $80                                     ; $53ce: $06 $80
    rst $18                                       ; $53d0: $df
    inc l                                         ; $53d1: $2c
    ld a, [bc]                                    ; $53d2: $0a
    push af                                       ; $53d3: $f5
    ld a, $1e                                     ; $53d4: $3e $1e
    rst $18                                       ; $53d6: $df
    inc b                                         ; $53d7: $04
    ld a, [bc]                                    ; $53d8: $0a
    pop af                                        ; $53d9: $f1
    ld a, $02                                     ; $53da: $3e $02
    ld b, $40                                     ; $53dc: $06 $40
    rst $18                                       ; $53de: $df
    inc l                                         ; $53df: $2c
    ld a, [bc]                                    ; $53e0: $0a
    ld a, $02                                     ; $53e1: $3e $02
    ld b, a                                       ; $53e3: $47
    ld a, $06                                     ; $53e4: $3e $06
    rst $18                                       ; $53e6: $df
    ld [hl-], a                                   ; $53e7: $32
    ld a, [bc]                                    ; $53e8: $0a
    ld a, $02                                     ; $53e9: $3e $02
    rst $18                                       ; $53eb: $df
    inc [hl]                                      ; $53ec: $34
    ld a, [bc]                                    ; $53ed: $0a
    push af                                       ; $53ee: $f5
    ld a, $0a                                     ; $53ef: $3e $0a
    rst $18                                       ; $53f1: $df
    inc b                                         ; $53f2: $04
    ld a, [bc]                                    ; $53f3: $0a
    pop af                                        ; $53f4: $f1
    ld a, $02                                     ; $53f5: $3e $02
    ld b, a                                       ; $53f7: $47
    ld a, $06                                     ; $53f8: $3e $06
    rst $18                                       ; $53fa: $df
    ld [hl-], a                                   ; $53fb: $32
    ld a, [bc]                                    ; $53fc: $0a
    ld a, $02                                     ; $53fd: $3e $02
    rst $18                                       ; $53ff: $df
    inc [hl]                                      ; $5400: $34
    ld a, [bc]                                    ; $5401: $0a
    ld bc, $0018                                  ; $5402: $01 $18 $00
    rst $18                                       ; $5405: $df
    ld [hl], $0a                                  ; $5406: $36 $0a
    xor a                                         ; $5408: $af
    ld bc, $1b00                                  ; $5409: $01 $00 $1b
    ld de, $3500                                  ; $540c: $11 $00 $35
    rst $18                                       ; $540f: $df
    jr c, jr_035_541c                             ; $5410: $38 $0a

    ld a, $02                                     ; $5412: $3e $02
    ld b, $00                                     ; $5414: $06 $00
    rst $18                                       ; $5416: $df
    inc l                                         ; $5417: $2c
    ld a, [bc]                                    ; $5418: $0a
    push af                                       ; $5419: $f5
    ld a, $1e                                     ; $541a: $3e $1e

jr_035_541c:
    rst $18                                       ; $541c: $df
    inc b                                         ; $541d: $04
    ld a, [bc]                                    ; $541e: $0a
    pop af                                        ; $541f: $f1
    ld a, $02                                     ; $5420: $3e $02
    ld b, $c0                                     ; $5422: $06 $c0
    rst $18                                       ; $5424: $df
    inc l                                         ; $5425: $2c
    ld a, [bc]                                    ; $5426: $0a
    push af                                       ; $5427: $f5
    ld a, $0a                                     ; $5428: $3e $0a
    rst $18                                       ; $542a: $df
    inc b                                         ; $542b: $04
    ld a, [bc]                                    ; $542c: $0a
    pop af                                        ; $542d: $f1
    ld a, $02                                     ; $542e: $3e $02
    ld b, $80                                     ; $5430: $06 $80
    rst $18                                       ; $5432: $df
    inc l                                         ; $5433: $2c
    ld a, [bc]                                    ; $5434: $0a
    push af                                       ; $5435: $f5
    ld a, $1e                                     ; $5436: $3e $1e
    rst $18                                       ; $5438: $df
    inc b                                         ; $5439: $04
    ld a, [bc]                                    ; $543a: $0a
    pop af                                        ; $543b: $f1
    ld a, $02                                     ; $543c: $3e $02
    ld b, $c0                                     ; $543e: $06 $c0
    rst $18                                       ; $5440: $df
    inc l                                         ; $5441: $2c
    ld a, [bc]                                    ; $5442: $0a
    ld a, $00                                     ; $5443: $3e $00
    ld bc, $0014                                  ; $5445: $01 $14 $00
    rst $18                                       ; $5448: $df
    ld d, $0a                                     ; $5449: $16 $0a
    ld a, $00                                     ; $544b: $3e $00
    ld bc, $1b00                                  ; $544d: $01 $00 $1b
    ld de, $3500                                  ; $5450: $11 $00 $35
    rst $18                                       ; $5453: $df
    ld [hl+], a                                   ; $5454: $22
    ld a, [bc]                                    ; $5455: $0a
    ld a, $00                                     ; $5456: $3e $00
    rst $18                                       ; $5458: $df
    ld e, $0a                                     ; $5459: $1e $0a
    ld bc, $0014                                  ; $545b: $01 $14 $00
    rst $18                                       ; $545e: $df
    ld [hl], $0a                                  ; $545f: $36 $0a
    ld a, $02                                     ; $5461: $3e $02
    ld b, $40                                     ; $5463: $06 $40
    rst $18                                       ; $5465: $df
    inc l                                         ; $5466: $2c
    ld a, [bc]                                    ; $5467: $0a
    xor a                                         ; $5468: $af
    ld bc, $1f00                                  ; $5469: $01 $00 $1f
    ld de, $3500                                  ; $546c: $11 $00 $35
    rst $18                                       ; $546f: $df
    jr c, jr_035_547c                             ; $5470: $38 $0a

    ld a, $00                                     ; $5472: $3e $00
    ld bc, $1f00                                  ; $5474: $01 $00 $1f
    ld de, $3500                                  ; $5477: $11 $00 $35
    rst $18                                       ; $547a: $df
    ld [hl+], a                                   ; $547b: $22

jr_035_547c:
    ld a, [bc]                                    ; $547c: $0a
    ld a, $00                                     ; $547d: $3e $00
    rst $18                                       ; $547f: $df
    ld e, $0a                                     ; $5480: $1e $0a
    xor a                                         ; $5482: $af
    ld bc, $1f00                                  ; $5483: $01 $00 $1f
    ld de, $3100                                  ; $5486: $11 $00 $31
    rst $18                                       ; $5489: $df
    jr c, jr_035_5496                             ; $548a: $38 $0a

    ld a, $00                                     ; $548c: $3e $00
    ld bc, $1f00                                  ; $548e: $01 $00 $1f
    ld de, $2f00                                  ; $5491: $11 $00 $2f
    rst $18                                       ; $5494: $df
    ld [hl+], a                                   ; $5495: $22

jr_035_5496:
    ld a, [bc]                                    ; $5496: $0a
    ld a, $00                                     ; $5497: $3e $00
    rst $18                                       ; $5499: $df
    ld e, $0a                                     ; $549a: $1e $0a
    push af                                       ; $549c: $f5
    ld a, $14                                     ; $549d: $3e $14
    rst $18                                       ; $549f: $df
    inc b                                         ; $54a0: $04
    ld a, [bc]                                    ; $54a1: $0a
    pop af                                        ; $54a2: $f1
    ld a, $01                                     ; $54a3: $3e $01
    ld [$c441], a                                 ; $54a5: $ea $41 $c4
    ret                                           ; $54a8: $c9


    ld bc, $cbff                                  ; $54a9: $01 $ff $cb
    nop                                           ; $54ac: $00
    ld d, d                                       ; $54ad: $52
    ld d, e                                       ; $54ae: $53
    nop                                           ; $54af: $00
    nop                                           ; $54b0: $00
    rst $38                                       ; $54b1: $ff
    ld a, [$c46a]                                 ; $54b2: $fa $6a $c4
    cp $02                                        ; $54b5: $fe $02
    jr z, jr_035_54bd                             ; $54b7: $28 $04

    call Call_035_5352                            ; $54b9: $cd $52 $53
    ret                                           ; $54bc: $c9


jr_035_54bd:
    ld a, $02                                     ; $54bd: $3e $02
    ld b, $00                                     ; $54bf: $06 $00
    rst $18                                       ; $54c1: $df
    ld b, [hl]                                    ; $54c2: $46
    ld a, [bc]                                    ; $54c3: $0a
    ld bc, $0010                                  ; $54c4: $01 $10 $00
    rst $18                                       ; $54c7: $df
    ld [hl], $0a                                  ; $54c8: $36 $0a
    ld a, $00                                     ; $54ca: $3e $00
    ld bc, $0010                                  ; $54cc: $01 $10 $00
    rst $18                                       ; $54cf: $df
    ld d, $0a                                     ; $54d0: $16 $0a
    ld c, $04                                     ; $54d2: $0e $04
    call Call_000_25af                            ; $54d4: $cd $af $25
    xor a                                         ; $54d7: $af
    ld bc, $2500                                  ; $54d8: $01 $00 $25
    ld de, $1f00                                  ; $54db: $11 $00 $1f
    rst $18                                       ; $54de: $df
    jr c, jr_035_54eb                             ; $54df: $38 $0a

    ld a, $00                                     ; $54e1: $3e $00
    ld bc, $2900                                  ; $54e3: $01 $00 $29
    ld de, $2100                                  ; $54e6: $11 $00 $21
    rst $18                                       ; $54e9: $df
    ld [hl+], a                                   ; $54ea: $22

jr_035_54eb:
    ld a, [bc]                                    ; $54eb: $0a
    ld a, $00                                     ; $54ec: $3e $00
    rst $18                                       ; $54ee: $df
    ld e, $0a                                     ; $54ef: $1e $0a
    ld a, $00                                     ; $54f1: $3e $00
    ld b, $00                                     ; $54f3: $06 $00
    rst $18                                       ; $54f5: $df
    inc l                                         ; $54f6: $2c
    ld a, [bc]                                    ; $54f7: $0a
    push af                                       ; $54f8: $f5
    ld a, $0a                                     ; $54f9: $3e $0a
    rst $18                                       ; $54fb: $df
    inc b                                         ; $54fc: $04
    ld a, [bc]                                    ; $54fd: $0a
    pop af                                        ; $54fe: $f1
    ld a, $00                                     ; $54ff: $3e $00
    ld b, $80                                     ; $5501: $06 $80
    rst $18                                       ; $5503: $df
    inc l                                         ; $5504: $2c
    ld a, [bc]                                    ; $5505: $0a
    push af                                       ; $5506: $f5
    ld a, $14                                     ; $5507: $3e $14
    rst $18                                       ; $5509: $df
    inc b                                         ; $550a: $04
    ld a, [bc]                                    ; $550b: $0a
    pop af                                        ; $550c: $f1
    ld a, $00                                     ; $550d: $3e $00
    ld bc, $2500                                  ; $550f: $01 $00 $25
    ld de, $1900                                  ; $5512: $11 $00 $19
    rst $18                                       ; $5515: $df
    ld [hl+], a                                   ; $5516: $22
    ld a, [bc]                                    ; $5517: $0a
    ld a, $00                                     ; $5518: $3e $00
    rst $18                                       ; $551a: $df
    ld e, $0a                                     ; $551b: $1e $0a
    ld a, $03                                     ; $551d: $3e $03
    ld bc, $2500                                  ; $551f: $01 $00 $25
    ld de, $1700                                  ; $5522: $11 $00 $17
    rst $18                                       ; $5525: $df
    jr nz, @+$0c                                  ; $5526: $20 $0a

    ld a, $00                                     ; $5528: $3e $00
    ld b, $01                                     ; $552a: $06 $01
    rst $18                                       ; $552c: $df
    ld a, [hl+]                                   ; $552d: $2a
    ld a, [bc]                                    ; $552e: $0a
    ld a, $00                                     ; $552f: $3e $00
    ld de, $ff80                                  ; $5531: $11 $80 $ff
    rst $18                                       ; $5534: $df
    ld b, b                                       ; $5535: $40
    ld a, [bc]                                    ; $5536: $0a
    ld a, $00                                     ; $5537: $3e $00
    ld b, $40                                     ; $5539: $06 $40
    ld de, $0200                                  ; $553b: $11 $00 $02
    rst $18                                       ; $553e: $df
    jr z, jr_035_554b                             ; $553f: $28 $0a

    ld a, $00                                     ; $5541: $3e $00
    rst $18                                       ; $5543: $df
    ld e, $0a                                     ; $5544: $1e $0a
    ld a, $00                                     ; $5546: $3e $00
    ld b, $00                                     ; $5548: $06 $00
    rst $18                                       ; $554a: $df

jr_035_554b:
    ld a, [hl+]                                   ; $554b: $2a
    ld a, [bc]                                    ; $554c: $0a
    ld a, $03                                     ; $554d: $3e $03
    ld de, $ff80                                  ; $554f: $11 $80 $ff
    rst $18                                       ; $5552: $df
    ld b, b                                       ; $5553: $40
    ld a, [bc]                                    ; $5554: $0a
    ld a, $03                                     ; $5555: $3e $03
    ld b, $40                                     ; $5557: $06 $40
    ld de, $0200                                  ; $5559: $11 $00 $02
    rst $18                                       ; $555c: $df
    jr z, jr_035_5569                             ; $555d: $28 $0a

    ld a, $03                                     ; $555f: $3e $03
    rst $18                                       ; $5561: $df
    ld e, $0a                                     ; $5562: $1e $0a
    ld a, $00                                     ; $5564: $3e $00
    ld b, a                                       ; $5566: $47
    ld a, $07                                     ; $5567: $3e $07

jr_035_5569:
    rst $18                                       ; $5569: $df
    ld [hl-], a                                   ; $556a: $32
    ld a, [bc]                                    ; $556b: $0a
    ld a, $00                                     ; $556c: $3e $00
    rst $18                                       ; $556e: $df
    inc [hl]                                      ; $556f: $34
    ld a, [bc]                                    ; $5570: $0a
    ld a, $03                                     ; $5571: $3e $03
    ld b, a                                       ; $5573: $47
    ld a, $05                                     ; $5574: $3e $05
    rst $18                                       ; $5576: $df
    ld [hl-], a                                   ; $5577: $32
    ld a, [bc]                                    ; $5578: $0a
    ld a, $03                                     ; $5579: $3e $03
    rst $18                                       ; $557b: $df
    inc [hl]                                      ; $557c: $34
    ld a, [bc]                                    ; $557d: $0a
    push af                                       ; $557e: $f5
    ld a, $0a                                     ; $557f: $3e $0a
    rst $18                                       ; $5581: $df
    inc b                                         ; $5582: $04
    ld a, [bc]                                    ; $5583: $0a
    pop af                                        ; $5584: $f1
    ld a, $01                                     ; $5585: $3e $01
    ld [$c441], a                                 ; $5587: $ea $41 $c4
    ret                                           ; $558a: $c9


    sbc $55                                       ; $558b: $de $55
    db $eb                                        ; $558d: $eb
    ld d, l                                       ; $558e: $55
    sbc c                                         ; $558f: $99
    ld d, l                                       ; $5590: $55
    db $f4                                        ; $5591: $f4
    ld d, l                                       ; $5592: $55
    cp e                                          ; $5593: $bb
    ld d, [hl]                                    ; $5594: $56
    cp h                                          ; $5595: $bc
    ld d, [hl]                                    ; $5596: $56
    cp l                                          ; $5597: $bd
    ld d, [hl]                                    ; $5598: $56
    ld hl, $007b                                  ; $5599: $21 $7b $00
    daa                                           ; $559c: $27
    nop                                           ; $559d: $00
    ld h, $00                                     ; $559e: $26 $00
    nop                                           ; $55a0: $00
    nop                                           ; $55a1: $00
    ret nz                                        ; $55a2: $c0

    ld bc, $212c                                  ; $55a3: $01 $2c $21
    ld a, e                                       ; $55a6: $7b
    nop                                           ; $55a7: $00
    add hl, bc                                    ; $55a8: $09
    nop                                           ; $55a9: $00
    ld de, $0000                                  ; $55aa: $11 $00 $00
    nop                                           ; $55ad: $00
    ld b, b                                       ; $55ae: $40
    ld bc, $212f                                  ; $55af: $01 $2f $21
    ld a, e                                       ; $55b2: $7b
    nop                                           ; $55b3: $00
    ld a, [bc]                                    ; $55b4: $0a
    nop                                           ; $55b5: $00
    ld [de], a                                    ; $55b6: $12
    nop                                           ; $55b7: $00
    nop                                           ; $55b8: $00
    nop                                           ; $55b9: $00
    ld b, b                                       ; $55ba: $40
    ld bc, $212e                                  ; $55bb: $01 $2e $21
    ld a, e                                       ; $55be: $7b
    nop                                           ; $55bf: $00
    jr nz, jr_035_55c2                            ; $55c0: $20 $00

jr_035_55c2:
    jr nz, jr_035_55c4                            ; $55c2: $20 $00

jr_035_55c4:
    nop                                           ; $55c4: $00
    nop                                           ; $55c5: $00
    ret nz                                        ; $55c6: $c0

    ld bc, $2126                                  ; $55c7: $01 $26 $21
    ld a, e                                       ; $55ca: $7b
    nop                                           ; $55cb: $00
    ld bc, $2100                                  ; $55cc: $01 $00 $21
    nop                                           ; $55cf: $00
    nop                                           ; $55d0: $00
    nop                                           ; $55d1: $00
    nop                                           ; $55d2: $00
    ld bc, $0001                                  ; $55d3: $01 $01 $00
    nop                                           ; $55d6: $00
    nop                                           ; $55d7: $00
    nop                                           ; $55d8: $00
    nop                                           ; $55d9: $00
    nop                                           ; $55da: $00
    nop                                           ; $55db: $00
    nop                                           ; $55dc: $00
    rst $38                                       ; $55dd: $ff
    ld bc, $00c0                                  ; $55de: $01 $c0 $00
    ld [hl+], a                                   ; $55e1: $22
    ld b, b                                       ; $55e2: $40
    ld hl, $c002                                  ; $55e3: $21 $02 $c0
    nop                                           ; $55e6: $00
    ld e, $40                                     ; $55e7: $1e $40
    add hl, de                                    ; $55e9: $19
    rst $38                                       ; $55ea: $ff
    ld bc, $00ff                                  ; $55eb: $01 $ff $00
    nop                                           ; $55ee: $00
    nop                                           ; $55ef: $00
    nop                                           ; $55f0: $00
    scf                                           ; $55f1: $37
    ld bc, $ffff                                  ; $55f2: $01 $ff $ff

Jump_035_55f5:
    call Call_035_5921                            ; $55f5: $cd $21 $59
    ld bc, $0010                                  ; $55f8: $01 $10 $00
    rst $18                                       ; $55fb: $df
    ld [hl], $0a                                  ; $55fc: $36 $0a
    ld a, $00                                     ; $55fe: $3e $00
    ld bc, $0010                                  ; $5600: $01 $10 $00
    rst $18                                       ; $5603: $df
    ld d, $0a                                     ; $5604: $16 $0a
    push af                                       ; $5606: $f5
    ld a, $0a                                     ; $5607: $3e $0a
    rst $18                                       ; $5609: $df
    inc b                                         ; $560a: $04
    ld a, [bc]                                    ; $560b: $0a
    pop af                                        ; $560c: $f1
    ld c, $04                                     ; $560d: $0e $04
    call Call_000_25af                            ; $560f: $cd $af $25
    call Call_000_2625                            ; $5612: $cd $25 $26
    ld a, $04                                     ; $5615: $3e $04
    ld hl, $56f8                                  ; $5617: $21 $f8 $56
    call Call_000_23e8                            ; $561a: $cd $e8 $23
    push af                                       ; $561d: $f5
    ld a, $0a                                     ; $561e: $3e $0a
    rst $18                                       ; $5620: $df
    inc b                                         ; $5621: $04
    ld a, [bc]                                    ; $5622: $0a
    pop af                                        ; $5623: $f1
    xor a                                         ; $5624: $af
    ld bc, $1300                                  ; $5625: $01 $00 $13
    ld de, $2100                                  ; $5628: $11 $00 $21
    rst $18                                       ; $562b: $df
    jr c, jr_035_5638                             ; $562c: $38 $0a

    ld a, $00                                     ; $562e: $3e $00
    ld bc, $1300                                  ; $5630: $01 $00 $13
    ld de, $2100                                  ; $5633: $11 $00 $21
    rst $18                                       ; $5636: $df
    ld [hl+], a                                   ; $5637: $22

jr_035_5638:
    ld a, [bc]                                    ; $5638: $0a
    ld a, $00                                     ; $5639: $3e $00
    rst $18                                       ; $563b: $df
    ld e, $0a                                     ; $563c: $1e $0a
    ld a, $00                                     ; $563e: $3e $00
    ld bc, $0b00                                  ; $5640: $01 $00 $0b
    ld de, $2100                                  ; $5643: $11 $00 $21
    rst $18                                       ; $5646: $df
    ld [hl+], a                                   ; $5647: $22
    ld a, [bc]                                    ; $5648: $0a
    ld a, $00                                     ; $5649: $3e $00
    ld bc, $0f00                                  ; $564b: $01 $00 $0f
    ld de, $2100                                  ; $564e: $11 $00 $21
    rst $18                                       ; $5651: $df
    ld [hl+], a                                   ; $5652: $22
    ld a, [bc]                                    ; $5653: $0a
    ld a, $00                                     ; $5654: $3e $00
    rst $18                                       ; $5656: $df
    ld e, $0a                                     ; $5657: $1e $0a
    push af                                       ; $5659: $f5
    ld a, $14                                     ; $565a: $3e $14
    rst $18                                       ; $565c: $df
    inc b                                         ; $565d: $04
    ld a, [bc]                                    ; $565e: $0a
    pop af                                        ; $565f: $f1
    ld a, $00                                     ; $5660: $3e $00
    ld b, $80                                     ; $5662: $06 $80
    rst $18                                       ; $5664: $df
    inc l                                         ; $5665: $2c
    ld a, [bc]                                    ; $5666: $0a
    push af                                       ; $5667: $f5
    ld a, $14                                     ; $5668: $3e $14
    rst $18                                       ; $566a: $df
    inc b                                         ; $566b: $04
    ld a, [bc]                                    ; $566c: $0a
    pop af                                        ; $566d: $f1
    ld a, $06                                     ; $566e: $3e $06
    ld bc, $0d00                                  ; $5670: $01 $00 $0d
    ld de, $2100                                  ; $5673: $11 $00 $21
    rst $18                                       ; $5676: $df
    jr nz, @+$0c                                  ; $5677: $20 $0a

    ld a, $00                                     ; $5679: $3e $00
    ld b, $01                                     ; $567b: $06 $01
    rst $18                                       ; $567d: $df
    ld a, [hl+]                                   ; $567e: $2a
    ld a, [bc]                                    ; $567f: $0a
    ld a, $00                                     ; $5680: $3e $00
    ld de, $ff80                                  ; $5682: $11 $80 $ff
    rst $18                                       ; $5685: $df
    ld b, b                                       ; $5686: $40
    ld a, [bc]                                    ; $5687: $0a
    ld a, $00                                     ; $5688: $3e $00
    ld b, $00                                     ; $568a: $06 $00
    ld de, $0200                                  ; $568c: $11 $00 $02
    rst $18                                       ; $568f: $df
    jr z, jr_035_569c                             ; $5690: $28 $0a

    ld a, $00                                     ; $5692: $3e $00
    rst $18                                       ; $5694: $df
    ld e, $0a                                     ; $5695: $1e $0a
    ld a, $00                                     ; $5697: $3e $00
    ld b, $00                                     ; $5699: $06 $00
    rst $18                                       ; $569b: $df

jr_035_569c:
    ld a, [hl+]                                   ; $569c: $2a
    ld a, [bc]                                    ; $569d: $0a
    ld a, $06                                     ; $569e: $3e $06
    ld de, $ff80                                  ; $56a0: $11 $80 $ff
    rst $18                                       ; $56a3: $df
    ld b, b                                       ; $56a4: $40
    ld a, [bc]                                    ; $56a5: $0a
    ld a, $06                                     ; $56a6: $3e $06
    ld b, $00                                     ; $56a8: $06 $00
    ld de, $0200                                  ; $56aa: $11 $00 $02
    rst $18                                       ; $56ad: $df
    jr z, jr_035_56ba                             ; $56ae: $28 $0a

    ld a, $06                                     ; $56b0: $3e $06
    rst $18                                       ; $56b2: $df
    ld e, $0a                                     ; $56b3: $1e $0a
    ld a, $01                                     ; $56b5: $3e $01
    ld [$c441], a                                 ; $56b7: $ea $41 $c4

jr_035_56ba:
    ret                                           ; $56ba: $c9


    rst $38                                       ; $56bb: $ff
    rst $38                                       ; $56bc: $ff
    ld a, [$c46a]                                 ; $56bd: $fa $6a $c4
    cp $02                                        ; $56c0: $fe $02
    jp z, Jump_035_55f5                           ; $56c2: $ca $f5 $55

    ld a, $04                                     ; $56c5: $3e $04
    ld bc, $2000                                  ; $56c7: $01 $00 $20
    ld de, $1c80                                  ; $56ca: $11 $80 $1c
    rst $18                                       ; $56cd: $df
    jr nz, @+$0c                                  ; $56ce: $20 $0a

    ld a, $03                                     ; $56d0: $3e $03
    ld bc, $2000                                  ; $56d2: $01 $00 $20
    ld de, $1d00                                  ; $56d5: $11 $00 $1d
    rst $18                                       ; $56d8: $df
    jr nz, @+$0c                                  ; $56d9: $20 $0a

    ldh a, [$95]                                  ; $56db: $f0 $95
    ld b, a                                       ; $56dd: $47
    ld a, $04                                     ; $56de: $3e $04
    ld de, $5808                                  ; $56e0: $11 $08 $58
    rst $18                                       ; $56e3: $df
    jr @+$0c                                      ; $56e4: $18 $0a

    ldh a, [$95]                                  ; $56e6: $f0 $95
    ld b, a                                       ; $56e8: $47
    ld a, $03                                     ; $56e9: $3e $03
    ld de, $581a                                  ; $56eb: $11 $1a $58
    rst $18                                       ; $56ee: $df
    jr jr_035_56fb                                ; $56ef: $18 $0a

    call Call_035_5921                            ; $56f1: $cd $21 $59
    call Call_035_56ff                            ; $56f4: $cd $ff $56
    ret                                           ; $56f7: $c9


    ld bc, $0740                                  ; $56f8: $01 $40 $07

jr_035_56fb:
    call Call_035_5939                            ; $56fb: $cd $39 $59
    ret                                           ; $56fe: $c9


Call_035_56ff:
    ld a, $02                                     ; $56ff: $3e $02
    ld bc, $1d00                                  ; $5701: $01 $00 $1d
    ld de, $2500                                  ; $5704: $11 $00 $25
    rst $18                                       ; $5707: $df
    jr nz, @+$0c                                  ; $5708: $20 $0a

    push af                                       ; $570a: $f5
    ld a, $0a                                     ; $570b: $3e $0a
    rst $18                                       ; $570d: $df
    inc b                                         ; $570e: $04
    ld a, [bc]                                    ; $570f: $0a
    pop af                                        ; $5710: $f1
    ld c, $08                                     ; $5711: $0e $08
    call Call_000_25af                            ; $5713: $cd $af $25
    call Call_000_2625                            ; $5716: $cd $25 $26
    ld a, $04                                     ; $5719: $3e $04
    ld hl, $56f8                                  ; $571b: $21 $f8 $56
    call Call_000_23e8                            ; $571e: $cd $e8 $23
    ld hl, $1524                                  ; $5721: $21 $24 $15
    rst $18                                       ; $5724: $df
    ld c, $0a                                     ; $5725: $0e $0a
    push af                                       ; $5727: $f5
    ld a, $05                                     ; $5728: $3e $05
    rst $18                                       ; $572a: $df
    inc b                                         ; $572b: $04
    ld a, [bc]                                    ; $572c: $0a
    pop af                                        ; $572d: $f1
    ld a, $03                                     ; $572e: $3e $03
    rst $18                                       ; $5730: $df
    inc d                                         ; $5731: $14
    ld a, [bc]                                    ; $5732: $0a
    inc h                                         ; $5733: $24
    dec h                                         ; $5734: $25
    jr z, jr_035_573c                             ; $5735: $28 $05

    ld de, $0015                                  ; $5737: $11 $15 $00
    add hl, de                                    ; $573a: $19
    ld [hl], a                                    ; $573b: $77

jr_035_573c:
    ldh a, [$95]                                  ; $573c: $f0 $95
    ld b, a                                       ; $573e: $47
    ld a, $03                                     ; $573f: $3e $03
    ld de, $5832                                  ; $5741: $11 $32 $58
    rst $18                                       ; $5744: $df
    jr @+$0c                                      ; $5745: $18 $0a

    ldh a, [$95]                                  ; $5747: $f0 $95
    ld b, a                                       ; $5749: $47
    ld a, $04                                     ; $574a: $3e $04
    ld de, $57ff                                  ; $574c: $11 $ff $57
    rst $18                                       ; $574f: $df
    jr jr_035_575c                                ; $5750: $18 $0a

    xor a                                         ; $5752: $af
    ld bc, $1f00                                  ; $5753: $01 $00 $1f
    ld de, $2000                                  ; $5756: $11 $00 $20
    rst $18                                       ; $5759: $df
    jr c, jr_035_5766                             ; $575a: $38 $0a

jr_035_575c:
    ld a, $00                                     ; $575c: $3e $00
    ld b, $80                                     ; $575e: $06 $80
    rst $18                                       ; $5760: $df
    inc l                                         ; $5761: $2c
    ld a, [bc]                                    ; $5762: $0a
    push af                                       ; $5763: $f5
    ld a, $64                                     ; $5764: $3e $64

jr_035_5766:
    rst $18                                       ; $5766: $df
    inc b                                         ; $5767: $04
    ld a, [bc]                                    ; $5768: $0a
    pop af                                        ; $5769: $f1
    ld a, $02                                     ; $576a: $3e $02
    ld b, a                                       ; $576c: $47
    ld a, $07                                     ; $576d: $3e $07
    rst $18                                       ; $576f: $df
    ld [hl-], a                                   ; $5770: $32
    ld a, [bc]                                    ; $5771: $0a
    ld a, $02                                     ; $5772: $3e $02
    rst $18                                       ; $5774: $df
    inc [hl]                                      ; $5775: $34
    ld a, [bc]                                    ; $5776: $0a
    ld a, $02                                     ; $5777: $3e $02
    ld b, a                                       ; $5779: $47
    ld a, $07                                     ; $577a: $3e $07
    rst $18                                       ; $577c: $df
    ld [hl-], a                                   ; $577d: $32
    ld a, [bc]                                    ; $577e: $0a
    ld a, $02                                     ; $577f: $3e $02
    rst $18                                       ; $5781: $df
    inc [hl]                                      ; $5782: $34
    ld a, [bc]                                    ; $5783: $0a
    push af                                       ; $5784: $f5
    ld a, $0a                                     ; $5785: $3e $0a
    rst $18                                       ; $5787: $df
    inc b                                         ; $5788: $04
    ld a, [bc]                                    ; $5789: $0a
    pop af                                        ; $578a: $f1
    ld a, $00                                     ; $578b: $3e $00
    ld b, a                                       ; $578d: $47

jr_035_578e:
    ld a, $02                                     ; $578e: $3e $02
    rst $18                                       ; $5790: $df
    ld l, $0a                                     ; $5791: $2e $0a
    push af                                       ; $5793: $f5
    ld a, $0a                                     ; $5794: $3e $0a
    rst $18                                       ; $5796: $df
    inc b                                         ; $5797: $04
    ld a, [bc]                                    ; $5798: $0a
    pop af                                        ; $5799: $f1
    ld a, $02                                     ; $579a: $3e $02
    ld bc, $1d00                                  ; $579c: $01 $00 $1d
    ld de, $2100                                  ; $579f: $11 $00 $21
    rst $18                                       ; $57a2: $df
    ld [hl+], a                                   ; $57a3: $22
    ld a, [bc]                                    ; $57a4: $0a
    ld a, $02                                     ; $57a5: $3e $02
    rst $18                                       ; $57a7: $df
    ld e, $0a                                     ; $57a8: $1e $0a
    ld a, $00                                     ; $57aa: $3e $00
    ld b, a                                       ; $57ac: $47
    ld a, $02                                     ; $57ad: $3e $02
    rst $18                                       ; $57af: $df
    ld l, $0a                                     ; $57b0: $2e $0a
    ld a, $02                                     ; $57b2: $3e $02
    ld b, a                                       ; $57b4: $47
    ld a, $00                                     ; $57b5: $3e $00
    rst $18                                       ; $57b7: $df
    ld l, $0a                                     ; $57b8: $2e $0a
    ld a, $02                                     ; $57ba: $3e $02
    ld b, a                                       ; $57bc: $47
    ld a, $05                                     ; $57bd: $3e $05
    rst $18                                       ; $57bf: $df
    ld [hl-], a                                   ; $57c0: $32
    ld a, [bc]                                    ; $57c1: $0a
    ld a, $02                                     ; $57c2: $3e $02
    rst $18                                       ; $57c4: $df
    inc [hl]                                      ; $57c5: $34
    ld a, [bc]                                    ; $57c6: $0a
    push af                                       ; $57c7: $f5
    ld a, $0a                                     ; $57c8: $3e $0a
    rst $18                                       ; $57ca: $df
    inc b                                         ; $57cb: $04
    ld a, [bc]                                    ; $57cc: $0a
    pop af                                        ; $57cd: $f1
    ld a, $02                                     ; $57ce: $3e $02
    ld b, $00                                     ; $57d0: $06 $00
    rst $18                                       ; $57d2: $df
    inc l                                         ; $57d3: $2c
    ld a, [bc]                                    ; $57d4: $0a
    ld a, $02                                     ; $57d5: $3e $02
    ld b, a                                       ; $57d7: $47
    ld a, $05                                     ; $57d8: $3e $05
    rst $18                                       ; $57da: $df
    ld [hl-], a                                   ; $57db: $32
    ld a, [bc]                                    ; $57dc: $0a
    ld a, $02                                     ; $57dd: $3e $02
    rst $18                                       ; $57df: $df
    inc [hl]                                      ; $57e0: $34
    ld a, [bc]                                    ; $57e1: $0a
    push af                                       ; $57e2: $f5
    ld a, $0a                                     ; $57e3: $3e $0a
    rst $18                                       ; $57e5: $df
    inc b                                         ; $57e6: $04
    ld a, [bc]                                    ; $57e7: $0a
    pop af                                        ; $57e8: $f1
    ld a, $02                                     ; $57e9: $3e $02
    ld bc, $1b00                                  ; $57eb: $01 $00 $1b
    ld de, $1c00                                  ; $57ee: $11 $00 $1c
    rst $18                                       ; $57f1: $df
    ld [hl+], a                                   ; $57f2: $22
    ld a, [bc]                                    ; $57f3: $0a
    ld a, $02                                     ; $57f4: $3e $02
    rst $18                                       ; $57f6: $df
    ld e, $0a                                     ; $57f7: $1e $0a
    ld a, $01                                     ; $57f9: $3e $01
    ld [$c441], a                                 ; $57fb: $ea $41 $c4
    ret                                           ; $57fe: $c9


    db $10                                        ; $57ff: $10
    inc b                                         ; $5800: $04
    inc b                                         ; $5801: $04
    nop                                           ; $5802: $00
    add hl, bc                                    ; $5803: $09
    nop                                           ; $5804: $00
    ld de, $0002                                  ; $5805: $11 $02 $00
    db $10                                        ; $5808: $10
    inc bc                                        ; $5809: $03
    inc b                                         ; $580a: $04
    nop                                           ; $580b: $00
    jr nz, jr_035_578e                            ; $580c: $20 $80

    inc e                                         ; $580e: $1c
    ld [bc], a                                    ; $580f: $02
    db $10                                        ; $5810: $10
    ld bc, $0400                                  ; $5811: $01 $00 $04
    nop                                           ; $5814: $00
    add hl, bc                                    ; $5815: $09
    add b                                         ; $5816: $80
    ld [de], a                                    ; $5817: $12
    ld [bc], a                                    ; $5818: $02
    nop                                           ; $5819: $00
    inc b                                         ; $581a: $04
    nop                                           ; $581b: $00
    jr nz, jr_035_581e                            ; $581c: $20 $00

jr_035_581e:
    dec e                                         ; $581e: $1d
    ld [bc], a                                    ; $581f: $02
    inc bc                                        ; $5820: $03
    nop                                           ; $5821: $00
    jr nz, jr_035_5824                            ; $5822: $20 $00

jr_035_5824:
    dec e                                         ; $5824: $1d
    ld bc, $0378                                  ; $5825: $01 $78 $03
    add b                                         ; $5828: $80
    rra                                           ; $5829: $1f
    nop                                           ; $582a: $00
    dec e                                         ; $582b: $1d
    ld bc, $0c78                                  ; $582c: $01 $78 $0c
    pop af                                        ; $582f: $f1
    rst $38                                       ; $5830: $ff
    nop                                           ; $5831: $00
    inc b                                         ; $5832: $04
    nop                                           ; $5833: $00
    rra                                           ; $5834: $1f
    nop                                           ; $5835: $00
    ld a, [de]                                    ; $5836: $1a
    ld [bc], a                                    ; $5837: $02
    dec c                                         ; $5838: $0d
    ld c, $08                                     ; $5839: $0e $08
    nop                                           ; $583b: $00
    inc b                                         ; $583c: $04
    nop                                           ; $583d: $00
    dec de                                        ; $583e: $1b
    nop                                           ; $583f: $00
    dec de                                        ; $5840: $1b
    ld [bc], a                                    ; $5841: $02
    nop                                           ; $5842: $00
    inc bc                                        ; $5843: $03
    nop                                           ; $5844: $00
    jr nz, jr_035_5847                            ; $5845: $20 $00

jr_035_5847:
    dec e                                         ; $5847: $1d
    ld bc, $0378                                  ; $5848: $01 $78 $03
    add b                                         ; $584b: $80
    rra                                           ; $584c: $1f
    nop                                           ; $584d: $00
    dec e                                         ; $584e: $1d
    ld bc, $0c78                                  ; $584f: $01 $78 $0c
    pop af                                        ; $5852: $f1
    rst $38                                       ; $5853: $ff
    ld a, $04                                     ; $5854: $3e $04
    ldh [$96], a                                  ; $5856: $e0 $96
    ldh [rSVBK], a                                ; $5858: $e0 $70
    ld a, $03                                     ; $585a: $3e $03
    rst $18                                       ; $585c: $df
    inc d                                         ; $585d: $14
    ld a, [bc]                                    ; $585e: $0a
    inc h                                         ; $585f: $24
    dec h                                         ; $5860: $25
    jr z, jr_035_5893                             ; $5861: $28 $30

    ld e, l                                       ; $5863: $5d
    ld d, h                                       ; $5864: $54
    ld hl, $002c                                  ; $5865: $21 $2c $00
    add hl, de                                    ; $5868: $19
    ld a, [hl]                                    ; $5869: $7e
    add a                                         ; $586a: $87
    add a                                         ; $586b: $87
    ld c, a                                       ; $586c: $4f
    ld hl, $002d                                  ; $586d: $21 $2d $00
    add hl, de                                    ; $5870: $19
    ld b, [hl]                                    ; $5871: $46
    ld hl, $0004                                  ; $5872: $21 $04 $00
    add hl, de                                    ; $5875: $19
    ld a, [hl+]                                   ; $5876: $2a
    ld h, [hl]                                    ; $5877: $66
    ld l, a                                       ; $5878: $6f
    ld a, $10                                     ; $5879: $3e $10
    add l                                         ; $587b: $85
    ld l, a                                       ; $587c: $6f
    jr nc, jr_035_5880                            ; $587d: $30 $01

    inc h                                         ; $587f: $24

jr_035_5880:
    push hl                                       ; $5880: $e5
    ld hl, $0006                                  ; $5881: $21 $06 $00
    add hl, de                                    ; $5884: $19
    ld a, [hl+]                                   ; $5885: $2a
    ld d, [hl]                                    ; $5886: $56
    ld e, a                                       ; $5887: $5f
    ld a, $90                                     ; $5888: $3e $90
    add e                                         ; $588a: $83
    ld e, a                                       ; $588b: $5f
    jr nc, jr_035_588f                            ; $588c: $30 $01

    inc d                                         ; $588e: $14

jr_035_588f:
    pop hl                                        ; $588f: $e1
    call Call_000_27b4                            ; $5890: $cd $b4 $27

jr_035_5893:
    ld a, $04                                     ; $5893: $3e $04
    rst $18                                       ; $5895: $df
    inc d                                         ; $5896: $14
    ld a, [bc]                                    ; $5897: $0a
    inc h                                         ; $5898: $24
    dec h                                         ; $5899: $25
    jr z, jr_035_58cc                             ; $589a: $28 $30

    ld e, l                                       ; $589c: $5d
    ld d, h                                       ; $589d: $54
    ld hl, $002c                                  ; $589e: $21 $2c $00
    add hl, de                                    ; $58a1: $19
    ld a, [hl]                                    ; $58a2: $7e
    add a                                         ; $58a3: $87
    add a                                         ; $58a4: $87
    ld c, a                                       ; $58a5: $4f
    ld hl, $002d                                  ; $58a6: $21 $2d $00
    add hl, de                                    ; $58a9: $19
    ld b, [hl]                                    ; $58aa: $46
    ld hl, $0004                                  ; $58ab: $21 $04 $00
    add hl, de                                    ; $58ae: $19
    ld a, [hl+]                                   ; $58af: $2a
    ld h, [hl]                                    ; $58b0: $66
    ld l, a                                       ; $58b1: $6f
    ld a, $10                                     ; $58b2: $3e $10
    add l                                         ; $58b4: $85
    ld l, a                                       ; $58b5: $6f
    jr nc, jr_035_58b9                            ; $58b6: $30 $01

    inc h                                         ; $58b8: $24

jr_035_58b9:
    push hl                                       ; $58b9: $e5
    ld hl, $0006                                  ; $58ba: $21 $06 $00
    add hl, de                                    ; $58bd: $19
    ld a, [hl+]                                   ; $58be: $2a
    ld d, [hl]                                    ; $58bf: $56
    ld e, a                                       ; $58c0: $5f
    ld a, $90                                     ; $58c1: $3e $90
    add e                                         ; $58c3: $83
    ld e, a                                       ; $58c4: $5f
    jr nc, jr_035_58c8                            ; $58c5: $30 $01

    inc d                                         ; $58c7: $14

jr_035_58c8:
    pop hl                                        ; $58c8: $e1
    call Call_000_27b4                            ; $58c9: $cd $b4 $27

jr_035_58cc:
    ret                                           ; $58cc: $c9


    nop                                           ; $58cd: $00
    nop                                           ; $58ce: $00
    nop                                           ; $58cf: $00
    ld a, b                                       ; $58d0: $78
    ld a, b                                       ; $58d1: $78
    ld [hl], a                                    ; $58d2: $77
    ld e, a                                       ; $58d3: $5f
    ld [hl], c                                    ; $58d4: $71
    ld e, a                                       ; $58d5: $5f
    ld [hl], c                                    ; $58d6: $71
    ld e, a                                       ; $58d7: $5f
    ld d, c                                       ; $58d8: $51
    ld a, a                                       ; $58d9: $7f
    ld e, c                                       ; $58da: $59
    ld a, a                                       ; $58db: $7f
    ld d, a                                       ; $58dc: $57
    ld [hl], a                                    ; $58dd: $77
    ld d, b                                       ; $58de: $50
    ld [hl], b                                    ; $58df: $70
    ld [hl], b                                    ; $58e0: $70
    ld d, b                                       ; $58e1: $50
    ld [hl], b                                    ; $58e2: $70
    ld d, b                                       ; $58e3: $50
    ld [hl], b                                    ; $58e4: $70
    ld d, b                                       ; $58e5: $50
    ld [hl], b                                    ; $58e6: $70
    ld d, b                                       ; $58e7: $50
    ld d, b                                       ; $58e8: $50
    ld [hl], b                                    ; $58e9: $70
    ld d, b                                       ; $58ea: $50
    ld [hl], b                                    ; $58eb: $70
    ld d, b                                       ; $58ec: $50
    ld [hl], b                                    ; $58ed: $70
    ld d, b                                       ; $58ee: $50
    ld [hl], b                                    ; $58ef: $70
    ld [hl], b                                    ; $58f0: $70
    ld d, b                                       ; $58f1: $50
    ld [hl], b                                    ; $58f2: $70
    ld d, b                                       ; $58f3: $50
    ld [hl], b                                    ; $58f4: $70
    ld d, b                                       ; $58f5: $50
    ld [hl], b                                    ; $58f6: $70
    ld d, b                                       ; $58f7: $50
    ld d, b                                       ; $58f8: $50
    ld [hl], b                                    ; $58f9: $70
    ld d, b                                       ; $58fa: $50
    ld [hl], b                                    ; $58fb: $70
    ld d, b                                       ; $58fc: $50
    ld [hl], b                                    ; $58fd: $70
    ld d, b                                       ; $58fe: $50
    ld [hl], b                                    ; $58ff: $70
    ld [hl], b                                    ; $5900: $70
    ld d, b                                       ; $5901: $50
    ld [hl], b                                    ; $5902: $70
    ld d, b                                       ; $5903: $50
    ld [hl], b                                    ; $5904: $70
    ld d, b                                       ; $5905: $50
    ld [hl], b                                    ; $5906: $70
    ld d, b                                       ; $5907: $50
    ld d, b                                       ; $5908: $50
    ld [hl], b                                    ; $5909: $70
    ret c                                         ; $590a: $d8

    ld hl, sp-$08                                 ; $590b: $f8 $f8
    ld hl, sp+$70                                 ; $590d: $f8 $70
    ld [hl], b                                    ; $590f: $70
    db $10                                        ; $5910: $10
    ld [$0000], sp                                ; $5911: $08 $00 $00
    jr nz, jr_035_591e                            ; $5914: $20 $08

    ld [bc], a                                    ; $5916: $02
    nop                                           ; $5917: $00
    add b                                         ; $5918: $80
    ret nz                                        ; $5919: $c0

    ld bc, $7fff                                  ; $591a: $01 $ff $7f
    ld c, e                                       ; $591d: $4b

jr_035_591e:
    ld b, e                                       ; $591e: $43
    nop                                           ; $591f: $00
    nop                                           ; $5920: $00

Call_035_5921:
    xor a                                         ; $5921: $af
    ldh [rVBK], a                                 ; $5922: $e0 $4f
    ld hl, $58d0                                  ; $5924: $21 $d0 $58
    ld de, $8400                                  ; $5927: $11 $00 $84
    ld c, $04                                     ; $592a: $0e $04
    call Call_000_0468                            ; $592c: $cd $68 $04
    ld hl, $5919                                  ; $592f: $21 $19 $59
    ld de, $0f01                                  ; $5932: $11 $01 $0f
    call Call_000_0595                            ; $5935: $cd $95 $05
    ret                                           ; $5938: $c9


Call_035_5939:
    push bc                                       ; $5939: $c5
    ld hl, $c320                                  ; $593a: $21 $20 $c3
    ld a, [hl+]                                   ; $593d: $2a
    ld b, [hl]                                    ; $593e: $46
    ld c, a                                       ; $593f: $4f
    ld hl, $1fa0                                  ; $5940: $21 $a0 $1f
    call Call_000_1b52                            ; $5943: $cd $52 $1b
    ld a, h                                       ; $5946: $7c
    inc a                                         ; $5947: $3c
    inc a                                         ; $5948: $3c
    inc a                                         ; $5949: $3c
    inc a                                         ; $594a: $3c
    add hl, hl                                    ; $594b: $29
    add hl, hl                                    ; $594c: $29
    add hl, hl                                    ; $594d: $29
    ld d, h                                       ; $594e: $54
    ld hl, $c322                                  ; $594f: $21 $22 $c3
    ld a, [hl+]                                   ; $5952: $2a
    ld b, [hl]                                    ; $5953: $46
    ld c, a                                       ; $5954: $4f
    ld hl, $1c60                                  ; $5955: $21 $60 $1c
    call Call_000_1b52                            ; $5958: $cd $52 $1b
    ld a, h                                       ; $595b: $7c
    inc a                                         ; $595c: $3c
    inc a                                         ; $595d: $3c
    add hl, hl                                    ; $595e: $29
    add hl, hl                                    ; $595f: $29
    add hl, hl                                    ; $5960: $29
    ld e, h                                       ; $5961: $5c
    ld hl, $5910                                  ; $5962: $21 $10 $59
    pop bc                                        ; $5965: $c1
    call Call_000_26ea                            ; $5966: $cd $ea $26
    ret                                           ; $5969: $c9


    pop bc                                        ; $596a: $c1
    ret                                           ; $596b: $c9


    ld hl, sp+$59                                 ; $596c: $f8 $59
    rst $38                                       ; $596e: $ff
    ld e, c                                       ; $596f: $59
    ld a, d                                       ; $5970: $7a
    ld e, c                                       ; $5971: $59
    ld [$095a], sp                                ; $5972: $08 $5a $09
    ld e, d                                       ; $5975: $5a
    ld a, [bc]                                    ; $5976: $0a
    ld e, d                                       ; $5977: $5a
    dec bc                                        ; $5978: $0b
    ld e, d                                       ; $5979: $5a
    ld hl, $007b                                  ; $597a: $21 $7b $00
    ld a, [de]                                    ; $597d: $1a
    nop                                           ; $597e: $00
    jr nz, jr_035_5981                            ; $597f: $20 $00

jr_035_5981:
    nop                                           ; $5981: $00
    nop                                           ; $5982: $00
    nop                                           ; $5983: $00
    ld bc, $2d0a                                  ; $5984: $01 $0a $2d
    ld a, e                                       ; $5987: $7b
    nop                                           ; $5988: $00
    rla                                           ; $5989: $17
    nop                                           ; $598a: $00
    jr jr_035_598d                                ; $598b: $18 $00

jr_035_598d:
    nop                                           ; $598d: $00
    nop                                           ; $598e: $00
    nop                                           ; $598f: $00
    ld bc, $2116                                  ; $5990: $01 $16 $21
    ld a, e                                       ; $5993: $7b
    nop                                           ; $5994: $00
    ld hl, $1b00                                  ; $5995: $21 $00 $1b
    nop                                           ; $5998: $00
    nop                                           ; $5999: $00
    nop                                           ; $599a: $00
    ld b, b                                       ; $599b: $40
    ld bc, $2116                                  ; $599c: $01 $16 $21
    ld a, e                                       ; $599f: $7b
    nop                                           ; $59a0: $00
    ld h, $00                                     ; $59a1: $26 $00
    rra                                           ; $59a3: $1f
    nop                                           ; $59a4: $00
    nop                                           ; $59a5: $00
    nop                                           ; $59a6: $00
    add b                                         ; $59a7: $80
    ld bc, $210e                                  ; $59a8: $01 $0e $21
    ld a, e                                       ; $59ab: $7b
    nop                                           ; $59ac: $00
    inc e                                         ; $59ad: $1c
    nop                                           ; $59ae: $00
    dec h                                         ; $59af: $25
    nop                                           ; $59b0: $00
    nop                                           ; $59b1: $00
    nop                                           ; $59b2: $00
    ret nz                                        ; $59b3: $c0

    ld bc, $ef16                                  ; $59b4: $01 $16 $ef
    ld e, c                                       ; $59b7: $59
    nop                                           ; $59b8: $00
    ld hl, $2080                                  ; $59b9: $21 $80 $20
    nop                                           ; $59bc: $00
    nop                                           ; $59bd: $00
    nop                                           ; $59be: $00
    ret nz                                        ; $59bf: $c0

    ld bc, $2128                                  ; $59c0: $01 $28 $21
    ld a, e                                       ; $59c3: $7b
    nop                                           ; $59c4: $00
    rra                                           ; $59c5: $1f
    nop                                           ; $59c6: $00
    inc d                                         ; $59c7: $14
    nop                                           ; $59c8: $00
    nop                                           ; $59c9: $00
    nop                                           ; $59ca: $00
    ret nz                                        ; $59cb: $c0

    ld bc, $212d                                  ; $59cc: $01 $2d $21
    ld a, e                                       ; $59cf: $7b
    nop                                           ; $59d0: $00
    dec e                                         ; $59d1: $1d
    nop                                           ; $59d2: $00
    ld [de], a                                    ; $59d3: $12
    nop                                           ; $59d4: $00
    nop                                           ; $59d5: $00
    nop                                           ; $59d6: $00
    nop                                           ; $59d7: $00
    ld bc, $210d                                  ; $59d8: $01 $0d $21
    ld a, e                                       ; $59db: $7b
    nop                                           ; $59dc: $00
    ld hl, $1200                                  ; $59dd: $21 $00 $12
    nop                                           ; $59e0: $00
    nop                                           ; $59e1: $00
    nop                                           ; $59e2: $00
    add b                                         ; $59e3: $80
    ld bc, $0016                                  ; $59e4: $01 $16 $00
    nop                                           ; $59e7: $00
    nop                                           ; $59e8: $00
    nop                                           ; $59e9: $00
    nop                                           ; $59ea: $00
    nop                                           ; $59eb: $00
    nop                                           ; $59ec: $00
    nop                                           ; $59ed: $00
    rst $38                                       ; $59ee: $ff
    dec c                                         ; $59ef: $0d
    dec de                                        ; $59f0: $1b
    nop                                           ; $59f1: $00
    nop                                           ; $59f2: $00
    dec c                                         ; $59f3: $0d
    rla                                           ; $59f4: $17
    nop                                           ; $59f5: $00
    nop                                           ; $59f6: $00
    nop                                           ; $59f7: $00
    ld bc, $0000                                  ; $59f8: $01 $00 $00
    rla                                           ; $59fb: $17
    nop                                           ; $59fc: $00
    dec d                                         ; $59fd: $15
    rst $38                                       ; $59fe: $ff
    ld bc, $00ff                                  ; $59ff: $01 $ff $00
    nop                                           ; $5a02: $00
    nop                                           ; $5a03: $00
    nop                                           ; $5a04: $00
    inc sp                                        ; $5a05: $33
    inc bc                                        ; $5a06: $03
    rst $38                                       ; $5a07: $ff
    rst $38                                       ; $5a08: $ff
    ret                                           ; $5a09: $c9


    rst $38                                       ; $5a0a: $ff
    rst $18                                       ; $5a0b: $df
    nop                                           ; $5a0c: $00
    ld a, [bc]                                    ; $5a0d: $0a
    ld a, $00                                     ; $5a0e: $3e $00
    ld bc, $0010                                  ; $5a10: $01 $10 $00
    rst $18                                       ; $5a13: $df
    ld d, $0a                                     ; $5a14: $16 $0a
    ld bc, $0010                                  ; $5a16: $01 $10 $00
    rst $18                                       ; $5a19: $df
    ld [hl], $0a                                  ; $5a1a: $36 $0a
    ld c, $08                                     ; $5a1c: $0e $08
    call Call_000_25af                            ; $5a1e: $cd $af $25
    xor a                                         ; $5a21: $af
    ld bc, $1d00                                  ; $5a22: $01 $00 $1d
    ld de, $1600                                  ; $5a25: $11 $00 $16
    rst $18                                       ; $5a28: $df
    jr c, jr_035_5a35                             ; $5a29: $38 $0a

    ld a, $00                                     ; $5a2b: $3e $00
    ld bc, $1d00                                  ; $5a2d: $01 $00 $1d
    ld de, $1380                                  ; $5a30: $11 $80 $13
    rst $18                                       ; $5a33: $df
    ld [hl+], a                                   ; $5a34: $22

jr_035_5a35:
    ld a, [bc]                                    ; $5a35: $0a
    ld a, $00                                     ; $5a36: $3e $00
    rst $18                                       ; $5a38: $df
    ld e, $0a                                     ; $5a39: $1e $0a
    ld a, $00                                     ; $5a3b: $3e $00
    ld b, a                                       ; $5a3d: $47
    ld a, $08                                     ; $5a3e: $3e $08
    rst $18                                       ; $5a40: $df
    ld l, $0a                                     ; $5a41: $2e $0a
    ld a, $08                                     ; $5a43: $3e $08
    ld b, a                                       ; $5a45: $47
    ld a, $07                                     ; $5a46: $3e $07
    rst $18                                       ; $5a48: $df
    ld [hl-], a                                   ; $5a49: $32
    ld a, [bc]                                    ; $5a4a: $0a
    ld a, $08                                     ; $5a4b: $3e $08
    rst $18                                       ; $5a4d: $df
    inc [hl]                                      ; $5a4e: $34
    ld a, [bc]                                    ; $5a4f: $0a
    ld a, $00                                     ; $5a50: $3e $00
    ld b, a                                       ; $5a52: $47
    ld a, $09                                     ; $5a53: $3e $09
    rst $18                                       ; $5a55: $df
    ld l, $0a                                     ; $5a56: $2e $0a
    ld a, $00                                     ; $5a58: $3e $00
    ld b, a                                       ; $5a5a: $47
    ld a, $0a                                     ; $5a5b: $3e $0a
    rst $18                                       ; $5a5d: $df
    ld l, $0a                                     ; $5a5e: $2e $0a
    ld hl, $152c                                  ; $5a60: $21 $2c $15
    rst $18                                       ; $5a63: $df
    ld c, $0a                                     ; $5a64: $0e $0a
    ld a, $08                                     ; $5a66: $3e $08
    ld b, a                                       ; $5a68: $47
    ld a, $00                                     ; $5a69: $3e $00
    rst $18                                       ; $5a6b: $df
    ld l, $0a                                     ; $5a6c: $2e $0a
    push af                                       ; $5a6e: $f5
    ld a, $0a                                     ; $5a6f: $3e $0a
    rst $18                                       ; $5a71: $df
    inc b                                         ; $5a72: $04
    ld a, [bc]                                    ; $5a73: $0a
    pop af                                        ; $5a74: $f1
    rst $18                                       ; $5a75: $df
    db $10                                        ; $5a76: $10
    ld a, [bc]                                    ; $5a77: $0a
    push af                                       ; $5a78: $f5
    ld a, $0a                                     ; $5a79: $3e $0a
    rst $18                                       ; $5a7b: $df
    inc b                                         ; $5a7c: $04
    ld a, [bc]                                    ; $5a7d: $0a
    pop af                                        ; $5a7e: $f1
    rst $18                                       ; $5a7f: $df
    db $10                                        ; $5a80: $10
    ld a, [bc]                                    ; $5a81: $0a
    ld a, $08                                     ; $5a82: $3e $08
    ld de, $ff80                                  ; $5a84: $11 $80 $ff
    rst $18                                       ; $5a87: $df
    ld b, b                                       ; $5a88: $40
    ld a, [bc]                                    ; $5a89: $0a
    ld a, $08                                     ; $5a8a: $3e $08
    rst $18                                       ; $5a8c: $df
    ld b, d                                       ; $5a8d: $42
    ld a, [bc]                                    ; $5a8e: $0a
    ld a, $09                                     ; $5a8f: $3e $09
    ld b, a                                       ; $5a91: $47
    ld a, $0a                                     ; $5a92: $3e $0a
    rst $18                                       ; $5a94: $df
    jr nc, jr_035_5aa1                            ; $5a95: $30 $0a

    ld a, $0a                                     ; $5a97: $3e $0a
    ld b, a                                       ; $5a99: $47
    ld a, $07                                     ; $5a9a: $3e $07
    rst $18                                       ; $5a9c: $df
    ld [hl-], a                                   ; $5a9d: $32
    ld a, [bc]                                    ; $5a9e: $0a
    ld a, $0a                                     ; $5a9f: $3e $0a

jr_035_5aa1:
    rst $18                                       ; $5aa1: $df
    inc [hl]                                      ; $5aa2: $34
    ld a, [bc]                                    ; $5aa3: $0a
    ld a, $09                                     ; $5aa4: $3e $09
    ld b, a                                       ; $5aa6: $47
    ld a, $05                                     ; $5aa7: $3e $05
    rst $18                                       ; $5aa9: $df
    ld [hl-], a                                   ; $5aaa: $32
    ld a, [bc]                                    ; $5aab: $0a
    ld a, $09                                     ; $5aac: $3e $09
    rst $18                                       ; $5aae: $df
    inc [hl]                                      ; $5aaf: $34
    ld a, [bc]                                    ; $5ab0: $0a
    ld hl, $1808                                  ; $5ab1: $21 $08 $18
    rst $18                                       ; $5ab4: $df
    ld c, $0a                                     ; $5ab5: $0e $0a
    push af                                       ; $5ab7: $f5
    ld a, $14                                     ; $5ab8: $3e $14
    rst $18                                       ; $5aba: $df
    inc b                                         ; $5abb: $04
    ld a, [bc]                                    ; $5abc: $0a
    pop af                                        ; $5abd: $f1
    ld hl, $1809                                  ; $5abe: $21 $09 $18
    ld de, $0101                                  ; $5ac1: $11 $01 $01
    ld hl, $180b                                  ; $5ac4: $21 $0b $18
    rst $18                                       ; $5ac7: $df
    ld c, $0a                                     ; $5ac8: $0e $0a
    jr jr_035_5ad2                                ; $5aca: $18 $06

    ld hl, $180a                                  ; $5acc: $21 $0a $18
    rst $18                                       ; $5acf: $df
    ld c, $0a                                     ; $5ad0: $0e $0a

jr_035_5ad2:
    ld a, $0a                                     ; $5ad2: $3e $0a
    ld b, a                                       ; $5ad4: $47
    ld a, $05                                     ; $5ad5: $3e $05
    rst $18                                       ; $5ad7: $df
    ld [hl-], a                                   ; $5ad8: $32
    ld a, [bc]                                    ; $5ad9: $0a
    ld a, $0a                                     ; $5ada: $3e $0a
    rst $18                                       ; $5adc: $df
    inc [hl]                                      ; $5add: $34
    ld a, [bc]                                    ; $5ade: $0a
    ld a, $08                                     ; $5adf: $3e $08
    ld b, $c0                                     ; $5ae1: $06 $c0
    rst $18                                       ; $5ae3: $df
    inc l                                         ; $5ae4: $2c
    ld a, [bc]                                    ; $5ae5: $0a
    ld a, $08                                     ; $5ae6: $3e $08
    ld b, a                                       ; $5ae8: $47
    ld a, $05                                     ; $5ae9: $3e $05
    rst $18                                       ; $5aeb: $df
    ld [hl-], a                                   ; $5aec: $32
    ld a, [bc]                                    ; $5aed: $0a
    ld a, $09                                     ; $5aee: $3e $09
    ld b, a                                       ; $5af0: $47
    ld a, $05                                     ; $5af1: $3e $05
    rst $18                                       ; $5af3: $df
    ld [hl-], a                                   ; $5af4: $32
    ld a, [bc]                                    ; $5af5: $0a
    ld a, $09                                     ; $5af6: $3e $09
    rst $18                                       ; $5af8: $df
    inc [hl]                                      ; $5af9: $34
    ld a, [bc]                                    ; $5afa: $0a
    ld a, $01                                     ; $5afb: $3e $01
    ld [$c441], a                                 ; $5afd: $ea $41 $c4
    rst $18                                       ; $5b00: $df
    ld [bc], a                                    ; $5b01: $02
    ld a, [bc]                                    ; $5b02: $0a
    ret                                           ; $5b03: $c9


    ld a, $08                                     ; $5b04: $3e $08
    ld b, $c0                                     ; $5b06: $06 $c0
    rst $18                                       ; $5b08: $df
    inc l                                         ; $5b09: $2c
    ld a, [bc]                                    ; $5b0a: $0a
    ld a, $09                                     ; $5b0b: $3e $09
    ld b, $00                                     ; $5b0d: $06 $00
    rst $18                                       ; $5b0f: $df
    inc l                                         ; $5b10: $2c
    ld a, [bc]                                    ; $5b11: $0a
    ld a, $0a                                     ; $5b12: $3e $0a
    ld b, $80                                     ; $5b14: $06 $80
    rst $18                                       ; $5b16: $df
    inc l                                         ; $5b17: $2c
    ld a, [bc]                                    ; $5b18: $0a
    ld a, $08                                     ; $5b19: $3e $08
    ld b, a                                       ; $5b1b: $47
    ld a, $06                                     ; $5b1c: $3e $06
    rst $18                                       ; $5b1e: $df
    ld [hl-], a                                   ; $5b1f: $32
    ld a, [bc]                                    ; $5b20: $0a
    ld a, $08                                     ; $5b21: $3e $08
    rst $18                                       ; $5b23: $df
    inc [hl]                                      ; $5b24: $34
    ld a, [bc]                                    ; $5b25: $0a
    ret                                           ; $5b26: $c9


    ld a, $08                                     ; $5b27: $3e $08
    ld b, $c0                                     ; $5b29: $06 $c0
    rst $18                                       ; $5b2b: $df
    inc l                                         ; $5b2c: $2c
    ld a, [bc]                                    ; $5b2d: $0a
    ld a, $08                                     ; $5b2e: $3e $08
    ld b, a                                       ; $5b30: $47
    ld a, $05                                     ; $5b31: $3e $05
    rst $18                                       ; $5b33: $df
    ld [hl-], a                                   ; $5b34: $32
    ld a, [bc]                                    ; $5b35: $0a
    ld a, $08                                     ; $5b36: $3e $08
    rst $18                                       ; $5b38: $df
    inc [hl]                                      ; $5b39: $34
    ld a, [bc]                                    ; $5b3a: $0a
    ld a, $09                                     ; $5b3b: $3e $09
    ld b, $00                                     ; $5b3d: $06 $00
    rst $18                                       ; $5b3f: $df
    inc l                                         ; $5b40: $2c
    ld a, [bc]                                    ; $5b41: $0a
    ld a, $0a                                     ; $5b42: $3e $0a
    ld b, $80                                     ; $5b44: $06 $80
    rst $18                                       ; $5b46: $df
    inc l                                         ; $5b47: $2c
    ld a, [bc]                                    ; $5b48: $0a
    ret                                           ; $5b49: $c9


    ld a, $01                                     ; $5b4a: $3e $01
    ld [$c441], a                                 ; $5b4c: $ea $41 $c4
    ret                                           ; $5b4f: $c9


    sub a                                         ; $5b50: $97
    ld e, e                                       ; $5b51: $5b
    sbc [hl]                                      ; $5b52: $9e
    ld e, e                                       ; $5b53: $5b
    ld e, [hl]                                    ; $5b54: $5e
    ld e, e                                       ; $5b55: $5b
    and a                                         ; $5b56: $a7
    ld e, e                                       ; $5b57: $5b
    xor b                                         ; $5b58: $a8
    ld e, e                                       ; $5b59: $5b
    xor c                                         ; $5b5a: $a9
    ld e, e                                       ; $5b5b: $5b
    xor d                                         ; $5b5c: $aa
    ld e, e                                       ; $5b5d: $5b
    ld hl, $007b                                  ; $5b5e: $21 $7b $00
    add hl, bc                                    ; $5b61: $09
    nop                                           ; $5b62: $00
    ld bc, $0000                                  ; $5b63: $01 $00 $00
    nop                                           ; $5b66: $00
    ld b, b                                       ; $5b67: $40
    ld bc, $2104                                  ; $5b68: $01 $04 $21
    ld a, e                                       ; $5b6b: $7b
    nop                                           ; $5b6c: $00
    dec bc                                        ; $5b6d: $0b
    nop                                           ; $5b6e: $00
    ld bc, $0000                                  ; $5b6f: $01 $00 $00
    nop                                           ; $5b72: $00
    ld b, b                                       ; $5b73: $40
    ld bc, $2105                                  ; $5b74: $01 $05 $21
    ld a, e                                       ; $5b77: $7b
    nop                                           ; $5b78: $00
    dec c                                         ; $5b79: $0d
    nop                                           ; $5b7a: $00
    ld bc, $0000                                  ; $5b7b: $01 $00 $00
    nop                                           ; $5b7e: $00
    ld b, b                                       ; $5b7f: $40
    ld bc, $2106                                  ; $5b80: $01 $06 $21
    ld a, e                                       ; $5b83: $7b
    nop                                           ; $5b84: $00
    dec bc                                        ; $5b85: $0b
    nop                                           ; $5b86: $00
    ld a, [bc]                                    ; $5b87: $0a
    nop                                           ; $5b88: $00
    nop                                           ; $5b89: $00
    nop                                           ; $5b8a: $00
    ld b, b                                       ; $5b8b: $40
    ld bc, $0007                                  ; $5b8c: $01 $07 $00
    nop                                           ; $5b8f: $00
    nop                                           ; $5b90: $00
    nop                                           ; $5b91: $00
    nop                                           ; $5b92: $00
    nop                                           ; $5b93: $00
    nop                                           ; $5b94: $00
    nop                                           ; $5b95: $00
    rst $38                                       ; $5b96: $ff
    ld bc, $00c0                                  ; $5b97: $01 $c0 $00
    dec bc                                        ; $5b9a: $0b
    nop                                           ; $5b9b: $00
    ld c, $ff                                     ; $5b9c: $0e $ff
    ld bc, $00ff                                  ; $5b9e: $01 $ff $00
    nop                                           ; $5ba1: $00
    nop                                           ; $5ba2: $00
    nop                                           ; $5ba3: $00
    ld [hl-], a                                   ; $5ba4: $32
    ld bc, $ffff                                  ; $5ba5: $01 $ff $ff
    ret                                           ; $5ba8: $c9


    rst $38                                       ; $5ba9: $ff
    call Call_035_5bb3                            ; $5baa: $cd $b3 $5b
    ld a, $01                                     ; $5bad: $3e $01
    ld [$c441], a                                 ; $5baf: $ea $41 $c4
    ret                                           ; $5bb2: $c9


Call_035_5bb3:
    call Call_035_5dcc                            ; $5bb3: $cd $cc $5d
    ld c, $08                                     ; $5bb6: $0e $08
    call Call_000_25af                            ; $5bb8: $cd $af $25
    call Call_000_2625                            ; $5bbb: $cd $25 $26
    ld a, $05                                     ; $5bbe: $3e $05
    ld bc, $0008                                  ; $5bc0: $01 $08 $00
    rst $18                                       ; $5bc3: $df
    ld d, $0a                                     ; $5bc4: $16 $0a
    ld a, $03                                     ; $5bc6: $3e $03
    ld bc, $0008                                  ; $5bc8: $01 $08 $00
    rst $18                                       ; $5bcb: $df
    ld d, $0a                                     ; $5bcc: $16 $0a
    ld a, $02                                     ; $5bce: $3e $02
    ld bc, $0008                                  ; $5bd0: $01 $08 $00
    rst $18                                       ; $5bd3: $df
    ld d, $0a                                     ; $5bd4: $16 $0a
    ld a, $04                                     ; $5bd6: $3e $04
    ld bc, $0008                                  ; $5bd8: $01 $08 $00
    rst $18                                       ; $5bdb: $df
    ld d, $0a                                     ; $5bdc: $16 $0a
    ld a, $00                                     ; $5bde: $3e $00
    ld bc, $0008                                  ; $5be0: $01 $08 $00
    rst $18                                       ; $5be3: $df
    ld d, $0a                                     ; $5be4: $16 $0a
    ld a, $05                                     ; $5be6: $3e $05
    ld b, a                                       ; $5be8: $47
    ld a, $07                                     ; $5be9: $3e $07
    rst $18                                       ; $5beb: $df
    ld [hl-], a                                   ; $5bec: $32
    ld a, [bc]                                    ; $5bed: $0a
    ld a, $05                                     ; $5bee: $3e $05
    rst $18                                       ; $5bf0: $df
    inc [hl]                                      ; $5bf1: $34
    ld a, [bc]                                    ; $5bf2: $0a
    ld a, $00                                     ; $5bf3: $3e $00
    ld b, a                                       ; $5bf5: $47
    ld a, $07                                     ; $5bf6: $3e $07
    rst $18                                       ; $5bf8: $df
    ld [hl-], a                                   ; $5bf9: $32
    ld a, [bc]                                    ; $5bfa: $0a
    ld a, $00                                     ; $5bfb: $3e $00
    rst $18                                       ; $5bfd: $df
    inc [hl]                                      ; $5bfe: $34
    ld a, [bc]                                    ; $5bff: $0a
    push af                                       ; $5c00: $f5
    ld a, $0a                                     ; $5c01: $3e $0a
    rst $18                                       ; $5c03: $df
    inc b                                         ; $5c04: $04
    ld a, [bc]                                    ; $5c05: $0a
    pop af                                        ; $5c06: $f1
    ld a, $05                                     ; $5c07: $3e $05
    ld b, $00                                     ; $5c09: $06 $00
    rst $18                                       ; $5c0b: $df
    inc l                                         ; $5c0c: $2c
    ld a, [bc]                                    ; $5c0d: $0a
    ld a, $02                                     ; $5c0e: $3e $02
    ld bc, $0900                                  ; $5c10: $01 $00 $09
    ld de, $0500                                  ; $5c13: $11 $00 $05
    rst $18                                       ; $5c16: $df
    ld [hl+], a                                   ; $5c17: $22
    ld a, [bc]                                    ; $5c18: $0a
    push af                                       ; $5c19: $f5
    ld a, $14                                     ; $5c1a: $3e $14
    rst $18                                       ; $5c1c: $df
    inc b                                         ; $5c1d: $04
    ld a, [bc]                                    ; $5c1e: $0a
    pop af                                        ; $5c1f: $f1
    ld a, $03                                     ; $5c20: $3e $03
    ld bc, $0b00                                  ; $5c22: $01 $00 $0b
    ld de, $0500                                  ; $5c25: $11 $00 $05
    rst $18                                       ; $5c28: $df
    ld [hl+], a                                   ; $5c29: $22
    ld a, [bc]                                    ; $5c2a: $0a
    push af                                       ; $5c2b: $f5
    ld a, $14                                     ; $5c2c: $3e $14
    rst $18                                       ; $5c2e: $df
    inc b                                         ; $5c2f: $04
    ld a, [bc]                                    ; $5c30: $0a
    pop af                                        ; $5c31: $f1
    ld a, $04                                     ; $5c32: $3e $04
    ld bc, $0d00                                  ; $5c34: $01 $00 $0d
    ld de, $0500                                  ; $5c37: $11 $00 $05
    rst $18                                       ; $5c3a: $df
    ld [hl+], a                                   ; $5c3b: $22
    ld a, [bc]                                    ; $5c3c: $0a
    push af                                       ; $5c3d: $f5
    ld a, $14                                     ; $5c3e: $3e $14
    rst $18                                       ; $5c40: $df
    inc b                                         ; $5c41: $04
    ld a, [bc]                                    ; $5c42: $0a
    pop af                                        ; $5c43: $f1
    ld a, $05                                     ; $5c44: $3e $05
    ld b, $c0                                     ; $5c46: $06 $c0
    rst $18                                       ; $5c48: $df
    inc l                                         ; $5c49: $2c
    ld a, [bc]                                    ; $5c4a: $0a
    ld a, $04                                     ; $5c4b: $3e $04
    rst $18                                       ; $5c4d: $df
    ld e, $0a                                     ; $5c4e: $1e $0a
    ld a, $04                                     ; $5c50: $3e $04
    ld b, a                                       ; $5c52: $47
    ld a, $07                                     ; $5c53: $3e $07
    rst $18                                       ; $5c55: $df
    ld [hl-], a                                   ; $5c56: $32
    ld a, [bc]                                    ; $5c57: $0a
    ld a, $04                                     ; $5c58: $3e $04
    rst $18                                       ; $5c5a: $df
    inc [hl]                                      ; $5c5b: $34
    ld a, [bc]                                    ; $5c5c: $0a
    ld a, $05                                     ; $5c5d: $3e $05
    ld b, a                                       ; $5c5f: $47
    ld a, $07                                     ; $5c60: $3e $07
    rst $18                                       ; $5c62: $df
    ld [hl-], a                                   ; $5c63: $32
    ld a, [bc]                                    ; $5c64: $0a
    ld a, $05                                     ; $5c65: $3e $05
    rst $18                                       ; $5c67: $df
    inc [hl]                                      ; $5c68: $34
    ld a, [bc]                                    ; $5c69: $0a
    ld a, $05                                     ; $5c6a: $3e $05
    ld b, a                                       ; $5c6c: $47
    ld a, $02                                     ; $5c6d: $3e $02
    rst $18                                       ; $5c6f: $df
    ld l, $0a                                     ; $5c70: $2e $0a
    ld a, $02                                     ; $5c72: $3e $02
    ld b, a                                       ; $5c74: $47
    ld a, $07                                     ; $5c75: $3e $07
    rst $18                                       ; $5c77: $df
    ld [hl-], a                                   ; $5c78: $32
    ld a, [bc]                                    ; $5c79: $0a
    ld a, $02                                     ; $5c7a: $3e $02
    rst $18                                       ; $5c7c: $df
    inc [hl]                                      ; $5c7d: $34
    ld a, [bc]                                    ; $5c7e: $0a
    ld a, $05                                     ; $5c7f: $3e $05
    ld b, $00                                     ; $5c81: $06 $00
    rst $18                                       ; $5c83: $df
    inc l                                         ; $5c84: $2c
    ld a, [bc]                                    ; $5c85: $0a
    push af                                       ; $5c86: $f5
    ld a, $0a                                     ; $5c87: $3e $0a
    rst $18                                       ; $5c89: $df
    inc b                                         ; $5c8a: $04
    ld a, [bc]                                    ; $5c8b: $0a
    pop af                                        ; $5c8c: $f1
    ld a, $00                                     ; $5c8d: $3e $00
    ld b, a                                       ; $5c8f: $47
    ld a, $05                                     ; $5c90: $3e $05
    rst $18                                       ; $5c92: $df
    ld l, $0a                                     ; $5c93: $2e $0a
    ld a, $00                                     ; $5c95: $3e $00
    ld b, a                                       ; $5c97: $47
    ld a, $03                                     ; $5c98: $3e $03
    rst $18                                       ; $5c9a: $df
    ld l, $0a                                     ; $5c9b: $2e $0a
    ld a, $00                                     ; $5c9d: $3e $00
    ld b, a                                       ; $5c9f: $47
    ld a, $02                                     ; $5ca0: $3e $02
    rst $18                                       ; $5ca2: $df
    ld l, $0a                                     ; $5ca3: $2e $0a
    ld a, $00                                     ; $5ca5: $3e $00
    ld b, a                                       ; $5ca7: $47
    ld a, $04                                     ; $5ca8: $3e $04
    rst $18                                       ; $5caa: $df
    ld l, $0a                                     ; $5cab: $2e $0a
    ld a, $03                                     ; $5cad: $3e $03
    ld b, a                                       ; $5caf: $47
    ld a, $05                                     ; $5cb0: $3e $05
    rst $18                                       ; $5cb2: $df
    ld [hl-], a                                   ; $5cb3: $32
    ld a, [bc]                                    ; $5cb4: $0a
    ld a, $03                                     ; $5cb5: $3e $03
    rst $18                                       ; $5cb7: $df
    inc [hl]                                      ; $5cb8: $34
    ld a, [bc]                                    ; $5cb9: $0a
    ld a, $02                                     ; $5cba: $3e $02
    ld b, a                                       ; $5cbc: $47
    ld a, $05                                     ; $5cbd: $3e $05
    rst $18                                       ; $5cbf: $df
    ld [hl-], a                                   ; $5cc0: $32
    ld a, [bc]                                    ; $5cc1: $0a
    ld a, $04                                     ; $5cc2: $3e $04
    ld b, a                                       ; $5cc4: $47
    ld a, $05                                     ; $5cc5: $3e $05
    rst $18                                       ; $5cc7: $df
    ld [hl-], a                                   ; $5cc8: $32
    ld a, [bc]                                    ; $5cc9: $0a
    ld a, $04                                     ; $5cca: $3e $04
    rst $18                                       ; $5ccc: $df
    inc [hl]                                      ; $5ccd: $34
    ld a, [bc]                                    ; $5cce: $0a
    push af                                       ; $5ccf: $f5
    ld a, $1e                                     ; $5cd0: $3e $1e
    rst $18                                       ; $5cd2: $df
    inc b                                         ; $5cd3: $04
    ld a, [bc]                                    ; $5cd4: $0a
    pop af                                        ; $5cd5: $f1
    ld a, $05                                     ; $5cd6: $3e $05
    ld bc, $0700                                  ; $5cd8: $01 $00 $07
    ld de, $0700                                  ; $5cdb: $11 $00 $07
    rst $18                                       ; $5cde: $df
    ld [hl+], a                                   ; $5cdf: $22
    ld a, [bc]                                    ; $5ce0: $0a
    push af                                       ; $5ce1: $f5
    ld a, $28                                     ; $5ce2: $3e $28
    rst $18                                       ; $5ce4: $df
    inc b                                         ; $5ce5: $04
    ld a, [bc]                                    ; $5ce6: $0a
    pop af                                        ; $5ce7: $f1
    ld a, $05                                     ; $5ce8: $3e $05
    ld b, a                                       ; $5cea: $47
    ld a, $03                                     ; $5ceb: $3e $03
    rst $18                                       ; $5ced: $df
    ld l, $0a                                     ; $5cee: $2e $0a
    ld a, $05                                     ; $5cf0: $3e $05
    ld b, a                                       ; $5cf2: $47
    ld a, $02                                     ; $5cf3: $3e $02
    rst $18                                       ; $5cf5: $df
    ld l, $0a                                     ; $5cf6: $2e $0a
    ld a, $05                                     ; $5cf8: $3e $05
    ld b, a                                       ; $5cfa: $47
    ld a, $04                                     ; $5cfb: $3e $04
    rst $18                                       ; $5cfd: $df
    ld l, $0a                                     ; $5cfe: $2e $0a
    ld a, $03                                     ; $5d00: $3e $03
    ld bc, $0b00                                  ; $5d02: $01 $00 $0b
    ld de, $0700                                  ; $5d05: $11 $00 $07
    rst $18                                       ; $5d08: $df
    ld [hl+], a                                   ; $5d09: $22
    ld a, [bc]                                    ; $5d0a: $0a
    ld a, $03                                     ; $5d0b: $3e $03
    rst $18                                       ; $5d0d: $df
    ld e, $0a                                     ; $5d0e: $1e $0a
    ld a, $05                                     ; $5d10: $3e $05
    ld b, a                                       ; $5d12: $47
    ld a, $03                                     ; $5d13: $3e $03
    rst $18                                       ; $5d15: $df
    ld l, $0a                                     ; $5d16: $2e $0a
    ld a, $05                                     ; $5d18: $3e $05
    ld b, a                                       ; $5d1a: $47
    ld a, $03                                     ; $5d1b: $3e $03
    rst $18                                       ; $5d1d: $df
    ld l, $0a                                     ; $5d1e: $2e $0a
    ld a, $03                                     ; $5d20: $3e $03
    ld b, a                                       ; $5d22: $47
    ld a, $05                                     ; $5d23: $3e $05
    rst $18                                       ; $5d25: $df
    ld l, $0a                                     ; $5d26: $2e $0a
    ld a, $05                                     ; $5d28: $3e $05
    ld b, a                                       ; $5d2a: $47
    ld a, $02                                     ; $5d2b: $3e $02
    rst $18                                       ; $5d2d: $df
    ld l, $0a                                     ; $5d2e: $2e $0a
    ld a, $05                                     ; $5d30: $3e $05
    ld b, $c0                                     ; $5d32: $06 $c0
    rst $18                                       ; $5d34: $df
    inc l                                         ; $5d35: $2c
    ld a, [bc]                                    ; $5d36: $0a
    ld a, $04                                     ; $5d37: $3e $04
    ld b, $80                                     ; $5d39: $06 $80
    rst $18                                       ; $5d3b: $df
    inc l                                         ; $5d3c: $2c
    ld a, [bc]                                    ; $5d3d: $0a
    ld a, $04                                     ; $5d3e: $3e $04
    ld b, a                                       ; $5d40: $47
    ld a, $07                                     ; $5d41: $3e $07
    rst $18                                       ; $5d43: $df
    ld [hl-], a                                   ; $5d44: $32
    ld a, [bc]                                    ; $5d45: $0a
    ld a, $04                                     ; $5d46: $3e $04
    rst $18                                       ; $5d48: $df
    inc [hl]                                      ; $5d49: $34
    ld a, [bc]                                    ; $5d4a: $0a
    ld a, $05                                     ; $5d4b: $3e $05
    ld b, a                                       ; $5d4d: $47
    ld a, $07                                     ; $5d4e: $3e $07
    rst $18                                       ; $5d50: $df
    ld [hl-], a                                   ; $5d51: $32
    ld a, [bc]                                    ; $5d52: $0a
    ld a, $05                                     ; $5d53: $3e $05
    rst $18                                       ; $5d55: $df
    inc [hl]                                      ; $5d56: $34
    ld a, [bc]                                    ; $5d57: $0a
    ld a, $05                                     ; $5d58: $3e $05
    ld b, $00                                     ; $5d5a: $06 $00
    rst $18                                       ; $5d5c: $df
    inc l                                         ; $5d5d: $2c
    ld a, [bc]                                    ; $5d5e: $0a
    push af                                       ; $5d5f: $f5
    ld a, $14                                     ; $5d60: $3e $14
    rst $18                                       ; $5d62: $df
    inc b                                         ; $5d63: $04
    ld a, [bc]                                    ; $5d64: $0a
    pop af                                        ; $5d65: $f1
    ld a, $05                                     ; $5d66: $3e $05
    ld b, $40                                     ; $5d68: $06 $40
    rst $18                                       ; $5d6a: $df
    inc l                                         ; $5d6b: $2c
    ld a, [bc]                                    ; $5d6c: $0a
    push af                                       ; $5d6d: $f5
    ld a, $14                                     ; $5d6e: $3e $14
    rst $18                                       ; $5d70: $df
    inc b                                         ; $5d71: $04
    ld a, [bc]                                    ; $5d72: $0a
    pop af                                        ; $5d73: $f1
    ld a, $05                                     ; $5d74: $3e $05
    ld bc, $0700                                  ; $5d76: $01 $00 $07
    ld de, $0500                                  ; $5d79: $11 $00 $05
    rst $18                                       ; $5d7c: $df
    ld [hl+], a                                   ; $5d7d: $22
    ld a, [bc]                                    ; $5d7e: $0a
    ld a, $05                                     ; $5d7f: $3e $05
    rst $18                                       ; $5d81: $df
    ld e, $0a                                     ; $5d82: $1e $0a
    push af                                       ; $5d84: $f5
    ld a, $1e                                     ; $5d85: $3e $1e
    rst $18                                       ; $5d87: $df
    inc b                                         ; $5d88: $04
    ld a, [bc]                                    ; $5d89: $0a
    pop af                                        ; $5d8a: $f1
    ret                                           ; $5d8b: $c9


    ldh [$29], a                                  ; $5d8c: $e0 $29
    ld hl, sp+$46                                 ; $5d8e: $f8 $46
    rst $08                                       ; $5d90: $cf
    add hl, hl                                    ; $5d91: $29
    nop                                           ; $5d92: $00
    nop                                           ; $5d93: $00
    ld [$0825], sp                                ; $5d94: $08 $25 $08
    dec h                                         ; $5d97: $25
    ld [$0825], sp                                ; $5d98: $08 $25 $08
    dec h                                         ; $5d9b: $25
    db $ec                                        ; $5d9c: $ec
    dec hl                                        ; $5d9d: $2b
    ld [hl+], a                                   ; $5d9e: $22
    dec sp                                        ; $5d9f: $3b
    ld b, b                                       ; $5da0: $40
    ld [hl+], a                                   ; $5da1: $22
    nop                                           ; $5da2: $00
    add hl, bc                                    ; $5da3: $09
    and l                                         ; $5da4: $a5
    ld b, e                                       ; $5da5: $43
    xor $37                                       ; $5da6: $ee $37
    ld [hl+], a                                   ; $5da8: $22
    dec sp                                        ; $5da9: $3b
    ld b, b                                       ; $5daa: $40
    ld [hl+], a                                   ; $5dab: $22
    ccf                                           ; $5dac: $3f
    ld a, a                                       ; $5dad: $7f
    rla                                           ; $5dae: $17
    ld e, [hl]                                    ; $5daf: $5e
    ld de, $2249                                  ; $5db0: $11 $49 $22
    dec sp                                        ; $5db3: $3b
    ld [$0825], sp                                ; $5db4: $08 $25 $08
    dec h                                         ; $5db7: $25
    ld [$0825], sp                                ; $5db8: $08 $25 $08
    dec h                                         ; $5dbb: $25
    ld [$0825], sp                                ; $5dbc: $08 $25 $08
    dec h                                         ; $5dbf: $25
    ld [$0825], sp                                ; $5dc0: $08 $25 $08
    dec h                                         ; $5dc3: $25
    ld [$0825], sp                                ; $5dc4: $08 $25 $08
    dec h                                         ; $5dc7: $25
    ld [$0825], sp                                ; $5dc8: $08 $25 $08
    dec h                                         ; $5dcb: $25

Call_035_5dcc:
    rst $18                                       ; $5dcc: $df
    inc a                                         ; $5dcd: $3c
    ld a, [bc]                                    ; $5dce: $0a
    ld b, $1a                                     ; $5dcf: $06 $1a
    ld c, $18                                     ; $5dd1: $0e $18
    ld d, $00                                     ; $5dd3: $16 $00
    ld e, $00                                     ; $5dd5: $1e $00
    ld h, $14                                     ; $5dd7: $26 $14
    ld l, $14                                     ; $5dd9: $2e $14
    rst $18                                       ; $5ddb: $df
    ld a, [bc]                                    ; $5ddc: $0a
    dec bc                                        ; $5ddd: $0b
    ld hl, $5d9c                                  ; $5dde: $21 $9c $5d
    ld de, $0206                                  ; $5de1: $11 $06 $02
    call Call_000_0595                            ; $5de4: $cd $95 $05
    ret                                           ; $5de7: $c9


    rst $38                                       ; $5de8: $ff
    ld e, l                                       ; $5de9: $5d
    ld b, $5e                                     ; $5dea: $06 $5e
    or $5d                                        ; $5dec: $f6 $5d
    rrca                                          ; $5dee: $0f
    ld e, [hl]                                    ; $5def: $5e
    db $10                                        ; $5df0: $10
    ld e, [hl]                                    ; $5df1: $5e
    ld de, $125e                                  ; $5df2: $11 $5e $12
    ld e, [hl]                                    ; $5df5: $5e
    nop                                           ; $5df6: $00
    nop                                           ; $5df7: $00
    nop                                           ; $5df8: $00
    nop                                           ; $5df9: $00
    nop                                           ; $5dfa: $00
    nop                                           ; $5dfb: $00
    nop                                           ; $5dfc: $00
    nop                                           ; $5dfd: $00
    rst $38                                       ; $5dfe: $ff
    ld bc, $00c0                                  ; $5dff: $01 $c0 $00
    rrca                                          ; $5e02: $0f
    nop                                           ; $5e03: $00
    inc hl                                        ; $5e04: $23
    rst $38                                       ; $5e05: $ff
    ld bc, $00ff                                  ; $5e06: $01 $ff $00
    nop                                           ; $5e09: $00
    nop                                           ; $5e0a: $00
    nop                                           ; $5e0b: $00
    ld [hl-], a                                   ; $5e0c: $32
    ld bc, $ffff                                  ; $5e0d: $01 $ff $ff
    ret                                           ; $5e10: $c9


    rst $38                                       ; $5e11: $ff
    push af                                       ; $5e12: $f5
    ld a, $0a                                     ; $5e13: $3e $0a
    rst $18                                       ; $5e15: $df
    inc b                                         ; $5e16: $04
    ld a, [bc]                                    ; $5e17: $0a
    pop af                                        ; $5e18: $f1
    ld c, $08                                     ; $5e19: $0e $08
    call Call_000_25af                            ; $5e1b: $cd $af $25
    ld a, $00                                     ; $5e1e: $3e $00
    ld bc, $0018                                  ; $5e20: $01 $18 $00
    rst $18                                       ; $5e23: $df
    ld d, $0a                                     ; $5e24: $16 $0a
    ld bc, $0018                                  ; $5e26: $01 $18 $00
    rst $18                                       ; $5e29: $df
    ld [hl], $0a                                  ; $5e2a: $36 $0a
    xor a                                         ; $5e2c: $af
    ld bc, $0f00                                  ; $5e2d: $01 $00 $0f
    ld de, $1b00                                  ; $5e30: $11 $00 $1b
    rst $18                                       ; $5e33: $df
    jr c, jr_035_5e40                             ; $5e34: $38 $0a

    ld a, $00                                     ; $5e36: $3e $00
    ld bc, $0f00                                  ; $5e38: $01 $00 $0f
    ld de, $1b00                                  ; $5e3b: $11 $00 $1b
    rst $18                                       ; $5e3e: $df
    ld [hl+], a                                   ; $5e3f: $22

jr_035_5e40:
    ld a, [bc]                                    ; $5e40: $0a
    ld a, $00                                     ; $5e41: $3e $00
    rst $18                                       ; $5e43: $df
    ld e, $0a                                     ; $5e44: $1e $0a
    xor a                                         ; $5e46: $af
    ld bc, $1d00                                  ; $5e47: $01 $00 $1d
    ld de, $1b00                                  ; $5e4a: $11 $00 $1b
    rst $18                                       ; $5e4d: $df
    jr c, jr_035_5e5a                             ; $5e4e: $38 $0a

    ld a, $00                                     ; $5e50: $3e $00
    ld bc, $1d00                                  ; $5e52: $01 $00 $1d
    ld de, $1b00                                  ; $5e55: $11 $00 $1b
    rst $18                                       ; $5e58: $df
    ld [hl+], a                                   ; $5e59: $22

jr_035_5e5a:
    ld a, [bc]                                    ; $5e5a: $0a
    ld a, $00                                     ; $5e5b: $3e $00
    rst $18                                       ; $5e5d: $df
    ld e, $0a                                     ; $5e5e: $1e $0a
    xor a                                         ; $5e60: $af
    ld bc, $1d00                                  ; $5e61: $01 $00 $1d
    ld de, $1900                                  ; $5e64: $11 $00 $19
    rst $18                                       ; $5e67: $df
    jr c, jr_035_5e74                             ; $5e68: $38 $0a

    ld a, $00                                     ; $5e6a: $3e $00
    ld bc, $1d00                                  ; $5e6c: $01 $00 $1d
    ld de, $1900                                  ; $5e6f: $11 $00 $19
    rst $18                                       ; $5e72: $df
    ld [hl+], a                                   ; $5e73: $22

jr_035_5e74:
    ld a, [bc]                                    ; $5e74: $0a
    ld a, $00                                     ; $5e75: $3e $00
    rst $18                                       ; $5e77: $df
    ld e, $0a                                     ; $5e78: $1e $0a
    ld bc, $0040                                  ; $5e7a: $01 $40 $00
    rst $18                                       ; $5e7d: $df
    ld [hl], $0a                                  ; $5e7e: $36 $0a
    call Call_035_6890                            ; $5e80: $cd $90 $68
    call Call_035_65d4                            ; $5e83: $cd $d4 $65
    ld bc, $0020                                  ; $5e86: $01 $20 $00
    rst $18                                       ; $5e89: $df
    ld [hl], $0a                                  ; $5e8a: $36 $0a
    xor a                                         ; $5e8c: $af
    ld bc, $1d00                                  ; $5e8d: $01 $00 $1d
    ld de, $1900                                  ; $5e90: $11 $00 $19
    rst $18                                       ; $5e93: $df
    jr c, @+$0c                                   ; $5e94: $38 $0a

    ld a, $00                                     ; $5e96: $3e $00
    ld b, a                                       ; $5e98: $47
    ld a, $07                                     ; $5e99: $3e $07
    rst $18                                       ; $5e9b: $df
    ld [hl-], a                                   ; $5e9c: $32
    ld a, [bc]                                    ; $5e9d: $0a
    call Call_035_6731                            ; $5e9e: $cd $31 $67
    call Call_035_6639                            ; $5ea1: $cd $39 $66
    ld a, $01                                     ; $5ea4: $3e $01
    ld [$c441], a                                 ; $5ea6: $ea $41 $c4
    ret                                           ; $5ea9: $c9


    nop                                           ; $5eaa: $00
    nop                                           ; $5eab: $00
    nop                                           ; $5eac: $00
    nop                                           ; $5ead: $00
    nop                                           ; $5eae: $00
    nop                                           ; $5eaf: $00
    nop                                           ; $5eb0: $00
    nop                                           ; $5eb1: $00
    nop                                           ; $5eb2: $00
    jr jr_035_5ebd                                ; $5eb3: $18 $08

    inc [hl]                                      ; $5eb5: $34
    jr z, jr_035_5f0c                             ; $5eb6: $28 $54

    ld l, h                                       ; $5eb8: $6c
    sub d                                         ; $5eb9: $92
    ld l, [hl]                                    ; $5eba: $6e
    sub c                                         ; $5ebb: $91
    ccf                                           ; $5ebc: $3f

jr_035_5ebd:
    ld e, b                                       ; $5ebd: $58
    jr c, jr_035_5f1f                             ; $5ebe: $38 $5f

    rra                                           ; $5ec0: $1f
    jr nz, jr_035_5ec9                            ; $5ec1: $20 $06

    add hl, de                                    ; $5ec3: $19
    nop                                           ; $5ec4: $00
    ld b, $00                                     ; $5ec5: $06 $00
    nop                                           ; $5ec7: $00
    nop                                           ; $5ec8: $00

jr_035_5ec9:
    nop                                           ; $5ec9: $00
    nop                                           ; $5eca: $00
    nop                                           ; $5ecb: $00
    nop                                           ; $5ecc: $00
    nop                                           ; $5ecd: $00
    nop                                           ; $5ece: $00

jr_035_5ecf:
    nop                                           ; $5ecf: $00
    nop                                           ; $5ed0: $00
    nop                                           ; $5ed1: $00
    nop                                           ; $5ed2: $00
    nop                                           ; $5ed3: $00
    nop                                           ; $5ed4: $00
    nop                                           ; $5ed5: $00
    nop                                           ; $5ed6: $00
    nop                                           ; $5ed7: $00
    nop                                           ; $5ed8: $00
    nop                                           ; $5ed9: $00
    nop                                           ; $5eda: $00
    add b                                         ; $5edb: $80
    add b                                         ; $5edc: $80
    ld b, b                                       ; $5edd: $40
    nop                                           ; $5ede: $00
    ret nz                                        ; $5edf: $c0

    nop                                           ; $5ee0: $00
    add b                                         ; $5ee1: $80
    nop                                           ; $5ee2: $00
    nop                                           ; $5ee3: $00
    nop                                           ; $5ee4: $00
    nop                                           ; $5ee5: $00
    nop                                           ; $5ee6: $00
    nop                                           ; $5ee7: $00
    nop                                           ; $5ee8: $00
    nop                                           ; $5ee9: $00
    nop                                           ; $5eea: $00
    nop                                           ; $5eeb: $00
    nop                                           ; $5eec: $00
    nop                                           ; $5eed: $00
    nop                                           ; $5eee: $00
    nop                                           ; $5eef: $00
    nop                                           ; $5ef0: $00
    nop                                           ; $5ef1: $00
    nop                                           ; $5ef2: $00
    nop                                           ; $5ef3: $00
    nop                                           ; $5ef4: $00
    nop                                           ; $5ef5: $00
    nop                                           ; $5ef6: $00
    inc c                                         ; $5ef7: $0c
    inc c                                         ; $5ef8: $0c
    inc de                                        ; $5ef9: $13
    rlca                                          ; $5efa: $07
    jr jr_035_5f00                                ; $5efb: $18 $03

    inc e                                         ; $5efd: $1c
    dec c                                         ; $5efe: $0d
    inc de                                        ; $5eff: $13

jr_035_5f00:
    rrca                                          ; $5f00: $0f
    ld de, $0c03                                  ; $5f01: $11 $03 $0c
    nop                                           ; $5f04: $00
    inc bc                                        ; $5f05: $03
    nop                                           ; $5f06: $00
    nop                                           ; $5f07: $00
    nop                                           ; $5f08: $00
    nop                                           ; $5f09: $00
    nop                                           ; $5f0a: $00
    nop                                           ; $5f0b: $00

jr_035_5f0c:
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
    jr nc, jr_035_5f49                            ; $5f17: $30 $30

    ret z                                         ; $5f19: $c8

    ldh [rNR23], a                                ; $5f1a: $e0 $18
    ret nz                                        ; $5f1c: $c0

    jr c, jr_035_5ecf                             ; $5f1d: $38 $b0

jr_035_5f1f:
    ret z                                         ; $5f1f: $c8

    ldh a, [$88]                                  ; $5f20: $f0 $88
    ret nz                                        ; $5f22: $c0

    jr nc, jr_035_5f25                            ; $5f23: $30 $00

jr_035_5f25:
    ret nz                                        ; $5f25: $c0

    nop                                           ; $5f26: $00
    nop                                           ; $5f27: $00
    nop                                           ; $5f28: $00
    nop                                           ; $5f29: $00

Call_035_5f2a:
    nop                                           ; $5f2a: $00
    nop                                           ; $5f2b: $00
    nop                                           ; $5f2c: $00
    nop                                           ; $5f2d: $00
    nop                                           ; $5f2e: $00
    nop                                           ; $5f2f: $00
    nop                                           ; $5f30: $00
    nop                                           ; $5f31: $00
    nop                                           ; $5f32: $00
    nop                                           ; $5f33: $00
    nop                                           ; $5f34: $00
    nop                                           ; $5f35: $00
    nop                                           ; $5f36: $00
    nop                                           ; $5f37: $00
    nop                                           ; $5f38: $00
    nop                                           ; $5f39: $00
    nop                                           ; $5f3a: $00
    ld bc, $0201                                  ; $5f3b: $01 $01 $02
    nop                                           ; $5f3e: $00
    inc bc                                        ; $5f3f: $03
    nop                                           ; $5f40: $00
    ld bc, $0000                                  ; $5f41: $01 $00 $00
    nop                                           ; $5f44: $00
    nop                                           ; $5f45: $00
    nop                                           ; $5f46: $00
    nop                                           ; $5f47: $00
    nop                                           ; $5f48: $00

jr_035_5f49:
    nop                                           ; $5f49: $00
    nop                                           ; $5f4a: $00
    nop                                           ; $5f4b: $00
    nop                                           ; $5f4c: $00
    nop                                           ; $5f4d: $00
    nop                                           ; $5f4e: $00
    nop                                           ; $5f4f: $00
    nop                                           ; $5f50: $00
    nop                                           ; $5f51: $00
    nop                                           ; $5f52: $00
    jr jr_035_5f65                                ; $5f53: $18 $10

    inc l                                         ; $5f55: $2c
    inc d                                         ; $5f56: $14
    ld a, [hl+]                                   ; $5f57: $2a
    ld [hl], $49                                  ; $5f58: $36 $49
    halt                                          ; $5f5a: $76
    adc c                                         ; $5f5b: $89
    db $fc                                        ; $5f5c: $fc
    ld a, [de]                                    ; $5f5d: $1a
    inc e                                         ; $5f5e: $1c
    ld a, [$04f8]                                 ; $5f5f: $fa $f8 $04
    ld h, b                                       ; $5f62: $60
    sbc b                                         ; $5f63: $98
    nop                                           ; $5f64: $00

jr_035_5f65:
    ld h, b                                       ; $5f65: $60
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

jr_035_5f71:
    nop                                           ; $5f71: $00
    nop                                           ; $5f72: $00
    nop                                           ; $5f73: $00
    nop                                           ; $5f74: $00
    nop                                           ; $5f75: $00
    nop                                           ; $5f76: $00
    nop                                           ; $5f77: $00
    nop                                           ; $5f78: $00
    nop                                           ; $5f79: $00
    nop                                           ; $5f7a: $00
    nop                                           ; $5f7b: $00
    nop                                           ; $5f7c: $00
    nop                                           ; $5f7d: $00
    nop                                           ; $5f7e: $00
    nop                                           ; $5f7f: $00
    nop                                           ; $5f80: $00
    nop                                           ; $5f81: $00
    nop                                           ; $5f82: $00
    nop                                           ; $5f83: $00
    nop                                           ; $5f84: $00
    nop                                           ; $5f85: $00
    nop                                           ; $5f86: $00
    nop                                           ; $5f87: $00
    nop                                           ; $5f88: $00
    nop                                           ; $5f89: $00
    nop                                           ; $5f8a: $00
    nop                                           ; $5f8b: $00
    nop                                           ; $5f8c: $00
    nop                                           ; $5f8d: $00
    nop                                           ; $5f8e: $00
    nop                                           ; $5f8f: $00
    nop                                           ; $5f90: $00
    nop                                           ; $5f91: $00
    nop                                           ; $5f92: $00
    nop                                           ; $5f93: $00
    nop                                           ; $5f94: $00
    nop                                           ; $5f95: $00
    nop                                           ; $5f96: $00
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
    nop                                           ; $5fb3: $00
    nop                                           ; $5fb4: $00
    nop                                           ; $5fb5: $00
    nop                                           ; $5fb6: $00
    nop                                           ; $5fb7: $00
    nop                                           ; $5fb8: $00
    nop                                           ; $5fb9: $00
    nop                                           ; $5fba: $00
    nop                                           ; $5fbb: $00
    nop                                           ; $5fbc: $00
    ld bc, $0000                                  ; $5fbd: $01 $00 $00
    ld [bc], a                                    ; $5fc0: $02
    ld [bc], a                                    ; $5fc1: $02
    nop                                           ; $5fc2: $00
    nop                                           ; $5fc3: $00
    nop                                           ; $5fc4: $00
    nop                                           ; $5fc5: $00
    nop                                           ; $5fc6: $00
    nop                                           ; $5fc7: $00
    nop                                           ; $5fc8: $00
    nop                                           ; $5fc9: $00
    nop                                           ; $5fca: $00
    nop                                           ; $5fcb: $00
    nop                                           ; $5fcc: $00
    nop                                           ; $5fcd: $00
    nop                                           ; $5fce: $00
    nop                                           ; $5fcf: $00
    nop                                           ; $5fd0: $00
    nop                                           ; $5fd1: $00
    nop                                           ; $5fd2: $00
    nop                                           ; $5fd3: $00
    nop                                           ; $5fd4: $00
    nop                                           ; $5fd5: $00
    nop                                           ; $5fd6: $00
    nop                                           ; $5fd7: $00
    add b                                         ; $5fd8: $80
    nop                                           ; $5fd9: $00
    jr nz, jr_035_5fdc                            ; $5fda: $20 $00

jr_035_5fdc:
    stop                                          ; $5fdc: $10 $00
    jr z, jr_035_6020                             ; $5fde: $28 $40

    inc e                                         ; $5fe0: $1c
    jr nz, jr_035_5f71                            ; $5fe1: $20 $8e

    call nc, $7957                                ; $5fe3: $d4 $57 $79
    and a                                         ; $5fe6: $a7
    cp d                                          ; $5fe7: $ba
    ld l, e                                       ; $5fe8: $6b
    ld a, h                                       ; $5fe9: $7c
    ld d, a                                       ; $5fea: $57
    ld e, l                                       ; $5feb: $5d
    ld a, [bc]                                    ; $5fec: $0a
    ld a, [bc]                                    ; $5fed: $0a
    ld d, l                                       ; $5fee: $55
    ld d, l                                       ; $5fef: $55
    nop                                           ; $5ff0: $00

jr_035_5ff1:
    nop                                           ; $5ff1: $00
    nop                                           ; $5ff2: $00
    nop                                           ; $5ff3: $00
    nop                                           ; $5ff4: $00
    nop                                           ; $5ff5: $00
    nop                                           ; $5ff6: $00
    nop                                           ; $5ff7: $00
    nop                                           ; $5ff8: $00
    nop                                           ; $5ff9: $00
    nop                                           ; $5ffa: $00
    nop                                           ; $5ffb: $00
    nop                                           ; $5ffc: $00
    nop                                           ; $5ffd: $00
    nop                                           ; $5ffe: $00
    nop                                           ; $5fff: $00
    nop                                           ; $6000: $00
    nop                                           ; $6001: $00
    nop                                           ; $6002: $00
    nop                                           ; $6003: $00
    nop                                           ; $6004: $00
    nop                                           ; $6005: $00
    nop                                           ; $6006: $00
    nop                                           ; $6007: $00
    nop                                           ; $6008: $00
    nop                                           ; $6009: $00
    nop                                           ; $600a: $00
    nop                                           ; $600b: $00
    nop                                           ; $600c: $00
    nop                                           ; $600d: $00
    nop                                           ; $600e: $00
    nop                                           ; $600f: $00
    nop                                           ; $6010: $00
    nop                                           ; $6011: $00
    nop                                           ; $6012: $00
    nop                                           ; $6013: $00
    nop                                           ; $6014: $00
    ld bc, $0000                                  ; $6015: $01 $00 $00
    ld [bc], a                                    ; $6018: $02
    ld [bc], a                                    ; $6019: $02
    nop                                           ; $601a: $00
    nop                                           ; $601b: $00
    nop                                           ; $601c: $00
    nop                                           ; $601d: $00

jr_035_601e:
    nop                                           ; $601e: $00
    nop                                           ; $601f: $00

jr_035_6020:
    nop                                           ; $6020: $00
    nop                                           ; $6021: $00
    nop                                           ; $6022: $00
    nop                                           ; $6023: $00
    nop                                           ; $6024: $00
    nop                                           ; $6025: $00
    nop                                           ; $6026: $00
    nop                                           ; $6027: $00
    nop                                           ; $6028: $00
    nop                                           ; $6029: $00
    nop                                           ; $602a: $00
    nop                                           ; $602b: $00
    nop                                           ; $602c: $00
    nop                                           ; $602d: $00
    nop                                           ; $602e: $00
    nop                                           ; $602f: $00
    and b                                         ; $6030: $a0
    nop                                           ; $6031: $00
    ld a, [bc]                                    ; $6032: $0a
    nop                                           ; $6033: $00
    inc b                                         ; $6034: $04
    ld b, b                                       ; $6035: $40
    ld bc, $8014                                  ; $6036: $01 $14 $80
    adc c                                         ; $6039: $89
    jr z, jr_035_6066                             ; $603a: $28 $2a

    ld [de], a                                    ; $603c: $12
    inc de                                        ; $603d: $13
    dec b                                         ; $603e: $05
    dec b                                         ; $603f: $05
    ld [bc], a                                    ; $6040: $02
    ld [bc], a                                    ; $6041: $02
    nop                                           ; $6042: $00
    nop                                           ; $6043: $00
    nop                                           ; $6044: $00
    nop                                           ; $6045: $00
    nop                                           ; $6046: $00
    nop                                           ; $6047: $00
    nop                                           ; $6048: $00
    nop                                           ; $6049: $00
    nop                                           ; $604a: $00
    nop                                           ; $604b: $00
    nop                                           ; $604c: $00
    nop                                           ; $604d: $00
    nop                                           ; $604e: $00
    nop                                           ; $604f: $00
    nop                                           ; $6050: $00
    nop                                           ; $6051: $00
    nop                                           ; $6052: $00
    nop                                           ; $6053: $00
    add b                                         ; $6054: $80
    nop                                           ; $6055: $00
    ld b, b                                       ; $6056: $40
    nop                                           ; $6057: $00
    ldh a, [rNR10]                                ; $6058: $f0 $10
    ld a, b                                       ; $605a: $78
    xor b                                         ; $605b: $a8
    jr c, jr_035_601e                             ; $605c: $38 $c0

    inc e                                         ; $605e: $1c
    ldh [rNR32], a                                ; $605f: $e0 $1c
    jr nz, jr_035_5ff1                            ; $6061: $20 $8e

    call nc, $7957                                ; $6063: $d4 $57 $79

jr_035_6066:
    and a                                         ; $6066: $a7
    cp d                                          ; $6067: $ba
    ld l, e                                       ; $6068: $6b
    ld a, h                                       ; $6069: $7c
    ld d, a                                       ; $606a: $57
    ld e, l                                       ; $606b: $5d
    ld a, [bc]                                    ; $606c: $0a
    ld a, [bc]                                    ; $606d: $0a
    ld d, l                                       ; $606e: $55
    ld d, l                                       ; $606f: $55
    nop                                           ; $6070: $00

jr_035_6071:
    nop                                           ; $6071: $00
    nop                                           ; $6072: $00
    nop                                           ; $6073: $00
    nop                                           ; $6074: $00
    nop                                           ; $6075: $00
    nop                                           ; $6076: $00
    nop                                           ; $6077: $00
    nop                                           ; $6078: $00
    nop                                           ; $6079: $00
    nop                                           ; $607a: $00
    nop                                           ; $607b: $00
    nop                                           ; $607c: $00
    nop                                           ; $607d: $00
    nop                                           ; $607e: $00
    nop                                           ; $607f: $00
    nop                                           ; $6080: $00
    nop                                           ; $6081: $00
    nop                                           ; $6082: $00
    nop                                           ; $6083: $00
    nop                                           ; $6084: $00
    nop                                           ; $6085: $00
    nop                                           ; $6086: $00
    nop                                           ; $6087: $00
    nop                                           ; $6088: $00
    nop                                           ; $6089: $00
    nop                                           ; $608a: $00
    nop                                           ; $608b: $00
    nop                                           ; $608c: $00
    nop                                           ; $608d: $00
    nop                                           ; $608e: $00
    nop                                           ; $608f: $00
    dec b                                         ; $6090: $05
    nop                                           ; $6091: $00
    ld a, [hl+]                                   ; $6092: $2a
    nop                                           ; $6093: $00
    add b                                         ; $6094: $80
    ld [bc], a                                    ; $6095: $02
    nop                                           ; $6096: $00
    dec d                                         ; $6097: $15
    ld bc, $0a41                                  ; $6098: $01 $41 $0a
    adc d                                         ; $609b: $8a
    jr nz, jr_035_60be                            ; $609c: $20 $20

    ld b, b                                       ; $609e: $40
    ld b, b                                       ; $609f: $40
    nop                                           ; $60a0: $00
    nop                                           ; $60a1: $00
    nop                                           ; $60a2: $00
    nop                                           ; $60a3: $00
    nop                                           ; $60a4: $00
    nop                                           ; $60a5: $00
    nop                                           ; $60a6: $00
    nop                                           ; $60a7: $00
    nop                                           ; $60a8: $00
    nop                                           ; $60a9: $00
    nop                                           ; $60aa: $00
    nop                                           ; $60ab: $00
    nop                                           ; $60ac: $00
    nop                                           ; $60ad: $00
    nop                                           ; $60ae: $00
    nop                                           ; $60af: $00
    ld d, b                                       ; $60b0: $50
    nop                                           ; $60b1: $00
    cp [hl]                                       ; $60b2: $be
    nop                                           ; $60b3: $00
    rrca                                          ; $60b4: $0f
    and b                                         ; $60b5: $a0
    inc bc                                        ; $60b6: $03
    ld a, h                                       ; $60b7: $7c
    ld b, b                                       ; $60b8: $40
    ld e, a                                       ; $60b9: $5f
    ld hl, sp-$01                                 ; $60ba: $f8 $ff
    ld a, $3f                                     ; $60bc: $3e $3f

jr_035_60be:
    rrca                                          ; $60be: $0f
    rrca                                          ; $60bf: $0f
    ld [bc], a                                    ; $60c0: $02
    ld [bc], a                                    ; $60c1: $02
    nop                                           ; $60c2: $00
    nop                                           ; $60c3: $00
    nop                                           ; $60c4: $00
    nop                                           ; $60c5: $00
    nop                                           ; $60c6: $00
    nop                                           ; $60c7: $00
    nop                                           ; $60c8: $00
    nop                                           ; $60c9: $00
    nop                                           ; $60ca: $00
    nop                                           ; $60cb: $00
    nop                                           ; $60cc: $00
    nop                                           ; $60cd: $00
    nop                                           ; $60ce: $00
    nop                                           ; $60cf: $00
    nop                                           ; $60d0: $00
    nop                                           ; $60d1: $00
    nop                                           ; $60d2: $00
    nop                                           ; $60d3: $00
    add b                                         ; $60d4: $80
    nop                                           ; $60d5: $00
    ldh [rNR41], a                                ; $60d6: $e0 $20
    ldh a, [$50]                                  ; $60d8: $f0 $50
    ld a, b                                       ; $60da: $78
    xor b                                         ; $60db: $a8
    cp b                                          ; $60dc: $b8
    ret nz                                        ; $60dd: $c0

    inc e                                         ; $60de: $1c
    ldh [rNR32], a                                ; $60df: $e0 $1c
    jr nz, jr_035_6071                            ; $60e1: $20 $8e

    call nc, $7957                                ; $60e3: $d4 $57 $79
    and a                                         ; $60e6: $a7
    cp d                                          ; $60e7: $ba
    ld l, e                                       ; $60e8: $6b
    ld a, h                                       ; $60e9: $7c
    ld d, a                                       ; $60ea: $57
    ld e, l                                       ; $60eb: $5d
    ld a, [bc]                                    ; $60ec: $0a
    ld a, [bc]                                    ; $60ed: $0a
    ld d, l                                       ; $60ee: $55
    ld d, l                                       ; $60ef: $55
    nop                                           ; $60f0: $00

jr_035_60f1:
    nop                                           ; $60f1: $00
    nop                                           ; $60f2: $00
    nop                                           ; $60f3: $00
    inc bc                                        ; $60f4: $03
    ld [bc], a                                    ; $60f5: $02
    inc bc                                        ; $60f6: $03
    nop                                           ; $60f7: $00
    dec b                                         ; $60f8: $05
    nop                                           ; $60f9: $00
    ld c, $01                                     ; $60fa: $0e $01
    inc d                                         ; $60fc: $14
    inc bc                                        ; $60fd: $03
    ld [$1105], sp                                ; $60fe: $08 $05 $11
    inc bc                                        ; $6101: $03
    ld b, b                                       ; $6102: $40
    inc b                                         ; $6103: $04
    ld hl, $0001                                  ; $6104: $21 $01 $00
    ld [$0242], sp                                ; $6107: $08 $42 $02
    nop                                           ; $610a: $00
    nop                                           ; $610b: $00
    nop                                           ; $610c: $00
    nop                                           ; $610d: $00
    nop                                           ; $610e: $00
    nop                                           ; $610f: $00
    rra                                           ; $6110: $1f
    db $10                                        ; $6111: $10
    rst $38                                       ; $6112: $ff
    add b                                         ; $6113: $80
    ld hl, sp+$07                                 ; $6114: $f8 $07
    ret nz                                        ; $6116: $c0

    ccf                                           ; $6117: $3f
    inc bc                                        ; $6118: $03
    rst $38                                       ; $6119: $ff
    rra                                           ; $611a: $1f
    rst $38                                       ; $611b: $ff
    ld a, h                                       ; $611c: $7c
    db $fc                                        ; $611d: $fc
    ldh a, [$f0]                                  ; $611e: $f0 $f0
    ret z                                         ; $6120: $c8

    ret z                                         ; $6121: $c8

    and b                                         ; $6122: $a0
    and b                                         ; $6123: $a0
    ld b, b                                       ; $6124: $40
    ld b, b                                       ; $6125: $40
    nop                                           ; $6126: $00
    nop                                           ; $6127: $00
    add b                                         ; $6128: $80
    add b                                         ; $6129: $80
    nop                                           ; $612a: $00
    nop                                           ; $612b: $00
    nop                                           ; $612c: $00
    nop                                           ; $612d: $00
    nop                                           ; $612e: $00
    nop                                           ; $612f: $00
    ld hl, sp+$08                                 ; $6130: $f8 $08
    rst $38                                       ; $6132: $ff
    ld bc, $e01f                                  ; $6133: $01 $1f $e0
    inc bc                                        ; $6136: $03
    db $fc                                        ; $6137: $fc
    ret nz                                        ; $6138: $c0

    rst $38                                       ; $6139: $ff
    ld hl, sp-$02                                 ; $613a: $f8 $fe
    ld a, $3f                                     ; $613c: $3e $3f
    rrca                                          ; $613e: $0f
    rrca                                          ; $613f: $0f
    ld [de], a                                    ; $6140: $12
    ld [de], a                                    ; $6141: $12
    dec b                                         ; $6142: $05
    dec b                                         ; $6143: $05
    nop                                           ; $6144: $00
    nop                                           ; $6145: $00
    nop                                           ; $6146: $00
    nop                                           ; $6147: $00
    nop                                           ; $6148: $00
    nop                                           ; $6149: $00
    nop                                           ; $614a: $00
    nop                                           ; $614b: $00
    nop                                           ; $614c: $00
    nop                                           ; $614d: $00
    nop                                           ; $614e: $00
    nop                                           ; $614f: $00
    nop                                           ; $6150: $00
    nop                                           ; $6151: $00
    nop                                           ; $6152: $00
    nop                                           ; $6153: $00
    ret z                                         ; $6154: $c8

    ld c, b                                       ; $6155: $48
    ldh [rNR41], a                                ; $6156: $e0 $20
    ldh a, [$50]                                  ; $6158: $f0 $50
    ld a, b                                       ; $615a: $78
    xor b                                         ; $615b: $a8
    cp b                                          ; $615c: $b8
    ret nz                                        ; $615d: $c0

    inc e                                         ; $615e: $1c
    ldh [rNR32], a                                ; $615f: $e0 $1c
    jr nz, jr_035_60f1                            ; $6161: $20 $8e

    call nc, $7957                                ; $6163: $d4 $57 $79
    and a                                         ; $6166: $a7
    cp d                                          ; $6167: $ba
    ld l, e                                       ; $6168: $6b
    ld a, h                                       ; $6169: $7c
    ld d, a                                       ; $616a: $57
    ld e, l                                       ; $616b: $5d
    ld a, [bc]                                    ; $616c: $0a
    ld a, [bc]                                    ; $616d: $0a
    ld d, l                                       ; $616e: $55
    ld d, l                                       ; $616f: $55
    nop                                           ; $6170: $00

jr_035_6171:
    nop                                           ; $6171: $00
    nop                                           ; $6172: $00
    nop                                           ; $6173: $00
    inc de                                        ; $6174: $13
    ld [de], a                                    ; $6175: $12
    rlca                                          ; $6176: $07
    inc b                                         ; $6177: $04
    rrca                                          ; $6178: $0f
    ld a, [bc]                                    ; $6179: $0a
    ld e, $15                                     ; $617a: $1e $15
    dec e                                         ; $617c: $1d
    inc bc                                        ; $617d: $03
    jr c, jr_035_6187                             ; $617e: $38 $07

    jr c, @+$06                                   ; $6180: $38 $04

    ld [hl], c                                    ; $6182: $71
    dec hl                                        ; $6183: $2b
    ld [$e59e], a                                 ; $6184: $ea $9e $e5

jr_035_6187:
    ld e, l                                       ; $6187: $5d
    sub $3e                                       ; $6188: $d6 $3e
    ld [$50ba], a                                 ; $618a: $ea $ba $50
    ld d, b                                       ; $618d: $50
    xor d                                         ; $618e: $aa
    xor d                                         ; $618f: $aa
    rra                                           ; $6190: $1f
    db $10                                        ; $6191: $10
    rst $38                                       ; $6192: $ff
    add b                                         ; $6193: $80
    ld hl, sp+$07                                 ; $6194: $f8 $07
    ret nz                                        ; $6196: $c0

    ccf                                           ; $6197: $3f
    inc bc                                        ; $6198: $03
    rst $38                                       ; $6199: $ff
    rra                                           ; $619a: $1f
    rst $38                                       ; $619b: $ff
    ld a, h                                       ; $619c: $7c
    db $fc                                        ; $619d: $fc
    ldh a, [$f0]                                  ; $619e: $f0 $f0
    ret z                                         ; $61a0: $c8

    ret z                                         ; $61a1: $c8

    and b                                         ; $61a2: $a0
    and b                                         ; $61a3: $a0
    ld b, b                                       ; $61a4: $40
    ld b, b                                       ; $61a5: $40
    nop                                           ; $61a6: $00
    nop                                           ; $61a7: $00
    add b                                         ; $61a8: $80
    add b                                         ; $61a9: $80
    nop                                           ; $61aa: $00
    nop                                           ; $61ab: $00
    nop                                           ; $61ac: $00
    nop                                           ; $61ad: $00
    nop                                           ; $61ae: $00
    nop                                           ; $61af: $00
    ld hl, sp+$08                                 ; $61b0: $f8 $08
    rst $38                                       ; $61b2: $ff
    ld bc, $e01f                                  ; $61b3: $01 $1f $e0
    inc bc                                        ; $61b6: $03
    db $fc                                        ; $61b7: $fc
    ret nz                                        ; $61b8: $c0

    rst $38                                       ; $61b9: $ff
    ld hl, sp-$02                                 ; $61ba: $f8 $fe
    ld a, $3f                                     ; $61bc: $3e $3f
    rrca                                          ; $61be: $0f
    rrca                                          ; $61bf: $0f
    ld [de], a                                    ; $61c0: $12
    ld [de], a                                    ; $61c1: $12
    dec b                                         ; $61c2: $05
    dec b                                         ; $61c3: $05
    nop                                           ; $61c4: $00
    nop                                           ; $61c5: $00
    nop                                           ; $61c6: $00
    nop                                           ; $61c7: $00
    nop                                           ; $61c8: $00
    nop                                           ; $61c9: $00
    nop                                           ; $61ca: $00
    nop                                           ; $61cb: $00
    nop                                           ; $61cc: $00
    nop                                           ; $61cd: $00
    nop                                           ; $61ce: $00
    nop                                           ; $61cf: $00
    nop                                           ; $61d0: $00
    nop                                           ; $61d1: $00
    nop                                           ; $61d2: $00
    nop                                           ; $61d3: $00
    ret z                                         ; $61d4: $c8

    ld c, b                                       ; $61d5: $48
    ldh [rNR41], a                                ; $61d6: $e0 $20
    ldh a, [$50]                                  ; $61d8: $f0 $50
    ld a, b                                       ; $61da: $78
    xor b                                         ; $61db: $a8
    cp b                                          ; $61dc: $b8
    ret nz                                        ; $61dd: $c0

    inc e                                         ; $61de: $1c
    ldh [rNR32], a                                ; $61df: $e0 $1c
    jr nz, jr_035_6171                            ; $61e1: $20 $8e

    call nc, $7957                                ; $61e3: $d4 $57 $79
    and a                                         ; $61e6: $a7
    cp d                                          ; $61e7: $ba
    ld l, e                                       ; $61e8: $6b
    ld a, h                                       ; $61e9: $7c
    ld d, a                                       ; $61ea: $57
    ld e, l                                       ; $61eb: $5d
    ld a, [bc]                                    ; $61ec: $0a
    ld a, [bc]                                    ; $61ed: $0a
    ld d, l                                       ; $61ee: $55
    ld d, l                                       ; $61ef: $55
    nop                                           ; $61f0: $00
    nop                                           ; $61f1: $00
    nop                                           ; $61f2: $00
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
    nop                                           ; $620f: $00
    nop                                           ; $6210: $00
    nop                                           ; $6211: $00
    nop                                           ; $6212: $00
    nop                                           ; $6213: $00
    nop                                           ; $6214: $00
    nop                                           ; $6215: $00
    nop                                           ; $6216: $00
    nop                                           ; $6217: $00
    inc b                                         ; $6218: $04
    inc b                                         ; $6219: $04
    ld c, $0f                                     ; $621a: $0e $0f
    ld c, $0f                                     ; $621c: $0e $0f
    rra                                           ; $621e: $1f
    rra                                           ; $621f: $1f
    rst $38                                       ; $6220: $ff
    rst $38                                       ; $6221: $ff
    rst $38                                       ; $6222: $ff
    rst $38                                       ; $6223: $ff
    ld a, a                                       ; $6224: $7f
    ld a, a                                       ; $6225: $7f
    ccf                                           ; $6226: $3f
    ccf                                           ; $6227: $3f
    ccf                                           ; $6228: $3f
    ccf                                           ; $6229: $3f
    ld a, a                                       ; $622a: $7f
    ld a, a                                       ; $622b: $7f
    ld a, e                                       ; $622c: $7b
    ld a, e                                       ; $622d: $7b
    ld h, b                                       ; $622e: $60
    ld h, b                                       ; $622f: $60
    nop                                           ; $6230: $00
    nop                                           ; $6231: $00
    nop                                           ; $6232: $00
    nop                                           ; $6233: $00
    nop                                           ; $6234: $00
    nop                                           ; $6235: $00
    nop                                           ; $6236: $00
    nop                                           ; $6237: $00
    nop                                           ; $6238: $00
    nop                                           ; $6239: $00
    nop                                           ; $623a: $00
    nop                                           ; $623b: $00
    nop                                           ; $623c: $00
    nop                                           ; $623d: $00
    nop                                           ; $623e: $00
    nop                                           ; $623f: $00
    nop                                           ; $6240: $00
    nop                                           ; $6241: $00
    nop                                           ; $6242: $00
    nop                                           ; $6243: $00
    ld bc, $0100                                  ; $6244: $01 $00 $01
    ld [bc], a                                    ; $6247: $02
    inc bc                                        ; $6248: $03
    nop                                           ; $6249: $00
    inc bc                                        ; $624a: $03
    inc b                                         ; $624b: $04
    rlca                                          ; $624c: $07
    ld [$0807], sp                                ; $624d: $08 $07 $08
    ld c, $11                                     ; $6250: $0e $11
    dec bc                                        ; $6252: $0b
    inc [hl]                                      ; $6253: $34
    dec d                                         ; $6254: $15
    ld a, [hl+]                                   ; $6255: $2a
    inc bc                                        ; $6256: $03
    ld a, h                                       ; $6257: $7c
    inc d                                         ; $6258: $14
    db $eb                                        ; $6259: $eb
    nop                                           ; $625a: $00
    cp $00                                        ; $625b: $fe $00
    ld hl, sp+$00                                 ; $625d: $f8 $00
    ldh a, [$e0]                                  ; $625f: $f0 $e0
    ldh [$e0], a                                  ; $6261: $e0 $e0
    ldh [$c0], a                                  ; $6263: $e0 $c0
    ret nz                                        ; $6265: $c0

    add b                                         ; $6266: $80
    add b                                         ; $6267: $80
    add b                                         ; $6268: $80
    add b                                         ; $6269: $80
    ret nz                                        ; $626a: $c0

    ret nz                                        ; $626b: $c0

    ret nz                                        ; $626c: $c0

    ret nz                                        ; $626d: $c0

    ret nz                                        ; $626e: $c0

    ret nz                                        ; $626f: $c0

    ld [bc], a                                    ; $6270: $02
    ld [bc], a                                    ; $6271: $02
    dec b                                         ; $6272: $05
    dec b                                         ; $6273: $05
    ld c, $06                                     ; $6274: $0e $06
    dec c                                         ; $6276: $0d
    dec c                                         ; $6277: $0d
    ld e, $0e                                     ; $6278: $1e $0e
    dec sp                                        ; $627a: $3b
    dec de                                        ; $627b: $1b
    ccf                                           ; $627c: $3f
    rra                                           ; $627d: $1f
    ld a, a                                       ; $627e: $7f
    ccf                                           ; $627f: $3f
    rst $38                                       ; $6280: $ff
    ld l, $ff                                     ; $6281: $2e $ff
    ld e, e                                       ; $6283: $5b
    rst $38                                       ; $6284: $ff
    dec h                                         ; $6285: $25
    rst $38                                       ; $6286: $ff
    adc e                                         ; $6287: $8b
    rst $38                                       ; $6288: $ff
    ld [bc], a                                    ; $6289: $02
    rst $38                                       ; $628a: $ff
    dec b                                         ; $628b: $05
    rst $38                                       ; $628c: $ff
    ld [bc], a                                    ; $628d: $02
    rst $38                                       ; $628e: $ff
    ld [$00fc], sp                                ; $628f: $08 $fc $00
    ldh a, [$08]                                  ; $6292: $f0 $08
    ret nz                                        ; $6294: $c0

    jr nz, jr_035_6297                            ; $6295: $20 $00

jr_035_6297:
    ret nz                                        ; $6297: $c0

    nop                                           ; $6298: $00
    nop                                           ; $6299: $00
    nop                                           ; $629a: $00
    nop                                           ; $629b: $00
    nop                                           ; $629c: $00
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
    ld b, b                                       ; $62b2: $40
    ld b, b                                       ; $62b3: $40
    inc b                                         ; $62b4: $04
    inc b                                         ; $62b5: $04
    ld d, b                                       ; $62b6: $50
    ld d, b                                       ; $62b7: $50
    xor b                                         ; $62b8: $a8
    xor b                                         ; $62b9: $a8
    ldh a, [$f0]                                  ; $62ba: $f0 $f0
    ld [$f0ea], a                                 ; $62bc: $ea $ea $f0
    ldh a, [$ea]                                  ; $62bf: $f0 $ea
    ld [$f5f5], a                                 ; $62c1: $ea $f5 $f5
    sbc $de                                       ; $62c4: $de $de
    db $fc                                        ; $62c6: $fc
    ld hl, sp-$10                                 ; $62c7: $f8 $f0
    ldh [$e0], a                                  ; $62c9: $e0 $e0
    add b                                         ; $62cb: $80
    add b                                         ; $62cc: $80
    nop                                           ; $62cd: $00
    nop                                           ; $62ce: $00
    nop                                           ; $62cf: $00
    nop                                           ; $62d0: $00
    nop                                           ; $62d1: $00
    nop                                           ; $62d2: $00
    nop                                           ; $62d3: $00
    nop                                           ; $62d4: $00
    nop                                           ; $62d5: $00
    nop                                           ; $62d6: $00
    nop                                           ; $62d7: $00
    nop                                           ; $62d8: $00
    nop                                           ; $62d9: $00
    nop                                           ; $62da: $00
    nop                                           ; $62db: $00
    nop                                           ; $62dc: $00
    nop                                           ; $62dd: $00
    nop                                           ; $62de: $00
    nop                                           ; $62df: $00
    nop                                           ; $62e0: $00
    nop                                           ; $62e1: $00
    nop                                           ; $62e2: $00
    nop                                           ; $62e3: $00
    nop                                           ; $62e4: $00
    nop                                           ; $62e5: $00
    nop                                           ; $62e6: $00
    nop                                           ; $62e7: $00
    nop                                           ; $62e8: $00
    nop                                           ; $62e9: $00
    nop                                           ; $62ea: $00
    nop                                           ; $62eb: $00
    nop                                           ; $62ec: $00
    nop                                           ; $62ed: $00
    nop                                           ; $62ee: $00
    nop                                           ; $62ef: $00
    nop                                           ; $62f0: $00
    nop                                           ; $62f1: $00
    nop                                           ; $62f2: $00
    nop                                           ; $62f3: $00
    nop                                           ; $62f4: $00
    nop                                           ; $62f5: $00
    nop                                           ; $62f6: $00
    nop                                           ; $62f7: $00
    nop                                           ; $62f8: $00
    nop                                           ; $62f9: $00
    nop                                           ; $62fa: $00
    nop                                           ; $62fb: $00
    nop                                           ; $62fc: $00
    nop                                           ; $62fd: $00
    nop                                           ; $62fe: $00
    nop                                           ; $62ff: $00
    nop                                           ; $6300: $00
    nop                                           ; $6301: $00
    nop                                           ; $6302: $00
    nop                                           ; $6303: $00
    nop                                           ; $6304: $00
    nop                                           ; $6305: $00
    nop                                           ; $6306: $00
    nop                                           ; $6307: $00
    nop                                           ; $6308: $00
    nop                                           ; $6309: $00
    nop                                           ; $630a: $00
    nop                                           ; $630b: $00
    nop                                           ; $630c: $00
    nop                                           ; $630d: $00
    nop                                           ; $630e: $00
    nop                                           ; $630f: $00
    nop                                           ; $6310: $00
    nop                                           ; $6311: $00
    nop                                           ; $6312: $00
    nop                                           ; $6313: $00
    nop                                           ; $6314: $00
    nop                                           ; $6315: $00
    ld [bc], a                                    ; $6316: $02
    ld [bc], a                                    ; $6317: $02
    rlca                                          ; $6318: $07
    rlca                                          ; $6319: $07
    rlca                                          ; $631a: $07
    rlca                                          ; $631b: $07
    rrca                                          ; $631c: $0f
    rrca                                          ; $631d: $0f
    ld a, a                                       ; $631e: $7f
    ld a, a                                       ; $631f: $7f
    ld a, a                                       ; $6320: $7f
    ld a, a                                       ; $6321: $7f
    ccf                                           ; $6322: $3f
    ccf                                           ; $6323: $3f
    rra                                           ; $6324: $1f
    rra                                           ; $6325: $1f
    rra                                           ; $6326: $1f
    rra                                           ; $6327: $1f
    ccf                                           ; $6328: $3f
    ccf                                           ; $6329: $3f
    dec a                                         ; $632a: $3d
    dec a                                         ; $632b: $3d
    jr nc, jr_035_635e                            ; $632c: $30 $30

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
    ld bc, $0302                                  ; $6345: $01 $02 $03
    nop                                           ; $6348: $00
    inc bc                                        ; $6349: $03
    inc b                                         ; $634a: $04
    rlca                                          ; $634b: $07
    ld [$080f], sp                                ; $634c: $08 $0f $08
    rrca                                          ; $634f: $0f
    ld de, $341f                                  ; $6350: $11 $1f $34
    ccf                                           ; $6353: $3f
    ld a, [hl+]                                   ; $6354: $2a
    ccf                                           ; $6355: $3f
    ld a, h                                       ; $6356: $7c
    ld a, a                                       ; $6357: $7f
    db $eb                                        ; $6358: $eb
    rst $38                                       ; $6359: $ff
    cp $fe                                        ; $635a: $fe $fe
    ld hl, sp-$08                                 ; $635c: $f8 $f8

jr_035_635e:
    ldh a, [$f0]                                  ; $635e: $f0 $f0
    ldh a, [$f0]                                  ; $6360: $f0 $f0
    ldh [$e0], a                                  ; $6362: $e0 $e0
    ret nz                                        ; $6364: $c0

    ret nz                                        ; $6365: $c0

    ret nz                                        ; $6366: $c0

    ret nz                                        ; $6367: $c0

    ldh [$e0], a                                  ; $6368: $e0 $e0
    ldh [$e0], a                                  ; $636a: $e0 $e0
    ld h, b                                       ; $636c: $60
    ld h, b                                       ; $636d: $60
    nop                                           ; $636e: $00
    nop                                           ; $636f: $00
    ld [bc], a                                    ; $6370: $02
    nop                                           ; $6371: $00
    dec b                                         ; $6372: $05
    nop                                           ; $6373: $00
    ld b, $08                                     ; $6374: $06 $08
    dec c                                         ; $6376: $0d
    nop                                           ; $6377: $00
    ld c, $10                                     ; $6378: $0e $10
    dec de                                        ; $637a: $1b
    jr nz, jr_035_639c                            ; $637b: $20 $1f

    jr nz, @+$41                                  ; $637d: $20 $3f

    ld b, b                                       ; $637f: $40
    ld l, $d1                                     ; $6380: $2e $d1
    ld e, e                                       ; $6382: $5b
    and h                                         ; $6383: $a4
    dec h                                         ; $6384: $25
    jp c, Jump_035_748b                           ; $6385: $da $8b $74

    ld [bc], a                                    ; $6388: $02
    db $fd                                        ; $6389: $fd
    dec b                                         ; $638a: $05
    ld a, [$fd02]                                 ; $638b: $fa $02 $fd
    ld [$00f7], sp                                ; $638e: $08 $f7 $00
    db $fc                                        ; $6391: $fc
    ld [$20f8], sp                                ; $6392: $08 $f8 $20
    ldh [$c0], a                                  ; $6395: $e0 $c0
    ret nz                                        ; $6397: $c0

    nop                                           ; $6398: $00
    nop                                           ; $6399: $00
    nop                                           ; $639a: $00
    nop                                           ; $639b: $00

jr_035_639c:
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
    ld b, b                                       ; $63b2: $40
    nop                                           ; $63b3: $00
    inc b                                         ; $63b4: $04
    nop                                           ; $63b5: $00
    ld d, b                                       ; $63b6: $50
    nop                                           ; $63b7: $00
    xor b                                         ; $63b8: $a8
    nop                                           ; $63b9: $00
    ldh a, [rP1]                                  ; $63ba: $f0 $00
    ld [$f000], a                                 ; $63bc: $ea $00 $f0
    nop                                           ; $63bf: $00
    ld [$f500], a                                 ; $63c0: $ea $00 $f5
    nop                                           ; $63c3: $00
    sbc $00                                       ; $63c4: $de $00
    ld hl, sp+$04                                 ; $63c6: $f8 $04
    ldh [rNR10], a                                ; $63c8: $e0 $10
    add b                                         ; $63ca: $80
    ld h, b                                       ; $63cb: $60
    nop                                           ; $63cc: $00
    add b                                         ; $63cd: $80
    nop                                           ; $63ce: $00
    nop                                           ; $63cf: $00
    nop                                           ; $63d0: $00
    nop                                           ; $63d1: $00
    nop                                           ; $63d2: $00
    nop                                           ; $63d3: $00
    nop                                           ; $63d4: $00
    nop                                           ; $63d5: $00
    nop                                           ; $63d6: $00
    nop                                           ; $63d7: $00
    nop                                           ; $63d8: $00
    nop                                           ; $63d9: $00
    nop                                           ; $63da: $00
    nop                                           ; $63db: $00
    nop                                           ; $63dc: $00
    nop                                           ; $63dd: $00
    nop                                           ; $63de: $00
    nop                                           ; $63df: $00
    nop                                           ; $63e0: $00
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
    nop                                           ; $63f2: $00
    nop                                           ; $63f3: $00
    nop                                           ; $63f4: $00
    nop                                           ; $63f5: $00
    nop                                           ; $63f6: $00
    nop                                           ; $63f7: $00
    nop                                           ; $63f8: $00
    nop                                           ; $63f9: $00
    nop                                           ; $63fa: $00
    nop                                           ; $63fb: $00
    nop                                           ; $63fc: $00
    nop                                           ; $63fd: $00
    nop                                           ; $63fe: $00
    nop                                           ; $63ff: $00
    nop                                           ; $6400: $00
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
    nop                                           ; $6412: $00
    nop                                           ; $6413: $00
    ld bc, $0301                                  ; $6414: $01 $01 $03
    inc bc                                        ; $6417: $03
    inc bc                                        ; $6418: $03
    inc bc                                        ; $6419: $03
    rlca                                          ; $641a: $07
    rlca                                          ; $641b: $07
    ccf                                           ; $641c: $3f
    ccf                                           ; $641d: $3f
    ccf                                           ; $641e: $3f
    ccf                                           ; $641f: $3f
    rra                                           ; $6420: $1f
    rra                                           ; $6421: $1f
    rrca                                          ; $6422: $0f
    rrca                                          ; $6423: $0f
    rrca                                          ; $6424: $0f
    rrca                                          ; $6425: $0f
    rra                                           ; $6426: $1f
    rra                                           ; $6427: $1f
    ld e, $1e                                     ; $6428: $1e $1e
    jr jr_035_6444                                ; $642a: $18 $18

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

jr_035_6444:
    ld bc, $0301                                  ; $6444: $01 $01 $03
    ld bc, $0303                                  ; $6447: $01 $03 $03
    rlca                                          ; $644a: $07
    inc bc                                        ; $644b: $03
    rrca                                          ; $644c: $0f
    rlca                                          ; $644d: $07
    rrca                                          ; $644e: $0f
    rlca                                          ; $644f: $07
    rra                                           ; $6450: $1f
    ld c, $3f                                     ; $6451: $0e $3f
    dec bc                                        ; $6453: $0b
    ccf                                           ; $6454: $3f
    dec d                                         ; $6455: $15
    rst $38                                       ; $6456: $ff
    add e                                         ; $6457: $83
    rst $38                                       ; $6458: $ff
    sub h                                         ; $6459: $94
    cp $c0                                        ; $645a: $fe $c0
    ld hl, sp-$08                                 ; $645c: $f8 $f8
    ld hl, sp-$08                                 ; $645e: $f8 $f8
    ldh a, [$f0]                                  ; $6460: $f0 $f0
    ldh [$e0], a                                  ; $6462: $e0 $e0
    ldh [$e0], a                                  ; $6464: $e0 $e0
    ldh a, [$f0]                                  ; $6466: $f0 $f0
    ldh a, [$f0]                                  ; $6468: $f0 $f0
    jr nc, jr_035_649c                            ; $646a: $30 $30

    nop                                           ; $646c: $00
    nop                                           ; $646d: $00
    nop                                           ; $646e: $00
    nop                                           ; $646f: $00
    nop                                           ; $6470: $00
    ld [bc], a                                    ; $6471: $02
    nop                                           ; $6472: $00
    dec b                                         ; $6473: $05
    ld [$000e], sp                                ; $6474: $08 $0e $00
    dec c                                         ; $6477: $0d
    db $10                                        ; $6478: $10
    ld e, $20                                     ; $6479: $1e $20
    dec sp                                        ; $647b: $3b
    jr nz, jr_035_64bd                            ; $647c: $20 $3f

    ld b, b                                       ; $647e: $40
    ld a, a                                       ; $647f: $7f
    pop de                                        ; $6480: $d1
    rst $38                                       ; $6481: $ff
    and h                                         ; $6482: $a4
    rst $38                                       ; $6483: $ff
    jp c, Jump_035_74ff                           ; $6484: $da $ff $74

    rst $38                                       ; $6487: $ff
    db $fd                                        ; $6488: $fd
    rst $38                                       ; $6489: $ff
    ld a, [$fdff]                                 ; $648a: $fa $ff $fd
    rst $38                                       ; $648d: $ff
    rst $30                                       ; $648e: $f7
    rst $38                                       ; $648f: $ff
    db $fc                                        ; $6490: $fc
    db $fc                                        ; $6491: $fc
    ld hl, sp-$10                                 ; $6492: $f8 $f0
    ldh [$c0], a                                  ; $6494: $e0 $c0
    ret nz                                        ; $6496: $c0

    nop                                           ; $6497: $00
    nop                                           ; $6498: $00
    nop                                           ; $6499: $00
    nop                                           ; $649a: $00
    nop                                           ; $649b: $00

jr_035_649c:
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
    ld b, b                                       ; $64b3: $40
    nop                                           ; $64b4: $00
    inc b                                         ; $64b5: $04
    nop                                           ; $64b6: $00
    ld d, b                                       ; $64b7: $50
    nop                                           ; $64b8: $00
    xor b                                         ; $64b9: $a8
    nop                                           ; $64ba: $00
    ldh a, [rP1]                                  ; $64bb: $f0 $00

jr_035_64bd:
    ld [$f000], a                                 ; $64bd: $ea $00 $f0
    nop                                           ; $64c0: $00
    ld [$f500], a                                 ; $64c1: $ea $00 $f5
    nop                                           ; $64c4: $00
    sbc $04                                       ; $64c5: $de $04
    db $fc                                        ; $64c7: $fc
    db $10                                        ; $64c8: $10
    ldh a, [$60]                                  ; $64c9: $f0 $60
    ldh [$80], a                                  ; $64cb: $e0 $80
    add b                                         ; $64cd: $80
    nop                                           ; $64ce: $00
    nop                                           ; $64cf: $00
    nop                                           ; $64d0: $00
    nop                                           ; $64d1: $00
    nop                                           ; $64d2: $00
    nop                                           ; $64d3: $00
    nop                                           ; $64d4: $00
    nop                                           ; $64d5: $00
    nop                                           ; $64d6: $00
    nop                                           ; $64d7: $00
    nop                                           ; $64d8: $00
    nop                                           ; $64d9: $00
    nop                                           ; $64da: $00
    nop                                           ; $64db: $00
    nop                                           ; $64dc: $00
    nop                                           ; $64dd: $00
    nop                                           ; $64de: $00
    nop                                           ; $64df: $00
    nop                                           ; $64e0: $00
    nop                                           ; $64e1: $00
    nop                                           ; $64e2: $00
    nop                                           ; $64e3: $00
    nop                                           ; $64e4: $00
    nop                                           ; $64e5: $00
    nop                                           ; $64e6: $00
    nop                                           ; $64e7: $00
    nop                                           ; $64e8: $00
    nop                                           ; $64e9: $00
    nop                                           ; $64ea: $00
    nop                                           ; $64eb: $00
    nop                                           ; $64ec: $00
    nop                                           ; $64ed: $00
    nop                                           ; $64ee: $00
    nop                                           ; $64ef: $00
    nop                                           ; $64f0: $00
    nop                                           ; $64f1: $00
    ld b, b                                       ; $64f2: $40
    ld d, d                                       ; $64f3: $52
    stop                                          ; $64f4: $10 $00
    db $10                                        ; $64f6: $10
    jr z, jr_035_6575                             ; $64f7: $28 $7c

    add d                                         ; $64f9: $82
    db $10                                        ; $64fa: $10
    jr z, jr_035_650f                             ; $64fb: $28 $12

    nop                                           ; $64fd: $00
    nop                                           ; $64fe: $00
    db $10                                        ; $64ff: $10
    db $10                                        ; $6500: $10
    db $10                                        ; $6501: $10
    ld [bc], a                                    ; $6502: $02
    ld [de], a                                    ; $6503: $12
    jr z, jr_035_653e                             ; $6504: $28 $38

    sub d                                         ; $6506: $92
    xor $28                                       ; $6507: $ee $28
    jr c, jr_035_650b                             ; $6509: $38 $00

jr_035_650b:
    db $10                                        ; $650b: $10
    ld d, b                                       ; $650c: $50
    ld [de], a                                    ; $650d: $12
    nop                                           ; $650e: $00

jr_035_650f:
    nop                                           ; $650f: $00
    db $10                                        ; $6510: $10
    db $10                                        ; $6511: $10
    ld [bc], a                                    ; $6512: $02
    ld [de], a                                    ; $6513: $12
    jr z, jr_035_654e                             ; $6514: $28 $38

    sub d                                         ; $6516: $92
    xor $28                                       ; $6517: $ee $28
    jr c, jr_035_651b                             ; $6519: $38 $00

jr_035_651b:
    db $10                                        ; $651b: $10
    ld d, b                                       ; $651c: $50
    ld [de], a                                    ; $651d: $12
    nop                                           ; $651e: $00
    nop                                           ; $651f: $00
    nop                                           ; $6520: $00
    nop                                           ; $6521: $00
    ld c, b                                       ; $6522: $48
    ld [$0808], sp                                ; $6523: $08 $08 $08
    ld [hl], $3e                                  ; $6526: $36 $3e
    ld [$0808], sp                                ; $6528: $08 $08 $08
    ld [$4202], sp                                ; $652b: $08 $02 $42
    nop                                           ; $652e: $00
    nop                                           ; $652f: $00
    nop                                           ; $6530: $00
    nop                                           ; $6531: $00
    ld c, b                                       ; $6532: $48
    ld [$0808], sp                                ; $6533: $08 $08 $08
    ld [hl], $3e                                  ; $6536: $36 $3e
    ld [$0808], sp                                ; $6538: $08 $08 $08
    ld [$4202], sp                                ; $653b: $08 $02 $42

jr_035_653e:
    nop                                           ; $653e: $00
    nop                                           ; $653f: $00
    nop                                           ; $6540: $00
    nop                                           ; $6541: $00
    ld [bc], a                                    ; $6542: $02
    ld b, b                                       ; $6543: $40
    nop                                           ; $6544: $00
    nop                                           ; $6545: $00
    nop                                           ; $6546: $00
    nop                                           ; $6547: $00
    ld [$0008], sp                                ; $6548: $08 $08 $00
    nop                                           ; $654b: $00
    ld b, b                                       ; $654c: $40
    ld b, b                                       ; $654d: $40

jr_035_654e:
    nop                                           ; $654e: $00
    nop                                           ; $654f: $00
    nop                                           ; $6550: $00
    nop                                           ; $6551: $00
    ld [bc], a                                    ; $6552: $02
    ld b, b                                       ; $6553: $40
    nop                                           ; $6554: $00
    nop                                           ; $6555: $00
    nop                                           ; $6556: $00
    nop                                           ; $6557: $00
    ld [$0008], sp                                ; $6558: $08 $08 $00
    nop                                           ; $655b: $00
    ld b, b                                       ; $655c: $40
    ld b, b                                       ; $655d: $40
    nop                                           ; $655e: $00
    nop                                           ; $655f: $00
    db $10                                        ; $6560: $10
    db $10                                        ; $6561: $10
    ld [bc], a                                    ; $6562: $02
    ld [de], a                                    ; $6563: $12
    jr z, jr_035_659e                             ; $6564: $28 $38

    sub d                                         ; $6566: $92
    xor $28                                       ; $6567: $ee $28
    jr c, jr_035_656b                             ; $6569: $38 $00

jr_035_656b:
    db $10                                        ; $656b: $10
    ld d, b                                       ; $656c: $50
    ld [de], a                                    ; $656d: $12
    nop                                           ; $656e: $00
    nop                                           ; $656f: $00
    db $10                                        ; $6570: $10
    ld [$0000], sp                                ; $6571: $08 $00 $00
    db $10                                        ; $6574: $10

jr_035_6575:
    db $10                                        ; $6575: $10
    ld [bc], a                                    ; $6576: $02
    nop                                           ; $6577: $00
    db $10                                        ; $6578: $10
    jr jr_035_657f                                ; $6579: $18 $04

    nop                                           ; $657b: $00
    db $10                                        ; $657c: $10
    jr nz, jr_035_6585                            ; $657d: $20 $06

jr_035_657f:
    nop                                           ; $657f: $00
    add b                                         ; $6580: $80
    db $10                                        ; $6581: $10
    ld [$0000], sp                                ; $6582: $08 $00 $00

jr_035_6585:
    db $10                                        ; $6585: $10
    db $10                                        ; $6586: $10
    ld [bc], a                                    ; $6587: $02
    nop                                           ; $6588: $00
    add b                                         ; $6589: $80
    db $10                                        ; $658a: $10
    ld [$0000], sp                                ; $658b: $08 $00 $00
    jr nz, jr_035_6598                            ; $658e: $20 $08

    ld [bc], a                                    ; $6590: $02
    nop                                           ; $6591: $00
    db $10                                        ; $6592: $10
    db $10                                        ; $6593: $10
    inc b                                         ; $6594: $04
    nop                                           ; $6595: $00
    jr nz, jr_035_65a8                            ; $6596: $20 $10

jr_035_6598:
    ld b, $00                                     ; $6598: $06 $00
    db $10                                        ; $659a: $10
    jr jr_035_65a5                                ; $659b: $18 $08

    nop                                           ; $659d: $00

jr_035_659e:
    jr nz, jr_035_65b8                            ; $659e: $20 $18

    ld a, [bc]                                    ; $65a0: $0a
    nop                                           ; $65a1: $00
    db $10                                        ; $65a2: $10
    jr nz, jr_035_65b1                            ; $65a3: $20 $0c

jr_035_65a5:
    nop                                           ; $65a5: $00
    jr nz, jr_035_65c8                            ; $65a6: $20 $20

jr_035_65a8:
    ld c, $00                                     ; $65a8: $0e $00
    add b                                         ; $65aa: $80
    db $10                                        ; $65ab: $10
    ld [$0000], sp                                ; $65ac: $08 $00 $00
    db $10                                        ; $65af: $10
    db $10                                        ; $65b0: $10

jr_035_65b1:
    ld [bc], a                                    ; $65b1: $02
    nop                                           ; $65b2: $00
    db $10                                        ; $65b3: $10
    jr jr_035_65ba                                ; $65b4: $18 $04

    nop                                           ; $65b6: $00
    db $10                                        ; $65b7: $10

jr_035_65b8:
    jr nz, jr_035_65c0                            ; $65b8: $20 $06

jr_035_65ba:
    nop                                           ; $65ba: $00
    add b                                         ; $65bb: $80
    ret nz                                        ; $65bc: $c0

    ld bc, $00df                                  ; $65bd: $01 $df $00

jr_035_65c0:
    ld b, b                                       ; $65c0: $40
    ld a, l                                       ; $65c1: $7d
    sbc a                                         ; $65c2: $9f
    ld [bc], a                                    ; $65c3: $02
    ret nz                                        ; $65c4: $c0

    ld bc, $7fff                                  ; $65c5: $01 $ff $7f

jr_035_65c8:
    db $10                                        ; $65c8: $10
    ld b, e                                       ; $65c9: $43
    ld l, d                                       ; $65ca: $6a
    ld a, [hl+]                                   ; $65cb: $2a
    ret nz                                        ; $65cc: $c0

    ld bc, $7fff                                  ; $65cd: $01 $ff $7f
    adc a                                         ; $65d0: $8f
    dec h                                         ; $65d1: $25
    rra                                           ; $65d2: $1f
    nop                                           ; $65d3: $00

Call_035_65d4:
    xor a                                         ; $65d4: $af
    ldh [rVBK], a                                 ; $65d5: $e0 $4f
    ld hl, $5eb0                                  ; $65d7: $21 $b0 $5e
    ld de, $8100                                  ; $65da: $11 $00 $81
    ld c, $0c                                     ; $65dd: $0e $0c
    call Call_000_0468                            ; $65df: $cd $68 $04
    ld hl, $65cc                                  ; $65e2: $21 $cc $65
    ld de, $0a02                                  ; $65e5: $11 $02 $0a
    call Call_000_056c                            ; $65e8: $cd $6c $05
    ret                                           ; $65eb: $c9


Call_035_65ec:
    xor a                                         ; $65ec: $af
    ldh [rVBK], a                                 ; $65ed: $e0 $4f
    ld hl, $5f70                                  ; $65ef: $21 $70 $5f
    ld de, $8100                                  ; $65f2: $11 $00 $81
    ld c, $60                                     ; $65f5: $0e $60
    call Call_000_0468                            ; $65f7: $cd $68 $04
    ld hl, $65bc                                  ; $65fa: $21 $bc $65
    ld de, $0a02                                  ; $65fd: $11 $02 $0a
    call Call_000_056c                            ; $6600: $cd $6c $05
    ret                                           ; $6603: $c9


Call_035_6604:
    ld h, $0a                                     ; $6604: $26 $0a

jr_035_6606:
    push hl                                       ; $6606: $e5
    push bc                                       ; $6607: $c5
    ld hl, $c320                                  ; $6608: $21 $20 $c3
    ld a, [hl+]                                   ; $660b: $2a
    ld d, [hl]                                    ; $660c: $56
    ld e, a                                       ; $660d: $5f
    ld hl, $1300                                  ; $660e: $21 $00 $13
    call Call_000_08ac                            ; $6611: $cd $ac $08
    add hl, hl                                    ; $6614: $29
    add hl, hl                                    ; $6615: $29
    add hl, hl                                    ; $6616: $29
    push hl                                       ; $6617: $e5
    ld hl, $c322                                  ; $6618: $21 $22 $c3
    ld a, [hl+]                                   ; $661b: $2a
    ld d, [hl]                                    ; $661c: $56
    ld e, a                                       ; $661d: $5f
    ld hl, $1080                                  ; $661e: $21 $80 $10
    call Call_000_08ac                            ; $6621: $cd $ac $08
    add hl, hl                                    ; $6624: $29
    add hl, hl                                    ; $6625: $29
    add hl, hl                                    ; $6626: $29
    ld e, h                                       ; $6627: $5c
    pop hl                                        ; $6628: $e1
    ld d, h                                       ; $6629: $54
    ld hl, $6570                                  ; $662a: $21 $70 $65
    call Call_000_26ea                            ; $662d: $cd $ea $26
    call Call_000_2e3b                            ; $6630: $cd $3b $2e
    pop bc                                        ; $6633: $c1
    pop hl                                        ; $6634: $e1
    dec h                                         ; $6635: $25
    jr nz, jr_035_6606                            ; $6636: $20 $ce

    ret                                           ; $6638: $c9


Call_035_6639:
    xor a                                         ; $6639: $af
    ld hl, $c4b4                                  ; $663a: $21 $b4 $c4
    ld [hl+], a                                   ; $663d: $22
    ld [hl+], a                                   ; $663e: $22
    call Call_035_65ec                            ; $663f: $cd $ec $65
    ld bc, $0040                                  ; $6642: $01 $40 $00
    rst $18                                       ; $6645: $df
    ld [hl], $0a                                  ; $6646: $36 $0a
    xor a                                         ; $6648: $af
    ld bc, $1900                                  ; $6649: $01 $00 $19
    ld de, $1380                                  ; $664c: $11 $80 $13
    rst $18                                       ; $664f: $df
    jr c, @+$0c                                   ; $6650: $38 $0a

    rst $18                                       ; $6652: $df
    inc a                                         ; $6653: $3c
    ld a, [bc]                                    ; $6654: $0a
    ld c, $04                                     ; $6655: $0e $04
    call Call_000_25af                            ; $6657: $cd $af $25
    call Call_000_2625                            ; $665a: $cd $25 $26
    call Call_035_67bc                            ; $665d: $cd $bc $67
    call Call_035_68f6                            ; $6660: $cd $f6 $68
    call Call_035_69ad                            ; $6663: $cd $ad $69
    ld b, $1c                                     ; $6666: $06 $1c
    ld c, $1a                                     ; $6668: $0e $1a
    ld d, $1c                                     ; $666a: $16 $1c
    ld e, $18                                     ; $666c: $1e $18
    ld h, $02                                     ; $666e: $26 $02
    ld l, $02                                     ; $6670: $2e $02
    rst $18                                       ; $6672: $df
    ld c, $0b                                     ; $6673: $0e $0b
    ld c, $08                                     ; $6675: $0e $08
    call Call_000_25af                            ; $6677: $cd $af $25
    call Call_035_68f6                            ; $667a: $cd $f6 $68
    ld bc, $0210                                  ; $667d: $01 $10 $02
    call Call_035_6604                            ; $6680: $cd $04 $66
    ld bc, $0218                                  ; $6683: $01 $18 $02
    call Call_035_6604                            ; $6686: $cd $04 $66
    ld bc, $0220                                  ; $6689: $01 $20 $02
    call Call_035_6604                            ; $668c: $cd $04 $66
    ld bc, $0228                                  ; $668f: $01 $28 $02
    call Call_035_6604                            ; $6692: $cd $04 $66
    ld a, $01                                     ; $6695: $3e $01
    ld hl, $69db                                  ; $6697: $21 $db $69
    call Call_000_23e8                            ; $669a: $cd $e8 $23
    push af                                       ; $669d: $f5
    ld a, $3c                                     ; $669e: $3e $3c
    rst $18                                       ; $66a0: $df
    inc b                                         ; $66a1: $04
    ld a, [bc]                                    ; $66a2: $0a
    pop af                                        ; $66a3: $f1
    ret                                           ; $66a4: $c9


Call_035_66a5:
    push bc                                       ; $66a5: $c5
    ld hl, $c320                                  ; $66a6: $21 $20 $c3
    ld a, [hl+]                                   ; $66a9: $2a
    ld b, [hl]                                    ; $66aa: $46
    ld c, a                                       ; $66ab: $4f
    ld hl, $1300                                  ; $66ac: $21 $00 $13
    call Call_000_1b52                            ; $66af: $cd $52 $1b
    ld a, h                                       ; $66b2: $7c
    inc a                                         ; $66b3: $3c
    inc a                                         ; $66b4: $3c
    inc a                                         ; $66b5: $3c
    inc a                                         ; $66b6: $3c
    cp $16                                        ; $66b7: $fe $16
    jp nc, Jump_035_66e0                          ; $66b9: $d2 $e0 $66

    add hl, hl                                    ; $66bc: $29
    add hl, hl                                    ; $66bd: $29
    add hl, hl                                    ; $66be: $29
    ld d, h                                       ; $66bf: $54
    ld hl, $c322                                  ; $66c0: $21 $22 $c3
    ld a, [hl+]                                   ; $66c3: $2a
    ld b, [hl]                                    ; $66c4: $46
    ld c, a                                       ; $66c5: $4f
    ld hl, $1080                                  ; $66c6: $21 $80 $10
    call Call_000_1b52                            ; $66c9: $cd $52 $1b
    ld a, h                                       ; $66cc: $7c
    inc a                                         ; $66cd: $3c
    inc a                                         ; $66ce: $3c
    cp $14                                        ; $66cf: $fe $14
    jp nc, Jump_035_66e0                          ; $66d1: $d2 $e0 $66

    add hl, hl                                    ; $66d4: $29
    add hl, hl                                    ; $66d5: $29
    add hl, hl                                    ; $66d6: $29
    ld e, h                                       ; $66d7: $5c
    ld hl, $6570                                  ; $66d8: $21 $70 $65
    pop bc                                        ; $66db: $c1
    call Call_000_26ea                            ; $66dc: $cd $ea $26
    ret                                           ; $66df: $c9


Jump_035_66e0:
    pop bc                                        ; $66e0: $c1
    ret                                           ; $66e1: $c9


Call_035_66e2:
    ld h, $0c                                     ; $66e2: $26 $0c

jr_035_66e4:
    push hl                                       ; $66e4: $e5
    push bc                                       ; $66e5: $c5
    ld hl, $c320                                  ; $66e6: $21 $20 $c3
    ld a, [hl+]                                   ; $66e9: $2a
    ld d, [hl]                                    ; $66ea: $56
    ld e, a                                       ; $66eb: $5f
    ld hl, $00b8                                  ; $66ec: $21 $b8 $00
    ld a, [$c3e2]                                 ; $66ef: $fa $e2 $c3
    add l                                         ; $66f2: $85
    ld l, a                                       ; $66f3: $6f
    jr nc, jr_035_66f7                            ; $66f4: $30 $01

    inc h                                         ; $66f6: $24

jr_035_66f7:
    add hl, hl                                    ; $66f7: $29
    add hl, hl                                    ; $66f8: $29
    add hl, hl                                    ; $66f9: $29
    add hl, hl                                    ; $66fa: $29
    add hl, hl                                    ; $66fb: $29
    call Call_000_08ac                            ; $66fc: $cd $ac $08
    add hl, hl                                    ; $66ff: $29
    add hl, hl                                    ; $6700: $29
    add hl, hl                                    ; $6701: $29
    push hl                                       ; $6702: $e5
    ld hl, $c322                                  ; $6703: $21 $22 $c3
    ld a, [hl+]                                   ; $6706: $2a
    ld d, [hl]                                    ; $6707: $56
    ld e, a                                       ; $6708: $5f
    ld hl, $0080                                  ; $6709: $21 $80 $00
    ld a, [$c3e2]                                 ; $670c: $fa $e2 $c3
    add l                                         ; $670f: $85
    ld l, a                                       ; $6710: $6f
    jr nc, jr_035_6714                            ; $6711: $30 $01

    inc h                                         ; $6713: $24

jr_035_6714:
    add hl, hl                                    ; $6714: $29
    add hl, hl                                    ; $6715: $29
    add hl, hl                                    ; $6716: $29
    add hl, hl                                    ; $6717: $29
    add hl, hl                                    ; $6718: $29
    call Call_000_08ac                            ; $6719: $cd $ac $08
    add hl, hl                                    ; $671c: $29
    add hl, hl                                    ; $671d: $29
    add hl, hl                                    ; $671e: $29
    ld e, h                                       ; $671f: $5c
    pop hl                                        ; $6720: $e1
    ld d, h                                       ; $6721: $54
    ld hl, $6581                                  ; $6722: $21 $81 $65
    call Call_000_26ea                            ; $6725: $cd $ea $26
    call Call_000_2e3b                            ; $6728: $cd $3b $2e
    pop bc                                        ; $672b: $c1
    pop hl                                        ; $672c: $e1
    dec h                                         ; $672d: $25
    jr nz, jr_035_66e4                            ; $672e: $20 $b4

    ret                                           ; $6730: $c9


Call_035_6731:
    ld a, $00                                     ; $6731: $3e $00
    ld [$c3e2], a                                 ; $6733: $ea $e2 $c3

jr_035_6736:
    ld bc, $0210                                  ; $6736: $01 $10 $02
    call Call_035_66e2                            ; $6739: $cd $e2 $66
    ld a, [$c3e2]                                 ; $673c: $fa $e2 $c3
    cp $28                                        ; $673f: $fe $28
    jr nc, jr_035_676c                            ; $6741: $30 $29

    add $02                                       ; $6743: $c6 $02
    ld [$c3e2], a                                 ; $6745: $ea $e2 $c3
    ld bc, $0214                                  ; $6748: $01 $14 $02
    call Call_035_66e2                            ; $674b: $cd $e2 $66
    ld a, [$c3e2]                                 ; $674e: $fa $e2 $c3
    add $01                                       ; $6751: $c6 $01
    ld [$c3e2], a                                 ; $6753: $ea $e2 $c3
    ld bc, $0218                                  ; $6756: $01 $18 $02
    call Call_035_66e2                            ; $6759: $cd $e2 $66
    ld a, [$c3e2]                                 ; $675c: $fa $e2 $c3
    add $02                                       ; $675f: $c6 $02
    ld [$c3e2], a                                 ; $6761: $ea $e2 $c3
    ld bc, $0214                                  ; $6764: $01 $14 $02
    call Call_035_66e2                            ; $6767: $cd $e2 $66
    jr jr_035_6736                                ; $676a: $18 $ca

jr_035_676c:
    ret                                           ; $676c: $c9


Call_035_676d:
    ld h, $02                                     ; $676d: $26 $02

jr_035_676f:
    push hl                                       ; $676f: $e5
    push bc                                       ; $6770: $c5
    ld hl, $c320                                  ; $6771: $21 $20 $c3
    ld a, [hl+]                                   ; $6774: $2a
    ld d, [hl]                                    ; $6775: $56
    ld e, a                                       ; $6776: $5f
    ld hl, $00e0                                  ; $6777: $21 $e0 $00
    ld a, [$c3e1]                                 ; $677a: $fa $e1 $c3
    add l                                         ; $677d: $85
    ld l, a                                       ; $677e: $6f
    jr nc, jr_035_6782                            ; $677f: $30 $01

    inc h                                         ; $6781: $24

jr_035_6782:
    add hl, hl                                    ; $6782: $29
    add hl, hl                                    ; $6783: $29
    add hl, hl                                    ; $6784: $29
    add hl, hl                                    ; $6785: $29
    add hl, hl                                    ; $6786: $29
    call Call_000_08ac                            ; $6787: $cd $ac $08
    add hl, hl                                    ; $678a: $29
    add hl, hl                                    ; $678b: $29
    add hl, hl                                    ; $678c: $29
    push hl                                       ; $678d: $e5
    ld hl, $c322                                  ; $678e: $21 $22 $c3
    ld a, [hl+]                                   ; $6791: $2a
    ld d, [hl]                                    ; $6792: $56
    ld e, a                                       ; $6793: $5f
    ld hl, $0024                                  ; $6794: $21 $24 $00
    ld a, [$c3e2]                                 ; $6797: $fa $e2 $c3
    add l                                         ; $679a: $85
    ld l, a                                       ; $679b: $6f
    jr nc, jr_035_679f                            ; $679c: $30 $01

    inc h                                         ; $679e: $24

jr_035_679f:
    add hl, hl                                    ; $679f: $29
    add hl, hl                                    ; $67a0: $29
    add hl, hl                                    ; $67a1: $29
    add hl, hl                                    ; $67a2: $29
    add hl, hl                                    ; $67a3: $29
    call Call_000_08ac                            ; $67a4: $cd $ac $08
    add hl, hl                                    ; $67a7: $29
    add hl, hl                                    ; $67a8: $29
    add hl, hl                                    ; $67a9: $29
    ld e, h                                       ; $67aa: $5c
    pop hl                                        ; $67ab: $e1
    ld d, h                                       ; $67ac: $54
    ld hl, $658a                                  ; $67ad: $21 $8a $65
    call Call_000_26ea                            ; $67b0: $cd $ea $26
    call Call_000_2e3b                            ; $67b3: $cd $3b $2e
    pop bc                                        ; $67b6: $c1
    pop hl                                        ; $67b7: $e1
    dec h                                         ; $67b8: $25
    jr nz, jr_035_676f                            ; $67b9: $20 $b4

    ret                                           ; $67bb: $c9


Call_035_67bc:
    ld a, $00                                     ; $67bc: $3e $00
    ld [$c3e2], a                                 ; $67be: $ea $e2 $c3
    ld [$c3e1], a                                 ; $67c1: $ea $e1 $c3

jr_035_67c4:
    ld a, [$c3e2]                                 ; $67c4: $fa $e2 $c3
    cp $5a                                        ; $67c7: $fe $5a
    jr nc, jr_035_680f                            ; $67c9: $30 $44

    ld a, [$c3e2]                                 ; $67cb: $fa $e2 $c3
    add $03                                       ; $67ce: $c6 $03
    ld [$c3e2], a                                 ; $67d0: $ea $e2 $c3
    ld a, [$c3e1]                                 ; $67d3: $fa $e1 $c3
    add $fe                                       ; $67d6: $c6 $fe
    ld [$c3e1], a                                 ; $67d8: $ea $e1 $c3
    ld bc, $0238                                  ; $67db: $01 $38 $02
    call Call_035_676d                            ; $67de: $cd $6d $67
    ld a, [$c3e1]                                 ; $67e1: $fa $e1 $c3
    add $fe                                       ; $67e4: $c6 $fe
    ld [$c3e1], a                                 ; $67e6: $ea $e1 $c3
    ld a, [$c3e2]                                 ; $67e9: $fa $e2 $c3
    add $03                                       ; $67ec: $c6 $03
    ld [$c3e2], a                                 ; $67ee: $ea $e2 $c3
    ld bc, $0248                                  ; $67f1: $01 $48 $02
    call Call_035_676d                            ; $67f4: $cd $6d $67
    ld a, [$c3e1]                                 ; $67f7: $fa $e1 $c3
    add $fe                                       ; $67fa: $c6 $fe
    ld [$c3e1], a                                 ; $67fc: $ea $e1 $c3
    ld a, [$c3e2]                                 ; $67ff: $fa $e2 $c3
    add $03                                       ; $6802: $c6 $03
    ld [$c3e2], a                                 ; $6804: $ea $e2 $c3
    ld bc, $0258                                  ; $6807: $01 $58 $02
    call Call_035_676d                            ; $680a: $cd $6d $67
    jr jr_035_67c4                                ; $680d: $18 $b5

jr_035_680f:
    ret                                           ; $680f: $c9


    xor b                                         ; $6810: $a8
    stop                                          ; $6811: $10 $00
    nop                                           ; $6813: $00
    xor l                                         ; $6814: $ad
    dec [hl]                                      ; $6815: $35
    sub h                                         ; $6816: $94
    ld c, [hl]                                    ; $6817: $4e
    xor b                                         ; $6818: $a8
    stop                                          ; $6819: $10 $00
    nop                                           ; $681b: $00
    xor l                                         ; $681c: $ad
    dec [hl]                                      ; $681d: $35
    sub h                                         ; $681e: $94
    ld c, [hl]                                    ; $681f: $4e
    ret nz                                        ; $6820: $c0

    ld a, [hl]                                    ; $6821: $7e
    nop                                           ; $6822: $00
    jr jr_035_6885                                ; $6823: $18 $60

    ld [bc], a                                    ; $6825: $02
    rst $38                                       ; $6826: $ff
    ld a, a                                       ; $6827: $7f
    rra                                           ; $6828: $1f
    ld c, h                                       ; $6829: $4c
    nop                                           ; $682a: $00
    jr jr_035_688d                                ; $682b: $18 $60

    ld [bc], a                                    ; $682d: $02
    rst $38                                       ; $682e: $ff
    ld a, a                                       ; $682f: $7f
    ccf                                           ; $6830: $3f
    ld [bc], a                                    ; $6831: $02
    nop                                           ; $6832: $00
    jr jr_035_6895                                ; $6833: $18 $60

    ld [bc], a                                    ; $6835: $02
    rst $38                                       ; $6836: $ff
    ld a, a                                       ; $6837: $7f
    cp l                                          ; $6838: $bd
    inc bc                                        ; $6839: $03
    nop                                           ; $683a: $00
    jr @+$62                                      ; $683b: $18 $60

    ld [bc], a                                    ; $683d: $02
    rst $38                                       ; $683e: $ff
    ld a, a                                       ; $683f: $7f
    ret nz                                        ; $6840: $c0

    ld d, $00                                     ; $6841: $16 $00
    jr jr_035_68a5                                ; $6843: $18 $60

    ld [bc], a                                    ; $6845: $02
    rst $38                                       ; $6846: $ff
    ld a, a                                       ; $6847: $7f
    xor b                                         ; $6848: $a8
    stop                                          ; $6849: $10 $00
    nop                                           ; $684b: $00
    xor l                                         ; $684c: $ad
    dec [hl]                                      ; $684d: $35
    sub h                                         ; $684e: $94
    ld c, [hl]                                    ; $684f: $4e
    xor b                                         ; $6850: $a8
    stop                                          ; $6851: $10 $00
    nop                                           ; $6853: $00
    xor l                                         ; $6854: $ad
    dec [hl]                                      ; $6855: $35
    sub h                                         ; $6856: $94
    ld c, [hl]                                    ; $6857: $4e
    xor b                                         ; $6858: $a8
    stop                                          ; $6859: $10 $00
    nop                                           ; $685b: $00
    xor l                                         ; $685c: $ad
    dec [hl]                                      ; $685d: $35
    sub h                                         ; $685e: $94
    ld c, [hl]                                    ; $685f: $4e
    jp hl                                         ; $6860: $e9


    ld a, a                                       ; $6861: $7f
    xor h                                         ; $6862: $ac
    ld b, b                                       ; $6863: $40
    nop                                           ; $6864: $00
    inc bc                                        ; $6865: $03
    rst $38                                       ; $6866: $ff
    ld a, a                                       ; $6867: $7f
    ccf                                           ; $6868: $3f
    ld d, $17                                     ; $6869: $16 $17
    ld bc, $0300                                  ; $686b: $01 $00 $03
    ld l, d                                       ; $686e: $6a
    jr c, jr_035_6890                             ; $686f: $38 $1f

    inc bc                                        ; $6871: $03
    inc a                                         ; $6872: $3c
    ld [bc], a                                    ; $6873: $02
    nop                                           ; $6874: $00
    inc bc                                        ; $6875: $03
    di                                            ; $6876: $f3
    inc bc                                        ; $6877: $03
    rst $38                                       ; $6878: $ff
    ld a, a                                       ; $6879: $7f
    ld b, b                                       ; $687a: $40
    ld bc, $0300                                  ; $687b: $01 $00 $03
    di                                            ; $687e: $f3
    inc bc                                        ; $687f: $03
    ld d, $01                                     ; $6880: $16 $01
    nop                                           ; $6882: $00
    ld [bc], a                                    ; $6883: $02
    nop                                           ; $6884: $00

jr_035_6885:
    inc bc                                        ; $6885: $03
    ld c, c                                       ; $6886: $49
    inc [hl]                                      ; $6887: $34
    xor b                                         ; $6888: $a8
    stop                                          ; $6889: $10 $00
    nop                                           ; $688b: $00
    xor l                                         ; $688c: $ad

jr_035_688d:
    dec [hl]                                      ; $688d: $35
    sub h                                         ; $688e: $94
    ld c, [hl]                                    ; $688f: $4e

Call_035_6890:
jr_035_6890:
    ld a, $00                                     ; $6890: $3e $00
    ld [$c3e0], a                                 ; $6892: $ea $e0 $c3

jr_035_6895:
    ld hl, $6860                                  ; $6895: $21 $60 $68
    ld de, $0201                                  ; $6898: $11 $01 $02
    call Call_000_056c                            ; $689b: $cd $6c $05
    push af                                       ; $689e: $f5
    ld a, $05                                     ; $689f: $3e $05
    rst $18                                       ; $68a1: $df
    inc b                                         ; $68a2: $04
    ld a, [bc]                                    ; $68a3: $0a
    pop af                                        ; $68a4: $f1

jr_035_68a5:
    ld a, [$c3e0]                                 ; $68a5: $fa $e0 $c3
    cp $05                                        ; $68a8: $fe $05
    jr z, jr_035_68f5                             ; $68aa: $28 $49

    ld hl, $6820                                  ; $68ac: $21 $20 $68
    ld de, $0201                                  ; $68af: $11 $01 $02
    call Call_000_056c                            ; $68b2: $cd $6c $05
    push af                                       ; $68b5: $f5
    ld a, $05                                     ; $68b6: $3e $05
    rst $18                                       ; $68b8: $df
    inc b                                         ; $68b9: $04
    ld a, [bc]                                    ; $68ba: $0a
    pop af                                        ; $68bb: $f1
    ld hl, $6828                                  ; $68bc: $21 $28 $68
    ld de, $0201                                  ; $68bf: $11 $01 $02
    call Call_000_056c                            ; $68c2: $cd $6c $05
    push af                                       ; $68c5: $f5
    ld a, $05                                     ; $68c6: $3e $05
    rst $18                                       ; $68c8: $df
    inc b                                         ; $68c9: $04
    ld a, [bc]                                    ; $68ca: $0a
    pop af                                        ; $68cb: $f1
    ld hl, $6830                                  ; $68cc: $21 $30 $68
    ld de, $0201                                  ; $68cf: $11 $01 $02
    call Call_000_056c                            ; $68d2: $cd $6c $05
    push af                                       ; $68d5: $f5
    ld a, $05                                     ; $68d6: $3e $05
    rst $18                                       ; $68d8: $df
    inc b                                         ; $68d9: $04
    ld a, [bc]                                    ; $68da: $0a
    pop af                                        ; $68db: $f1
    ld hl, $6838                                  ; $68dc: $21 $38 $68
    ld de, $0201                                  ; $68df: $11 $01 $02
    call Call_000_056c                            ; $68e2: $cd $6c $05
    push af                                       ; $68e5: $f5
    ld a, $05                                     ; $68e6: $3e $05
    rst $18                                       ; $68e8: $df
    inc b                                         ; $68e9: $04
    ld a, [bc]                                    ; $68ea: $0a
    pop af                                        ; $68eb: $f1
    ld a, [$c3e0]                                 ; $68ec: $fa $e0 $c3
    inc a                                         ; $68ef: $3c
    ld [$c3e0], a                                 ; $68f0: $ea $e0 $c3
    jr jr_035_6895                                ; $68f3: $18 $a0

jr_035_68f5:
    ret                                           ; $68f5: $c9


Call_035_68f6:
    ld a, $00                                     ; $68f6: $3e $00
    ld [$c3e2], a                                 ; $68f8: $ea $e2 $c3
    ld [$c3e1], a                                 ; $68fb: $ea $e1 $c3

jr_035_68fe:
    ld a, [$c3e2]                                 ; $68fe: $fa $e2 $c3
    cp $10                                        ; $6901: $fe $10
    jr nc, jr_035_695f                            ; $6903: $30 $5a

    ld a, [$c3e2]                                 ; $6905: $fa $e2 $c3
    add $03                                       ; $6908: $c6 $03
    ld [$c3e2], a                                 ; $690a: $ea $e2 $c3
    ld a, [$c3e1]                                 ; $690d: $fa $e1 $c3
    add $fe                                       ; $6910: $c6 $fe
    ld [$c3e1], a                                 ; $6912: $ea $e1 $c3
    ld bc, $0368                                  ; $6915: $01 $68 $03
    call Call_035_6960                            ; $6918: $cd $60 $69
    ld a, [$c3e1]                                 ; $691b: $fa $e1 $c3
    add $fe                                       ; $691e: $c6 $fe
    ld [$c3e1], a                                 ; $6920: $ea $e1 $c3
    ld a, [$c3e2]                                 ; $6923: $fa $e2 $c3
    add $03                                       ; $6926: $c6 $03
    ld [$c3e2], a                                 ; $6928: $ea $e2 $c3
    ld bc, $036a                                  ; $692b: $01 $6a $03
    call Call_035_6960                            ; $692e: $cd $60 $69
    ld a, [$c3e1]                                 ; $6931: $fa $e1 $c3
    add $fe                                       ; $6934: $c6 $fe
    ld [$c3e1], a                                 ; $6936: $ea $e1 $c3
    ld a, [$c3e2]                                 ; $6939: $fa $e2 $c3
    add $03                                       ; $693c: $c6 $03
    ld [$c3e2], a                                 ; $693e: $ea $e2 $c3
    ld bc, $036c                                  ; $6941: $01 $6c $03
    call Call_035_6960                            ; $6944: $cd $60 $69
    ld a, [$c3e1]                                 ; $6947: $fa $e1 $c3
    add $fe                                       ; $694a: $c6 $fe
    ld [$c3e1], a                                 ; $694c: $ea $e1 $c3
    ld a, [$c3e2]                                 ; $694f: $fa $e2 $c3
    add $03                                       ; $6952: $c6 $03
    ld [$c3e2], a                                 ; $6954: $ea $e2 $c3
    ld bc, $036e                                  ; $6957: $01 $6e $03
    call Call_035_6960                            ; $695a: $cd $60 $69
    jr jr_035_68fe                                ; $695d: $18 $9f

jr_035_695f:
    ret                                           ; $695f: $c9


Call_035_6960:
    ld h, $05                                     ; $6960: $26 $05

jr_035_6962:
    push hl                                       ; $6962: $e5
    push bc                                       ; $6963: $c5
    ld hl, $c320                                  ; $6964: $21 $20 $c3
    ld a, [hl+]                                   ; $6967: $2a
    ld d, [hl]                                    ; $6968: $56
    ld e, a                                       ; $6969: $5f
    ld hl, $00a0                                  ; $696a: $21 $a0 $00
    ld a, $00                                     ; $696d: $3e $00
    add l                                         ; $696f: $85
    ld l, a                                       ; $6970: $6f
    jr nc, jr_035_6974                            ; $6971: $30 $01

    inc h                                         ; $6973: $24

jr_035_6974:
    add hl, hl                                    ; $6974: $29
    add hl, hl                                    ; $6975: $29
    add hl, hl                                    ; $6976: $29
    add hl, hl                                    ; $6977: $29
    add hl, hl                                    ; $6978: $29
    call Call_000_08ac                            ; $6979: $cd $ac $08
    add hl, hl                                    ; $697c: $29
    add hl, hl                                    ; $697d: $29
    add hl, hl                                    ; $697e: $29
    push hl                                       ; $697f: $e5
    ld hl, $c322                                  ; $6980: $21 $22 $c3
    ld a, [hl+]                                   ; $6983: $2a
    ld d, [hl]                                    ; $6984: $56
    ld e, a                                       ; $6985: $5f
    ld hl, $0090                                  ; $6986: $21 $90 $00
    ld a, $00                                     ; $6989: $3e $00
    add l                                         ; $698b: $85
    ld l, a                                       ; $698c: $6f
    jr nc, jr_035_6990                            ; $698d: $30 $01

    inc h                                         ; $698f: $24

jr_035_6990:
    add hl, hl                                    ; $6990: $29
    add hl, hl                                    ; $6991: $29
    add hl, hl                                    ; $6992: $29
    add hl, hl                                    ; $6993: $29
    add hl, hl                                    ; $6994: $29
    call Call_000_08ac                            ; $6995: $cd $ac $08
    add hl, hl                                    ; $6998: $29
    add hl, hl                                    ; $6999: $29
    add hl, hl                                    ; $699a: $29
    ld e, h                                       ; $699b: $5c
    pop hl                                        ; $699c: $e1
    ld d, h                                       ; $699d: $54
    ld hl, $65ab                                  ; $699e: $21 $ab $65
    call Call_000_26ea                            ; $69a1: $cd $ea $26
    call Call_000_2e3b                            ; $69a4: $cd $3b $2e
    pop bc                                        ; $69a7: $c1
    pop hl                                        ; $69a8: $e1
    dec h                                         ; $69a9: $25
    jr nz, jr_035_6962                            ; $69aa: $20 $b6

    ret                                           ; $69ac: $c9


Call_035_69ad:
    ld b, $2c                                     ; $69ad: $06 $2c
    ld c, $07                                     ; $69af: $0e $07
    ld d, $14                                     ; $69b1: $16 $14
    ld e, $11                                     ; $69b3: $1e $11
    ld h, $02                                     ; $69b5: $26 $02
    ld l, $0a                                     ; $69b7: $2e $0a
    rst $18                                       ; $69b9: $df
    inc c                                         ; $69ba: $0c
    dec bc                                        ; $69bb: $0b
    ld b, $2c                                     ; $69bc: $06 $2c
    ld c, $07                                     ; $69be: $0e $07
    ld d, $14                                     ; $69c0: $16 $14
    ld e, $11                                     ; $69c2: $1e $11
    ld h, $02                                     ; $69c4: $26 $02
    ld l, $0a                                     ; $69c6: $2e $0a
    rst $18                                       ; $69c8: $df
    ld c, $0b                                     ; $69c9: $0e $0b
    ld b, $2c                                     ; $69cb: $06 $2c
    ld c, $07                                     ; $69cd: $0e $07
    ld d, $14                                     ; $69cf: $16 $14
    ld e, $11                                     ; $69d1: $1e $11
    ld h, $02                                     ; $69d3: $26 $02
    ld l, $0a                                     ; $69d5: $2e $0a
    rst $18                                       ; $69d7: $df
    ld a, [bc]                                    ; $69d8: $0a
    dec bc                                        ; $69d9: $0b
    ret                                           ; $69da: $c9


    ld bc, $0230                                  ; $69db: $01 $30 $02
    call Call_035_66a5                            ; $69de: $cd $a5 $66
    ret                                           ; $69e1: $c9


    dec [hl]                                      ; $69e2: $35
    ld l, d                                       ; $69e3: $6a
    inc a                                         ; $69e4: $3c
    ld l, d                                       ; $69e5: $6a
    ldh a, [rBCPD]                                ; $69e6: $f0 $69
    ld b, l                                       ; $69e8: $45
    ld l, d                                       ; $69e9: $6a
    ld b, [hl]                                    ; $69ea: $46
    ld l, d                                       ; $69eb: $6a
    ld b, a                                       ; $69ec: $47
    ld l, d                                       ; $69ed: $6a
    ld c, b                                       ; $69ee: $48
    ld l, d                                       ; $69ef: $6a
    ld hl, $007b                                  ; $69f0: $21 $7b $00
    dec b                                         ; $69f3: $05
    nop                                           ; $69f4: $00
    dec e                                         ; $69f5: $1d
    nop                                           ; $69f6: $00
    nop                                           ; $69f7: $00
    nop                                           ; $69f8: $00
    nop                                           ; $69f9: $00
    ld bc, $2113                                  ; $69fa: $01 $13 $21
    ld a, e                                       ; $69fd: $7b
    nop                                           ; $69fe: $00
    rlca                                          ; $69ff: $07
    nop                                           ; $6a00: $00
    dec d                                         ; $6a01: $15
    nop                                           ; $6a02: $00
    nop                                           ; $6a03: $00
    nop                                           ; $6a04: $00
    nop                                           ; $6a05: $00
    ld bc, $2113                                  ; $6a06: $01 $13 $21
    ld a, e                                       ; $6a09: $7b
    nop                                           ; $6a0a: $00
    dec c                                         ; $6a0b: $0d
    nop                                           ; $6a0c: $00
    dec d                                         ; $6a0d: $15
    nop                                           ; $6a0e: $00
    nop                                           ; $6a0f: $00
    nop                                           ; $6a10: $00
    add b                                         ; $6a11: $80
    ld bc, $2113                                  ; $6a12: $01 $13 $21
    ld a, e                                       ; $6a15: $7b
    ret nz                                        ; $6a16: $c0

    ld [$0d80], sp                                ; $6a17: $08 $80 $0d
    nop                                           ; $6a1a: $00
    nop                                           ; $6a1b: $00
    nop                                           ; $6a1c: $00
    ld b, b                                       ; $6a1d: $40
    ld bc, $2119                                  ; $6a1e: $01 $19 $21
    ld a, e                                       ; $6a21: $7b
    nop                                           ; $6a22: $00
    dec bc                                        ; $6a23: $0b
    nop                                           ; $6a24: $00
    dec c                                         ; $6a25: $0d
    nop                                           ; $6a26: $00
    nop                                           ; $6a27: $00
    nop                                           ; $6a28: $00
    ld b, b                                       ; $6a29: $40
    ld bc, $0026                                  ; $6a2a: $01 $26 $00
    nop                                           ; $6a2d: $00
    nop                                           ; $6a2e: $00
    nop                                           ; $6a2f: $00
    nop                                           ; $6a30: $00
    nop                                           ; $6a31: $00
    nop                                           ; $6a32: $00
    nop                                           ; $6a33: $00
    rst $38                                       ; $6a34: $ff
    ld bc, $00c0                                  ; $6a35: $01 $c0 $00
    dec bc                                        ; $6a38: $0b
    ret nz                                        ; $6a39: $c0

    ld de, $01ff                                  ; $6a3a: $11 $ff $01
    rst $38                                       ; $6a3d: $ff
    nop                                           ; $6a3e: $00
    nop                                           ; $6a3f: $00
    nop                                           ; $6a40: $00
    nop                                           ; $6a41: $00
    ld [hl-], a                                   ; $6a42: $32
    ld bc, $ffff                                  ; $6a43: $01 $ff $ff
    ret                                           ; $6a46: $c9


    rst $38                                       ; $6a47: $ff
    ld a, $05                                     ; $6a48: $3e $05
    ld bc, $000c                                  ; $6a4a: $01 $0c $00
    rst $18                                       ; $6a4d: $df
    ld d, $0a                                     ; $6a4e: $16 $0a
    ld c, $08                                     ; $6a50: $0e $08
    call Call_000_25af                            ; $6a52: $cd $af $25
    call Call_000_2625                            ; $6a55: $cd $25 $26
    ld a, $00                                     ; $6a58: $3e $00
    ld bc, $0b00                                  ; $6a5a: $01 $00 $0b
    ld de, $0f00                                  ; $6a5d: $11 $00 $0f
    rst $18                                       ; $6a60: $df
    ld [hl+], a                                   ; $6a61: $22
    ld a, [bc]                                    ; $6a62: $0a
    ld a, $00                                     ; $6a63: $3e $00
    rst $18                                       ; $6a65: $df
    ld e, $0a                                     ; $6a66: $1e $0a
    ld a, $00                                     ; $6a68: $3e $00
    ld de, $ff80                                  ; $6a6a: $11 $80 $ff
    rst $18                                       ; $6a6d: $df
    ld b, b                                       ; $6a6e: $40
    ld a, [bc]                                    ; $6a6f: $0a
    ld a, $00                                     ; $6a70: $3e $00
    ld bc, $0b00                                  ; $6a72: $01 $00 $0b
    ld de, $0dc0                                  ; $6a75: $11 $c0 $0d
    rst $18                                       ; $6a78: $df
    ld [hl+], a                                   ; $6a79: $22
    ld a, [bc]                                    ; $6a7a: $0a
    ld a, $00                                     ; $6a7b: $3e $00
    ld b, $c0                                     ; $6a7d: $06 $c0
    rst $18                                       ; $6a7f: $df
    inc l                                         ; $6a80: $2c
    ld a, [bc]                                    ; $6a81: $0a
    push af                                       ; $6a82: $f5
    ld a, $05                                     ; $6a83: $3e $05
    rst $18                                       ; $6a85: $df
    inc b                                         ; $6a86: $04
    ld a, [bc]                                    ; $6a87: $0a
    pop af                                        ; $6a88: $f1
    ld a, $00                                     ; $6a89: $3e $00
    ld b, a                                       ; $6a8b: $47
    ld a, $0a                                     ; $6a8c: $3e $0a
    rst $18                                       ; $6a8e: $df
    ld [hl-], a                                   ; $6a8f: $32
    ld a, [bc]                                    ; $6a90: $0a
    push af                                       ; $6a91: $f5
    ld a, $14                                     ; $6a92: $3e $14
    rst $18                                       ; $6a94: $df
    inc b                                         ; $6a95: $04
    ld a, [bc]                                    ; $6a96: $0a
    pop af                                        ; $6a97: $f1
    ld a, $00                                     ; $6a98: $3e $00
    ld b, $00                                     ; $6a9a: $06 $00
    rst $18                                       ; $6a9c: $df
    ld b, [hl]                                    ; $6a9d: $46
    ld a, [bc]                                    ; $6a9e: $0a
    push af                                       ; $6a9f: $f5
    ld a, $0f                                     ; $6aa0: $3e $0f
    rst $18                                       ; $6aa2: $df
    inc b                                         ; $6aa3: $04
    ld a, [bc]                                    ; $6aa4: $0a
    pop af                                        ; $6aa5: $f1
    ld a, $00                                     ; $6aa6: $3e $00
    ld b, a                                       ; $6aa8: $47
    ld a, $02                                     ; $6aa9: $3e $02
    rst $18                                       ; $6aab: $df
    ld [hl-], a                                   ; $6aac: $32
    ld a, [bc]                                    ; $6aad: $0a
    ld a, $05                                     ; $6aae: $3e $05
    ld bc, $000c                                  ; $6ab0: $01 $0c $00
    rst $18                                       ; $6ab3: $df
    ld d, $0a                                     ; $6ab4: $16 $0a
    ld a, $05                                     ; $6ab6: $3e $05
    ld bc, $0900                                  ; $6ab8: $01 $00 $09
    ld de, $1040                                  ; $6abb: $11 $40 $10
    rst $18                                       ; $6abe: $df
    ld [hl+], a                                   ; $6abf: $22
    ld a, [bc]                                    ; $6ac0: $0a
    ld a, $05                                     ; $6ac1: $3e $05
    rst $18                                       ; $6ac3: $df
    ld e, $0a                                     ; $6ac4: $1e $0a
    ld a, $05                                     ; $6ac6: $3e $05
    ld bc, $0b00                                  ; $6ac8: $01 $00 $0b
    ld de, $1080                                  ; $6acb: $11 $80 $10
    rst $18                                       ; $6ace: $df
    ld [hl+], a                                   ; $6acf: $22
    ld a, [bc]                                    ; $6ad0: $0a
    ld a, $05                                     ; $6ad1: $3e $05
    rst $18                                       ; $6ad3: $df
    ld e, $0a                                     ; $6ad4: $1e $0a
    push af                                       ; $6ad6: $f5
    ld a, $0f                                     ; $6ad7: $3e $0f
    rst $18                                       ; $6ad9: $df
    inc b                                         ; $6ada: $04
    ld a, [bc]                                    ; $6adb: $0a
    pop af                                        ; $6adc: $f1
    ld a, $05                                     ; $6add: $3e $05
    ld b, $c0                                     ; $6adf: $06 $c0
    rst $18                                       ; $6ae1: $df
    inc l                                         ; $6ae2: $2c
    ld a, [bc]                                    ; $6ae3: $0a
    xor a                                         ; $6ae4: $af
    ld bc, $0b00                                  ; $6ae5: $01 $00 $0b
    ld de, $0700                                  ; $6ae8: $11 $00 $07
    rst $18                                       ; $6aeb: $df
    jr c, @+$0c                                   ; $6aec: $38 $0a

    call Call_035_6b28                            ; $6aee: $cd $28 $6b
    rst $18                                       ; $6af1: $df
    inc a                                         ; $6af2: $3c
    ld a, [bc]                                    ; $6af3: $0a
    ld a, $05                                     ; $6af4: $3e $05
    ld bc, $0b00                                  ; $6af6: $01 $00 $0b
    ld de, $0f00                                  ; $6af9: $11 $00 $0f
    rst $18                                       ; $6afc: $df
    ld [hl+], a                                   ; $6afd: $22
    ld a, [bc]                                    ; $6afe: $0a
    ld a, $05                                     ; $6aff: $3e $05
    rst $18                                       ; $6b01: $df
    ld e, $0a                                     ; $6b02: $1e $0a
    push af                                       ; $6b04: $f5
    ld a, $0a                                     ; $6b05: $3e $0a
    rst $18                                       ; $6b07: $df
    inc b                                         ; $6b08: $04
    ld a, [bc]                                    ; $6b09: $0a
    pop af                                        ; $6b0a: $f1
    ld a, $05                                     ; $6b0b: $3e $05
    ld b, a                                       ; $6b0d: $47
    ld a, $07                                     ; $6b0e: $3e $07
    rst $18                                       ; $6b10: $df
    ld [hl-], a                                   ; $6b11: $32
    ld a, [bc]                                    ; $6b12: $0a
    ld a, $05                                     ; $6b13: $3e $05
    rst $18                                       ; $6b15: $df
    inc [hl]                                      ; $6b16: $34
    ld a, [bc]                                    ; $6b17: $0a
    call Call_035_6b97                            ; $6b18: $cd $97 $6b
    push af                                       ; $6b1b: $f5
    ld a, $2d                                     ; $6b1c: $3e $2d
    rst $18                                       ; $6b1e: $df
    inc b                                         ; $6b1f: $04
    ld a, [bc]                                    ; $6b20: $0a
    pop af                                        ; $6b21: $f1
    ld a, $01                                     ; $6b22: $3e $01
    ld [$c441], a                                 ; $6b24: $ea $41 $c4
    ret                                           ; $6b27: $c9


Call_035_6b28:
    ld b, $15                                     ; $6b28: $06 $15
    ld c, $0b                                     ; $6b2a: $0e $0b
    ld d, $09                                     ; $6b2c: $16 $09
    ld e, $0b                                     ; $6b2e: $1e $0b
    ld h, $04                                     ; $6b30: $26 $04
    ld l, $04                                     ; $6b32: $2e $04
    rst $18                                       ; $6b34: $df
    ld a, [bc]                                    ; $6b35: $0a
    dec bc                                        ; $6b36: $0b
    push af                                       ; $6b37: $f5
    ld a, $1e                                     ; $6b38: $3e $1e
    rst $18                                       ; $6b3a: $df
    inc b                                         ; $6b3b: $04
    ld a, [bc]                                    ; $6b3c: $0a
    pop af                                        ; $6b3d: $f1
    ld b, $1a                                     ; $6b3e: $06 $1a
    ld c, $0b                                     ; $6b40: $0e $0b
    ld d, $09                                     ; $6b42: $16 $09
    ld e, $0b                                     ; $6b44: $1e $0b
    ld h, $04                                     ; $6b46: $26 $04
    ld l, $04                                     ; $6b48: $2e $04
    rst $18                                       ; $6b4a: $df
    ld a, [bc]                                    ; $6b4b: $0a
    dec bc                                        ; $6b4c: $0b
    push af                                       ; $6b4d: $f5
    ld a, $1e                                     ; $6b4e: $3e $1e
    rst $18                                       ; $6b50: $df
    inc b                                         ; $6b51: $04
    ld a, [bc]                                    ; $6b52: $0a
    pop af                                        ; $6b53: $f1
    ld b, $1f                                     ; $6b54: $06 $1f
    ld c, $0b                                     ; $6b56: $0e $0b
    ld d, $09                                     ; $6b58: $16 $09
    ld e, $0b                                     ; $6b5a: $1e $0b
    ld h, $04                                     ; $6b5c: $26 $04
    ld l, $04                                     ; $6b5e: $2e $04
    rst $18                                       ; $6b60: $df
    ld a, [bc]                                    ; $6b61: $0a
    dec bc                                        ; $6b62: $0b
    push af                                       ; $6b63: $f5
    ld a, $1e                                     ; $6b64: $3e $1e
    rst $18                                       ; $6b66: $df
    inc b                                         ; $6b67: $04
    ld a, [bc]                                    ; $6b68: $0a
    pop af                                        ; $6b69: $f1
    ld b, $24                                     ; $6b6a: $06 $24
    ld c, $0b                                     ; $6b6c: $0e $0b
    ld d, $09                                     ; $6b6e: $16 $09
    ld e, $0b                                     ; $6b70: $1e $0b
    ld h, $04                                     ; $6b72: $26 $04
    ld l, $04                                     ; $6b74: $2e $04
    rst $18                                       ; $6b76: $df
    ld a, [bc]                                    ; $6b77: $0a
    dec bc                                        ; $6b78: $0b
    push af                                       ; $6b79: $f5
    ld a, $1e                                     ; $6b7a: $3e $1e
    rst $18                                       ; $6b7c: $df
    inc b                                         ; $6b7d: $04
    ld a, [bc]                                    ; $6b7e: $0a
    pop af                                        ; $6b7f: $f1
    ld b, $29                                     ; $6b80: $06 $29
    ld c, $0b                                     ; $6b82: $0e $0b
    ld d, $09                                     ; $6b84: $16 $09
    ld e, $0b                                     ; $6b86: $1e $0b
    ld h, $04                                     ; $6b88: $26 $04
    ld l, $04                                     ; $6b8a: $2e $04
    rst $18                                       ; $6b8c: $df
    ld a, [bc]                                    ; $6b8d: $0a
    dec bc                                        ; $6b8e: $0b
    push af                                       ; $6b8f: $f5
    ld a, $0f                                     ; $6b90: $3e $0f
    rst $18                                       ; $6b92: $df
    inc b                                         ; $6b93: $04
    ld a, [bc]                                    ; $6b94: $0a
    pop af                                        ; $6b95: $f1
    ret                                           ; $6b96: $c9


Call_035_6b97:
    ld b, $15                                     ; $6b97: $06 $15
    ld c, $10                                     ; $6b99: $0e $10
    ld d, $09                                     ; $6b9b: $16 $09
    ld e, $09                                     ; $6b9d: $1e $09
    ld h, $04                                     ; $6b9f: $26 $04
    ld l, $06                                     ; $6ba1: $2e $06
    rst $18                                       ; $6ba3: $df
    ld a, [bc]                                    ; $6ba4: $0a
    dec bc                                        ; $6ba5: $0b
    ld a, $00                                     ; $6ba6: $3e $00
    ld bc, $0b00                                  ; $6ba8: $01 $00 $0b
    ld de, $0a80                                  ; $6bab: $11 $80 $0a
    rst $18                                       ; $6bae: $df
    ld [hl+], a                                   ; $6baf: $22
    ld a, [bc]                                    ; $6bb0: $0a
    push af                                       ; $6bb1: $f5
    ld a, $14                                     ; $6bb2: $3e $14
    rst $18                                       ; $6bb4: $df
    inc b                                         ; $6bb5: $04
    ld a, [bc]                                    ; $6bb6: $0a
    pop af                                        ; $6bb7: $f1
    ld a, $00                                     ; $6bb8: $3e $00
    ld bc, $001a                                  ; $6bba: $01 $1a $00
    rst $18                                       ; $6bbd: $df
    ld d, $0a                                     ; $6bbe: $16 $0a
    ld a, $05                                     ; $6bc0: $3e $05
    ld bc, $001a                                  ; $6bc2: $01 $1a $00
    rst $18                                       ; $6bc5: $df
    ld d, $0a                                     ; $6bc6: $16 $0a
    ld a, $00                                     ; $6bc8: $3e $00
    ld b, $02                                     ; $6bca: $06 $02
    rst $18                                       ; $6bcc: $df
    ld b, [hl]                                    ; $6bcd: $46
    ld a, [bc]                                    ; $6bce: $0a
    ld a, $00                                     ; $6bcf: $3e $00
    ld bc, $0b00                                  ; $6bd1: $01 $00 $0b
    ld de, $0100                                  ; $6bd4: $11 $00 $01
    rst $18                                       ; $6bd7: $df
    ld [hl+], a                                   ; $6bd8: $22
    ld a, [bc]                                    ; $6bd9: $0a
    ld b, $1a                                     ; $6bda: $06 $1a
    ld c, $10                                     ; $6bdc: $0e $10
    ld d, $09                                     ; $6bde: $16 $09
    ld e, $09                                     ; $6be0: $1e $09
    ld h, $04                                     ; $6be2: $26 $04
    ld l, $06                                     ; $6be4: $2e $06
    rst $18                                       ; $6be6: $df
    ld a, [bc]                                    ; $6be7: $0a
    dec bc                                        ; $6be8: $0b
    ld b, $1f                                     ; $6be9: $06 $1f
    ld c, $10                                     ; $6beb: $0e $10
    ld d, $09                                     ; $6bed: $16 $09
    ld e, $09                                     ; $6bef: $1e $09
    ld h, $04                                     ; $6bf1: $26 $04
    ld l, $06                                     ; $6bf3: $2e $06
    rst $18                                       ; $6bf5: $df
    ld a, [bc]                                    ; $6bf6: $0a
    dec bc                                        ; $6bf7: $0b
    ld a, $05                                     ; $6bf8: $3e $05
    ld b, $01                                     ; $6bfa: $06 $01
    rst $18                                       ; $6bfc: $df
    ld a, [hl+]                                   ; $6bfd: $2a
    ld a, [bc]                                    ; $6bfe: $0a
    ld a, $05                                     ; $6bff: $3e $05
    ld de, $ff40                                  ; $6c01: $11 $40 $ff
    rst $18                                       ; $6c04: $df
    ld b, b                                       ; $6c05: $40
    ld a, [bc]                                    ; $6c06: $0a
    ld a, $05                                     ; $6c07: $3e $05
    ld bc, $0b00                                  ; $6c09: $01 $00 $0b
    ld de, $1200                                  ; $6c0c: $11 $00 $12
    rst $18                                       ; $6c0f: $df
    ld [hl+], a                                   ; $6c10: $22
    ld a, [bc]                                    ; $6c11: $0a
    ld a, $05                                     ; $6c12: $3e $05
    rst $18                                       ; $6c14: $df
    ld e, $0a                                     ; $6c15: $1e $0a
    ld a, $00                                     ; $6c17: $3e $00
    ld bc, $0010                                  ; $6c19: $01 $10 $00
    rst $18                                       ; $6c1c: $df
    ld d, $0a                                     ; $6c1d: $16 $0a
    ld a, $00                                     ; $6c1f: $3e $00
    ld b, a                                       ; $6c21: $47
    ld a, $0a                                     ; $6c22: $3e $0a
    rst $18                                       ; $6c24: $df
    ld [hl-], a                                   ; $6c25: $32
    ld a, [bc]                                    ; $6c26: $0a
    ld b, $24                                     ; $6c27: $06 $24
    ld c, $10                                     ; $6c29: $0e $10
    ld d, $09                                     ; $6c2b: $16 $09
    ld e, $09                                     ; $6c2d: $1e $09
    ld h, $04                                     ; $6c2f: $26 $04
    ld l, $06                                     ; $6c31: $2e $06
    rst $18                                       ; $6c33: $df
    ld a, [bc]                                    ; $6c34: $0a
    dec bc                                        ; $6c35: $0b
    push af                                       ; $6c36: $f5
    ld a, $05                                     ; $6c37: $3e $05
    rst $18                                       ; $6c39: $df
    inc b                                         ; $6c3a: $04
    ld a, [bc]                                    ; $6c3b: $0a
    pop af                                        ; $6c3c: $f1
    ld b, $29                                     ; $6c3d: $06 $29
    ld c, $10                                     ; $6c3f: $0e $10
    ld d, $09                                     ; $6c41: $16 $09
    ld e, $09                                     ; $6c43: $1e $09
    ld h, $04                                     ; $6c45: $26 $04
    ld l, $06                                     ; $6c47: $2e $06
    rst $18                                       ; $6c49: $df
    ld a, [bc]                                    ; $6c4a: $0a
    dec bc                                        ; $6c4b: $0b
    push af                                       ; $6c4c: $f5
    ld a, $0a                                     ; $6c4d: $3e $0a
    rst $18                                       ; $6c4f: $df
    inc b                                         ; $6c50: $04
    ld a, [bc]                                    ; $6c51: $0a
    pop af                                        ; $6c52: $f1
    ret                                           ; $6c53: $c9


    cp a                                          ; $6c54: $bf
    ld l, h                                       ; $6c55: $6c
    add $6c                                       ; $6c56: $c6 $6c
    ld h, d                                       ; $6c58: $62
    ld l, h                                       ; $6c59: $6c
    rst $08                                       ; $6c5a: $cf
    ld l, h                                       ; $6c5b: $6c
    ret nc                                        ; $6c5c: $d0

    ld l, h                                       ; $6c5d: $6c
    pop de                                        ; $6c5e: $d1
    ld l, h                                       ; $6c5f: $6c
    jp nc, $216c                                  ; $6c60: $d2 $6c $21

    ld a, e                                       ; $6c63: $7b
    nop                                           ; $6c64: $00
    rra                                           ; $6c65: $1f
    nop                                           ; $6c66: $00
    dec h                                         ; $6c67: $25
    nop                                           ; $6c68: $00
    nop                                           ; $6c69: $00
    nop                                           ; $6c6a: $00
    ret nz                                        ; $6c6b: $c0

    ld bc, $210a                                  ; $6c6c: $01 $0a $21
    ld a, e                                       ; $6c6f: $7b
    nop                                           ; $6c70: $00
    rra                                           ; $6c71: $1f
    nop                                           ; $6c72: $00
    dec de                                        ; $6c73: $1b
    nop                                           ; $6c74: $00
    nop                                           ; $6c75: $00
    nop                                           ; $6c76: $00
    ld b, b                                       ; $6c77: $40
    ld bc, $2116                                  ; $6c78: $01 $16 $21
    ld a, e                                       ; $6c7b: $7b
    nop                                           ; $6c7c: $00
    jr jr_035_6c7f                                ; $6c7d: $18 $00

jr_035_6c7f:
    jr nz, jr_035_6c81                            ; $6c7f: $20 $00

jr_035_6c81:
    nop                                           ; $6c81: $00
    nop                                           ; $6c82: $00
    nop                                           ; $6c83: $00
    ld bc, $2116                                  ; $6c84: $01 $16 $21
    ld a, e                                       ; $6c87: $7b
    nop                                           ; $6c88: $00
    add hl, de                                    ; $6c89: $19
    nop                                           ; $6c8a: $00
    dec de                                        ; $6c8b: $1b
    nop                                           ; $6c8c: $00
    nop                                           ; $6c8d: $00
    nop                                           ; $6c8e: $00
    ld b, b                                       ; $6c8f: $40
    ld bc, $210e                                  ; $6c90: $01 $0e $21
    ld a, e                                       ; $6c93: $7b
    nop                                           ; $6c94: $00
    ld h, $00                                     ; $6c95: $26 $00
    jr nz, jr_035_6c99                            ; $6c97: $20 $00

jr_035_6c99:
    nop                                           ; $6c99: $00
    nop                                           ; $6c9a: $00
    add b                                         ; $6c9b: $80
    ld bc, $2116                                  ; $6c9c: $01 $16 $21
    ld a, e                                       ; $6c9f: $7b
    nop                                           ; $6ca0: $00
    ld [bc], a                                    ; $6ca1: $02
    nop                                           ; $6ca2: $00
    jr nz, jr_035_6ca5                            ; $6ca3: $20 $00

jr_035_6ca5:
    nop                                           ; $6ca5: $00
    nop                                           ; $6ca6: $00
    add b                                         ; $6ca7: $80
    ld bc, $2116                                  ; $6ca8: $01 $16 $21
    ld a, e                                       ; $6cab: $7b
    nop                                           ; $6cac: $00
    ld bc, $1c00                                  ; $6cad: $01 $00 $1c
    nop                                           ; $6cb0: $00
    nop                                           ; $6cb1: $00
    nop                                           ; $6cb2: $00
    add b                                         ; $6cb3: $80
    ld bc, $0003                                  ; $6cb4: $01 $03 $00
    nop                                           ; $6cb7: $00
    nop                                           ; $6cb8: $00
    nop                                           ; $6cb9: $00
    nop                                           ; $6cba: $00
    nop                                           ; $6cbb: $00
    nop                                           ; $6cbc: $00
    nop                                           ; $6cbd: $00
    rst $38                                       ; $6cbe: $ff
    ld bc, $00c0                                  ; $6cbf: $01 $c0 $00
    add hl, hl                                    ; $6cc2: $29
    nop                                           ; $6cc3: $00
    dec h                                         ; $6cc4: $25
    rst $38                                       ; $6cc5: $ff
    ld bc, $00ff                                  ; $6cc6: $01 $ff $00
    nop                                           ; $6cc9: $00
    nop                                           ; $6cca: $00
    nop                                           ; $6ccb: $00
    inc sp                                        ; $6ccc: $33
    inc bc                                        ; $6ccd: $03
    rst $38                                       ; $6cce: $ff
    rst $38                                       ; $6ccf: $ff
    ret                                           ; $6cd0: $c9


    rst $38                                       ; $6cd1: $ff
    ld bc, $0010                                  ; $6cd2: $01 $10 $00
    rst $18                                       ; $6cd5: $df
    ld [hl], $0a                                  ; $6cd6: $36 $0a
    ld a, $00                                     ; $6cd8: $3e $00
    ld bc, $0010                                  ; $6cda: $01 $10 $00
    rst $18                                       ; $6cdd: $df
    ld d, $0a                                     ; $6cde: $16 $0a
    ld c, $04                                     ; $6ce0: $0e $04
    call Call_000_25af                            ; $6ce2: $cd $af $25
    call Call_000_2625                            ; $6ce5: $cd $25 $26
    xor a                                         ; $6ce8: $af
    ld bc, $2d00                                  ; $6ce9: $01 $00 $2d
    ld de, $1f00                                  ; $6cec: $11 $00 $1f
    rst $18                                       ; $6cef: $df
    jr c, jr_035_6cfc                             ; $6cf0: $38 $0a

    ld a, $00                                     ; $6cf2: $3e $00
    ld bc, $2d00                                  ; $6cf4: $01 $00 $2d
    ld de, $1f00                                  ; $6cf7: $11 $00 $1f
    rst $18                                       ; $6cfa: $df
    ld [hl+], a                                   ; $6cfb: $22

jr_035_6cfc:
    ld a, [bc]                                    ; $6cfc: $0a
    ld a, $00                                     ; $6cfd: $3e $00
    rst $18                                       ; $6cff: $df
    ld e, $0a                                     ; $6d00: $1e $0a
    push af                                       ; $6d02: $f5
    ld a, $3c                                     ; $6d03: $3e $3c
    rst $18                                       ; $6d05: $df
    inc b                                         ; $6d06: $04
    ld a, [bc]                                    ; $6d07: $0a
    pop af                                        ; $6d08: $f1
    ld a, $00                                     ; $6d09: $3e $00
    ld b, $00                                     ; $6d0b: $06 $00
    rst $18                                       ; $6d0d: $df
    inc l                                         ; $6d0e: $2c
    ld a, [bc]                                    ; $6d0f: $0a
    push af                                       ; $6d10: $f5
    ld a, $3c                                     ; $6d11: $3e $3c
    rst $18                                       ; $6d13: $df
    inc b                                         ; $6d14: $04
    ld a, [bc]                                    ; $6d15: $0a
    pop af                                        ; $6d16: $f1
    xor a                                         ; $6d17: $af
    ld bc, $3100                                  ; $6d18: $01 $00 $31
    ld de, $1f00                                  ; $6d1b: $11 $00 $1f
    rst $18                                       ; $6d1e: $df
    jr c, jr_035_6d2b                             ; $6d1f: $38 $0a

    ld a, $00                                     ; $6d21: $3e $00
    ld bc, $3100                                  ; $6d23: $01 $00 $31
    ld de, $1c00                                  ; $6d26: $11 $00 $1c
    rst $18                                       ; $6d29: $df
    ld [hl+], a                                   ; $6d2a: $22

jr_035_6d2b:
    ld a, [bc]                                    ; $6d2b: $0a
    ld a, $00                                     ; $6d2c: $3e $00
    rst $18                                       ; $6d2e: $df
    ld e, $0a                                     ; $6d2f: $1e $0a
    push af                                       ; $6d31: $f5
    ld a, $28                                     ; $6d32: $3e $28
    rst $18                                       ; $6d34: $df
    inc b                                         ; $6d35: $04
    ld a, [bc]                                    ; $6d36: $0a
    pop af                                        ; $6d37: $f1
    ld a, $00                                     ; $6d38: $3e $00
    ld b, $00                                     ; $6d3a: $06 $00
    rst $18                                       ; $6d3c: $df
    inc l                                         ; $6d3d: $2c
    ld a, [bc]                                    ; $6d3e: $0a
    push af                                       ; $6d3f: $f5
    ld a, $14                                     ; $6d40: $3e $14
    rst $18                                       ; $6d42: $df
    inc b                                         ; $6d43: $04
    ld a, [bc]                                    ; $6d44: $0a
    pop af                                        ; $6d45: $f1
    ld a, $08                                     ; $6d46: $3e $08
    ld bc, $3300                                  ; $6d48: $01 $00 $33
    ld de, $1c00                                  ; $6d4b: $11 $00 $1c
    rst $18                                       ; $6d4e: $df
    jr nz, @+$0c                                  ; $6d4f: $20 $0a

    ld a, $00                                     ; $6d51: $3e $00
    ld b, $01                                     ; $6d53: $06 $01
    rst $18                                       ; $6d55: $df
    ld a, [hl+]                                   ; $6d56: $2a
    ld a, [bc]                                    ; $6d57: $0a
    ld a, $00                                     ; $6d58: $3e $00
    ld de, $ff80                                  ; $6d5a: $11 $80 $ff
    rst $18                                       ; $6d5d: $df
    ld b, b                                       ; $6d5e: $40
    ld a, [bc]                                    ; $6d5f: $0a
    ld a, $00                                     ; $6d60: $3e $00
    ld b, $80                                     ; $6d62: $06 $80
    ld de, $0200                                  ; $6d64: $11 $00 $02
    rst $18                                       ; $6d67: $df
    jr z, jr_035_6d74                             ; $6d68: $28 $0a

    ld a, $00                                     ; $6d6a: $3e $00
    rst $18                                       ; $6d6c: $df
    ld e, $0a                                     ; $6d6d: $1e $0a
    ld a, $00                                     ; $6d6f: $3e $00
    ld b, $00                                     ; $6d71: $06 $00
    rst $18                                       ; $6d73: $df

jr_035_6d74:
    ld a, [hl+]                                   ; $6d74: $2a
    ld a, [bc]                                    ; $6d75: $0a
    ld a, $08                                     ; $6d76: $3e $08
    ld b, $80                                     ; $6d78: $06 $80
    ld de, $0200                                  ; $6d7a: $11 $00 $02
    rst $18                                       ; $6d7d: $df
    jr z, jr_035_6d8a                             ; $6d7e: $28 $0a

    ld a, $08                                     ; $6d80: $3e $08
    rst $18                                       ; $6d82: $df
    ld e, $0a                                     ; $6d83: $1e $0a
    ld a, $00                                     ; $6d85: $3e $00
    ld b, a                                       ; $6d87: $47
    ld a, $07                                     ; $6d88: $3e $07

jr_035_6d8a:
    rst $18                                       ; $6d8a: $df
    ld [hl-], a                                   ; $6d8b: $32
    ld a, [bc]                                    ; $6d8c: $0a
    ld a, $00                                     ; $6d8d: $3e $00
    rst $18                                       ; $6d8f: $df
    inc [hl]                                      ; $6d90: $34
    ld a, [bc]                                    ; $6d91: $0a
    ld a, $08                                     ; $6d92: $3e $08
    ld b, a                                       ; $6d94: $47
    ld a, $05                                     ; $6d95: $3e $05
    rst $18                                       ; $6d97: $df
    ld [hl-], a                                   ; $6d98: $32
    ld a, [bc]                                    ; $6d99: $0a
    ld a, $08                                     ; $6d9a: $3e $08
    rst $18                                       ; $6d9c: $df
    inc [hl]                                      ; $6d9d: $34
    ld a, [bc]                                    ; $6d9e: $0a
    push af                                       ; $6d9f: $f5
    ld a, $0a                                     ; $6da0: $3e $0a
    rst $18                                       ; $6da2: $df
    inc b                                         ; $6da3: $04
    ld a, [bc]                                    ; $6da4: $0a
    pop af                                        ; $6da5: $f1
    ld a, $01                                     ; $6da6: $3e $01
    ld [$c441], a                                 ; $6da8: $ea $41 $c4
    ret                                           ; $6dab: $c9


    ld l, e                                       ; $6dac: $6b
    ld l, [hl]                                    ; $6dad: $6e
    ld [hl], d                                    ; $6dae: $72
    ld l, [hl]                                    ; $6daf: $6e
    cp d                                          ; $6db0: $ba
    ld l, l                                       ; $6db1: $6d
    ld a, e                                       ; $6db2: $7b
    ld l, [hl]                                    ; $6db3: $6e
    ld a, h                                       ; $6db4: $7c
    ld l, [hl]                                    ; $6db5: $6e
    ld a, l                                       ; $6db6: $7d
    ld l, [hl]                                    ; $6db7: $6e
    ld a, [hl]                                    ; $6db8: $7e
    ld l, [hl]                                    ; $6db9: $6e
    ld hl, $007b                                  ; $6dba: $21 $7b $00
    inc d                                         ; $6dbd: $14
    nop                                           ; $6dbe: $00
    ld a, [bc]                                    ; $6dbf: $0a
    nop                                           ; $6dc0: $00
    nop                                           ; $6dc1: $00
    nop                                           ; $6dc2: $00
    ld b, b                                       ; $6dc3: $40
    ld bc, $2111                                  ; $6dc4: $01 $11 $21
    ld a, e                                       ; $6dc7: $7b
    nop                                           ; $6dc8: $00
    ld de, $1300                                  ; $6dc9: $11 $00 $13
    nop                                           ; $6dcc: $00
    nop                                           ; $6dcd: $00
    nop                                           ; $6dce: $00
    ret nz                                        ; $6dcf: $c0

    ld bc, $2113                                  ; $6dd0: $01 $13 $21
    ld a, e                                       ; $6dd3: $7b
    nop                                           ; $6dd4: $00
    rla                                           ; $6dd5: $17
    nop                                           ; $6dd6: $00
    inc de                                        ; $6dd7: $13
    nop                                           ; $6dd8: $00
    nop                                           ; $6dd9: $00
    nop                                           ; $6dda: $00
    ret nz                                        ; $6ddb: $c0

    ld bc, $2113                                  ; $6ddc: $01 $13 $21
    ld a, e                                       ; $6ddf: $7b
    nop                                           ; $6de0: $00
    add hl, bc                                    ; $6de1: $09
    nop                                           ; $6de2: $00
    dec bc                                        ; $6de3: $0b
    nop                                           ; $6de4: $00
    nop                                           ; $6de5: $00
    nop                                           ; $6de6: $00
    ld b, b                                       ; $6de7: $40
    ld bc, $2113                                  ; $6de8: $01 $13 $21
    ld a, e                                       ; $6deb: $7b
    nop                                           ; $6dec: $00
    rra                                           ; $6ded: $1f
    nop                                           ; $6dee: $00
    add hl, bc                                    ; $6def: $09
    nop                                           ; $6df0: $00
    nop                                           ; $6df1: $00
    nop                                           ; $6df2: $00
    ld b, b                                       ; $6df3: $40
    ld bc, $2113                                  ; $6df4: $01 $13 $21
    ld a, e                                       ; $6df7: $7b
    nop                                           ; $6df8: $00
    ld [de], a                                    ; $6df9: $12
    nop                                           ; $6dfa: $00
    ld a, [bc]                                    ; $6dfb: $0a
    nop                                           ; $6dfc: $00
    nop                                           ; $6dfd: $00
    nop                                           ; $6dfe: $00
    ld b, b                                       ; $6dff: $40
    ld bc, $2108                                  ; $6e00: $01 $08 $21
    ld a, e                                       ; $6e03: $7b
    nop                                           ; $6e04: $00
    stop                                          ; $6e05: $10 $00
    inc c                                         ; $6e07: $0c
    nop                                           ; $6e08: $00
    nop                                           ; $6e09: $00
    nop                                           ; $6e0a: $00
    nop                                           ; $6e0b: $00
    ld bc, $2109                                  ; $6e0c: $01 $09 $21
    ld a, e                                       ; $6e0f: $7b
    nop                                           ; $6e10: $00
    jr jr_035_6e13                                ; $6e11: $18 $00

jr_035_6e13:
    inc c                                         ; $6e13: $0c
    nop                                           ; $6e14: $00
    nop                                           ; $6e15: $00
    nop                                           ; $6e16: $00
    add b                                         ; $6e17: $80
    ld bc, $211a                                  ; $6e18: $01 $1a $21
    ld a, e                                       ; $6e1b: $7b
    nop                                           ; $6e1c: $00
    ld a, [de]                                    ; $6e1d: $1a
    nop                                           ; $6e1e: $00
    stop                                          ; $6e1f: $10 $00
    nop                                           ; $6e21: $00
    nop                                           ; $6e22: $00
    add b                                         ; $6e23: $80
    ld bc, $2112                                  ; $6e24: $01 $12 $21
    ld a, e                                       ; $6e27: $7b
    nop                                           ; $6e28: $00
    ld a, [de]                                    ; $6e29: $1a
    nop                                           ; $6e2a: $00
    ld c, $00                                     ; $6e2b: $0e $00
    nop                                           ; $6e2d: $00
    nop                                           ; $6e2e: $00
    add b                                         ; $6e2f: $80
    ld bc, $211b                                  ; $6e30: $01 $1b $21
    ld a, e                                       ; $6e33: $7b
    nop                                           ; $6e34: $00
    ld c, $00                                     ; $6e35: $0e $00
    rrca                                          ; $6e37: $0f
    nop                                           ; $6e38: $00
    nop                                           ; $6e39: $00
    nop                                           ; $6e3a: $00
    nop                                           ; $6e3b: $00
    ld bc, $211c                                  ; $6e3c: $01 $1c $21
    ld a, e                                       ; $6e3f: $7b
    nop                                           ; $6e40: $00
    ld [de], a                                    ; $6e41: $12
    nop                                           ; $6e42: $00
    dec e                                         ; $6e43: $1d
    nop                                           ; $6e44: $00
    nop                                           ; $6e45: $00
    nop                                           ; $6e46: $00
    ret nz                                        ; $6e47: $c0

    ld bc, $2119                                  ; $6e48: $01 $19 $21
    ld a, e                                       ; $6e4b: $7b
    nop                                           ; $6e4c: $00
    dec d                                         ; $6e4d: $15
    nop                                           ; $6e4e: $00
    dec e                                         ; $6e4f: $1d
    nop                                           ; $6e50: $00
    nop                                           ; $6e51: $00
    nop                                           ; $6e52: $00
    ret nz                                        ; $6e53: $c0

    ld bc, $2126                                  ; $6e54: $01 $26 $21
    ld a, e                                       ; $6e57: $7b
    nop                                           ; $6e58: $00
    ld bc, $2500                                  ; $6e59: $01 $00 $25
    nop                                           ; $6e5c: $00
    nop                                           ; $6e5d: $00
    nop                                           ; $6e5e: $00
    ret nz                                        ; $6e5f: $c0

    ld bc, $0010                                  ; $6e60: $01 $10 $00
    nop                                           ; $6e63: $00
    nop                                           ; $6e64: $00
    nop                                           ; $6e65: $00
    nop                                           ; $6e66: $00
    nop                                           ; $6e67: $00
    nop                                           ; $6e68: $00
    nop                                           ; $6e69: $00
    rst $38                                       ; $6e6a: $ff
    ld bc, $0040                                  ; $6e6b: $01 $40 $00
    inc d                                         ; $6e6e: $14
    nop                                           ; $6e6f: $00
    add hl, bc                                    ; $6e70: $09
    rst $38                                       ; $6e71: $ff
    ld bc, $00ff                                  ; $6e72: $01 $ff $00
    nop                                           ; $6e75: $00
    nop                                           ; $6e76: $00
    nop                                           ; $6e77: $00
    inc a                                         ; $6e78: $3c
    ld bc, $ffff                                  ; $6e79: $01 $ff $ff
    rst $38                                       ; $6e7c: $ff
    rst $38                                       ; $6e7d: $ff
    ld a, [$c46a]                                 ; $6e7e: $fa $6a $c4
    cp $0a                                        ; $6e81: $fe $0a
    jp nz, Jump_035_6e91                          ; $6e83: $c2 $91 $6e

    ld c, $04                                     ; $6e86: $0e $04
    call Call_000_25af                            ; $6e88: $cd $af $25
    call Call_000_2625                            ; $6e8b: $cd $25 $26
    jp Jump_035_7045                              ; $6e8e: $c3 $45 $70


Jump_035_6e91:
    ld a, $02                                     ; $6e91: $3e $02
    ld bc, $1400                                  ; $6e93: $01 $00 $14
    ld de, $0700                                  ; $6e96: $11 $00 $07
    rst $18                                       ; $6e99: $df
    jr nz, @+$0c                                  ; $6e9a: $20 $0a

    ld a, $06                                     ; $6e9c: $3e $06
    ld bc, $1f00                                  ; $6e9e: $01 $00 $1f
    ld de, $0b00                                  ; $6ea1: $11 $00 $0b
    rst $18                                       ; $6ea4: $df
    jr nz, @+$0c                                  ; $6ea5: $20 $0a

    ld a, $00                                     ; $6ea7: $3e $00
    ld de, $ff00                                  ; $6ea9: $11 $00 $ff
    rst $18                                       ; $6eac: $df
    ld b, b                                       ; $6ead: $40
    ld a, [bc]                                    ; $6eae: $0a
    push af                                       ; $6eaf: $f5
    ld a, $02                                     ; $6eb0: $3e $02
    rst $18                                       ; $6eb2: $df
    inc b                                         ; $6eb3: $04
    ld a, [bc]                                    ; $6eb4: $0a
    pop af                                        ; $6eb5: $f1
    ld c, $04                                     ; $6eb6: $0e $04
    call Call_000_25af                            ; $6eb8: $cd $af $25
    ld a, $00                                     ; $6ebb: $3e $00
    ld b, $01                                     ; $6ebd: $06 $01
    rst $18                                       ; $6ebf: $df
    ld a, [hl+]                                   ; $6ec0: $2a
    ld a, [bc]                                    ; $6ec1: $0a
    xor a                                         ; $6ec2: $af
    ld bc, $1400                                  ; $6ec3: $01 $00 $14
    ld de, $1300                                  ; $6ec6: $11 $00 $13
    rst $18                                       ; $6ec9: $df
    jr c, @+$0c                                   ; $6eca: $38 $0a

    push af                                       ; $6ecc: $f5
    ld a, $02                                     ; $6ecd: $3e $02
    rst $18                                       ; $6ecf: $df
    inc b                                         ; $6ed0: $04
    ld a, [bc]                                    ; $6ed1: $0a
    pop af                                        ; $6ed2: $f1
    ld a, $00                                     ; $6ed3: $3e $00
    ld bc, $1400                                  ; $6ed5: $01 $00 $14
    ld de, $0f00                                  ; $6ed8: $11 $00 $0f
    rst $18                                       ; $6edb: $df
    ld [hl+], a                                   ; $6edc: $22
    ld a, [bc]                                    ; $6edd: $0a
    ld a, $00                                     ; $6ede: $3e $00
    rst $18                                       ; $6ee0: $df
    ld e, $0a                                     ; $6ee1: $1e $0a
    push af                                       ; $6ee3: $f5
    ld a, $02                                     ; $6ee4: $3e $02
    rst $18                                       ; $6ee6: $df
    inc b                                         ; $6ee7: $04
    ld a, [bc]                                    ; $6ee8: $0a
    pop af                                        ; $6ee9: $f1
    ld a, $00                                     ; $6eea: $3e $00
    ld de, $ff80                                  ; $6eec: $11 $80 $ff
    rst $18                                       ; $6eef: $df
    ld b, b                                       ; $6ef0: $40
    ld a, [bc]                                    ; $6ef1: $0a
    ld a, $00                                     ; $6ef2: $3e $00
    rst $18                                       ; $6ef4: $df
    ld b, d                                       ; $6ef5: $42
    ld a, [bc]                                    ; $6ef6: $0a
    ld a, $00                                     ; $6ef7: $3e $00
    ld b, $00                                     ; $6ef9: $06 $00
    rst $18                                       ; $6efb: $df
    ld a, [hl+]                                   ; $6efc: $2a
    ld a, [bc]                                    ; $6efd: $0a
    push af                                       ; $6efe: $f5
    ld a, $02                                     ; $6eff: $3e $02
    rst $18                                       ; $6f01: $df
    inc b                                         ; $6f02: $04
    ld a, [bc]                                    ; $6f03: $0a
    pop af                                        ; $6f04: $f1
    ld a, $00                                     ; $6f05: $3e $00
    ld de, $ff80                                  ; $6f07: $11 $80 $ff
    rst $18                                       ; $6f0a: $df
    ld b, b                                       ; $6f0b: $40
    ld a, [bc]                                    ; $6f0c: $0a
    ld a, $00                                     ; $6f0d: $3e $00
    rst $18                                       ; $6f0f: $df
    ld b, d                                       ; $6f10: $42
    ld a, [bc]                                    ; $6f11: $0a
    push af                                       ; $6f12: $f5
    ld a, $14                                     ; $6f13: $3e $14
    rst $18                                       ; $6f15: $df
    inc b                                         ; $6f16: $04
    ld a, [bc]                                    ; $6f17: $0a
    pop af                                        ; $6f18: $f1
    ld a, $03                                     ; $6f19: $3e $03
    ld de, $ff80                                  ; $6f1b: $11 $80 $ff
    rst $18                                       ; $6f1e: $df
    ld b, b                                       ; $6f1f: $40
    ld a, [bc]                                    ; $6f20: $0a
    ld a, $03                                     ; $6f21: $3e $03
    rst $18                                       ; $6f23: $df
    ld b, d                                       ; $6f24: $42
    ld a, [bc]                                    ; $6f25: $0a
    ld a, $03                                     ; $6f26: $3e $03
    ld bc, $1280                                  ; $6f28: $01 $80 $12
    ld de, $1100                                  ; $6f2b: $11 $00 $11
    rst $18                                       ; $6f2e: $df
    ld [hl+], a                                   ; $6f2f: $22
    ld a, [bc]                                    ; $6f30: $0a
    ld a, $03                                     ; $6f31: $3e $03
    rst $18                                       ; $6f33: $df
    ld e, $0a                                     ; $6f34: $1e $0a
    ld a, $00                                     ; $6f36: $3e $00
    ld b, a                                       ; $6f38: $47
    ld a, $03                                     ; $6f39: $3e $03
    rst $18                                       ; $6f3b: $df
    ld l, $0a                                     ; $6f3c: $2e $0a
    push af                                       ; $6f3e: $f5
    ld a, $1e                                     ; $6f3f: $3e $1e
    rst $18                                       ; $6f41: $df
    inc b                                         ; $6f42: $04
    ld a, [bc]                                    ; $6f43: $0a
    pop af                                        ; $6f44: $f1
    ld a, $03                                     ; $6f45: $3e $03
    ld b, a                                       ; $6f47: $47
    ld a, $05                                     ; $6f48: $3e $05
    rst $18                                       ; $6f4a: $df
    ld [hl-], a                                   ; $6f4b: $32
    ld a, [bc]                                    ; $6f4c: $0a
    ld a, $03                                     ; $6f4d: $3e $03
    rst $18                                       ; $6f4f: $df
    inc [hl]                                      ; $6f50: $34
    ld a, [bc]                                    ; $6f51: $0a
    ld a, $02                                     ; $6f52: $3e $02
    ld b, a                                       ; $6f54: $47
    ld a, $03                                     ; $6f55: $3e $03
    rst $18                                       ; $6f57: $df
    ld l, $0a                                     ; $6f58: $2e $0a
    ld a, $03                                     ; $6f5a: $3e $03
    ld b, $01                                     ; $6f5c: $06 $01
    rst $18                                       ; $6f5e: $df
    ld a, [hl+]                                   ; $6f5f: $2a
    ld a, [bc]                                    ; $6f60: $0a
    ld a, $02                                     ; $6f61: $3e $02
    ld b, $00                                     ; $6f63: $06 $00
    rst $18                                       ; $6f65: $df
    ld a, [hl-]                                   ; $6f66: $3a
    ld a, [bc]                                    ; $6f67: $0a
    ld a, $03                                     ; $6f68: $3e $03
    ld bc, $1100                                  ; $6f6a: $01 $00 $11
    ld de, $1300                                  ; $6f6d: $11 $00 $13
    rst $18                                       ; $6f70: $df
    ld [hl+], a                                   ; $6f71: $22
    ld a, [bc]                                    ; $6f72: $0a
    ld a, $03                                     ; $6f73: $3e $03
    rst $18                                       ; $6f75: $df
    ld e, $0a                                     ; $6f76: $1e $0a
    ld a, $03                                     ; $6f78: $3e $03
    ld b, $00                                     ; $6f7a: $06 $00
    rst $18                                       ; $6f7c: $df
    ld a, [hl+]                                   ; $6f7d: $2a
    ld a, [bc]                                    ; $6f7e: $0a
    ld a, $02                                     ; $6f7f: $3e $02
    ld b, a                                       ; $6f81: $47
    ld a, $05                                     ; $6f82: $3e $05
    rst $18                                       ; $6f84: $df
    ld [hl-], a                                   ; $6f85: $32
    ld a, [bc]                                    ; $6f86: $0a
    ld a, $02                                     ; $6f87: $3e $02
    rst $18                                       ; $6f89: $df
    inc [hl]                                      ; $6f8a: $34
    ld a, [bc]                                    ; $6f8b: $0a
    push af                                       ; $6f8c: $f5
    ld a, $0a                                     ; $6f8d: $3e $0a
    rst $18                                       ; $6f8f: $df
    inc b                                         ; $6f90: $04
    ld a, [bc]                                    ; $6f91: $0a
    pop af                                        ; $6f92: $f1
    ld a, $02                                     ; $6f93: $3e $02
    ld b, a                                       ; $6f95: $47
    ld a, $00                                     ; $6f96: $3e $00
    rst $18                                       ; $6f98: $df
    ld l, $0a                                     ; $6f99: $2e $0a
    ld a, $00                                     ; $6f9b: $3e $00
    ld b, a                                       ; $6f9d: $47
    ld a, $05                                     ; $6f9e: $3e $05
    rst $18                                       ; $6fa0: $df
    ld [hl-], a                                   ; $6fa1: $32
    ld a, [bc]                                    ; $6fa2: $0a
    ld a, $00                                     ; $6fa3: $3e $00
    rst $18                                       ; $6fa5: $df
    inc [hl]                                      ; $6fa6: $34
    ld a, [bc]                                    ; $6fa7: $0a
    push af                                       ; $6fa8: $f5
    ld a, $0a                                     ; $6fa9: $3e $0a
    rst $18                                       ; $6fab: $df
    inc b                                         ; $6fac: $04
    ld a, [bc]                                    ; $6fad: $0a
    pop af                                        ; $6fae: $f1
    ld a, $02                                     ; $6faf: $3e $02
    ld b, a                                       ; $6fb1: $47
    ld a, $07                                     ; $6fb2: $3e $07
    rst $18                                       ; $6fb4: $df
    ld [hl-], a                                   ; $6fb5: $32
    ld a, [bc]                                    ; $6fb6: $0a
    ld a, $02                                     ; $6fb7: $3e $02
    rst $18                                       ; $6fb9: $df
    inc [hl]                                      ; $6fba: $34
    ld a, [bc]                                    ; $6fbb: $0a
    ld a, $02                                     ; $6fbc: $3e $02
    ld bc, $1400                                  ; $6fbe: $01 $00 $14
    ld de, $0a00                                  ; $6fc1: $11 $00 $0a
    rst $18                                       ; $6fc4: $df
    ld [hl+], a                                   ; $6fc5: $22
    ld a, [bc]                                    ; $6fc6: $0a
    ld a, $02                                     ; $6fc7: $3e $02
    rst $18                                       ; $6fc9: $df
    ld e, $0a                                     ; $6fca: $1e $0a
    ld a, $02                                     ; $6fcc: $3e $02
    ld b, $80                                     ; $6fce: $06 $80
    rst $18                                       ; $6fd0: $df
    inc l                                         ; $6fd1: $2c
    ld a, [bc]                                    ; $6fd2: $0a
    push af                                       ; $6fd3: $f5
    ld a, $1e                                     ; $6fd4: $3e $1e
    rst $18                                       ; $6fd6: $df
    inc b                                         ; $6fd7: $04
    ld a, [bc]                                    ; $6fd8: $0a
    pop af                                        ; $6fd9: $f1
    ld a, $02                                     ; $6fda: $3e $02
    ld b, $40                                     ; $6fdc: $06 $40
    rst $18                                       ; $6fde: $df
    inc l                                         ; $6fdf: $2c
    ld a, [bc]                                    ; $6fe0: $0a
    push af                                       ; $6fe1: $f5
    ld a, $1e                                     ; $6fe2: $3e $1e
    rst $18                                       ; $6fe4: $df
    inc b                                         ; $6fe5: $04
    ld a, [bc]                                    ; $6fe6: $0a
    pop af                                        ; $6fe7: $f1
    ld a, $02                                     ; $6fe8: $3e $02
    ld b, $00                                     ; $6fea: $06 $00
    rst $18                                       ; $6fec: $df
    inc l                                         ; $6fed: $2c
    ld a, [bc]                                    ; $6fee: $0a
    push af                                       ; $6fef: $f5
    ld a, $1e                                     ; $6ff0: $3e $1e
    rst $18                                       ; $6ff2: $df
    inc b                                         ; $6ff3: $04
    ld a, [bc]                                    ; $6ff4: $0a
    pop af                                        ; $6ff5: $f1
    ld a, $02                                     ; $6ff6: $3e $02
    ld b, $40                                     ; $6ff8: $06 $40
    rst $18                                       ; $6ffa: $df
    inc l                                         ; $6ffb: $2c
    ld a, [bc]                                    ; $6ffc: $0a
    ld a, $00                                     ; $6ffd: $3e $00
    ld b, $00                                     ; $6fff: $06 $00
    rst $18                                       ; $7001: $df
    ld a, [hl-]                                   ; $7002: $3a
    ld a, [bc]                                    ; $7003: $0a
    rst $18                                       ; $7004: $df
    inc a                                         ; $7005: $3c
    ld a, [bc]                                    ; $7006: $0a
    ld a, $02                                     ; $7007: $3e $02
    ld b, a                                       ; $7009: $47
    ld a, $05                                     ; $700a: $3e $05
    rst $18                                       ; $700c: $df
    ld [hl-], a                                   ; $700d: $32
    ld a, [bc]                                    ; $700e: $0a
    ld a, $02                                     ; $700f: $3e $02
    rst $18                                       ; $7011: $df
    inc [hl]                                      ; $7012: $34
    ld a, [bc]                                    ; $7013: $0a
    ld a, $0c                                     ; $7014: $3e $0c
    ld b, a                                       ; $7016: $47
    ld a, $07                                     ; $7017: $3e $07
    rst $18                                       ; $7019: $df
    ld [hl-], a                                   ; $701a: $32
    ld a, [bc]                                    ; $701b: $0a
    ld a, $0c                                     ; $701c: $3e $0c
    rst $18                                       ; $701e: $df
    inc [hl]                                      ; $701f: $34
    ld a, [bc]                                    ; $7020: $0a
    ld a, $00                                     ; $7021: $3e $00
    ld b, $80                                     ; $7023: $06 $80
    rst $18                                       ; $7025: $df
    inc l                                         ; $7026: $2c
    ld a, [bc]                                    ; $7027: $0a
    ld a, $0c                                     ; $7028: $3e $0c
    ld bc, $1000                                  ; $702a: $01 $00 $10
    ld de, $0f00                                  ; $702d: $11 $00 $0f
    rst $18                                       ; $7030: $df
    ld [hl+], a                                   ; $7031: $22
    ld a, [bc]                                    ; $7032: $0a
    ld a, $0c                                     ; $7033: $3e $0c
    rst $18                                       ; $7035: $df
    ld e, $0a                                     ; $7036: $1e $0a
    ld a, $0c                                     ; $7038: $3e $0c
    ld b, a                                       ; $703a: $47
    ld a, $06                                     ; $703b: $3e $06
    rst $18                                       ; $703d: $df
    ld [hl-], a                                   ; $703e: $32
    ld a, [bc]                                    ; $703f: $0a
    ld a, $0c                                     ; $7040: $3e $0c
    rst $18                                       ; $7042: $df
    inc [hl]                                      ; $7043: $34
    ld a, [bc]                                    ; $7044: $0a

Jump_035_7045:
    call Call_035_7122                            ; $7045: $cd $22 $71
    ld a, $0a                                     ; $7048: $3e $0a
    ld de, $ff80                                  ; $704a: $11 $80 $ff
    rst $18                                       ; $704d: $df
    ld b, b                                       ; $704e: $40
    ld a, [bc]                                    ; $704f: $0a
    ld a, $0a                                     ; $7050: $3e $0a
    ld bc, $1800                                  ; $7052: $01 $00 $18
    ld de, $1000                                  ; $7055: $11 $00 $10
    rst $18                                       ; $7058: $df
    ld [hl+], a                                   ; $7059: $22
    ld a, [bc]                                    ; $705a: $0a
    ld a, $0a                                     ; $705b: $3e $0a
    rst $18                                       ; $705d: $df
    ld e, $0a                                     ; $705e: $1e $0a
    ld a, $0a                                     ; $7060: $3e $0a
    ld b, a                                       ; $7062: $47
    ld a, $07                                     ; $7063: $3e $07
    rst $18                                       ; $7065: $df
    ld [hl-], a                                   ; $7066: $32
    ld a, [bc]                                    ; $7067: $0a
    ld a, $0a                                     ; $7068: $3e $0a
    rst $18                                       ; $706a: $df
    inc [hl]                                      ; $706b: $34
    ld a, [bc]                                    ; $706c: $0a
    ldh a, [$95]                                  ; $706d: $f0 $95
    ld b, a                                       ; $706f: $47
    ld a, $0a                                     ; $7070: $3e $0a
    ld de, $70e1                                  ; $7072: $11 $e1 $70
    rst $18                                       ; $7075: $df
    jr jr_035_7082                                ; $7076: $18 $0a

    call Call_035_716f                            ; $7078: $cd $6f $71
    ld a, $0a                                     ; $707b: $3e $0a
    ld b, a                                       ; $707d: $47
    ld a, $06                                     ; $707e: $3e $06
    rst $18                                       ; $7080: $df
    ld [hl-], a                                   ; $7081: $32

jr_035_7082:
    ld a, [bc]                                    ; $7082: $0a
    ld a, $0a                                     ; $7083: $3e $0a
    rst $18                                       ; $7085: $df
    inc [hl]                                      ; $7086: $34
    ld a, [bc]                                    ; $7087: $0a
    ld a, $0a                                     ; $7088: $3e $0a
    ld b, a                                       ; $708a: $47
    ld a, $06                                     ; $708b: $3e $06
    rst $18                                       ; $708d: $df
    ld [hl-], a                                   ; $708e: $32
    ld a, [bc]                                    ; $708f: $0a
    ld a, $0a                                     ; $7090: $3e $0a
    ld de, $ff80                                  ; $7092: $11 $80 $ff
    rst $18                                       ; $7095: $df
    ld b, b                                       ; $7096: $40
    ld a, [bc]                                    ; $7097: $0a
    ld a, $0a                                     ; $7098: $3e $0a
    rst $18                                       ; $709a: $df
    ld b, d                                       ; $709b: $42
    ld a, [bc]                                    ; $709c: $0a
    ld a, $0a                                     ; $709d: $3e $0a
    ld b, a                                       ; $709f: $47
    ld a, $07                                     ; $70a0: $3e $07
    rst $18                                       ; $70a2: $df
    ld [hl-], a                                   ; $70a3: $32
    ld a, [bc]                                    ; $70a4: $0a
    call Call_035_716f                            ; $70a5: $cd $6f $71
    push af                                       ; $70a8: $f5
    ld a, $0a                                     ; $70a9: $3e $0a
    rst $18                                       ; $70ab: $df
    inc b                                         ; $70ac: $04
    ld a, [bc]                                    ; $70ad: $0a
    pop af                                        ; $70ae: $f1
    ld a, $0a                                     ; $70af: $3e $0a
    ld b, a                                       ; $70b1: $47
    ld a, $06                                     ; $70b2: $3e $06
    rst $18                                       ; $70b4: $df
    ld [hl-], a                                   ; $70b5: $32
    ld a, [bc]                                    ; $70b6: $0a
    call Call_035_716f                            ; $70b7: $cd $6f $71
    push af                                       ; $70ba: $f5
    ld a, $0a                                     ; $70bb: $3e $0a
    rst $18                                       ; $70bd: $df
    inc b                                         ; $70be: $04
    ld a, [bc]                                    ; $70bf: $0a
    pop af                                        ; $70c0: $f1
    ld a, $0f                                     ; $70c1: $3e $0f
    ld bc, $1800                                  ; $70c3: $01 $00 $18
    ld de, $0e00                                  ; $70c6: $11 $00 $0e
    rst $18                                       ; $70c9: $df
    jr nz, @+$0c                                  ; $70ca: $20 $0a

    ld a, $0f                                     ; $70cc: $3e $0f
    ld b, a                                       ; $70ce: $47
    ld a, $00                                     ; $70cf: $3e $00
    rst $18                                       ; $70d1: $df
    ld [hl-], a                                   ; $70d2: $32
    ld a, [bc]                                    ; $70d3: $0a
    push af                                       ; $70d4: $f5
    ld a, $02                                     ; $70d5: $3e $02
    rst $18                                       ; $70d7: $df
    inc b                                         ; $70d8: $04
    ld a, [bc]                                    ; $70d9: $0a
    pop af                                        ; $70da: $f1
    ld a, $01                                     ; $70db: $3e $01
    ld [$c441], a                                 ; $70dd: $ea $41 $c4
    ret                                           ; $70e0: $c9


    ld c, $35                                     ; $70e1: $0e $35
    ld [bc], a                                    ; $70e3: $02
    nop                                           ; $70e4: $00
    ld bc, $0005                                  ; $70e5: $01 $05 $00
    ld c, $35                                     ; $70e8: $0e $35
    ld bc, $0100                                  ; $70ea: $01 $00 $01
    dec b                                         ; $70ed: $05
    nop                                           ; $70ee: $00
    rst $30                                       ; $70ef: $f7
    ldh [rIF], a                                  ; $70f0: $e0 $0f
    jr z, jr_035_7121                             ; $70f2: $28 $2d

    ld b, $2a                                     ; $70f4: $06 $2a
    ld c, $06                                     ; $70f6: $0e $06
    ld d, $1a                                     ; $70f8: $16 $1a
    ld e, $06                                     ; $70fa: $1e $06
    ld h, $08                                     ; $70fc: $26 $08
    ld l, $05                                     ; $70fe: $2e $05
    rst $18                                       ; $7100: $df
    ld a, [bc]                                    ; $7101: $0a
    dec bc                                        ; $7102: $0b
    ld b, $2a                                     ; $7103: $06 $2a
    ld c, $06                                     ; $7105: $0e $06
    ld d, $1a                                     ; $7107: $16 $1a
    ld e, $06                                     ; $7109: $1e $06
    ld h, $08                                     ; $710b: $26 $08
    ld l, $05                                     ; $710d: $2e $05
    rst $18                                       ; $710f: $df
    inc c                                         ; $7110: $0c
    dec bc                                        ; $7111: $0b
    ld b, $2a                                     ; $7112: $06 $2a
    ld c, $06                                     ; $7114: $0e $06
    ld d, $1a                                     ; $7116: $16 $1a
    ld e, $06                                     ; $7118: $1e $06
    ld h, $08                                     ; $711a: $26 $08
    ld l, $05                                     ; $711c: $2e $05
    rst $18                                       ; $711e: $df
    ld c, $0b                                     ; $711f: $0e $0b

jr_035_7121:
    ret                                           ; $7121: $c9


Call_035_7122:
    xor a                                         ; $7122: $af
    ldh [rVBK], a                                 ; $7123: $e0 $4f
    ld hl, $71c0                                  ; $7125: $21 $c0 $71
    ld de, $8500                                  ; $7128: $11 $00 $85
    ld c, $18                                     ; $712b: $0e $18
    call Call_000_0468                            ; $712d: $cd $68 $04
    ld hl, $734d                                  ; $7130: $21 $4d $73
    ld de, $0f01                                  ; $7133: $11 $01 $0f
    call Call_000_056c                            ; $7136: $cd $6c $05
    ret                                           ; $7139: $c9


Call_035_713a:
    ld h, $06                                     ; $713a: $26 $06

jr_035_713c:
    push hl                                       ; $713c: $e5
    push bc                                       ; $713d: $c5
    ld hl, $c320                                  ; $713e: $21 $20 $c3
    ld a, [hl+]                                   ; $7141: $2a
    ld d, [hl]                                    ; $7142: $56
    ld e, a                                       ; $7143: $5f
    ld hl, $1600                                  ; $7144: $21 $00 $16
    call Call_000_08ac                            ; $7147: $cd $ac $08
    add hl, hl                                    ; $714a: $29
    add hl, hl                                    ; $714b: $29
    add hl, hl                                    ; $714c: $29
    push hl                                       ; $714d: $e5
    ld hl, $c322                                  ; $714e: $21 $22 $c3
    ld a, [hl+]                                   ; $7151: $2a
    ld d, [hl]                                    ; $7152: $56
    ld e, a                                       ; $7153: $5f
    ld hl, $0c80                                  ; $7154: $21 $80 $0c
    call Call_000_08ac                            ; $7157: $cd $ac $08
    add hl, hl                                    ; $715a: $29
    add hl, hl                                    ; $715b: $29
    add hl, hl                                    ; $715c: $29
    ld e, h                                       ; $715d: $5c
    pop hl                                        ; $715e: $e1
    ld d, h                                       ; $715f: $54
    ld hl, $7340                                  ; $7160: $21 $40 $73
    call Call_000_26ea                            ; $7163: $cd $ea $26
    call Call_000_2e3b                            ; $7166: $cd $3b $2e
    pop bc                                        ; $7169: $c1
    pop hl                                        ; $716a: $e1
    dec h                                         ; $716b: $25
    jr nz, jr_035_713c                            ; $716c: $20 $ce

    ret                                           ; $716e: $c9


Call_035_716f:
    ld bc, $0750                                  ; $716f: $01 $50 $07
    call Call_035_713a                            ; $7172: $cd $3a $71
    ld bc, $0756                                  ; $7175: $01 $56 $07
    call Call_035_713a                            ; $7178: $cd $3a $71
    ld bc, $075c                                  ; $717b: $01 $5c $07
    call Call_035_713a                            ; $717e: $cd $3a $71
    ld bc, $0750                                  ; $7181: $01 $50 $07
    call Call_035_713a                            ; $7184: $cd $3a $71
    ld bc, $0756                                  ; $7187: $01 $56 $07
    call Call_035_713a                            ; $718a: $cd $3a $71
    ld bc, $075c                                  ; $718d: $01 $5c $07
    call Call_035_713a                            ; $7190: $cd $3a $71
    ld bc, $0750                                  ; $7193: $01 $50 $07
    call Call_035_713a                            ; $7196: $cd $3a $71
    ld bc, $0756                                  ; $7199: $01 $56 $07
    call Call_035_713a                            ; $719c: $cd $3a $71
    ld bc, $075c                                  ; $719f: $01 $5c $07
    call Call_035_713a                            ; $71a2: $cd $3a $71
    ld bc, $0750                                  ; $71a5: $01 $50 $07
    call Call_035_713a                            ; $71a8: $cd $3a $71
    ld bc, $0756                                  ; $71ab: $01 $56 $07
    call Call_035_713a                            ; $71ae: $cd $3a $71
    ld bc, $075c                                  ; $71b1: $01 $5c $07
    call Call_035_713a                            ; $71b4: $cd $3a $71
    ret                                           ; $71b7: $c9


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
    rrca                                          ; $71c6: $0f
    rrca                                          ; $71c7: $0f
    rra                                           ; $71c8: $1f
    jr jr_035_71ea                                ; $71c9: $18 $1f

    db $10                                        ; $71cb: $10
    rra                                           ; $71cc: $1f
    db $10                                        ; $71cd: $10
    ld a, a                                       ; $71ce: $7f
    ld [hl], b                                    ; $71cf: $70
    rst $38                                       ; $71d0: $ff
    ret nz                                        ; $71d1: $c0

    rst $38                                       ; $71d2: $ff
    add b                                         ; $71d3: $80
    rst $38                                       ; $71d4: $ff
    add b                                         ; $71d5: $80
    rst $38                                       ; $71d6: $ff
    ret nz                                        ; $71d7: $c0

    ld a, e                                       ; $71d8: $7b
    ld a, h                                       ; $71d9: $7c
    rrca                                          ; $71da: $0f
    ld c, $03                                     ; $71db: $0e $03
    inc bc                                        ; $71dd: $03
    ld bc, $0001                                  ; $71de: $01 $01 $00
    nop                                           ; $71e1: $00
    nop                                           ; $71e2: $00
    nop                                           ; $71e3: $00
    nop                                           ; $71e4: $00
    nop                                           ; $71e5: $00
    add b                                         ; $71e6: $80
    add b                                         ; $71e7: $80
    ret nz                                        ; $71e8: $c0

    ret nz                                        ; $71e9: $c0

jr_035_71ea:
    ret nz                                        ; $71ea: $c0

    ld b, b                                       ; $71eb: $40
    ldh a, [rSVBK]                                ; $71ec: $f0 $70
    ld hl, sp+$18                                 ; $71ee: $f8 $18
    ld hl, sp+$08                                 ; $71f0: $f8 $08
    ld hl, sp+$08                                 ; $71f2: $f8 $08
    ld hl, sp+$18                                 ; $71f4: $f8 $18
    or b                                          ; $71f6: $b0
    ld [hl], b                                    ; $71f7: $70
    ldh [$60], a                                  ; $71f8: $e0 $60
    ret nz                                        ; $71fa: $c0

    ld b, b                                       ; $71fb: $40
    ret nz                                        ; $71fc: $c0

    ld b, b                                       ; $71fd: $40
    ret nz                                        ; $71fe: $c0

    ret nz                                        ; $71ff: $c0

    nop                                           ; $7200: $00
    nop                                           ; $7201: $00
    nop                                           ; $7202: $00
    nop                                           ; $7203: $00
    nop                                           ; $7204: $00
    nop                                           ; $7205: $00
    nop                                           ; $7206: $00
    nop                                           ; $7207: $00
    nop                                           ; $7208: $00
    nop                                           ; $7209: $00
    nop                                           ; $720a: $00
    nop                                           ; $720b: $00
    nop                                           ; $720c: $00
    nop                                           ; $720d: $00
    nop                                           ; $720e: $00
    nop                                           ; $720f: $00
    nop                                           ; $7210: $00
    nop                                           ; $7211: $00
    nop                                           ; $7212: $00
    nop                                           ; $7213: $00
    nop                                           ; $7214: $00
    nop                                           ; $7215: $00
    nop                                           ; $7216: $00
    nop                                           ; $7217: $00
    nop                                           ; $7218: $00
    nop                                           ; $7219: $00
    nop                                           ; $721a: $00
    nop                                           ; $721b: $00
    nop                                           ; $721c: $00
    nop                                           ; $721d: $00
    nop                                           ; $721e: $00
    nop                                           ; $721f: $00
    nop                                           ; $7220: $00
    nop                                           ; $7221: $00
    nop                                           ; $7222: $00
    nop                                           ; $7223: $00
    nop                                           ; $7224: $00
    nop                                           ; $7225: $00
    ld bc, $0301                                  ; $7226: $01 $01 $03
    inc bc                                        ; $7229: $03
    inc bc                                        ; $722a: $03
    ld [bc], a                                    ; $722b: $02
    inc bc                                        ; $722c: $03
    ld [bc], a                                    ; $722d: $02
    inc bc                                        ; $722e: $03
    inc bc                                        ; $722f: $03
    ld bc, $0001                                  ; $7230: $01 $01 $00
    nop                                           ; $7233: $00
    nop                                           ; $7234: $00
    nop                                           ; $7235: $00
    nop                                           ; $7236: $00
    nop                                           ; $7237: $00
    nop                                           ; $7238: $00
    nop                                           ; $7239: $00
    nop                                           ; $723a: $00
    nop                                           ; $723b: $00
    nop                                           ; $723c: $00
    nop                                           ; $723d: $00
    nop                                           ; $723e: $00
    nop                                           ; $723f: $00
    ld a, $3e                                     ; $7240: $3e $3e
    ld a, a                                       ; $7242: $7f
    ld h, e                                       ; $7243: $63
    ld a, a                                       ; $7244: $7f
    ld b, c                                       ; $7245: $41
    rst $38                                       ; $7246: $ff
    pop bc                                        ; $7247: $c1
    rst $38                                       ; $7248: $ff
    nop                                           ; $7249: $00
    rst $38                                       ; $724a: $ff
    nop                                           ; $724b: $00
    rst $38                                       ; $724c: $ff
    nop                                           ; $724d: $00
    rst $38                                       ; $724e: $ff
    nop                                           ; $724f: $00
    rst $38                                       ; $7250: $ff
    db $e3                                        ; $7251: $e3
    ld a, [hl+]                                   ; $7252: $2a
    ld [hl], $3e                                  ; $7253: $36 $3e
    ld [hl], $14                                  ; $7255: $36 $14
    inc e                                         ; $7257: $1c
    inc e                                         ; $7258: $1c
    inc e                                         ; $7259: $1c
    ld [$0008], sp                                ; $725a: $08 $08 $00
    nop                                           ; $725d: $00
    nop                                           ; $725e: $00
    nop                                           ; $725f: $00
    nop                                           ; $7260: $00
    nop                                           ; $7261: $00
    nop                                           ; $7262: $00
    nop                                           ; $7263: $00
    nop                                           ; $7264: $00
    nop                                           ; $7265: $00
    ret nz                                        ; $7266: $c0

    ret nz                                        ; $7267: $c0

    ldh [$60], a                                  ; $7268: $e0 $60
    ldh [rNR41], a                                ; $726a: $e0 $20
    ldh [rNR41], a                                ; $726c: $e0 $20
    ldh [$60], a                                  ; $726e: $e0 $60
    ret nz                                        ; $7270: $c0

    ret nz                                        ; $7271: $c0

    nop                                           ; $7272: $00
    nop                                           ; $7273: $00
    nop                                           ; $7274: $00
    nop                                           ; $7275: $00
    nop                                           ; $7276: $00
    nop                                           ; $7277: $00
    nop                                           ; $7278: $00
    nop                                           ; $7279: $00
    nop                                           ; $727a: $00
    nop                                           ; $727b: $00
    nop                                           ; $727c: $00
    nop                                           ; $727d: $00
    nop                                           ; $727e: $00
    nop                                           ; $727f: $00
    nop                                           ; $7280: $00
    nop                                           ; $7281: $00
    nop                                           ; $7282: $00
    nop                                           ; $7283: $00
    nop                                           ; $7284: $00
    nop                                           ; $7285: $00
    nop                                           ; $7286: $00
    nop                                           ; $7287: $00
    nop                                           ; $7288: $00
    nop                                           ; $7289: $00
    nop                                           ; $728a: $00
    nop                                           ; $728b: $00
    nop                                           ; $728c: $00
    nop                                           ; $728d: $00
    nop                                           ; $728e: $00
    nop                                           ; $728f: $00
    nop                                           ; $7290: $00
    nop                                           ; $7291: $00
    nop                                           ; $7292: $00
    nop                                           ; $7293: $00
    nop                                           ; $7294: $00
    nop                                           ; $7295: $00
    nop                                           ; $7296: $00
    nop                                           ; $7297: $00
    nop                                           ; $7298: $00
    nop                                           ; $7299: $00
    nop                                           ; $729a: $00
    nop                                           ; $729b: $00
    nop                                           ; $729c: $00
    nop                                           ; $729d: $00
    nop                                           ; $729e: $00
    nop                                           ; $729f: $00
    nop                                           ; $72a0: $00
    nop                                           ; $72a1: $00
    nop                                           ; $72a2: $00
    nop                                           ; $72a3: $00
    nop                                           ; $72a4: $00
    nop                                           ; $72a5: $00
    ld bc, $0301                                  ; $72a6: $01 $01 $03
    inc bc                                        ; $72a9: $03
    inc bc                                        ; $72aa: $03
    ld [bc], a                                    ; $72ab: $02
    rrca                                          ; $72ac: $0f
    ld c, $1f                                     ; $72ad: $0e $1f
    jr jr_035_72d0                                ; $72af: $18 $1f

    db $10                                        ; $72b1: $10
    rra                                           ; $72b2: $1f
    db $10                                        ; $72b3: $10
    rra                                           ; $72b4: $1f
    jr jr_035_72c4                                ; $72b5: $18 $0d

    ld c, $07                                     ; $72b7: $0e $07
    ld b, $03                                     ; $72b9: $06 $03
    ld [bc], a                                    ; $72bb: $02
    inc bc                                        ; $72bc: $03
    ld [bc], a                                    ; $72bd: $02
    inc bc                                        ; $72be: $03
    inc bc                                        ; $72bf: $03
    nop                                           ; $72c0: $00
    nop                                           ; $72c1: $00
    nop                                           ; $72c2: $00
    nop                                           ; $72c3: $00

jr_035_72c4:
    nop                                           ; $72c4: $00
    nop                                           ; $72c5: $00
    ldh a, [$f0]                                  ; $72c6: $f0 $f0
    ld hl, sp+$18                                 ; $72c8: $f8 $18
    ld hl, sp+$08                                 ; $72ca: $f8 $08
    ld hl, sp+$08                                 ; $72cc: $f8 $08
    cp $0e                                        ; $72ce: $fe $0e

jr_035_72d0:
    rst $38                                       ; $72d0: $ff
    inc bc                                        ; $72d1: $03
    rst $38                                       ; $72d2: $ff
    ld bc, $01ff                                  ; $72d3: $01 $ff $01
    rst $38                                       ; $72d6: $ff
    inc bc                                        ; $72d7: $03
    sbc $3e                                       ; $72d8: $de $3e
    ldh a, [rSVBK]                                ; $72da: $f0 $70
    ret nz                                        ; $72dc: $c0

    ret nz                                        ; $72dd: $c0

    add b                                         ; $72de: $80
    add b                                         ; $72df: $80
    nop                                           ; $72e0: $00
    nop                                           ; $72e1: $00
    nop                                           ; $72e2: $00
    nop                                           ; $72e3: $00
    nop                                           ; $72e4: $00
    nop                                           ; $72e5: $00
    ld bc, $0301                                  ; $72e6: $01 $01 $03
    inc bc                                        ; $72e9: $03
    inc bc                                        ; $72ea: $03
    ld [bc], a                                    ; $72eb: $02
    inc bc                                        ; $72ec: $03
    ld [bc], a                                    ; $72ed: $02
    inc bc                                        ; $72ee: $03
    inc bc                                        ; $72ef: $03
    ld bc, $0001                                  ; $72f0: $01 $01 $00
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
    ld a, $3e                                     ; $7300: $3e $3e
    ld a, a                                       ; $7302: $7f
    ld h, e                                       ; $7303: $63
    ld a, a                                       ; $7304: $7f
    ld b, c                                       ; $7305: $41
    rst $38                                       ; $7306: $ff
    pop bc                                        ; $7307: $c1
    rst $38                                       ; $7308: $ff
    nop                                           ; $7309: $00
    rst $38                                       ; $730a: $ff
    nop                                           ; $730b: $00
    rst $38                                       ; $730c: $ff
    nop                                           ; $730d: $00
    rst $38                                       ; $730e: $ff
    nop                                           ; $730f: $00
    rst $38                                       ; $7310: $ff
    db $e3                                        ; $7311: $e3
    ld a, [hl+]                                   ; $7312: $2a
    ld [hl], $3e                                  ; $7313: $36 $3e
    ld [hl], $14                                  ; $7315: $36 $14
    inc e                                         ; $7317: $1c
    inc e                                         ; $7318: $1c
    inc e                                         ; $7319: $1c
    ld [$0008], sp                                ; $731a: $08 $08 $00
    nop                                           ; $731d: $00
    nop                                           ; $731e: $00
    nop                                           ; $731f: $00
    nop                                           ; $7320: $00
    nop                                           ; $7321: $00
    nop                                           ; $7322: $00
    nop                                           ; $7323: $00
    nop                                           ; $7324: $00
    nop                                           ; $7325: $00
    ret nz                                        ; $7326: $c0

    ret nz                                        ; $7327: $c0

    ldh [$60], a                                  ; $7328: $e0 $60
    ldh [rNR41], a                                ; $732a: $e0 $20
    ldh [rNR41], a                                ; $732c: $e0 $20
    ldh [$60], a                                  ; $732e: $e0 $60
    ret nz                                        ; $7330: $c0

    ret nz                                        ; $7331: $c0

    nop                                           ; $7332: $00
    nop                                           ; $7333: $00
    nop                                           ; $7334: $00
    nop                                           ; $7335: $00
    nop                                           ; $7336: $00
    nop                                           ; $7337: $00
    nop                                           ; $7338: $00
    nop                                           ; $7339: $00
    nop                                           ; $733a: $00
    nop                                           ; $733b: $00
    nop                                           ; $733c: $00
    nop                                           ; $733d: $00
    nop                                           ; $733e: $00
    nop                                           ; $733f: $00
    db $10                                        ; $7340: $10
    ld [$0000], sp                                ; $7341: $08 $00 $00
    db $10                                        ; $7344: $10
    db $10                                        ; $7345: $10
    ld [bc], a                                    ; $7346: $02
    nop                                           ; $7347: $00
    db $10                                        ; $7348: $10
    jr @+$06                                      ; $7349: $18 $04

    nop                                           ; $734b: $00
    add b                                         ; $734c: $80
    ret nz                                        ; $734d: $c0

    ld bc, $7fff                                  ; $734e: $01 $ff $7f
    ld c, e                                       ; $7351: $4b
    ld b, e                                       ; $7352: $43
    nop                                           ; $7353: $00
    nop                                           ; $7354: $00
    db $e4                                        ; $7355: $e4
    ld [hl], e                                    ; $7356: $73
    db $eb                                        ; $7357: $eb
    ld [hl], e                                    ; $7358: $73
    ld h, e                                       ; $7359: $63
    ld [hl], e                                    ; $735a: $73
    db $f4                                        ; $735b: $f4
    ld [hl], e                                    ; $735c: $73
    push af                                       ; $735d: $f5
    ld [hl], e                                    ; $735e: $73
    or $73                                        ; $735f: $f6 $73
    rst $30                                       ; $7361: $f7
    ld [hl], e                                    ; $7362: $73
    ld hl, $007b                                  ; $7363: $21 $7b $00
    ld hl, $2100                                  ; $7366: $21 $00 $21
    nop                                           ; $7369: $00
    nop                                           ; $736a: $00
    nop                                           ; $736b: $00
    add b                                         ; $736c: $80
    ld bc, $210c                                  ; $736d: $01 $0c $21
    ld a, e                                       ; $7370: $7b
    nop                                           ; $7371: $00
    ld hl, $1f00                                  ; $7372: $21 $00 $1f
    nop                                           ; $7375: $00
    nop                                           ; $7376: $00
    nop                                           ; $7377: $00
    add b                                         ; $7378: $80
    ld bc, $210b                                  ; $7379: $01 $0b $21
    ld a, e                                       ; $737c: $7b
    nop                                           ; $737d: $00
    dec e                                         ; $737e: $1d
    nop                                           ; $737f: $00
    ld hl, $0000                                  ; $7380: $21 $00 $00
    nop                                           ; $7383: $00
    nop                                           ; $7384: $00
    ld bc, $210a                                  ; $7385: $01 $0a $21
    ld a, e                                       ; $7388: $7b
    nop                                           ; $7389: $00
    dec e                                         ; $738a: $1d
    nop                                           ; $738b: $00
    rra                                           ; $738c: $1f
    nop                                           ; $738d: $00
    nop                                           ; $738e: $00
    nop                                           ; $738f: $00
    ld b, b                                       ; $7390: $40
    ld bc, $210d                                  ; $7391: $01 $0d $21
    ld a, e                                       ; $7394: $7b
    nop                                           ; $7395: $00
    rla                                           ; $7396: $17
    nop                                           ; $7397: $00
    inc de                                        ; $7398: $13
    nop                                           ; $7399: $00
    nop                                           ; $739a: $00
    nop                                           ; $739b: $00
    add b                                         ; $739c: $80
    ld bc, $2116                                  ; $739d: $01 $16 $21
    ld a, e                                       ; $73a0: $7b
    nop                                           ; $73a1: $00
    dec d                                         ; $73a2: $15
    nop                                           ; $73a3: $00
    inc de                                        ; $73a4: $13
    nop                                           ; $73a5: $00
    nop                                           ; $73a6: $00
    nop                                           ; $73a7: $00
    nop                                           ; $73a8: $00
    ld bc, $2d0d                                  ; $73a9: $01 $0d $2d
    ld a, e                                       ; $73ac: $7b
    nop                                           ; $73ad: $00
    rla                                           ; $73ae: $17
    nop                                           ; $73af: $00
    dec c                                         ; $73b0: $0d
    nop                                           ; $73b1: $00
    nop                                           ; $73b2: $00
    nop                                           ; $73b3: $00
    nop                                           ; $73b4: $00
    ld bc, $b80a                                  ; $73b5: $01 $0a $b8
    ld [hl], h                                    ; $73b8: $74
    nop                                           ; $73b9: $00
    dec e                                         ; $73ba: $1d
    nop                                           ; $73bb: $00
    dec c                                         ; $73bc: $0d
    nop                                           ; $73bd: $00
    nop                                           ; $73be: $00
    nop                                           ; $73bf: $00
    nop                                           ; $73c0: $00
    ld bc, $2116                                  ; $73c1: $01 $16 $21
    ld a, e                                       ; $73c4: $7b
    nop                                           ; $73c5: $00
    add hl, de                                    ; $73c6: $19
    nop                                           ; $73c7: $00
    add hl, de                                    ; $73c8: $19
    nop                                           ; $73c9: $00
    nop                                           ; $73ca: $00
    nop                                           ; $73cb: $00
    ret nz                                        ; $73cc: $c0

    ld bc, $2117                                  ; $73cd: $01 $17 $21
    ld a, e                                       ; $73d0: $7b
    nop                                           ; $73d1: $00
    ld hl, $1300                                  ; $73d2: $21 $00 $13
    nop                                           ; $73d5: $00
    nop                                           ; $73d6: $00
    nop                                           ; $73d7: $00
    add b                                         ; $73d8: $80
    ld bc, $000b                                  ; $73d9: $01 $0b $00
    nop                                           ; $73dc: $00
    nop                                           ; $73dd: $00
    nop                                           ; $73de: $00
    nop                                           ; $73df: $00
    nop                                           ; $73e0: $00
    nop                                           ; $73e1: $00
    nop                                           ; $73e2: $00
    rst $38                                       ; $73e3: $ff
    ld bc, $00c0                                  ; $73e4: $01 $c0 $00
    ld a, [de]                                    ; $73e7: $1a
    nop                                           ; $73e8: $00
    add hl, hl                                    ; $73e9: $29
    rst $38                                       ; $73ea: $ff
    ld bc, $00ff                                  ; $73eb: $01 $ff $00
    nop                                           ; $73ee: $00
    nop                                           ; $73ef: $00
    nop                                           ; $73f0: $00
    ld a, $01                                     ; $73f1: $3e $01
    rst $38                                       ; $73f3: $ff
    rst $38                                       ; $73f4: $ff
    ret                                           ; $73f5: $c9


    rst $38                                       ; $73f6: $ff
    ld c, $08                                     ; $73f7: $0e $08
    call Call_000_25af                            ; $73f9: $cd $af $25
    ld a, $00                                     ; $73fc: $3e $00
    ld bc, $0018                                  ; $73fe: $01 $18 $00
    rst $18                                       ; $7401: $df
    ld d, $0a                                     ; $7402: $16 $0a
    ld bc, $0018                                  ; $7404: $01 $18 $00
    rst $18                                       ; $7407: $df
    ld [hl], $0a                                  ; $7408: $36 $0a
    ld a, $00                                     ; $740a: $3e $00
    ld bc, $1a00                                  ; $740c: $01 $00 $1a
    ld de, $1c00                                  ; $740f: $11 $00 $1c
    rst $18                                       ; $7412: $df
    ld [hl+], a                                   ; $7413: $22
    ld a, [bc]                                    ; $7414: $0a
    xor a                                         ; $7415: $af
    ld bc, $1a00                                  ; $7416: $01 $00 $1a
    ld de, $1c00                                  ; $7419: $11 $00 $1c
    rst $18                                       ; $741c: $df
    jr c, @+$0c                                   ; $741d: $38 $0a

    rst $18                                       ; $741f: $df
    inc a                                         ; $7420: $3c
    ld a, [bc]                                    ; $7421: $0a
    ld a, $00                                     ; $7422: $3e $00
    ld bc, $1c00                                  ; $7424: $01 $00 $1c
    ld de, $1c00                                  ; $7427: $11 $00 $1c
    rst $18                                       ; $742a: $df
    ld [hl+], a                                   ; $742b: $22
    ld a, [bc]                                    ; $742c: $0a
    xor a                                         ; $742d: $af
    ld bc, $1c00                                  ; $742e: $01 $00 $1c
    ld de, $1c00                                  ; $7431: $11 $00 $1c
    rst $18                                       ; $7434: $df
    jr c, @+$0c                                   ; $7435: $38 $0a

    rst $18                                       ; $7437: $df
    inc a                                         ; $7438: $3c
    ld a, [bc]                                    ; $7439: $0a
    ld a, $00                                     ; $743a: $3e $00
    ld bc, $1c00                                  ; $743c: $01 $00 $1c
    ld de, $1600                                  ; $743f: $11 $00 $16
    rst $18                                       ; $7442: $df
    ld [hl+], a                                   ; $7443: $22
    ld a, [bc]                                    ; $7444: $0a
    xor a                                         ; $7445: $af
    ld bc, $1c00                                  ; $7446: $01 $00 $1c
    ld de, $1600                                  ; $7449: $11 $00 $16
    rst $18                                       ; $744c: $df
    jr c, @+$0c                                   ; $744d: $38 $0a

    rst $18                                       ; $744f: $df
    inc a                                         ; $7450: $3c
    ld a, [bc]                                    ; $7451: $0a
    ld a, $00                                     ; $7452: $3e $00
    ld bc, $2600                                  ; $7454: $01 $00 $26
    ld de, $1600                                  ; $7457: $11 $00 $16
    rst $18                                       ; $745a: $df
    ld [hl+], a                                   ; $745b: $22
    ld a, [bc]                                    ; $745c: $0a
    xor a                                         ; $745d: $af
    ld bc, $2600                                  ; $745e: $01 $00 $26
    ld de, $1600                                  ; $7461: $11 $00 $16
    rst $18                                       ; $7464: $df
    jr c, @+$0c                                   ; $7465: $38 $0a

    rst $18                                       ; $7467: $df
    inc a                                         ; $7468: $3c
    ld a, [bc]                                    ; $7469: $0a
    ld a, $00                                     ; $746a: $3e $00
    ld bc, $2600                                  ; $746c: $01 $00 $26
    ld de, $0f00                                  ; $746f: $11 $00 $0f
    rst $18                                       ; $7472: $df
    ld [hl+], a                                   ; $7473: $22
    ld a, [bc]                                    ; $7474: $0a
    xor a                                         ; $7475: $af
    ld bc, $2600                                  ; $7476: $01 $00 $26
    ld de, $0f00                                  ; $7479: $11 $00 $0f
    rst $18                                       ; $747c: $df
    jr c, @+$0c                                   ; $747d: $38 $0a

    rst $18                                       ; $747f: $df
    inc a                                         ; $7480: $3c
    ld a, [bc]                                    ; $7481: $0a
    ld a, $00                                     ; $7482: $3e $00
    ld bc, $2600                                  ; $7484: $01 $00 $26
    ld de, $0700                                  ; $7487: $11 $00 $07
    rst $18                                       ; $748a: $df

Jump_035_748b:
    ld [hl+], a                                   ; $748b: $22
    ld a, [bc]                                    ; $748c: $0a
    xor a                                         ; $748d: $af
    ld bc, $2600                                  ; $748e: $01 $00 $26
    ld de, $0800                                  ; $7491: $11 $00 $08
    rst $18                                       ; $7494: $df
    jr c, @+$0c                                   ; $7495: $38 $0a

    rst $18                                       ; $7497: $df
    inc a                                         ; $7498: $3c
    ld a, [bc]                                    ; $7499: $0a
    ld a, $00                                     ; $749a: $3e $00
    ld bc, $2a00                                  ; $749c: $01 $00 $2a
    ld de, $0700                                  ; $749f: $11 $00 $07
    rst $18                                       ; $74a2: $df
    ld [hl+], a                                   ; $74a3: $22
    ld a, [bc]                                    ; $74a4: $0a
    xor a                                         ; $74a5: $af
    ld bc, $2a00                                  ; $74a6: $01 $00 $2a
    ld de, $0800                                  ; $74a9: $11 $00 $08
    rst $18                                       ; $74ac: $df
    jr c, jr_035_74b9                             ; $74ad: $38 $0a

    rst $18                                       ; $74af: $df
    inc a                                         ; $74b0: $3c
    ld a, [bc]                                    ; $74b1: $0a
    ld a, $01                                     ; $74b2: $3e $01
    ld [$c441], a                                 ; $74b4: $ea $41 $c4
    ret                                           ; $74b7: $c9


    dec c                                         ; $74b8: $0d

jr_035_74b9:
    ld c, $08                                     ; $74b9: $0e $08
    nop                                           ; $74bb: $00
    dec c                                         ; $74bc: $0d
    dec de                                        ; $74bd: $1b
    ld bc, $0700                                  ; $74be: $01 $00 $07
    nop                                           ; $74c1: $00
    nop                                           ; $74c2: $00
    ld [bc], a                                    ; $74c3: $02
    ld [bc], a                                    ; $74c4: $02
    ld bc, $0728                                  ; $74c5: $01 $28 $07
    ret nz                                        ; $74c8: $c0

    nop                                           ; $74c9: $00
    ld [bc], a                                    ; $74ca: $02
    ld [bc], a                                    ; $74cb: $02
    ld bc, $0728                                  ; $74cc: $01 $28 $07
    ret nz                                        ; $74cf: $c0

    nop                                           ; $74d0: $00
    ld [bc], a                                    ; $74d1: $02
    ld [bc], a                                    ; $74d2: $02
    ld bc, $0728                                  ; $74d3: $01 $28 $07
    add b                                         ; $74d6: $80
    nop                                           ; $74d7: $00
    ld [bc], a                                    ; $74d8: $02
    ld [bc], a                                    ; $74d9: $02
    ld bc, $0728                                  ; $74da: $01 $28 $07
    add b                                         ; $74dd: $80
    nop                                           ; $74de: $00
    ld [bc], a                                    ; $74df: $02
    ld [bc], a                                    ; $74e0: $02
    ld bc, $0728                                  ; $74e1: $01 $28 $07
    ld b, b                                       ; $74e4: $40
    nop                                           ; $74e5: $00
    ld [bc], a                                    ; $74e6: $02
    ld [bc], a                                    ; $74e7: $02
    ld bc, $0728                                  ; $74e8: $01 $28 $07
    ld b, b                                       ; $74eb: $40
    nop                                           ; $74ec: $00
    ld [bc], a                                    ; $74ed: $02
    ld [bc], a                                    ; $74ee: $02
    ld bc, $0728                                  ; $74ef: $01 $28 $07
    nop                                           ; $74f2: $00
    nop                                           ; $74f3: $00
    ld [bc], a                                    ; $74f4: $02
    ld [bc], a                                    ; $74f5: $02
    ld bc, $0c28                                  ; $74f6: $01 $28 $0c
    rst $00                                       ; $74f9: $c7
    rst $38                                       ; $74fa: $ff
    ld [de], a                                    ; $74fb: $12
    ld [hl], l                                    ; $74fc: $75
    add hl, de                                    ; $74fd: $19
    ld [hl], l                                    ; $74fe: $75

Jump_035_74ff:
    add hl, bc                                    ; $74ff: $09
    ld [hl], l                                    ; $7500: $75
    ld [hl+], a                                   ; $7501: $22
    ld [hl], l                                    ; $7502: $75
    inc hl                                        ; $7503: $23
    ld [hl], l                                    ; $7504: $75
    inc h                                         ; $7505: $24
    ld [hl], l                                    ; $7506: $75
    dec h                                         ; $7507: $25
    ld [hl], l                                    ; $7508: $75
    nop                                           ; $7509: $00
    nop                                           ; $750a: $00
    nop                                           ; $750b: $00
    nop                                           ; $750c: $00
    nop                                           ; $750d: $00
    nop                                           ; $750e: $00
    nop                                           ; $750f: $00
    nop                                           ; $7510: $00
    rst $38                                       ; $7511: $ff
    ld bc, $0040                                  ; $7512: $01 $40 $00
    dec b                                         ; $7515: $05
    add b                                         ; $7516: $80
    dec l                                         ; $7517: $2d
    rst $38                                       ; $7518: $ff
    ld bc, $00ff                                  ; $7519: $01 $ff $00
    nop                                           ; $751c: $00
    nop                                           ; $751d: $00
    nop                                           ; $751e: $00
    ld sp, $ff01                                  ; $751f: $31 $01 $ff
    rst $38                                       ; $7522: $ff
    ret                                           ; $7523: $c9


    rst $38                                       ; $7524: $ff
    ld c, $08                                     ; $7525: $0e $08
    call Call_000_25af                            ; $7527: $cd $af $25
    ld a, $00                                     ; $752a: $3e $00
    ld bc, $0018                                  ; $752c: $01 $18 $00
    rst $18                                       ; $752f: $df
    ld d, $0a                                     ; $7530: $16 $0a
    ld bc, $0018                                  ; $7532: $01 $18 $00
    rst $18                                       ; $7535: $df
    ld [hl], $0a                                  ; $7536: $36 $0a
    ld a, $00                                     ; $7538: $3e $00
    ld bc, $0500                                  ; $753a: $01 $00 $05
    ld de, $2f00                                  ; $753d: $11 $00 $2f
    rst $18                                       ; $7540: $df
    ld [hl+], a                                   ; $7541: $22
    ld a, [bc]                                    ; $7542: $0a
    xor a                                         ; $7543: $af
    ld bc, $0500                                  ; $7544: $01 $00 $05
    ld de, $2f00                                  ; $7547: $11 $00 $2f
    rst $18                                       ; $754a: $df
    jr c, @+$0c                                   ; $754b: $38 $0a

    rst $18                                       ; $754d: $df
    inc a                                         ; $754e: $3c
    ld a, [bc]                                    ; $754f: $0a
    ld a, $00                                     ; $7550: $3e $00
    ld bc, $0b00                                  ; $7552: $01 $00 $0b
    ld de, $2f00                                  ; $7555: $11 $00 $2f
    rst $18                                       ; $7558: $df
    ld [hl+], a                                   ; $7559: $22
    ld a, [bc]                                    ; $755a: $0a
    xor a                                         ; $755b: $af
    ld bc, $0b00                                  ; $755c: $01 $00 $0b
    ld de, $2f00                                  ; $755f: $11 $00 $2f
    rst $18                                       ; $7562: $df
    jr c, @+$0c                                   ; $7563: $38 $0a

    rst $18                                       ; $7565: $df
    inc a                                         ; $7566: $3c
    ld a, [bc]                                    ; $7567: $0a
    ld a, $00                                     ; $7568: $3e $00
    ld bc, $0b00                                  ; $756a: $01 $00 $0b
    ld de, $2700                                  ; $756d: $11 $00 $27
    rst $18                                       ; $7570: $df
    ld [hl+], a                                   ; $7571: $22
    ld a, [bc]                                    ; $7572: $0a
    xor a                                         ; $7573: $af
    ld bc, $0b00                                  ; $7574: $01 $00 $0b
    ld de, $2700                                  ; $7577: $11 $00 $27
    rst $18                                       ; $757a: $df
    jr c, @+$0c                                   ; $757b: $38 $0a

    rst $18                                       ; $757d: $df
    inc a                                         ; $757e: $3c
    ld a, [bc]                                    ; $757f: $0a
    ld a, $00                                     ; $7580: $3e $00
    ld bc, $0f00                                  ; $7582: $01 $00 $0f
    ld de, $2700                                  ; $7585: $11 $00 $27
    rst $18                                       ; $7588: $df
    ld [hl+], a                                   ; $7589: $22
    ld a, [bc]                                    ; $758a: $0a
    xor a                                         ; $758b: $af
    ld bc, $0f00                                  ; $758c: $01 $00 $0f
    ld de, $2700                                  ; $758f: $11 $00 $27
    rst $18                                       ; $7592: $df
    jr c, @+$0c                                   ; $7593: $38 $0a

    rst $18                                       ; $7595: $df
    inc a                                         ; $7596: $3c
    ld a, [bc]                                    ; $7597: $0a
    ld a, $00                                     ; $7598: $3e $00
    ld bc, $0f00                                  ; $759a: $01 $00 $0f
    ld de, $2500                                  ; $759d: $11 $00 $25
    rst $18                                       ; $75a0: $df
    ld [hl+], a                                   ; $75a1: $22
    ld a, [bc]                                    ; $75a2: $0a
    xor a                                         ; $75a3: $af
    ld bc, $0f00                                  ; $75a4: $01 $00 $0f
    ld de, $2500                                  ; $75a7: $11 $00 $25
    rst $18                                       ; $75aa: $df
    jr c, @+$0c                                   ; $75ab: $38 $0a

    rst $18                                       ; $75ad: $df
    inc a                                         ; $75ae: $3c
    ld a, [bc]                                    ; $75af: $0a
    ld a, $00                                     ; $75b0: $3e $00
    ld bc, $1900                                  ; $75b2: $01 $00 $19
    ld de, $2500                                  ; $75b5: $11 $00 $25
    rst $18                                       ; $75b8: $df
    ld [hl+], a                                   ; $75b9: $22
    ld a, [bc]                                    ; $75ba: $0a
    xor a                                         ; $75bb: $af
    ld bc, $1900                                  ; $75bc: $01 $00 $19
    ld de, $2500                                  ; $75bf: $11 $00 $25
    rst $18                                       ; $75c2: $df
    jr c, @+$0c                                   ; $75c3: $38 $0a

    rst $18                                       ; $75c5: $df
    inc a                                         ; $75c6: $3c
    ld a, [bc]                                    ; $75c7: $0a
    ld a, $00                                     ; $75c8: $3e $00
    ld bc, $1900                                  ; $75ca: $01 $00 $19
    ld de, $2700                                  ; $75cd: $11 $00 $27
    rst $18                                       ; $75d0: $df
    ld [hl+], a                                   ; $75d1: $22
    ld a, [bc]                                    ; $75d2: $0a
    xor a                                         ; $75d3: $af
    ld bc, $1900                                  ; $75d4: $01 $00 $19
    ld de, $2700                                  ; $75d7: $11 $00 $27
    rst $18                                       ; $75da: $df
    jr c, @+$0c                                   ; $75db: $38 $0a

    rst $18                                       ; $75dd: $df
    inc a                                         ; $75de: $3c
    ld a, [bc]                                    ; $75df: $0a
    ld a, $00                                     ; $75e0: $3e $00
    ld bc, $1c00                                  ; $75e2: $01 $00 $1c
    ld de, $2700                                  ; $75e5: $11 $00 $27
    rst $18                                       ; $75e8: $df
    ld [hl+], a                                   ; $75e9: $22
    ld a, [bc]                                    ; $75ea: $0a
    xor a                                         ; $75eb: $af
    ld bc, $1c00                                  ; $75ec: $01 $00 $1c
    ld de, $2a00                                  ; $75ef: $11 $00 $2a
    rst $18                                       ; $75f2: $df
    jr c, jr_035_75ff                             ; $75f3: $38 $0a

    rst $18                                       ; $75f5: $df
    inc a                                         ; $75f6: $3c
    ld a, [bc]                                    ; $75f7: $0a
    ld a, $01                                     ; $75f8: $3e $01
    ld [$c441], a                                 ; $75fa: $ea $41 $c4
    ret                                           ; $75fd: $c9


    cp l                                          ; $75fe: $bd

jr_035_75ff:
    halt                                          ; $75ff: $76
    call nz, $0c76                                ; $7600: $c4 $76 $0c
    halt                                          ; $7603: $76
    jp nz, Jump_000_3477                          ; $7604: $c2 $77 $34

    ld a, b                                       ; $7607: $78
    ld a, $78                                     ; $7608: $3e $78
    ld b, a                                       ; $760a: $47
    ld a, b                                       ; $760b: $78
    ld hl, $007b                                  ; $760c: $21 $7b $00
    add hl, bc                                    ; $760f: $09
    nop                                           ; $7610: $00
    inc bc                                        ; $7611: $03
    nop                                           ; $7612: $00
    nop                                           ; $7613: $00
    nop                                           ; $7614: $00
    ld b, b                                       ; $7615: $40
    ld bc, $2108                                  ; $7616: $01 $08 $21
    ld a, e                                       ; $7619: $7b
    nop                                           ; $761a: $00
    add hl, bc                                    ; $761b: $09
    nop                                           ; $761c: $00
    dec b                                         ; $761d: $05
    nop                                           ; $761e: $00
    nop                                           ; $761f: $00
    nop                                           ; $7620: $00
    ld b, b                                       ; $7621: $40
    ld bc, $2109                                  ; $7622: $01 $09 $21
    ld a, e                                       ; $7625: $7b
    nop                                           ; $7626: $00
    add hl, bc                                    ; $7627: $09
    nop                                           ; $7628: $00
    rlca                                          ; $7629: $07
    nop                                           ; $762a: $00
    nop                                           ; $762b: $00
    nop                                           ; $762c: $00
    ld b, b                                       ; $762d: $40
    ld bc, $2112                                  ; $762e: $01 $12 $21
    ld a, e                                       ; $7631: $7b
    nop                                           ; $7632: $00
    add hl, bc                                    ; $7633: $09
    nop                                           ; $7634: $00
    add hl, bc                                    ; $7635: $09
    nop                                           ; $7636: $00
    nop                                           ; $7637: $00
    nop                                           ; $7638: $00
    ld b, b                                       ; $7639: $40
    ld bc, $2113                                  ; $763a: $01 $13 $21
    ld a, e                                       ; $763d: $7b
    nop                                           ; $763e: $00
    add hl, bc                                    ; $763f: $09
    nop                                           ; $7640: $00
    dec bc                                        ; $7641: $0b
    nop                                           ; $7642: $00
    nop                                           ; $7643: $00
    nop                                           ; $7644: $00
    ld b, b                                       ; $7645: $40
    ld bc, $2111                                  ; $7646: $01 $11 $21
    ld a, e                                       ; $7649: $7b
    nop                                           ; $764a: $00
    add hl, bc                                    ; $764b: $09
    nop                                           ; $764c: $00
    dec c                                         ; $764d: $0d
    nop                                           ; $764e: $00
    nop                                           ; $764f: $00
    nop                                           ; $7650: $00
    ld b, b                                       ; $7651: $40
    ld bc, $2118                                  ; $7652: $01 $18 $21
    ld a, e                                       ; $7655: $7b
    nop                                           ; $7656: $00
    add hl, bc                                    ; $7657: $09
    nop                                           ; $7658: $00
    rrca                                          ; $7659: $0f
    nop                                           ; $765a: $00
    nop                                           ; $765b: $00
    nop                                           ; $765c: $00
    ld b, b                                       ; $765d: $40
    ld bc, $211b                                  ; $765e: $01 $1b $21
    ld a, e                                       ; $7661: $7b
    nop                                           ; $7662: $00
    dec c                                         ; $7663: $0d
    nop                                           ; $7664: $00
    inc bc                                        ; $7665: $03
    nop                                           ; $7666: $00
    nop                                           ; $7667: $00
    nop                                           ; $7668: $00
    ld b, b                                       ; $7669: $40
    ld bc, $2108                                  ; $766a: $01 $08 $21
    ld a, e                                       ; $766d: $7b
    nop                                           ; $766e: $00
    dec c                                         ; $766f: $0d
    nop                                           ; $7670: $00
    dec b                                         ; $7671: $05
    nop                                           ; $7672: $00
    nop                                           ; $7673: $00
    nop                                           ; $7674: $00
    ld b, b                                       ; $7675: $40
    ld bc, $2109                                  ; $7676: $01 $09 $21
    ld a, e                                       ; $7679: $7b
    nop                                           ; $767a: $00
    dec c                                         ; $767b: $0d
    nop                                           ; $767c: $00
    rlca                                          ; $767d: $07
    nop                                           ; $767e: $00
    nop                                           ; $767f: $00
    nop                                           ; $7680: $00
    ld b, b                                       ; $7681: $40
    ld bc, $2112                                  ; $7682: $01 $12 $21
    ld a, e                                       ; $7685: $7b
    nop                                           ; $7686: $00
    dec c                                         ; $7687: $0d
    nop                                           ; $7688: $00
    add hl, bc                                    ; $7689: $09
    nop                                           ; $768a: $00
    nop                                           ; $768b: $00
    nop                                           ; $768c: $00
    ld b, b                                       ; $768d: $40
    ld bc, $2113                                  ; $768e: $01 $13 $21
    ld a, e                                       ; $7691: $7b
    nop                                           ; $7692: $00
    dec c                                         ; $7693: $0d
    nop                                           ; $7694: $00
    dec bc                                        ; $7695: $0b
    nop                                           ; $7696: $00
    nop                                           ; $7697: $00
    nop                                           ; $7698: $00
    ld b, b                                       ; $7699: $40
    ld bc, $2111                                  ; $769a: $01 $11 $21
    ld a, e                                       ; $769d: $7b
    nop                                           ; $769e: $00
    dec c                                         ; $769f: $0d
    nop                                           ; $76a0: $00
    dec c                                         ; $76a1: $0d
    nop                                           ; $76a2: $00
    nop                                           ; $76a3: $00
    nop                                           ; $76a4: $00
    ld b, b                                       ; $76a5: $40
    ld bc, $2118                                  ; $76a6: $01 $18 $21
    ld a, e                                       ; $76a9: $7b
    nop                                           ; $76aa: $00
    dec c                                         ; $76ab: $0d
    nop                                           ; $76ac: $00
    rrca                                          ; $76ad: $0f
    nop                                           ; $76ae: $00
    nop                                           ; $76af: $00
    nop                                           ; $76b0: $00
    ld b, b                                       ; $76b1: $40
    ld bc, $001b                                  ; $76b2: $01 $1b $00
    nop                                           ; $76b5: $00
    nop                                           ; $76b6: $00
    nop                                           ; $76b7: $00
    nop                                           ; $76b8: $00
    nop                                           ; $76b9: $00
    nop                                           ; $76ba: $00
    nop                                           ; $76bb: $00
    rst $38                                       ; $76bc: $ff
    ld bc, $0080                                  ; $76bd: $01 $80 $00
    dec bc                                        ; $76c0: $0b
    nop                                           ; $76c1: $00
    add hl, bc                                    ; $76c2: $09
    rst $38                                       ; $76c3: $ff
    ld bc, $00ff                                  ; $76c4: $01 $ff $00
    nop                                           ; $76c7: $00
    nop                                           ; $76c8: $00
    nop                                           ; $76c9: $00
    jr nz, jr_035_76cd                            ; $76ca: $20 $01

    ld [bc], a                                    ; $76cc: $02

jr_035_76cd:
    rst $38                                       ; $76cd: $ff
    nop                                           ; $76ce: $00
    nop                                           ; $76cf: $00
    nop                                           ; $76d0: $00
    nop                                           ; $76d1: $00
    jr nz, jr_035_76d9                            ; $76d2: $20 $05

    inc bc                                        ; $76d4: $03
    rst $38                                       ; $76d5: $ff
    nop                                           ; $76d6: $00
    nop                                           ; $76d7: $00
    nop                                           ; $76d8: $00

jr_035_76d9:
    nop                                           ; $76d9: $00
    ld b, $02                                     ; $76da: $06 $02
    inc b                                         ; $76dc: $04
    rst $38                                       ; $76dd: $ff
    nop                                           ; $76de: $00
    nop                                           ; $76df: $00
    nop                                           ; $76e0: $00
    nop                                           ; $76e1: $00
    inc bc                                        ; $76e2: $03
    ld bc, $ff05                                  ; $76e3: $01 $05 $ff
    nop                                           ; $76e6: $00
    nop                                           ; $76e7: $00
    nop                                           ; $76e8: $00
    nop                                           ; $76e9: $00
    inc b                                         ; $76ea: $04
    ld bc, $ff06                                  ; $76eb: $01 $06 $ff
    nop                                           ; $76ee: $00
    nop                                           ; $76ef: $00
    nop                                           ; $76f0: $00
    nop                                           ; $76f1: $00
    rlca                                          ; $76f2: $07
    ld bc, $ff07                                  ; $76f3: $01 $07 $ff
    nop                                           ; $76f6: $00
    nop                                           ; $76f7: $00
    nop                                           ; $76f8: $00
    nop                                           ; $76f9: $00
    ld [$0802], sp                                ; $76fa: $08 $02 $08
    rst $38                                       ; $76fd: $ff
    nop                                           ; $76fe: $00
    nop                                           ; $76ff: $00
    nop                                           ; $7700: $00
    nop                                           ; $7701: $00
    jr nz, jr_035_7705                            ; $7702: $20 $01

    add hl, bc                                    ; $7704: $09

jr_035_7705:
    rst $38                                       ; $7705: $ff
    nop                                           ; $7706: $00
    nop                                           ; $7707: $00
    nop                                           ; $7708: $00
    nop                                           ; $7709: $00
    ld hl, $0a01                                  ; $770a: $21 $01 $0a
    rst $38                                       ; $770d: $ff
    nop                                           ; $770e: $00
    nop                                           ; $770f: $00
    nop                                           ; $7710: $00
    nop                                           ; $7711: $00
    nop                                           ; $7712: $00
    ld [bc], a                                    ; $7713: $02
    dec bc                                        ; $7714: $0b
    rst $38                                       ; $7715: $ff
    nop                                           ; $7716: $00
    nop                                           ; $7717: $00
    nop                                           ; $7718: $00
    nop                                           ; $7719: $00
    nop                                           ; $771a: $00
    ld bc, $ff0c                                  ; $771b: $01 $0c $ff
    nop                                           ; $771e: $00
    nop                                           ; $771f: $00
    nop                                           ; $7720: $00
    nop                                           ; $7721: $00
    ld [bc], a                                    ; $7722: $02
    ld bc, $ff0d                                  ; $7723: $01 $0d $ff
    nop                                           ; $7726: $00
    nop                                           ; $7727: $00
    nop                                           ; $7728: $00
    nop                                           ; $7729: $00
    ld bc, $0e01                                  ; $772a: $01 $01 $0e
    rst $38                                       ; $772d: $ff
    nop                                           ; $772e: $00
    nop                                           ; $772f: $00
    nop                                           ; $7730: $00
    nop                                           ; $7731: $00
    inc h                                         ; $7732: $24
    ld bc, $3eff                                  ; $7733: $01 $ff $3e
    ld bc, $41ea                                  ; $7736: $01 $ea $41
    call nz, Call_000_3ec9                        ; $7739: $c4 $c9 $3e
    ld [bc], a                                    ; $773c: $02
    ld [$c441], a                                 ; $773d: $ea $41 $c4
    ret                                           ; $7740: $c9


    ld a, $03                                     ; $7741: $3e $03
    ld [$c441], a                                 ; $7743: $ea $41 $c4
    ret                                           ; $7746: $c9


    ld a, $04                                     ; $7747: $3e $04
    ld [$c441], a                                 ; $7749: $ea $41 $c4
    ret                                           ; $774c: $c9


    ld a, $05                                     ; $774d: $3e $05
    ld [$c441], a                                 ; $774f: $ea $41 $c4
    ret                                           ; $7752: $c9


    ld a, $06                                     ; $7753: $3e $06
    ld [$c441], a                                 ; $7755: $ea $41 $c4
    ret                                           ; $7758: $c9


    ld a, $07                                     ; $7759: $3e $07
    ld [$c441], a                                 ; $775b: $ea $41 $c4
    ret                                           ; $775e: $c9


    rst $18                                       ; $775f: $df
    ld [bc], a                                    ; $7760: $02
    ld a, $3e                                     ; $7761: $3e $3e
    ld [$41ea], sp                                ; $7763: $08 $ea $41
    call nz, $cdc9                                ; $7766: $c4 $c9 $cd
    or [hl]                                       ; $7769: $b6
    inc hl                                        ; $776a: $23
    rst $18                                       ; $776b: $df
    ld l, b                                       ; $776c: $68
    ld [bc], a                                    ; $776d: $02
    ld a, $09                                     ; $776e: $3e $09
    ld [$c441], a                                 ; $7770: $ea $41 $c4
    ret                                           ; $7773: $c9


    call Call_000_23b6                            ; $7774: $cd $b6 $23
    rst $18                                       ; $7777: $df
    nop                                           ; $7778: $00
    inc c                                         ; $7779: $0c
    ld a, $0a                                     ; $777a: $3e $0a
    ld [$c441], a                                 ; $777c: $ea $41 $c4
    ret                                           ; $777f: $c9


    call Call_000_23b6                            ; $7780: $cd $b6 $23
    rst $18                                       ; $7783: $df
    inc c                                         ; $7784: $0c
    inc c                                         ; $7785: $0c
    ld a, $0b                                     ; $7786: $3e $0b
    ld [$c441], a                                 ; $7788: $ea $41 $c4
    ret                                           ; $778b: $c9


    call Call_000_23b6                            ; $778c: $cd $b6 $23
    rst $18                                       ; $778f: $df
    ld [bc], a                                    ; $7790: $02
    inc c                                         ; $7791: $0c
    ld a, $0c                                     ; $7792: $3e $0c
    ld [$c441], a                                 ; $7794: $ea $41 $c4
    ret                                           ; $7797: $c9


    rst $18                                       ; $7798: $df
    ld e, [hl]                                    ; $7799: $5e
    ld a, [bc]                                    ; $779a: $0a
    ld b, $ff                                     ; $779b: $06 $ff
    ld c, $ff                                     ; $779d: $0e $ff
    ld d, $3c                                     ; $779f: $16 $3c
    rst $18                                       ; $77a1: $df
    ld h, b                                       ; $77a2: $60
    ld a, [bc]                                    ; $77a3: $0a
    rst $18                                       ; $77a4: $df
    ld h, d                                       ; $77a5: $62
    ld a, [bc]                                    ; $77a6: $0a
    call Call_000_2ed5                            ; $77a7: $cd $d5 $2e
    inc a                                         ; $77aa: $3c
    ld b, $1e                                     ; $77ab: $06 $1e

jr_035_77ad:
    rst $08                                       ; $77ad: $cf
    ld e, h                                       ; $77ae: $5c
    call Call_000_2ed5                            ; $77af: $cd $d5 $2e
    ld a, [bc]                                    ; $77b2: $0a
    dec b                                         ; $77b3: $05
    jr nz, jr_035_77ad                            ; $77b4: $20 $f7

    ld a, $0d                                     ; $77b6: $3e $0d
    ld [$c441], a                                 ; $77b8: $ea $41 $c4
    ret                                           ; $77bb: $c9


    ld a, $0e                                     ; $77bc: $3e $0e
    ld [$c441], a                                 ; $77be: $ea $41 $c4
    ret                                           ; $77c1: $c9


    ld [bc], a                                    ; $77c2: $02
    rst $38                                       ; $77c3: $ff
    nop                                           ; $77c4: $00
    nop                                           ; $77c5: $00
    dec [hl]                                      ; $77c6: $35
    ld [hl], a                                    ; $77c7: $77
    nop                                           ; $77c8: $00
    nop                                           ; $77c9: $00
    inc bc                                        ; $77ca: $03
    rst $38                                       ; $77cb: $ff
    nop                                           ; $77cc: $00
    nop                                           ; $77cd: $00
    dec sp                                        ; $77ce: $3b
    ld [hl], a                                    ; $77cf: $77
    nop                                           ; $77d0: $00
    nop                                           ; $77d1: $00
    inc b                                         ; $77d2: $04
    rst $38                                       ; $77d3: $ff
    nop                                           ; $77d4: $00
    nop                                           ; $77d5: $00
    ld b, c                                       ; $77d6: $41
    ld [hl], a                                    ; $77d7: $77
    nop                                           ; $77d8: $00
    nop                                           ; $77d9: $00
    dec b                                         ; $77da: $05
    rst $38                                       ; $77db: $ff
    nop                                           ; $77dc: $00
    nop                                           ; $77dd: $00
    ld b, a                                       ; $77de: $47
    ld [hl], a                                    ; $77df: $77
    nop                                           ; $77e0: $00
    nop                                           ; $77e1: $00
    ld b, $ff                                     ; $77e2: $06 $ff
    nop                                           ; $77e4: $00
    nop                                           ; $77e5: $00
    ld c, l                                       ; $77e6: $4d
    ld [hl], a                                    ; $77e7: $77
    nop                                           ; $77e8: $00
    nop                                           ; $77e9: $00
    rlca                                          ; $77ea: $07
    rst $38                                       ; $77eb: $ff
    nop                                           ; $77ec: $00
    nop                                           ; $77ed: $00
    ld d, e                                       ; $77ee: $53
    ld [hl], a                                    ; $77ef: $77
    nop                                           ; $77f0: $00
    nop                                           ; $77f1: $00
    ld [$00ff], sp                                ; $77f2: $08 $ff $00
    nop                                           ; $77f5: $00
    ld e, c                                       ; $77f6: $59
    ld [hl], a                                    ; $77f7: $77
    nop                                           ; $77f8: $00
    nop                                           ; $77f9: $00
    add hl, bc                                    ; $77fa: $09
    rst $38                                       ; $77fb: $ff
    nop                                           ; $77fc: $00
    nop                                           ; $77fd: $00
    ld e, a                                       ; $77fe: $5f
    ld [hl], a                                    ; $77ff: $77
    nop                                           ; $7800: $00
    nop                                           ; $7801: $00
    ld a, [bc]                                    ; $7802: $0a
    rst $38                                       ; $7803: $ff
    nop                                           ; $7804: $00
    nop                                           ; $7805: $00
    ld l, b                                       ; $7806: $68
    ld [hl], a                                    ; $7807: $77
    nop                                           ; $7808: $00
    nop                                           ; $7809: $00
    dec bc                                        ; $780a: $0b
    rst $38                                       ; $780b: $ff
    nop                                           ; $780c: $00
    nop                                           ; $780d: $00
    ld [hl], h                                    ; $780e: $74
    ld [hl], a                                    ; $780f: $77
    nop                                           ; $7810: $00
    nop                                           ; $7811: $00
    inc c                                         ; $7812: $0c
    rst $38                                       ; $7813: $ff
    nop                                           ; $7814: $00
    nop                                           ; $7815: $00
    add b                                         ; $7816: $80
    ld [hl], a                                    ; $7817: $77
    nop                                           ; $7818: $00
    nop                                           ; $7819: $00
    dec c                                         ; $781a: $0d
    rst $38                                       ; $781b: $ff
    nop                                           ; $781c: $00
    nop                                           ; $781d: $00
    adc h                                         ; $781e: $8c
    ld [hl], a                                    ; $781f: $77
    nop                                           ; $7820: $00
    nop                                           ; $7821: $00
    ld c, $ff                                     ; $7822: $0e $ff
    nop                                           ; $7824: $00
    nop                                           ; $7825: $00
    sbc b                                         ; $7826: $98
    ld [hl], a                                    ; $7827: $77
    nop                                           ; $7828: $00
    nop                                           ; $7829: $00
    rrca                                          ; $782a: $0f
    rst $38                                       ; $782b: $ff
    nop                                           ; $782c: $00
    nop                                           ; $782d: $00
    cp h                                          ; $782e: $bc
    ld [hl], a                                    ; $782f: $77
    nop                                           ; $7830: $00
    nop                                           ; $7831: $00
    rst $38                                       ; $7832: $ff
    ret                                           ; $7833: $c9


    ld bc, $00ff                                  ; $7834: $01 $ff $00
    nop                                           ; $7837: $00
    ld a, e                                       ; $7838: $7b
    ld a, e                                       ; $7839: $7b
    ld b, $00                                     ; $783a: $06 $00
    rst $38                                       ; $783c: $ff
    ret                                           ; $783d: $c9


    ld bc, $00ff                                  ; $783e: $01 $ff $00
    nop                                           ; $7841: $00
    dec a                                         ; $7842: $3d
    ld a, b                                       ; $7843: $78
    nop                                           ; $7844: $00
    nop                                           ; $7845: $00
    rst $38                                       ; $7846: $ff
    ret                                           ; $7847: $c9


    rst $18                                       ; $7848: $df
    ld a, [bc]                                    ; $7849: $0a
    ld a, c                                       ; $784a: $79
    ret                                           ; $784b: $c9


    sub e                                         ; $784c: $93
    ld a, b                                       ; $784d: $78
    sbc d                                         ; $784e: $9a
    ld a, b                                       ; $784f: $78
    ld e, d                                       ; $7850: $5a
    ld a, b                                       ; $7851: $78
    rst $20                                       ; $7852: $e7
    ld a, b                                       ; $7853: $78
    add hl, bc                                    ; $7854: $09
    ld a, c                                       ; $7855: $79
    inc de                                        ; $7856: $13
    ld a, c                                       ; $7857: $79
    inc e                                         ; $7858: $1c
    ld a, c                                       ; $7859: $79
    ld hl, $007b                                  ; $785a: $21 $7b $00
    add hl, bc                                    ; $785d: $09
    nop                                           ; $785e: $00
    inc bc                                        ; $785f: $03
    nop                                           ; $7860: $00
    nop                                           ; $7861: $00
    nop                                           ; $7862: $00
    ld b, b                                       ; $7863: $40
    ld bc, $2108                                  ; $7864: $01 $08 $21
    ld a, e                                       ; $7867: $7b
    nop                                           ; $7868: $00
    dec c                                         ; $7869: $0d
    nop                                           ; $786a: $00
    inc bc                                        ; $786b: $03
    nop                                           ; $786c: $00
    nop                                           ; $786d: $00
    nop                                           ; $786e: $00
    ld b, b                                       ; $786f: $40
    ld bc, $2118                                  ; $7870: $01 $18 $21
    ld a, e                                       ; $7873: $7b
    nop                                           ; $7874: $00
    add hl, bc                                    ; $7875: $09
    nop                                           ; $7876: $00
    rlca                                          ; $7877: $07
    nop                                           ; $7878: $00
    nop                                           ; $7879: $00
    nop                                           ; $787a: $00
    ld b, b                                       ; $787b: $40
    ld bc, $2113                                  ; $787c: $01 $13 $21
    ld a, e                                       ; $787f: $7b
    nop                                           ; $7880: $00
    dec c                                         ; $7881: $0d
    nop                                           ; $7882: $00
    rlca                                          ; $7883: $07
    nop                                           ; $7884: $00
    nop                                           ; $7885: $00
    nop                                           ; $7886: $00
    ld b, b                                       ; $7887: $40
    ld bc, $0011                                  ; $7888: $01 $11 $00
    nop                                           ; $788b: $00
    nop                                           ; $788c: $00
    nop                                           ; $788d: $00
    nop                                           ; $788e: $00
    nop                                           ; $788f: $00
    nop                                           ; $7890: $00
    nop                                           ; $7891: $00
    rst $38                                       ; $7892: $ff
    ld bc, $0040                                  ; $7893: $01 $40 $00
    dec bc                                        ; $7896: $0b
    nop                                           ; $7897: $00
    inc bc                                        ; $7898: $03
    rst $38                                       ; $7899: $ff
    rst $38                                       ; $789a: $ff
    ld hl, $c3f0                                  ; $789b: $21 $f0 $c3
    ld a, [hl]                                    ; $789e: $7e
    dec a                                         ; $789f: $3d
    ld hl, $c3f1                                  ; $78a0: $21 $f1 $c3
    bit 7, a                                      ; $78a3: $cb $7f
    jr z, jr_035_78ab                             ; $78a5: $28 $04

    ld a, [hl]                                    ; $78a7: $7e
    dec a                                         ; $78a8: $3d
    jr jr_035_78af                                ; $78a9: $18 $04

jr_035_78ab:
    cp [hl]                                       ; $78ab: $be
    jr c, jr_035_78af                             ; $78ac: $38 $01

    xor a                                         ; $78ae: $af

jr_035_78af:
    ld hl, $c3f0                                  ; $78af: $21 $f0 $c3
    ld [hl], a                                    ; $78b2: $77
    call Call_035_793f                            ; $78b3: $cd $3f $79
    ret                                           ; $78b6: $c9


    ld hl, $c3f0                                  ; $78b7: $21 $f0 $c3
    ld a, [hl]                                    ; $78ba: $7e
    inc a                                         ; $78bb: $3c
    ld hl, $c3f1                                  ; $78bc: $21 $f1 $c3
    bit 7, a                                      ; $78bf: $cb $7f
    jr z, jr_035_78c7                             ; $78c1: $28 $04

    ld a, [hl]                                    ; $78c3: $7e
    dec a                                         ; $78c4: $3d
    jr jr_035_78cb                                ; $78c5: $18 $04

jr_035_78c7:
    cp [hl]                                       ; $78c7: $be
    jr c, jr_035_78cb                             ; $78c8: $38 $01

    xor a                                         ; $78ca: $af

jr_035_78cb:
    ld hl, $c3f0                                  ; $78cb: $21 $f0 $c3
    ld [hl], a                                    ; $78ce: $77
    call Call_035_793f                            ; $78cf: $cd $3f $79
    ret                                           ; $78d2: $c9


    ld a, [$c296]                                 ; $78d3: $fa $96 $c2
    ld b, a                                       ; $78d6: $47
    ld a, $03                                     ; $78d7: $3e $03
    rst $18                                       ; $78d9: $df
    ld [hl-], a                                   ; $78da: $32
    ld a, [bc]                                    ; $78db: $0a
    ret                                           ; $78dc: $c9


    ld a, [$c296]                                 ; $78dd: $fa $96 $c2
    ld b, a                                       ; $78e0: $47
    ld a, $04                                     ; $78e1: $3e $04
    rst $18                                       ; $78e3: $df
    ld [hl-], a                                   ; $78e4: $32
    ld a, [bc]                                    ; $78e5: $0a
    ret                                           ; $78e6: $c9


    ld [bc], a                                    ; $78e7: $02
    rst $38                                       ; $78e8: $ff
    nop                                           ; $78e9: $00
    nop                                           ; $78ea: $00
    sbc e                                         ; $78eb: $9b
    ld a, b                                       ; $78ec: $78
    nop                                           ; $78ed: $00
    nop                                           ; $78ee: $00
    inc bc                                        ; $78ef: $03
    rst $38                                       ; $78f0: $ff
    nop                                           ; $78f1: $00
    nop                                           ; $78f2: $00
    or a                                          ; $78f3: $b7
    ld a, b                                       ; $78f4: $78
    nop                                           ; $78f5: $00
    nop                                           ; $78f6: $00
    inc b                                         ; $78f7: $04
    rst $38                                       ; $78f8: $ff
    nop                                           ; $78f9: $00
    nop                                           ; $78fa: $00
    db $d3                                        ; $78fb: $d3
    ld a, b                                       ; $78fc: $78
    nop                                           ; $78fd: $00
    nop                                           ; $78fe: $00
    dec b                                         ; $78ff: $05
    rst $38                                       ; $7900: $ff
    nop                                           ; $7901: $00
    nop                                           ; $7902: $00
    db $dd                                        ; $7903: $dd
    ld a, b                                       ; $7904: $78
    nop                                           ; $7905: $00
    nop                                           ; $7906: $00
    rst $38                                       ; $7907: $ff
    ret                                           ; $7908: $c9


    ld bc, $00ff                                  ; $7909: $01 $ff $00
    nop                                           ; $790c: $00
    ld a, e                                       ; $790d: $7b
    ld a, e                                       ; $790e: $7b
    ld b, $00                                     ; $790f: $06 $00
    rst $38                                       ; $7911: $ff
    ret                                           ; $7912: $c9


    ld bc, $00ff                                  ; $7913: $01 $ff $00
    nop                                           ; $7916: $00
    ld [de], a                                    ; $7917: $12
    ld a, c                                       ; $7918: $79
    nop                                           ; $7919: $00
    nop                                           ; $791a: $00
    rst $38                                       ; $791b: $ff
    xor a                                         ; $791c: $af
    ld [$c3f0], a                                 ; $791d: $ea $f0 $c3
    rst $18                                       ; $7920: $df
    ld a, [hl-]                                   ; $7921: $3a
    inc b                                         ; $7922: $04
    ld [$c3f1], a                                 ; $7923: $ea $f1 $c3
    ld a, $01                                     ; $7926: $3e $01
    ld hl, $792f                                  ; $7928: $21 $2f $79
    call Call_000_23e8                            ; $792b: $cd $e8 $23
    ret                                           ; $792e: $c9


    ldh a, [$94]                                  ; $792f: $f0 $94
    and $f0                                       ; $7931: $e6 $f0
    jr z, jr_035_793e                             ; $7933: $28 $09

    ld a, [$c296]                                 ; $7935: $fa $96 $c2
    ld b, a                                       ; $7938: $47
    ld a, $01                                     ; $7939: $3e $01
    rst $18                                       ; $793b: $df
    ld [hl-], a                                   ; $793c: $32
    ld a, [bc]                                    ; $793d: $0a

jr_035_793e:
    ret                                           ; $793e: $c9


Call_035_793f:
    ld hl, $c289                                  ; $793f: $21 $89 $c2
    ld [hl], $00                                  ; $7942: $36 $00
    push af                                       ; $7944: $f5
    ld hl, $c290                                  ; $7945: $21 $90 $c2
    ld a, [hl+]                                   ; $7948: $2a
    ld h, [hl]                                    ; $7949: $66
    ld l, a                                       ; $794a: $6f
    pop af                                        ; $794b: $f1
    rst $18                                       ; $794c: $df
    ld [hl], $04                                  ; $794d: $36 $04
    call Call_000_05dd                            ; $794f: $cd $dd $05
    ld a, [$c296]                                 ; $7952: $fa $96 $c2
    ld b, a                                       ; $7955: $47
    ld a, $01                                     ; $7956: $3e $01
    rst $18                                       ; $7958: $df
    ld [hl-], a                                   ; $7959: $32
    ld a, [bc]                                    ; $795a: $0a
    ret                                           ; $795b: $c9


    ld [hl], e                                    ; $795c: $73
    ld a, c                                       ; $795d: $79
    or [hl]                                       ; $795e: $b6
    ld a, c                                       ; $795f: $79
    ld l, d                                       ; $7960: $6a
    ld a, c                                       ; $7961: $79
    rst $08                                       ; $7962: $cf
    ld a, c                                       ; $7963: $79
    ret nc                                        ; $7964: $d0

    ld a, c                                       ; $7965: $79
    pop de                                        ; $7966: $d1
    ld a, c                                       ; $7967: $79
    jp nc, Jump_000_0079                          ; $7968: $d2 $79 $00

    nop                                           ; $796b: $00
    nop                                           ; $796c: $00
    nop                                           ; $796d: $00
    nop                                           ; $796e: $00
    nop                                           ; $796f: $00
    nop                                           ; $7970: $00
    nop                                           ; $7971: $00
    rst $38                                       ; $7972: $ff
    ld bc, $0080                                  ; $7973: $01 $80 $00
    inc sp                                        ; $7976: $33
    nop                                           ; $7977: $00
    add hl, bc                                    ; $7978: $09
    ld [bc], a                                    ; $7979: $02
    add b                                         ; $797a: $80
    nop                                           ; $797b: $00
    add hl, bc                                    ; $797c: $09
    nop                                           ; $797d: $00
    add hl, bc                                    ; $797e: $09
    inc bc                                        ; $797f: $03
    add b                                         ; $7980: $80
    nop                                           ; $7981: $00
    add hl, bc                                    ; $7982: $09
    nop                                           ; $7983: $00
    add hl, bc                                    ; $7984: $09
    ld b, $80                                     ; $7985: $06 $80
    nop                                           ; $7987: $00
    inc sp                                        ; $7988: $33
    nop                                           ; $7989: $00
    add hl, bc                                    ; $798a: $09
    rlca                                          ; $798b: $07
    add b                                         ; $798c: $80
    nop                                           ; $798d: $00
    inc sp                                        ; $798e: $33
    nop                                           ; $798f: $00
    add hl, bc                                    ; $7990: $09
    ld [$0080], sp                                ; $7991: $08 $80 $00
    inc sp                                        ; $7994: $33
    nop                                           ; $7995: $00
    add hl, bc                                    ; $7996: $09
    add hl, bc                                    ; $7997: $09
    add b                                         ; $7998: $80
    nop                                           ; $7999: $00
    inc sp                                        ; $799a: $33
    nop                                           ; $799b: $00
    add hl, bc                                    ; $799c: $09
    ld a, [bc]                                    ; $799d: $0a
    add b                                         ; $799e: $80
    nop                                           ; $799f: $00
    inc sp                                        ; $79a0: $33
    nop                                           ; $79a1: $00
    add hl, bc                                    ; $79a2: $09
    dec bc                                        ; $79a3: $0b
    add b                                         ; $79a4: $80
    nop                                           ; $79a5: $00
    inc sp                                        ; $79a6: $33
    nop                                           ; $79a7: $00
    add hl, bc                                    ; $79a8: $09
    inc c                                         ; $79a9: $0c
    add b                                         ; $79aa: $80
    nop                                           ; $79ab: $00
    inc sp                                        ; $79ac: $33
    nop                                           ; $79ad: $00
    add hl, bc                                    ; $79ae: $09
    dec c                                         ; $79af: $0d
    add b                                         ; $79b0: $80
    nop                                           ; $79b1: $00
    inc sp                                        ; $79b2: $33
    nop                                           ; $79b3: $00
    add hl, bc                                    ; $79b4: $09
    rst $38                                       ; $79b5: $ff
    ld bc, $00ff                                  ; $79b6: $01 $ff $00
    nop                                           ; $79b9: $00
    nop                                           ; $79ba: $00
    nop                                           ; $79bb: $00
    dec b                                         ; $79bc: $05
    ld bc, $ff02                                  ; $79bd: $01 $02 $ff
    nop                                           ; $79c0: $00
    nop                                           ; $79c1: $00
    nop                                           ; $79c2: $00
    nop                                           ; $79c3: $00
    ld [bc], a                                    ; $79c4: $02
    rrca                                          ; $79c5: $0f
    inc bc                                        ; $79c6: $03
    rst $38                                       ; $79c7: $ff
    nop                                           ; $79c8: $00
    nop                                           ; $79c9: $00
    nop                                           ; $79ca: $00
    nop                                           ; $79cb: $00
    nop                                           ; $79cc: $00
    ld [bc], a                                    ; $79cd: $02
    rst $38                                       ; $79ce: $ff
    rst $38                                       ; $79cf: $ff
    rst $38                                       ; $79d0: $ff
    rst $38                                       ; $79d1: $ff
    ld a, [$c46a]                                 ; $79d2: $fa $6a $c4
    cp $01                                        ; $79d5: $fe $01
    jp z, Jump_035_79e5                           ; $79d7: $ca $e5 $79

    cp $02                                        ; $79da: $fe $02
    jp z, Jump_035_7a29                           ; $79dc: $ca $29 $7a

    cp $03                                        ; $79df: $fe $03
    jp z, Jump_035_7aa5                           ; $79e1: $ca $a5 $7a

    ret                                           ; $79e4: $c9


Jump_035_79e5:
    ld a, $00                                     ; $79e5: $3e $00
    ld b, $00                                     ; $79e7: $06 $00
    rst $18                                       ; $79e9: $df
    ld b, [hl]                                    ; $79ea: $46
    ld a, [bc]                                    ; $79eb: $0a
    ld a, [$c298]                                 ; $79ec: $fa $98 $c2
    ld b, $00                                     ; $79ef: $06 $00
    rst $18                                       ; $79f1: $df
    ld b, [hl]                                    ; $79f2: $46
    ld a, [bc]                                    ; $79f3: $0a
    ld c, $04                                     ; $79f4: $0e $04
    call Call_000_25af                            ; $79f6: $cd $af $25
    call Call_000_2625                            ; $79f9: $cd $25 $26
    ld hl, $c82d                                  ; $79fc: $21 $2d $c8
    set 7, [hl]                                   ; $79ff: $cb $fe
    ld hl, $0486                                  ; $7a01: $21 $86 $04
    rst $18                                       ; $7a04: $df
    ld c, $0a                                     ; $7a05: $0e $0a
    ld a, $86                                     ; $7a07: $3e $86
    rst $18                                       ; $7a09: $df
    ld a, [bc]                                    ; $7a0a: $0a
    ld a, [bc]                                    ; $7a0b: $0a
    push af                                       ; $7a0c: $f5
    ld a, $6e                                     ; $7a0d: $3e $6e
    rst $18                                       ; $7a0f: $df
    inc b                                         ; $7a10: $04
    ld a, [bc]                                    ; $7a11: $0a
    pop af                                        ; $7a12: $f1
    rst $18                                       ; $7a13: $df
    inc c                                         ; $7a14: $0c
    ld a, [bc]                                    ; $7a15: $0a
    ld hl, $c82d                                  ; $7a16: $21 $2d $c8
    res 7, [hl]                                   ; $7a19: $cb $be
    ld c, $04                                     ; $7a1b: $0e $04
    call Call_000_25a1                            ; $7a1d: $cd $a1 $25
    call Call_000_2625                            ; $7a20: $cd $25 $26
    ld a, $01                                     ; $7a23: $3e $01
    ld [$c441], a                                 ; $7a25: $ea $41 $c4
    ret                                           ; $7a28: $c9


Jump_035_7a29:
    ld hl, $1442                                  ; $7a29: $21 $42 $14
    rst $18                                       ; $7a2c: $df
    ld c, $0a                                     ; $7a2d: $0e $0a
    ld a, $00                                     ; $7a2f: $3e $00
    ld b, $00                                     ; $7a31: $06 $00
    rst $18                                       ; $7a33: $df
    ld b, [hl]                                    ; $7a34: $46
    ld a, [bc]                                    ; $7a35: $0a
    ld a, [$c298]                                 ; $7a36: $fa $98 $c2
    ld b, $00                                     ; $7a39: $06 $00
    rst $18                                       ; $7a3b: $df
    ld b, [hl]                                    ; $7a3c: $46
    ld a, [bc]                                    ; $7a3d: $0a
    ld bc, $0080                                  ; $7a3e: $01 $80 $00
    rst $18                                       ; $7a41: $df
    ld [hl], $0a                                  ; $7a42: $36 $0a
    ld a, $01                                     ; $7a44: $3e $01
    ld bc, $0800                                  ; $7a46: $01 $00 $08
    ld de, $0800                                  ; $7a49: $11 $00 $08
    rst $18                                       ; $7a4c: $df
    jr c, @+$0c                                   ; $7a4d: $38 $0a

    ld c, $02                                     ; $7a4f: $0e $02
    call Call_000_25af                            ; $7a51: $cd $af $25
    call Call_000_2625                            ; $7a54: $cd $25 $26
    push af                                       ; $7a57: $f5
    ld a, $14                                     ; $7a58: $3e $14
    rst $18                                       ; $7a5a: $df
    inc b                                         ; $7a5b: $04
    ld a, [bc]                                    ; $7a5c: $0a
    pop af                                        ; $7a5d: $f1
    ld a, $8a                                     ; $7a5e: $3e $8a
    rst $18                                       ; $7a60: $df
    ld [$0e0a], sp                                ; $7a61: $08 $0a $0e
    inc b                                         ; $7a64: $04
    call Call_000_25a1                            ; $7a65: $cd $a1 $25
    call Call_000_2625                            ; $7a68: $cd $25 $26
    xor a                                         ; $7a6b: $af
    ld bc, $0900                                  ; $7a6c: $01 $00 $09
    ld de, $2100                                  ; $7a6f: $11 $00 $21
    rst $18                                       ; $7a72: $df
    jr c, @+$0c                                   ; $7a73: $38 $0a

    rst $18                                       ; $7a75: $df
    inc a                                         ; $7a76: $3c
    ld a, [bc]                                    ; $7a77: $0a
    ld c, $02                                     ; $7a78: $0e $02
    call Call_000_25af                            ; $7a7a: $cd $af $25
    call Call_000_2625                            ; $7a7d: $cd $25 $26
    push af                                       ; $7a80: $f5
    ld a, $14                                     ; $7a81: $3e $14
    rst $18                                       ; $7a83: $df
    inc b                                         ; $7a84: $04
    ld a, [bc]                                    ; $7a85: $0a
    pop af                                        ; $7a86: $f1
    ld a, $8a                                     ; $7a87: $3e $8a
    rst $18                                       ; $7a89: $df
    ld [$0e0a], sp                                ; $7a8a: $08 $0a $0e
    inc b                                         ; $7a8d: $04
    call Call_000_25a1                            ; $7a8e: $cd $a1 $25
    call Call_000_2625                            ; $7a91: $cd $25 $26
    rst $20                                       ; $7a94: $e7
    ld h, b                                       ; $7a95: $60
    rrca                                          ; $7a96: $0f
    push de                                       ; $7a97: $d5
    ld de, $01e0                                  ; $7a98: $11 $e0 $01
    rst $18                                       ; $7a9b: $df
    ld b, h                                       ; $7a9c: $44
    ld [bc], a                                    ; $7a9d: $02
    pop de                                        ; $7a9e: $d1
    ld a, $02                                     ; $7a9f: $3e $02
    ld [$c441], a                                 ; $7aa1: $ea $41 $c4
    ret                                           ; $7aa4: $c9


Jump_035_7aa5:
    ld hl, $1442                                  ; $7aa5: $21 $42 $14
    rst $18                                       ; $7aa8: $df
    ld c, $0a                                     ; $7aa9: $0e $0a
    ld a, $00                                     ; $7aab: $3e $00
    ld b, $00                                     ; $7aad: $06 $00
    rst $18                                       ; $7aaf: $df
    ld b, [hl]                                    ; $7ab0: $46
    ld a, [bc]                                    ; $7ab1: $0a
    ld a, [$c298]                                 ; $7ab2: $fa $98 $c2
    ld b, $00                                     ; $7ab5: $06 $00
    rst $18                                       ; $7ab7: $df
    ld b, [hl]                                    ; $7ab8: $46
    ld a, [bc]                                    ; $7ab9: $0a
    ld bc, $0080                                  ; $7aba: $01 $80 $00
    rst $18                                       ; $7abd: $df
    ld [hl], $0a                                  ; $7abe: $36 $0a
    ld a, $01                                     ; $7ac0: $3e $01
    ld bc, $0800                                  ; $7ac2: $01 $00 $08
    ld de, $0800                                  ; $7ac5: $11 $00 $08
    rst $18                                       ; $7ac8: $df
    jr c, @+$0c                                   ; $7ac9: $38 $0a

    ld c, $02                                     ; $7acb: $0e $02
    call Call_000_25af                            ; $7acd: $cd $af $25
    call Call_000_2625                            ; $7ad0: $cd $25 $26
    push af                                       ; $7ad3: $f5
    ld a, $14                                     ; $7ad4: $3e $14
    rst $18                                       ; $7ad6: $df
    inc b                                         ; $7ad7: $04
    ld a, [bc]                                    ; $7ad8: $0a
    pop af                                        ; $7ad9: $f1
    ld a, $8a                                     ; $7ada: $3e $8a
    rst $18                                       ; $7adc: $df
    ld [$0e0a], sp                                ; $7add: $08 $0a $0e
    inc b                                         ; $7ae0: $04
    call Call_000_25a1                            ; $7ae1: $cd $a1 $25
    call Call_000_2625                            ; $7ae4: $cd $25 $26
    xor a                                         ; $7ae7: $af
    ld bc, $0900                                  ; $7ae8: $01 $00 $09
    ld de, $2100                                  ; $7aeb: $11 $00 $21
    rst $18                                       ; $7aee: $df
    jr c, @+$0c                                   ; $7aef: $38 $0a

    rst $18                                       ; $7af1: $df
    inc a                                         ; $7af2: $3c
    ld a, [bc]                                    ; $7af3: $0a
    ld c, $02                                     ; $7af4: $0e $02
    call Call_000_25af                            ; $7af6: $cd $af $25
    call Call_000_2625                            ; $7af9: $cd $25 $26
    push af                                       ; $7afc: $f5
    ld a, $14                                     ; $7afd: $3e $14
    rst $18                                       ; $7aff: $df
    inc b                                         ; $7b00: $04
    ld a, [bc]                                    ; $7b01: $0a
    pop af                                        ; $7b02: $f1
    ld a, $8a                                     ; $7b03: $3e $8a
    rst $18                                       ; $7b05: $df
    ld [$0e0a], sp                                ; $7b06: $08 $0a $0e
    inc b                                         ; $7b09: $04
    call Call_000_25a1                            ; $7b0a: $cd $a1 $25
    call Call_000_2625                            ; $7b0d: $cd $25 $26
    rst $20                                       ; $7b10: $e7
    ld h, b                                       ; $7b11: $60
    rrca                                          ; $7b12: $0f
    push de                                       ; $7b13: $d5
    ld de, $01e0                                  ; $7b14: $11 $e0 $01
    rst $18                                       ; $7b17: $df
    ld b, h                                       ; $7b18: $44
    ld [bc], a                                    ; $7b19: $02
    pop de                                        ; $7b1a: $d1
    ld a, $03                                     ; $7b1b: $3e $03
    ld [$c441], a                                 ; $7b1d: $ea $41 $c4
    ret                                           ; $7b20: $c9


    nop                                           ; $7b21: $00
    dec c                                         ; $7b22: $0d
    dec de                                        ; $7b23: $1b
    nop                                           ; $7b24: $00
    nop                                           ; $7b25: $00
    nop                                           ; $7b26: $00
    ld a, [bc]                                    ; $7b27: $0a
    ld bc, $0c01                                  ; $7b28: $01 $01 $0c
    db $fc                                        ; $7b2b: $fc
    rst $38                                       ; $7b2c: $ff
    inc de                                        ; $7b2d: $13
    add hl, bc                                    ; $7b2e: $09
    ld [bc], a                                    ; $7b2f: $02
    ld bc, $0c28                                  ; $7b30: $01 $28 $0c
    ei                                            ; $7b33: $fb
    rst $38                                       ; $7b34: $ff
    inc bc                                        ; $7b35: $03
    nop                                           ; $7b36: $00
    dec d                                         ; $7b37: $15
    nop                                           ; $7b38: $00
    dec d                                         ; $7b39: $15
    ld bc, $0414                                  ; $7b3a: $01 $14 $04
    nop                                           ; $7b3d: $00
    rla                                           ; $7b3e: $17
    nop                                           ; $7b3f: $00
    dec d                                         ; $7b40: $15
    ld [bc], a                                    ; $7b41: $02
    ld bc, $0614                                  ; $7b42: $01 $14 $06
    nop                                           ; $7b45: $00
    nop                                           ; $7b46: $00
    nop                                           ; $7b47: $00
    cp $02                                        ; $7b48: $fe $02
    ld bc, $0714                                  ; $7b4a: $01 $14 $07
    add b                                         ; $7b4d: $80
    nop                                           ; $7b4e: $00
    ld [bc], a                                    ; $7b4f: $02
    ld [bc], a                                    ; $7b50: $02
    ld bc, $0814                                  ; $7b51: $01 $14 $08
    ld b, b                                       ; $7b54: $40
    nop                                           ; $7b55: $00
    ld [bc], a                                    ; $7b56: $02
    ld [bc], a                                    ; $7b57: $02
    ld bc, $0d14                                  ; $7b58: $01 $14 $0d
    ld a, [bc]                                    ; $7b5b: $0a
    nop                                           ; $7b5c: $00
    add hl, de                                    ; $7b5d: $19
    dec c                                         ; $7b5e: $0d
    ld [de], a                                    ; $7b5f: $12
    ld bc, $0200                                  ; $7b60: $01 $00 $02
    ld bc, $0e14                                  ; $7b63: $01 $14 $0e
    inc c                                         ; $7b66: $0c
    nop                                           ; $7b67: $00
    cp $0d                                        ; $7b68: $fe $0d
    ld [de], a                                    ; $7b6a: $12
    ld bc, $0200                                  ; $7b6b: $01 $00 $02
    ld bc, $1014                                  ; $7b6e: $01 $14 $10
    inc bc                                        ; $7b71: $03
    ld bc, $1078                                  ; $7b72: $01 $78 $10
    ld bc, $1401                                  ; $7b75: $01 $01 $14
    inc c                                         ; $7b78: $0c
    cp h                                          ; $7b79: $bc
    rst $38                                       ; $7b7a: $ff
    ret                                           ; $7b7b: $c9


    db $10                                        ; $7b7c: $10
    inc bc                                        ; $7b7d: $03
    ld bc, $10a0                                  ; $7b7e: $01 $a0 $10
    ld [bc], a                                    ; $7b81: $02
    ld bc, $0c04                                  ; $7b82: $01 $04 $0c
    rst $30                                       ; $7b85: $f7
    rst $38                                       ; $7b86: $ff
    ld bc, $1028                                  ; $7b87: $01 $28 $10
    inc bc                                        ; $7b8a: $03
    ld bc, $0c78                                  ; $7b8b: $01 $78 $0c
    ld sp, hl                                     ; $7b8e: $f9
    rst $38                                       ; $7b8f: $ff
    ld bc, $1050                                  ; $7b90: $01 $50 $10
    inc bc                                        ; $7b93: $03
    ld bc, $0c78                                  ; $7b94: $01 $78 $0c
    ld sp, hl                                     ; $7b97: $f9
    rst $38                                       ; $7b98: $ff
    ld bc, $108c                                  ; $7b99: $01 $8c $10
    inc bc                                        ; $7b9c: $03
    ld bc, $0c78                                  ; $7b9d: $01 $78 $0c
    ld sp, hl                                     ; $7ba0: $f9
    rst $38                                       ; $7ba1: $ff
    push de                                       ; $7ba2: $d5
    ld hl, $c880                                  ; $7ba3: $21 $80 $c8
    ld d, $00                                     ; $7ba6: $16 $00
    ld e, a                                       ; $7ba8: $5f
    ld a, [$c835]                                 ; $7ba9: $fa $35 $c8
    or a                                          ; $7bac: $b7
    jr z, jr_035_7bb3                             ; $7bad: $28 $04

    ld a, $40                                     ; $7baf: $3e $40
    add e                                         ; $7bb1: $83
    ld e, a                                       ; $7bb2: $5f

jr_035_7bb3:
    add hl, de                                    ; $7bb3: $19
    pop de                                        ; $7bb4: $d1
    ret                                           ; $7bb5: $c9


    push bc                                       ; $7bb6: $c5
    push de                                       ; $7bb7: $d5
    push hl                                       ; $7bb8: $e5
    push hl                                       ; $7bb9: $e5
    rst $18                                       ; $7bba: $df
    inc b                                         ; $7bbb: $04
    db $10                                        ; $7bbc: $10
    ld d, h                                       ; $7bbd: $54
    ld e, l                                       ; $7bbe: $5d
    pop hl                                        ; $7bbf: $e1
    call Call_000_08ac                            ; $7bc0: $cd $ac $08
    bit 7, h                                      ; $7bc3: $cb $7c
    ld a, $01                                     ; $7bc5: $3e $01
    jr nz, jr_035_7bca                            ; $7bc7: $20 $01

    xor a                                         ; $7bc9: $af

jr_035_7bca:
    pop hl                                        ; $7bca: $e1
    pop de                                        ; $7bcb: $d1
    pop bc                                        ; $7bcc: $c1
    ret                                           ; $7bcd: $c9


    push af                                       ; $7bce: $f5
    push bc                                       ; $7bcf: $c5
    ld hl, $c290                                  ; $7bd0: $21 $90 $c2
    ld a, [hl+]                                   ; $7bd3: $2a
    ld h, [hl]                                    ; $7bd4: $66
    ld l, a                                       ; $7bd5: $6f
    ld a, l                                       ; $7bd6: $7d
    ldh [$e0], a                                  ; $7bd7: $e0 $e0
    ld a, h                                       ; $7bd9: $7c
    ldh [$e1], a                                  ; $7bda: $e0 $e1
    ld a, $04                                     ; $7bdc: $3e $04
    ldh [$96], a                                  ; $7bde: $e0 $96
    ldh [rSVBK], a                                ; $7be0: $e0 $70
    ld hl, $ffe0                                  ; $7be2: $21 $e0 $ff
    ld a, [hl+]                                   ; $7be5: $2a
    ld h, [hl]                                    ; $7be6: $66
    add $06                                       ; $7be7: $c6 $06
    ld l, a                                       ; $7be9: $6f
    ld a, [hl+]                                   ; $7bea: $2a
    ld d, [hl]                                    ; $7beb: $56
    ld e, a                                       ; $7bec: $5f
    ld hl, $ffe0                                  ; $7bed: $21 $e0 $ff
    ld a, [hl+]                                   ; $7bf0: $2a
    ld h, [hl]                                    ; $7bf1: $66
    add $04                                       ; $7bf2: $c6 $04
    ld l, a                                       ; $7bf4: $6f
    ld a, [hl+]                                   ; $7bf5: $2a
    ld h, [hl]                                    ; $7bf6: $66
    ld l, a                                       ; $7bf7: $6f
    pop bc                                        ; $7bf8: $c1
    pop af                                        ; $7bf9: $f1
    ret                                           ; $7bfa: $c9


Call_035_7bfb:
    ld c, $08                                     ; $7bfb: $0e $08
    call Call_000_25a1                            ; $7bfd: $cd $a1 $25
    call Call_000_2625                            ; $7c00: $cd $25 $26
    rst $18                                       ; $7c03: $df
    nop                                           ; $7c04: $00
    ld b, c                                       ; $7c05: $41
    ret                                           ; $7c06: $c9


    rst $30                                       ; $7c07: $f7
    ld h, b                                       ; $7c08: $60
    inc c                                         ; $7c09: $0c
    jr z, jr_035_7c19                             ; $7c0a: $28 $0d

    ld h, d                                       ; $7c0c: $62
    ld l, e                                       ; $7c0d: $6b
    sra h                                         ; $7c0e: $cb $2c
    rr l                                          ; $7c10: $cb $1d
    sra h                                         ; $7c12: $cb $2c
    rr l                                          ; $7c14: $cb $1d
    add hl, de                                    ; $7c16: $19
    ld d, h                                       ; $7c17: $54
    ld e, l                                       ; $7c18: $5d

jr_035_7c19:
    push de                                       ; $7c19: $d5
    rst $18                                       ; $7c1a: $df
    ld [hl+], a                                   ; $7c1b: $22
    ld [bc], a                                    ; $7c1c: $02
    pop hl                                        ; $7c1d: $e1
    rst $18                                       ; $7c1e: $df
    ld d, [hl]                                    ; $7c1f: $56
    dec b                                         ; $7c20: $05
    rst $08                                       ; $7c21: $cf
    jr c, @+$23                                   ; $7c22: $38 $21

    dec de                                        ; $7c24: $1b
    ld bc, $0edf                                  ; $7c25: $01 $df $0e
    ld a, [bc]                                    ; $7c28: $0a
    ld a, $80                                     ; $7c29: $3e $80
    rst $18                                       ; $7c2b: $df
    ld [$cd0a], sp                                ; $7c2c: $08 $0a $cd
    rra                                           ; $7c2f: $1f
    inc l                                         ; $7c30: $2c
    call Call_035_7bfb                            ; $7c31: $cd $fb $7b
    ret                                           ; $7c34: $c9


    ld a, [$c810]                                 ; $7c35: $fa $10 $c8
    cp $00                                        ; $7c38: $fe $00
    jr z, jr_035_7c41                             ; $7c3a: $28 $05

    rst $30                                       ; $7c3c: $f7
    add b                                         ; $7c3d: $80
    ld de, $6828                                  ; $7c3e: $11 $28 $68

jr_035_7c41:
    ld a, [$c810]                                 ; $7c41: $fa $10 $c8
    cp $01                                        ; $7c44: $fe $01
    jr z, jr_035_7c4d                             ; $7c46: $28 $05

    rst $30                                       ; $7c48: $f7
    and b                                         ; $7c49: $a0
    ld de, $5c28                                  ; $7c4a: $11 $28 $5c

jr_035_7c4d:
    ld a, [$c810]                                 ; $7c4d: $fa $10 $c8
    cp $02                                        ; $7c50: $fe $02
    jr z, jr_035_7c59                             ; $7c52: $28 $05

    rst $30                                       ; $7c54: $f7
    ret nz                                        ; $7c55: $c0

    ld de, $5028                                  ; $7c56: $11 $28 $50

jr_035_7c59:
    ld a, [$c810]                                 ; $7c59: $fa $10 $c8
    cp $03                                        ; $7c5c: $fe $03
    jr z, jr_035_7c65                             ; $7c5e: $28 $05

    rst $30                                       ; $7c60: $f7
    ldh [rNR11], a                                ; $7c61: $e0 $11
    jr z, jr_035_7ca9                             ; $7c63: $28 $44

jr_035_7c65:
    ld de, $012c                                  ; $7c65: $11 $2c $01
    push de                                       ; $7c68: $d5
    rst $18                                       ; $7c69: $df
    ld [hl+], a                                   ; $7c6a: $22
    ld [bc], a                                    ; $7c6b: $02
    pop hl                                        ; $7c6c: $e1
    rst $18                                       ; $7c6d: $df
    ld d, [hl]                                    ; $7c6e: $56
    dec b                                         ; $7c6f: $05
    rst $08                                       ; $7c70: $cf
    jr c, jr_035_7c94                             ; $7c71: $38 $21

    dec de                                        ; $7c73: $1b
    ld bc, $0edf                                  ; $7c74: $01 $df $0e
    ld a, [bc]                                    ; $7c77: $0a
    ld a, $80                                     ; $7c78: $3e $80
    rst $18                                       ; $7c7a: $df
    ld [$cd0a], sp                                ; $7c7b: $08 $0a $cd
    rra                                           ; $7c7e: $1f
    inc l                                         ; $7c7f: $2c
    call Call_035_7bfb                            ; $7c80: $cd $fb $7b
    ld b, $00                                     ; $7c83: $06 $00
    ld c, $fa                                     ; $7c85: $0e $fa
    rst $18                                       ; $7c87: $df
    ld c, [hl]                                    ; $7c88: $4e
    ld a, [bc]                                    ; $7c89: $0a
    rst $18                                       ; $7c8a: $df
    inc [hl]                                      ; $7c8b: $34
    ld [bc], a                                    ; $7c8c: $02
    ld a, $fa                                     ; $7c8d: $3e $fa
    ld [$c441], a                                 ; $7c8f: $ea $41 $c4
    ld a, $fa                                     ; $7c92: $3e $fa

jr_035_7c94:
    ld [$c46a], a                                 ; $7c94: $ea $6a $c4
    ld hl, $c2a0                                  ; $7c97: $21 $a0 $c2
    ld de, $c466                                  ; $7c9a: $11 $66 $c4
    ld bc, $0004                                  ; $7c9d: $01 $04 $00
    call Call_000_03d3                            ; $7ca0: $cd $d3 $03
    ld a, [$c2a4]                                 ; $7ca3: $fa $a4 $c2
    ld [$c465], a                                 ; $7ca6: $ea $65 $c4

jr_035_7ca9:
    ret                                           ; $7ca9: $c9


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
