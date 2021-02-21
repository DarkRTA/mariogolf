; Disassembly of "mgolf.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $018", ROMX[$4000], BANK[$18]

    db $04, $7d, $0c, $7d

    nop                                           ; $4004: $00
    nop                                           ; $4005: $00
    dec b                                         ; $4006: $05
    nop                                           ; $4007: $00
    dec e                                         ; $4008: $1d
    nop                                           ; $4009: $00
    add hl, sp                                    ; $400a: $39
    nop                                           ; $400b: $00
    ld d, h                                       ; $400c: $54
    nop                                           ; $400d: $00
    ld l, h                                       ; $400e: $6c
    nop                                           ; $400f: $00
    adc c                                         ; $4010: $89
    nop                                           ; $4011: $00
    sbc [hl]                                      ; $4012: $9e
    nop                                           ; $4013: $00
    cp e                                          ; $4014: $bb
    nop                                           ; $4015: $00
    db $d3                                        ; $4016: $d3
    nop                                           ; $4017: $00
    db $eb                                        ; $4018: $eb
    nop                                           ; $4019: $00
    inc b                                         ; $401a: $04
    ld bc, $010c                                  ; $401b: $01 $0c $01
    inc d                                         ; $401e: $14
    ld bc, $0128                                  ; $401f: $01 $28 $01
    ld b, c                                       ; $4022: $41
    ld bc, $0155                                  ; $4023: $01 $55 $01
    ld l, c                                       ; $4026: $69
    ld bc, $017d                                  ; $4027: $01 $7d $01
    sub c                                         ; $402a: $91
    ld bc, $01aa                                  ; $402b: $01 $aa $01
    jp $d701                                      ; $402e: $c3 $01 $d7


    ld bc, $01f0                                  ; $4031: $01 $f0 $01
    ld hl, sp+$01                                 ; $4034: $f8 $01
    nop                                           ; $4036: $00
    ld [bc], a                                    ; $4037: $02

    db $02, $02

    add hl, bc                                    ; $403a: $09
    ld [bc], a                                    ; $403b: $02
    ld [de], a                                    ; $403c: $12
    ld [bc], a                                    ; $403d: $02
    dec de                                        ; $403e: $1b
    ld [bc], a                                    ; $403f: $02
    inc h                                         ; $4040: $24
    ld [bc], a                                    ; $4041: $02
    dec l                                         ; $4042: $2d
    ld [bc], a                                    ; $4043: $02
    ld [hl], $02                                  ; $4044: $36 $02
    ccf                                           ; $4046: $3f
    ld [bc], a                                    ; $4047: $02

    db $41, $02, $50, $02, $5d, $02, $6a, $02

    ld a, b                                       ; $4050: $78
    ld [bc], a                                    ; $4051: $02
    adc d                                         ; $4052: $8a
    ld [bc], a                                    ; $4053: $02
    sbc d                                         ; $4054: $9a
    ld [bc], a                                    ; $4055: $02
    sbc h                                         ; $4056: $9c
    ld [bc], a                                    ; $4057: $02
    xor [hl]                                      ; $4058: $ae
    ld [bc], a                                    ; $4059: $02
    ret nz                                        ; $405a: $c0

    ld [bc], a                                    ; $405b: $02
    jp nc, $e702                                  ; $405c: $d2 $02 $e7

    ld [bc], a                                    ; $405f: $02
    ei                                            ; $4060: $fb
    ld [bc], a                                    ; $4061: $02
    db $10                                        ; $4062: $10
    inc bc                                        ; $4063: $03

    db $12, $03, $23, $03, $35, $03, $47, $03

    ld e, h                                       ; $406c: $5c
    inc bc                                        ; $406d: $03
    ld [hl], b                                    ; $406e: $70
    inc bc                                        ; $406f: $03
    add l                                         ; $4070: $85
    inc bc                                        ; $4071: $03
    add a                                         ; $4072: $87
    inc bc                                        ; $4073: $03
    sub d                                         ; $4074: $92
    inc bc                                        ; $4075: $03
    sbc a                                         ; $4076: $9f
    inc bc                                        ; $4077: $03
    xor d                                         ; $4078: $aa
    inc bc                                        ; $4079: $03

    db $ba, $03

    ret                                           ; $407c: $c9


    inc bc                                        ; $407d: $03
    rlc e                                         ; $407e: $cb $03
    jp nc, $d703                                  ; $4080: $d2 $03 $d7

    inc bc                                        ; $4083: $03
    call c, $e203                                 ; $4084: $dc $03 $e2
    inc bc                                        ; $4087: $03
    add sp, $03                                   ; $4088: $e8 $03

    db $f5, $03, $f9, $03

    nop                                           ; $408e: $00
    inc b                                         ; $408f: $04
    rlca                                          ; $4090: $07
    inc b                                         ; $4091: $04
    dec bc                                        ; $4092: $0b
    inc b                                         ; $4093: $04
    ld de, $1704                                  ; $4094: $11 $04 $17
    inc b                                         ; $4097: $04
    inc e                                         ; $4098: $1c
    inc b                                         ; $4099: $04

    db $26, $04, $2c, $04

    ld [hl-], a                                   ; $409e: $32
    inc b                                         ; $409f: $04
    jr c, jr_018_40a6                             ; $40a0: $38 $04

    dec a                                         ; $40a2: $3d
    inc b                                         ; $40a3: $04
    ld b, e                                       ; $40a4: $43
    inc b                                         ; $40a5: $04

jr_018_40a6:
    ld c, b                                       ; $40a6: $48
    inc b                                         ; $40a7: $04
    ld d, c                                       ; $40a8: $51
    inc b                                         ; $40a9: $04
    ld d, l                                       ; $40aa: $55
    inc b                                         ; $40ab: $04
    ld e, c                                       ; $40ac: $59
    inc b                                         ; $40ad: $04
    ld h, b                                       ; $40ae: $60
    inc b                                         ; $40af: $04
    ld h, a                                       ; $40b0: $67
    inc b                                         ; $40b1: $04
    ld l, e                                       ; $40b2: $6b
    inc b                                         ; $40b3: $04
    ld [hl], c                                    ; $40b4: $71
    inc b                                         ; $40b5: $04
    ld [hl], a                                    ; $40b6: $77
    inc b                                         ; $40b7: $04
    ld a, h                                       ; $40b8: $7c
    inc b                                         ; $40b9: $04
    add h                                         ; $40ba: $84
    inc b                                         ; $40bb: $04
    adc d                                         ; $40bc: $8a
    inc b                                         ; $40bd: $04
    sub b                                         ; $40be: $90
    inc b                                         ; $40bf: $04
    sub [hl]                                      ; $40c0: $96
    inc b                                         ; $40c1: $04
    sbc e                                         ; $40c2: $9b
    inc b                                         ; $40c3: $04
    and c                                         ; $40c4: $a1
    inc b                                         ; $40c5: $04
    and [hl]                                      ; $40c6: $a6
    inc b                                         ; $40c7: $04
    xor a                                         ; $40c8: $af
    inc b                                         ; $40c9: $04
    or e                                          ; $40ca: $b3
    inc b                                         ; $40cb: $04
    push de                                       ; $40cc: $d5
    inc b                                         ; $40cd: $04
    ld sp, hl                                     ; $40ce: $f9
    inc b                                         ; $40cf: $04
    dec bc                                        ; $40d0: $0b
    dec b                                         ; $40d1: $05
    dec c                                         ; $40d2: $0d
    dec b                                         ; $40d3: $05
    jr jr_018_40db                                ; $40d4: $18 $05

    db $23, $05, $2a, $05

    inc sp                                        ; $40da: $33

jr_018_40db:
    dec b                                         ; $40db: $05
    ld a, $05                                     ; $40dc: $3e $05
    ld b, a                                       ; $40de: $47
    dec b                                         ; $40df: $05
    ld c, c                                       ; $40e0: $49
    dec b                                         ; $40e1: $05

    db $4b, $05

    ld e, h                                       ; $40e4: $5c
    dec b                                         ; $40e5: $05
    ld e, [hl]                                    ; $40e6: $5e
    dec b                                         ; $40e7: $05
    ld [hl], a                                    ; $40e8: $77
    dec b                                         ; $40e9: $05

    db $8a, $05, $a0, $05

    or e                                          ; $40ee: $b3
    dec b                                         ; $40ef: $05
    cp [hl]                                       ; $40f0: $be
    dec b                                         ; $40f1: $05
    rst $00                                       ; $40f2: $c7
    dec b                                         ; $40f3: $05
    ret                                           ; $40f4: $c9


    dec b                                         ; $40f5: $05

    db $cb, $05

    push hl                                       ; $40f8: $e5
    dec b                                         ; $40f9: $05
    rst $20                                       ; $40fa: $e7
    dec b                                         ; $40fb: $05
    jp hl                                         ; $40fc: $e9


    dec b                                         ; $40fd: $05
    nop                                           ; $40fe: $00
    ld b, $19                                     ; $40ff: $06 $19
    ld b, $1b                                     ; $4101: $06 $1b
    ld b, $1d                                     ; $4103: $06 $1d
    ld b, $1f                                     ; $4105: $06 $1f
    ld b, $21                                     ; $4107: $06 $21
    ld b, $23                                     ; $4109: $06 $23
    ld b, $25                                     ; $410b: $06 $25
    ld b, $3c                                     ; $410d: $06 $3c
    ld b, $73                                     ; $410f: $06 $73
    ld b, $7b                                     ; $4111: $06 $7b
    ld b, $7f                                     ; $4113: $06 $7f
    ld b, $84                                     ; $4115: $06 $84
    ld b, $8b                                     ; $4117: $06 $8b
    ld b, $93                                     ; $4119: $06 $93
    ld b, $97                                     ; $411b: $06 $97
    ld b, $9e                                     ; $411d: $06 $9e
    ld b, $a3                                     ; $411f: $06 $a3
    ld b, $ab                                     ; $4121: $06 $ab
    ld b, $af                                     ; $4123: $06 $af
    ld b, $b7                                     ; $4125: $06 $b7
    ld b, $bb                                     ; $4127: $06 $bb
    ld b, $bf                                     ; $4129: $06 $bf
    ld b, $c4                                     ; $412b: $06 $c4
    ld b, $ca                                     ; $412d: $06 $ca
    ld b, $d2                                     ; $412f: $06 $d2
    ld b, $d8                                     ; $4131: $06 $d8
    ld b, $dc                                     ; $4133: $06 $dc
    ld b, $e2                                     ; $4135: $06 $e2
    ld b, $e8                                     ; $4137: $06 $e8
    ld b, $ee                                     ; $4139: $06 $ee
    ld b, $f4                                     ; $413b: $06 $f4
    ld b, $fb                                     ; $413d: $06 $fb
    ld b, $00                                     ; $413f: $06 $00
    rlca                                          ; $4141: $07
    inc b                                         ; $4142: $04
    rlca                                          ; $4143: $07
    ld [$0f07], sp                                ; $4144: $08 $07 $0f
    rlca                                          ; $4147: $07
    ld d, $07                                     ; $4148: $16 $07
    inc e                                         ; $414a: $1c
    rlca                                          ; $414b: $07
    inc hl                                        ; $414c: $23
    rlca                                          ; $414d: $07
    add hl, hl                                    ; $414e: $29
    rlca                                          ; $414f: $07
    dec l                                         ; $4150: $2d
    rlca                                          ; $4151: $07
    dec [hl]                                      ; $4152: $35
    rlca                                          ; $4153: $07
    add hl, sp                                    ; $4154: $39
    rlca                                          ; $4155: $07
    ccf                                           ; $4156: $3f
    rlca                                          ; $4157: $07
    ld c, b                                       ; $4158: $48
    rlca                                          ; $4159: $07
    ld c, [hl]                                    ; $415a: $4e
    rlca                                          ; $415b: $07
    ld d, a                                       ; $415c: $57
    rlca                                          ; $415d: $07
    ld e, h                                       ; $415e: $5c
    rlca                                          ; $415f: $07
    ld h, e                                       ; $4160: $63
    rlca                                          ; $4161: $07
    ld l, d                                       ; $4162: $6a
    rlca                                          ; $4163: $07
    ld l, a                                       ; $4164: $6f
    rlca                                          ; $4165: $07
    ld [hl], e                                    ; $4166: $73
    rlca                                          ; $4167: $07
    ld [hl], a                                    ; $4168: $77
    rlca                                          ; $4169: $07
    ld a, h                                       ; $416a: $7c
    rlca                                          ; $416b: $07
    add l                                         ; $416c: $85
    rlca                                          ; $416d: $07
    adc e                                         ; $416e: $8b
    rlca                                          ; $416f: $07
    sub c                                         ; $4170: $91
    rlca                                          ; $4171: $07
    sub a                                         ; $4172: $97
    rlca                                          ; $4173: $07
    sbc [hl]                                      ; $4174: $9e
    rlca                                          ; $4175: $07
    and h                                         ; $4176: $a4
    rlca                                          ; $4177: $07
    xor e                                         ; $4178: $ab
    rlca                                          ; $4179: $07
    or l                                          ; $417a: $b5
    rlca                                          ; $417b: $07
    cp [hl]                                       ; $417c: $be
    rlca                                          ; $417d: $07
    jp nz, $c607                                  ; $417e: $c2 $07 $c6

    rlca                                          ; $4181: $07
    call z, $d307                                 ; $4182: $cc $07 $d3
    rlca                                          ; $4185: $07
    jp c, $de07                                   ; $4186: $da $07 $de

    rlca                                          ; $4189: $07
    push hl                                       ; $418a: $e5
    rlca                                          ; $418b: $07
    db $eb                                        ; $418c: $eb
    rlca                                          ; $418d: $07
    ld a, [c]                                     ; $418e: $f2
    rlca                                          ; $418f: $07
    ld hl, sp+$07                                 ; $4190: $f8 $07
    cp $07                                        ; $4192: $fe $07
    dec b                                         ; $4194: $05
    ld [$0809], sp                                ; $4195: $08 $09 $08
    ld [de], a                                    ; $4198: $12
    ld [$0815], sp                                ; $4199: $08 $15 $08
    ld a, [de]                                    ; $419c: $1a
    ld [$0820], sp                                ; $419d: $08 $20 $08
    jr z, @+$0a                                   ; $41a0: $28 $08

    ld l, $08                                     ; $41a2: $2e $08
    inc sp                                        ; $41a4: $33
    ld [$083a], sp                                ; $41a5: $08 $3a $08
    ld b, c                                       ; $41a8: $41
    ld [$0847], sp                                ; $41a9: $08 $47 $08
    ld c, l                                       ; $41ac: $4d
    ld [$0852], sp                                ; $41ad: $08 $52 $08
    ld e, d                                       ; $41b0: $5a
    ld [$085f], sp                                ; $41b1: $08 $5f $08
    ld h, h                                       ; $41b4: $64
    ld [$0868], sp                                ; $41b5: $08 $68 $08
    ld l, [hl]                                    ; $41b8: $6e
    ld [$0875], sp                                ; $41b9: $08 $75 $08
    ld a, e                                       ; $41bc: $7b
    ld [$087f], sp                                ; $41bd: $08 $7f $08
    add h                                         ; $41c0: $84
    ld [$088b], sp                                ; $41c1: $08 $8b $08
    sub b                                         ; $41c4: $90
    ld [$089a], sp                                ; $41c5: $08 $9a $08
    and b                                         ; $41c8: $a0
    ld [$08a5], sp                                ; $41c9: $08 $a5 $08
    xor e                                         ; $41cc: $ab
    ld [$08b0], sp                                ; $41cd: $08 $b0 $08
    cp b                                          ; $41d0: $b8
    ld [$08bd], sp                                ; $41d1: $08 $bd $08
    jp $c908                                      ; $41d4: $c3 $08 $c9


    ld [$08cf], sp                                ; $41d7: $08 $cf $08
    rst $10                                       ; $41da: $d7
    ld [$08e1], sp                                ; $41db: $08 $e1 $08
    and $08                                       ; $41de: $e6 $08
    ldh a, [$08]                                  ; $41e0: $f0 $08
    push af                                       ; $41e2: $f5
    ld [$08fd], sp                                ; $41e3: $08 $fd $08
    inc b                                         ; $41e6: $04
    add hl, bc                                    ; $41e7: $09
    add hl, bc                                    ; $41e8: $09
    add hl, bc                                    ; $41e9: $09
    db $10                                        ; $41ea: $10
    add hl, bc                                    ; $41eb: $09
    rla                                           ; $41ec: $17
    add hl, bc                                    ; $41ed: $09
    rra                                           ; $41ee: $1f
    add hl, bc                                    ; $41ef: $09
    ld [hl+], a                                   ; $41f0: $22
    add hl, bc                                    ; $41f1: $09
    ld h, $09                                     ; $41f2: $26 $09
    inc l                                         ; $41f4: $2c
    add hl, bc                                    ; $41f5: $09
    dec [hl]                                      ; $41f6: $35
    add hl, bc                                    ; $41f7: $09
    dec sp                                        ; $41f8: $3b
    add hl, bc                                    ; $41f9: $09
    ld b, e                                       ; $41fa: $43
    add hl, bc                                    ; $41fb: $09
    ld c, c                                       ; $41fc: $49
    add hl, bc                                    ; $41fd: $09
    ld c, a                                       ; $41fe: $4f
    add hl, bc                                    ; $41ff: $09
    ld d, a                                       ; $4200: $57
    add hl, bc                                    ; $4201: $09
    ld e, h                                       ; $4202: $5c
    add hl, bc                                    ; $4203: $09
    ld h, h                                       ; $4204: $64
    add hl, bc                                    ; $4205: $09
    ld l, e                                       ; $4206: $6b
    add hl, bc                                    ; $4207: $09
    ld [hl], b                                    ; $4208: $70
    add hl, bc                                    ; $4209: $09
    ld [hl], h                                    ; $420a: $74
    add hl, bc                                    ; $420b: $09
    ld a, l                                       ; $420c: $7d
    add hl, bc                                    ; $420d: $09
    add e                                         ; $420e: $83
    add hl, bc                                    ; $420f: $09
    adc e                                         ; $4210: $8b
    add hl, bc                                    ; $4211: $09
    sub d                                         ; $4212: $92
    add hl, bc                                    ; $4213: $09
    sbc b                                         ; $4214: $98
    add hl, bc                                    ; $4215: $09
    sbc h                                         ; $4216: $9c
    add hl, bc                                    ; $4217: $09
    and h                                         ; $4218: $a4
    add hl, bc                                    ; $4219: $09
    xor d                                         ; $421a: $aa
    add hl, bc                                    ; $421b: $09
    or b                                          ; $421c: $b0
    add hl, bc                                    ; $421d: $09
    or a                                          ; $421e: $b7
    add hl, bc                                    ; $421f: $09
    jp nz, $ca09                                  ; $4220: $c2 $09 $ca

    add hl, bc                                    ; $4223: $09
    push de                                       ; $4224: $d5
    add hl, bc                                    ; $4225: $09
    db $e3                                        ; $4226: $e3
    add hl, bc                                    ; $4227: $09
    pop af                                        ; $4228: $f1
    add hl, bc                                    ; $4229: $09
    rst $38                                       ; $422a: $ff
    add hl, bc                                    ; $422b: $09
    add hl, bc                                    ; $422c: $09
    ld a, [bc]                                    ; $422d: $0a
    ld de, $1c0a                                  ; $422e: $11 $0a $1c
    ld a, [bc]                                    ; $4231: $0a
    ld e, $0a                                     ; $4232: $1e $0a
    jr nz, jr_018_4240                            ; $4234: $20 $0a

    ld [hl+], a                                   ; $4236: $22
    ld a, [bc]                                    ; $4237: $0a
    inc h                                         ; $4238: $24
    ld a, [bc]                                    ; $4239: $0a
    inc [hl]                                      ; $423a: $34
    ld a, [bc]                                    ; $423b: $0a
    ld c, e                                       ; $423c: $4b
    ld a, [bc]                                    ; $423d: $0a
    ld h, c                                       ; $423e: $61
    ld a, [bc]                                    ; $423f: $0a

jr_018_4240:
    ld a, l                                       ; $4240: $7d
    ld a, [bc]                                    ; $4241: $0a
    adc a                                         ; $4242: $8f
    ld a, [bc]                                    ; $4243: $0a
    or d                                          ; $4244: $b2
    ld a, [bc]                                    ; $4245: $0a
    or l                                          ; $4246: $b5
    ld a, [bc]                                    ; $4247: $0a
    cp d                                          ; $4248: $ba
    ld a, [bc]                                    ; $4249: $0a
    cp a                                          ; $424a: $bf
    ld a, [bc]                                    ; $424b: $0a
    rst $10                                       ; $424c: $d7
    ld a, [bc]                                    ; $424d: $0a
    db $f4                                        ; $424e: $f4
    ld a, [bc]                                    ; $424f: $0a
    inc c                                         ; $4250: $0c
    dec bc                                        ; $4251: $0b
    daa                                           ; $4252: $27
    dec bc                                        ; $4253: $0b
    ld b, d                                       ; $4254: $42
    dec bc                                        ; $4255: $0b
    ld e, e                                       ; $4256: $5b
    dec bc                                        ; $4257: $0b
    ld [hl], h                                    ; $4258: $74
    dec bc                                        ; $4259: $0b
    sub c                                         ; $425a: $91
    dec bc                                        ; $425b: $0b
    and a                                         ; $425c: $a7
    dec bc                                        ; $425d: $0b
    or e                                          ; $425e: $b3
    dec bc                                        ; $425f: $0b
    cp a                                          ; $4260: $bf
    dec bc                                        ; $4261: $0b

    db $c5, $0b

    sub $0b                                       ; $4264: $d6 $0b
    db $dd                                        ; $4266: $dd
    dec bc                                        ; $4267: $0b
    db $ed                                        ; $4268: $ed
    dec bc                                        ; $4269: $0b
    ld sp, hl                                     ; $426a: $f9
    dec bc                                        ; $426b: $0b

    db $05, $0c

    jr z, jr_018_427c                             ; $426e: $28 $0c

    ld c, c                                       ; $4270: $49
    inc c                                         ; $4271: $0c
    ld l, d                                       ; $4272: $6a
    inc c                                         ; $4273: $0c
    adc h                                         ; $4274: $8c
    inc c                                         ; $4275: $0c

    db $a6, $0c

    jp z, $ed0c                                   ; $4278: $ca $0c $ed

    inc c                                         ; $427b: $0c

jr_018_427c:
    dec b                                         ; $427c: $05
    dec c                                         ; $427d: $0d
    daa                                           ; $427e: $27
    dec c                                         ; $427f: $0d
    ld c, b                                       ; $4280: $48
    dec c                                         ; $4281: $0d
    ld h, b                                       ; $4282: $60
    dec c                                         ; $4283: $0d
    add d                                         ; $4284: $82
    dec c                                         ; $4285: $0d
    and e                                         ; $4286: $a3
    dec c                                         ; $4287: $0d
    cp h                                          ; $4288: $bc
    dec c                                         ; $4289: $0d
    rst $18                                       ; $428a: $df
    dec c                                         ; $428b: $0d
    ld bc, $190e                                  ; $428c: $01 $0e $19
    ld c, $2f                                     ; $428f: $0e $2f
    ld c, $45                                     ; $4291: $0e $45
    ld c, $5c                                     ; $4293: $0e $5c
    ld c, $73                                     ; $4295: $0e $73
    ld c, $82                                     ; $4297: $0e $82
    ld c, $90                                     ; $4299: $0e $90
    ld c, $9b                                     ; $429b: $0e $9b
    ld c, $ad                                     ; $429d: $0e $ad
    ld c, $bb                                     ; $429f: $0e $bb
    ld c, $c8                                     ; $42a1: $0e $c8
    ld c, $d6                                     ; $42a3: $0e $d6
    ld c, $ea                                     ; $42a5: $0e $ea
    ld c, $f0                                     ; $42a7: $0e $f0
    ld c, $0a                                     ; $42a9: $0e $0a
    rrca                                          ; $42ab: $0f
    ld hl, $370f                                  ; $42ac: $21 $0f $37
    rrca                                          ; $42af: $0f

jr_018_42b0:
    ld c, a                                       ; $42b0: $4f
    rrca                                          ; $42b1: $0f
    ld e, [hl]                                    ; $42b2: $5e
    rrca                                          ; $42b3: $0f
    ld [hl], e                                    ; $42b4: $73
    rrca                                          ; $42b5: $0f
    adc [hl]                                      ; $42b6: $8e
    rrca                                          ; $42b7: $0f
    sbc e                                         ; $42b8: $9b
    rrca                                          ; $42b9: $0f
    xor h                                         ; $42ba: $ac
    rrca                                          ; $42bb: $0f
    cp [hl]                                       ; $42bc: $be
    rrca                                          ; $42bd: $0f
    rst $08                                       ; $42be: $cf
    rrca                                          ; $42bf: $0f
    db $e3                                        ; $42c0: $e3
    rrca                                          ; $42c1: $0f
    xor $0f                                       ; $42c2: $ee $0f
    add hl, bc                                    ; $42c4: $09
    db $10                                        ; $42c5: $10
    dec h                                         ; $42c6: $25
    db $10                                        ; $42c7: $10
    jr c, jr_018_42da                             ; $42c8: $38 $10

    ld c, b                                       ; $42ca: $48
    db $10                                        ; $42cb: $10
    ld e, h                                       ; $42cc: $5c
    db $10                                        ; $42cd: $10
    ld [hl], c                                    ; $42ce: $71
    db $10                                        ; $42cf: $10
    ld a, e                                       ; $42d0: $7b
    db $10                                        ; $42d1: $10
    add [hl]                                      ; $42d2: $86
    db $10                                        ; $42d3: $10
    sub c                                         ; $42d4: $91
    db $10                                        ; $42d5: $10
    and h                                         ; $42d6: $a4
    db $10                                        ; $42d7: $10
    cp d                                          ; $42d8: $ba
    db $10                                        ; $42d9: $10

jr_018_42da:
    call nz, Call_000_2410                        ; $42da: $c4 $10 $24
    ld de, $118e                                  ; $42dd: $11 $8e $11
    db $db                                        ; $42e0: $db
    ld de, $1241                                  ; $42e1: $11 $41 $12
    and d                                         ; $42e4: $a2
    ld [de], a                                    ; $42e5: $12
    add hl, hl                                    ; $42e6: $29
    inc de                                        ; $42e7: $13
    ld h, b                                       ; $42e8: $60
    inc de                                        ; $42e9: $13
    or [hl]                                       ; $42ea: $b6
    inc de                                        ; $42eb: $13
    db $eb                                        ; $42ec: $eb
    inc de                                        ; $42ed: $13
    inc e                                         ; $42ee: $1c
    inc d                                         ; $42ef: $14
    ld [hl], h                                    ; $42f0: $74
    inc d                                         ; $42f1: $14
    cp a                                          ; $42f2: $bf

jr_018_42f3:
    inc d                                         ; $42f3: $14
    ld e, $15                                     ; $42f4: $1e $15
    ld a, [hl]                                    ; $42f6: $7e
    dec d                                         ; $42f7: $15
    or l                                          ; $42f8: $b5
    dec d                                         ; $42f9: $15
    push hl                                       ; $42fa: $e5
    dec d                                         ; $42fb: $15
    ld d, c                                       ; $42fc: $51
    ld d, $b4                                     ; $42fd: $16 $b4
    ld d, $17                                     ; $42ff: $16 $17
    rla                                           ; $4301: $17
    ld b, [hl]                                    ; $4302: $46
    rla                                           ; $4303: $17

jr_018_4304:
    and a                                         ; $4304: $a7
    rla                                           ; $4305: $17
    jp hl                                         ; $4306: $e9


    rla                                           ; $4307: $17
    ld c, b                                       ; $4308: $48
    jr jr_018_42b0                                ; $4309: $18 $a5

    jr @-$28                                      ; $430b: $18 $d6

    jr jr_018_433b                                ; $430d: $18 $2c

    add hl, de                                    ; $430f: $19
    ld c, b                                       ; $4310: $48
    add hl, de                                    ; $4311: $19
    add b                                         ; $4312: $80
    add hl, de                                    ; $4313: $19
    and [hl]                                      ; $4314: $a6
    add hl, de                                    ; $4315: $19
    call z, $e519                                 ; $4316: $cc $19 $e5
    add hl, de                                    ; $4319: $19
    ld a, [de]                                    ; $431a: $1a
    ld a, [de]                                    ; $431b: $1a
    ld a, a                                       ; $431c: $7f
    ld a, [de]                                    ; $431d: $1a
    db $e4                                        ; $431e: $e4
    ld a, [de]                                    ; $431f: $1a
    ccf                                           ; $4320: $3f
    dec de                                        ; $4321: $1b
    sub [hl]                                      ; $4322: $96
    dec de                                        ; $4323: $1b
    ret z                                         ; $4324: $c8

    dec de                                        ; $4325: $1b
    ld a, [$651b]                                 ; $4326: $fa $1b $65
    inc e                                         ; $4329: $1c
    rst $08                                       ; $432a: $cf
    inc e                                         ; $432b: $1c
    ld [$711d], sp                                ; $432c: $08 $1d $71
    dec e                                         ; $432f: $1d
    and [hl]                                      ; $4330: $a6
    dec e                                         ; $4331: $1d
    jp nc, Jump_000_041d                          ; $4332: $d2 $1d $04

    ld e, $38                                     ; $4335: $1e $38
    ld e, $90                                     ; $4337: $1e $90
    ld e, $e3                                     ; $4339: $1e $e3

jr_018_433b:
    ld e, $36                                     ; $433b: $1e $36
    rra                                           ; $433d: $1f
    sbc [hl]                                      ; $433e: $9e
    rra                                           ; $433f: $1f
    pop af                                        ; $4340: $f1
    rra                                           ; $4341: $1f
    ld h, b                                       ; $4342: $60
    jr nz, jr_018_42f3                            ; $4343: $20 $ae

    jr nz, jr_018_4386                            ; $4345: $20 $3f

    ld hl, $21a4                                  ; $4347: $21 $a4 $21
    db $db                                        ; $434a: $db
    ld hl, $220e                                  ; $434b: $21 $0e $22
    ld a, h                                       ; $434e: $7c
    ld [hl+], a                                   ; $434f: $22
    xor d                                         ; $4350: $aa
    ld [hl+], a                                   ; $4351: $22
    ld de, $7323                                  ; $4352: $11 $23 $73
    inc hl                                        ; $4355: $23
    cp h                                          ; $4356: $bc
    inc hl                                        ; $4357: $23
    rrca                                          ; $4358: $0f
    inc h                                         ; $4359: $24
    ld a, d                                       ; $435a: $7a
    inc h                                         ; $435b: $24
    or h                                          ; $435c: $b4
    inc h                                         ; $435d: $24
    db $e4                                        ; $435e: $e4
    inc h                                         ; $435f: $24
    jr jr_018_4387                                ; $4360: $18 $25

    ld l, a                                       ; $4362: $6f
    dec h                                         ; $4363: $25
    and e                                         ; $4364: $a3
    dec h                                         ; $4365: $25
    xor c                                         ; $4366: $a9
    dec h                                         ; $4367: $25
    db $db                                        ; $4368: $db
    dec h                                         ; $4369: $25
    ld b, a                                       ; $436a: $47
    ld h, $91                                     ; $436b: $26 $91

jr_018_436d:
    ld h, $e7                                     ; $436d: $26 $e7
    ld h, $1a                                     ; $436f: $26 $1a
    daa                                           ; $4371: $27
    ld a, $27                                     ; $4372: $3e $27
    add l                                         ; $4374: $85
    daa                                           ; $4375: $27
    and e                                         ; $4376: $a3
    daa                                           ; $4377: $27
    ld sp, hl                                     ; $4378: $f9
    daa                                           ; $4379: $27
    ld d, e                                       ; $437a: $53
    jr z, jr_018_4304                             ; $437b: $28 $87

    jr z, jr_018_436d                             ; $437d: $28 $ee

    jr z, jr_018_43a6                             ; $437f: $28 $25

    add hl, hl                                    ; $4381: $29
    add c                                         ; $4382: $81
    add hl, hl                                    ; $4383: $29
    sbc h                                         ; $4384: $9c
    add hl, hl                                    ; $4385: $29

jr_018_4386:
    db $fd                                        ; $4386: $fd

jr_018_4387:
    add hl, hl                                    ; $4387: $29
    ld h, h                                       ; $4388: $64
    ld a, [hl+]                                   ; $4389: $2a
    ld a, e                                       ; $438a: $7b
    ld a, [hl+]                                   ; $438b: $2a
    or e                                          ; $438c: $b3
    ld a, [hl+]                                   ; $438d: $2a
    add sp, $2a                                   ; $438e: $e8 $2a
    rst $38                                       ; $4390: $ff
    ld a, [hl+]                                   ; $4391: $2a
    scf                                           ; $4392: $37
    dec hl                                        ; $4393: $2b
    ld l, h                                       ; $4394: $6c
    dec hl                                        ; $4395: $2b
    add e                                         ; $4396: $83
    dec hl                                        ; $4397: $2b
    cp c                                          ; $4398: $b9
    dec hl                                        ; $4399: $2b
    jp hl                                         ; $439a: $e9


    dec hl                                        ; $439b: $2b
    nop                                           ; $439c: $00
    inc l                                         ; $439d: $2c
    ld sp, $612c                                  ; $439e: $31 $2c $61
    inc l                                         ; $43a1: $2c
    ld a, b                                       ; $43a2: $78
    inc l                                         ; $43a3: $2c
    reti                                          ; $43a4: $d9


    inc l                                         ; $43a5: $2c

jr_018_43a6:
    ld [$592d], sp                                ; $43a6: $08 $2d $59
    dec l                                         ; $43a9: $2d
    or b                                          ; $43aa: $b0
    dec l                                         ; $43ab: $2d
    dec c                                         ; $43ac: $0d
    ld l, $69                                     ; $43ad: $2e $69
    ld l, $c3                                     ; $43af: $2e $c3

jr_018_43b1:
    ld l, $1e                                     ; $43b1: $2e $1e
    cpl                                           ; $43b3: $2f
    ld [hl], l                                    ; $43b4: $75
    cpl                                           ; $43b5: $2f
    call $262f                                    ; $43b6: $cd $2f $26
    jr nc, jr_018_433b                            ; $43b9: $30 $80

    jr nc, jr_018_436d                            ; $43bb: $30 $b0

    jr nc, @-$1e                                  ; $43bd: $30 $e0

    jr nc, jr_018_43d2                            ; $43bf: $30 $11

    ld sp, $3142                                  ; $43c1: $31 $42 $31
    ld [hl], e                                    ; $43c4: $73
    ld sp, $31a5                                  ; $43c5: $31 $a5 $31
    push de                                       ; $43c8: $d5
    ld sp, $3208                                  ; $43c9: $31 $08 $32
    ld b, c                                       ; $43cc: $41
    ld [hl-], a                                   ; $43cd: $32
    add c                                         ; $43ce: $81
    ld [hl-], a                                   ; $43cf: $32
    and a                                         ; $43d0: $a7
    ld [hl-], a                                   ; $43d1: $32

jr_018_43d2:
    add $32                                       ; $43d2: $c6 $32
    jp hl                                         ; $43d4: $e9


    ld [hl-], a                                   ; $43d5: $32
    ld a, [bc]                                    ; $43d6: $0a
    inc sp                                        ; $43d7: $33
    ld [hl], d                                    ; $43d8: $72
    inc sp                                        ; $43d9: $33
    and e                                         ; $43da: $a3
    inc sp                                        ; $43db: $33
    dec e                                         ; $43dc: $1d
    inc [hl]                                      ; $43dd: $34
    ld c, h                                       ; $43de: $4c
    inc [hl]                                      ; $43df: $34
    add b                                         ; $43e0: $80
    inc [hl]                                      ; $43e1: $34
    cp b                                          ; $43e2: $b8
    inc [hl]                                      ; $43e3: $34
    pop af                                        ; $43e4: $f1
    inc [hl]                                      ; $43e5: $34
    dec l                                         ; $43e6: $2d
    dec [hl]                                      ; $43e7: $35
    add d                                         ; $43e8: $82
    dec [hl]                                      ; $43e9: $35
    cp e                                          ; $43ea: $bb
    dec [hl]                                      ; $43eb: $35
    db $ec                                        ; $43ec: $ec
    dec [hl]                                      ; $43ed: $35
    ld b, d                                       ; $43ee: $42
    ld [hl], $54                                  ; $43ef: $36 $54
    ld [hl], $79                                  ; $43f1: $36 $79
    ld [hl], $ac                                  ; $43f3: $36 $ac
    ld [hl], $eb                                  ; $43f5: $36 $eb
    ld [hl], $41                                  ; $43f7: $36 $41
    scf                                           ; $43f9: $37
    sbc c                                         ; $43fa: $99
    scf                                           ; $43fb: $37
    db $fd                                        ; $43fc: $fd
    scf                                           ; $43fd: $37
    ld l, c                                       ; $43fe: $69
    jr c, jr_018_43b1                             ; $43ff: $38 $b0

    jr c, @-$3a                                   ; $4401: $38 $c4

    jr c, jr_018_4453                             ; $4403: $38 $4e

    ld l, a                                       ; $4405: $6f
    ld l, [hl]                                    ; $4406: $6e
    ld h, l                                       ; $4407: $65
    nop                                           ; $4408: $00
    rlca                                          ; $4409: $07
    jr nz, jr_018_446f                            ; $440a: $20 $63

    ld l, b                                       ; $440c: $68
    ld h, l                                       ; $440d: $65
    ld h, e                                       ; $440e: $63
    ld l, e                                       ; $440f: $6b
    ld h, l                                       ; $4410: $65
    ld h, h                                       ; $4411: $64
    jr nz, jr_018_4488                            ; $4412: $20 $74

    ld l, b                                       ; $4414: $68
    ld h, l                                       ; $4415: $65
    jr nz, @+$65                                  ; $4416: $20 $63

    ld l, b                                       ; $4418: $68
    ld h, l                                       ; $4419: $65
    ld [hl], e                                    ; $441a: $73
    ld [hl], h                                    ; $441b: $74
    ld l, $2e                                     ; $441c: $2e $2e
    ld l, $03                                     ; $441e: $2e $03
    nop                                           ; $4420: $00
    rlca                                          ; $4421: $07
    jr nz, jr_018_4487                            ; $4422: $20 $63

    ld l, b                                       ; $4424: $68
    ld h, l                                       ; $4425: $65
    ld h, e                                       ; $4426: $63
    ld l, e                                       ; $4427: $6b
    ld h, l                                       ; $4428: $65
    ld h, h                                       ; $4429: $64
    jr nz, @+$76                                  ; $442a: $20 $74

    ld l, b                                       ; $442c: $68
    ld h, l                                       ; $442d: $65
    jr nz, jr_018_4492                            ; $442e: $20 $62

    ld l, a                                       ; $4430: $6f
    ld l, a                                       ; $4431: $6f
    ld l, e                                       ; $4432: $6b
    ld [hl], e                                    ; $4433: $73
    ld l, b                                       ; $4434: $68
    ld h, l                                       ; $4435: $65
    ld l, h                                       ; $4436: $6c
    ld h, [hl]                                    ; $4437: $66
    ld l, $2e                                     ; $4438: $2e $2e
    ld l, $03                                     ; $443a: $2e $03
    nop                                           ; $443c: $00
    rlca                                          ; $443d: $07
    jr nz, @+$6e                                  ; $443e: $20 $6c

    ld l, a                                       ; $4440: $6f
    ld l, a                                       ; $4441: $6f
    ld l, e                                       ; $4442: $6b
    ld h, l                                       ; $4443: $65
    ld h, h                                       ; $4444: $64
    jr nz, @+$6b                                  ; $4445: $20 $69

    ld l, [hl]                                    ; $4447: $6e
    jr nz, jr_018_44be                            ; $4448: $20 $74

    ld l, b                                       ; $444a: $68
    ld h, l                                       ; $444b: $65
    jr nz, @+$64                                  ; $444c: $20 $62

    ld h, c                                       ; $444e: $61
    ld [hl], d                                    ; $444f: $72
    ld [hl], d                                    ; $4450: $72
    ld h, l                                       ; $4451: $65
    ld l, h                                       ; $4452: $6c

jr_018_4453:
    ld l, $2e                                     ; $4453: $2e $2e
    ld l, $03                                     ; $4455: $2e $03
    nop                                           ; $4457: $00
    rlca                                          ; $4458: $07
    jr nz, jr_018_44c7                            ; $4459: $20 $6c

    ld l, a                                       ; $445b: $6f
    ld l, a                                       ; $445c: $6f
    ld l, e                                       ; $445d: $6b
    ld h, l                                       ; $445e: $65
    ld h, h                                       ; $445f: $64
    jr nz, jr_018_44cb                            ; $4460: $20 $69

    ld l, [hl]                                    ; $4462: $6e
    jr nz, @+$76                                  ; $4463: $20 $74

    ld l, b                                       ; $4465: $68
    ld h, l                                       ; $4466: $65
    jr nz, @+$6c                                  ; $4467: $20 $6a

    ld [hl], l                                    ; $4469: $75
    ld h, a                                       ; $446a: $67
    ld l, $2e                                     ; $446b: $2e $2e
    ld l, $03                                     ; $446d: $2e $03

jr_018_446f:
    nop                                           ; $446f: $00
    rlca                                          ; $4470: $07
    jr nz, jr_018_44e7                            ; $4471: $20 $74

    ld [hl], d                                    ; $4473: $72
    ld l, c                                       ; $4474: $69
    ld h, l                                       ; $4475: $65
    ld h, h                                       ; $4476: $64
    jr nz, @+$76                                  ; $4477: $20 $74

    ld l, a                                       ; $4479: $6f
    jr nz, jr_018_44ee                            ; $447a: $20 $72

    ld h, l                                       ; $447c: $65
    ld h, c                                       ; $447d: $61
    ld h, h                                       ; $447e: $64
    jr nz, jr_018_44f5                            ; $447f: $20 $74

    ld l, b                                       ; $4481: $68
    ld h, l                                       ; $4482: $65
    jr nz, jr_018_44f8                            ; $4483: $20 $73

    ld l, c                                       ; $4485: $69
    ld h, a                                       ; $4486: $67

jr_018_4487:
    ld l, [hl]                                    ; $4487: $6e

jr_018_4488:
    ld l, $2e                                     ; $4488: $2e $2e
    ld l, $03                                     ; $448a: $2e $03
    nop                                           ; $448c: $00
    rlca                                          ; $448d: $07
    jr nz, jr_018_4502                            ; $448e: $20 $72

    ld h, l                                       ; $4490: $65
    ld h, c                                       ; $4491: $61

jr_018_4492:
    ld h, h                                       ; $4492: $64
    jr nz, jr_018_4509                            ; $4493: $20 $74

    ld l, b                                       ; $4495: $68
    ld h, l                                       ; $4496: $65
    jr nz, jr_018_4505                            ; $4497: $20 $6c

    ld h, c                                       ; $4499: $61
    ld h, d                                       ; $449a: $62
    ld h, l                                       ; $449b: $65
    ld l, h                                       ; $449c: $6c
    ld l, $2e                                     ; $449d: $2e $2e
    ld l, $03                                     ; $449f: $2e $03
    nop                                           ; $44a1: $00
    rlca                                          ; $44a2: $07
    jr nz, jr_018_4508                            ; $44a3: $20 $63

    ld l, b                                       ; $44a5: $68
    ld h, l                                       ; $44a6: $65
    ld h, e                                       ; $44a7: $63
    ld l, e                                       ; $44a8: $6b
    ld h, l                                       ; $44a9: $65
    ld h, h                                       ; $44aa: $64
    jr nz, jr_018_4521                            ; $44ab: $20 $74

    ld l, b                                       ; $44ad: $68
    ld h, l                                       ; $44ae: $65
    jr nz, jr_018_4517                            ; $44af: $20 $66

    ld l, h                                       ; $44b1: $6c
    ld l, a                                       ; $44b2: $6f
    ld [hl], a                                    ; $44b3: $77
    ld h, l                                       ; $44b4: $65
    ld [hl], d                                    ; $44b5: $72
    jr nz, jr_018_451a                            ; $44b6: $20 $62

    ld h, l                                       ; $44b8: $65
    ld h, h                                       ; $44b9: $64
    ld l, $2e                                     ; $44ba: $2e $2e
    ld l, $03                                     ; $44bc: $2e $03

jr_018_44be:
    nop                                           ; $44be: $00
    rlca                                          ; $44bf: $07
    jr nz, jr_018_4525                            ; $44c0: $20 $63

    ld l, b                                       ; $44c2: $68
    ld h, l                                       ; $44c3: $65
    ld h, e                                       ; $44c4: $63
    ld l, e                                       ; $44c5: $6b
    ld h, l                                       ; $44c6: $65

jr_018_44c7:
    ld h, h                                       ; $44c7: $64
    jr nz, jr_018_453e                            ; $44c8: $20 $74

    ld l, b                                       ; $44ca: $68

jr_018_44cb:
    ld h, l                                       ; $44cb: $65
    jr nz, jr_018_4541                            ; $44cc: $20 $73

    ld l, b                                       ; $44ce: $68
    ld h, l                                       ; $44cf: $65
    ld l, h                                       ; $44d0: $6c
    ld h, [hl]                                    ; $44d1: $66
    ld l, $2e                                     ; $44d2: $2e $2e
    ld l, $03                                     ; $44d4: $2e $03
    nop                                           ; $44d6: $00
    rlca                                          ; $44d7: $07
    jr nz, @+$65                                  ; $44d8: $20 $63

    ld l, b                                       ; $44da: $68
    ld h, l                                       ; $44db: $65
    ld h, e                                       ; $44dc: $63
    ld l, e                                       ; $44dd: $6b
    ld h, l                                       ; $44de: $65
    ld h, h                                       ; $44df: $64
    jr nz, jr_018_4556                            ; $44e0: $20 $74

    ld l, b                                       ; $44e2: $68
    ld h, l                                       ; $44e3: $65
    jr nz, jr_018_4549                            ; $44e4: $20 $63

    ld l, h                                       ; $44e6: $6c

jr_018_44e7:
    ld l, a                                       ; $44e7: $6f
    ld h, e                                       ; $44e8: $63
    ld l, e                                       ; $44e9: $6b
    ld l, $2e                                     ; $44ea: $2e $2e
    ld l, $03                                     ; $44ec: $2e $03

jr_018_44ee:
    nop                                           ; $44ee: $00
    rlca                                          ; $44ef: $07
    jr nz, jr_018_4555                            ; $44f0: $20 $63

    ld l, b                                       ; $44f2: $68
    ld h, l                                       ; $44f3: $65
    ld h, e                                       ; $44f4: $63

jr_018_44f5:
    ld l, e                                       ; $44f5: $6b
    ld h, l                                       ; $44f6: $65
    ld h, h                                       ; $44f7: $64

jr_018_44f8:
    jr nz, @+$76                                  ; $44f8: $20 $74

    ld l, b                                       ; $44fa: $68
    ld h, l                                       ; $44fb: $65
    jr nz, jr_018_456a                            ; $44fc: $20 $6c

    ld l, a                                       ; $44fe: $6f
    ld h, e                                       ; $44ff: $63
    ld l, e                                       ; $4500: $6b
    ld h, l                                       ; $4501: $65

jr_018_4502:
    ld [hl], d                                    ; $4502: $72
    ld l, $2e                                     ; $4503: $2e $2e

jr_018_4505:
    ld l, $03                                     ; $4505: $2e $03
    nop                                           ; $4507: $00

jr_018_4508:
    ld d, d                                       ; $4508: $52

jr_018_4509:
    ld h, l                                       ; $4509: $65
    ld [hl], e                                    ; $450a: $73
    ld h, l                                       ; $450b: $65
    ld [hl], d                                    ; $450c: $72
    halt                                          ; $450d: $76
    ld h, l                                       ; $450e: $65
    nop                                           ; $450f: $00
    ld d, d                                       ; $4510: $52
    ld h, l                                       ; $4511: $65
    ld [hl], e                                    ; $4512: $73
    ld h, l                                       ; $4513: $65
    ld [hl], d                                    ; $4514: $72
    halt                                          ; $4515: $76
    ld h, l                                       ; $4516: $65

jr_018_4517:
    nop                                           ; $4517: $00
    ld l, $2e                                     ; $4518: $2e $2e

jr_018_451a:
    ld l, $62                                     ; $451a: $2e $62
    ld [hl], l                                    ; $451c: $75
    ld [hl], h                                    ; $451d: $74
    jr nz, jr_018_4589                            ; $451e: $20 $69

    ld [hl], h                                    ; $4520: $74

jr_018_4521:
    daa                                           ; $4521: $27
    ld [hl], e                                    ; $4522: $73
    jr nz, jr_018_458a                            ; $4523: $20 $65

jr_018_4525:
    ld l, l                                       ; $4525: $6d
    ld [hl], b                                    ; $4526: $70
    ld [hl], h                                    ; $4527: $74
    ld a, c                                       ; $4528: $79
    ld l, $03                                     ; $4529: $2e $03
    nop                                           ; $452b: $00
    ld l, $2e                                     ; $452c: $2e $2e
    ld l, $62                                     ; $452e: $2e $62
    ld [hl], l                                    ; $4530: $75
    ld [hl], h                                    ; $4531: $74
    jr nz, jr_018_45a2                            ; $4532: $20 $6e

    ld l, a                                       ; $4534: $6f
    ld [hl], h                                    ; $4535: $74
    ld l, b                                       ; $4536: $68
    ld l, c                                       ; $4537: $69
    ld l, [hl]                                    ; $4538: $6e
    ld h, a                                       ; $4539: $67
    daa                                           ; $453a: $27
    ld [hl], e                                    ; $453b: $73
    jr nz, jr_018_45b2                            ; $453c: $20 $74

jr_018_453e:
    ld l, b                                       ; $453e: $68
    ld h, l                                       ; $453f: $65
    ld [hl], d                                    ; $4540: $72

jr_018_4541:
    ld h, l                                       ; $4541: $65
    ld l, $03                                     ; $4542: $2e $03
    nop                                           ; $4544: $00
    ld l, $2e                                     ; $4545: $2e $2e
    ld l, $62                                     ; $4547: $2e $62

jr_018_4549:
    ld [hl], l                                    ; $4549: $75
    ld [hl], h                                    ; $454a: $74
    jr nz, jr_018_45b6                            ; $454b: $20 $69

    ld [hl], h                                    ; $454d: $74
    daa                                           ; $454e: $27
    ld [hl], e                                    ; $454f: $73
    jr nz, jr_018_45b7                            ; $4550: $20 $65

    ld l, l                                       ; $4552: $6d
    ld [hl], b                                    ; $4553: $70
    ld [hl], h                                    ; $4554: $74

jr_018_4555:
    ld a, c                                       ; $4555: $79

jr_018_4556:
    ld l, $03                                     ; $4556: $2e $03
    nop                                           ; $4558: $00
    ld l, $2e                                     ; $4559: $2e $2e
    ld l, $62                                     ; $455b: $2e $62
    ld [hl], l                                    ; $455d: $75
    ld [hl], h                                    ; $455e: $74
    jr nz, @+$6b                                  ; $455f: $20 $69

    ld [hl], h                                    ; $4561: $74
    daa                                           ; $4562: $27
    ld [hl], e                                    ; $4563: $73
    jr nz, jr_018_45cb                            ; $4564: $20 $65

    ld l, l                                       ; $4566: $6d
    ld [hl], b                                    ; $4567: $70
    ld [hl], h                                    ; $4568: $74
    ld a, c                                       ; $4569: $79

jr_018_456a:
    ld l, $03                                     ; $456a: $2e $03
    nop                                           ; $456c: $00
    ld l, $2e                                     ; $456d: $2e $2e
    ld l, $62                                     ; $456f: $2e $62
    ld [hl], l                                    ; $4571: $75
    ld [hl], h                                    ; $4572: $74
    jr nz, @+$6b                                  ; $4573: $20 $69

    ld [hl], h                                    ; $4575: $74
    daa                                           ; $4576: $27
    ld [hl], e                                    ; $4577: $73
    jr nz, @+$64                                  ; $4578: $20 $62

    ld l, h                                       ; $457a: $6c
    ld h, c                                       ; $457b: $61
    ld l, [hl]                                    ; $457c: $6e
    ld l, e                                       ; $457d: $6b
    ld l, $03                                     ; $457e: $2e $03
    nop                                           ; $4580: $00
    ld l, $2e                                     ; $4581: $2e $2e
    ld l, $62                                     ; $4583: $2e $62
    ld [hl], l                                    ; $4585: $75
    ld [hl], h                                    ; $4586: $74
    jr nz, @+$6b                                  ; $4587: $20 $69

jr_018_4589:
    ld [hl], h                                    ; $4589: $74

jr_018_458a:
    daa                                           ; $458a: $27
    ld [hl], e                                    ; $458b: $73
    jr nz, jr_018_45f0                            ; $458c: $20 $62

    ld l, h                                       ; $458e: $6c
    ld h, c                                       ; $458f: $61
    ld l, [hl]                                    ; $4590: $6e
    ld l, e                                       ; $4591: $6b
    ld l, $03                                     ; $4592: $2e $03
    nop                                           ; $4594: $00
    ld l, $2e                                     ; $4595: $2e $2e
    ld l, $62                                     ; $4597: $2e $62
    ld [hl], l                                    ; $4599: $75
    ld [hl], h                                    ; $459a: $74
    jr nz, @+$70                                  ; $459b: $20 $6e

    ld l, a                                       ; $459d: $6f
    ld [hl], h                                    ; $459e: $74
    ld l, b                                       ; $459f: $68
    ld l, c                                       ; $45a0: $69
    ld l, [hl]                                    ; $45a1: $6e

jr_018_45a2:
    ld h, a                                       ; $45a2: $67
    daa                                           ; $45a3: $27
    ld [hl], e                                    ; $45a4: $73
    jr nz, @+$76                                  ; $45a5: $20 $74

    ld l, b                                       ; $45a7: $68
    ld h, l                                       ; $45a8: $65
    ld [hl], d                                    ; $45a9: $72
    ld h, l                                       ; $45aa: $65
    ld l, $03                                     ; $45ab: $2e $03
    nop                                           ; $45ad: $00
    ld l, $2e                                     ; $45ae: $2e $2e
    ld l, $62                                     ; $45b0: $2e $62

jr_018_45b2:
    ld [hl], l                                    ; $45b2: $75
    ld [hl], h                                    ; $45b3: $74
    jr nz, @+$70                                  ; $45b4: $20 $6e

jr_018_45b6:
    ld l, a                                       ; $45b6: $6f

jr_018_45b7:
    ld [hl], h                                    ; $45b7: $74
    ld l, b                                       ; $45b8: $68
    ld l, c                                       ; $45b9: $69
    ld l, [hl]                                    ; $45ba: $6e
    ld h, a                                       ; $45bb: $67
    daa                                           ; $45bc: $27
    ld [hl], e                                    ; $45bd: $73
    jr nz, @+$76                                  ; $45be: $20 $74

    ld l, b                                       ; $45c0: $68
    ld h, l                                       ; $45c1: $65
    ld [hl], d                                    ; $45c2: $72
    ld h, l                                       ; $45c3: $65
    ld l, $03                                     ; $45c4: $2e $03
    nop                                           ; $45c6: $00
    ld l, $2e                                     ; $45c7: $2e $2e
    ld l, $62                                     ; $45c9: $2e $62

jr_018_45cb:
    ld [hl], l                                    ; $45cb: $75
    ld [hl], h                                    ; $45cc: $74
    jr nz, @+$6b                                  ; $45cd: $20 $69

    ld [hl], h                                    ; $45cf: $74
    jr nz, @+$75                                  ; $45d0: $20 $73

    ld [hl], h                                    ; $45d2: $74
    ld l, a                                       ; $45d3: $6f
    ld [hl], b                                    ; $45d4: $70
    ld [hl], b                                    ; $45d5: $70
    ld h, l                                       ; $45d6: $65
    ld h, h                                       ; $45d7: $64
    ld l, $03                                     ; $45d8: $2e $03
    nop                                           ; $45da: $00
    ld l, $2e                                     ; $45db: $2e $2e
    ld l, $62                                     ; $45dd: $2e $62
    ld [hl], l                                    ; $45df: $75
    ld [hl], h                                    ; $45e0: $74
    jr nz, @+$70                                  ; $45e1: $20 $6e

    ld l, a                                       ; $45e3: $6f
    ld [hl], h                                    ; $45e4: $74
    ld l, b                                       ; $45e5: $68
    ld l, c                                       ; $45e6: $69
    ld l, [hl]                                    ; $45e7: $6e
    ld h, a                                       ; $45e8: $67
    daa                                           ; $45e9: $27
    ld [hl], e                                    ; $45ea: $73
    jr nz, @+$76                                  ; $45eb: $20 $74

    ld l, b                                       ; $45ed: $68
    ld h, l                                       ; $45ee: $65
    ld [hl], d                                    ; $45ef: $72

jr_018_45f0:
    ld h, l                                       ; $45f0: $65
    ld l, $03                                     ; $45f1: $2e $03
    nop                                           ; $45f3: $00
    ld d, d                                       ; $45f4: $52
    ld h, l                                       ; $45f5: $65
    ld [hl], e                                    ; $45f6: $73
    ld h, l                                       ; $45f7: $65
    ld [hl], d                                    ; $45f8: $72
    halt                                          ; $45f9: $76
    ld h, l                                       ; $45fa: $65
    nop                                           ; $45fb: $00
    ld d, d                                       ; $45fc: $52
    ld h, l                                       ; $45fd: $65
    ld [hl], e                                    ; $45fe: $73
    ld h, l                                       ; $45ff: $65
    ld [hl], d                                    ; $4600: $72
    halt                                          ; $4601: $76
    ld h, l                                       ; $4602: $65
    nop                                           ; $4603: $00
    inc b                                         ; $4604: $04
    nop                                           ; $4605: $00

    db $59, $65, $73, $01, $4e, $6f, $00, $43, $6f, $75, $72, $73, $65, $20, $30, $00
    db $43, $6f, $75, $72, $73, $65, $20, $31, $00, $43, $6f, $75, $72, $73, $65, $20
    db $32, $00, $43, $6f, $75, $72, $73, $65, $20, $33, $00, $43, $6f, $75, $72, $73
    db $65, $20, $34, $00, $43, $6f, $75, $72, $73, $65, $20, $35, $00, $30, $00, $31
    db $2e, $20, $4d, $61, $72, $69, $6f, $6e, $20, $43, $6c, $75, $62, $00, $32, $2e
    db $20, $50, $61, $6c, $6d, $20, $43, $6c, $75, $62, $00, $33, $2e, $20, $44, $75
    db $6e, $65, $20, $43, $6c, $75, $62, $00, $34, $2e, $20, $4c, $69, $6e, $6b, $73
    db $20, $43, $6c, $75, $62, $00, $35, $2e, $20, $50, $65, $61, $63, $68, $27, $73
    db $20, $43, $61, $73, $74, $6c, $65, $00, $54, $68, $65, $20, $47, $6f, $6c, $66
    db $20, $47, $75, $72, $75, $27, $73, $00, $30, $00, $59, $6f, $75, $72, $20, $68
    db $6f, $6d, $65, $20, $63, $6f, $75, $72, $73, $65, $2e, $00, $41, $20, $74, $72
    db $6f, $70, $69, $63, $61, $6c, $20, $74, $77, $69, $73, $74, $21, $00, $54, $68
    db $65, $20, $61, $72, $69, $64, $20, $70, $6c, $61, $74, $65, $61, $75, $21, $00
    db $41, $20, $73, $65, $61, $73, $69, $64, $65, $20, $63, $68, $61, $6c, $6c, $65
    db $6e, $67, $65, $21, $00, $42, $79, $20, $69, $6e, $76, $69, $74, $61, $74, $69
    db $6f, $6e, $20, $6f, $6e, $6c, $79, $21, $00, $50, $69, $74, $63, $68, $20, $26
    db $20, $50, $75, $74, $74, $20, $43, $6f, $75, $72, $73, $65, $21, $00, $30, $00
    db $41, $20, $77, $6f, $6f, $64, $65, $64, $20, $63, $6f, $75, $72, $73, $65, $21
    db $00, $41, $20, $74, $72, $6f, $70, $69, $63, $61, $6c, $20, $74, $77, $69, $73
    db $74, $21, $00, $54, $68, $65, $20, $61, $72, $69, $64, $20, $70, $6c, $61, $74
    db $65, $61, $75, $21, $00, $41, $20, $73, $65, $61, $73, $69, $64, $65, $20, $63
    db $68, $61, $6c, $6c, $65, $6e, $67, $65, $21, $00, $54, $68, $65, $20, $63, $61
    db $73, $74, $6c, $65, $20, $67, $72, $6f, $75, $6e, $64, $73, $21, $00, $50, $69
    db $74, $63, $68, $20, $26, $20, $50, $75, $74, $74, $20, $43, $6f, $75, $72, $73
    db $65, $21, $00, $30, $00, $4d, $61, $72, $69, $6f, $6e, $20, $43, $75, $70, $00
    db $54, $72, $6f, $70, $69, $63, $61, $6c, $20, $43, $75, $70, $00, $44, $65, $73
    db $65, $72, $74, $20, $43, $75, $70, $00, $4e, $6f, $72, $74, $68, $20, $57, $69
    db $6e, $64, $73, $20, $43, $75, $70, $00, $53, $65, $6c, $65, $63, $74, $20, $61
    db $20, $68, $6f, $6c, $65, $2e, $00, $30, $00, $4d, $61, $72, $69, $6f, $6e, $00
    db $50, $61, $6c, $6d, $00, $44, $75, $6e, $65, $00, $4c, $69, $6e, $6b, $73, $00
    db $50, $65, $61, $63, $68, $00, $50, $69, $74, $63, $68, $20, $26, $20, $50, $75
    db $74, $74, $00, $4b, $69, $64, $00, $53, $68, $65, $72, $72, $79, $00, $41, $7a
    db $61, $6c, $65, $61, $00, $4a, $6f, $65, $00, $50, $75, $74, $74, $73, $00, $47
    db $72, $61, $63, $65, $00, $54, $69, $6e, $79, $00, $47, $65, $6e, $65, $20, $59
    db $75, $73, $73, $00, $4d, $61, $72, $69, $6f, $00, $4c, $75, $69, $67, $69, $00
    db $57, $61, $72, $69, $6f, $00, $4c, $69, $6d, $65, $00, $46, $6c, $69, $6e, $74
    db $00, $4c, $69, $6c, $79, $00, $4d, $75, $6e, $61, $6b, $61, $74, $61, $00, $4f
    db $6b, $61, $00, $4b, $69, $64, $00, $53, $68, $65, $72, $72, $79, $00, $41, $7a
    db $61, $6c, $65, $61, $00, $4a, $6f, $65, $00, $50, $75, $74, $74, $73, $00, $47
    db $72, $61, $63, $65, $00, $54, $69, $6e, $79, $00, $47, $65, $6e, $65, $20, $59
    db $2e, $00, $4d, $61, $72, $69, $6f, $00, $4c, $75, $69, $67, $69, $00, $57, $61
    db $72, $69, $6f, $00, $4c, $69, $6d, $65, $00, $46, $6c, $69, $6e, $74, $00, $4c
    db $69, $6c, $79, $00, $4d, $75, $6e, $61, $6b, $61, $74, $61, $00, $4f, $6b, $61
    db $00, $43, $6f, $6e, $74, $69, $6e, $75, $65, $20, $79, $6f, $75, $72, $20, $6c
    db $61, $73, $74, $20, $20, $20, $20, $20, $20, $20, $20, $20, $01, $67, $61, $6d
    db $65, $3f, $00, $59, $6f, $75, $72, $20, $73, $61, $76, $65, $64, $20, $64, $61
    db $74, $61, $01, $77, $69, $6c, $6c, $20, $62, $65, $20, $65, $72, $61, $73, $65
    db $64, $2e, $01, $4f, $4b, $3f, $00, $53, $74, $61, $72, $74, $20, $61, $20, $6e
    db $65, $77, $20, $67, $61, $6d, $65, $2e, $00, $30, $00, $54, $6f, $75, $72, $6e
    db $61, $6d, $65, $6e, $74, $00, $4d, $61, $74, $63, $68, $20, $47, $61, $6d, $65
    db $00, $53, $74, $72, $6f, $6b, $65, $00, $54, $72, $61, $69, $6e, $69, $6e, $67
    db $00, $4d, $69, $6e, $69, $2d, $47, $61, $6d, $65, $73, $00, $50, $72, $61, $63
    db $74, $69, $63, $65, $00, $37, $00, $38, $00, $4d, $61, $72, $69, $6f, $6e, $20
    db $43, $6c, $75, $62, $68, $6f, $75, $73, $65, $00, $30, $00, $45, $6e, $74, $65
    db $72, $20, $61, $20, $43, $6c, $75, $62, $20, $54, $6f, $75, $72, $6e, $61, $6d
    db $65, $6e, $74, $21, $00, $50, $6c, $61, $79, $20, $61, $20, $43, $6c, $75, $62
    db $20, $43, $68, $61, $6d, $70, $21, $00, $54, $72, $79, $20, $61, $20, $70, $72
    db $61, $63, $74, $69, $63, $65, $20, $72, $6f, $75, $6e, $64, $21, $00, $50, $72
    db $61, $63, $74, $69, $63, $65, $20, $61, $6e, $79, $20, $68, $6f, $6c, $65, $21
    db $00, $4d, $69, $6e, $69, $2d, $47, $61, $6d, $65, $73, $00, $50, $72, $61, $63
    db $74, $69, $63, $65, $00, $37, $00, $38, $00, $53, $74, $61, $72, $74, $20, $66
    db $72, $6f, $6d, $20, $74, $68, $65, $20, $63, $6c, $75, $62, $68, $6f, $75, $73
    db $65, $21, $00, $30, $00, $31, $00, $43, $6f, $6d, $70, $65, $74, $65, $20, $66
    db $6f, $72, $20, $68, $6f, $6c, $65, $73, $20, $77, $6f, $6e, $21, $00, $43, $6f
    db $6d, $70, $65, $74, $65, $20, $66, $6f, $72, $20, $74, $6f, $74, $61, $6c, $20
    db $73, $63, $6f, $72, $65, $21, $00, $34, $00, $35, $00, $36, $00, $37, $00, $38
    db $00, $39, $00, $53, $63, $65, $6e, $65, $01, $4d, $61, $70, $01, $50, $61, $6c
    db $65, $74, $74, $65, $01, $46, $6c, $61, $67, $00, $54, $6f, $75, $72, $6e, $61
    db $6d, $65, $6e, $74, $01, $4d, $61, $74, $63, $68, $20, $47, $61, $6d, $65, $01
    db $50, $72, $61, $63, $74, $69, $63, $65, $01, $43, $6c, $75, $62, $68, $6f, $75
    db $73, $65, $01, $56, $53, $01, $53, $74, $61, $72, $74, $20, $4f, $76, $65, $72
    db $00, $46, $6c, $79, $20, $47, $75, $79, $00, $4a, $6f, $65, $00, $4d, $69, $6b
    db $65, $00, $41, $7a, $61, $6c, $65, $61, $00, $50, $65, $6e, $67, $75, $69, $6e
    db $00, $4b, $69, $64, $00, $53, $68, $65, $72, $72, $79, $00, $4d, $61, $72, $6b
    db $00, $4d, $69, $63, $68, $61, $65, $6c, $00, $54, $69, $6d, $00, $43, $68, $75
    db $63, $6b, $79, $61, $00, $54, $6f, $6d, $00, $52, $65, $78, $00, $47, $61, $69
    db $6c, $00, $43, $6f, $6c, $69, $6e, $00, $43, $68, $61, $72, $6c, $65, $73, $00
    db $4b, $65, $6e, $6a, $69, $00, $4a, $65, $6e, $00, $54, $65, $72, $72, $79, $00
    db $53, $6f, $6e, $6e, $79, $00, $50, $69, $67, $6d, $61, $00, $48, $61, $6c, $65
    db $79, $00, $41, $72, $6d, $6f, $6e, $64, $00, $48, $69, $72, $6f, $00, $44, $61
    db $6e, $00, $4a, $69, $6d, $00, $4c, $65, $73, $6c, $69, $65, $00, $41, $7a, $61
    db $6c, $65, $61, $00, $42, $75, $62, $62, $61, $00, $53, $68, $65, $72, $72, $79
    db $00, $42, $75, $7a, $7a, $79, $00, $4b, $69, $64, $00, $43, $68, $61, $72, $6c
    db $69, $65, $00, $4a, $6f, $65, $00, $4c, $61, $72, $72, $79, $00, $57, $65, $6e
    db $64, $79, $20, $4f, $2e, $00, $46, $61, $72

    ld h, c                                       ; $4b4f: $61
    ld l, [hl]                                    ; $4b50: $6e
    nop                                           ; $4b51: $00
    ld b, [hl]                                    ; $4b52: $46
    ld h, c                                       ; $4b53: $61
    ld l, h                                       ; $4b54: $6c
    ld h, e                                       ; $4b55: $63
    ld l, a                                       ; $4b56: $6f
    jr nz, jr_018_4ba5                            ; $4b57: $20 $4c

    ld l, $00                                     ; $4b59: $2e $00
    ld d, b                                       ; $4b5b: $50
    ld h, l                                       ; $4b5c: $65
    ld l, [hl]                                    ; $4b5d: $6e
    ld l, [hl]                                    ; $4b5e: $6e
    nop                                           ; $4b5f: $00
    ld b, c                                       ; $4b60: $41
    ld l, [hl]                                    ; $4b61: $6e
    ld h, h                                       ; $4b62: $64
    ld [hl], d                                    ; $4b63: $72
    ld h, l                                       ; $4b64: $65
    ld [hl], a                                    ; $4b65: $77
    nop                                           ; $4b66: $00
    ld c, h                                       ; $4b67: $4c
    ld [hl], l                                    ; $4b68: $75
    ld h, h                                       ; $4b69: $64
    ld [hl], a                                    ; $4b6a: $77
    ld l, c                                       ; $4b6b: $69
    ld h, a                                       ; $4b6c: $67
    nop                                           ; $4b6d: $00
    ld c, l                                       ; $4b6e: $4d
    ld l, c                                       ; $4b6f: $69
    ld l, e                                       ; $4b70: $6b
    ld h, l                                       ; $4b71: $65
    nop                                           ; $4b72: $00
    ld b, h                                       ; $4b73: $44
    ld h, l                                       ; $4b74: $65
    ld a, b                                       ; $4b75: $78
    nop                                           ; $4b76: $00
    ld b, [hl]                                    ; $4b77: $46
    ld l, a                                       ; $4b78: $6f
    ld a, b                                       ; $4b79: $78
    nop                                           ; $4b7a: $00
    ld b, a                                       ; $4b7b: $47
    ld [hl], d                                    ; $4b7c: $72
    ld h, l                                       ; $4b7d: $65
    ld h, a                                       ; $4b7e: $67
    nop                                           ; $4b7f: $00
    ld c, l                                       ; $4b80: $4d
    ld h, l                                       ; $4b81: $65
    ld [hl], h                                    ; $4b82: $74
    ld h, c                                       ; $4b83: $61
    ld l, h                                       ; $4b84: $6c
    jr nz, jr_018_4bd4                            ; $4b85: $20 $4d

    ld l, $00                                     ; $4b87: $2e $00
    ld b, e                                       ; $4b89: $43
    ld l, b                                       ; $4b8a: $68
    ld [hl], d                                    ; $4b8b: $72
    ld l, c                                       ; $4b8c: $69
    ld [hl], e                                    ; $4b8d: $73
    nop                                           ; $4b8e: $00
    ld c, [hl]                                    ; $4b8f: $4e
    ld l, c                                       ; $4b90: $69
    ld h, e                                       ; $4b91: $63
    ld l, e                                       ; $4b92: $6b
    ld l, a                                       ; $4b93: $6f
    nop                                           ; $4b94: $00
    ld b, h                                       ; $4b95: $44
    ld h, c                                       ; $4b96: $61
    halt                                          ; $4b97: $76
    ld l, c                                       ; $4b98: $69
    ld h, h                                       ; $4b99: $64
    nop                                           ; $4b9a: $00
    ld d, e                                       ; $4b9b: $53
    ld l, h                                       ; $4b9c: $6c
    ld l, c                                       ; $4b9d: $69
    ld [hl], b                                    ; $4b9e: $70
    ld [hl], b                                    ; $4b9f: $70
    ld a, c                                       ; $4ba0: $79
    nop                                           ; $4ba1: $00
    ld d, b                                       ; $4ba2: $50
    ld l, c                                       ; $4ba3: $69
    ld h, a                                       ; $4ba4: $67

jr_018_4ba5:
    ld l, l                                       ; $4ba5: $6d
    ld h, c                                       ; $4ba6: $61
    nop                                           ; $4ba7: $00
    ld c, l                                       ; $4ba8: $4d
    ld h, c                                       ; $4ba9: $61
    ld [hl], d                                    ; $4baa: $72
    ld [hl], e                                    ; $4bab: $73
    ld l, b                                       ; $4bac: $68
    ld h, c                                       ; $4bad: $61
    nop                                           ; $4bae: $00
    ld b, e                                       ; $4baf: $43
    ld l, b                                       ; $4bb0: $68
    ld [hl], d                                    ; $4bb1: $72
    ld l, c                                       ; $4bb2: $69
    ld [hl], e                                    ; $4bb3: $73
    ld [hl], h                                    ; $4bb4: $74
    ld l, c                                       ; $4bb5: $69
    ld h, c                                       ; $4bb6: $61
    ld l, [hl]                                    ; $4bb7: $6e
    nop                                           ; $4bb8: $00
    ld c, l                                       ; $4bb9: $4d
    ld l, c                                       ; $4bba: $69
    ld h, e                                       ; $4bbb: $63
    ld l, b                                       ; $4bbc: $68
    ld h, l                                       ; $4bbd: $65
    ld l, h                                       ; $4bbe: $6c
    ld l, h                                       ; $4bbf: $6c
    ld h, l                                       ; $4bc0: $65
    nop                                           ; $4bc1: $00
    ld c, e                                       ; $4bc2: $4b
    ld h, l                                       ; $4bc3: $65
    ld l, [hl]                                    ; $4bc4: $6e
    nop                                           ; $4bc5: $00
    ld c, e                                       ; $4bc6: $4b
    ld l, c                                       ; $4bc7: $69
    ld h, h                                       ; $4bc8: $64
    nop                                           ; $4bc9: $00
    ld b, d                                       ; $4bca: $42
    ld [hl], l                                    ; $4bcb: $75
    ld h, d                                       ; $4bcc: $62
    ld h, d                                       ; $4bcd: $62
    ld h, c                                       ; $4bce: $61
    nop                                           ; $4bcf: $00
    ld d, e                                       ; $4bd0: $53
    ld l, b                                       ; $4bd1: $68
    ld h, l                                       ; $4bd2: $65
    ld [hl], d                                    ; $4bd3: $72

jr_018_4bd4:
    ld [hl], d                                    ; $4bd4: $72
    ld a, c                                       ; $4bd5: $79
    nop                                           ; $4bd6: $00
    ld d, l                                       ; $4bd7: $55
    ld l, e                                       ; $4bd8: $6b
    ld l, e                                       ; $4bd9: $6b
    ld l, c                                       ; $4bda: $69
    ld l, e                                       ; $4bdb: $6b
    ld l, c                                       ; $4bdc: $69
    nop                                           ; $4bdd: $00
    ld c, d                                       ; $4bde: $4a
    ld l, a                                       ; $4bdf: $6f
    ld h, l                                       ; $4be0: $65
    nop                                           ; $4be1: $00
    ld b, c                                       ; $4be2: $41
    ld a, d                                       ; $4be3: $7a
    ld h, c                                       ; $4be4: $61
    ld l, h                                       ; $4be5: $6c
    ld h, l                                       ; $4be6: $65
    ld h, c                                       ; $4be7: $61
    nop                                           ; $4be8: $00
    ld c, b                                       ; $4be9: $48
    ld h, l                                       ; $4bea: $65
    ld l, [hl]                                    ; $4beb: $6e
    ld [hl], d                                    ; $4bec: $72
    ld a, c                                       ; $4bed: $79
    nop                                           ; $4bee: $00
    ld c, l                                       ; $4bef: $4d
    ld [hl], d                                    ; $4bf0: $72
    ld l, $20                                     ; $4bf1: $2e $20
    ld c, c                                       ; $4bf3: $49
    ld l, $00                                     ; $4bf4: $2e $00
    ld d, b                                       ; $4bf6: $50
    ld h, l                                       ; $4bf7: $65
    ld [hl], b                                    ; $4bf8: $70
    ld [hl], b                                    ; $4bf9: $70
    ld a, c                                       ; $4bfa: $79
    nop                                           ; $4bfb: $00
    ld b, l                                       ; $4bfc: $45
    ld [hl], d                                    ; $4bfd: $72
    ld l, c                                       ; $4bfe: $69
    ld h, e                                       ; $4bff: $63
    ld l, b                                       ; $4c00: $68
    nop                                           ; $4c01: $00
    ld b, a                                       ; $4c02: $47
    ld l, a                                       ; $4c03: $6f
    ld l, a                                       ; $4c04: $6f
    ld l, l                                       ; $4c05: $6d
    ld h, d                                       ; $4c06: $62
    ld h, c                                       ; $4c07: $61
    nop                                           ; $4c08: $00
    ld c, d                                       ; $4c09: $4a
    ld [hl], d                                    ; $4c0a: $72
    ld l, $00                                     ; $4c0b: $2e $00
    ld c, l                                       ; $4c0d: $4d
    ld l, c                                       ; $4c0e: $69
    ld h, e                                       ; $4c0f: $63
    ld l, b                                       ; $4c10: $68
    ld h, l                                       ; $4c11: $65
    ld l, h                                       ; $4c12: $6c
    ld l, h                                       ; $4c13: $6c
    ld h, l                                       ; $4c14: $65
    nop                                           ; $4c15: $00
    ld b, l                                       ; $4c16: $45
    ld h, h                                       ; $4c17: $64
    nop                                           ; $4c18: $00
    ld b, d                                       ; $4c19: $42
    ld l, c                                       ; $4c1a: $69
    ld l, h                                       ; $4c1b: $6c
    ld l, h                                       ; $4c1c: $6c
    nop                                           ; $4c1d: $00
    ld c, e                                       ; $4c1e: $4b
    ld h, l                                       ; $4c1f: $65
    ld l, c                                       ; $4c20: $69
    ld l, e                                       ; $4c21: $6b
    ld l, a                                       ; $4c22: $6f
    nop                                           ; $4c23: $00
    ld b, c                                       ; $4c24: $41
    ld l, [hl]                                    ; $4c25: $6e
    ld h, h                                       ; $4c26: $64
    ld [hl], d                                    ; $4c27: $72
    ld l, a                                       ; $4c28: $6f
    ld [hl], e                                    ; $4c29: $73
    ld [hl], e                                    ; $4c2a: $73
    nop                                           ; $4c2b: $00
    ld d, e                                       ; $4c2c: $53
    ld [hl], b                                    ; $4c2d: $70
    ld l, c                                       ; $4c2e: $69
    ld l, e                                       ; $4c2f: $6b
    ld h, l                                       ; $4c30: $65
    nop                                           ; $4c31: $00
    ld c, e                                       ; $4c32: $4b
    ld h, c                                       ; $4c33: $61
    ld [hl], h                                    ; $4c34: $74
    ld h, l                                       ; $4c35: $65
    nop                                           ; $4c36: $00
    ld c, l                                       ; $4c37: $4d
    ld l, a                                       ; $4c38: $6f
    ld [hl], d                                    ; $4c39: $72
    ld [hl], h                                    ; $4c3a: $74
    ld l, a                                       ; $4c3b: $6f
    ld l, [hl]                                    ; $4c3c: $6e
    nop                                           ; $4c3d: $00
    ld c, h                                       ; $4c3e: $4c
    ld h, c                                       ; $4c3f: $61
    ld l, e                                       ; $4c40: $6b
    ld l, c                                       ; $4c41: $69
    ld [hl], h                                    ; $4c42: $74
    ld [hl], l                                    ; $4c43: $75
    nop                                           ; $4c44: $00
    ld c, b                                       ; $4c45: $48
    ld h, c                                       ; $4c46: $61
    ld [hl], d                                    ; $4c47: $72
    ld [hl], d                                    ; $4c48: $72
    ld a, c                                       ; $4c49: $79
    nop                                           ; $4c4a: $00
    ld d, e                                       ; $4c4b: $53
    ld l, a                                       ; $4c4c: $6f
    ld l, [hl]                                    ; $4c4d: $6e
    ld l, [hl]                                    ; $4c4e: $6e
    ld a, c                                       ; $4c4f: $79
    nop                                           ; $4c50: $00
    ld d, b                                       ; $4c51: $50
    ld l, h                                       ; $4c52: $6c
    ld [hl], l                                    ; $4c53: $75
    ld l, l                                       ; $4c54: $6d
    nop                                           ; $4c55: $00
    ld b, e                                       ; $4c56: $43
    ld l, b                                       ; $4c57: $68
    ld h, c                                       ; $4c58: $61
    ld [hl], d                                    ; $4c59: $72
    ld l, h                                       ; $4c5a: $6c
    ld l, c                                       ; $4c5b: $69
    ld h, l                                       ; $4c5c: $65
    nop                                           ; $4c5d: $00
    ld d, b                                       ; $4c5e: $50
    ld l, b                                       ; $4c5f: $68
    ld l, c                                       ; $4c60: $69
    ld l, h                                       ; $4c61: $6c
    nop                                           ; $4c62: $00
    ld c, e                                       ; $4c63: $4b
    ld l, a                                       ; $4c64: $6f
    ld h, d                                       ; $4c65: $62
    ld h, l                                       ; $4c66: $65
    nop                                           ; $4c67: $00
    ld c, e                                       ; $4c68: $4b
    ld l, c                                       ; $4c69: $69
    ld h, h                                       ; $4c6a: $64
    nop                                           ; $4c6b: $00
    ld e, d                                       ; $4c6c: $5a
    ld h, l                                       ; $4c6d: $65
    ld l, h                                       ; $4c6e: $6c
    ld h, h                                       ; $4c6f: $64
    ld h, c                                       ; $4c70: $61
    nop                                           ; $4c71: $00
    ld d, e                                       ; $4c72: $53
    ld l, b                                       ; $4c73: $68
    ld h, l                                       ; $4c74: $65
    ld [hl], d                                    ; $4c75: $72
    ld [hl], d                                    ; $4c76: $72
    ld a, c                                       ; $4c77: $79
    nop                                           ; $4c78: $00
    ld c, e                                       ; $4c79: $4b
    ld l, a                                       ; $4c7a: $6f
    ld l, a                                       ; $4c7b: $6f
    ld [hl], b                                    ; $4c7c: $70
    ld h, c                                       ; $4c7d: $61
    nop                                           ; $4c7e: $00
    ld c, d                                       ; $4c7f: $4a
    ld l, a                                       ; $4c80: $6f
    ld h, l                                       ; $4c81: $65
    nop                                           ; $4c82: $00
    ld c, h                                       ; $4c83: $4c
    ld l, c                                       ; $4c84: $69
    ld l, [hl]                                    ; $4c85: $6e
    ld l, e                                       ; $4c86: $6b
    nop                                           ; $4c87: $00
    ld b, c                                       ; $4c88: $41
    ld a, d                                       ; $4c89: $7a
    ld h, c                                       ; $4c8a: $61
    ld l, h                                       ; $4c8b: $6c
    ld h, l                                       ; $4c8c: $65
    ld h, c                                       ; $4c8d: $61
    nop                                           ; $4c8e: $00
    ld c, [hl]                                    ; $4c8f: $4e
    ld h, c                                       ; $4c90: $61
    halt                                          ; $4c91: $76
    ld l, c                                       ; $4c92: $69
    nop                                           ; $4c93: $00
    ld c, e                                       ; $4c94: $4b
    ld l, c                                       ; $4c95: $69
    ld l, [hl]                                    ; $4c96: $6e
    ld h, a                                       ; $4c97: $67
    jr nz, jr_018_4cf4                            ; $4c98: $20 $5a

    ld l, a                                       ; $4c9a: $6f
    ld [hl], d                                    ; $4c9b: $72
    ld h, c                                       ; $4c9c: $61
    nop                                           ; $4c9d: $00
    ld b, h                                       ; $4c9e: $44
    ld h, c                                       ; $4c9f: $61
    ld l, l                                       ; $4ca0: $6d
    ld [hl], b                                    ; $4ca1: $70
    ld h, l                                       ; $4ca2: $65
    nop                                           ; $4ca3: $00
    ld c, c                                       ; $4ca4: $49
    ld l, l                                       ; $4ca5: $6d
    ld [hl], b                                    ; $4ca6: $70
    ld h, c                                       ; $4ca7: $61
    nop                                           ; $4ca8: $00
    ld d, e                                       ; $4ca9: $53
    ld h, c                                       ; $4caa: $61
    ld [hl], d                                    ; $4cab: $72
    ld l, c                                       ; $4cac: $69
    ld h, c                                       ; $4cad: $61
    nop                                           ; $4cae: $00
    ld b, d                                       ; $4caf: $42
    ld l, c                                       ; $4cb0: $69
    ld l, h                                       ; $4cb1: $6c
    ld l, h                                       ; $4cb2: $6c
    nop                                           ; $4cb3: $00
    ld b, h                                       ; $4cb4: $44
    ld h, c                                       ; $4cb5: $61
    ld [hl], d                                    ; $4cb6: $72
    ld [hl], l                                    ; $4cb7: $75
    ld l, [hl]                                    ; $4cb8: $6e
    ld l, c                                       ; $4cb9: $69
    ld h, c                                       ; $4cba: $61
    nop                                           ; $4cbb: $00
    ld d, d                                       ; $4cbc: $52
    ld [hl], l                                    ; $4cbd: $75
    ld [hl], h                                    ; $4cbe: $74
    ld l, a                                       ; $4cbf: $6f
    nop                                           ; $4cc0: $00
    ld d, h                                       ; $4cc1: $54
    ld h, c                                       ; $4cc2: $61
    ld l, h                                       ; $4cc3: $6c
    ld l, a                                       ; $4cc4: $6f
    ld l, [hl]                                    ; $4cc5: $6e
    nop                                           ; $4cc6: $00
    ld d, e                                       ; $4cc7: $53
    ld l, b                                       ; $4cc8: $68
    ld h, l                                       ; $4cc9: $65
    ld l, c                                       ; $4cca: $69
    ld l, e                                       ; $4ccb: $6b
    nop                                           ; $4ccc: $00
    ld d, d                                       ; $4ccd: $52
    ld h, c                                       ; $4cce: $61
    ld [hl], l                                    ; $4ccf: $75
    ld [hl], d                                    ; $4cd0: $72
    ld [hl], l                                    ; $4cd1: $75
    nop                                           ; $4cd2: $00
    ld b, d                                       ; $4cd3: $42
    ld l, a                                       ; $4cd4: $6f
    ld l, [hl]                                    ; $4cd5: $6e
    ld l, a                                       ; $4cd6: $6f
    ld l, a                                       ; $4cd7: $6f
    ld [hl], d                                    ; $4cd8: $72
    ld [hl], l                                    ; $4cd9: $75
    nop                                           ; $4cda: $00
    ld d, e                                       ; $4cdb: $53
    ld l, e                                       ; $4cdc: $6b
    ld [hl], l                                    ; $4cdd: $75
    ld l, h                                       ; $4cde: $6c
    ld l, h                                       ; $4cdf: $6c
    jr nz, jr_018_4d2d                            ; $4ce0: $20 $4b

    ld l, c                                       ; $4ce2: $69
    ld h, h                                       ; $4ce3: $64
    nop                                           ; $4ce4: $00
    ld b, h                                       ; $4ce5: $44
    ld h, l                                       ; $4ce6: $65
    ld l, e                                       ; $4ce7: $6b
    ld [hl], l                                    ; $4ce8: $75
    nop                                           ; $4ce9: $00
    ld b, a                                       ; $4cea: $47
    ld l, a                                       ; $4ceb: $6f
    ld [hl], d                                    ; $4cec: $72
    ld l, a                                       ; $4ced: $6f
    ld l, [hl]                                    ; $4cee: $6e
    jr nz, jr_018_4d3c                            ; $4cef: $20 $4b

    ld l, c                                       ; $4cf1: $69
    ld h, h                                       ; $4cf2: $64
    nop                                           ; $4cf3: $00

jr_018_4cf4:
    ld c, l                                       ; $4cf4: $4d
    ld l, c                                       ; $4cf5: $69
    ld h, h                                       ; $4cf6: $64
    ld l, a                                       ; $4cf7: $6f
    nop                                           ; $4cf8: $00
    ld c, [hl]                                    ; $4cf9: $4e
    ld h, c                                       ; $4cfa: $61
    ld h, d                                       ; $4cfb: $62
    ld l, a                                       ; $4cfc: $6f
    ld l, a                                       ; $4cfd: $6f
    ld [hl], d                                    ; $4cfe: $72
    ld [hl], l                                    ; $4cff: $75
    nop                                           ; $4d00: $00
    ld d, b                                       ; $4d01: $50
    ld l, c                                       ; $4d02: $69
    ld h, l                                       ; $4d03: $65
    ld [hl], d                                    ; $4d04: $72
    ld [hl], d                                    ; $4d05: $72
    ld h, l                                       ; $4d06: $65
    nop                                           ; $4d07: $00
    ld c, c                                       ; $4d08: $49
    ld l, [hl]                                    ; $4d09: $6e
    ld h, a                                       ; $4d0a: $67
    ld l, a                                       ; $4d0b: $6f
    nop                                           ; $4d0c: $00
    ld b, a                                       ; $4d0d: $47
    ld l, a                                       ; $4d0e: $6f
    ld l, a                                       ; $4d0f: $6f
    ld l, l                                       ; $4d10: $6d
    ld h, d                                       ; $4d11: $62
    ld h, c                                       ; $4d12: $61
    nop                                           ; $4d13: $00
    ld b, d                                       ; $4d14: $42
    ld l, a                                       ; $4d15: $6f
    ld [hl], a                                    ; $4d16: $77
    ld [hl], e                                    ; $4d17: $73
    ld h, l                                       ; $4d18: $65
    ld [hl], d                                    ; $4d19: $72
    nop                                           ; $4d1a: $00
    ld b, d                                       ; $4d1b: $42
    ld l, a                                       ; $4d1c: $6f
    ld h, d                                       ; $4d1d: $62
    dec l                                         ; $4d1e: $2d
    ld l, a                                       ; $4d1f: $6f
    ld l, l                                       ; $4d20: $6d
    ld h, d                                       ; $4d21: $62
    nop                                           ; $4d22: $00
    ld b, h                                       ; $4d23: $44
    ld c, e                                       ; $4d24: $4b
    nop                                           ; $4d25: $00
    ld b, d                                       ; $4d26: $42
    ld l, a                                       ; $4d27: $6f
    ld l, a                                       ; $4d28: $6f
    nop                                           ; $4d29: $00
    ld e, c                                       ; $4d2a: $59
    ld l, a                                       ; $4d2b: $6f
    ld [hl], e                                    ; $4d2c: $73

jr_018_4d2d:
    ld l, b                                       ; $4d2d: $68
    ld l, c                                       ; $4d2e: $69
    nop                                           ; $4d2f: $00
    ld c, e                                       ; $4d30: $4b
    ld l, a                                       ; $4d31: $6f
    ld l, a                                       ; $4d32: $6f
    ld [hl], b                                    ; $4d33: $70
    ld h, c                                       ; $4d34: $61
    jr nz, jr_018_4d8b                            ; $4d35: $20 $54

    ld l, $00                                     ; $4d37: $2e $00
    ld d, b                                       ; $4d39: $50
    ld h, l                                       ; $4d3a: $65
    ld h, c                                       ; $4d3b: $61

jr_018_4d3c:
    ld h, e                                       ; $4d3c: $63
    ld l, b                                       ; $4d3d: $68
    nop                                           ; $4d3e: $00
    ld d, e                                       ; $4d3f: $53
    ld l, b                                       ; $4d40: $68
    ld a, c                                       ; $4d41: $79
    jr nz, jr_018_4d8b                            ; $4d42: $20 $47

    ld [hl], l                                    ; $4d44: $75
    ld a, c                                       ; $4d45: $79
    nop                                           ; $4d46: $00
    ld c, h                                       ; $4d47: $4c
    ld [hl], l                                    ; $4d48: $75
    ld l, c                                       ; $4d49: $69
    ld h, a                                       ; $4d4a: $67
    ld l, c                                       ; $4d4b: $69
    nop                                           ; $4d4c: $00
    ld e, d                                       ; $4d4d: $5a
    ld h, l                                       ; $4d4e: $65
    ld l, h                                       ; $4d4f: $6c
    ld h, h                                       ; $4d50: $64
    ld h, c                                       ; $4d51: $61
    nop                                           ; $4d52: $00
    ld b, d                                       ; $4d53: $42
    ld h, c                                       ; $4d54: $61
    ld h, d                                       ; $4d55: $62
    ld a, c                                       ; $4d56: $79
    jr nz, jr_018_4da6                            ; $4d57: $20 $4d

    ld l, $00                                     ; $4d59: $2e $00
    ld c, h                                       ; $4d5b: $4c
    ld l, c                                       ; $4d5c: $69
    ld l, [hl]                                    ; $4d5d: $6e
    ld l, e                                       ; $4d5e: $6b
    nop                                           ; $4d5f: $00
    ld c, l                                       ; $4d60: $4d
    ld h, e                                       ; $4d61: $63
    ld b, e                                       ; $4d62: $43
    ld l, h                                       ; $4d63: $6c
    ld l, a                                       ; $4d64: $6f
    ld [hl], l                                    ; $4d65: $75
    ld h, h                                       ; $4d66: $64
    nop                                           ; $4d67: $00
    ld c, l                                       ; $4d68: $4d
    ld l, $4d                                     ; $4d69: $2e $4d
    ld l, a                                       ; $4d6b: $6f
    ld l, h                                       ; $4d6c: $6c
    ld h, l                                       ; $4d6d: $65
    nop                                           ; $4d6e: $00
    ld d, h                                       ; $4d6f: $54
    ld l, a                                       ; $4d70: $6f
    ld h, c                                       ; $4d71: $61
    ld h, h                                       ; $4d72: $64
    nop                                           ; $4d73: $00
    ld b, [hl]                                    ; $4d74: $46
    ld l, a                                       ; $4d75: $6f
    ld a, b                                       ; $4d76: $78
    nop                                           ; $4d77: $00
    ld c, e                                       ; $4d78: $4b
    ld l, a                                       ; $4d79: $6f
    ld l, a                                       ; $4d7a: $6f
    ld [hl], b                                    ; $4d7b: $70
    ld h, c                                       ; $4d7c: $61
    jr nz, jr_018_4dcf                            ; $4d7d: $20 $50

    ld l, $00                                     ; $4d7f: $2e $00
    ld d, l                                       ; $4d81: $55
    ld l, [hl]                                    ; $4d82: $6e
    ld h, c                                       ; $4d83: $61
    ld h, a                                       ; $4d84: $67
    ld l, c                                       ; $4d85: $69
    nop                                           ; $4d86: $00
    ld b, e                                       ; $4d87: $43
    ld l, $43                                     ; $4d88: $2e $43
    ld l, b                                       ; $4d8a: $68

jr_018_4d8b:
    ld l, a                                       ; $4d8b: $6f
    ld l, l                                       ; $4d8c: $6d
    ld [hl], b                                    ; $4d8d: $70
    nop                                           ; $4d8e: $00
    ld d, e                                       ; $4d8f: $53
    ld l, [hl]                                    ; $4d90: $6e
    ld l, c                                       ; $4d91: $69
    ld h, [hl]                                    ; $4d92: $66
    ld l, c                                       ; $4d93: $69
    ld [hl], h                                    ; $4d94: $74
    nop                                           ; $4d95: $00
    ld b, h                                       ; $4d96: $44
    ld l, a                                       ; $4d97: $6f
    ld [hl], d                                    ; $4d98: $72
    ld l, c                                       ; $4d99: $69
    ld h, l                                       ; $4d9a: $65
    nop                                           ; $4d9b: $00
    ld b, d                                       ; $4d9c: $42
    ld [hl], l                                    ; $4d9d: $75
    ld h, d                                       ; $4d9e: $62
    nop                                           ; $4d9f: $00
    ld d, a                                       ; $4da0: $57
    ld l, c                                       ; $4da1: $69
    ld h, a                                       ; $4da2: $67
    ld h, a                                       ; $4da3: $67
    ld l, h                                       ; $4da4: $6c
    ld h, l                                       ; $4da5: $65

jr_018_4da6:
    ld [hl], d                                    ; $4da6: $72
    nop                                           ; $4da7: $00
    ld d, a                                       ; $4da8: $57
    ld l, b                                       ; $4da9: $68
    ld l, a                                       ; $4daa: $6f
    ld l, l                                       ; $4dab: $6d
    ld [hl], b                                    ; $4dac: $70
    nop                                           ; $4dad: $00
    ld b, d                                       ; $4dae: $42
    ld h, l                                       ; $4daf: $65
    ld h, l                                       ; $4db0: $65
    ld a, d                                       ; $4db1: $7a
    ld l, a                                       ; $4db2: $6f
    nop                                           ; $4db3: $00
    ld d, d                                       ; $4db4: $52
    ld l, a                                       ; $4db5: $6f
    ld [hl], l                                    ; $4db6: $75
    ld l, [hl]                                    ; $4db7: $6e
    ld h, h                                       ; $4db8: $64
    ld [hl], e                                    ; $4db9: $73
    nop                                           ; $4dba: $00
    ld b, d                                       ; $4dbb: $42
    ld h, l                                       ; $4dbc: $65
    ld [hl], e                                    ; $4dbd: $73
    ld [hl], h                                    ; $4dbe: $74
    jr nz, jr_018_4e14                            ; $4dbf: $20 $53

    ld h, e                                       ; $4dc1: $63
    ld l, a                                       ; $4dc2: $6f
    ld [hl], d                                    ; $4dc3: $72
    ld h, l                                       ; $4dc4: $65
    nop                                           ; $4dc5: $00
    ld b, c                                       ; $4dc6: $41
    halt                                          ; $4dc7: $76
    ld h, l                                       ; $4dc8: $65
    ld [hl], d                                    ; $4dc9: $72
    ld h, c                                       ; $4dca: $61
    ld h, a                                       ; $4dcb: $67
    ld h, l                                       ; $4dcc: $65
    nop                                           ; $4dcd: $00
    ld b, d                                       ; $4dce: $42

jr_018_4dcf:
    ld h, l                                       ; $4dcf: $65
    ld [hl], e                                    ; $4dd0: $73
    ld [hl], h                                    ; $4dd1: $74
    jr nz, jr_018_4e18                            ; $4dd2: $20 $44

    ld [hl], d                                    ; $4dd4: $72
    ld l, c                                       ; $4dd5: $69
    halt                                          ; $4dd6: $76
    ld h, l                                       ; $4dd7: $65
    nop                                           ; $4dd8: $00
    ld b, c                                       ; $4dd9: $41
    halt                                          ; $4dda: $76
    ld h, l                                       ; $4ddb: $65
    ld [hl], d                                    ; $4ddc: $72
    ld h, c                                       ; $4ddd: $61
    ld h, a                                       ; $4dde: $67
    ld h, l                                       ; $4ddf: $65
    jr nz, jr_018_4e26                            ; $4de0: $20 $44

    ld [hl], d                                    ; $4de2: $72
    ld l, c                                       ; $4de3: $69
    halt                                          ; $4de4: $76
    ld h, l                                       ; $4de5: $65
    nop                                           ; $4de6: $00
    ld b, [hl]                                    ; $4de7: $46
    ld h, c                                       ; $4de8: $61
    ld l, c                                       ; $4de9: $69
    ld [hl], d                                    ; $4dea: $72
    ld [hl], a                                    ; $4deb: $77
    ld h, c                                       ; $4dec: $61
    ld a, c                                       ; $4ded: $79
    jr nz, jr_018_4e3b                            ; $4dee: $20 $4b

    ld h, l                                       ; $4df0: $65
    ld h, l                                       ; $4df1: $65
    ld [hl], b                                    ; $4df2: $70
    ld [hl], e                                    ; $4df3: $73
    nop                                           ; $4df4: $00
    ld b, c                                       ; $4df5: $41
    halt                                          ; $4df6: $76
    ld h, l                                       ; $4df7: $65
    ld [hl], d                                    ; $4df8: $72
    ld h, c                                       ; $4df9: $61
    ld h, a                                       ; $4dfa: $67
    ld h, l                                       ; $4dfb: $65
    jr nz, @+$52                                  ; $4dfc: $20 $50

    ld [hl], l                                    ; $4dfe: $75
    ld [hl], h                                    ; $4dff: $74
    ld [hl], h                                    ; $4e00: $74
    ld [hl], e                                    ; $4e01: $73
    nop                                           ; $4e02: $00
    ld d, b                                       ; $4e03: $50
    ld h, c                                       ; $4e04: $61
    ld [hl], d                                    ; $4e05: $72
    jr nz, @+$55                                  ; $4e06: $20 $53

    ld h, c                                       ; $4e08: $61
    halt                                          ; $4e09: $76
    ld h, l                                       ; $4e0a: $65
    ld [hl], e                                    ; $4e0b: $73
    nop                                           ; $4e0c: $00
    ld d, b                                       ; $4e0d: $50
    ld h, c                                       ; $4e0e: $61
    ld [hl], d                                    ; $4e0f: $72
    jr nz, @+$51                                  ; $4e10: $20 $4f

    ld l, [hl]                                    ; $4e12: $6e
    ld [hl], e                                    ; $4e13: $73

jr_018_4e14:
    nop                                           ; $4e14: $00
    ld d, e                                       ; $4e15: $53
    ld h, c                                       ; $4e16: $61
    ld l, [hl]                                    ; $4e17: $6e

jr_018_4e18:
    ld h, h                                       ; $4e18: $64
    jr nz, jr_018_4e6e                            ; $4e19: $20 $53

    ld h, c                                       ; $4e1b: $61
    halt                                          ; $4e1c: $76
    ld h, l                                       ; $4e1d: $65
    ld [hl], e                                    ; $4e1e: $73
    nop                                           ; $4e1f: $00
    dec h                                         ; $4e20: $25
    nop                                           ; $4e21: $00
    ld e, c                                       ; $4e22: $59
    nop                                           ; $4e23: $00
    add hl, bc                                    ; $4e24: $09
    nop                                           ; $4e25: $00

jr_018_4e26:
    ld l, $00                                     ; $4e26: $2e $00
    ld b, e                                       ; $4e28: $43
    ld h, c                                       ; $4e29: $61
    ld [hl], d                                    ; $4e2a: $72
    ld [hl], d                                    ; $4e2b: $72
    ld a, c                                       ; $4e2c: $79
    ld bc, $7552                                  ; $4e2d: $01 $52 $75
    ld l, [hl]                                    ; $4e30: $6e
    ld bc, $6f54                                  ; $4e31: $01 $54 $6f
    ld [hl], h                                    ; $4e34: $74
    ld h, c                                       ; $4e35: $61
    ld l, h                                       ; $4e36: $6c
    nop                                           ; $4e37: $00
    ld e, c                                       ; $4e38: $59
    ld l, a                                       ; $4e39: $6f
    ld [hl], l                                    ; $4e3a: $75

jr_018_4e3b:
    jr nz, jr_018_4ea2                            ; $4e3b: $20 $65

    ld h, c                                       ; $4e3d: $61
    ld [hl], d                                    ; $4e3e: $72
    ld l, [hl]                                    ; $4e3f: $6e
    ld h, l                                       ; $4e40: $65
    ld h, h                                       ; $4e41: $64
    ld bc, $2009                                  ; $4e42: $01 $09 $20
    ld b, l                                       ; $4e45: $45
    ld e, b                                       ; $4e46: $58
    ld d, b                                       ; $4e47: $50
    jr nz, jr_018_4e9a                            ; $4e48: $20 $50

    ld [hl], h                                    ; $4e4a: $74
    ld [hl], e                                    ; $4e4b: $73
    ld hl, $0003                                  ; $4e4c: $21 $03 $00
    ld c, e                                       ; $4e4f: $4b
    ld l, c                                       ; $4e50: $69
    ld h, h                                       ; $4e51: $64
    ld bc, $6853                                  ; $4e52: $01 $53 $68
    ld h, l                                       ; $4e55: $65
    ld [hl], d                                    ; $4e56: $72
    ld [hl], d                                    ; $4e57: $72
    ld a, c                                       ; $4e58: $79
    ld bc, $7a41                                  ; $4e59: $01 $41 $7a
    ld h, c                                       ; $4e5c: $61
    ld l, h                                       ; $4e5d: $6c
    ld h, l                                       ; $4e5e: $65
    ld h, c                                       ; $4e5f: $61
    ld bc, $6f4a                                  ; $4e60: $01 $4a $6f
    ld h, l                                       ; $4e63: $65
    nop                                           ; $4e64: $00
    ld d, b                                       ; $4e65: $50
    ld [hl], l                                    ; $4e66: $75
    ld [hl], h                                    ; $4e67: $74
    ld [hl], h                                    ; $4e68: $74
    ld [hl], e                                    ; $4e69: $73
    ld bc, $7247                                  ; $4e6a: $01 $47 $72
    ld h, c                                       ; $4e6d: $61

jr_018_4e6e:
    ld h, e                                       ; $4e6e: $63
    ld h, l                                       ; $4e6f: $65
    ld bc, $6954                                  ; $4e70: $01 $54 $69
    ld l, [hl]                                    ; $4e73: $6e
    ld a, c                                       ; $4e74: $79
    ld bc, $6547                                  ; $4e75: $01 $47 $65
    ld l, [hl]                                    ; $4e78: $6e
    ld h, l                                       ; $4e79: $65
    jr nz, @+$5b                                  ; $4e7a: $20 $59

    ld [hl], l                                    ; $4e7c: $75
    ld [hl], e                                    ; $4e7d: $73
    ld [hl], e                                    ; $4e7e: $73
    ld bc, $4d00                                  ; $4e7f: $01 $00 $4d
    ld h, c                                       ; $4e82: $61
    ld [hl], d                                    ; $4e83: $72
    ld l, c                                       ; $4e84: $69
    ld l, a                                       ; $4e85: $6f
    ld bc, $754c                                  ; $4e86: $01 $4c $75
    ld l, c                                       ; $4e89: $69
    ld h, a                                       ; $4e8a: $67
    ld l, c                                       ; $4e8b: $69
    ld bc, $6157                                  ; $4e8c: $01 $57 $61
    ld [hl], d                                    ; $4e8f: $72
    ld l, c                                       ; $4e90: $69
    ld l, a                                       ; $4e91: $6f
    nop                                           ; $4e92: $00
    ld c, b                                       ; $4e93: $48
    ld l, a                                       ; $4e94: $6f
    ld l, h                                       ; $4e95: $6c
    ld h, l                                       ; $4e96: $65
    jr nz, @+$6b                                  ; $4e97: $20 $69

    ld l, [hl]                                    ; $4e99: $6e

jr_018_4e9a:
    jr nz, @+$51                                  ; $4e9a: $20 $4f

    ld l, [hl]                                    ; $4e9c: $6e
    ld h, l                                       ; $4e9d: $65
    ld bc, $6145                                  ; $4e9e: $01 $45 $61
    ld h, a                                       ; $4ea1: $67

jr_018_4ea2:
    ld l, h                                       ; $4ea2: $6c
    ld h, l                                       ; $4ea3: $65
    ld bc, $6942                                  ; $4ea4: $01 $42 $69
    ld [hl], d                                    ; $4ea7: $72
    ld h, h                                       ; $4ea8: $64
    ld l, c                                       ; $4ea9: $69
    ld h, l                                       ; $4eaa: $65
    ld bc, $6150                                  ; $4eab: $01 $50 $61
    ld [hl], d                                    ; $4eae: $72
    ld bc, $6f42                                  ; $4eaf: $01 $42 $6f
    ld h, a                                       ; $4eb2: $67
    ld h, l                                       ; $4eb3: $65
    ld a, c                                       ; $4eb4: $79
    nop                                           ; $4eb5: $00
    ld d, l                                       ; $4eb6: $55
    ld [hl], b                                    ; $4eb7: $70
    nop                                           ; $4eb8: $00
    ld b, l                                       ; $4eb9: $45
    halt                                          ; $4eba: $76
    ld h, l                                       ; $4ebb: $65
    ld l, [hl]                                    ; $4ebc: $6e
    nop                                           ; $4ebd: $00
    ld b, h                                       ; $4ebe: $44
    ld l, a                                       ; $4ebf: $6f
    ld [hl], a                                    ; $4ec0: $77
    ld l, [hl]                                    ; $4ec1: $6e
    nop                                           ; $4ec2: $00
    ld h, a                                       ; $4ec3: $67
    ld h, d                                       ; $4ec4: $62
    ld e, a                                       ; $4ec5: $5f
    jr nc, @+$36                                  ; $4ec6: $30 $34

    ld bc, $6267                                  ; $4ec8: $01 $67 $62
    ld e, a                                       ; $4ecb: $5f
    jr nc, jr_018_4f03                            ; $4ecc: $30 $35

    ld bc, $6267                                  ; $4ece: $01 $67 $62
    ld e, a                                       ; $4ed1: $5f
    jr nc, jr_018_4f07                            ; $4ed2: $30 $33

    ld bc, $6267                                  ; $4ed4: $01 $67 $62
    ld e, a                                       ; $4ed7: $5f
    jr nc, jr_018_4f10                            ; $4ed8: $30 $36

    nop                                           ; $4eda: $00
    ld a, c                                       ; $4edb: $79
    ld l, a                                       ; $4edc: $6f
    ld l, e                                       ; $4edd: $6b
    ld l, a                                       ; $4ede: $6f
    jr nc, jr_018_4f12                            ; $4edf: $30 $31

    ld bc, $7267                                  ; $4ee1: $01 $67 $72
    ld l, [hl]                                    ; $4ee4: $6e
    ld [hl-], a                                   ; $4ee5: $32
    ld e, a                                       ; $4ee6: $5f
    ld [hl], b                                    ; $4ee7: $70
    ld [hl], h                                    ; $4ee8: $74
    ld bc, $7267                                  ; $4ee9: $01 $67 $72
    ld l, [hl]                                    ; $4eec: $6e
    inc sp                                        ; $4eed: $33
    ld e, a                                       ; $4eee: $5f
    ld [hl], b                                    ; $4eef: $70
    ld [hl], h                                    ; $4ef0: $74
    ld bc, $7461                                  ; $4ef1: $01 $61 $74
    ld e, a                                       ; $4ef4: $5f
    jr nc, jr_018_4f2a                            ; $4ef5: $30 $33

    nop                                           ; $4ef7: $00
    ld h, c                                       ; $4ef8: $61
    ld [hl], h                                    ; $4ef9: $74
    ld e, a                                       ; $4efa: $5f
    jr nc, @+$34                                  ; $4efb: $30 $32

    ld bc, $7473                                  ; $4efd: $01 $73 $74
    ld e, a                                       ; $4f00: $5f
    jr nc, @+$34                                  ; $4f01: $30 $32

jr_018_4f03:
    ld bc, $7774                                  ; $4f03: $01 $74 $77
    ld l, c                                       ; $4f06: $69

jr_018_4f07:
    ld l, [hl]                                    ; $4f07: $6e
    ld l, [hl]                                    ; $4f08: $6e
    ld l, d                                       ; $4f09: $6a
    ld bc, $756b                                  ; $4f0a: $01 $6b $75
    ld l, l                                       ; $4f0d: $6d
    ld l, a                                       ; $4f0e: $6f
    nop                                           ; $4f0f: $00

jr_018_4f10:
    ld l, e                                       ; $4f10: $6b
    ld [hl], l                                    ; $4f11: $75

jr_018_4f12:
    ld l, l                                       ; $4f12: $6d
    ld l, a                                       ; $4f13: $6f
    ld [hl-], a                                   ; $4f14: $32
    ld bc, $6977                                  ; $4f15: $01 $77 $69
    ld l, [hl]                                    ; $4f18: $6e
    jr nc, @+$33                                  ; $4f19: $30 $31

    ld bc, $6574                                  ; $4f1b: $01 $74 $65
    ld h, a                                       ; $4f1e: $67
    ld h, c                                       ; $4f1f: $61
    ld l, l                                       ; $4f20: $6d
    ld l, c                                       ; $4f21: $69
    ld bc, $7267                                  ; $4f22: $01 $67 $72
    ld l, [hl]                                    ; $4f25: $6e
    inc [hl]                                      ; $4f26: $34
    ld e, a                                       ; $4f27: $5f
    ld [hl], b                                    ; $4f28: $70
    ld [hl], h                                    ; $4f29: $74

jr_018_4f2a:
    nop                                           ; $4f2a: $00
    ld h, a                                       ; $4f2b: $67
    ld h, d                                       ; $4f2c: $62
    ld e, a                                       ; $4f2d: $5f
    jr nc, @+$39                                  ; $4f2e: $30 $37

    ld bc, $7267                                  ; $4f30: $01 $67 $72
    ld l, [hl]                                    ; $4f33: $6e
    ld sp, $705f                                  ; $4f34: $31 $5f $70
    ld [hl], h                                    ; $4f37: $74
    ld bc, $696d                                  ; $4f38: $01 $6d $69
    ld l, [hl]                                    ; $4f3b: $6e
    ld l, c                                       ; $4f3c: $69
    jr nc, jr_018_4f76                            ; $4f3d: $30 $37

    ld bc, $7473                                  ; $4f3f: $01 $73 $74
    ld e, a                                       ; $4f42: $5f
    jr nc, jr_018_4f76                            ; $4f43: $30 $31

    nop                                           ; $4f45: $00
    ld h, [hl]                                    ; $4f46: $66
    ld l, c                                       ; $4f47: $69
    ld h, l                                       ; $4f48: $65
    ld l, h                                       ; $4f49: $6c
    ld h, h                                       ; $4f4a: $64
    ld bc, $7473                                  ; $4f4b: $01 $73 $74
    ld e, a                                       ; $4f4e: $5f
    jr nc, jr_018_4f84                            ; $4f4f: $30 $33

    ld bc, $616d                                  ; $4f51: $01 $6d $61
    ld [hl], h                                    ; $4f54: $74
    ld h, e                                       ; $4f55: $63
    ld l, b                                       ; $4f56: $68
    ld bc, $696d                                  ; $4f57: $01 $6d $69
    ld l, [hl]                                    ; $4f5a: $6e
    ld l, c                                       ; $4f5b: $69
    jr nc, jr_018_4f96                            ; $4f5c: $30 $38

    nop                                           ; $4f5e: $00
    ld l, l                                       ; $4f5f: $6d
    ld l, c                                       ; $4f60: $69
    ld l, [hl]                                    ; $4f61: $6e
    ld l, c                                       ; $4f62: $69
    jr nc, jr_018_4f97                            ; $4f63: $30 $32

    ld bc, $696d                                  ; $4f65: $01 $6d $69
    ld l, [hl]                                    ; $4f68: $6e
    ld l, c                                       ; $4f69: $69
    jr nc, @+$33                                  ; $4f6a: $30 $31

    ld bc, $696d                                  ; $4f6c: $01 $6d $69
    ld l, [hl]                                    ; $4f6f: $6e
    ld l, c                                       ; $4f70: $69
    jr nc, jr_018_4fa9                            ; $4f71: $30 $36

    ld bc, $696d                                  ; $4f73: $01 $6d $69

jr_018_4f76:
    inc [hl]                                      ; $4f76: $34
    nop                                           ; $4f77: $00
    ld h, c                                       ; $4f78: $61
    ld [hl], h                                    ; $4f79: $74
    ld e, a                                       ; $4f7a: $5f
    jr nc, jr_018_4fae                            ; $4f7b: $30 $31

    ld bc, $7267                                  ; $4f7d: $01 $67 $72
    ld l, [hl]                                    ; $4f80: $6e
    ld l, h                                       ; $4f81: $6c
    ld e, a                                       ; $4f82: $5f
    scf                                           ; $4f83: $37

jr_018_4f84:
    ld b, l                                       ; $4f84: $45
    ld bc, $6863                                  ; $4f85: $01 $63 $68
    ld [hl], d                                    ; $4f88: $72
    ld l, l                                       ; $4f89: $6d
    ld l, e                                       ; $4f8a: $6b
    ld h, d                                       ; $4f8b: $62
    ld l, e                                       ; $4f8c: $6b
    ld sp, $7301                                  ; $4f8d: $31 $01 $73
    ld [hl], h                                    ; $4f90: $74
    ld e, a                                       ; $4f91: $5f
    jr nc, jr_018_4fc4                            ; $4f92: $30 $30

    nop                                           ; $4f94: $00
    ld l, l                                       ; $4f95: $6d

jr_018_4f96:
    ld h, c                                       ; $4f96: $61

jr_018_4f97:
    ld [hl], b                                    ; $4f97: $70
    ld sp, $355f                                  ; $4f98: $31 $5f $35
    ld sp, $6101                                  ; $4f9b: $31 $01 $61
    ld [hl], h                                    ; $4f9e: $74
    ld e, a                                       ; $4f9f: $5f
    jr nc, @+$32                                  ; $4fa0: $30 $30

    ld bc, $696d                                  ; $4fa2: $01 $6d $69
    ld l, [hl]                                    ; $4fa5: $6e
    ld l, c                                       ; $4fa6: $69
    jr nc, @+$35                                  ; $4fa7: $30 $33

jr_018_4fa9:
    ld h, d                                       ; $4fa9: $62
    nop                                           ; $4faa: $00
    ld c, l                                       ; $4fab: $4d
    ld l, a                                       ; $4fac: $6f
    ld h, h                                       ; $4fad: $64

jr_018_4fae:
    ld h, l                                       ; $4fae: $65
    jr nz, @+$55                                  ; $4faf: $20 $53

    ld h, l                                       ; $4fb1: $65
    ld l, h                                       ; $4fb2: $6c
    ld h, l                                       ; $4fb3: $65
    ld h, e                                       ; $4fb4: $63
    ld [hl], h                                    ; $4fb5: $74
    nop                                           ; $4fb6: $00
    ld b, h                                       ; $4fb7: $44
    ld h, l                                       ; $4fb8: $65
    halt                                          ; $4fb9: $76
    ld h, l                                       ; $4fba: $65
    ld l, h                                       ; $4fbb: $6c
    ld l, a                                       ; $4fbc: $6f
    ld [hl], b                                    ; $4fbd: $70
    ld l, l                                       ; $4fbe: $6d
    ld h, l                                       ; $4fbf: $65
    ld l, [hl]                                    ; $4fc0: $6e
    ld [hl], h                                    ; $4fc1: $74
    nop                                           ; $4fc2: $00
    ld b, [hl]                                    ; $4fc3: $46

jr_018_4fc4:
    ld l, c                                       ; $4fc4: $69
    ld h, l                                       ; $4fc5: $65
    ld l, h                                       ; $4fc6: $6c
    ld h, h                                       ; $4fc7: $64
    nop                                           ; $4fc8: $00

    db $4d, $61, $72, $69, $6f, $6e, $20, $43, $6c, $75, $62, $68, $6f, $75, $73, $65
    db $00, $4c, $6f, $75, $6e, $67, $65, $00, $44, $69, $72, $65, $63, $74, $6f, $72
    db $27, $73, $20, $52, $6f, $6f, $6d, $00, $4c, $6f, $63, $6b, $65, $72, $20, $52
    db $6f, $6f, $6d, $00, $54, $72, $6f, $70, $68, $79, $20, $52, $6f, $6f, $6d, $00
    db $4d, $61, $72, $69, $6f, $6e, $20, $43, $6c, $75, $62, $01, $43, $61, $64, $64
    db $69, $65, $20, $4d, $61, $73, $74, $65, $72, $27, $73, $20, $4f, $66, $66, $69
    db $63, $65, $00, $50, $61, $6c, $6d, $20, $43, $6c, $75, $62, $01, $43, $61, $64
    db $64, $69, $65, $20, $4d, $61, $73, $74, $65, $72, $27, $73, $20, $4f, $66, $66
    db $69, $63, $65, $00, $44, $75, $6e, $65, $20, $43, $6c, $75, $62, $01, $43, $61
    db $64, $64, $69, $65, $20, $4d, $61, $73, $74, $65, $72, $27, $73, $20, $4f, $66
    db $66, $69, $63, $65, $00, $4c, $69, $6e, $6b, $73, $20, $43, $6c, $75, $62, $01
    db $43, $61, $64, $64, $69, $65, $20, $4d, $61, $73, $74, $65, $72, $27, $73, $20
    db $4f, $66, $66, $69, $63, $65, $00, $4d, $61, $72, $69, $6f, $6e, $20, $43, $6c
    db $75, $62, $01, $44, $72, $69, $76, $69, $6e, $67, $20, $52, $61, $6e, $67, $65
    db $00, $4d, $61, $72, $69, $6f, $6e, $20, $43, $6c, $75, $62, $01, $41, $70, $70
    db $72, $6f, $61, $63, $68, $20, $50, $72, $61, $63, $74, $69, $63, $65, $20, $52
    db $61, $6e, $67, $65, $00, $4d, $61, $72, $69, $6f, $6e, $20, $43, $6c, $75, $62
    db $01, $50, $72, $61, $63, $74, $69, $63, $65, $20, $50, $75, $74, $74, $69, $6e
    db $67, $20, $47, $72, $65, $65, $6e, $00, $50, $61, $6c, $6d, $20, $43, $6c, $75
    db $62, $01, $44, $72, $69, $76, $69, $6e, $67, $20, $52, $61, $6e, $67, $65, $00
    db $50, $61, $6c, $6d, $20, $43, $6c, $75, $62, $01, $41, $70, $70, $72, $6f, $61
    db $63, $68, $20, $50, $72, $61, $63, $74, $69, $63, $65, $20, $52, $61, $6e, $67
    db $65, $00, $50, $61, $6c, $6d, $20, $43, $6c, $75, $62, $01, $50, $72, $61, $63
    db $74, $69, $63, $65, $20, $50, $75, $74, $74, $69, $6e, $67, $20, $47, $72, $65
    db $65, $6e, $00, $44, $75, $6e, $65, $20, $43, $6c, $75, $62, $01, $44, $72, $69
    db $76, $69, $6e, $67, $20, $52, $61, $6e, $67, $65, $00, $44, $75, $6e, $65, $20
    db $43, $6c, $75, $62, $01, $41, $70, $70, $72, $6f, $61, $63, $68, $20, $50, $72
    db $61, $63, $74, $69, $63, $65, $20, $52, $61, $6e, $67, $65, $00, $44, $75, $6e
    db $65, $20, $43, $6c, $75, $62, $01, $50, $72, $61, $63, $74, $69, $63, $65, $20
    db $50, $75, $74, $74, $69, $6e, $67, $20, $47, $72, $65, $65, $6e, $00, $4c, $69
    db $6e, $6b, $73, $20, $43, $6c, $75, $62, $01, $44, $72, $69, $76, $69, $6e, $67
    db $20, $52, $61, $6e, $67, $65, $00, $4c, $69, $6e, $6b, $73, $20, $43, $6c, $75
    db $62, $01, $41, $70, $70, $72, $6f, $61, $63, $68, $20, $50, $72, $61, $63, $74
    db $69, $63, $65, $20, $52, $61, $6e, $67, $65, $00, $4c, $69, $6e, $6b, $73, $20
    db $43, $6c, $75, $62, $01, $50, $72, $61, $63, $74, $69, $63, $65, $20, $50, $75
    db $74, $74, $69, $6e, $67, $20, $47, $72, $65, $65, $6e, $00, $41, $77, $61, $72
    db $64, $20, $43, $65, $72, $65, $6d, $6f, $6e, $79, $20, $28, $4d, $61, $72, $69
    db $6f, $6e, $29, $00, $41, $77, $61, $72, $64, $20, $43, $65, $72, $65, $6d, $6f
    db $6e

    ld a, c                                       ; $522a: $79
    jr nz, jr_018_5255                            ; $522b: $20 $28

    ld d, b                                       ; $522d: $50
    ld h, c                                       ; $522e: $61
    ld l, h                                       ; $522f: $6c
    ld l, l                                       ; $5230: $6d
    add hl, hl                                    ; $5231: $29
    nop                                           ; $5232: $00
    ld b, c                                       ; $5233: $41
    ld [hl], a                                    ; $5234: $77
    ld h, c                                       ; $5235: $61
    ld [hl], d                                    ; $5236: $72
    ld h, h                                       ; $5237: $64
    jr nz, jr_018_527d                            ; $5238: $20 $43

    ld h, l                                       ; $523a: $65
    ld [hl], d                                    ; $523b: $72
    ld h, l                                       ; $523c: $65
    ld l, l                                       ; $523d: $6d
    ld l, a                                       ; $523e: $6f
    ld l, [hl]                                    ; $523f: $6e
    ld a, c                                       ; $5240: $79
    jr nz, jr_018_526b                            ; $5241: $20 $28

    ld b, h                                       ; $5243: $44
    ld [hl], l                                    ; $5244: $75
    ld l, [hl]                                    ; $5245: $6e
    ld h, l                                       ; $5246: $65
    add hl, hl                                    ; $5247: $29
    nop                                           ; $5248: $00
    ld b, c                                       ; $5249: $41
    ld [hl], a                                    ; $524a: $77
    ld h, c                                       ; $524b: $61
    ld [hl], d                                    ; $524c: $72
    ld h, h                                       ; $524d: $64
    jr nz, jr_018_5293                            ; $524e: $20 $43

    ld h, l                                       ; $5250: $65
    ld [hl], d                                    ; $5251: $72
    ld h, l                                       ; $5252: $65
    ld l, l                                       ; $5253: $6d
    ld l, a                                       ; $5254: $6f

jr_018_5255:
    ld l, [hl]                                    ; $5255: $6e
    ld a, c                                       ; $5256: $79
    jr nz, jr_018_5281                            ; $5257: $20 $28

    ld c, h                                       ; $5259: $4c
    ld l, c                                       ; $525a: $69
    ld l, [hl]                                    ; $525b: $6e
    ld l, e                                       ; $525c: $6b
    ld [hl], e                                    ; $525d: $73
    add hl, hl                                    ; $525e: $29
    nop                                           ; $525f: $00
    ld d, d                                       ; $5260: $52
    ld l, a                                       ; $5261: $6f
    ld h, c                                       ; $5262: $61
    ld h, h                                       ; $5263: $64
    jr nz, jr_018_52da                            ; $5264: $20 $74

    ld l, a                                       ; $5266: $6f
    jr nz, jr_018_52b9                            ; $5267: $20 $50

    ld h, l                                       ; $5269: $65
    ld h, c                                       ; $526a: $61

jr_018_526b:
    ld h, e                                       ; $526b: $63
    ld l, b                                       ; $526c: $68
    daa                                           ; $526d: $27
    ld [hl], e                                    ; $526e: $73
    jr nz, jr_018_52b4                            ; $526f: $20 $43

    ld h, c                                       ; $5271: $61
    ld [hl], e                                    ; $5272: $73
    ld [hl], h                                    ; $5273: $74
    ld l, h                                       ; $5274: $6c
    ld h, l                                       ; $5275: $65
    nop                                           ; $5276: $00
    ld d, b                                       ; $5277: $50
    ld h, l                                       ; $5278: $65
    ld h, c                                       ; $5279: $61
    ld h, e                                       ; $527a: $63
    ld l, b                                       ; $527b: $68
    daa                                           ; $527c: $27

jr_018_527d:
    ld [hl], e                                    ; $527d: $73
    jr nz, jr_018_52c3                            ; $527e: $20 $43

    ld h, c                                       ; $5280: $61

jr_018_5281:
    ld [hl], e                                    ; $5281: $73
    ld [hl], h                                    ; $5282: $74
    ld l, h                                       ; $5283: $6c
    ld h, l                                       ; $5284: $65
    nop                                           ; $5285: $00
    ld d, e                                       ; $5286: $53
    ld [hl], h                                    ; $5287: $74
    ld l, a                                       ; $5288: $6f
    ld [hl], d                                    ; $5289: $72
    ld a, c                                       ; $528a: $79
    jr nz, jr_018_52dc                            ; $528b: $20 $4f

    ld [hl], b                                    ; $528d: $70
    ld h, l                                       ; $528e: $65
    ld l, [hl]                                    ; $528f: $6e
    ld l, c                                       ; $5290: $69
    ld l, [hl]                                    ; $5291: $6e
    ld h, a                                       ; $5292: $67

jr_018_5293:
    nop                                           ; $5293: $00
    ld d, [hl]                                    ; $5294: $56
    ld d, e                                       ; $5295: $53
    jr nz, jr_018_52ea                            ; $5296: $20 $52

    ld h, l                                       ; $5298: $65
    ld [hl], e                                    ; $5299: $73
    ld [hl], l                                    ; $529a: $75
    ld l, h                                       ; $529b: $6c
    ld [hl], h                                    ; $529c: $74
    ld [hl], e                                    ; $529d: $73
    nop                                           ; $529e: $00
    ld b, e                                       ; $529f: $43
    ld l, a                                       ; $52a0: $6f
    ld [hl], l                                    ; $52a1: $75
    ld [hl], d                                    ; $52a2: $72
    ld [hl], e                                    ; $52a3: $73
    ld h, l                                       ; $52a4: $65
    jr nz, jr_018_52f7                            ; $52a5: $20 $50

    ld h, c                                       ; $52a7: $61
    ld [hl], d                                    ; $52a8: $72
    ld h, c                                       ; $52a9: $61
    ld l, l                                       ; $52aa: $6d
    ld h, l                                       ; $52ab: $65
    ld [hl], h                                    ; $52ac: $74
    ld h, l                                       ; $52ad: $65
    ld [hl], d                                    ; $52ae: $72
    ld [hl], e                                    ; $52af: $73
    nop                                           ; $52b0: $00
    ld c, [hl]                                    ; $52b1: $4e
    ld l, a                                       ; $52b2: $6f
    ld [hl], d                                    ; $52b3: $72

jr_018_52b4:
    ld l, c                                       ; $52b4: $69
    ld l, a                                       ; $52b5: $6f
    jr nz, jr_018_530b                            ; $52b6: $20 $53

    ld [hl], h                                    ; $52b8: $74

jr_018_52b9:
    ld h, c                                       ; $52b9: $61
    ld [hl], h                                    ; $52ba: $74
    ld [hl], l                                    ; $52bb: $75
    ld [hl], e                                    ; $52bc: $73
    ld hl, $4e00                                  ; $52bd: $21 $00 $4e
    ld l, a                                       ; $52c0: $6f
    ld [hl], d                                    ; $52c1: $72
    ld l, c                                       ; $52c2: $69

jr_018_52c3:
    ld l, a                                       ; $52c3: $6f
    jr nz, jr_018_5319                            ; $52c4: $20 $53

    ld h, c                                       ; $52c6: $61
    ld l, l                                       ; $52c7: $6d
    ld [hl], b                                    ; $52c8: $70
    ld l, h                                       ; $52c9: $6c
    ld h, l                                       ; $52ca: $65
    nop                                           ; $52cb: $00
    ld d, e                                       ; $52cc: $53
    ld h, l                                       ; $52cd: $65
    ld l, h                                       ; $52ce: $6c
    ld h, l                                       ; $52cf: $65
    ld h, e                                       ; $52d0: $63
    ld [hl], h                                    ; $52d1: $74
    jr nz, jr_018_5327                            ; $52d2: $20 $53

    ld h, e                                       ; $52d4: $63
    ld [hl], d                                    ; $52d5: $72
    ld h, l                                       ; $52d6: $65
    ld h, l                                       ; $52d7: $65
    ld l, [hl]                                    ; $52d8: $6e
    nop                                           ; $52d9: $00

jr_018_52da:
    ld c, l                                       ; $52da: $4d
    ld l, c                                       ; $52db: $69

jr_018_52dc:
    ld l, [hl]                                    ; $52dc: $6e
    ld l, c                                       ; $52dd: $69
    dec l                                         ; $52de: $2d
    ld b, e                                       ; $52df: $43
    ld l, b                                       ; $52e0: $68
    ld h, c                                       ; $52e1: $61
    ld [hl], d                                    ; $52e2: $72
    ld h, c                                       ; $52e3: $61
    ld h, e                                       ; $52e4: $63
    ld [hl], h                                    ; $52e5: $74
    ld h, l                                       ; $52e6: $65
    ld [hl], d                                    ; $52e7: $72
    jr nz, jr_018_533e                            ; $52e8: $20 $54

jr_018_52ea:
    ld h, l                                       ; $52ea: $65
    ld [hl], e                                    ; $52eb: $73
    ld [hl], h                                    ; $52ec: $74
    nop                                           ; $52ed: $00
    ld d, h                                       ; $52ee: $54
    ld h, l                                       ; $52ef: $65
    ld [hl], d                                    ; $52f0: $72
    ld l, a                                       ; $52f1: $6f
    ld [hl], b                                    ; $52f2: $70
    nop                                           ; $52f3: $00
    ld d, a                                       ; $52f4: $57
    ld l, c                                       ; $52f5: $69
    ld l, [hl]                                    ; $52f6: $6e

jr_018_52f7:
    ld h, h                                       ; $52f7: $64
    ld a, c                                       ; $52f8: $79
    jr nz, jr_018_5351                            ; $52f9: $20 $56

    ld h, c                                       ; $52fb: $61
    ld l, h                                       ; $52fc: $6c
    ld l, h                                       ; $52fd: $6c
    ld h, l                                       ; $52fe: $65
    ld a, c                                       ; $52ff: $79
    ld bc, $7053                                  ; $5300: $01 $53 $70
    ld h, l                                       ; $5303: $65
    ld h, e                                       ; $5304: $63
    ld l, c                                       ; $5305: $69
    ld h, c                                       ; $5306: $61
    ld l, h                                       ; $5307: $6c
    jr nz, jr_018_5352                            ; $5308: $20 $48

    ld l, a                                       ; $530a: $6f

jr_018_530b:
    ld l, h                                       ; $530b: $6c
    ld h, l                                       ; $530c: $65
    nop                                           ; $530d: $00
    ld d, h                                       ; $530e: $54
    ld l, c                                       ; $530f: $69
    ld l, [hl]                                    ; $5310: $6e
    ld a, c                                       ; $5311: $79
    dec l                                         ; $5312: $2d
    ld d, h                                       ; $5313: $54
    ld l, a                                       ; $5314: $6f
    ld [hl], h                                    ; $5315: $74
    ld [hl], e                                    ; $5316: $73
    jr nz, jr_018_5360                            ; $5317: $20 $47

jr_018_5319:
    ld l, a                                       ; $5319: $6f
    ld l, h                                       ; $531a: $6c
    ld h, [hl]                                    ; $531b: $66
    jr nz, jr_018_5365                            ; $531c: $20 $47

    ld [hl], d                                    ; $531e: $72
    ld l, a                                       ; $531f: $6f
    ld [hl], l                                    ; $5320: $75
    ld l, [hl]                                    ; $5321: $6e
    ld h, h                                       ; $5322: $64
    ld [hl], e                                    ; $5323: $73
    nop                                           ; $5324: $00
    ld c, l                                       ; $5325: $4d
    ld l, c                                       ; $5326: $69

jr_018_5327:
    ld l, [hl]                                    ; $5327: $6e
    ld l, c                                       ; $5328: $69
    dec l                                         ; $5329: $2d
    ld c, l                                       ; $532a: $4d
    ld l, c                                       ; $532b: $69
    ld l, [hl]                                    ; $532c: $6e
    ld l, c                                       ; $532d: $69
    jr nz, @+$4e                                  ; $532e: $20 $4c

    ld h, c                                       ; $5330: $61
    ld l, e                                       ; $5331: $6b
    ld h, l                                       ; $5332: $65
    jr nz, jr_018_5378                            ; $5333: $20 $43

    ld l, a                                       ; $5335: $6f
    ld [hl], l                                    ; $5336: $75
    ld [hl], d                                    ; $5337: $72
    ld [hl], e                                    ; $5338: $73
    ld h, l                                       ; $5339: $65
    nop                                           ; $533a: $00
    ld d, d                                       ; $533b: $52
    ld h, c                                       ; $533c: $61
    halt                                          ; $533d: $76

jr_018_533e:
    ld h, l                                       ; $533e: $65
    ld l, [hl]                                    ; $533f: $6e
    jr nz, jr_018_5399                            ; $5340: $20 $57

    ld l, a                                       ; $5342: $6f
    ld l, a                                       ; $5343: $6f
    ld h, h                                       ; $5344: $64
    ld [hl], e                                    ; $5345: $73
    jr nz, jr_018_538f                            ; $5346: $20 $47

    ld l, a                                       ; $5348: $6f
    ld l, h                                       ; $5349: $6c
    ld h, [hl]                                    ; $534a: $66
    jr nz, jr_018_5390                            ; $534b: $20 $43

    ld l, a                                       ; $534d: $6f
    ld [hl], l                                    ; $534e: $75
    ld [hl], d                                    ; $534f: $72
    ld [hl], e                                    ; $5350: $73

jr_018_5351:
    ld h, l                                       ; $5351: $65

jr_018_5352:
    nop                                           ; $5352: $00
    ld b, c                                       ; $5353: $41
    ld l, h                                       ; $5354: $6c
    ld [hl], h                                    ; $5355: $74
    ld h, l                                       ; $5356: $65
    ld [hl], d                                    ; $5357: $72
    ld l, [hl]                                    ; $5358: $6e
    ld h, c                                       ; $5359: $61
    ld [hl], h                                    ; $535a: $74
    ld h, l                                       ; $535b: $65
    jr nz, jr_018_53a5                            ; $535c: $20 $47

    ld h, c                                       ; $535e: $61
    ld l, l                                       ; $535f: $6d

jr_018_5360:
    ld h, l                                       ; $5360: $65
    nop                                           ; $5361: $00
    ld b, c                                       ; $5362: $41
    ld l, h                                       ; $5363: $6c
    ld [hl], h                                    ; $5364: $74

jr_018_5365:
    ld h, l                                       ; $5365: $65
    ld [hl], d                                    ; $5366: $72
    ld l, [hl]                                    ; $5367: $6e
    ld h, c                                       ; $5368: $61
    ld [hl], h                                    ; $5369: $74
    ld h, l                                       ; $536a: $65
    jr nz, jr_018_53b4                            ; $536b: $20 $47

    ld h, c                                       ; $536d: $61
    ld l, l                                       ; $536e: $6d
    ld h, l                                       ; $536f: $65
    jr nz, jr_018_53b7                            ; $5370: $20 $45

    halt                                          ; $5372: $76
    ld h, l                                       ; $5373: $65
    ld l, [hl]                                    ; $5374: $6e
    ld [hl], h                                    ; $5375: $74
    nop                                           ; $5376: $00
    ld b, a                                       ; $5377: $47

jr_018_5378:
    ld l, a                                       ; $5378: $6f
    ld l, h                                       ; $5379: $6c
    ld h, [hl]                                    ; $537a: $66
    jr nz, jr_018_53c4                            ; $537b: $20 $47

    ld [hl], l                                    ; $537d: $75
    ld [hl], d                                    ; $537e: $72
    ld [hl], l                                    ; $537f: $75
    daa                                           ; $5380: $27
    ld [hl], e                                    ; $5381: $73
    ld bc, $6950                                  ; $5382: $01 $50 $69
    ld [hl], h                                    ; $5385: $74
    ld h, e                                       ; $5386: $63
    ld l, b                                       ; $5387: $68
    jr nz, @+$63                                  ; $5388: $20 $61

    ld l, [hl]                                    ; $538a: $6e
    ld h, h                                       ; $538b: $64
    jr nz, jr_018_53de                            ; $538c: $20 $50

    ld [hl], l                                    ; $538e: $75

jr_018_538f:
    ld [hl], h                                    ; $538f: $74

jr_018_5390:
    ld [hl], h                                    ; $5390: $74
    nop                                           ; $5391: $00
    ld b, a                                       ; $5392: $47
    ld l, a                                       ; $5393: $6f
    ld l, h                                       ; $5394: $6c
    ld h, [hl]                                    ; $5395: $66
    jr nz, jr_018_53db                            ; $5396: $20 $43

    ld l, h                                       ; $5398: $6c

jr_018_5399:
    ld l, c                                       ; $5399: $69
    ld l, [hl]                                    ; $539a: $6e
    ld l, c                                       ; $539b: $69
    ld h, e                                       ; $539c: $63
    jr nz, jr_018_539f                            ; $539d: $20 $00

jr_018_539f:
    ld b, e                                       ; $539f: $43
    ld l, h                                       ; $53a0: $6c
    ld [hl], l                                    ; $53a1: $75
    ld h, d                                       ; $53a2: $62
    jr nz, jr_018_53f2                            ; $53a3: $20 $4d

jr_018_53a5:
    ld h, c                                       ; $53a5: $61
    ld l, e                                       ; $53a6: $6b
    ld h, l                                       ; $53a7: $65
    ld [hl], d                                    ; $53a8: $72
    daa                                           ; $53a9: $27
    ld [hl], e                                    ; $53aa: $73
    jr nz, jr_018_53f5                            ; $53ab: $20 $48

    ld [hl], l                                    ; $53ad: $75
    ld [hl], h                                    ; $53ae: $74
    nop                                           ; $53af: $00
    ld d, a                                       ; $53b0: $57
    ld l, c                                       ; $53b1: $69
    ld l, [hl]                                    ; $53b2: $6e
    ld h, h                                       ; $53b3: $64

jr_018_53b4:
    ld a, c                                       ; $53b4: $79
    jr nz, jr_018_540d                            ; $53b5: $20 $56

jr_018_53b7:
    ld h, c                                       ; $53b7: $61
    ld l, h                                       ; $53b8: $6c
    ld l, h                                       ; $53b9: $6c
    ld h, l                                       ; $53ba: $65
    ld a, c                                       ; $53bb: $79
    jr nz, @+$4a                                  ; $53bc: $20 $48

    ld [hl], l                                    ; $53be: $75
    ld [hl], h                                    ; $53bf: $74
    ld [hl], h                                    ; $53c0: $74
    nop                                           ; $53c1: $00
    ld c, l                                       ; $53c2: $4d
    ld h, c                                       ; $53c3: $61

jr_018_53c4:
    ld [hl], h                                    ; $53c4: $74
    ld h, e                                       ; $53c5: $63
    ld l, b                                       ; $53c6: $68
    jr nz, jr_018_5410                            ; $53c7: $20 $47

    ld h, c                                       ; $53c9: $61
    ld l, l                                       ; $53ca: $6d
    ld h, l                                       ; $53cb: $65
    jr nz, jr_018_5413                            ; $53cc: $20 $45

    halt                                          ; $53ce: $76
    ld h, l                                       ; $53cf: $65
    ld l, [hl]                                    ; $53d0: $6e
    ld [hl], h                                    ; $53d1: $74
    nop                                           ; $53d2: $00
    ld b, l                                       ; $53d3: $45
    ld l, [hl]                                    ; $53d4: $6e
    ld h, h                                       ; $53d5: $64
    jr nz, jr_018_541c                            ; $53d6: $20 $44

    ld l, c                                       ; $53d8: $69
    ld [hl], d                                    ; $53d9: $72
    ld h, l                                       ; $53da: $65

jr_018_53db:
    ld h, e                                       ; $53db: $63
    ld [hl], h                                    ; $53dc: $74
    ld l, a                                       ; $53dd: $6f

jr_018_53de:
    ld [hl], d                                    ; $53de: $72
    daa                                           ; $53df: $27
    ld [hl], e                                    ; $53e0: $73
    jr nz, jr_018_5435                            ; $53e1: $20 $52

    ld l, a                                       ; $53e3: $6f
    ld l, a                                       ; $53e4: $6f
    ld l, l                                       ; $53e5: $6d
    nop                                           ; $53e6: $00
    ld b, l                                       ; $53e7: $45
    ld l, [hl]                                    ; $53e8: $6e
    ld h, h                                       ; $53e9: $64
    jr nz, jr_018_5438                            ; $53ea: $20 $4c

    ld l, a                                       ; $53ec: $6f
    ld [hl], l                                    ; $53ed: $75
    ld l, [hl]                                    ; $53ee: $6e
    ld h, a                                       ; $53ef: $67
    ld h, l                                       ; $53f0: $65
    nop                                           ; $53f1: $00

jr_018_53f2:
    ld b, l                                       ; $53f2: $45
    ld l, [hl]                                    ; $53f3: $6e
    ld h, h                                       ; $53f4: $64

jr_018_53f5:
    jr nz, jr_018_543a                            ; $53f5: $20 $43

    ld h, c                                       ; $53f7: $61
    ld h, h                                       ; $53f8: $64
    ld h, h                                       ; $53f9: $64
    ld l, c                                       ; $53fa: $69
    ld h, l                                       ; $53fb: $65
    jr nz, jr_018_544b                            ; $53fc: $20 $4d

    ld h, c                                       ; $53fe: $61
    ld [hl], e                                    ; $53ff: $73
    ld [hl], h                                    ; $5400: $74
    ld h, l                                       ; $5401: $65
    ld [hl], d                                    ; $5402: $72
    daa                                           ; $5403: $27
    ld [hl], e                                    ; $5404: $73
    jr nz, jr_018_5456                            ; $5405: $20 $4f

    ld h, [hl]                                    ; $5407: $66
    ld h, [hl]                                    ; $5408: $66
    ld l, c                                       ; $5409: $69
    ld h, e                                       ; $540a: $63
    ld h, l                                       ; $540b: $65
    nop                                           ; $540c: $00

jr_018_540d:
    ld b, l                                       ; $540d: $45
    ld l, [hl]                                    ; $540e: $6e
    ld h, h                                       ; $540f: $64

jr_018_5410:
    jr nz, jr_018_5453                            ; $5410: $20 $41

    ld [hl], a                                    ; $5412: $77

jr_018_5413:
    ld h, c                                       ; $5413: $61
    ld [hl], d                                    ; $5414: $72
    ld h, h                                       ; $5415: $64
    jr nz, jr_018_545b                            ; $5416: $20 $43

    ld h, l                                       ; $5418: $65
    ld [hl], d                                    ; $5419: $72
    ld h, l                                       ; $541a: $65
    ld l, l                                       ; $541b: $6d

jr_018_541c:
    ld l, a                                       ; $541c: $6f
    ld l, [hl]                                    ; $541d: $6e
    ld a, c                                       ; $541e: $79
    jr nz, jr_018_5449                            ; $541f: $20 $28

    ld c, l                                       ; $5421: $4d
    ld h, c                                       ; $5422: $61
    ld [hl], d                                    ; $5423: $72
    ld l, c                                       ; $5424: $69
    ld l, a                                       ; $5425: $6f
    ld l, [hl]                                    ; $5426: $6e
    add hl, hl                                    ; $5427: $29
    nop                                           ; $5428: $00
    ld b, l                                       ; $5429: $45
    ld l, [hl]                                    ; $542a: $6e
    ld h, h                                       ; $542b: $64
    jr nz, jr_018_5482                            ; $542c: $20 $54

    ld l, c                                       ; $542e: $69
    ld l, [hl]                                    ; $542f: $6e
    ld a, c                                       ; $5430: $79
    dec l                                         ; $5431: $2d
    ld d, h                                       ; $5432: $54
    ld l, a                                       ; $5433: $6f
    ld [hl], h                                    ; $5434: $74

jr_018_5435:
    ld [hl], e                                    ; $5435: $73
    jr nz, jr_018_547f                            ; $5436: $20 $47

jr_018_5438:
    ld l, a                                       ; $5438: $6f
    ld l, h                                       ; $5439: $6c

jr_018_543a:
    ld h, [hl]                                    ; $543a: $66
    nop                                           ; $543b: $00
    ld b, l                                       ; $543c: $45
    ld l, [hl]                                    ; $543d: $6e
    ld h, h                                       ; $543e: $64
    jr nz, jr_018_5493                            ; $543f: $20 $52

    ld h, c                                       ; $5441: $61
    halt                                          ; $5442: $76
    ld h, l                                       ; $5443: $65
    ld l, [hl]                                    ; $5444: $6e
    jr nz, jr_018_549e                            ; $5445: $20 $57

    ld l, a                                       ; $5447: $6f
    ld l, a                                       ; $5448: $6f

jr_018_5449:
    ld h, h                                       ; $5449: $64
    ld [hl], e                                    ; $544a: $73

jr_018_544b:
    nop                                           ; $544b: $00
    ld b, l                                       ; $544c: $45
    ld l, [hl]                                    ; $544d: $6e
    ld h, h                                       ; $544e: $64
    jr nz, jr_018_5492                            ; $544f: $20 $41

    ld l, h                                       ; $5451: $6c
    ld [hl], h                                    ; $5452: $74

jr_018_5453:
    ld h, l                                       ; $5453: $65
    ld [hl], d                                    ; $5454: $72
    ld l, [hl]                                    ; $5455: $6e

jr_018_5456:
    ld h, c                                       ; $5456: $61
    ld [hl], h                                    ; $5457: $74
    ld h, l                                       ; $5458: $65
    jr nz, jr_018_54a2                            ; $5459: $20 $47

jr_018_545b:
    ld h, c                                       ; $545b: $61
    ld l, l                                       ; $545c: $6d
    ld h, l                                       ; $545d: $65
    ld sp, $4500                                  ; $545e: $31 $00 $45
    ld l, [hl]                                    ; $5461: $6e
    ld h, h                                       ; $5462: $64
    jr nz, jr_018_54b2                            ; $5463: $20 $4d

    ld h, c                                       ; $5465: $61
    ld [hl], h                                    ; $5466: $74
    ld h, e                                       ; $5467: $63
    ld l, b                                       ; $5468: $68
    jr nz, jr_018_54b2                            ; $5469: $20 $47

    ld h, c                                       ; $546b: $61
    ld l, l                                       ; $546c: $6d
    ld h, l                                       ; $546d: $65
    jr nz, jr_018_54b5                            ; $546e: $20 $45

    halt                                          ; $5470: $76
    ld h, l                                       ; $5471: $65
    ld l, [hl]                                    ; $5472: $6e
    ld [hl], h                                    ; $5473: $74
    nop                                           ; $5474: $00
    ld b, l                                       ; $5475: $45
    ld l, [hl]                                    ; $5476: $6e
    ld h, h                                       ; $5477: $64
    jr nz, jr_018_54c0                            ; $5478: $20 $46

    ld l, c                                       ; $547a: $69
    ld h, l                                       ; $547b: $65
    ld l, h                                       ; $547c: $6c
    ld h, h                                       ; $547d: $64
    nop                                           ; $547e: $00

jr_018_547f:
    ld b, l                                       ; $547f: $45
    ld l, [hl]                                    ; $5480: $6e
    ld h, h                                       ; $5481: $64

jr_018_5482:
    jr nz, jr_018_54c7                            ; $5482: $20 $43

    ld l, h                                       ; $5484: $6c
    ld l, a                                       ; $5485: $6f
    ld [hl], l                                    ; $5486: $75
    ld h, h                                       ; $5487: $64
    ld [hl], e                                    ; $5488: $73
    nop                                           ; $5489: $00
    ld b, l                                       ; $548a: $45
    ld l, [hl]                                    ; $548b: $6e
    ld h, h                                       ; $548c: $64
    jr nz, jr_018_54d0                            ; $548d: $20 $41

    ld a, d                                       ; $548f: $7a
    ld h, c                                       ; $5490: $61
    ld l, h                                       ; $5491: $6c

jr_018_5492:
    ld h, l                                       ; $5492: $65

jr_018_5493:
    ld h, c                                       ; $5493: $61
    nop                                           ; $5494: $00
    ld b, l                                       ; $5495: $45
    ld l, [hl]                                    ; $5496: $6e
    ld h, h                                       ; $5497: $64
    jr nz, jr_018_54ea                            ; $5498: $20 $50

    ld h, l                                       ; $549a: $65
    ld h, c                                       ; $549b: $61
    ld h, e                                       ; $549c: $63
    ld l, b                                       ; $549d: $68

jr_018_549e:
    daa                                           ; $549e: $27
    ld [hl], e                                    ; $549f: $73
    jr nz, @+$45                                  ; $54a0: $20 $43

jr_018_54a2:
    ld h, c                                       ; $54a2: $61
    ld [hl], e                                    ; $54a3: $73
    ld [hl], h                                    ; $54a4: $74
    ld l, h                                       ; $54a5: $6c
    ld h, l                                       ; $54a6: $65
    nop                                           ; $54a7: $00
    ld b, l                                       ; $54a8: $45
    ld l, [hl]                                    ; $54a9: $6e
    ld h, h                                       ; $54aa: $64
    jr nz, jr_018_54fa                            ; $54ab: $20 $4d

    ld h, c                                       ; $54ad: $61
    ld [hl], d                                    ; $54ae: $72
    ld l, c                                       ; $54af: $69
    ld l, a                                       ; $54b0: $6f
    ld l, [hl]                                    ; $54b1: $6e

jr_018_54b2:
    jr nz, @+$45                                  ; $54b2: $20 $43

    ld l, h                                       ; $54b4: $6c

jr_018_54b5:
    ld [hl], l                                    ; $54b5: $75
    ld h, d                                       ; $54b6: $62
    jr nz, jr_018_5501                            ; $54b7: $20 $48

    ld l, a                                       ; $54b9: $6f
    ld [hl], l                                    ; $54ba: $75
    ld [hl], e                                    ; $54bb: $73
    ld h, l                                       ; $54bc: $65
    nop                                           ; $54bd: $00
    ld b, l                                       ; $54be: $45
    ld l, [hl]                                    ; $54bf: $6e

jr_018_54c0:
    ld h, h                                       ; $54c0: $64
    jr nz, jr_018_5509                            ; $54c1: $20 $46

    ld l, c                                       ; $54c3: $69
    ld h, l                                       ; $54c4: $65
    ld l, h                                       ; $54c5: $6c
    ld h, h                                       ; $54c6: $64

jr_018_54c7:
    nop                                           ; $54c7: $00
    ld b, e                                       ; $54c8: $43
    ld l, h                                       ; $54c9: $6c
    ld [hl], l                                    ; $54ca: $75
    ld h, d                                       ; $54cb: $62
    jr nz, jr_018_553b                            ; $54cc: $20 $6d

    ld h, l                                       ; $54ce: $65
    ld l, l                                       ; $54cf: $6d

jr_018_54d0:
    ld h, d                                       ; $54d0: $62
    ld h, l                                       ; $54d1: $65
    ld [hl], d                                    ; $54d2: $72
    ld [hl], e                                    ; $54d3: $73
    jr nz, jr_018_5549                            ; $54d4: $20 $73

    ld l, c                                       ; $54d6: $69
    ld h, a                                       ; $54d7: $67
    ld l, [hl]                                    ; $54d8: $6e
    ld bc, $6e69                                  ; $54d9: $01 $69 $6e
    jr nz, @+$63                                  ; $54dc: $20 $61

    ld [hl], h                                    ; $54de: $74
    jr nz, jr_018_5555                            ; $54df: $20 $74

    ld l, b                                       ; $54e1: $68
    ld l, c                                       ; $54e2: $69
    ld [hl], e                                    ; $54e3: $73
    jr nz, jr_018_5549                            ; $54e4: $20 $63

    ld l, a                                       ; $54e6: $6f
    ld [hl], l                                    ; $54e7: $75
    ld l, [hl]                                    ; $54e8: $6e
    ld [hl], h                                    ; $54e9: $74

jr_018_54ea:
    ld h, l                                       ; $54ea: $65
    ld [hl], d                                    ; $54eb: $72
    ld bc, $6e61                                  ; $54ec: $01 $61 $6e
    ld h, h                                       ; $54ef: $64
    jr nz, jr_018_5559                            ; $54f0: $20 $67

    ld l, a                                       ; $54f2: $6f
    jr nz, jr_018_5569                            ; $54f3: $20 $74

    ld l, a                                       ; $54f5: $6f
    jr nz, @+$76                                  ; $54f6: $20 $74

    ld l, b                                       ; $54f8: $68
    ld h, l                                       ; $54f9: $65

jr_018_54fa:
    ld [bc], a                                    ; $54fa: $02
    ld b, e                                       ; $54fb: $43
    ld h, c                                       ; $54fc: $61
    ld h, h                                       ; $54fd: $64
    ld h, h                                       ; $54fe: $64
    ld l, c                                       ; $54ff: $69
    ld h, l                                       ; $5500: $65

jr_018_5501:
    jr nz, jr_018_5550                            ; $5501: $20 $4d

    ld h, c                                       ; $5503: $61
    ld [hl], e                                    ; $5504: $73
    ld [hl], h                                    ; $5505: $74
    ld h, l                                       ; $5506: $65
    ld [hl], d                                    ; $5507: $72
    daa                                           ; $5508: $27

jr_018_5509:
    ld [hl], e                                    ; $5509: $73
    ld bc, $666f                                  ; $550a: $01 $6f $66
    ld h, [hl]                                    ; $550d: $66
    ld l, c                                       ; $550e: $69
    ld h, e                                       ; $550f: $63
    ld h, l                                       ; $5510: $65
    jr nz, jr_018_5587                            ; $5511: $20 $74

    ld l, a                                       ; $5513: $6f
    jr nz, jr_018_557d                            ; $5514: $20 $67

    ld h, l                                       ; $5516: $65
    ld [hl], h                                    ; $5517: $74
    jr nz, jr_018_557b                            ; $5518: $20 $61

    ld bc, $7473                                  ; $551a: $01 $73 $74
    ld h, c                                       ; $551d: $61
    ld [hl], d                                    ; $551e: $72
    ld [hl], h                                    ; $551f: $74
    jr nz, jr_018_5596                            ; $5520: $20 $74

    ld l, c                                       ; $5522: $69
    ld l, l                                       ; $5523: $6d
    ld h, l                                       ; $5524: $65
    ld l, $03                                     ; $5525: $2e $03
    nop                                           ; $5527: $00
    ld d, h                                       ; $5528: $54
    ld l, b                                       ; $5529: $68
    ld l, c                                       ; $552a: $69
    ld [hl], e                                    ; $552b: $73
    jr nz, @+$6b                                  ; $552c: $20 $69

    ld [hl], e                                    ; $552e: $73
    jr nz, jr_018_55a5                            ; $552f: $20 $74

    ld l, b                                       ; $5531: $68
    ld h, l                                       ; $5532: $65
    jr nz, jr_018_55ab                            ; $5533: $20 $76

    ld l, c                                       ; $5535: $69
    ld [hl], e                                    ; $5536: $73
    ld l, c                                       ; $5537: $69
    ld [hl], h                                    ; $5538: $74
    ld l, a                                       ; $5539: $6f
    ld [hl], d                                    ; $553a: $72

jr_018_553b:
    ld [hl], e                                    ; $553b: $73
    daa                                           ; $553c: $27
    ld bc, $6f63                                  ; $553d: $01 $63 $6f
    ld [hl], l                                    ; $5540: $75
    ld l, [hl]                                    ; $5541: $6e
    ld [hl], h                                    ; $5542: $74
    ld h, l                                       ; $5543: $65
    ld [hl], d                                    ; $5544: $72
    ld l, $20                                     ; $5545: $2e $20
    ld c, [hl]                                    ; $5547: $4e
    ld l, a                                       ; $5548: $6f

jr_018_5549:
    ld l, [hl]                                    ; $5549: $6e
    dec l                                         ; $554a: $2d
    ld l, l                                       ; $554b: $6d
    ld h, l                                       ; $554c: $65
    ld l, l                                       ; $554d: $6d
    ld h, d                                       ; $554e: $62
    ld h, l                                       ; $554f: $65

jr_018_5550:
    ld [hl], d                                    ; $5550: $72
    ld [hl], e                                    ; $5551: $73
    ld bc, $6973                                  ; $5552: $01 $73 $69

jr_018_5555:
    ld h, a                                       ; $5555: $67
    ld l, [hl]                                    ; $5556: $6e
    jr nz, jr_018_55c2                            ; $5557: $20 $69

jr_018_5559:
    ld l, [hl]                                    ; $5559: $6e
    jr nz, jr_018_55c4                            ; $555a: $20 $68

    ld h, l                                       ; $555c: $65
    ld [hl], d                                    ; $555d: $72
    ld h, l                                       ; $555e: $65
    ld l, $02                                     ; $555f: $2e $02
    ld d, h                                       ; $5561: $54
    ld l, b                                       ; $5562: $68
    ld h, l                                       ; $5563: $65
    jr nz, jr_018_55a9                            ; $5564: $20 $43

    ld h, c                                       ; $5566: $61
    ld h, h                                       ; $5567: $64
    ld h, h                                       ; $5568: $64

jr_018_5569:
    ld l, c                                       ; $5569: $69
    ld h, l                                       ; $556a: $65
    jr nz, jr_018_55ba                            ; $556b: $20 $4d

    ld h, c                                       ; $556d: $61
    ld [hl], e                                    ; $556e: $73
    ld [hl], h                                    ; $556f: $74
    ld h, l                                       ; $5570: $65
    ld [hl], d                                    ; $5571: $72
    ld bc, $6874                                  ; $5572: $01 $74 $68
    ld h, l                                       ; $5575: $65
    ld l, [hl]                                    ; $5576: $6e
    jr nz, jr_018_55e0                            ; $5577: $20 $67

    ld l, c                                       ; $5579: $69
    halt                                          ; $557a: $76

jr_018_557b:
    ld h, l                                       ; $557b: $65
    ld [hl], e                                    ; $557c: $73

jr_018_557d:
    jr nz, jr_018_55f3                            ; $557d: $20 $74

    ld l, b                                       ; $557f: $68
    ld h, l                                       ; $5580: $65
    ld l, l                                       ; $5581: $6d
    jr nz, jr_018_55e5                            ; $5582: $20 $61

    ld bc, $7473                                  ; $5584: $01 $73 $74

jr_018_5587:
    ld h, c                                       ; $5587: $61
    ld [hl], d                                    ; $5588: $72
    ld [hl], h                                    ; $5589: $74
    jr nz, jr_018_5600                            ; $558a: $20 $74

    ld l, c                                       ; $558c: $69
    ld l, l                                       ; $558d: $6d
    ld h, l                                       ; $558e: $65
    ld l, $03                                     ; $558f: $2e $03
    nop                                           ; $5591: $00
    ld d, h                                       ; $5592: $54
    ld l, b                                       ; $5593: $68
    ld l, c                                       ; $5594: $69
    ld [hl], e                                    ; $5595: $73

jr_018_5596:
    jr nz, @+$65                                  ; $5596: $20 $63

    ld l, a                                       ; $5598: $6f
    ld [hl], l                                    ; $5599: $75
    ld [hl], d                                    ; $559a: $72
    ld [hl], e                                    ; $559b: $73
    ld h, l                                       ; $559c: $65
    jr nz, @+$6a                                  ; $559d: $20 $68

    ld h, c                                       ; $559f: $61
    ld [hl], e                                    ; $55a0: $73
    ld bc, $616d                                  ; $55a1: $01 $6d $61
    ld l, [hl]                                    ; $55a4: $6e

jr_018_55a5:
    ld a, c                                       ; $55a5: $79
    jr nz, jr_018_560a                            ; $55a6: $20 $62

    ld [hl], l                                    ; $55a8: $75

jr_018_55a9:
    ld l, [hl]                                    ; $55a9: $6e
    ld l, e                                       ; $55aa: $6b

jr_018_55ab:
    ld h, l                                       ; $55ab: $65
    ld [hl], d                                    ; $55ac: $72
    ld [hl], e                                    ; $55ad: $73
    jr nz, jr_018_5611                            ; $55ae: $20 $61

    ld l, [hl]                                    ; $55b0: $6e
    ld h, h                                       ; $55b1: $64
    ld bc, $6177                                  ; $55b2: $01 $77 $61
    ld [hl], h                                    ; $55b5: $74
    ld h, l                                       ; $55b6: $65
    ld [hl], d                                    ; $55b7: $72
    jr nz, jr_018_5622                            ; $55b8: $20 $68

jr_018_55ba:
    ld h, c                                       ; $55ba: $61
    ld a, d                                       ; $55bb: $7a
    ld h, c                                       ; $55bc: $61
    ld [hl], d                                    ; $55bd: $72
    ld h, h                                       ; $55be: $64
    ld [hl], e                                    ; $55bf: $73
    ld l, $02                                     ; $55c0: $2e $02

jr_018_55c2:
    ld b, c                                       ; $55c2: $41
    halt                                          ; $55c3: $76

jr_018_55c4:
    ld l, a                                       ; $55c4: $6f
    ld l, c                                       ; $55c5: $69
    ld h, h                                       ; $55c6: $64
    ld l, c                                       ; $55c7: $69
    ld l, [hl]                                    ; $55c8: $6e
    ld h, a                                       ; $55c9: $67
    jr nz, jr_018_5640                            ; $55ca: $20 $74

    ld l, b                                       ; $55cc: $68
    ld h, l                                       ; $55cd: $65
    ld l, l                                       ; $55ce: $6d
    ld bc, $6163                                  ; $55cf: $01 $63 $61
    ld l, [hl]                                    ; $55d2: $6e
    jr nz, jr_018_5637                            ; $55d3: $20 $62

    ld h, l                                       ; $55d5: $65
    jr nz, @+$76                                  ; $55d6: $20 $74

    ld l, a                                       ; $55d8: $6f
    ld [hl], l                                    ; $55d9: $75
    ld h, a                                       ; $55da: $67
    ld l, b                                       ; $55db: $68
    ld l, $03                                     ; $55dc: $2e $03
    nop                                           ; $55de: $00
    ld c, c                                       ; $55df: $49

jr_018_55e0:
    ld h, [hl]                                    ; $55e0: $66
    jr nz, jr_018_565c                            ; $55e1: $20 $79

    ld l, a                                       ; $55e3: $6f
    ld [hl], l                                    ; $55e4: $75

jr_018_55e5:
    jr nz, jr_018_564b                            ; $55e5: $20 $64

    ld [hl], l                                    ; $55e7: $75
    ld l, [hl]                                    ; $55e8: $6e
    ld l, e                                       ; $55e9: $6b
    jr nz, jr_018_5665                            ; $55ea: $20 $79

    ld l, a                                       ; $55ec: $6f
    ld [hl], l                                    ; $55ed: $75
    ld [hl], d                                    ; $55ee: $72
    ld bc, $6162                                  ; $55ef: $01 $62 $61
    ld l, h                                       ; $55f2: $6c

jr_018_55f3:
    ld l, h                                       ; $55f3: $6c
    inc l                                         ; $55f4: $2c
    jr nz, jr_018_5660                            ; $55f5: $20 $69

    ld [hl], h                                    ; $55f7: $74
    daa                                           ; $55f8: $27
    ld [hl], e                                    ; $55f9: $73
    jr nz, jr_018_565d                            ; $55fa: $20 $61

    jr nz, jr_018_562f                            ; $55fc: $20 $31

    dec l                                         ; $55fe: $2d
    ld [hl], e                                    ; $55ff: $73

jr_018_5600:
    ld [hl], h                                    ; $5600: $74
    ld [hl], d                                    ; $5601: $72
    ld l, a                                       ; $5602: $6f
    ld l, e                                       ; $5603: $6b
    ld h, l                                       ; $5604: $65
    ld bc, $6570                                  ; $5605: $01 $70 $65
    ld l, [hl]                                    ; $5608: $6e
    ld h, c                                       ; $5609: $61

jr_018_560a:
    ld l, h                                       ; $560a: $6c
    ld [hl], h                                    ; $560b: $74
    ld a, c                                       ; $560c: $79
    ld l, $20                                     ; $560d: $2e $20
    ld b, d                                       ; $560f: $42
    ld [hl], l                                    ; $5610: $75

jr_018_5611:
    ld l, [hl]                                    ; $5611: $6e
    ld l, e                                       ; $5612: $6b
    ld h, l                                       ; $5613: $65
    ld [hl], d                                    ; $5614: $72
    ld [hl], e                                    ; $5615: $73
    ld [bc], a                                    ; $5616: $02
    ld h, c                                       ; $5617: $61
    ld [hl], d                                    ; $5618: $72
    ld h, l                                       ; $5619: $65
    jr nz, jr_018_568f                            ; $561a: $20 $73

    ld h, c                                       ; $561c: $61
    ld l, [hl]                                    ; $561d: $6e
    ld h, h                                       ; $561e: $64
    jr nz, @+$76                                  ; $561f: $20 $74

    ld [hl], d                                    ; $5621: $72

jr_018_5622:
    ld h, c                                       ; $5622: $61
    ld [hl], b                                    ; $5623: $70
    ld [hl], e                                    ; $5624: $73
    ld l, $01                                     ; $5625: $2e $01
    ld b, l                                       ; $5627: $45
    ld [hl], e                                    ; $5628: $73
    ld h, e                                       ; $5629: $63
    ld h, c                                       ; $562a: $61
    ld [hl], b                                    ; $562b: $70
    ld l, c                                       ; $562c: $69
    ld l, [hl]                                    ; $562d: $6e
    ld h, a                                       ; $562e: $67

jr_018_562f:
    jr nz, jr_018_5697                            ; $562f: $20 $66

    ld [hl], d                                    ; $5631: $72
    ld l, a                                       ; $5632: $6f
    ld l, l                                       ; $5633: $6d
    ld bc, $6874                                  ; $5634: $01 $74 $68

jr_018_5637:
    ld h, l                                       ; $5637: $65
    ld l, l                                       ; $5638: $6d
    jr nz, @+$6b                                  ; $5639: $20 $69

    ld [hl], e                                    ; $563b: $73
    jr nz, jr_018_56b2                            ; $563c: $20 $74

    ld l, a                                       ; $563e: $6f
    ld [hl], l                                    ; $563f: $75

jr_018_5640:
    ld h, a                                       ; $5640: $67
    ld l, b                                       ; $5641: $68
    ld l, $03                                     ; $5642: $2e $03
    nop                                           ; $5644: $00
    ld c, c                                       ; $5645: $49
    jr nz, jr_018_56bf                            ; $5646: $20 $77

    ld h, c                                       ; $5648: $61
    ld l, [hl]                                    ; $5649: $6e
    ld [hl], h                                    ; $564a: $74

jr_018_564b:
    jr nz, jr_018_56c1                            ; $564b: $20 $74

    ld l, a                                       ; $564d: $6f
    jr nz, @+$6b                                  ; $564e: $20 $69

    ld l, [hl]                                    ; $5650: $6e
    ld h, e                                       ; $5651: $63
    ld [hl], d                                    ; $5652: $72
    ld h, l                                       ; $5653: $65
    ld h, c                                       ; $5654: $61
    ld [hl], e                                    ; $5655: $73
    ld h, l                                       ; $5656: $65
    ld bc, $796d                                  ; $5657: $01 $6d $79
    jr nz, jr_018_56c0                            ; $565a: $20 $64

jr_018_565c:
    ld [hl], d                                    ; $565c: $72

jr_018_565d:
    ld l, c                                       ; $565d: $69
    halt                                          ; $565e: $76
    ld h, l                                       ; $565f: $65

jr_018_5660:
    jr nz, jr_018_56c4                            ; $5660: $20 $62

    ld a, c                                       ; $5662: $79
    jr nz, jr_018_56d9                            ; $5663: $20 $74

jr_018_5665:
    ld [hl], a                                    ; $5665: $77
    ld h, l                                       ; $5666: $65
    ld l, [hl]                                    ; $5667: $6e
    ld [hl], h                                    ; $5668: $74
    ld a, c                                       ; $5669: $79
    ld bc, $6179                                  ; $566a: $01 $79 $61
    ld [hl], d                                    ; $566d: $72
    ld h, h                                       ; $566e: $64
    ld [hl], e                                    ; $566f: $73
    ld l, $02                                     ; $5670: $2e $02
    ld c, c                                       ; $5672: $49
    ld h, [hl]                                    ; $5673: $66
    jr nz, jr_018_56bf                            ; $5674: $20 $49

    jr nz, jr_018_56dc                            ; $5676: $20 $64

    ld l, a                                       ; $5678: $6f
    inc l                                         ; $5679: $2c
    jr nz, jr_018_56c5                            ; $567a: $20 $49

    jr nz, jr_018_56e1                            ; $567c: $20 $63

    ld h, c                                       ; $567e: $61
    ld l, [hl]                                    ; $567f: $6e
    jr nz, jr_018_56f7                            ; $5680: $20 $75

    ld [hl], e                                    ; $5682: $73
    ld h, l                                       ; $5683: $65
    jr nz, @+$63                                  ; $5684: $20 $61

    ld bc, $6873                                  ; $5686: $01 $73 $68
    ld l, a                                       ; $5689: $6f
    ld [hl], d                                    ; $568a: $72
    ld [hl], h                                    ; $568b: $74
    jr nz, jr_018_56f7                            ; $568c: $20 $69

    ld [hl], d                                    ; $568e: $72

jr_018_568f:
    ld l, a                                       ; $568f: $6f
    ld l, [hl]                                    ; $5690: $6e
    jr nz, jr_018_5702                            ; $5691: $20 $6f

    ld l, [hl]                                    ; $5693: $6e
    jr nz, jr_018_5703                            ; $5694: $20 $6d

    ld a, c                                       ; $5696: $79

jr_018_5697:
    ld bc, $6573                                  ; $5697: $01 $73 $65
    ld h, e                                       ; $569a: $63
    ld l, a                                       ; $569b: $6f
    ld l, [hl]                                    ; $569c: $6e
    ld h, h                                       ; $569d: $64
    jr nz, jr_018_5713                            ; $569e: $20 $73

    ld l, b                                       ; $56a0: $68
    ld l, a                                       ; $56a1: $6f
    ld [hl], h                                    ; $56a2: $74
    ld hl, $0003                                  ; $56a3: $21 $03 $00
    ld b, c                                       ; $56a6: $41
    ld [hl], b                                    ; $56a7: $70
    ld [hl], b                                    ; $56a8: $70
    ld [hl], d                                    ; $56a9: $72
    ld l, a                                       ; $56aa: $6f
    ld h, c                                       ; $56ab: $61
    ld h, e                                       ; $56ac: $63
    ld l, b                                       ; $56ad: $68
    jr nz, jr_018_5723                            ; $56ae: $20 $73

    ld l, b                                       ; $56b0: $68
    ld l, a                                       ; $56b1: $6f

jr_018_56b2:
    ld [hl], h                                    ; $56b2: $74
    ld [hl], e                                    ; $56b3: $73
    jr nz, jr_018_5717                            ; $56b4: $20 $61

    ld [hl], d                                    ; $56b6: $72
    ld h, l                                       ; $56b7: $65
    ld bc, $6f6d                                  ; $56b8: $01 $6d $6f
    ld [hl], d                                    ; $56bb: $72
    ld h, l                                       ; $56bc: $65
    jr nz, jr_018_5728                            ; $56bd: $20 $69

jr_018_56bf:
    ld l, l                                       ; $56bf: $6d

jr_018_56c0:
    ld [hl], b                                    ; $56c0: $70

jr_018_56c1:
    ld l, a                                       ; $56c1: $6f
    ld [hl], d                                    ; $56c2: $72
    ld [hl], h                                    ; $56c3: $74

jr_018_56c4:
    ld h, c                                       ; $56c4: $61

jr_018_56c5:
    ld l, [hl]                                    ; $56c5: $6e
    ld [hl], h                                    ; $56c6: $74
    ld bc, $6874                                  ; $56c7: $01 $74 $68
    ld h, c                                       ; $56ca: $61
    ld l, [hl]                                    ; $56cb: $6e
    jr nz, jr_018_5742                            ; $56cc: $20 $74

    ld h, l                                       ; $56ce: $65
    ld h, l                                       ; $56cf: $65
    jr nz, jr_018_5741                            ; $56d0: $20 $6f

    ld [hl], d                                    ; $56d2: $72
    jr nz, jr_018_573e                            ; $56d3: $20 $69

    ld [hl], d                                    ; $56d5: $72
    ld l, a                                       ; $56d6: $6f
    ld l, [hl]                                    ; $56d7: $6e
    ld [bc], a                                    ; $56d8: $02

jr_018_56d9:
    ld [hl], e                                    ; $56d9: $73
    ld l, b                                       ; $56da: $68
    ld l, a                                       ; $56db: $6f

jr_018_56dc:
    ld [hl], h                                    ; $56dc: $74
    ld [hl], e                                    ; $56dd: $73
    ld l, $20                                     ; $56de: $2e $20
    ld c, c                                       ; $56e0: $49

jr_018_56e1:
    ld h, [hl]                                    ; $56e1: $66
    jr nz, @+$7b                                  ; $56e2: $20 $79

    ld l, a                                       ; $56e4: $6f
    ld [hl], l                                    ; $56e5: $75
    jr nz, @+$6f                                  ; $56e6: $20 $6d

    ld l, c                                       ; $56e8: $69
    ld [hl], e                                    ; $56e9: $73
    ld [hl], e                                    ; $56ea: $73
    ld bc, $6874                                  ; $56eb: $01 $74 $68
    ld h, l                                       ; $56ee: $65
    jr nz, jr_018_5758                            ; $56ef: $20 $67

    ld [hl], d                                    ; $56f1: $72
    ld h, l                                       ; $56f2: $65
    ld h, l                                       ; $56f3: $65
    ld l, [hl]                                    ; $56f4: $6e
    jr nz, jr_018_5766                            ; $56f5: $20 $6f

jr_018_56f7:
    ld l, [hl]                                    ; $56f7: $6e
    jr nz, jr_018_576e                            ; $56f8: $20 $74

    ld l, b                                       ; $56fa: $68
    ld h, l                                       ; $56fb: $65
    ld bc, $6e32                                  ; $56fc: $01 $32 $6e
    ld h, h                                       ; $56ff: $64
    jr nz, jr_018_5775                            ; $5700: $20 $73

jr_018_5702:
    ld [hl], h                                    ; $5702: $74

jr_018_5703:
    ld [hl], d                                    ; $5703: $72
    ld l, a                                       ; $5704: $6f
    ld l, e                                       ; $5705: $6b
    ld h, l                                       ; $5706: $65
    inc l                                         ; $5707: $2c
    jr nz, @+$71                                  ; $5708: $20 $6f

    ld l, [hl]                                    ; $570a: $6e
    ld l, h                                       ; $570b: $6c
    ld a, c                                       ; $570c: $79
    ld [bc], a                                    ; $570d: $02
    ld h, c                                       ; $570e: $61
    jr nz, jr_018_5778                            ; $570f: $20 $67

    ld l, a                                       ; $5711: $6f
    ld l, a                                       ; $5712: $6f

jr_018_5713:
    ld h, h                                       ; $5713: $64
    jr nz, @+$63                                  ; $5714: $20 $61

    ld [hl], b                                    ; $5716: $70

jr_018_5717:
    ld [hl], b                                    ; $5717: $70
    ld [hl], d                                    ; $5718: $72
    ld l, a                                       ; $5719: $6f
    ld h, c                                       ; $571a: $61
    ld h, e                                       ; $571b: $63
    ld l, b                                       ; $571c: $68
    ld bc, $6163                                  ; $571d: $01 $63 $61
    ld l, [hl]                                    ; $5720: $6e
    jr nz, jr_018_5796                            ; $5721: $20 $73

jr_018_5723:
    ld h, c                                       ; $5723: $61
    halt                                          ; $5724: $76
    ld h, l                                       ; $5725: $65
    jr nz, jr_018_5798                            ; $5726: $20 $70

jr_018_5728:
    ld h, c                                       ; $5728: $61
    ld [hl], d                                    ; $5729: $72
    ld l, $03                                     ; $572a: $2e $03
    nop                                           ; $572c: $00
    ld d, h                                       ; $572d: $54
    ld l, a                                       ; $572e: $6f
    jr nz, jr_018_5792                            ; $572f: $20 $61

    halt                                          ; $5731: $76
    ld l, a                                       ; $5732: $6f
    ld l, c                                       ; $5733: $69
    ld h, h                                       ; $5734: $64
    jr nz, jr_018_579f                            ; $5735: $20 $68

    ld h, c                                       ; $5737: $61
    ld a, d                                       ; $5738: $7a
    ld h, c                                       ; $5739: $61
    ld [hl], d                                    ; $573a: $72
    ld h, h                                       ; $573b: $64
    ld [hl], e                                    ; $573c: $73
    inc l                                         ; $573d: $2c

jr_018_573e:
    ld bc, $6f64                                  ; $573e: $01 $64 $6f

jr_018_5741:
    ld l, [hl]                                    ; $5741: $6e

jr_018_5742:
    daa                                           ; $5742: $27
    ld [hl], h                                    ; $5743: $74
    jr nz, jr_018_57bb                            ; $5744: $20 $75

    ld [hl], e                                    ; $5746: $73
    ld h, l                                       ; $5747: $65
    jr nz, @+$63                                  ; $5748: $20 $61

    jr nz, jr_018_57b0                            ; $574a: $20 $64

    ld [hl], d                                    ; $574c: $72
    ld l, c                                       ; $574d: $69
    halt                                          ; $574e: $76
    ld h, l                                       ; $574f: $65
    ld [hl], d                                    ; $5750: $72
    ld bc, $6e6f                                  ; $5751: $01 $6f $6e
    jr nz, @+$76                                  ; $5754: $20 $74

    ld l, b                                       ; $5756: $68
    ld h, l                                       ; $5757: $65

jr_018_5758:
    jr nz, @+$76                                  ; $5758: $20 $74

    ld h, l                                       ; $575a: $65
    ld h, l                                       ; $575b: $65
    jr nz, jr_018_57d1                            ; $575c: $20 $73

    ld l, b                                       ; $575e: $68
    ld l, a                                       ; $575f: $6f
    ld [hl], h                                    ; $5760: $74
    ld l, $03                                     ; $5761: $2e $03
    nop                                           ; $5763: $00
    ld l, $2e                                     ; $5764: $2e $2e

jr_018_5766:
    ld l, $6c                                     ; $5766: $2e $6c
    ld l, a                                       ; $5768: $6f
    ld [hl], a                                    ; $5769: $77
    jr nz, jr_018_57e0                            ; $576a: $20 $74

    ld [hl], d                                    ; $576c: $72
    ld h, c                                       ; $576d: $61

jr_018_576e:
    ld l, d                                       ; $576e: $6a
    ld h, l                                       ; $576f: $65
    ld h, e                                       ; $5770: $63
    ld [hl], h                                    ; $5771: $74
    ld l, a                                       ; $5772: $6f
    ld [hl], d                                    ; $5773: $72
    ld a, c                                       ; $5774: $79

jr_018_5775:
    ld bc, $6e69                                  ; $5775: $01 $69 $6e

jr_018_5778:
    jr nz, @+$6a                                  ; $5778: $20 $68

    ld h, l                                       ; $577a: $65
    ld h, c                                       ; $577b: $61
    ld h, h                                       ; $577c: $64
    ld [hl], a                                    ; $577d: $77
    ld l, c                                       ; $577e: $69
    ld l, [hl]                                    ; $577f: $6e
    ld h, h                                       ; $5780: $64
    ld [hl], e                                    ; $5781: $73
    inc l                                         ; $5782: $2c
    ld bc, $6968                                  ; $5783: $01 $68 $69
    ld h, a                                       ; $5786: $67
    ld l, b                                       ; $5787: $68
    jr nz, @+$76                                  ; $5788: $20 $74

    ld [hl], d                                    ; $578a: $72
    ld h, c                                       ; $578b: $61
    ld l, d                                       ; $578c: $6a
    ld h, l                                       ; $578d: $65
    ld h, e                                       ; $578e: $63
    ld [hl], h                                    ; $578f: $74
    ld l, a                                       ; $5790: $6f
    ld [hl], d                                    ; $5791: $72

jr_018_5792:
    ld a, c                                       ; $5792: $79
    ld [bc], a                                    ; $5793: $02
    ld l, c                                       ; $5794: $69
    ld l, [hl]                                    ; $5795: $6e

jr_018_5796:
    jr nz, jr_018_580c                            ; $5796: $20 $74

jr_018_5798:
    ld h, c                                       ; $5798: $61
    ld l, c                                       ; $5799: $69
    ld l, h                                       ; $579a: $6c
    ld [hl], a                                    ; $579b: $77
    ld l, c                                       ; $579c: $69
    ld l, [hl]                                    ; $579d: $6e
    ld h, h                                       ; $579e: $64

jr_018_579f:
    ld [hl], e                                    ; $579f: $73
    ld l, $2e                                     ; $57a0: $2e $2e
    ld l, $01                                     ; $57a2: $2e $01
    ld l, $2e                                     ; $57a4: $2e $2e
    ld l, $6c                                     ; $57a6: $2e $6c
    ld l, a                                       ; $57a8: $6f
    ld [hl], a                                    ; $57a9: $77
    jr nz, jr_018_5820                            ; $57aa: $20 $74

    ld [hl], d                                    ; $57ac: $72
    ld h, c                                       ; $57ad: $61
    ld l, d                                       ; $57ae: $6a
    ld h, l                                       ; $57af: $65

jr_018_57b0:
    ld h, e                                       ; $57b0: $63
    ld [hl], h                                    ; $57b1: $74
    ld l, a                                       ; $57b2: $6f
    ld [hl], d                                    ; $57b3: $72
    ld a, c                                       ; $57b4: $79
    ld l, $2e                                     ; $57b5: $2e $2e
    ld l, $03                                     ; $57b7: $2e $03
    nop                                           ; $57b9: $00
    ld b, l                                       ; $57ba: $45

jr_018_57bb:
    halt                                          ; $57bb: $76
    ld h, l                                       ; $57bc: $65
    ld [hl], d                                    ; $57bd: $72
    ld a, c                                       ; $57be: $79
    ld l, a                                       ; $57bf: $6f
    ld l, [hl]                                    ; $57c0: $6e
    ld h, l                                       ; $57c1: $65
    jr nz, jr_018_5838                            ; $57c2: $20 $74

    ld l, b                                       ; $57c4: $68
    ld l, c                                       ; $57c5: $69
    ld l, [hl]                                    ; $57c6: $6e
    ld l, e                                       ; $57c7: $6b
    ld [hl], e                                    ; $57c8: $73
    jr nz, jr_018_583e                            ; $57c9: $20 $73

    ld l, a                                       ; $57cb: $6f
    ld bc, $756d                                  ; $57cc: $01 $6d $75
    ld h, e                                       ; $57cf: $63
    ld l, b                                       ; $57d0: $68

jr_018_57d1:
    jr nz, jr_018_5835                            ; $57d1: $20 $62

    ld h, l                                       ; $57d3: $65
    ld h, [hl]                                    ; $57d4: $66
    ld l, a                                       ; $57d5: $6f
    ld [hl], d                                    ; $57d6: $72
    ld h, l                                       ; $57d7: $65
    jr nz, @+$72                                  ; $57d8: $20 $70

    ld l, h                                       ; $57da: $6c
    ld h, c                                       ; $57db: $61
    ld a, c                                       ; $57dc: $79
    ld l, c                                       ; $57dd: $69
    ld l, [hl]                                    ; $57de: $6e
    ld h, a                                       ; $57df: $67

jr_018_57e0:
    inc l                                         ; $57e0: $2c
    ld bc, $6874                                  ; $57e1: $01 $74 $68
    ld h, l                                       ; $57e4: $65
    ld a, c                                       ; $57e5: $79
    jr nz, jr_018_584b                            ; $57e6: $20 $63

    ld l, b                                       ; $57e8: $68
    ld l, a                                       ; $57e9: $6f
    ld l, e                                       ; $57ea: $6b
    ld h, l                                       ; $57eb: $65
    ld hl, $0003                                  ; $57ec: $21 $03 $00
    ld b, c                                       ; $57ef: $41
    ld [hl], d                                    ; $57f0: $72
    ld h, l                                       ; $57f1: $65
    ld l, [hl]                                    ; $57f2: $6e
    daa                                           ; $57f3: $27
    ld [hl], h                                    ; $57f4: $74
    jr nz, jr_018_586b                            ; $57f5: $20 $74

    ld l, b                                       ; $57f7: $68
    ld h, l                                       ; $57f8: $65
    ld [hl], d                                    ; $57f9: $72
    ld h, l                                       ; $57fa: $65
    jr nz, @+$63                                  ; $57fb: $20 $61

    jr nz, jr_018_586b                            ; $57fd: $20 $6c

    ld l, a                                       ; $57ff: $6f
    ld [hl], h                                    ; $5800: $74
    ld bc, $666f                                  ; $5801: $01 $6f $66
    jr nz, jr_018_586d                            ; $5804: $20 $67

    ld l, a                                       ; $5806: $6f
    ld l, h                                       ; $5807: $6c
    ld h, [hl]                                    ; $5808: $66
    ld h, l                                       ; $5809: $65
    ld [hl], d                                    ; $580a: $72
    ld [hl], e                                    ; $580b: $73

jr_018_580c:
    jr nz, jr_018_5885                            ; $580c: $20 $77

    ld h, c                                       ; $580e: $61
    ld l, c                                       ; $580f: $69
    ld [hl], h                                    ; $5810: $74
    ld l, c                                       ; $5811: $69
    ld l, [hl]                                    ; $5812: $6e
    ld h, a                                       ; $5813: $67
    ld bc, $6f74                                  ; $5814: $01 $74 $6f
    jr nz, @+$75                                  ; $5817: $20 $73

    ld [hl], h                                    ; $5819: $74
    ld h, c                                       ; $581a: $61
    ld [hl], d                                    ; $581b: $72
    ld [hl], h                                    ; $581c: $74
    ccf                                           ; $581d: $3f
    inc bc                                        ; $581e: $03
    nop                                           ; $581f: $00

jr_018_5820:
    ld e, c                                       ; $5820: $59
    ld l, a                                       ; $5821: $6f
    ld [hl], l                                    ; $5822: $75
    jr nz, jr_018_5895                            ; $5823: $20 $70

    ld l, h                                       ; $5825: $6c
    ld h, c                                       ; $5826: $61
    ld h, e                                       ; $5827: $63
    ld h, l                                       ; $5828: $65
    ld h, h                                       ; $5829: $64
    jr nz, jr_018_5895                            ; $582a: $20 $69

    ld l, [hl]                                    ; $582c: $6e
    jr nz, @+$76                                  ; $582d: $20 $74

    ld l, b                                       ; $582f: $68
    ld h, l                                       ; $5830: $65
    ld bc, $6c43                                  ; $5831: $01 $43 $6c
    ld [hl], l                                    ; $5834: $75

jr_018_5835:
    ld h, d                                       ; $5835: $62
    jr nz, @+$56                                  ; $5836: $20 $54

jr_018_5838:
    ld l, a                                       ; $5838: $6f
    ld [hl], l                                    ; $5839: $75
    ld [hl], d                                    ; $583a: $72
    ld l, [hl]                                    ; $583b: $6e
    ld h, c                                       ; $583c: $61
    ld l, l                                       ; $583d: $6d

jr_018_583e:
    ld h, l                                       ; $583e: $65
    ld l, [hl]                                    ; $583f: $6e
    ld [hl], h                                    ; $5840: $74
    inc l                                         ; $5841: $2c
    ld bc, $2107                                  ; $5842: $01 $07 $21
    ld [bc], a                                    ; $5845: $02
    ld e, c                                       ; $5846: $59
    ld l, a                                       ; $5847: $6f
    ld [hl], l                                    ; $5848: $75
    jr nz, jr_018_58b3                            ; $5849: $20 $68

jr_018_584b:
    ld h, c                                       ; $584b: $61
    halt                                          ; $584c: $76
    ld h, l                                       ; $584d: $65
    ld l, [hl]                                    ; $584e: $6e
    daa                                           ; $584f: $27
    ld [hl], h                                    ; $5850: $74
    jr nz, jr_018_58b8                            ; $5851: $20 $65

    halt                                          ; $5853: $76
    ld h, l                                       ; $5854: $65
    ld l, [hl]                                    ; $5855: $6e
    ld bc, $6562                                  ; $5856: $01 $62 $65
    ld h, l                                       ; $5859: $65
    ld l, [hl]                                    ; $585a: $6e
    jr nz, jr_018_58be                            ; $585b: $20 $61

    jr nz, jr_018_58cc                            ; $585d: $20 $6d

    ld h, l                                       ; $585f: $65
    ld l, l                                       ; $5860: $6d
    ld h, d                                       ; $5861: $62
    ld h, l                                       ; $5862: $65
    ld [hl], d                                    ; $5863: $72
    ld bc, $6f6c                                  ; $5864: $01 $6c $6f
    ld l, [hl]                                    ; $5867: $6e
    ld h, a                                       ; $5868: $67
    ld l, $20                                     ; $5869: $2e $20

jr_018_586b:
    ld c, c                                       ; $586b: $49
    ld l, l                                       ; $586c: $6d

jr_018_586d:
    ld [hl], b                                    ; $586d: $70
    ld [hl], d                                    ; $586e: $72
    ld h, l                                       ; $586f: $65
    ld [hl], e                                    ; $5870: $73
    ld [hl], e                                    ; $5871: $73
    ld l, c                                       ; $5872: $69
    halt                                          ; $5873: $76
    ld h, l                                       ; $5874: $65
    ld hl, $0003                                  ; $5875: $21 $03 $00
    ld d, e                                       ; $5878: $53
    ld h, c                                       ; $5879: $61
    ld a, c                                       ; $587a: $79
    inc l                                         ; $587b: $2c
    jr nz, jr_018_58df                            ; $587c: $20 $61

    ld [hl], d                                    ; $587e: $72
    ld h, l                                       ; $587f: $65
    ld l, [hl]                                    ; $5880: $6e
    daa                                           ; $5881: $27
    ld [hl], h                                    ; $5882: $74
    jr nz, @+$7b                                  ; $5883: $20 $79

jr_018_5885:
    ld l, a                                       ; $5885: $6f
    ld [hl], l                                    ; $5886: $75
    inc l                                         ; $5887: $2c
    ld bc, $2c07                                  ; $5888: $01 $07 $2c
    jr nz, jr_018_5901                            ; $588b: $20 $74

    ld l, b                                       ; $588d: $68
    ld h, l                                       ; $588e: $65
    ld bc, $656e                                  ; $588f: $01 $6e $65
    ld [hl], a                                    ; $5892: $77
    jr nz, jr_018_58d8                            ; $5893: $20 $43

jr_018_5895:
    ld l, h                                       ; $5895: $6c
    ld [hl], l                                    ; $5896: $75
    ld h, d                                       ; $5897: $62
    jr nz, jr_018_58dd                            ; $5898: $20 $43

    ld l, b                                       ; $589a: $68
    ld h, c                                       ; $589b: $61
    ld l, l                                       ; $589c: $6d
    ld [hl], b                                    ; $589d: $70
    ccf                                           ; $589e: $3f
    ld [bc], a                                    ; $589f: $02
    ld c, c                                       ; $58a0: $49
    ld [hl], h                                    ; $58a1: $74
    jr nz, jr_018_5911                            ; $58a2: $20 $6d

    ld [hl], l                                    ; $58a4: $75
    ld [hl], e                                    ; $58a5: $73
    ld [hl], h                                    ; $58a6: $74
    jr nz, jr_018_590b                            ; $58a7: $20 $62

    ld h, l                                       ; $58a9: $65
    jr nz, jr_018_5913                            ; $58aa: $20 $67

    ld [hl], d                                    ; $58ac: $72
    ld h, l                                       ; $58ad: $65
    ld h, c                                       ; $58ae: $61
    ld [hl], h                                    ; $58af: $74
    ld bc, $6f74                                  ; $58b0: $01 $74 $6f

jr_018_58b3:
    jr nz, jr_018_5917                            ; $58b3: $20 $62

    ld h, l                                       ; $58b5: $65
    jr nz, jr_018_592c                            ; $58b6: $20 $74

jr_018_58b8:
    ld l, b                                       ; $58b8: $68
    ld h, l                                       ; $58b9: $65
    jr nz, jr_018_58ff                            ; $58ba: $20 $43

    ld l, b                                       ; $58bc: $68
    ld h, c                                       ; $58bd: $61

jr_018_58be:
    ld l, l                                       ; $58be: $6d
    ld [hl], b                                    ; $58bf: $70
    ld hl, $0003                                  ; $58c0: $21 $03 $00
    ld c, l                                       ; $58c3: $4d
    ld l, a                                       ; $58c4: $6f
    ld [hl], e                                    ; $58c5: $73
    ld [hl], h                                    ; $58c6: $74
    jr nz, @+$72                                  ; $58c7: $20 $70

    ld h, l                                       ; $58c9: $65
    ld l, a                                       ; $58ca: $6f
    ld [hl], b                                    ; $58cb: $70

jr_018_58cc:
    ld l, h                                       ; $58cc: $6c
    ld h, l                                       ; $58cd: $65
    jr nz, jr_018_5937                            ; $58ce: $20 $67

    ld h, l                                       ; $58d0: $65
    ld [hl], h                                    ; $58d1: $74
    ld bc, $656e                                  ; $58d2: $01 $6e $65
    ld [hl], d                                    ; $58d5: $72
    halt                                          ; $58d6: $76
    ld l, a                                       ; $58d7: $6f

jr_018_58d8:
    ld [hl], l                                    ; $58d8: $75
    ld [hl], e                                    ; $58d9: $73
    jr nz, jr_018_5945                            ; $58da: $20 $69

    ld l, [hl]                                    ; $58dc: $6e

jr_018_58dd:
    jr nz, jr_018_5953                            ; $58dd: $20 $74

jr_018_58df:
    ld l, b                                       ; $58df: $68
    ld h, l                                       ; $58e0: $65
    ld l, c                                       ; $58e1: $69
    ld [hl], d                                    ; $58e2: $72
    ld bc, $6966                                  ; $58e3: $01 $66 $69
    ld [hl], d                                    ; $58e6: $72
    ld [hl], e                                    ; $58e7: $73
    ld [hl], h                                    ; $58e8: $74
    jr nz, jr_018_593f                            ; $58e9: $20 $54

    ld l, a                                       ; $58eb: $6f
    ld [hl], l                                    ; $58ec: $75
    ld [hl], d                                    ; $58ed: $72
    ld l, [hl]                                    ; $58ee: $6e
    ld h, c                                       ; $58ef: $61
    ld l, l                                       ; $58f0: $6d
    ld h, l                                       ; $58f1: $65
    ld l, [hl]                                    ; $58f2: $6e
    ld [hl], h                                    ; $58f3: $74
    inc l                                         ; $58f4: $2c
    ld [bc], a                                    ; $58f5: $02
    ld h, d                                       ; $58f6: $62
    ld [hl], l                                    ; $58f7: $75
    ld [hl], h                                    ; $58f8: $74
    jr nz, jr_018_5974                            ; $58f9: $20 $79

    ld l, a                                       ; $58fb: $6f
    ld [hl], l                                    ; $58fc: $75
    jr nz, jr_018_596f                            ; $58fd: $20 $70

jr_018_58ff:
    ld l, h                                       ; $58ff: $6c
    ld h, c                                       ; $5900: $61

jr_018_5901:
    ld h, e                                       ; $5901: $63
    ld h, l                                       ; $5902: $65
    ld h, h                                       ; $5903: $64
    inc l                                         ; $5904: $2c
    ld bc, $2107                                  ; $5905: $01 $07 $21
    jr nz, jr_018_595e                            ; $5908: $20 $54

    ld l, b                                       ; $590a: $68

jr_018_590b:
    ld h, c                                       ; $590b: $61
    ld [hl], h                                    ; $590c: $74
    ld bc, $6174                                  ; $590d: $01 $74 $61
    ld l, e                                       ; $5910: $6b

jr_018_5911:
    ld h, l                                       ; $5911: $65
    ld [hl], e                                    ; $5912: $73

jr_018_5913:
    jr nz, @+$74                                  ; $5913: $20 $72

    ld h, l                                       ; $5915: $65
    ld h, c                                       ; $5916: $61

jr_018_5917:
    ld l, h                                       ; $5917: $6c
    jr nz, @+$76                                  ; $5918: $20 $74

    ld h, c                                       ; $591a: $61
    ld l, h                                       ; $591b: $6c
    ld h, l                                       ; $591c: $65
    ld l, [hl]                                    ; $591d: $6e
    ld [hl], h                                    ; $591e: $74
    ld hl, $0003                                  ; $591f: $21 $03 $00
    ld c, l                                       ; $5922: $4d
    ld l, a                                       ; $5923: $6f
    ld [hl], e                                    ; $5924: $73
    ld [hl], h                                    ; $5925: $74
    jr nz, jr_018_5998                            ; $5926: $20 $70

    ld h, l                                       ; $5928: $65
    ld l, a                                       ; $5929: $6f
    ld [hl], b                                    ; $592a: $70
    ld l, h                                       ; $592b: $6c

jr_018_592c:
    ld h, l                                       ; $592c: $65
    jr nz, jr_018_5992                            ; $592d: $20 $63

    ld l, b                                       ; $592f: $68
    ld l, a                                       ; $5930: $6f
    ld l, e                                       ; $5931: $6b
    ld h, l                                       ; $5932: $65
    ld bc, $7266                                  ; $5933: $01 $66 $72
    ld l, a                                       ; $5936: $6f

jr_018_5937:
    ld l, l                                       ; $5937: $6d
    jr nz, jr_018_59ae                            ; $5938: $20 $74

    ld l, b                                       ; $593a: $68
    ld h, l                                       ; $593b: $65
    jr nz, jr_018_59ae                            ; $593c: $20 $70

    ld [hl], d                                    ; $593e: $72

jr_018_593f:
    ld h, l                                       ; $593f: $65
    ld [hl], e                                    ; $5940: $73
    ld [hl], e                                    ; $5941: $73
    ld [hl], l                                    ; $5942: $75
    ld [hl], d                                    ; $5943: $72
    ld h, l                                       ; $5944: $65

jr_018_5945:
    jr nz, jr_018_59b6                            ; $5945: $20 $6f

    ld h, [hl]                                    ; $5947: $66
    ld bc, $6c43                                  ; $5948: $01 $43 $6c
    ld [hl], l                                    ; $594b: $75
    ld h, d                                       ; $594c: $62
    jr nz, jr_018_59a3                            ; $594d: $20 $54

    ld l, a                                       ; $594f: $6f
    ld [hl], l                                    ; $5950: $75
    ld [hl], d                                    ; $5951: $72
    ld l, [hl]                                    ; $5952: $6e

jr_018_5953:
    ld h, c                                       ; $5953: $61
    ld l, l                                       ; $5954: $6d
    ld h, l                                       ; $5955: $65
    ld l, [hl]                                    ; $5956: $6e
    ld [hl], h                                    ; $5957: $74
    ld [hl], e                                    ; $5958: $73
    inc l                                         ; $5959: $2c
    ld [bc], a                                    ; $595a: $02
    ld h, d                                       ; $595b: $62
    ld [hl], l                                    ; $595c: $75
    ld [hl], h                                    ; $595d: $74

jr_018_595e:
    jr nz, jr_018_59d9                            ; $595e: $20 $79

    ld l, a                                       ; $5960: $6f
    ld [hl], l                                    ; $5961: $75
    jr nz, jr_018_59db                            ; $5962: $20 $77

    ld l, a                                       ; $5964: $6f
    ld l, [hl]                                    ; $5965: $6e
    inc l                                         ; $5966: $2c
    ld bc, $2107                                  ; $5967: $01 $07 $21
    jr nz, jr_018_59c5                            ; $596a: $20 $59

    ld l, a                                       ; $596c: $6f
    ld [hl], l                                    ; $596d: $75
    daa                                           ; $596e: $27

jr_018_596f:
    ld [hl], d                                    ; $596f: $72
    ld h, l                                       ; $5970: $65
    ld bc, $2061                                  ; $5971: $01 $61 $20

jr_018_5974:
    ld h, a                                       ; $5974: $67
    ld l, a                                       ; $5975: $6f
    ld l, h                                       ; $5976: $6c
    ld h, [hl]                                    ; $5977: $66
    jr nz, @+$6f                                  ; $5978: $20 $6d

    ld h, c                                       ; $597a: $61
    ld [hl], e                                    ; $597b: $73
    ld [hl], h                                    ; $597c: $74
    ld h, l                                       ; $597d: $65
    ld [hl], d                                    ; $597e: $72
    ld hl, $0003                                  ; $597f: $21 $03 $00
    ld d, b                                       ; $5982: $50
    ld h, c                                       ; $5983: $61
    ld l, h                                       ; $5984: $6c
    ld l, l                                       ; $5985: $6d
    jr nz, jr_018_59cb                            ; $5986: $20 $43

    ld l, h                                       ; $5988: $6c
    ld [hl], l                                    ; $5989: $75
    ld h, d                                       ; $598a: $62
    daa                                           ; $598b: $27
    ld [hl], e                                    ; $598c: $73
    jr nz, @+$76                                  ; $598d: $20 $74

    ld [hl], d                                    ; $598f: $72
    ld h, l                                       ; $5990: $65
    ld h, l                                       ; $5991: $65

jr_018_5992:
    ld [hl], e                                    ; $5992: $73
    ld bc, $616d                                  ; $5993: $01 $6d $61
    ld l, e                                       ; $5996: $6b
    ld h, l                                       ; $5997: $65

jr_018_5998:
    jr nz, @+$6b                                  ; $5998: $20 $69

    ld [hl], h                                    ; $599a: $74
    jr nz, jr_018_5a11                            ; $599b: $20 $74

    ld l, a                                       ; $599d: $6f
    ld [hl], l                                    ; $599e: $75
    ld h, a                                       ; $599f: $67
    ld l, b                                       ; $59a0: $68
    jr nz, jr_018_5a17                            ; $59a1: $20 $74

jr_018_59a3:
    ld l, a                                       ; $59a3: $6f
    ld bc, $7461                                  ; $59a4: $01 $61 $74
    ld [hl], h                                    ; $59a7: $74
    ld h, c                                       ; $59a8: $61
    ld h, e                                       ; $59a9: $63
    ld l, e                                       ; $59aa: $6b
    jr nz, jr_018_5a21                            ; $59ab: $20 $74

    ld l, b                                       ; $59ad: $68

jr_018_59ae:
    ld h, l                                       ; $59ae: $65
    jr nz, jr_018_5a14                            ; $59af: $20 $63

    ld l, a                                       ; $59b1: $6f
    ld [hl], l                                    ; $59b2: $75
    ld [hl], d                                    ; $59b3: $72
    ld [hl], e                                    ; $59b4: $73
    ld h, l                                       ; $59b5: $65

jr_018_59b6:
    ld l, $03                                     ; $59b6: $2e $03
    nop                                           ; $59b8: $00
    ld d, h                                       ; $59b9: $54
    ld l, b                                       ; $59ba: $68
    ld h, l                                       ; $59bb: $65
    jr nz, @+$52                                  ; $59bc: $20 $50

    ld h, c                                       ; $59be: $61
    ld l, h                                       ; $59bf: $6c
    ld l, l                                       ; $59c0: $6d
    jr nz, jr_018_5a06                            ; $59c1: $20 $43

    ld l, h                                       ; $59c3: $6c
    ld [hl], l                                    ; $59c4: $75

jr_018_59c5:
    ld h, d                                       ; $59c5: $62
    ld bc, $6f54                                  ; $59c6: $01 $54 $6f
    ld [hl], l                                    ; $59c9: $75
    ld [hl], d                                    ; $59ca: $72

jr_018_59cb:
    ld l, [hl]                                    ; $59cb: $6e
    ld h, c                                       ; $59cc: $61
    ld l, l                                       ; $59cd: $6d
    ld h, l                                       ; $59ce: $65
    ld l, [hl]                                    ; $59cf: $6e
    ld [hl], h                                    ; $59d0: $74
    jr nz, jr_018_5a3c                            ; $59d1: $20 $69

    ld [hl], e                                    ; $59d3: $73
    jr nz, jr_018_5a37                            ; $59d4: $20 $61

    ld bc, $7473                                  ; $59d6: $01 $73 $74

jr_018_59d9:
    ld h, l                                       ; $59d9: $65
    ld [hl], b                                    ; $59da: $70

jr_018_59db:
    jr nz, jr_018_5a3e                            ; $59db: $20 $61

    ld h, d                                       ; $59dd: $62
    ld l, a                                       ; $59de: $6f
    halt                                          ; $59df: $76
    ld h, l                                       ; $59e0: $65
    jr nz, jr_018_5a52                            ; $59e1: $20 $6f

    ld [hl], l                                    ; $59e3: $75
    ld [hl], d                                    ; $59e4: $72
    ld [hl], e                                    ; $59e5: $73
    ld l, $03                                     ; $59e6: $2e $03
    nop                                           ; $59e8: $00
    ld d, h                                       ; $59e9: $54
    ld l, b                                       ; $59ea: $68
    ld h, l                                       ; $59eb: $65
    jr nz, jr_018_5a54                            ; $59ec: $20 $66

    ld h, c                                       ; $59ee: $61
    ld [hl], d                                    ; $59ef: $72
    ld [hl], h                                    ; $59f0: $74
    ld l, b                                       ; $59f1: $68
    ld h, l                                       ; $59f2: $65
    ld [hl], d                                    ; $59f3: $72
    jr nz, jr_018_5a6f                            ; $59f4: $20 $79

    ld l, a                                       ; $59f6: $6f
    ld [hl], l                                    ; $59f7: $75
    ld bc, $7264                                  ; $59f8: $01 $64 $72
    ld l, c                                       ; $59fb: $69
    halt                                          ; $59fc: $76
    ld h, l                                       ; $59fd: $65
    jr nz, jr_018_5a74                            ; $59fe: $20 $74

    ld l, b                                       ; $5a00: $68
    ld h, l                                       ; $5a01: $65
    jr nz, @+$64                                  ; $5a02: $20 $62

    ld h, c                                       ; $5a04: $61
    ld l, h                                       ; $5a05: $6c

jr_018_5a06:
    ld l, h                                       ; $5a06: $6c
    inc l                                         ; $5a07: $2c
    jr nz, jr_018_5a7e                            ; $5a08: $20 $74

    ld l, b                                       ; $5a0a: $68
    ld h, l                                       ; $5a0b: $65
    ld bc, $6f6d                                  ; $5a0c: $01 $6d $6f
    ld [hl], d                                    ; $5a0f: $72
    ld h, l                                       ; $5a10: $65

jr_018_5a11:
    jr nz, jr_018_5a7f                            ; $5a11: $20 $6c

    ld l, c                                       ; $5a13: $69

jr_018_5a14:
    ld l, e                                       ; $5a14: $6b
    ld h, l                                       ; $5a15: $65
    ld l, h                                       ; $5a16: $6c

jr_018_5a17:
    ld a, c                                       ; $5a17: $79
    jr nz, jr_018_5a83                            ; $5a18: $20 $69

    ld [hl], h                                    ; $5a1a: $74
    daa                                           ; $5a1b: $27
    ld l, h                                       ; $5a1c: $6c
    ld l, h                                       ; $5a1d: $6c
    ld [bc], a                                    ; $5a1e: $02
    ld h, e                                       ; $5a1f: $63
    ld [hl], l                                    ; $5a20: $75

jr_018_5a21:
    ld [hl], d                                    ; $5a21: $72
    halt                                          ; $5a22: $76
    ld h, l                                       ; $5a23: $65
    ld l, $20                                     ; $5a24: $2e $20
    ld b, h                                       ; $5a26: $44
    ld l, c                                       ; $5a27: $69
    ld [hl], e                                    ; $5a28: $73
    ld [hl], h                                    ; $5a29: $74
    ld h, c                                       ; $5a2a: $61
    ld l, [hl]                                    ; $5a2b: $6e
    ld h, e                                       ; $5a2c: $63
    ld h, l                                       ; $5a2d: $65
    jr nz, jr_018_5a98                            ; $5a2e: $20 $68

    ld h, c                                       ; $5a30: $61
    ld [hl], e                                    ; $5a31: $73
    ld bc, $6461                                  ; $5a32: $01 $61 $64
    halt                                          ; $5a35: $76
    ld h, c                                       ; $5a36: $61

jr_018_5a37:
    ld l, [hl]                                    ; $5a37: $6e
    ld [hl], h                                    ; $5a38: $74
    ld h, c                                       ; $5a39: $61
    ld h, a                                       ; $5a3a: $67
    ld h, l                                       ; $5a3b: $65

jr_018_5a3c:
    ld [hl], e                                    ; $5a3c: $73
    inc l                                         ; $5a3d: $2c

jr_018_5a3e:
    jr nz, jr_018_5aa2                            ; $5a3e: $20 $62

    ld [hl], l                                    ; $5a40: $75
    ld [hl], h                                    ; $5a41: $74
    jr nz, jr_018_5ab7                            ; $5a42: $20 $73

    ld l, a                                       ; $5a44: $6f
    ld bc, $6f64                                  ; $5a45: $01 $64 $6f
    ld h, l                                       ; $5a48: $65
    ld [hl], e                                    ; $5a49: $73
    jr nz, jr_018_5aaf                            ; $5a4a: $20 $63

    ld l, a                                       ; $5a4c: $6f
    ld l, [hl]                                    ; $5a4d: $6e
    ld [hl], h                                    ; $5a4e: $74
    ld [hl], d                                    ; $5a4f: $72
    ld l, a                                       ; $5a50: $6f
    ld l, h                                       ; $5a51: $6c

jr_018_5a52:
    ld l, $03                                     ; $5a52: $2e $03

jr_018_5a54:
    nop                                           ; $5a54: $00
    ld b, a                                       ; $5a55: $47
    ld h, l                                       ; $5a56: $65
    ld [hl], h                                    ; $5a57: $74
    ld [hl], h                                    ; $5a58: $74
    ld l, c                                       ; $5a59: $69
    ld l, [hl]                                    ; $5a5a: $6e
    ld h, a                                       ; $5a5b: $67
    jr nz, @+$71                                  ; $5a5c: $20 $6f

    ld l, [hl]                                    ; $5a5e: $6e
    jr nz, jr_018_5ac8                            ; $5a5f: $20 $67

    ld [hl], d                                    ; $5a61: $72
    ld h, l                                       ; $5a62: $65
    ld h, l                                       ; $5a63: $65
    ld l, [hl]                                    ; $5a64: $6e
    ld bc, $6e69                                  ; $5a65: $01 $69 $6e
    jr nz, jr_018_5a9c                            ; $5a68: $20 $32

    jr nz, jr_018_5adf                            ; $5a6a: $20 $73

    ld [hl], h                                    ; $5a6c: $74
    ld [hl], d                                    ; $5a6d: $72
    ld l, a                                       ; $5a6e: $6f

jr_018_5a6f:
    ld l, e                                       ; $5a6f: $6b
    ld h, l                                       ; $5a70: $65
    ld [hl], e                                    ; $5a71: $73
    jr nz, @+$64                                  ; $5a72: $20 $62

jr_018_5a74:
    ld h, l                                       ; $5a74: $65
    ld l, h                                       ; $5a75: $6c
    ld l, a                                       ; $5a76: $6f
    ld [hl], a                                    ; $5a77: $77
    ld bc, $6170                                  ; $5a78: $01 $70 $61
    ld [hl], d                                    ; $5a7b: $72
    jr nz, jr_018_5ae7                            ; $5a7c: $20 $69

jr_018_5a7e:
    ld [hl], e                                    ; $5a7e: $73

jr_018_5a7f:
    jr nz, jr_018_5ae2                            ; $5a7f: $20 $61

    jr nz, jr_018_5af3                            ; $5a81: $20 $70

jr_018_5a83:
    ld h, c                                       ; $5a83: $61
    ld [hl], d                                    ; $5a84: $72
    jr nz, @+$71                                  ; $5a85: $20 $6f

    ld l, [hl]                                    ; $5a87: $6e
    ld l, $02                                     ; $5a88: $2e $02
    ld d, a                                       ; $5a8a: $57
    ld l, c                                       ; $5a8b: $69
    ld [hl], h                                    ; $5a8c: $74
    ld l, b                                       ; $5a8d: $68
    jr nz, jr_018_5af1                            ; $5a8e: $20 $61

    jr nz, jr_018_5b02                            ; $5a90: $20 $70

    ld h, c                                       ; $5a92: $61
    ld [hl], d                                    ; $5a93: $72
    jr nz, jr_018_5b05                            ; $5a94: $20 $6f

    ld l, [hl]                                    ; $5a96: $6e
    inc l                                         ; $5a97: $2c

jr_018_5a98:
    ld bc, $6f79                                  ; $5a98: $01 $79 $6f
    ld [hl], l                                    ; $5a9b: $75

jr_018_5a9c:
    daa                                           ; $5a9c: $27
    ld [hl], d                                    ; $5a9d: $72
    ld h, l                                       ; $5a9e: $65
    jr nz, jr_018_5b14                            ; $5a9f: $20 $73

    ld [hl], l                                    ; $5aa1: $75

jr_018_5aa2:
    ld [hl], d                                    ; $5aa2: $72
    ld h, l                                       ; $5aa3: $65
    jr nz, jr_018_5b1a                            ; $5aa4: $20 $74

    ld l, a                                       ; $5aa6: $6f
    ld bc, $7661                                  ; $5aa7: $01 $61 $76
    ld l, a                                       ; $5aaa: $6f
    ld l, c                                       ; $5aab: $69
    ld h, h                                       ; $5aac: $64
    jr nz, jr_018_5b10                            ; $5aad: $20 $61

jr_018_5aaf:
    jr nz, @+$64                                  ; $5aaf: $20 $62

    ld l, a                                       ; $5ab1: $6f
    ld h, a                                       ; $5ab2: $67
    ld h, l                                       ; $5ab3: $65
    ld a, c                                       ; $5ab4: $79
    ld l, $03                                     ; $5ab5: $2e $03

jr_018_5ab7:
    nop                                           ; $5ab7: $00
    ld c, c                                       ; $5ab8: $49
    ld h, [hl]                                    ; $5ab9: $66
    jr nz, jr_018_5b35                            ; $5aba: $20 $79

    ld l, a                                       ; $5abc: $6f
    ld [hl], l                                    ; $5abd: $75
    jr nz, jr_018_5b34                            ; $5abe: $20 $74

    ld [hl], d                                    ; $5ac0: $72
    ld a, c                                       ; $5ac1: $79
    jr nz, jr_018_5b38                            ; $5ac2: $20 $74

    ld l, a                                       ; $5ac4: $6f
    jr nz, jr_018_5b2e                            ; $5ac5: $20 $67

    ld h, l                                       ; $5ac7: $65

jr_018_5ac8:
    ld [hl], h                                    ; $5ac8: $74
    ld bc, $6e6f                                  ; $5ac9: $01 $6f $6e
    jr nz, jr_018_5b35                            ; $5acc: $20 $67

    ld [hl], d                                    ; $5ace: $72
    ld h, l                                       ; $5acf: $65
    ld h, l                                       ; $5ad0: $65
    ld l, [hl]                                    ; $5ad1: $6e
    jr nz, @+$6b                                  ; $5ad2: $20 $69

    ld l, [hl]                                    ; $5ad4: $6e
    jr nz, jr_018_5b09                            ; $5ad5: $20 $32

    ld bc, $7473                                  ; $5ad7: $01 $73 $74
    ld [hl], d                                    ; $5ada: $72
    ld l, a                                       ; $5adb: $6f
    ld l, e                                       ; $5adc: $6b
    ld h, l                                       ; $5add: $65
    ld [hl], e                                    ; $5ade: $73

jr_018_5adf:
    jr nz, jr_018_5b50                            ; $5adf: $20 $6f

    ld l, [hl]                                    ; $5ae1: $6e

jr_018_5ae2:
    jr nz, jr_018_5b45                            ; $5ae2: $20 $61

    jr nz, jr_018_5b59                            ; $5ae4: $20 $73

    ld l, b                                       ; $5ae6: $68

jr_018_5ae7:
    ld l, a                                       ; $5ae7: $6f
    ld [hl], d                                    ; $5ae8: $72
    ld [hl], h                                    ; $5ae9: $74
    ld [bc], a                                    ; $5aea: $02
    ld [hl], b                                    ; $5aeb: $70
    ld h, c                                       ; $5aec: $61
    ld [hl], d                                    ; $5aed: $72
    jr nz, jr_018_5b25                            ; $5aee: $20 $35

    inc l                                         ; $5af0: $2c

jr_018_5af1:
    jr nz, jr_018_5b6c                            ; $5af1: $20 $79

jr_018_5af3:
    ld l, a                                       ; $5af3: $6f
    ld [hl], l                                    ; $5af4: $75
    jr nz, jr_018_5b5a                            ; $5af5: $20 $63

    ld l, a                                       ; $5af7: $6f
    ld [hl], l                                    ; $5af8: $75
    ld l, h                                       ; $5af9: $6c
    ld h, h                                       ; $5afa: $64
    ld bc, $6e65                                  ; $5afb: $01 $65 $6e
    ld h, h                                       ; $5afe: $64
    jr nz, jr_018_5b76                            ; $5aff: $20 $75

    ld [hl], b                                    ; $5b01: $70

jr_018_5b02:
    jr nz, jr_018_5b6b                            ; $5b02: $20 $67

    ld h, l                                       ; $5b04: $65

jr_018_5b05:
    ld [hl], h                                    ; $5b05: $74
    ld [hl], h                                    ; $5b06: $74
    ld l, c                                       ; $5b07: $69
    ld l, [hl]                                    ; $5b08: $6e

jr_018_5b09:
    ld h, a                                       ; $5b09: $67
    ld bc, $2061                                  ; $5b0a: $01 $61 $20
    ld [hl], a                                    ; $5b0d: $77
    ld l, a                                       ; $5b0e: $6f
    ld [hl], d                                    ; $5b0f: $72

jr_018_5b10:
    ld [hl], e                                    ; $5b10: $73
    ld h, l                                       ; $5b11: $65
    jr nz, @+$75                                  ; $5b12: $20 $73

jr_018_5b14:
    ld h, e                                       ; $5b14: $63
    ld l, a                                       ; $5b15: $6f
    ld [hl], d                                    ; $5b16: $72
    ld h, l                                       ; $5b17: $65
    ld l, $03                                     ; $5b18: $2e $03

jr_018_5b1a:
    nop                                           ; $5b1a: $00
    ld b, h                                       ; $5b1b: $44
    ld l, c                                       ; $5b1c: $69
    ld h, h                                       ; $5b1d: $64
    jr nz, jr_018_5b99                            ; $5b1e: $20 $79

    ld l, a                                       ; $5b20: $6f
    ld [hl], l                                    ; $5b21: $75
    jr nz, jr_018_5b8f                            ; $5b22: $20 $6b

    ld l, [hl]                                    ; $5b24: $6e

jr_018_5b25:
    ld l, a                                       ; $5b25: $6f
    ld [hl], a                                    ; $5b26: $77
    jr nz, @+$63                                  ; $5b27: $20 $61

    ld bc, $6166                                  ; $5b29: $01 $66 $61
    ld l, c                                       ; $5b2c: $69
    ld [hl], d                                    ; $5b2d: $72

jr_018_5b2e:
    ld [hl], a                                    ; $5b2e: $77
    ld h, c                                       ; $5b2f: $61
    ld a, c                                       ; $5b30: $79
    jr nz, jr_018_5ba7                            ; $5b31: $20 $74

    ld l, b                                       ; $5b33: $68

jr_018_5b34:
    ld h, c                                       ; $5b34: $61

jr_018_5b35:
    ld [hl], h                                    ; $5b35: $74
    jr nz, jr_018_5bac                            ; $5b36: $20 $74

jr_018_5b38:
    ld [hl], l                                    ; $5b38: $75
    ld [hl], d                                    ; $5b39: $72
    ld l, [hl]                                    ; $5b3a: $6e
    ld [hl], e                                    ; $5b3b: $73
    ld bc, $7369                                  ; $5b3c: $01 $69 $73
    jr nz, @+$63                                  ; $5b3f: $20 $61

    jr nz, jr_018_5ba7                            ; $5b41: $20 $64

    ld l, a                                       ; $5b43: $6f
    ld h, a                                       ; $5b44: $67

jr_018_5b45:
    ld l, h                                       ; $5b45: $6c
    ld h, l                                       ; $5b46: $65
    ld h, a                                       ; $5b47: $67
    ccf                                           ; $5b48: $3f
    nop                                           ; $5b49: $00
    ld b, c                                       ; $5b4a: $41
    ld [hl], h                                    ; $5b4b: $74
    ld [hl], h                                    ; $5b4c: $74
    ld h, c                                       ; $5b4d: $61
    ld h, e                                       ; $5b4e: $63
    ld l, e                                       ; $5b4f: $6b

jr_018_5b50:
    ld l, c                                       ; $5b50: $69
    ld l, [hl]                                    ; $5b51: $6e
    ld h, a                                       ; $5b52: $67
    jr nz, jr_018_5bb6                            ; $5b53: $20 $61

    jr nz, jr_018_5bbb                            ; $5b55: $20 $64

    ld l, a                                       ; $5b57: $6f
    ld h, a                                       ; $5b58: $67

jr_018_5b59:
    dec l                                         ; $5b59: $2d

jr_018_5b5a:
    ld bc, $656c                                  ; $5b5a: $01 $6c $65
    ld h, a                                       ; $5b5d: $67
    jr nz, jr_018_5bd2                            ; $5b5e: $20 $72

    ld h, l                                       ; $5b60: $65
    ld [hl], c                                    ; $5b61: $71
    ld [hl], l                                    ; $5b62: $75
    ld l, c                                       ; $5b63: $69
    ld [hl], d                                    ; $5b64: $72
    ld h, l                                       ; $5b65: $65
    ld [hl], e                                    ; $5b66: $73
    ld bc, $6163                                  ; $5b67: $01 $63 $61
    ld [hl], d                                    ; $5b6a: $72

jr_018_5b6b:
    ld h, l                                       ; $5b6b: $65

jr_018_5b6c:
    ld h, [hl]                                    ; $5b6c: $66
    ld [hl], l                                    ; $5b6d: $75
    ld l, h                                       ; $5b6e: $6c
    jr nz, jr_018_5bd2                            ; $5b6f: $20 $61

    ld l, c                                       ; $5b71: $69
    ld l, l                                       ; $5b72: $6d
    ld l, $02                                     ; $5b73: $2e $02
    ld c, c                                       ; $5b75: $49

jr_018_5b76:
    ld h, [hl]                                    ; $5b76: $66
    jr nz, jr_018_5bf2                            ; $5b77: $20 $79

    ld l, a                                       ; $5b79: $6f
    ld [hl], l                                    ; $5b7a: $75
    ld [hl], d                                    ; $5b7b: $72
    jr nz, jr_018_5bdf                            ; $5b7c: $20 $61

    ld [hl], h                                    ; $5b7e: $74
    ld [hl], h                                    ; $5b7f: $74
    ld h, c                                       ; $5b80: $61
    ld h, e                                       ; $5b81: $63
    ld l, e                                       ; $5b82: $6b
    daa                                           ; $5b83: $27
    ld [hl], e                                    ; $5b84: $73
    ld bc, $6f74                                  ; $5b85: $01 $74 $6f
    ld l, a                                       ; $5b88: $6f
    jr nz, jr_018_5bed                            ; $5b89: $20 $62

    ld l, a                                       ; $5b8b: $6f
    ld l, h                                       ; $5b8c: $6c
    ld h, h                                       ; $5b8d: $64
    inc l                                         ; $5b8e: $2c

jr_018_5b8f:
    jr nz, jr_018_5c0a                            ; $5b8f: $20 $79

    ld l, a                                       ; $5b91: $6f
    ld [hl], l                                    ; $5b92: $75
    jr nz, @+$65                                  ; $5b93: $20 $63

    ld l, a                                       ; $5b95: $6f
    ld [hl], l                                    ; $5b96: $75
    ld l, h                                       ; $5b97: $6c
    ld h, h                                       ; $5b98: $64

jr_018_5b99:
    ld bc, $616c                                  ; $5b99: $01 $6c $61
    ld l, [hl]                                    ; $5b9c: $6e
    ld h, h                                       ; $5b9d: $64
    jr nz, @+$6b                                  ; $5b9e: $20 $69

    ld l, [hl]                                    ; $5ba0: $6e
    jr nz, jr_018_5c04                            ; $5ba1: $20 $61

    jr nz, jr_018_5c19                            ; $5ba3: $20 $74

    ld [hl], d                                    ; $5ba5: $72
    ld h, c                                       ; $5ba6: $61

jr_018_5ba7:
    ld [hl], b                                    ; $5ba7: $70
    ld hl, $0003                                  ; $5ba8: $21 $03 $00
    ld c, c                                       ; $5bab: $49

jr_018_5bac:
    ld [hl], h                                    ; $5bac: $74
    daa                                           ; $5bad: $27
    ld [hl], e                                    ; $5bae: $73
    jr nz, jr_018_5c14                            ; $5baf: $20 $63

    ld h, c                                       ; $5bb1: $61
    ld l, h                                       ; $5bb2: $6c
    ld l, h                                       ; $5bb3: $6c
    ld h, l                                       ; $5bb4: $65
    ld h, h                                       ; $5bb5: $64

jr_018_5bb6:
    jr nz, jr_018_5c19                            ; $5bb6: $20 $61

    jr nz, jr_018_5c1e                            ; $5bb8: $20 $64

    ld l, a                                       ; $5bba: $6f

jr_018_5bbb:
    ld h, a                                       ; $5bbb: $67
    dec l                                         ; $5bbc: $2d
    ld bc, $656c                                  ; $5bbd: $01 $6c $65
    ld h, a                                       ; $5bc0: $67
    jr nz, jr_018_5bea                            ; $5bc1: $20 $27

    ld h, e                                       ; $5bc3: $63
    ld h, c                                       ; $5bc4: $61
    ld [hl], l                                    ; $5bc5: $75
    ld [hl], e                                    ; $5bc6: $73
    ld h, l                                       ; $5bc7: $65
    jr nz, jr_018_5c33                            ; $5bc8: $20 $69

    ld [hl], h                                    ; $5bca: $74
    daa                                           ; $5bcb: $27
    ld [hl], e                                    ; $5bcc: $73
    ld bc, $6562                                  ; $5bcd: $01 $62 $65
    ld l, [hl]                                    ; $5bd0: $6e
    ld [hl], h                                    ; $5bd1: $74

jr_018_5bd2:
    jr nz, jr_018_5c01                            ; $5bd2: $20 $2d

    jr nz, jr_018_5c40                            ; $5bd4: $20 $6a

    ld [hl], l                                    ; $5bd6: $75
    ld [hl], e                                    ; $5bd7: $73
    ld [hl], h                                    ; $5bd8: $74
    jr nz, jr_018_5c47                            ; $5bd9: $20 $6c

    ld l, c                                       ; $5bdb: $69
    ld l, e                                       ; $5bdc: $6b
    ld h, l                                       ; $5bdd: $65
    ld [bc], a                                    ; $5bde: $02

jr_018_5bdf:
    ld h, c                                       ; $5bdf: $61
    jr nz, jr_018_5c46                            ; $5be0: $20 $64

    ld l, a                                       ; $5be2: $6f
    ld h, a                                       ; $5be3: $67
    daa                                           ; $5be4: $27
    ld [hl], e                                    ; $5be5: $73
    jr nz, jr_018_5c54                            ; $5be6: $20 $6c

    ld h, l                                       ; $5be8: $65
    ld h, a                                       ; $5be9: $67

jr_018_5bea:
    ld l, $03                                     ; $5bea: $2e $03
    nop                                           ; $5bec: $00

jr_018_5bed:
    ld b, [hl]                                    ; $5bed: $46
    ld l, c                                       ; $5bee: $69
    ld [hl], d                                    ; $5bef: $72
    ld [hl], e                                    ; $5bf0: $73
    ld [hl], h                                    ; $5bf1: $74

jr_018_5bf2:
    jr nz, @+$76                                  ; $5bf2: $20 $74

    ld l, c                                       ; $5bf4: $69
    ld l, l                                       ; $5bf5: $6d
    ld h, l                                       ; $5bf6: $65
    jr nz, jr_018_5c42                            ; $5bf7: $20 $49

    jr nz, jr_018_5c6e                            ; $5bf9: $20 $73

    ld h, c                                       ; $5bfb: $61
    ld [hl], a                                    ; $5bfc: $77
    ld bc, $6f79                                  ; $5bfd: $01 $79 $6f
    ld [hl], l                                    ; $5c00: $75

jr_018_5c01:
    inc l                                         ; $5c01: $2c
    jr nz, jr_018_5c0b                            ; $5c02: $20 $07

jr_018_5c04:
    inc l                                         ; $5c04: $2c
    jr nz, jr_018_5c50                            ; $5c05: $20 $49

    ld bc, $6e6b                                  ; $5c07: $01 $6b $6e

jr_018_5c0a:
    ld h, l                                       ; $5c0a: $65

jr_018_5c0b:
    ld [hl], a                                    ; $5c0b: $77
    jr nz, jr_018_5c87                            ; $5c0c: $20 $79

    ld l, a                                       ; $5c0e: $6f
    ld [hl], l                                    ; $5c0f: $75
    jr nz, jr_018_5c7a                            ; $5c10: $20 $68

    ld h, c                                       ; $5c12: $61
    ld h, h                                       ; $5c13: $64

jr_018_5c14:
    jr nz, jr_018_5c7f                            ; $5c14: $20 $69

    ld [hl], h                                    ; $5c16: $74
    ld l, $02                                     ; $5c17: $2e $02

jr_018_5c19:
    ld c, [hl]                                    ; $5c19: $4e
    ld l, a                                       ; $5c1a: $6f
    ld [hl], a                                    ; $5c1b: $77
    jr nz, jr_018_5c92                            ; $5c1c: $20 $74

jr_018_5c1e:
    ld l, b                                       ; $5c1e: $68
    ld h, c                                       ; $5c1f: $61
    ld [hl], h                                    ; $5c20: $74
    jr nz, @+$7b                                  ; $5c21: $20 $79

    ld l, a                                       ; $5c23: $6f
    ld [hl], l                                    ; $5c24: $75
    daa                                           ; $5c25: $27
    halt                                          ; $5c26: $76
    ld h, l                                       ; $5c27: $65
    ld bc, $6c70                                  ; $5c28: $01 $70 $6c
    ld h, c                                       ; $5c2b: $61
    ld h, e                                       ; $5c2c: $63
    ld h, l                                       ; $5c2d: $65
    ld h, h                                       ; $5c2e: $64
    inc l                                         ; $5c2f: $2c
    jr nz, jr_018_5ca9                            ; $5c30: $20 $77

    ld l, c                                       ; $5c32: $69

jr_018_5c33:
    ld l, h                                       ; $5c33: $6c
    ld l, h                                       ; $5c34: $6c
    jr nz, jr_018_5cb0                            ; $5c35: $20 $79

    ld l, a                                       ; $5c37: $6f
    ld [hl], l                                    ; $5c38: $75
    ld bc, $6961                                  ; $5c39: $01 $61 $69
    ld l, l                                       ; $5c3c: $6d
    jr nz, jr_018_5cb3                            ; $5c3d: $20 $74

    ld l, a                                       ; $5c3f: $6f

jr_018_5c40:
    jr nz, jr_018_5ca4                            ; $5c40: $20 $62

jr_018_5c42:
    ld h, l                                       ; $5c42: $65
    jr nz, jr_018_5c88                            ; $5c43: $20 $43

    ld l, b                                       ; $5c45: $68

jr_018_5c46:
    ld h, c                                       ; $5c46: $61

jr_018_5c47:
    ld l, l                                       ; $5c47: $6d
    ld [hl], b                                    ; $5c48: $70
    ccf                                           ; $5c49: $3f
    inc bc                                        ; $5c4a: $03
    nop                                           ; $5c4b: $00
    ld b, [hl]                                    ; $5c4c: $46
    ld l, c                                       ; $5c4d: $69
    ld [hl], d                                    ; $5c4e: $72
    ld [hl], e                                    ; $5c4f: $73

jr_018_5c50:
    ld [hl], h                                    ; $5c50: $74
    jr nz, jr_018_5cc7                            ; $5c51: $20 $74

    ld l, c                                       ; $5c53: $69

jr_018_5c54:
    ld l, l                                       ; $5c54: $6d
    ld h, l                                       ; $5c55: $65
    jr nz, @+$4b                                  ; $5c56: $20 $49

    jr nz, @+$75                                  ; $5c58: $20 $73

    ld h, c                                       ; $5c5a: $61
    ld [hl], a                                    ; $5c5b: $77
    ld bc, $6f79                                  ; $5c5c: $01 $79 $6f
    ld [hl], l                                    ; $5c5f: $75
    inc l                                         ; $5c60: $2c
    jr nz, jr_018_5c6a                            ; $5c61: $20 $07

    inc l                                         ; $5c63: $2c
    jr nz, @+$4b                                  ; $5c64: $20 $49

    ld bc, $6e6b                                  ; $5c66: $01 $6b $6e
    ld h, l                                       ; $5c69: $65

jr_018_5c6a:
    ld [hl], a                                    ; $5c6a: $77
    jr nz, jr_018_5ce6                            ; $5c6b: $20 $79

    ld l, a                                       ; $5c6d: $6f

jr_018_5c6e:
    ld [hl], l                                    ; $5c6e: $75
    daa                                           ; $5c6f: $27
    ld h, h                                       ; $5c70: $64
    jr nz, @+$79                                  ; $5c71: $20 $77

    ld l, c                                       ; $5c73: $69
    ld l, [hl]                                    ; $5c74: $6e
    ld hl, $4902                                  ; $5c75: $21 $02 $49
    daa                                           ; $5c78: $27
    ld l, l                                       ; $5c79: $6d

jr_018_5c7a:
    jr nz, jr_018_5cef                            ; $5c7a: $20 $73

    ld [hl], l                                    ; $5c7c: $75
    ld [hl], d                                    ; $5c7d: $72
    ld h, l                                       ; $5c7e: $65

jr_018_5c7f:
    jr nz, jr_018_5cf5                            ; $5c7f: $20 $74

    ld l, b                                       ; $5c81: $68
    ld h, c                                       ; $5c82: $61
    ld [hl], h                                    ; $5c83: $74
    ld bc, $6f73                                  ; $5c84: $01 $73 $6f

jr_018_5c87:
    ld l, l                                       ; $5c87: $6d

jr_018_5c88:
    ld h, l                                       ; $5c88: $65
    ld h, h                                       ; $5c89: $64
    ld h, c                                       ; $5c8a: $61
    ld a, c                                       ; $5c8b: $79
    inc l                                         ; $5c8c: $2c
    jr nz, jr_018_5d08                            ; $5c8d: $20 $79

    ld l, a                                       ; $5c8f: $6f
    ld [hl], l                                    ; $5c90: $75
    daa                                           ; $5c91: $27

jr_018_5c92:
    ld l, h                                       ; $5c92: $6c
    ld l, h                                       ; $5c93: $6c
    ld bc, $6567                                  ; $5c94: $01 $67 $65
    ld [hl], h                                    ; $5c97: $74
    jr nz, jr_018_5d0e                            ; $5c98: $20 $74

    ld l, a                                       ; $5c9a: $6f
    jr nz, jr_018_5d0a                            ; $5c9b: $20 $6d

    ld h, l                                       ; $5c9d: $65
    ld h, l                                       ; $5c9e: $65
    ld [hl], h                                    ; $5c9f: $74
    jr nz, jr_018_5cef                            ; $5ca0: $20 $4d

    ld h, c                                       ; $5ca2: $61
    ld [hl], d                                    ; $5ca3: $72

jr_018_5ca4:
    ld l, c                                       ; $5ca4: $69
    ld l, a                                       ; $5ca5: $6f
    ld hl, $0003                                  ; $5ca6: $21 $03 $00

jr_018_5ca9:
    ld b, a                                       ; $5ca9: $47
    ld l, a                                       ; $5caa: $6f
    ld l, c                                       ; $5cab: $69
    ld l, [hl]                                    ; $5cac: $6e
    ld h, a                                       ; $5cad: $67
    jr nz, jr_018_5d24                            ; $5cae: $20 $74

jr_018_5cb0:
    ld l, a                                       ; $5cb0: $6f
    jr nz, jr_018_5d23                            ; $5cb1: $20 $70

jr_018_5cb3:
    ld l, h                                       ; $5cb3: $6c
    ld h, c                                       ; $5cb4: $61
    ld a, c                                       ; $5cb5: $79
    jr nz, @+$63                                  ; $5cb6: $20 $61

    ld bc, $614d                                  ; $5cb8: $01 $4d $61
    ld [hl], h                                    ; $5cbb: $74
    ld h, e                                       ; $5cbc: $63
    ld l, b                                       ; $5cbd: $68
    jr nz, jr_018_5d07                            ; $5cbe: $20 $47

    ld h, c                                       ; $5cc0: $61
    ld l, l                                       ; $5cc1: $6d
    ld h, l                                       ; $5cc2: $65
    jr nz, jr_018_5d3c                            ; $5cc3: $20 $77

    ld l, c                                       ; $5cc5: $69
    ld [hl], h                                    ; $5cc6: $74

jr_018_5cc7:
    ld l, b                                       ; $5cc7: $68
    ld bc, $6874                                  ; $5cc8: $01 $74 $68
    ld h, l                                       ; $5ccb: $65
    jr nz, jr_018_5d11                            ; $5ccc: $20 $43

    ld l, h                                       ; $5cce: $6c
    ld [hl], l                                    ; $5ccf: $75
    ld h, d                                       ; $5cd0: $62
    jr nz, jr_018_5d16                            ; $5cd1: $20 $43

    ld l, b                                       ; $5cd3: $68
    ld h, c                                       ; $5cd4: $61
    ld l, l                                       ; $5cd5: $6d
    ld [hl], b                                    ; $5cd6: $70
    ccf                                           ; $5cd7: $3f
    inc bc                                        ; $5cd8: $03
    nop                                           ; $5cd9: $00
    ld b, c                                       ; $5cda: $41
    ld h, [hl]                                    ; $5cdb: $66
    ld [hl], h                                    ; $5cdc: $74
    ld h, l                                       ; $5cdd: $65
    ld [hl], d                                    ; $5cde: $72
    jr nz, @+$72                                  ; $5cdf: $20 $70

    ld l, h                                       ; $5ce1: $6c
    ld h, c                                       ; $5ce2: $61
    ld a, c                                       ; $5ce3: $79
    ld l, c                                       ; $5ce4: $69
    ld l, [hl]                                    ; $5ce5: $6e

jr_018_5ce6:
    ld h, a                                       ; $5ce6: $67
    jr nz, jr_018_5d4a                            ; $5ce7: $20 $61

    ld bc, $6f72                                  ; $5ce9: $01 $72 $6f
    ld [hl], l                                    ; $5cec: $75
    ld l, [hl]                                    ; $5ced: $6e
    ld h, h                                       ; $5cee: $64

jr_018_5cef:
    inc l                                         ; $5cef: $2c
    jr nz, jr_018_5d53                            ; $5cf0: $20 $61

    ld [hl], e                                    ; $5cf2: $73
    ld [hl], e                                    ; $5cf3: $73
    ld h, l                                       ; $5cf4: $65

jr_018_5cf5:
    ld [hl], e                                    ; $5cf5: $73
    ld [hl], e                                    ; $5cf6: $73
    jr nz, jr_018_5d72                            ; $5cf7: $20 $79

    ld l, a                                       ; $5cf9: $6f
    ld [hl], l                                    ; $5cfa: $75
    ld [hl], d                                    ; $5cfb: $72
    ld bc, $6c70                                  ; $5cfc: $01 $70 $6c
    ld h, c                                       ; $5cff: $61
    ld a, c                                       ; $5d00: $79
    jr nz, @+$63                                  ; $5d01: $20 $61

    ld l, [hl]                                    ; $5d03: $6e
    ld h, h                                       ; $5d04: $64
    jr nz, @+$72                                  ; $5d05: $20 $70

jr_018_5d07:
    ld [hl], d                                    ; $5d07: $72

jr_018_5d08:
    ld h, c                                       ; $5d08: $61
    ld h, e                                       ; $5d09: $63

jr_018_5d0a:
    ld [hl], h                                    ; $5d0a: $74
    ld l, c                                       ; $5d0b: $69
    ld h, e                                       ; $5d0c: $63
    ld h, l                                       ; $5d0d: $65

jr_018_5d0e:
    ld [bc], a                                    ; $5d0e: $02
    ld l, b                                       ; $5d0f: $68
    ld h, c                                       ; $5d10: $61

jr_018_5d11:
    ld [hl], d                                    ; $5d11: $72
    ld h, h                                       ; $5d12: $64
    ld hl, $4120                                  ; $5d13: $21 $20 $41

jr_018_5d16:
    ld l, h                                       ; $5d16: $6c
    ld l, h                                       ; $5d17: $6c
    jr nz, jr_018_5d81                            ; $5d18: $20 $67

    ld l, a                                       ; $5d1a: $6f
    ld l, a                                       ; $5d1b: $6f
    ld h, h                                       ; $5d1c: $64
    ld bc, $6f67                                  ; $5d1d: $01 $67 $6f
    ld l, h                                       ; $5d20: $6c
    ld h, [hl]                                    ; $5d21: $66
    ld h, l                                       ; $5d22: $65

jr_018_5d23:
    ld [hl], d                                    ; $5d23: $72

jr_018_5d24:
    ld [hl], e                                    ; $5d24: $73
    jr nz, jr_018_5d8b                            ; $5d25: $20 $64

    ld l, a                                       ; $5d27: $6f
    jr nz, jr_018_5d9e                            ; $5d28: $20 $74

    ld l, b                                       ; $5d2a: $68
    ld h, c                                       ; $5d2b: $61
    ld [hl], h                                    ; $5d2c: $74
    ld l, $03                                     ; $5d2d: $2e $03
    nop                                           ; $5d2f: $00
    ld e, c                                       ; $5d30: $59
    ld l, a                                       ; $5d31: $6f
    ld [hl], l                                    ; $5d32: $75
    jr nz, jr_018_5da5                            ; $5d33: $20 $70

    ld l, h                                       ; $5d35: $6c
    ld h, c                                       ; $5d36: $61
    ld h, e                                       ; $5d37: $63
    ld h, l                                       ; $5d38: $65
    ld h, h                                       ; $5d39: $64
    jr nz, @+$63                                  ; $5d3a: $20 $61

jr_018_5d3c:
    ld [hl], h                                    ; $5d3c: $74
    jr nz, jr_018_5d8f                            ; $5d3d: $20 $50

    ld h, c                                       ; $5d3f: $61
    ld l, h                                       ; $5d40: $6c
    ld l, l                                       ; $5d41: $6d
    ld bc, $6c43                                  ; $5d42: $01 $43 $6c
    ld [hl], l                                    ; $5d45: $75
    ld h, d                                       ; $5d46: $62
    inc l                                         ; $5d47: $2c
    jr nz, @+$09                                  ; $5d48: $20 $07

jr_018_5d4a:
    ccf                                           ; $5d4a: $3f
    nop                                           ; $5d4b: $00
    ld d, a                                       ; $5d4c: $57
    ld l, a                                       ; $5d4d: $6f
    ld [hl], a                                    ; $5d4e: $77
    ld hl, $4d20                                  ; $5d4f: $21 $20 $4d
    ld l, a                                       ; $5d52: $6f

jr_018_5d53:
    ld [hl], e                                    ; $5d53: $73
    ld [hl], h                                    ; $5d54: $74
    jr nz, @+$69                                  ; $5d55: $20 $67

    ld l, a                                       ; $5d57: $6f
    ld l, h                                       ; $5d58: $6c
    ld h, [hl]                                    ; $5d59: $66
    ld h, l                                       ; $5d5a: $65
    ld [hl], d                                    ; $5d5b: $72
    ld [hl], e                                    ; $5d5c: $73
    ld bc, $7262                                  ; $5d5d: $01 $62 $72
    ld h, c                                       ; $5d60: $61
    ld h, a                                       ; $5d61: $67
    inc l                                         ; $5d62: $2c
    jr nz, jr_018_5dc7                            ; $5d63: $20 $62

    ld [hl], l                                    ; $5d65: $75
    ld [hl], h                                    ; $5d66: $74
    jr nz, @+$4b                                  ; $5d67: $20 $49

    jr nz, jr_018_5dd2                            ; $5d69: $20 $67

    ld [hl], l                                    ; $5d6b: $75
    ld h, l                                       ; $5d6c: $65
    ld [hl], e                                    ; $5d6d: $73
    ld [hl], e                                    ; $5d6e: $73
    ld bc, $6f79                                  ; $5d6f: $01 $79 $6f

jr_018_5d72:
    ld [hl], l                                    ; $5d72: $75
    daa                                           ; $5d73: $27
    ld [hl], d                                    ; $5d74: $72
    ld h, l                                       ; $5d75: $65
    jr nz, jr_018_5dd9                            ; $5d76: $20 $61

    ld h, d                                       ; $5d78: $62
    ld l, a                                       ; $5d79: $6f
    halt                                          ; $5d7a: $76
    ld h, l                                       ; $5d7b: $65
    jr nz, jr_018_5df2                            ; $5d7c: $20 $74

    ld l, b                                       ; $5d7e: $68
    ld h, c                                       ; $5d7f: $61
    ld [hl], h                                    ; $5d80: $74

jr_018_5d81:
    ld hl, $0003                                  ; $5d81: $21 $03 $00
    ld c, b                                       ; $5d84: $48
    ld l, l                                       ; $5d85: $6d
    ld l, l                                       ; $5d86: $6d
    ld l, $2e                                     ; $5d87: $2e $2e
    ld l, $49                                     ; $5d89: $2e $49

jr_018_5d8b:
    jr nz, jr_018_5df4                            ; $5d8b: $20 $67

    ld [hl], l                                    ; $5d8d: $75
    ld h, l                                       ; $5d8e: $65

jr_018_5d8f:
    ld [hl], e                                    ; $5d8f: $73
    ld [hl], e                                    ; $5d90: $73
    jr nz, jr_018_5e07                            ; $5d91: $20 $74

    ld l, b                                       ; $5d93: $68
    ld h, c                                       ; $5d94: $61
    ld [hl], h                                    ; $5d95: $74
    ld bc, $6174                                  ; $5d96: $01 $74 $61
    ld l, e                                       ; $5d99: $6b
    ld h, l                                       ; $5d9a: $65
    ld [hl], e                                    ; $5d9b: $73
    jr nz, jr_018_5e11                            ; $5d9c: $20 $73

jr_018_5d9e:
    ld l, a                                       ; $5d9e: $6f
    ld l, l                                       ; $5d9f: $6d
    ld h, l                                       ; $5da0: $65
    jr nz, jr_018_5e16                            ; $5da1: $20 $73

    ld l, e                                       ; $5da3: $6b
    ld l, c                                       ; $5da4: $69

jr_018_5da5:
    ld l, h                                       ; $5da5: $6c
    ld l, h                                       ; $5da6: $6c
    ld l, $03                                     ; $5da7: $2e $03
    nop                                           ; $5da9: $00
    ld c, b                                       ; $5daa: $48
    ld l, l                                       ; $5dab: $6d
    ld l, l                                       ; $5dac: $6d
    ld l, $2e                                     ; $5dad: $2e $2e
    ld l, $49                                     ; $5daf: $2e $49
    jr nz, jr_018_5e1a                            ; $5db1: $20 $67

    ld [hl], l                                    ; $5db3: $75
    ld h, l                                       ; $5db4: $65
    ld [hl], e                                    ; $5db5: $73
    ld [hl], e                                    ; $5db6: $73
    jr nz, @+$76                                  ; $5db7: $20 $74

    ld l, b                                       ; $5db9: $68
    ld h, c                                       ; $5dba: $61
    ld [hl], h                                    ; $5dbb: $74
    ld bc, $6174                                  ; $5dbc: $01 $74 $61
    ld l, e                                       ; $5dbf: $6b
    ld h, l                                       ; $5dc0: $65
    ld [hl], e                                    ; $5dc1: $73
    jr nz, jr_018_5e37                            ; $5dc2: $20 $73

    ld l, a                                       ; $5dc4: $6f
    ld l, l                                       ; $5dc5: $6d
    ld h, l                                       ; $5dc6: $65

jr_018_5dc7:
    jr nz, jr_018_5e3c                            ; $5dc7: $20 $73

    ld l, e                                       ; $5dc9: $6b
    ld l, c                                       ; $5dca: $69
    ld l, h                                       ; $5dcb: $6c
    ld l, h                                       ; $5dcc: $6c
    ld l, $03                                     ; $5dcd: $2e $03
    nop                                           ; $5dcf: $00
    ld e, c                                       ; $5dd0: $59
    ld l, a                                       ; $5dd1: $6f

jr_018_5dd2:
    ld [hl], l                                    ; $5dd2: $75
    jr nz, jr_018_5e4c                            ; $5dd3: $20 $77

    ld l, a                                       ; $5dd5: $6f
    ld l, [hl]                                    ; $5dd6: $6e
    jr nz, jr_018_5e3a                            ; $5dd7: $20 $61

jr_018_5dd9:
    ld [hl], h                                    ; $5dd9: $74
    jr nz, jr_018_5e2c                            ; $5dda: $20 $50

    ld h, c                                       ; $5ddc: $61
    ld l, h                                       ; $5ddd: $6c
    ld l, l                                       ; $5dde: $6d
    ld bc, $6c43                                  ; $5ddf: $01 $43 $6c
    ld [hl], l                                    ; $5de2: $75
    ld h, d                                       ; $5de3: $62
    inc l                                         ; $5de4: $2c
    jr nz, jr_018_5dee                            ; $5de5: $20 $07

    ccf                                           ; $5de7: $3f
    nop                                           ; $5de8: $00
    ld e, c                                       ; $5de9: $59
    ld l, a                                       ; $5dea: $6f
    ld [hl], l                                    ; $5deb: $75
    jr nz, @+$65                                  ; $5dec: $20 $63

jr_018_5dee:
    ld h, c                                       ; $5dee: $61
    ld l, [hl]                                    ; $5def: $6e
    daa                                           ; $5df0: $27
    ld [hl], h                                    ; $5df1: $74

jr_018_5df2:
    jr nz, @+$68                                  ; $5df2: $20 $66

jr_018_5df4:
    ld l, a                                       ; $5df4: $6f
    ld l, a                                       ; $5df5: $6f
    ld l, h                                       ; $5df6: $6c
    jr nz, jr_018_5e66                            ; $5df7: $20 $6d

    ld h, l                                       ; $5df9: $65
    ld hl, $5701                                  ; $5dfa: $21 $01 $57
    ld h, l                                       ; $5dfd: $65
    daa                                           ; $5dfe: $27
    halt                                          ; $5dff: $76
    ld h, l                                       ; $5e00: $65
    jr nz, jr_018_5e64                            ; $5e01: $20 $61

    ld l, h                                       ; $5e03: $6c
    ld [hl], d                                    ; $5e04: $72
    ld h, l                                       ; $5e05: $65
    ld h, c                                       ; $5e06: $61

jr_018_5e07:
    ld h, h                                       ; $5e07: $64
    ld a, c                                       ; $5e08: $79
    jr nz, jr_018_5e7e                            ; $5e09: $20 $73

    ld h, l                                       ; $5e0b: $65
    ld h, l                                       ; $5e0c: $65
    ld l, [hl]                                    ; $5e0d: $6e
    ld bc, $6874                                  ; $5e0e: $01 $74 $68

jr_018_5e11:
    ld h, l                                       ; $5e11: $65
    jr nz, jr_018_5e86                            ; $5e12: $20 $72

    ld h, c                                       ; $5e14: $61
    ld l, [hl]                                    ; $5e15: $6e

jr_018_5e16:
    ld l, e                                       ; $5e16: $6b
    ld l, c                                       ; $5e17: $69
    ld l, [hl]                                    ; $5e18: $6e
    ld h, a                                       ; $5e19: $67

jr_018_5e1a:
    ld [hl], e                                    ; $5e1a: $73
    ld hl, $0003                                  ; $5e1b: $21 $03 $00
    ld c, l                                       ; $5e1e: $4d
    ld h, c                                       ; $5e1f: $61
    ld [hl], d                                    ; $5e20: $72
    ld l, c                                       ; $5e21: $69
    ld l, a                                       ; $5e22: $6f
    ld l, [hl]                                    ; $5e23: $6e
    daa                                           ; $5e24: $27
    ld [hl], e                                    ; $5e25: $73
    jr nz, jr_018_5e6b                            ; $5e26: $20 $43

    ld l, b                                       ; $5e28: $68
    ld h, c                                       ; $5e29: $61
    ld l, l                                       ; $5e2a: $6d
    ld [hl], b                                    ; $5e2b: $70

jr_018_5e2c:
    ld bc, $6977                                  ; $5e2c: $01 $77 $69
    ld l, [hl]                                    ; $5e2f: $6e
    ld l, [hl]                                    ; $5e30: $6e
    ld l, c                                       ; $5e31: $69
    ld l, [hl]                                    ; $5e32: $6e
    ld h, a                                       ; $5e33: $67
    jr nz, jr_018_5e97                            ; $5e34: $20 $61

    ld [hl], h                                    ; $5e36: $74

jr_018_5e37:
    jr nz, jr_018_5e89                            ; $5e37: $20 $50

    ld h, c                                       ; $5e39: $61

jr_018_5e3a:
    ld l, h                                       ; $5e3a: $6c
    ld l, l                                       ; $5e3b: $6d

jr_018_5e3c:
    ld bc, $6c43                                  ; $5e3c: $01 $43 $6c
    ld [hl], l                                    ; $5e3f: $75
    ld h, d                                       ; $5e40: $62
    jr nz, jr_018_5eac                            ; $5e41: $20 $69

    ld [hl], e                                    ; $5e43: $73
    jr nz, jr_018_5ea8                            ; $5e44: $20 $62

    ld l, c                                       ; $5e46: $69
    ld h, a                                       ; $5e47: $67
    jr nz, jr_018_5eb8                            ; $5e48: $20 $6e

    ld h, l                                       ; $5e4a: $65
    ld [hl], a                                    ; $5e4b: $77

jr_018_5e4c:
    ld [hl], e                                    ; $5e4c: $73
    ld hl, $4902                                  ; $5e4d: $21 $02 $49
    jr nz, jr_018_5eb5                            ; $5e50: $20 $63

    ld h, c                                       ; $5e52: $61
    ld l, [hl]                                    ; $5e53: $6e
    jr nz, jr_018_5eca                            ; $5e54: $20 $74

    ld h, l                                       ; $5e56: $65
    ld l, h                                       ; $5e57: $6c
    ld l, h                                       ; $5e58: $6c
    jr nz, jr_018_5ed4                            ; $5e59: $20 $79

    ld l, a                                       ; $5e5b: $6f
    ld [hl], l                                    ; $5e5c: $75
    daa                                           ; $5e5d: $27
    halt                                          ; $5e5e: $76
    ld h, l                                       ; $5e5f: $65
    ld bc, $6c61                                  ; $5e60: $01 $61 $6c
    ld [hl], d                                    ; $5e63: $72

jr_018_5e64:
    ld h, l                                       ; $5e64: $65
    ld h, c                                       ; $5e65: $61

jr_018_5e66:
    ld h, h                                       ; $5e66: $64
    ld a, c                                       ; $5e67: $79
    jr nz, jr_018_5ed1                            ; $5e68: $20 $67

    ld l, a                                       ; $5e6a: $6f

jr_018_5e6b:
    ld [hl], h                                    ; $5e6b: $74
    jr nz, jr_018_5ede                            ; $5e6c: $20 $70

    ld l, h                                       ; $5e6e: $6c
    ld h, c                                       ; $5e6f: $61
    ld l, [hl]                                    ; $5e70: $6e
    ld [hl], e                                    ; $5e71: $73
    ld bc, $6f66                                  ; $5e72: $01 $66 $6f
    ld [hl], d                                    ; $5e75: $72
    jr nz, jr_018_5ebc                            ; $5e76: $20 $44

    ld [hl], l                                    ; $5e78: $75
    ld l, [hl]                                    ; $5e79: $6e
    ld h, l                                       ; $5e7a: $65
    jr nz, jr_018_5ec0                            ; $5e7b: $20 $43

    ld l, h                                       ; $5e7d: $6c

jr_018_5e7e:
    ld [hl], l                                    ; $5e7e: $75
    ld h, d                                       ; $5e7f: $62
    ld l, $03                                     ; $5e80: $2e $03
    nop                                           ; $5e82: $00
    ld c, l                                       ; $5e83: $4d
    ld h, c                                       ; $5e84: $61
    ld [hl], d                                    ; $5e85: $72

jr_018_5e86:
    ld l, c                                       ; $5e86: $69
    ld l, a                                       ; $5e87: $6f
    ld l, [hl]                                    ; $5e88: $6e

jr_018_5e89:
    daa                                           ; $5e89: $27
    ld [hl], e                                    ; $5e8a: $73
    jr nz, jr_018_5ed0                            ; $5e8b: $20 $43

    ld l, b                                       ; $5e8d: $68
    ld h, c                                       ; $5e8e: $61
    ld l, l                                       ; $5e8f: $6d
    ld [hl], b                                    ; $5e90: $70
    ld bc, $6977                                  ; $5e91: $01 $77 $69
    ld l, [hl]                                    ; $5e94: $6e
    ld l, [hl]                                    ; $5e95: $6e
    ld l, c                                       ; $5e96: $69

jr_018_5e97:
    ld l, [hl]                                    ; $5e97: $6e
    ld h, a                                       ; $5e98: $67
    jr nz, @+$63                                  ; $5e99: $20 $61

    ld [hl], h                                    ; $5e9b: $74
    jr nz, @+$52                                  ; $5e9c: $20 $50

    ld h, c                                       ; $5e9e: $61
    ld l, h                                       ; $5e9f: $6c
    ld l, l                                       ; $5ea0: $6d
    ld bc, $6c43                                  ; $5ea1: $01 $43 $6c
    ld [hl], l                                    ; $5ea4: $75
    ld h, d                                       ; $5ea5: $62
    jr nz, jr_018_5f11                            ; $5ea6: $20 $69

jr_018_5ea8:
    ld [hl], e                                    ; $5ea8: $73
    jr nz, jr_018_5f0d                            ; $5ea9: $20 $62

    ld l, c                                       ; $5eab: $69

jr_018_5eac:
    ld h, a                                       ; $5eac: $67
    jr nz, jr_018_5f1d                            ; $5ead: $20 $6e

    ld h, l                                       ; $5eaf: $65
    ld [hl], a                                    ; $5eb0: $77
    ld [hl], e                                    ; $5eb1: $73
    ld hl, $4902                                  ; $5eb2: $21 $02 $49

jr_018_5eb5:
    jr nz, jr_018_5f1a                            ; $5eb5: $20 $63

    ld h, c                                       ; $5eb7: $61

jr_018_5eb8:
    ld l, [hl]                                    ; $5eb8: $6e
    jr nz, jr_018_5f2f                            ; $5eb9: $20 $74

    ld h, l                                       ; $5ebb: $65

jr_018_5ebc:
    ld l, h                                       ; $5ebc: $6c
    ld l, h                                       ; $5ebd: $6c
    jr nz, @+$7b                                  ; $5ebe: $20 $79

jr_018_5ec0:
    ld l, a                                       ; $5ec0: $6f
    ld [hl], l                                    ; $5ec1: $75
    daa                                           ; $5ec2: $27
    halt                                          ; $5ec3: $76
    ld h, l                                       ; $5ec4: $65
    ld bc, $6c61                                  ; $5ec5: $01 $61 $6c
    ld [hl], d                                    ; $5ec8: $72
    ld h, l                                       ; $5ec9: $65

jr_018_5eca:
    ld h, c                                       ; $5eca: $61
    ld h, h                                       ; $5ecb: $64
    ld a, c                                       ; $5ecc: $79
    jr nz, jr_018_5f36                            ; $5ecd: $20 $67

    ld l, a                                       ; $5ecf: $6f

jr_018_5ed0:
    ld [hl], h                                    ; $5ed0: $74

jr_018_5ed1:
    jr nz, jr_018_5f43                            ; $5ed1: $20 $70

    ld l, h                                       ; $5ed3: $6c

jr_018_5ed4:
    ld h, c                                       ; $5ed4: $61
    ld l, [hl]                                    ; $5ed5: $6e
    ld [hl], e                                    ; $5ed6: $73
    ld bc, $6f66                                  ; $5ed7: $01 $66 $6f
    ld [hl], d                                    ; $5eda: $72
    jr nz, jr_018_5f21                            ; $5edb: $20 $44

    ld [hl], l                                    ; $5edd: $75

jr_018_5ede:
    ld l, [hl]                                    ; $5ede: $6e
    ld h, l                                       ; $5edf: $65
    jr nz, @+$45                                  ; $5ee0: $20 $43

    ld l, h                                       ; $5ee2: $6c
    ld [hl], l                                    ; $5ee3: $75
    ld h, d                                       ; $5ee4: $62
    ld l, $03                                     ; $5ee5: $2e $03
    nop                                           ; $5ee7: $00
    ld c, [hl]                                    ; $5ee8: $4e
    ld l, c                                       ; $5ee9: $69
    ld h, e                                       ; $5eea: $63
    ld h, l                                       ; $5eeb: $65
    inc l                                         ; $5eec: $2c
    jr nz, jr_018_5ef6                            ; $5eed: $20 $07

    ld hl, $5901                                  ; $5eef: $21 $01 $59
    ld l, a                                       ; $5ef2: $6f
    ld [hl], l                                    ; $5ef3: $75
    jr nz, jr_018_5f66                            ; $5ef4: $20 $70

jr_018_5ef6:
    ld l, h                                       ; $5ef6: $6c
    ld h, c                                       ; $5ef7: $61
    ld h, e                                       ; $5ef8: $63
    ld h, l                                       ; $5ef9: $65
    ld h, h                                       ; $5efa: $64
    jr nz, jr_018_5f66                            ; $5efb: $20 $69

    ld l, [hl]                                    ; $5efd: $6e
    jr nz, jr_018_5f74                            ; $5efe: $20 $74

    ld l, b                                       ; $5f00: $68
    ld h, l                                       ; $5f01: $65
    ld bc, $6150                                  ; $5f02: $01 $50 $61
    ld l, h                                       ; $5f05: $6c
    ld l, l                                       ; $5f06: $6d
    jr nz, jr_018_5f5d                            ; $5f07: $20 $54

    ld l, a                                       ; $5f09: $6f
    ld [hl], l                                    ; $5f0a: $75
    ld [hl], d                                    ; $5f0b: $72
    ld l, [hl]                                    ; $5f0c: $6e

jr_018_5f0d:
    ld h, c                                       ; $5f0d: $61
    ld l, l                                       ; $5f0e: $6d
    ld h, l                                       ; $5f0f: $65
    ld l, [hl]                                    ; $5f10: $6e

jr_018_5f11:
    ld [hl], h                                    ; $5f11: $74
    ld hl, $4902                                  ; $5f12: $21 $02 $49
    jr nz, @+$69                                  ; $5f15: $20 $67

    ld [hl], l                                    ; $5f17: $75
    ld h, l                                       ; $5f18: $65
    ld [hl], e                                    ; $5f19: $73

jr_018_5f1a:
    ld [hl], e                                    ; $5f1a: $73
    jr nz, jr_018_5f94                            ; $5f1b: $20 $77

jr_018_5f1d:
    ld h, l                                       ; $5f1d: $65
    jr nz, jr_018_5f83                            ; $5f1e: $20 $63

    ld h, c                                       ; $5f20: $61

jr_018_5f21:
    ld l, [hl]                                    ; $5f21: $6e
    daa                                           ; $5f22: $27
    ld [hl], h                                    ; $5f23: $74
    ld bc, $6163                                  ; $5f24: $01 $63 $61
    ld l, h                                       ; $5f27: $6c
    ld l, h                                       ; $5f28: $6c
    jr nz, @+$7b                                  ; $5f29: $20 $79

    ld l, a                                       ; $5f2b: $6f
    ld [hl], l                                    ; $5f2c: $75
    jr nz, jr_018_5f90                            ; $5f2d: $20 $61

jr_018_5f2f:
    ld bc, $6562                                  ; $5f2f: $01 $62 $65
    ld h, a                                       ; $5f32: $67
    ld l, c                                       ; $5f33: $69
    ld l, [hl]                                    ; $5f34: $6e
    ld l, [hl]                                    ; $5f35: $6e

jr_018_5f36:
    ld h, l                                       ; $5f36: $65
    ld [hl], d                                    ; $5f37: $72
    jr nz, jr_018_5f9b                            ; $5f38: $20 $61

    ld l, [hl]                                    ; $5f3a: $6e
    ld a, c                                       ; $5f3b: $79
    ld l, l                                       ; $5f3c: $6d
    ld l, a                                       ; $5f3d: $6f
    ld [hl], d                                    ; $5f3e: $72
    ld h, l                                       ; $5f3f: $65
    ld hl, $0003                                  ; $5f40: $21 $03 $00

jr_018_5f43:
    ld b, a                                       ; $5f43: $47
    ld [hl], d                                    ; $5f44: $72
    ld h, l                                       ; $5f45: $65
    ld h, c                                       ; $5f46: $61
    ld [hl], h                                    ; $5f47: $74
    inc l                                         ; $5f48: $2c
    jr nz, jr_018_5f52                            ; $5f49: $20 $07

    ld hl, $5901                                  ; $5f4b: $21 $01 $59
    ld l, a                                       ; $5f4e: $6f
    ld [hl], l                                    ; $5f4f: $75
    jr nz, jr_018_5fc9                            ; $5f50: $20 $77

jr_018_5f52:
    ld l, a                                       ; $5f52: $6f
    ld l, [hl]                                    ; $5f53: $6e
    jr nz, @+$76                                  ; $5f54: $20 $74

    ld l, b                                       ; $5f56: $68
    ld h, l                                       ; $5f57: $65
    jr nz, jr_018_5faa                            ; $5f58: $20 $50

    ld h, c                                       ; $5f5a: $61
    ld l, h                                       ; $5f5b: $6c
    ld l, l                                       ; $5f5c: $6d

jr_018_5f5d:
    ld bc, $6f54                                  ; $5f5d: $01 $54 $6f
    ld [hl], l                                    ; $5f60: $75
    ld [hl], d                                    ; $5f61: $72
    ld l, [hl]                                    ; $5f62: $6e
    ld h, c                                       ; $5f63: $61
    ld l, l                                       ; $5f64: $6d
    ld h, l                                       ; $5f65: $65

jr_018_5f66:
    ld l, [hl]                                    ; $5f66: $6e
    ld [hl], h                                    ; $5f67: $74
    ld hl, $5702                                  ; $5f68: $21 $02 $57
    ld h, l                                       ; $5f6b: $65
    daa                                           ; $5f6c: $27
    ld l, h                                       ; $5f6d: $6c
    ld l, h                                       ; $5f6e: $6c
    jr nz, jr_018_5fd9                            ; $5f6f: $20 $68

    ld h, c                                       ; $5f71: $61
    halt                                          ; $5f72: $76
    ld h, l                                       ; $5f73: $65

jr_018_5f74:
    jr nz, jr_018_5fea                            ; $5f74: $20 $74

    ld l, a                                       ; $5f76: $6f
    jr nz, @+$65                                  ; $5f77: $20 $63

    ld h, c                                       ; $5f79: $61
    ld l, h                                       ; $5f7a: $6c
    ld l, h                                       ; $5f7b: $6c
    ld bc, $6f79                                  ; $5f7c: $01 $79 $6f
    ld [hl], l                                    ; $5f7f: $75
    jr nz, jr_018_5fc5                            ; $5f80: $20 $43

    ld l, h                                       ; $5f82: $6c

jr_018_5f83:
    ld [hl], l                                    ; $5f83: $75
    ld h, d                                       ; $5f84: $62
    jr nz, @+$45                                  ; $5f85: $20 $43

    ld l, b                                       ; $5f87: $68
    ld h, c                                       ; $5f88: $61
    ld l, l                                       ; $5f89: $6d
    ld [hl], b                                    ; $5f8a: $70
    ld bc, $7266                                  ; $5f8b: $01 $66 $72
    ld l, a                                       ; $5f8e: $6f
    ld l, l                                       ; $5f8f: $6d

jr_018_5f90:
    jr nz, jr_018_6000                            ; $5f90: $20 $6e

    ld l, a                                       ; $5f92: $6f
    ld [hl], a                                    ; $5f93: $77

jr_018_5f94:
    jr nz, jr_018_6005                            ; $5f94: $20 $6f

    ld l, [hl]                                    ; $5f96: $6e
    ld hl, $0003                                  ; $5f97: $21 $03 $00
    ld b, h                                       ; $5f9a: $44

jr_018_5f9b:
    ld [hl], l                                    ; $5f9b: $75
    ld l, [hl]                                    ; $5f9c: $6e
    ld h, l                                       ; $5f9d: $65
    jr nz, jr_018_5fe3                            ; $5f9e: $20 $43

    ld l, h                                       ; $5fa0: $6c
    ld [hl], l                                    ; $5fa1: $75
    ld h, d                                       ; $5fa2: $62
    jr nz, @+$6b                                  ; $5fa3: $20 $69

    ld [hl], e                                    ; $5fa5: $73
    ld bc, $2061                                  ; $5fa6: $01 $61 $20
    ld [hl], h                                    ; $5fa9: $74

jr_018_5faa:
    ld l, a                                       ; $5faa: $6f
    ld [hl], l                                    ; $5fab: $75
    ld h, a                                       ; $5fac: $67
    ld l, b                                       ; $5fad: $68
    jr nz, jr_018_6014                            ; $5fae: $20 $64

    ld h, l                                       ; $5fb0: $65
    ld [hl], e                                    ; $5fb1: $73
    ld h, l                                       ; $5fb2: $65
    ld [hl], d                                    ; $5fb3: $72
    ld [hl], h                                    ; $5fb4: $74
    jr nz, jr_018_6018                            ; $5fb5: $20 $61

    ld l, [hl]                                    ; $5fb7: $6e
    ld h, h                                       ; $5fb8: $64
    ld bc, $6f6d                                  ; $5fb9: $01 $6d $6f
    ld [hl], l                                    ; $5fbc: $75
    ld l, [hl]                                    ; $5fbd: $6e
    ld [hl], h                                    ; $5fbe: $74
    ld h, c                                       ; $5fbf: $61
    ld l, c                                       ; $5fc0: $69
    ld l, [hl]                                    ; $5fc1: $6e
    jr nz, jr_018_6027                            ; $5fc2: $20 $63

    ld l, a                                       ; $5fc4: $6f

jr_018_5fc5:
    ld [hl], l                                    ; $5fc5: $75
    ld [hl], d                                    ; $5fc6: $72
    ld [hl], e                                    ; $5fc7: $73
    ld h, l                                       ; $5fc8: $65

jr_018_5fc9:
    ld l, $03                                     ; $5fc9: $2e $03
    nop                                           ; $5fcb: $00
    ld c, c                                       ; $5fcc: $49
    daa                                           ; $5fcd: $27
    halt                                          ; $5fce: $76
    ld h, l                                       ; $5fcf: $65
    jr nz, jr_018_603a                            ; $5fd0: $20 $68

    ld h, l                                       ; $5fd2: $65
    ld h, c                                       ; $5fd3: $61
    ld [hl], d                                    ; $5fd4: $72
    ld h, h                                       ; $5fd5: $64
    jr nz, jr_018_6044                            ; $5fd6: $20 $6c

    ld l, a                                       ; $5fd8: $6f

jr_018_5fd9:
    ld h, [hl]                                    ; $5fd9: $66
    ld [hl], h                                    ; $5fda: $74
    ld bc, $6163                                  ; $5fdb: $01 $63 $61
    ld l, [hl]                                    ; $5fde: $6e
    jr nz, jr_018_6049                            ; $5fdf: $20 $68

    ld h, l                                       ; $5fe1: $65
    ld l, h                                       ; $5fe2: $6c

jr_018_5fe3:
    ld [hl], b                                    ; $5fe3: $70
    jr nz, jr_018_604f                            ; $5fe4: $20 $69

    ld l, [hl]                                    ; $5fe6: $6e
    jr nz, @+$76                                  ; $5fe7: $20 $74

    ld l, b                                       ; $5fe9: $68

jr_018_5fea:
    ld h, l                                       ; $5fea: $65
    ld bc, $7544                                  ; $5feb: $01 $44 $75
    ld l, [hl]                                    ; $5fee: $6e
    ld h, l                                       ; $5fef: $65
    jr nz, jr_018_6046                            ; $5ff0: $20 $54

    ld l, a                                       ; $5ff2: $6f
    ld [hl], l                                    ; $5ff3: $75
    ld [hl], d                                    ; $5ff4: $72
    ld l, [hl]                                    ; $5ff5: $6e
    ld h, c                                       ; $5ff6: $61
    ld l, l                                       ; $5ff7: $6d
    ld h, l                                       ; $5ff8: $65
    ld l, [hl]                                    ; $5ff9: $6e
    ld [hl], h                                    ; $5ffa: $74
    ld l, $03                                     ; $5ffb: $2e $03
    nop                                           ; $5ffd: $00
    ld d, a                                       ; $5ffe: $57
    ld l, b                                       ; $5fff: $68

jr_018_6000:
    ld h, l                                       ; $6000: $65
    ld l, [hl]                                    ; $6001: $6e
    jr nz, jr_018_607d                            ; $6002: $20 $79

    ld l, a                                       ; $6004: $6f

jr_018_6005:
    ld [hl], l                                    ; $6005: $75
    ld [hl], d                                    ; $6006: $72
    jr nz, @+$66                                  ; $6007: $20 $64

    ld [hl], d                                    ; $6009: $72
    ld l, c                                       ; $600a: $69
    halt                                          ; $600b: $76
    ld h, l                                       ; $600c: $65
    ld bc, $6e69                                  ; $600d: $01 $69 $6e
    ld h, e                                       ; $6010: $63
    ld [hl], d                                    ; $6011: $72
    ld h, l                                       ; $6012: $65
    ld h, c                                       ; $6013: $61

jr_018_6014:
    ld [hl], e                                    ; $6014: $73
    ld h, l                                       ; $6015: $65
    ld [hl], e                                    ; $6016: $73
    inc l                                         ; $6017: $2c

jr_018_6018:
    jr nz, jr_018_607d                            ; $6018: $20 $63

    ld l, a                                       ; $601a: $6f
    ld l, [hl]                                    ; $601b: $6e
    ld [hl], h                                    ; $601c: $74
    ld [hl], d                                    ; $601d: $72
    ld l, a                                       ; $601e: $6f
    ld l, h                                       ; $601f: $6c
    ld bc, $6163                                  ; $6020: $01 $63 $61
    ld l, [hl]                                    ; $6023: $6e
    jr nz, jr_018_6088                            ; $6024: $20 $62

    ld h, l                                       ; $6026: $65

jr_018_6027:
    jr nz, jr_018_608a                            ; $6027: $20 $61

    jr nz, jr_018_609b                            ; $6029: $20 $70

    ld [hl], d                                    ; $602b: $72
    ld l, a                                       ; $602c: $6f
    ld h, d                                       ; $602d: $62
    ld l, h                                       ; $602e: $6c
    ld h, l                                       ; $602f: $65
    ld l, l                                       ; $6030: $6d
    ld l, $02                                     ; $6031: $2e $02
    ld b, d                                       ; $6033: $42
    ld [hl], l                                    ; $6034: $75
    ld [hl], h                                    ; $6035: $74
    jr nz, @+$7b                                  ; $6036: $20 $79

    ld l, a                                       ; $6038: $6f
    ld [hl], l                                    ; $6039: $75

jr_018_603a:
    jr nz, jr_018_60aa                            ; $603a: $20 $6e

    ld h, l                                       ; $603c: $65
    ld h, l                                       ; $603d: $65
    ld h, h                                       ; $603e: $64
    jr nz, jr_018_60a2                            ; $603f: $20 $61

    ld bc, $6f6c                                  ; $6041: $01 $6c $6f

jr_018_6044:
    ld l, [hl]                                    ; $6044: $6e
    ld h, a                                       ; $6045: $67

jr_018_6046:
    jr nz, @+$66                                  ; $6046: $20 $64

    ld [hl], d                                    ; $6048: $72

jr_018_6049:
    ld l, c                                       ; $6049: $69
    halt                                          ; $604a: $76
    ld h, l                                       ; $604b: $65
    inc l                                         ; $604c: $2c
    jr nz, @+$75                                  ; $604d: $20 $73

jr_018_604f:
    ld l, a                                       ; $604f: $6f
    jr nz, jr_018_60bb                            ; $6050: $20 $69

    ld [hl], h                                    ; $6052: $74
    daa                                           ; $6053: $27
    ld [hl], e                                    ; $6054: $73
    ld bc, $6e6f                                  ; $6055: $01 $6f $6e
    ld h, l                                       ; $6058: $65
    jr nz, @+$71                                  ; $6059: $20 $6f

    ld [hl], d                                    ; $605b: $72
    jr nz, @+$76                                  ; $605c: $20 $74

    ld l, b                                       ; $605e: $68
    ld h, l                                       ; $605f: $65
    jr nz, @+$71                                  ; $6060: $20 $6f

    ld [hl], h                                    ; $6062: $74
    ld l, b                                       ; $6063: $68
    ld h, l                                       ; $6064: $65
    ld [hl], d                                    ; $6065: $72
    ld l, $03                                     ; $6066: $2e $03
    nop                                           ; $6068: $00
    ld e, c                                       ; $6069: $59
    ld l, a                                       ; $606a: $6f
    ld [hl], l                                    ; $606b: $75
    jr nz, jr_018_60dc                            ; $606c: $20 $6e

    ld h, l                                       ; $606e: $65
    ld h, l                                       ; $606f: $65
    ld h, h                                       ; $6070: $64
    jr nz, jr_018_60d5                            ; $6071: $20 $62

    ld l, c                                       ; $6073: $69
    ld [hl], d                                    ; $6074: $72
    ld h, h                                       ; $6075: $64
    ld l, c                                       ; $6076: $69
    ld h, l                                       ; $6077: $65
    ld [hl], e                                    ; $6078: $73
    ld bc, $6f66                                  ; $6079: $01 $66 $6f
    ld [hl], d                                    ; $607c: $72

jr_018_607d:
    jr nz, @+$6e                                  ; $607d: $20 $6c

    ld l, a                                       ; $607f: $6f
    ld [hl], a                                    ; $6080: $77
    ld h, l                                       ; $6081: $65
    ld [hl], d                                    ; $6082: $72
    jr nz, @+$75                                  ; $6083: $20 $73

    ld h, e                                       ; $6085: $63
    ld l, a                                       ; $6086: $6f
    ld [hl], d                                    ; $6087: $72

jr_018_6088:
    ld h, l                                       ; $6088: $65
    ld [hl], e                                    ; $6089: $73

jr_018_608a:
    ld l, $01                                     ; $608a: $2e $01
    ld c, c                                       ; $608c: $49
    ld h, [hl]                                    ; $608d: $66
    jr nz, jr_018_60f2                            ; $608e: $20 $62

    ld l, c                                       ; $6090: $69
    ld [hl], d                                    ; $6091: $72
    ld h, h                                       ; $6092: $64
    ld l, c                                       ; $6093: $69
    ld h, l                                       ; $6094: $65
    ld [hl], e                                    ; $6095: $73
    jr nz, jr_018_610f                            ; $6096: $20 $77

    ld h, l                                       ; $6098: $65
    ld [hl], d                                    ; $6099: $72
    ld h, l                                       ; $609a: $65

jr_018_609b:
    jr nz, jr_018_60fe                            ; $609b: $20 $61

    ld [bc], a                                    ; $609d: $02
    ld [hl], e                                    ; $609e: $73
    ld [hl], l                                    ; $609f: $75
    ld [hl], d                                    ; $60a0: $72
    ld h, l                                       ; $60a1: $65

jr_018_60a2:
    jr nz, jr_018_6118                            ; $60a2: $20 $74

    ld l, b                                       ; $60a4: $68
    ld l, c                                       ; $60a5: $69
    ld l, [hl]                                    ; $60a6: $6e
    ld h, a                                       ; $60a7: $67
    jr nz, jr_018_6119                            ; $60a8: $20 $6f

jr_018_60aa:
    ld l, [hl]                                    ; $60aa: $6e
    jr nz, jr_018_6119                            ; $60ab: $20 $6c

    ld l, a                                       ; $60ad: $6f
    ld l, [hl]                                    ; $60ae: $6e
    ld h, a                                       ; $60af: $67
    ld bc, $6170                                  ; $60b0: $01 $70 $61
    ld [hl], d                                    ; $60b3: $72
    jr nz, jr_018_611c                            ; $60b4: $20 $66

    ld l, c                                       ; $60b6: $69
    halt                                          ; $60b7: $76
    ld h, l                                       ; $60b8: $65
    ld [hl], e                                    ; $60b9: $73
    inc l                                         ; $60ba: $2c

jr_018_60bb:
    jr nz, @+$69                                  ; $60bb: $20 $67

    ld l, a                                       ; $60bd: $6f
    ld l, h                                       ; $60be: $6c
    ld h, [hl]                                    ; $60bf: $66
    ld bc, $6f77                                  ; $60c0: $01 $77 $6f
    ld [hl], l                                    ; $60c3: $75
    ld l, h                                       ; $60c4: $6c
    ld h, h                                       ; $60c5: $64
    jr nz, @+$64                                  ; $60c6: $20 $62

    ld h, l                                       ; $60c8: $65
    jr nz, @+$67                                  ; $60c9: $20 $65

    ld h, c                                       ; $60cb: $61
    ld [hl], e                                    ; $60cc: $73
    ld l, c                                       ; $60cd: $69
    ld h, l                                       ; $60ce: $65
    ld [hl], d                                    ; $60cf: $72
    ld hl, $0003                                  ; $60d0: $21 $03 $00
    ld e, c                                       ; $60d3: $59
    ld l, a                                       ; $60d4: $6f

jr_018_60d5:
    ld [hl], l                                    ; $60d5: $75
    daa                                           ; $60d6: $27
    halt                                          ; $60d7: $76
    ld h, l                                       ; $60d8: $65
    jr nz, jr_018_6142                            ; $60d9: $20 $67

    ld l, a                                       ; $60db: $6f

jr_018_60dc:
    ld [hl], h                                    ; $60dc: $74
    ld [hl], h                                    ; $60dd: $74
    ld h, c                                       ; $60de: $61
    jr nz, jr_018_6151                            ; $60df: $20 $70

    ld l, h                                       ; $60e1: $6c
    ld h, c                                       ; $60e2: $61
    ld l, [hl]                                    ; $60e3: $6e
    ld bc, $6877                                  ; $60e4: $01 $77 $68
    ld l, c                                       ; $60e7: $69
    ld h, e                                       ; $60e8: $63
    ld l, b                                       ; $60e9: $68
    jr nz, jr_018_6154                            ; $60ea: $20 $68

    ld l, a                                       ; $60ec: $6f
    ld l, h                                       ; $60ed: $6c
    ld h, l                                       ; $60ee: $65
    ld [hl], e                                    ; $60ef: $73
    jr nz, jr_018_616b                            ; $60f0: $20 $79

jr_018_60f2:
    ld l, a                                       ; $60f2: $6f
    ld [hl], l                                    ; $60f3: $75
    daa                                           ; $60f4: $27
    ld l, h                                       ; $60f5: $6c
    ld l, h                                       ; $60f6: $6c
    ld bc, $7461                                  ; $60f7: $01 $61 $74
    ld [hl], h                                    ; $60fa: $74
    ld h, c                                       ; $60fb: $61
    ld h, e                                       ; $60fc: $63
    ld l, e                                       ; $60fd: $6b

jr_018_60fe:
    jr nz, jr_018_6161                            ; $60fe: $20 $61

    ld l, [hl]                                    ; $6100: $6e
    ld h, h                                       ; $6101: $64
    jr nz, jr_018_6168                            ; $6102: $20 $64

    ld h, l                                       ; $6104: $65
    ld h, [hl]                                    ; $6105: $66
    ld h, l                                       ; $6106: $65
    ld l, [hl]                                    ; $6107: $6e
    ld h, h                                       ; $6108: $64
    ld l, $03                                     ; $6109: $2e $03
    nop                                           ; $610b: $00
    ld c, c                                       ; $610c: $49
    ld [hl], h                                    ; $610d: $74
    daa                                           ; $610e: $27

jr_018_610f:
    ld [hl], e                                    ; $610f: $73
    jr nz, jr_018_6186                            ; $6110: $20 $74

    ld [hl], d                                    ; $6112: $72
    ld [hl], l                                    ; $6113: $75
    ld h, l                                       ; $6114: $65
    jr nz, jr_018_618e                            ; $6115: $20 $77

    ld l, b                                       ; $6117: $68

jr_018_6118:
    ld h, c                                       ; $6118: $61

jr_018_6119:
    ld [hl], h                                    ; $6119: $74
    jr nz, jr_018_6190                            ; $611a: $20 $74

jr_018_611c:
    ld l, b                                       ; $611c: $68
    ld h, l                                       ; $611d: $65
    ld a, c                                       ; $611e: $79
    ld bc, $6173                                  ; $611f: $01 $73 $61
    ld a, c                                       ; $6122: $79
    jr nz, jr_018_6186                            ; $6123: $20 $61

    ld h, d                                       ; $6125: $62
    ld l, a                                       ; $6126: $6f
    ld [hl], l                                    ; $6127: $75
    ld [hl], h                                    ; $6128: $74
    jr nz, @+$71                                  ; $6129: $20 $6f

    halt                                          ; $612b: $76
    ld h, l                                       ; $612c: $65
    ld [hl], d                                    ; $612d: $72
    dec l                                         ; $612e: $2d
    ld bc, $6f63                                  ; $612f: $01 $63 $6f
    ld l, [hl]                                    ; $6132: $6e
    ld h, [hl]                                    ; $6133: $66
    ld l, c                                       ; $6134: $69
    ld h, h                                       ; $6135: $64
    ld h, l                                       ; $6136: $65
    ld l, [hl]                                    ; $6137: $6e
    ld h, e                                       ; $6138: $63
    ld h, l                                       ; $6139: $65
    jr nz, @+$6e                                  ; $613a: $20 $6c

    ld h, l                                       ; $613c: $65
    ld h, c                                       ; $613d: $61
    ld h, h                                       ; $613e: $64
    ld l, c                                       ; $613f: $69
    ld l, [hl]                                    ; $6140: $6e
    ld h, a                                       ; $6141: $67

jr_018_6142:
    ld [bc], a                                    ; $6142: $02
    ld [hl], h                                    ; $6143: $74
    ld l, a                                       ; $6144: $6f
    jr nz, jr_018_61b4                            ; $6145: $20 $6d

    ld l, c                                       ; $6147: $69
    ld [hl], e                                    ; $6148: $73
    ld [hl], h                                    ; $6149: $74
    ld h, c                                       ; $614a: $61
    ld l, e                                       ; $614b: $6b
    ld h, l                                       ; $614c: $65
    ld [hl], e                                    ; $614d: $73
    ld l, $01                                     ; $614e: $2e $01
    ld e, c                                       ; $6150: $59

jr_018_6151:
    ld l, a                                       ; $6151: $6f
    ld [hl], l                                    ; $6152: $75
    daa                                           ; $6153: $27

jr_018_6154:
    halt                                          ; $6154: $76
    ld h, l                                       ; $6155: $65
    jr nz, @+$69                                  ; $6156: $20 $67

    ld l, a                                       ; $6158: $6f
    ld [hl], h                                    ; $6159: $74
    ld [hl], h                                    ; $615a: $74
    ld h, c                                       ; $615b: $61
    jr nz, @+$6a                                  ; $615c: $20 $68

    ld h, c                                       ; $615e: $61
    halt                                          ; $615f: $76
    ld h, l                                       ; $6160: $65

jr_018_6161:
    ld bc, $2061                                  ; $6161: $01 $61 $20
    ld [hl], a                                    ; $6164: $77
    ld h, l                                       ; $6165: $65
    ld l, h                                       ; $6166: $6c
    ld l, h                                       ; $6167: $6c

jr_018_6168:
    dec l                                         ; $6168: $2d
    ld l, h                                       ; $6169: $6c
    ld h, c                                       ; $616a: $61

jr_018_616b:
    ld l, c                                       ; $616b: $69
    ld h, h                                       ; $616c: $64
    jr nz, jr_018_61df                            ; $616d: $20 $70

    ld l, h                                       ; $616f: $6c
    ld h, c                                       ; $6170: $61
    ld l, [hl]                                    ; $6171: $6e
    ld hl, $0003                                  ; $6172: $21 $03 $00
    ld e, c                                       ; $6175: $59
    ld l, a                                       ; $6176: $6f
    ld [hl], l                                    ; $6177: $75
    jr nz, jr_018_61ea                            ; $6178: $20 $70

    ld l, h                                       ; $617a: $6c
    ld h, c                                       ; $617b: $61
    ld h, e                                       ; $617c: $63
    ld h, l                                       ; $617d: $65
    ld h, h                                       ; $617e: $64
    jr nz, jr_018_61e2                            ; $617f: $20 $61

    ld [hl], h                                    ; $6181: $74
    jr nz, jr_018_61d4                            ; $6182: $20 $50

    ld h, c                                       ; $6184: $61
    ld l, h                                       ; $6185: $6c

jr_018_6186:
    ld l, l                                       ; $6186: $6d
    ld bc, $6c43                                  ; $6187: $01 $43 $6c
    ld [hl], l                                    ; $618a: $75
    ld h, d                                       ; $618b: $62
    jr nz, @+$76                                  ; $618c: $20 $74

jr_018_618e:
    ld l, a                                       ; $618e: $6f
    ld l, a                                       ; $618f: $6f

jr_018_6190:
    ccf                                           ; $6190: $3f
    jr nz, jr_018_61d4                            ; $6191: $20 $41

    ld l, [hl]                                    ; $6193: $6e
    ld h, h                                       ; $6194: $64
    jr nz, jr_018_6200                            ; $6195: $20 $69

    ld l, [hl]                                    ; $6197: $6e
    ld bc, $6f6e                                  ; $6198: $01 $6e $6f
    jr nz, jr_018_6211                            ; $619b: $20 $74

    ld l, c                                       ; $619d: $69
    ld l, l                                       ; $619e: $6d
    ld h, l                                       ; $619f: $65
    jr nz, jr_018_6203                            ; $61a0: $20 $61

    ld [hl], h                                    ; $61a2: $74
    jr nz, jr_018_6206                            ; $61a3: $20 $61

    ld l, h                                       ; $61a5: $6c
    ld l, h                                       ; $61a6: $6c
    ld hl, $0003                                  ; $61a7: $21 $03 $00
    ld d, e                                       ; $61aa: $53
    ld l, a                                       ; $61ab: $6f
    inc l                                         ; $61ac: $2c
    jr nz, jr_018_6228                            ; $61ad: $20 $79

    ld l, a                                       ; $61af: $6f
    ld [hl], l                                    ; $61b0: $75
    daa                                           ; $61b1: $27
    ld [hl], d                                    ; $61b2: $72
    ld h, l                                       ; $61b3: $65

jr_018_61b4:
    jr nz, jr_018_6224                            ; $61b4: $20 $6e

    ld l, a                                       ; $61b6: $6f
    ld [hl], a                                    ; $61b7: $77
    ld bc, $6562                                  ; $61b8: $01 $62 $65
    ld l, c                                       ; $61bb: $69
    ld l, [hl]                                    ; $61bc: $6e
    ld h, a                                       ; $61bd: $67
    jr nz, jr_018_6223                            ; $61be: $20 $63

    ld h, c                                       ; $61c0: $61
    ld l, h                                       ; $61c1: $6c
    ld l, h                                       ; $61c2: $6c
    ld h, l                                       ; $61c3: $65
    ld h, h                                       ; $61c4: $64
    jr nz, @+$52                                  ; $61c5: $20 $50

    ld h, c                                       ; $61c7: $61
    ld l, h                                       ; $61c8: $6c
    ld l, l                                       ; $61c9: $6d
    ld bc, $6843                                  ; $61ca: $01 $43 $68
    ld h, c                                       ; $61cd: $61
    ld l, l                                       ; $61ce: $6d
    ld [hl], b                                    ; $61cf: $70
    inc l                                         ; $61d0: $2c
    jr nz, @+$09                                  ; $61d1: $20 $07

    ccf                                           ; $61d3: $3f

jr_018_61d4:
    inc bc                                        ; $61d4: $03
    nop                                           ; $61d5: $00
    ld c, a                                       ; $61d6: $4f
    ld l, b                                       ; $61d7: $68
    inc l                                         ; $61d8: $2c
    jr nz, jr_018_623c                            ; $61d9: $20 $61

    jr nz, jr_018_6220                            ; $61db: $20 $43

    ld l, h                                       ; $61dd: $6c
    ld [hl], l                                    ; $61de: $75

jr_018_61df:
    ld h, d                                       ; $61df: $62
    jr nz, @+$45                                  ; $61e0: $20 $43

jr_018_61e2:
    ld l, b                                       ; $61e2: $68
    ld h, c                                       ; $61e3: $61
    ld l, l                                       ; $61e4: $6d
    ld [hl], b                                    ; $61e5: $70
    ld hl, $5001                                  ; $61e6: $21 $01 $50
    ld l, h                                       ; $61e9: $6c

jr_018_61ea:
    ld h, c                                       ; $61ea: $61
    ld a, c                                       ; $61eb: $79
    ld l, c                                       ; $61ec: $69
    ld l, [hl]                                    ; $61ed: $6e
    ld h, a                                       ; $61ee: $67
    jr nz, jr_018_6252                            ; $61ef: $20 $61

    jr nz, jr_018_6240                            ; $61f1: $20 $4d

    ld h, c                                       ; $61f3: $61
    ld [hl], h                                    ; $61f4: $74
    ld h, e                                       ; $61f5: $63
    ld l, b                                       ; $61f6: $68
    ld bc, $6147                                  ; $61f7: $01 $47 $61
    ld l, l                                       ; $61fa: $6d
    ld h, l                                       ; $61fb: $65
    inc l                                         ; $61fc: $2c
    jr nz, jr_018_6260                            ; $61fd: $20 $61

    ld [hl], d                                    ; $61ff: $72

jr_018_6200:
    ld h, l                                       ; $6200: $65
    jr nz, jr_018_627c                            ; $6201: $20 $79

jr_018_6203:
    ld l, a                                       ; $6203: $6f
    ld [hl], l                                    ; $6204: $75
    ccf                                           ; $6205: $3f

jr_018_6206:
    inc bc                                        ; $6206: $03
    nop                                           ; $6207: $00
    ld b, h                                       ; $6208: $44
    ld [hl], l                                    ; $6209: $75
    ld l, [hl]                                    ; $620a: $6e
    ld h, l                                       ; $620b: $65
    jr nz, jr_018_6251                            ; $620c: $20 $43

    ld l, h                                       ; $620e: $6c
    ld [hl], l                                    ; $620f: $75
    ld h, d                                       ; $6210: $62

jr_018_6211:
    daa                                           ; $6211: $27
    ld [hl], e                                    ; $6212: $73
    jr nz, jr_018_6288                            ; $6213: $20 $73

    ld l, a                                       ; $6215: $6f
    ld bc, $6f74                                  ; $6216: $01 $74 $6f
    ld [hl], l                                    ; $6219: $75
    ld h, a                                       ; $621a: $67
    ld l, b                                       ; $621b: $68
    inc l                                         ; $621c: $2c
    jr nz, jr_018_6298                            ; $621d: $20 $79

    ld l, a                                       ; $621f: $6f

jr_018_6220:
    ld [hl], l                                    ; $6220: $75
    daa                                           ; $6221: $27
    ld l, h                                       ; $6222: $6c

jr_018_6223:
    ld l, h                                       ; $6223: $6c

jr_018_6224:
    jr nz, jr_018_6294                            ; $6224: $20 $6e

    ld h, l                                       ; $6226: $65
    ld h, l                                       ; $6227: $65

jr_018_6228:
    ld h, h                                       ; $6228: $64
    ld bc, $7270                                  ; $6229: $01 $70 $72
    ld h, c                                       ; $622c: $61
    ld h, e                                       ; $622d: $63
    ld [hl], h                                    ; $622e: $74
    ld l, c                                       ; $622f: $69
    ld h, e                                       ; $6230: $63
    ld h, l                                       ; $6231: $65
    jr nz, jr_018_62a6                            ; $6232: $20 $72

    ld l, a                                       ; $6234: $6f
    ld [hl], l                                    ; $6235: $75
    ld l, [hl]                                    ; $6236: $6e
    ld h, h                                       ; $6237: $64
    ld [hl], e                                    ; $6238: $73
    ld l, $03                                     ; $6239: $2e $03
    nop                                           ; $623b: $00

jr_018_623c:
    ld c, c                                       ; $623c: $49
    ld [hl], h                                    ; $623d: $74
    daa                                           ; $623e: $27
    ld [hl], e                                    ; $623f: $73

jr_018_6240:
    jr nz, jr_018_6249                            ; $6240: $20 $07

    ld hl, $4901                                  ; $6242: $21 $01 $49
    jr nz, jr_018_62af                            ; $6245: $20 $68

    ld h, l                                       ; $6247: $65
    ld h, c                                       ; $6248: $61

jr_018_6249:
    ld [hl], d                                    ; $6249: $72
    ld h, h                                       ; $624a: $64
    jr nz, jr_018_62c6                            ; $624b: $20 $79

    ld l, a                                       ; $624d: $6f
    ld [hl], l                                    ; $624e: $75
    jr nz, jr_018_62c1                            ; $624f: $20 $70

jr_018_6251:
    ld l, h                                       ; $6251: $6c

jr_018_6252:
    ld h, c                                       ; $6252: $61
    ld h, e                                       ; $6253: $63
    ld h, l                                       ; $6254: $65
    ld h, h                                       ; $6255: $64
    ld bc, $7461                                  ; $6256: $01 $61 $74
    jr nz, jr_018_629f                            ; $6259: $20 $44

    ld [hl], l                                    ; $625b: $75
    ld l, [hl]                                    ; $625c: $6e
    ld h, l                                       ; $625d: $65
    jr nz, jr_018_62a3                            ; $625e: $20 $43

jr_018_6260:
    ld l, h                                       ; $6260: $6c
    ld [hl], l                                    ; $6261: $75
    ld h, d                                       ; $6262: $62
    ld hl, $4202                                  ; $6263: $21 $02 $42
    ld h, l                                       ; $6266: $65
    ld l, c                                       ; $6267: $69
    ld l, [hl]                                    ; $6268: $6e
    ld h, a                                       ; $6269: $67
    jr nz, jr_018_62d3                            ; $626a: $20 $67

    ld l, a                                       ; $626c: $6f
    ld l, a                                       ; $626d: $6f
    ld h, h                                       ; $626e: $64
    jr nz, jr_018_62d6                            ; $626f: $20 $65

    ld l, [hl]                                    ; $6271: $6e
    ld l, a                                       ; $6272: $6f
    ld [hl], l                                    ; $6273: $75
    ld h, a                                       ; $6274: $67
    ld l, b                                       ; $6275: $68
    ld bc, $6f74                                  ; $6276: $01 $74 $6f
    jr nz, @+$72                                  ; $6279: $20 $70

    ld l, h                                       ; $627b: $6c

jr_018_627c:
    ld h, c                                       ; $627c: $61
    ld h, e                                       ; $627d: $63
    ld h, l                                       ; $627e: $65
    jr nz, jr_018_62ea                            ; $627f: $20 $69

    ld [hl], e                                    ; $6281: $73
    jr nz, jr_018_62f6                            ; $6282: $20 $72

    ld h, l                                       ; $6284: $65
    ld h, c                                       ; $6285: $61
    ld l, h                                       ; $6286: $6c
    ld l, h                                       ; $6287: $6c

jr_018_6288:
    ld a, c                                       ; $6288: $79
    ld bc, $6d61                                  ; $6289: $01 $61 $6d
    ld h, c                                       ; $628c: $61
    ld a, d                                       ; $628d: $7a
    ld l, c                                       ; $628e: $69
    ld l, [hl]                                    ; $628f: $6e
    ld h, a                                       ; $6290: $67
    ld hl, $0003                                  ; $6291: $21 $03 $00

jr_018_6294:
    ld c, c                                       ; $6294: $49
    ld [hl], h                                    ; $6295: $74
    daa                                           ; $6296: $27
    ld [hl], e                                    ; $6297: $73

jr_018_6298:
    jr nz, jr_018_62a1                            ; $6298: $20 $07

    ld hl, $4901                                  ; $629a: $21 $01 $49
    jr nz, jr_018_6307                            ; $629d: $20 $68

jr_018_629f:
    ld h, l                                       ; $629f: $65
    ld h, c                                       ; $62a0: $61

jr_018_62a1:
    ld [hl], d                                    ; $62a1: $72
    ld h, h                                       ; $62a2: $64

jr_018_62a3:
    jr nz, @+$7b                                  ; $62a3: $20 $79

    ld l, a                                       ; $62a5: $6f

jr_018_62a6:
    ld [hl], l                                    ; $62a6: $75
    jr nz, jr_018_6320                            ; $62a7: $20 $77

    ld l, a                                       ; $62a9: $6f
    ld l, [hl]                                    ; $62aa: $6e
    ld bc, $6874                                  ; $62ab: $01 $74 $68
    ld h, l                                       ; $62ae: $65

jr_018_62af:
    jr nz, @+$46                                  ; $62af: $20 $44

    ld [hl], l                                    ; $62b1: $75
    ld l, [hl]                                    ; $62b2: $6e
    ld h, l                                       ; $62b3: $65
    jr nz, @+$56                                  ; $62b4: $20 $54

    ld l, a                                       ; $62b6: $6f
    ld [hl], l                                    ; $62b7: $75
    ld [hl], d                                    ; $62b8: $72
    ld l, [hl]                                    ; $62b9: $6e
    ld h, l                                       ; $62ba: $65
    ld a, c                                       ; $62bb: $79
    ld hl, $4902                                  ; $62bc: $21 $02 $49
    daa                                           ; $62bf: $27
    ld l, l                                       ; $62c0: $6d

jr_018_62c1:
    jr nz, jr_018_6337                            ; $62c1: $20 $74

    ld l, a                                       ; $62c3: $6f
    ld [hl], h                                    ; $62c4: $74
    ld h, c                                       ; $62c5: $61

jr_018_62c6:
    ld l, h                                       ; $62c6: $6c
    ld l, h                                       ; $62c7: $6c
    ld a, c                                       ; $62c8: $79
    ld bc, $6873                                  ; $62c9: $01 $73 $68
    ld l, a                                       ; $62cc: $6f
    ld h, e                                       ; $62cd: $63
    ld l, e                                       ; $62ce: $6b
    ld h, l                                       ; $62cf: $65
    ld h, h                                       ; $62d0: $64
    jr nz, jr_018_6347                            ; $62d1: $20 $74

jr_018_62d3:
    ld l, b                                       ; $62d3: $68
    ld h, c                                       ; $62d4: $61
    ld [hl], h                                    ; $62d5: $74

jr_018_62d6:
    jr nz, @+$7b                                  ; $62d6: $20 $79

    ld l, a                                       ; $62d8: $6f
    ld [hl], l                                    ; $62d9: $75
    ld bc, $6f63                                  ; $62da: $01 $63 $6f
    ld [hl], l                                    ; $62dd: $75
    ld l, h                                       ; $62de: $6c
    ld h, h                                       ; $62df: $64
    jr nz, jr_018_6359                            ; $62e0: $20 $77

    ld l, c                                       ; $62e2: $69
    ld l, [hl]                                    ; $62e3: $6e
    ld hl, $0003                                  ; $62e4: $21 $03 $00
    ld e, c                                       ; $62e7: $59
    ld l, a                                       ; $62e8: $6f
    ld [hl], l                                    ; $62e9: $75

jr_018_62ea:
    jr nz, jr_018_635c                            ; $62ea: $20 $70

    ld l, h                                       ; $62ec: $6c
    ld h, c                                       ; $62ed: $61
    ld h, e                                       ; $62ee: $63
    ld h, l                                       ; $62ef: $65
    ld h, h                                       ; $62f0: $64
    jr nz, jr_018_6354                            ; $62f1: $20 $61

    ld [hl], h                                    ; $62f3: $74
    jr nz, jr_018_633a                            ; $62f4: $20 $44

jr_018_62f6:
    ld [hl], l                                    ; $62f6: $75
    ld l, [hl]                                    ; $62f7: $6e
    ld h, l                                       ; $62f8: $65
    ld bc, $6c43                                  ; $62f9: $01 $43 $6c
    ld [hl], l                                    ; $62fc: $75
    ld h, d                                       ; $62fd: $62
    ccf                                           ; $62fe: $3f
    jr nz, jr_018_6355                            ; $62ff: $20 $54

    ld l, a                                       ; $6301: $6f
    ld l, a                                       ; $6302: $6f
    jr nz, jr_018_6368                            ; $6303: $20 $63

    ld l, a                                       ; $6305: $6f
    ld l, a                                       ; $6306: $6f

jr_018_6307:
    ld l, h                                       ; $6307: $6c
    inc l                                         ; $6308: $2c
    ld bc, $2107                                  ; $6309: $01 $07 $21
    ld [bc], a                                    ; $630c: $02
    ld b, c                                       ; $630d: $41
    ld l, [hl]                                    ; $630e: $6e
    ld h, h                                       ; $630f: $64
    jr nz, jr_018_6386                            ; $6310: $20 $74

    ld l, a                                       ; $6312: $6f
    jr nz, jr_018_6389                            ; $6313: $20 $74

    ld l, b                                       ; $6315: $68
    ld l, c                                       ; $6316: $69
    ld l, [hl]                                    ; $6317: $6e
    ld l, e                                       ; $6318: $6b
    inc l                                         ; $6319: $2c
    jr nz, jr_018_6365                            ; $631a: $20 $49

    ld bc, $6874                                  ; $631c: $01 $74 $68
    ld l, a                                       ; $631f: $6f

jr_018_6320:
    ld [hl], l                                    ; $6320: $75
    ld h, a                                       ; $6321: $67
    ld l, b                                       ; $6322: $68
    ld [hl], h                                    ; $6323: $74
    jr nz, @+$71                                  ; $6324: $20 $6f

    ld h, [hl]                                    ; $6326: $66
    jr nz, jr_018_63a2                            ; $6327: $20 $79

    ld l, a                                       ; $6329: $6f
    ld [hl], l                                    ; $632a: $75
    jr nz, jr_018_638e                            ; $632b: $20 $61

    ld [hl], e                                    ; $632d: $73
    ld bc, $2061                                  ; $632e: $01 $61 $20
    ld [hl], d                                    ; $6331: $72
    ld l, a                                       ; $6332: $6f
    ld l, a                                       ; $6333: $6f
    ld l, e                                       ; $6334: $6b
    ld l, c                                       ; $6335: $69
    ld h, l                                       ; $6336: $65

jr_018_6337:
    ld hl, $0003                                  ; $6337: $21 $03 $00

jr_018_633a:
    ld d, e                                       ; $633a: $53
    ld l, a                                       ; $633b: $6f
    jr nz, jr_018_63b7                            ; $633c: $20 $79

    ld l, a                                       ; $633e: $6f
    ld [hl], l                                    ; $633f: $75
    daa                                           ; $6340: $27
    halt                                          ; $6341: $76
    ld h, l                                       ; $6342: $65
    jr nz, jr_018_63bc                            ; $6343: $20 $77

    ld l, a                                       ; $6345: $6f
    ld l, [hl]                                    ; $6346: $6e

jr_018_6347:
    jr nz, jr_018_63bd                            ; $6347: $20 $74

    ld l, b                                       ; $6349: $68
    ld h, l                                       ; $634a: $65
    ld bc, $7544                                  ; $634b: $01 $44 $75
    ld l, [hl]                                    ; $634e: $6e
    ld h, l                                       ; $634f: $65
    jr nz, jr_018_63a6                            ; $6350: $20 $54

    ld l, a                                       ; $6352: $6f
    ld [hl], l                                    ; $6353: $75

jr_018_6354:
    ld [hl], d                                    ; $6354: $72

jr_018_6355:
    ld l, [hl]                                    ; $6355: $6e
    ld h, l                                       ; $6356: $65
    ld a, c                                       ; $6357: $79
    inc l                                         ; $6358: $2c

jr_018_6359:
    jr nz, jr_018_63cf                            ; $6359: $20 $74

    ld l, a                                       ; $635b: $6f

jr_018_635c:
    ld l, a                                       ; $635c: $6f
    ccf                                           ; $635d: $3f
    ld bc, $2049                                  ; $635e: $01 $49 $20
    ld h, e                                       ; $6361: $63
    ld h, c                                       ; $6362: $61
    ld l, [hl]                                    ; $6363: $6e
    daa                                           ; $6364: $27

jr_018_6365:
    ld [hl], h                                    ; $6365: $74
    jr nz, jr_018_63ca                            ; $6366: $20 $62

jr_018_6368:
    ld h, l                                       ; $6368: $65
    ld l, h                                       ; $6369: $6c
    ld l, c                                       ; $636a: $69
    ld h, l                                       ; $636b: $65
    halt                                          ; $636c: $76
    ld h, l                                       ; $636d: $65
    ld [bc], a                                    ; $636e: $02
    ld [hl], e                                    ; $636f: $73
    ld l, a                                       ; $6370: $6f
    ld l, l                                       ; $6371: $6d
    ld h, l                                       ; $6372: $65
    ld l, a                                       ; $6373: $6f
    ld l, [hl]                                    ; $6374: $6e
    ld h, l                                       ; $6375: $65
    jr nz, jr_018_63de                            ; $6376: $20 $66

    ld [hl], d                                    ; $6378: $72
    ld l, a                                       ; $6379: $6f
    ld l, l                                       ; $637a: $6d
    ld bc, $614d                                  ; $637b: $01 $4d $61
    ld [hl], d                                    ; $637e: $72
    ld l, c                                       ; $637f: $69
    ld l, a                                       ; $6380: $6f
    ld l, [hl]                                    ; $6381: $6e
    jr nz, @+$45                                  ; $6382: $20 $43

    ld l, h                                       ; $6384: $6c
    ld [hl], l                                    ; $6385: $75

jr_018_6386:
    ld h, d                                       ; $6386: $62
    jr nz, jr_018_6400                            ; $6387: $20 $77

jr_018_6389:
    ld l, a                                       ; $6389: $6f
    ld l, [hl]                                    ; $638a: $6e
    jr nz, @+$76                                  ; $638b: $20 $74

    ld l, b                                       ; $638d: $68

jr_018_638e:
    ld h, l                                       ; $638e: $65
    ld bc, $7544                                  ; $638f: $01 $44 $75
    ld l, [hl]                                    ; $6392: $6e
    ld h, l                                       ; $6393: $65
    jr nz, jr_018_63ea                            ; $6394: $20 $54

    ld l, a                                       ; $6396: $6f
    ld [hl], l                                    ; $6397: $75
    ld [hl], d                                    ; $6398: $72
    ld l, [hl]                                    ; $6399: $6e
    ld h, c                                       ; $639a: $61
    ld l, l                                       ; $639b: $6d
    ld h, l                                       ; $639c: $65
    ld l, [hl]                                    ; $639d: $6e
    ld [hl], h                                    ; $639e: $74
    ld hl, $0003                                  ; $639f: $21 $03 $00

jr_018_63a2:
    ld c, h                                       ; $63a2: $4c
    ld l, c                                       ; $63a3: $69
    ld l, [hl]                                    ; $63a4: $6e
    ld l, e                                       ; $63a5: $6b

jr_018_63a6:
    ld [hl], e                                    ; $63a6: $73
    jr nz, jr_018_63ec                            ; $63a7: $20 $43

    ld l, h                                       ; $63a9: $6c
    ld [hl], l                                    ; $63aa: $75
    ld h, d                                       ; $63ab: $62
    jr nz, jr_018_6417                            ; $63ac: $20 $69

    ld [hl], e                                    ; $63ae: $73
    jr nz, jr_018_6412                            ; $63af: $20 $61

    ld bc, $6573                                  ; $63b1: $01 $73 $65
    ld h, c                                       ; $63b4: $61
    dec l                                         ; $63b5: $2d
    ld [hl], e                                    ; $63b6: $73

jr_018_63b7:
    ld l, c                                       ; $63b7: $69
    ld h, h                                       ; $63b8: $64
    ld h, l                                       ; $63b9: $65
    jr nz, jr_018_641f                            ; $63ba: $20 $63

jr_018_63bc:
    ld l, a                                       ; $63bc: $6f

jr_018_63bd:
    ld [hl], l                                    ; $63bd: $75
    ld [hl], d                                    ; $63be: $72
    ld [hl], e                                    ; $63bf: $73
    ld h, l                                       ; $63c0: $65
    ld l, $02                                     ; $63c1: $2e $02
    ld c, a                                       ; $63c3: $4f
    ld h, [hl]                                    ; $63c4: $66
    ld h, [hl]                                    ; $63c5: $66
    jr nz, jr_018_643c                            ; $63c6: $20 $74

    ld l, b                                       ; $63c8: $68
    ld h, l                                       ; $63c9: $65

jr_018_63ca:
    jr nz, jr_018_6432                            ; $63ca: $20 $66

    ld h, c                                       ; $63cc: $61
    ld l, c                                       ; $63cd: $69
    ld [hl], d                                    ; $63ce: $72

jr_018_63cf:
    ld [hl], a                                    ; $63cf: $77
    ld h, c                                       ; $63d0: $61
    ld a, c                                       ; $63d1: $79
    ld bc, $7469                                  ; $63d2: $01 $69 $74
    daa                                           ; $63d5: $27
    ld [hl], e                                    ; $63d6: $73
    jr nz, jr_018_643a                            ; $63d7: $20 $61

    ld l, h                                       ; $63d9: $6c
    ld l, h                                       ; $63da: $6c
    jr nz, @+$6a                                  ; $63db: $20 $68

    ld h, l                                       ; $63dd: $65

jr_018_63de:
    ld h, c                                       ; $63de: $61
    ld [hl], h                                    ; $63df: $74
    ld l, b                                       ; $63e0: $68
    ld l, $01                                     ; $63e1: $2e $01
    ld c, l                                       ; $63e3: $4d
    ld h, c                                       ; $63e4: $61
    ld l, [hl]                                    ; $63e5: $6e
    inc l                                         ; $63e6: $2c
    jr nz, jr_018_6452                            ; $63e7: $20 $69

    ld [hl], h                                    ; $63e9: $74

jr_018_63ea:
    daa                                           ; $63ea: $27
    ld [hl], e                                    ; $63eb: $73

jr_018_63ec:
    jr nz, @+$76                                  ; $63ec: $20 $74

    ld l, a                                       ; $63ee: $6f
    ld [hl], l                                    ; $63ef: $75
    ld h, a                                       ; $63f0: $67
    ld l, b                                       ; $63f1: $68
    ld hl, $0003                                  ; $63f2: $21 $03 $00
    ld b, a                                       ; $63f5: $47
    ld l, a                                       ; $63f6: $6f
    ld l, h                                       ; $63f7: $6c
    ld h, [hl]                                    ; $63f8: $66
    ld h, l                                       ; $63f9: $65
    ld [hl], d                                    ; $63fa: $72
    ld [hl], e                                    ; $63fb: $73
    jr nz, jr_018_6475                            ; $63fc: $20 $77

    ld l, b                                       ; $63fe: $68
    ld l, a                                       ; $63ff: $6f

jr_018_6400:
    jr nz, @+$76                                  ; $6400: $20 $74

    ld h, c                                       ; $6402: $61
    ld l, e                                       ; $6403: $6b
    ld h, l                                       ; $6404: $65
    ld bc, $6461                                  ; $6405: $01 $61 $64
    halt                                          ; $6408: $76
    ld h, c                                       ; $6409: $61
    ld l, [hl]                                    ; $640a: $6e
    ld [hl], h                                    ; $640b: $74
    ld h, c                                       ; $640c: $61
    ld h, a                                       ; $640d: $67
    ld h, l                                       ; $640e: $65
    jr nz, jr_018_6480                            ; $640f: $20 $6f

    ld h, [hl]                                    ; $6411: $66

jr_018_6412:
    jr nz, jr_018_6460                            ; $6412: $20 $4c

    ld l, c                                       ; $6414: $69
    ld l, [hl]                                    ; $6415: $6e
    ld l, e                                       ; $6416: $6b

jr_018_6417:
    ld [hl], e                                    ; $6417: $73
    daa                                           ; $6418: $27
    ld bc, $7774                                  ; $6419: $01 $74 $77
    ld l, a                                       ; $641c: $6f
    jr nz, jr_018_6485                            ; $641d: $20 $66

jr_018_641f:
    ld h, c                                       ; $641f: $61
    ld l, c                                       ; $6420: $69
    ld [hl], d                                    ; $6421: $72
    ld [hl], a                                    ; $6422: $77
    ld h, c                                       ; $6423: $61
    ld a, c                                       ; $6424: $79
    jr nz, jr_018_649b                            ; $6425: $20 $74

    ld a, c                                       ; $6427: $79
    ld [hl], b                                    ; $6428: $70
    ld h, l                                       ; $6429: $65
    ld [hl], e                                    ; $642a: $73
    ld [bc], a                                    ; $642b: $02
    ld h, c                                       ; $642c: $61
    ld l, h                                       ; $642d: $6c
    ld [hl], a                                    ; $642e: $77
    ld h, c                                       ; $642f: $61
    ld a, c                                       ; $6430: $79
    ld [hl], e                                    ; $6431: $73

jr_018_6432:
    jr nz, @+$79                                  ; $6432: $20 $77

    ld l, c                                       ; $6434: $69
    ld l, [hl]                                    ; $6435: $6e
    ld l, $20                                     ; $6436: $2e $20
    ld b, d                                       ; $6438: $42
    ld h, c                                       ; $6439: $61

jr_018_643a:
    ld l, h                                       ; $643a: $6c
    ld l, h                                       ; $643b: $6c

jr_018_643c:
    ld [hl], e                                    ; $643c: $73
    ld bc, $6572                                  ; $643d: $01 $72 $65
    ld h, c                                       ; $6440: $61
    ld l, h                                       ; $6441: $6c
    ld l, h                                       ; $6442: $6c
    ld a, c                                       ; $6443: $79
    jr nz, jr_018_64b8                            ; $6444: $20 $72

    ld [hl], l                                    ; $6446: $75
    ld l, [hl]                                    ; $6447: $6e
    jr nz, @+$71                                  ; $6448: $20 $6f

    ld l, [hl]                                    ; $644a: $6e
    jr nz, jr_018_64c1                            ; $644b: $20 $74

    ld l, b                                       ; $644d: $68
    ld h, l                                       ; $644e: $65
    ld bc, $646f                                  ; $644f: $01 $6f $64

jr_018_6452:
    ld h, h                                       ; $6452: $64
    dec l                                         ; $6453: $2d
    ld h, e                                       ; $6454: $63
    ld l, a                                       ; $6455: $6f
    ld l, h                                       ; $6456: $6c
    ld l, a                                       ; $6457: $6f
    ld [hl], d                                    ; $6458: $72
    ld h, l                                       ; $6459: $65
    ld h, h                                       ; $645a: $64
    jr nz, jr_018_64c4                            ; $645b: $20 $67

    ld [hl], d                                    ; $645d: $72
    ld h, c                                       ; $645e: $61
    ld [hl], e                                    ; $645f: $73

jr_018_6460:
    ld [hl], e                                    ; $6460: $73
    ld hl, $0003                                  ; $6461: $21 $03 $00
    ld c, a                                       ; $6464: $4f
    ld l, [hl]                                    ; $6465: $6e
    ld h, e                                       ; $6466: $63
    ld h, l                                       ; $6467: $65
    jr nz, jr_018_64e3                            ; $6468: $20 $79

    ld l, a                                       ; $646a: $6f
    ld [hl], l                                    ; $646b: $75
    jr nz, @+$69                                  ; $646c: $20 $67

    ld h, l                                       ; $646e: $65
    ld [hl], h                                    ; $646f: $74
    jr nz, jr_018_64d4                            ; $6470: $20 $62

    ld l, a                                       ; $6472: $6f
    ld [hl], h                                    ; $6473: $74
    ld l, b                                       ; $6474: $68

jr_018_6475:
    ld bc, $6964                                  ; $6475: $01 $64 $69
    ld [hl], e                                    ; $6478: $73
    ld [hl], h                                    ; $6479: $74
    ld h, c                                       ; $647a: $61
    ld l, [hl]                                    ; $647b: $6e
    ld h, e                                       ; $647c: $63
    ld h, l                                       ; $647d: $65
    jr nz, jr_018_64e1                            ; $647e: $20 $61

jr_018_6480:
    ld l, [hl]                                    ; $6480: $6e
    ld h, h                                       ; $6481: $64
    ld bc, $6964                                  ; $6482: $01 $64 $69

jr_018_6485:
    ld [hl], d                                    ; $6485: $72
    ld h, l                                       ; $6486: $65
    ld h, e                                       ; $6487: $63
    ld [hl], h                                    ; $6488: $74
    ld l, c                                       ; $6489: $69
    ld l, a                                       ; $648a: $6f
    ld l, [hl]                                    ; $648b: $6e
    jr nz, jr_018_64f2                            ; $648c: $20 $64

    ld l, a                                       ; $648e: $6f
    ld [hl], a                                    ; $648f: $77
    ld l, [hl]                                    ; $6490: $6e
    inc l                                         ; $6491: $2c
    ld [bc], a                                    ; $6492: $02
    ld h, a                                       ; $6493: $67
    ld l, a                                       ; $6494: $6f
    ld l, h                                       ; $6495: $6c
    ld h, [hl]                                    ; $6496: $66
    jr nz, jr_018_64fb                            ; $6497: $20 $62

    ld h, l                                       ; $6499: $65
    ld h, e                                       ; $649a: $63

jr_018_649b:
    ld l, a                                       ; $649b: $6f
    ld l, l                                       ; $649c: $6d
    ld h, l                                       ; $649d: $65
    ld [hl], e                                    ; $649e: $73
    jr nz, @+$63                                  ; $649f: $20 $61

    ld bc, $6874                                  ; $64a1: $01 $74 $68
    ld l, c                                       ; $64a4: $69
    ld l, [hl]                                    ; $64a5: $6e
    ld l, e                                       ; $64a6: $6b
    ld l, c                                       ; $64a7: $69
    ld l, [hl]                                    ; $64a8: $6e
    ld h, a                                       ; $64a9: $67
    jr nz, jr_018_6513                            ; $64aa: $20 $67

    ld h, c                                       ; $64ac: $61
    ld l, l                                       ; $64ad: $6d
    ld h, l                                       ; $64ae: $65
    ld l, $03                                     ; $64af: $2e $03
    nop                                           ; $64b1: $00
    ld c, b                                       ; $64b2: $48
    ld h, l                                       ; $64b3: $65
    ld h, c                                       ; $64b4: $61
    ld [hl], h                                    ; $64b5: $74
    ld l, b                                       ; $64b6: $68
    inc l                                         ; $64b7: $2c

jr_018_64b8:
    jr nz, jr_018_652a                            ; $64b8: $20 $70

    ld l, a                                       ; $64ba: $6f
    ld [hl], h                                    ; $64bb: $74
    jr nz, jr_018_6520                            ; $64bc: $20 $62

    ld [hl], l                                    ; $64be: $75
    ld l, [hl]                                    ; $64bf: $6e
    ld l, e                                       ; $64c0: $6b

jr_018_64c1:
    ld h, l                                       ; $64c1: $65
    ld [hl], d                                    ; $64c2: $72
    ld [hl], e                                    ; $64c3: $73

jr_018_64c4:
    ld bc, $6e61                                  ; $64c4: $01 $61 $6e
    ld h, h                                       ; $64c7: $64
    jr nz, @+$75                                  ; $64c8: $20 $73

    ld h, l                                       ; $64ca: $65
    ld [hl], d                                    ; $64cb: $72
    ld l, c                                       ; $64cc: $69
    ld l, a                                       ; $64cd: $6f
    ld [hl], l                                    ; $64ce: $75
    ld [hl], e                                    ; $64cf: $73
    jr nz, jr_018_6544                            ; $64d0: $20 $72

    ld [hl], l                                    ; $64d2: $75
    ld l, [hl]                                    ; $64d3: $6e

jr_018_64d4:
    ld bc, $616d                                  ; $64d4: $01 $6d $61
    ld l, e                                       ; $64d7: $6b
    ld h, l                                       ; $64d8: $65
    jr nz, jr_018_6527                            ; $64d9: $20 $4c

    ld l, c                                       ; $64db: $69
    ld l, [hl]                                    ; $64dc: $6e
    ld l, e                                       ; $64dd: $6b
    ld [hl], e                                    ; $64de: $73
    jr nz, @+$45                                  ; $64df: $20 $43

jr_018_64e1:
    ld l, h                                       ; $64e1: $6c
    ld [hl], l                                    ; $64e2: $75

jr_018_64e3:
    ld h, d                                       ; $64e3: $62
    ld [bc], a                                    ; $64e4: $02
    ld [hl], h                                    ; $64e5: $74
    ld l, a                                       ; $64e6: $6f
    ld [hl], l                                    ; $64e7: $75
    ld h, a                                       ; $64e8: $67
    ld l, b                                       ; $64e9: $68
    ld l, $20                                     ; $64ea: $2e $20
    ld d, h                                       ; $64ec: $54
    ld l, a                                       ; $64ed: $6f
    jr nz, @+$6f                                  ; $64ee: $20 $6d

    ld h, c                                       ; $64f0: $61
    ld l, e                                       ; $64f1: $6b

jr_018_64f2:
    ld h, l                                       ; $64f2: $65
    jr nz, @+$72                                  ; $64f3: $20 $70

    ld h, c                                       ; $64f5: $61
    ld [hl], d                                    ; $64f6: $72
    inc l                                         ; $64f7: $2c
    ld bc, $6f79                                  ; $64f8: $01 $79 $6f

jr_018_64fb:
    ld [hl], l                                    ; $64fb: $75
    jr nz, @+$6a                                  ; $64fc: $20 $68

    ld h, c                                       ; $64fe: $61
    halt                                          ; $64ff: $76
    ld h, l                                       ; $6500: $65
    jr nz, @+$76                                  ; $6501: $20 $74

    ld l, a                                       ; $6503: $6f
    jr nz, jr_018_6576                            ; $6504: $20 $70

    ld l, h                                       ; $6506: $6c
    ld h, c                                       ; $6507: $61
    ld l, [hl]                                    ; $6508: $6e
    ld bc, $6877                                  ; $6509: $01 $77 $68
    ld l, c                                       ; $650c: $69
    ld h, e                                       ; $650d: $63
    ld l, b                                       ; $650e: $68
    jr nz, jr_018_6579                            ; $650f: $20 $68

    ld l, a                                       ; $6511: $6f
    ld l, h                                       ; $6512: $6c

jr_018_6513:
    ld h, l                                       ; $6513: $65
    ld [hl], e                                    ; $6514: $73
    jr nz, jr_018_6590                            ; $6515: $20 $79

    ld l, a                                       ; $6517: $6f
    ld [hl], l                                    ; $6518: $75
    daa                                           ; $6519: $27
    ld l, h                                       ; $651a: $6c
    ld l, h                                       ; $651b: $6c
    ld [bc], a                                    ; $651c: $02
    ld h, c                                       ; $651d: $61
    ld [hl], h                                    ; $651e: $74
    ld [hl], h                                    ; $651f: $74

jr_018_6520:
    ld h, c                                       ; $6520: $61
    ld h, e                                       ; $6521: $63
    ld l, e                                       ; $6522: $6b
    jr nz, @+$63                                  ; $6523: $20 $61

    ld l, [hl]                                    ; $6525: $6e
    ld h, h                                       ; $6526: $64

jr_018_6527:
    jr nz, jr_018_65a0                            ; $6527: $20 $77

    ld l, b                                       ; $6529: $68

jr_018_652a:
    ld l, c                                       ; $652a: $69
    ld h, e                                       ; $652b: $63
    ld l, b                                       ; $652c: $68
    ld bc, $6f79                                  ; $652d: $01 $79 $6f
    ld [hl], l                                    ; $6530: $75
    daa                                           ; $6531: $27
    ld l, h                                       ; $6532: $6c
    ld l, h                                       ; $6533: $6c
    jr nz, jr_018_65aa                            ; $6534: $20 $74

    ld [hl], d                                    ; $6536: $72
    ld a, c                                       ; $6537: $79
    jr nz, jr_018_65ae                            ; $6538: $20 $74

    ld l, a                                       ; $653a: $6f
    ld bc, $6173                                  ; $653b: $01 $73 $61
    halt                                          ; $653e: $76
    ld h, l                                       ; $653f: $65
    ld l, $03                                     ; $6540: $2e $03
    nop                                           ; $6542: $00
    ld d, a                                       ; $6543: $57

jr_018_6544:
    ld l, b                                       ; $6544: $68
    ld l, c                                       ; $6545: $69
    ld h, e                                       ; $6546: $63
    ld l, b                                       ; $6547: $68
    jr nz, @+$6a                                  ; $6548: $20 $68

    ld l, a                                       ; $654a: $6f
    ld l, h                                       ; $654b: $6c
    ld h, l                                       ; $654c: $65
    ld [hl], e                                    ; $654d: $73
    jr nz, jr_018_65c9                            ; $654e: $20 $79

    ld l, a                                       ; $6550: $6f
    ld [hl], l                                    ; $6551: $75
    daa                                           ; $6552: $27
    ld l, h                                       ; $6553: $6c
    ld l, h                                       ; $6554: $6c
    ld bc, $7461                                  ; $6555: $01 $61 $74
    ld [hl], h                                    ; $6558: $74
    ld h, c                                       ; $6559: $61
    ld h, e                                       ; $655a: $63
    ld l, e                                       ; $655b: $6b
    jr nz, jr_018_65c2                            ; $655c: $20 $64

    ld h, l                                       ; $655e: $65
    ld [hl], b                                    ; $655f: $70
    ld h, l                                       ; $6560: $65
    ld l, [hl]                                    ; $6561: $6e
    ld h, h                                       ; $6562: $64
    ld [hl], e                                    ; $6563: $73
    ld bc, $6e6f                                  ; $6564: $01 $6f $6e
    jr nz, @+$76                                  ; $6567: $20 $74

    ld l, b                                       ; $6569: $68
    ld h, l                                       ; $656a: $65
    jr nz, jr_018_65e4                            ; $656b: $20 $77

    ld l, c                                       ; $656d: $69
    ld l, [hl]                                    ; $656e: $6e
    ld h, h                                       ; $656f: $64
    ld l, $02                                     ; $6570: $2e $02
    ld b, l                                       ; $6572: $45
    halt                                          ; $6573: $76
    ld h, l                                       ; $6574: $65
    ld l, [hl]                                    ; $6575: $6e

jr_018_6576:
    jr nz, jr_018_65e7                            ; $6576: $20 $6f

    ld l, [hl]                                    ; $6578: $6e

jr_018_6579:
    jr nz, jr_018_65eb                            ; $6579: $20 $70

    ld h, c                                       ; $657b: $61
    ld [hl], d                                    ; $657c: $72
    jr nz, jr_018_65e5                            ; $657d: $20 $66

    ld l, c                                       ; $657f: $69
    halt                                          ; $6580: $76
    ld h, l                                       ; $6581: $65
    ld [hl], e                                    ; $6582: $73
    inc l                                         ; $6583: $2c
    ld bc, $6f79                                  ; $6584: $01 $79 $6f
    ld [hl], l                                    ; $6587: $75
    jr nz, jr_018_65f7                            ; $6588: $20 $6d

    ld h, c                                       ; $658a: $61
    ld a, c                                       ; $658b: $79
    jr nz, jr_018_65fc                            ; $658c: $20 $6e

    ld h, l                                       ; $658e: $65
    ld h, l                                       ; $658f: $65

jr_018_6590:
    ld h, h                                       ; $6590: $64
    jr nz, jr_018_6607                            ; $6591: $20 $74

    ld l, a                                       ; $6593: $6f
    ld bc, $7563                                  ; $6594: $01 $63 $75
    ld [hl], h                                    ; $6597: $74
    jr nz, jr_018_6611                            ; $6598: $20 $77

    ld l, c                                       ; $659a: $69
    ld [hl], h                                    ; $659b: $74
    ld l, b                                       ; $659c: $68
    jr nz, @+$63                                  ; $659d: $20 $61

    ld l, [hl]                                    ; $659f: $6e

jr_018_65a0:
    jr nz, jr_018_660b                            ; $65a0: $20 $69

    ld [hl], d                                    ; $65a2: $72
    ld l, a                                       ; $65a3: $6f
    ld l, [hl]                                    ; $65a4: $6e
    ld l, $03                                     ; $65a5: $2e $03
    nop                                           ; $65a7: $00
    ld c, c                                       ; $65a8: $49
    ld [hl], h                                    ; $65a9: $74

jr_018_65aa:
    daa                                           ; $65aa: $27
    ld [hl], e                                    ; $65ab: $73
    jr nz, jr_018_6621                            ; $65ac: $20 $73

jr_018_65ae:
    ld h, c                                       ; $65ae: $61
    ld l, c                                       ; $65af: $69
    ld h, h                                       ; $65b0: $64
    jr nz, jr_018_662c                            ; $65b1: $20 $79

    ld l, a                                       ; $65b3: $6f
    ld [hl], l                                    ; $65b4: $75
    ld [hl], d                                    ; $65b5: $72
    jr nz, jr_018_6627                            ; $65b6: $20 $6f

    ld [hl], a                                    ; $65b8: $77
    ld l, [hl]                                    ; $65b9: $6e
    ld bc, $6c70                                  ; $65ba: $01 $70 $6c
    ld h, c                                       ; $65bd: $61
    ld a, c                                       ; $65be: $79
    jr nz, @+$6b                                  ; $65bf: $20 $69

    ld [hl], e                                    ; $65c1: $73

jr_018_65c2:
    jr nz, @+$76                                  ; $65c2: $20 $74

    ld l, b                                       ; $65c4: $68
    ld h, l                                       ; $65c5: $65
    jr nz, jr_018_6633                            ; $65c6: $20 $6b

    ld h, l                                       ; $65c8: $65

jr_018_65c9:
    ld a, c                                       ; $65c9: $79
    ld bc, $6f74                                  ; $65ca: $01 $74 $6f
    jr nz, jr_018_6630                            ; $65cd: $20 $61

    jr nz, jr_018_6645                            ; $65cf: $20 $74

    ld l, a                                       ; $65d1: $6f
    ld [hl], l                                    ; $65d2: $75
    ld h, a                                       ; $65d3: $67
    ld l, b                                       ; $65d4: $68
    jr nz, jr_018_663a                            ; $65d5: $20 $63

    ld l, a                                       ; $65d7: $6f
    ld [hl], l                                    ; $65d8: $75
    ld [hl], d                                    ; $65d9: $72
    ld [hl], e                                    ; $65da: $73
    ld h, l                                       ; $65db: $65
    ld l, $03                                     ; $65dc: $2e $03
    nop                                           ; $65de: $00
    ld d, e                                       ; $65df: $53
    ld l, a                                       ; $65e0: $6f
    jr nz, jr_018_665c                            ; $65e1: $20 $79

    ld l, a                                       ; $65e3: $6f

jr_018_65e4:
    ld [hl], l                                    ; $65e4: $75

jr_018_65e5:
    jr nz, jr_018_6657                            ; $65e5: $20 $70

jr_018_65e7:
    ld l, h                                       ; $65e7: $6c
    ld h, c                                       ; $65e8: $61
    ld h, e                                       ; $65e9: $63
    ld h, l                                       ; $65ea: $65

jr_018_65eb:
    ld h, h                                       ; $65eb: $64
    jr nz, jr_018_664f                            ; $65ec: $20 $61

    ld [hl], h                                    ; $65ee: $74
    ld bc, $7544                                  ; $65ef: $01 $44 $75
    ld l, [hl]                                    ; $65f2: $6e
    ld h, l                                       ; $65f3: $65
    jr nz, jr_018_6639                            ; $65f4: $20 $43

    ld l, h                                       ; $65f6: $6c

jr_018_65f7:
    ld [hl], l                                    ; $65f7: $75
    ld h, d                                       ; $65f8: $62
    inc l                                         ; $65f9: $2c
    jr nz, jr_018_6670                            ; $65fa: $20 $74

jr_018_65fc:
    ld l, a                                       ; $65fc: $6f
    ld l, a                                       ; $65fd: $6f
    ccf                                           ; $65fe: $3f
    ld bc, $6f53                                  ; $65ff: $01 $53 $6f
    ld l, l                                       ; $6602: $6d
    ld h, l                                       ; $6603: $65
    jr nz, @+$67                                  ; $6604: $20 $65

    ld h, [hl]                                    ; $6606: $66

jr_018_6607:
    ld h, [hl]                                    ; $6607: $66
    ld l, a                                       ; $6608: $6f
    ld [hl], d                                    ; $6609: $72
    ld [hl], h                                    ; $660a: $74

jr_018_660b:
    inc l                                         ; $660b: $2c
    jr nz, jr_018_6673                            ; $660c: $20 $65

    ld l, b                                       ; $660e: $68
    ccf                                           ; $660f: $3f
    inc bc                                        ; $6610: $03

jr_018_6611:
    nop                                           ; $6611: $00
    ld d, e                                       ; $6612: $53
    ld l, a                                       ; $6613: $6f
    inc l                                         ; $6614: $2c
    jr nz, jr_018_6690                            ; $6615: $20 $79

    ld l, a                                       ; $6617: $6f
    ld [hl], l                                    ; $6618: $75
    daa                                           ; $6619: $27
    ld [hl], d                                    ; $661a: $72
    ld h, l                                       ; $661b: $65
    jr nz, jr_018_6662                            ; $661c: $20 $44

    ld [hl], l                                    ; $661e: $75
    ld l, [hl]                                    ; $661f: $6e
    ld h, l                                       ; $6620: $65

jr_018_6621:
    jr nz, jr_018_6666                            ; $6621: $20 $43

    ld l, b                                       ; $6623: $68
    ld h, c                                       ; $6624: $61
    ld l, l                                       ; $6625: $6d
    ld [hl], b                                    ; $6626: $70

jr_018_6627:
    inc l                                         ; $6627: $2c
    ld bc, $7568                                  ; $6628: $01 $68 $75
    ld l, b                                       ; $662b: $68

jr_018_662c:
    inc l                                         ; $662c: $2c
    jr nz, jr_018_6636                            ; $662d: $20 $07

    ccf                                           ; $662f: $3f

jr_018_6630:
    ld bc, $6f59                                  ; $6630: $01 $59 $6f

jr_018_6633:
    ld [hl], l                                    ; $6633: $75
    daa                                           ; $6634: $27
    ld l, h                                       ; $6635: $6c

jr_018_6636:
    ld l, h                                       ; $6636: $6c
    jr nz, jr_018_66ad                            ; $6637: $20 $74

jr_018_6639:
    ld h, c                                       ; $6639: $61

jr_018_663a:
    ld l, e                                       ; $663a: $6b
    ld h, l                                       ; $663b: $65
    jr nz, jr_018_668a                            ; $663c: $20 $4c

    ld l, c                                       ; $663e: $69
    ld l, [hl]                                    ; $663f: $6e
    ld l, e                                       ; $6640: $6b
    ld [hl], e                                    ; $6641: $73
    inc l                                         ; $6642: $2c
    jr nz, jr_018_66b9                            ; $6643: $20 $74

jr_018_6645:
    ld l, a                                       ; $6645: $6f
    ld l, a                                       ; $6646: $6f
    ld l, $02                                     ; $6647: $2e $02
    ld e, c                                       ; $6649: $59
    ld l, a                                       ; $664a: $6f
    ld [hl], l                                    ; $664b: $75
    daa                                           ; $664c: $27
    ld [hl], d                                    ; $664d: $72
    ld h, l                                       ; $664e: $65

jr_018_664f:
    jr nz, jr_018_66bf                            ; $664f: $20 $6e

    ld l, a                                       ; $6651: $6f
    ld [hl], h                                    ; $6652: $74
    jr nz, jr_018_66bb                            ; $6653: $20 $66

    ld h, c                                       ; $6655: $61
    ld [hl], d                                    ; $6656: $72

jr_018_6657:
    jr nz, jr_018_66bf                            ; $6657: $20 $66

    ld [hl], d                                    ; $6659: $72
    ld l, a                                       ; $665a: $6f
    ld l, l                                       ; $665b: $6d

jr_018_665c:
    ld bc, $6874                                  ; $665c: $01 $74 $68
    ld h, l                                       ; $665f: $65
    jr nz, jr_018_66d5                            ; $6660: $20 $73

jr_018_6662:
    ld l, a                                       ; $6662: $6f
    dec l                                         ; $6663: $2d
    ld h, e                                       ; $6664: $63
    ld h, c                                       ; $6665: $61

jr_018_6666:
    ld l, h                                       ; $6666: $6c
    ld l, h                                       ; $6667: $6c
    ld h, l                                       ; $6668: $65
    ld h, h                                       ; $6669: $64
    ld bc, $7247                                  ; $666a: $01 $47 $72
    ld h, c                                       ; $666d: $61
    ld l, [hl]                                    ; $666e: $6e
    ld h, h                                       ; $666f: $64

jr_018_6670:
    jr nz, jr_018_66b5                            ; $6670: $20 $43

    ld l, b                                       ; $6672: $68

jr_018_6673:
    ld h, c                                       ; $6673: $61
    ld l, l                                       ; $6674: $6d
    ld [hl], b                                    ; $6675: $70
    ld l, c                                       ; $6676: $69
    ld l, a                                       ; $6677: $6f
    ld l, [hl]                                    ; $6678: $6e
    ld [hl], e                                    ; $6679: $73
    ld l, b                                       ; $667a: $68
    ld l, c                                       ; $667b: $69
    ld [hl], b                                    ; $667c: $70
    ld l, $03                                     ; $667d: $2e $03
    nop                                           ; $667f: $00
    ld b, c                                       ; $6680: $41
    jr nz, jr_018_66c6                            ; $6681: $20 $43

    ld l, h                                       ; $6683: $6c
    ld [hl], l                                    ; $6684: $75
    ld h, d                                       ; $6685: $62
    jr nz, jr_018_66cb                            ; $6686: $20 $43

    ld l, b                                       ; $6688: $68
    ld h, c                                       ; $6689: $61

jr_018_668a:
    ld l, l                                       ; $668a: $6d
    ld [hl], b                                    ; $668b: $70
    ccf                                           ; $668c: $3f
    ld bc, $6c50                                  ; $668d: $01 $50 $6c

jr_018_6690:
    ld h, c                                       ; $6690: $61
    ld a, c                                       ; $6691: $79
    ld l, c                                       ; $6692: $69
    ld l, [hl]                                    ; $6693: $6e
    ld h, a                                       ; $6694: $67
    jr nz, jr_018_66f8                            ; $6695: $20 $61

    jr nz, jr_018_66e6                            ; $6697: $20 $4d

    ld h, c                                       ; $6699: $61
    ld [hl], h                                    ; $669a: $74
    ld h, e                                       ; $669b: $63
    ld l, b                                       ; $669c: $68
    ld bc, $6147                                  ; $669d: $01 $47 $61
    ld l, l                                       ; $66a0: $6d
    ld h, l                                       ; $66a1: $65
    inc l                                         ; $66a2: $2c
    jr nz, jr_018_6706                            ; $66a3: $20 $61

    ld [hl], d                                    ; $66a5: $72
    ld h, l                                       ; $66a6: $65
    jr nz, jr_018_6722                            ; $66a7: $20 $79

    ld l, a                                       ; $66a9: $6f
    ld [hl], l                                    ; $66aa: $75
    ccf                                           ; $66ab: $3f
    inc bc                                        ; $66ac: $03

jr_018_66ad:
    nop                                           ; $66ad: $00
    ld b, l                                       ; $66ae: $45
    halt                                          ; $66af: $76
    ld h, l                                       ; $66b0: $65
    ld [hl], d                                    ; $66b1: $72
    ld a, c                                       ; $66b2: $79
    ld l, a                                       ; $66b3: $6f
    ld l, [hl]                                    ; $66b4: $6e

jr_018_66b5:
    ld h, l                                       ; $66b5: $65
    jr nz, @+$79                                  ; $66b6: $20 $77

    ld l, b                                       ; $66b8: $68

jr_018_66b9:
    ld l, a                                       ; $66b9: $6f
    daa                                           ; $66ba: $27

jr_018_66bb:
    ld [hl], e                                    ; $66bb: $73
    ld bc, $6c70                                  ; $66bc: $01 $70 $6c

jr_018_66bf:
    ld h, c                                       ; $66bf: $61
    ld a, c                                       ; $66c0: $79
    ld h, l                                       ; $66c1: $65
    ld h, h                                       ; $66c2: $64
    jr nz, jr_018_6711                            ; $66c3: $20 $4c

    ld l, c                                       ; $66c5: $69

jr_018_66c6:
    ld l, [hl]                                    ; $66c6: $6e
    ld l, e                                       ; $66c7: $6b
    ld [hl], e                                    ; $66c8: $73
    jr nz, @+$45                                  ; $66c9: $20 $43

jr_018_66cb:
    ld l, h                                       ; $66cb: $6c
    ld [hl], l                                    ; $66cc: $75
    ld h, d                                       ; $66cd: $62
    ld bc, $6173                                  ; $66ce: $01 $73 $61
    ld a, c                                       ; $66d1: $79
    ld [hl], e                                    ; $66d2: $73
    jr nz, jr_018_673e                            ; $66d3: $20 $69

jr_018_66d5:
    ld [hl], h                                    ; $66d5: $74
    daa                                           ; $66d6: $27
    ld [hl], e                                    ; $66d7: $73
    jr nz, @+$76                                  ; $66d8: $20 $74

    ld l, a                                       ; $66da: $6f
    ld [hl], l                                    ; $66db: $75
    ld h, a                                       ; $66dc: $67
    ld l, b                                       ; $66dd: $68
    ld hl, $5702                                  ; $66de: $21 $02 $57
    ld l, b                                       ; $66e1: $68
    ld h, l                                       ; $66e2: $65
    ld l, [hl]                                    ; $66e3: $6e
    jr nz, jr_018_675f                            ; $66e4: $20 $79

jr_018_66e6:
    ld l, a                                       ; $66e6: $6f
    ld [hl], l                                    ; $66e7: $75
    jr nz, jr_018_675d                            ; $66e8: $20 $73

    ld h, l                                       ; $66ea: $65
    ld h, l                                       ; $66eb: $65
    jr nz, jr_018_6757                            ; $66ec: $20 $69

    ld [hl], h                                    ; $66ee: $74
    ld [hl], e                                    ; $66ef: $73
    ld bc, $6168                                  ; $66f0: $01 $68 $61
    ld [hl], d                                    ; $66f3: $72
    ld h, h                                       ; $66f4: $64
    jr nz, jr_018_675d                            ; $66f5: $20 $66

    ld h, c                                       ; $66f7: $61

jr_018_66f8:
    ld l, c                                       ; $66f8: $69
    ld [hl], d                                    ; $66f9: $72
    ld [hl], a                                    ; $66fa: $77
    ld h, c                                       ; $66fb: $61
    ld a, c                                       ; $66fc: $79
    ld [hl], e                                    ; $66fd: $73
    jr nz, jr_018_6761                            ; $66fe: $20 $61

    ld l, [hl]                                    ; $6700: $6e
    ld h, h                                       ; $6701: $64
    ld bc, $6874                                  ; $6702: $01 $74 $68
    ld h, c                                       ; $6705: $61

jr_018_6706:
    ld [hl], h                                    ; $6706: $74
    jr nz, jr_018_6771                            ; $6707: $20 $68

    ld h, l                                       ; $6709: $65
    ld h, c                                       ; $670a: $61
    ld [hl], h                                    ; $670b: $74
    ld l, b                                       ; $670c: $68
    ld l, $2e                                     ; $670d: $2e $2e
    ld l, $4f                                     ; $670f: $2e $4f

jr_018_6711:
    ld l, b                                       ; $6711: $68
    ld hl, $0003                                  ; $6712: $21 $03 $00
    ld e, c                                       ; $6715: $59
    ld l, a                                       ; $6716: $6f
    ld [hl], l                                    ; $6717: $75
    jr nz, @+$72                                  ; $6718: $20 $70

    ld l, h                                       ; $671a: $6c
    ld h, c                                       ; $671b: $61
    ld h, e                                       ; $671c: $63
    ld h, l                                       ; $671d: $65
    ld h, h                                       ; $671e: $64
    jr nz, jr_018_6782                            ; $671f: $20 $61

    ld [hl], h                                    ; $6721: $74

jr_018_6722:
    jr nz, jr_018_6770                            ; $6722: $20 $4c

    ld l, c                                       ; $6724: $69
    ld l, [hl]                                    ; $6725: $6e
    ld l, e                                       ; $6726: $6b
    ld [hl], e                                    ; $6727: $73
    ld bc, $6c43                                  ; $6728: $01 $43 $6c
    ld [hl], l                                    ; $672b: $75
    ld h, d                                       ; $672c: $62
    ccf                                           ; $672d: $3f
    jr nz, jr_018_6784                            ; $672e: $20 $54

    ld l, b                                       ; $6730: $68
    ld h, c                                       ; $6731: $61
    ld [hl], h                                    ; $6732: $74
    daa                                           ; $6733: $27
    ld [hl], e                                    ; $6734: $73
    jr nz, jr_018_679e                            ; $6735: $20 $67

    ld [hl], d                                    ; $6737: $72
    ld h, l                                       ; $6738: $65
    ld h, c                                       ; $6739: $61
    ld [hl], h                                    ; $673a: $74
    ld bc, $2107                                  ; $673b: $01 $07 $21

jr_018_673e:
    ld [bc], a                                    ; $673e: $02
    ld c, c                                       ; $673f: $49
    ld h, [hl]                                    ; $6740: $66
    jr nz, @+$7b                                  ; $6741: $20 $79

    ld l, a                                       ; $6743: $6f
    ld [hl], l                                    ; $6744: $75
    jr nz, @+$6d                                  ; $6745: $20 $6b

    ld h, l                                       ; $6747: $65
    ld h, l                                       ; $6748: $65
    ld [hl], b                                    ; $6749: $70
    jr nz, @+$6b                                  ; $674a: $20 $69

    ld [hl], h                                    ; $674c: $74
    jr nz, jr_018_67c4                            ; $674d: $20 $75

    ld [hl], b                                    ; $674f: $70
    inc l                                         ; $6750: $2c
    ld bc, $6f79                                  ; $6751: $01 $79 $6f
    ld [hl], l                                    ; $6754: $75
    daa                                           ; $6755: $27
    ld l, h                                       ; $6756: $6c

jr_018_6757:
    ld l, h                                       ; $6757: $6c
    jr nz, jr_018_67ce                            ; $6758: $20 $74

    ld h, c                                       ; $675a: $61
    ld l, e                                       ; $675b: $6b
    ld h, l                                       ; $675c: $65

jr_018_675d:
    jr nz, @+$76                                  ; $675d: $20 $74

jr_018_675f:
    ld l, b                                       ; $675f: $68
    ld h, l                                       ; $6760: $65

jr_018_6761:
    ld bc, $7247                                  ; $6761: $01 $47 $72
    ld h, c                                       ; $6764: $61
    ld l, [hl]                                    ; $6765: $6e
    ld h, h                                       ; $6766: $64
    jr nz, jr_018_67ac                            ; $6767: $20 $43

    ld l, b                                       ; $6769: $68
    ld h, c                                       ; $676a: $61
    ld l, l                                       ; $676b: $6d
    ld [hl], b                                    ; $676c: $70
    ld l, c                                       ; $676d: $69
    ld l, a                                       ; $676e: $6f
    ld l, [hl]                                    ; $676f: $6e

jr_018_6770:
    ld [hl], e                                    ; $6770: $73

jr_018_6771:
    ld l, b                                       ; $6771: $68
    ld l, c                                       ; $6772: $69
    ld [hl], b                                    ; $6773: $70
    ld hl, $0003                                  ; $6774: $21 $03 $00
    ld c, c                                       ; $6777: $49
    jr nz, jr_018_67e2                            ; $6778: $20 $68

    ld h, l                                       ; $677a: $65
    ld h, c                                       ; $677b: $61
    ld [hl], d                                    ; $677c: $72
    ld h, h                                       ; $677d: $64
    jr nz, jr_018_67f9                            ; $677e: $20 $79

    ld l, a                                       ; $6780: $6f
    ld [hl], l                                    ; $6781: $75

jr_018_6782:
    jr nz, jr_018_67f4                            ; $6782: $20 $70

jr_018_6784:
    ld l, h                                       ; $6784: $6c
    ld h, c                                       ; $6785: $61
    ld h, e                                       ; $6786: $63
    ld h, l                                       ; $6787: $65
    ld h, h                                       ; $6788: $64
    ld bc, $7461                                  ; $6789: $01 $61 $74
    jr nz, jr_018_67da                            ; $678c: $20 $4c

    ld l, c                                       ; $678e: $69
    ld l, [hl]                                    ; $678f: $6e
    ld l, e                                       ; $6790: $6b
    ld [hl], e                                    ; $6791: $73
    jr nz, jr_018_67d7                            ; $6792: $20 $43

    ld l, h                                       ; $6794: $6c
    ld [hl], l                                    ; $6795: $75
    ld h, d                                       ; $6796: $62
    ld l, $02                                     ; $6797: $2e $02
    ld d, h                                       ; $6799: $54
    ld l, b                                       ; $679a: $68
    ld h, l                                       ; $679b: $65
    jr nz, jr_018_67e5                            ; $679c: $20 $47

jr_018_679e:
    ld [hl], d                                    ; $679e: $72
    ld h, c                                       ; $679f: $61
    ld l, [hl]                                    ; $67a0: $6e
    ld h, h                                       ; $67a1: $64
    ld bc, $6843                                  ; $67a2: $01 $43 $68
    ld h, c                                       ; $67a5: $61
    ld l, l                                       ; $67a6: $6d
    ld [hl], b                                    ; $67a7: $70
    ld l, c                                       ; $67a8: $69
    ld l, a                                       ; $67a9: $6f
    ld l, [hl]                                    ; $67aa: $6e
    ld [hl], e                                    ; $67ab: $73

jr_018_67ac:
    ld l, b                                       ; $67ac: $68
    ld l, c                                       ; $67ad: $69
    ld [hl], b                                    ; $67ae: $70
    daa                                           ; $67af: $27
    ld [hl], e                                    ; $67b0: $73
    jr nz, @+$6b                                  ; $67b1: $20 $69

    ld l, [hl]                                    ; $67b3: $6e
    ld bc, $6572                                  ; $67b4: $01 $72 $65
    ld h, c                                       ; $67b7: $61
    ld h, e                                       ; $67b8: $63
    ld l, b                                       ; $67b9: $68
    inc l                                         ; $67ba: $2c
    jr nz, jr_018_67c4                            ; $67bb: $20 $07

    ld hl, $0003                                  ; $67bd: $21 $03 $00
    ld d, a                                       ; $67c0: $57
    ld h, c                                       ; $67c1: $61
    ld [hl], e                                    ; $67c2: $73
    ld l, [hl]                                    ; $67c3: $6e

jr_018_67c4:
    daa                                           ; $67c4: $27
    ld [hl], h                                    ; $67c5: $74
    jr nz, jr_018_6814                            ; $67c6: $20 $4c

    ld l, c                                       ; $67c8: $69
    ld l, [hl]                                    ; $67c9: $6e
    ld l, e                                       ; $67ca: $6b
    ld [hl], e                                    ; $67cb: $73
    jr nz, @+$45                                  ; $67cc: $20 $43

jr_018_67ce:
    ld l, h                                       ; $67ce: $6c
    ld [hl], l                                    ; $67cf: $75
    ld h, d                                       ; $67d0: $62
    ld bc, $6f74                                  ; $67d1: $01 $74 $6f
    ld [hl], l                                    ; $67d4: $75
    ld h, a                                       ; $67d5: $67
    ld l, b                                       ; $67d6: $68

jr_018_67d7:
    ccf                                           ; $67d7: $3f
    jr nz, jr_018_682e                            ; $67d8: $20 $54

jr_018_67da:
    ld l, b                                       ; $67da: $68
    ld h, l                                       ; $67db: $65
    jr nz, @+$74                                  ; $67dc: $20 $72

    ld [hl], l                                    ; $67de: $75
    ld l, [hl]                                    ; $67df: $6e
    ld [bc], a                                    ; $67e0: $02
    ld [hl], h                                    ; $67e1: $74

jr_018_67e2:
    ld l, b                                       ; $67e2: $68
    ld h, l                                       ; $67e3: $65
    ld [hl], d                                    ; $67e4: $72

jr_018_67e5:
    ld h, l                                       ; $67e5: $65
    jr nz, jr_018_685a                            ; $67e6: $20 $72

    ld h, l                                       ; $67e8: $65
    ld h, c                                       ; $67e9: $61
    ld l, h                                       ; $67ea: $6c
    ld l, h                                       ; $67eb: $6c
    ld a, c                                       ; $67ec: $79
    jr nz, jr_018_685c                            ; $67ed: $20 $6d

    ld h, l                                       ; $67ef: $65
    ld [hl], e                                    ; $67f0: $73
    ld [hl], e                                    ; $67f1: $73
    ld h, l                                       ; $67f2: $65
    ld [hl], e                                    ; $67f3: $73

jr_018_67f4:
    ld bc, $6977                                  ; $67f4: $01 $77 $69
    ld [hl], h                                    ; $67f7: $74
    ld l, b                                       ; $67f8: $68

jr_018_67f9:
    jr nz, jr_018_6874                            ; $67f9: $20 $79

    ld l, a                                       ; $67fb: $6f
    ld [hl], l                                    ; $67fc: $75
    ld [hl], d                                    ; $67fd: $72
    jr nz, jr_018_6873                            ; $67fe: $20 $73

    ld h, l                                       ; $6800: $65
    ld l, [hl]                                    ; $6801: $6e
    ld [hl], e                                    ; $6802: $73
    ld h, l                                       ; $6803: $65
    jr nz, @+$71                                  ; $6804: $20 $6f

    ld h, [hl]                                    ; $6806: $66
    ld bc, $6964                                  ; $6807: $01 $64 $69
    ld [hl], e                                    ; $680a: $73
    ld [hl], h                                    ; $680b: $74
    ld h, c                                       ; $680c: $61
    ld l, [hl]                                    ; $680d: $6e
    ld h, e                                       ; $680e: $63
    ld h, l                                       ; $680f: $65
    ld l, $03                                     ; $6810: $2e $03
    nop                                           ; $6812: $00
    ld d, h                                       ; $6813: $54

jr_018_6814:
    ld l, b                                       ; $6814: $68
    ld h, l                                       ; $6815: $65
    ld a, c                                       ; $6816: $79
    jr nz, jr_018_688c                            ; $6817: $20 $73

    ld h, c                                       ; $6819: $61
    ld a, c                                       ; $681a: $79
    jr nz, jr_018_6891                            ; $681b: $20 $74

    ld l, b                                       ; $681d: $68
    ld h, l                                       ; $681e: $65
    jr nz, @+$4e                                  ; $681f: $20 $4c

    ld l, c                                       ; $6821: $69
    ld l, [hl]                                    ; $6822: $6e
    ld l, e                                       ; $6823: $6b
    ld [hl], e                                    ; $6824: $73
    ld bc, $6f54                                  ; $6825: $01 $54 $6f
    ld [hl], l                                    ; $6828: $75
    ld [hl], d                                    ; $6829: $72
    ld l, [hl]                                    ; $682a: $6e
    ld h, c                                       ; $682b: $61
    ld l, l                                       ; $682c: $6d
    ld h, l                                       ; $682d: $65

jr_018_682e:
    ld l, [hl]                                    ; $682e: $6e
    ld [hl], h                                    ; $682f: $74
    jr nz, @+$76                                  ; $6830: $20 $74

    ld [hl], d                                    ; $6832: $72
    ld l, c                                       ; $6833: $69
    ld h, l                                       ; $6834: $65
    ld [hl], e                                    ; $6835: $73
    ld bc, $6f79                                  ; $6836: $01 $79 $6f
    ld [hl], l                                    ; $6839: $75
    ld [hl], d                                    ; $683a: $72
    jr nz, jr_018_68ad                            ; $683b: $20 $70

    ld h, c                                       ; $683d: $61
    ld [hl], h                                    ; $683e: $74
    ld l, c                                       ; $683f: $69
    ld h, l                                       ; $6840: $65
    ld l, [hl]                                    ; $6841: $6e
    ld h, e                                       ; $6842: $63
    ld h, l                                       ; $6843: $65
    ld l, $02                                     ; $6844: $2e $02
    ld c, d                                       ; $6846: $4a
    ld [hl], l                                    ; $6847: $75
    ld [hl], e                                    ; $6848: $73
    ld [hl], h                                    ; $6849: $74
    jr nz, jr_018_68bf                            ; $684a: $20 $73

    ld h, c                                       ; $684c: $61
    halt                                          ; $684d: $76
    ld h, l                                       ; $684e: $65
    jr nz, jr_018_68c1                            ; $684f: $20 $70

    ld h, c                                       ; $6851: $61
    ld [hl], d                                    ; $6852: $72
    jr nz, @+$63                                  ; $6853: $20 $61

    ld l, [hl]                                    ; $6855: $6e
    ld h, h                                       ; $6856: $64
    ld bc, $6177                                  ; $6857: $01 $77 $61

jr_018_685a:
    ld l, c                                       ; $685a: $69
    ld [hl], h                                    ; $685b: $74

jr_018_685c:
    jr nz, jr_018_68c4                            ; $685c: $20 $66

    ld l, a                                       ; $685e: $6f
    ld [hl], d                                    ; $685f: $72
    jr nz, jr_018_68c3                            ; $6860: $20 $61

    jr nz, jr_018_68c7                            ; $6862: $20 $63

    ld l, b                                       ; $6864: $68
    ld h, c                                       ; $6865: $61
    ld l, [hl]                                    ; $6866: $6e
    ld h, e                                       ; $6867: $63
    ld h, l                                       ; $6868: $65
    ld bc, $6f74                                  ; $6869: $01 $74 $6f
    jr nz, jr_018_68de                            ; $686c: $20 $70

    ld [hl], d                                    ; $686e: $72
    ld h, l                                       ; $686f: $65
    ld [hl], e                                    ; $6870: $73
    ld h, l                                       ; $6871: $65
    ld l, [hl]                                    ; $6872: $6e

jr_018_6873:
    ld [hl], h                                    ; $6873: $74

jr_018_6874:
    jr nz, jr_018_68df                            ; $6874: $20 $69

    ld [hl], h                                    ; $6876: $74
    ld [hl], e                                    ; $6877: $73
    ld h, l                                       ; $6878: $65
    ld l, h                                       ; $6879: $6c
    ld h, [hl]                                    ; $687a: $66
    ld l, $03                                     ; $687b: $2e $03
    nop                                           ; $687d: $00
    ld d, h                                       ; $687e: $54
    ld l, a                                       ; $687f: $6f
    jr nz, jr_018_68f9                            ; $6880: $20 $77

    ld l, c                                       ; $6882: $69
    ld l, [hl]                                    ; $6883: $6e
    jr nz, @+$63                                  ; $6884: $20 $61

    ld [hl], h                                    ; $6886: $74
    jr nz, jr_018_68d5                            ; $6887: $20 $4c

    ld l, c                                       ; $6889: $69
    ld l, [hl]                                    ; $688a: $6e
    ld l, e                                       ; $688b: $6b

jr_018_688c:
    ld [hl], e                                    ; $688c: $73
    inc l                                         ; $688d: $2c
    ld bc, $6f79                                  ; $688e: $01 $79 $6f

jr_018_6891:
    ld [hl], l                                    ; $6891: $75
    jr nz, @+$70                                  ; $6892: $20 $6e

    ld h, l                                       ; $6894: $65
    ld h, l                                       ; $6895: $65
    ld h, h                                       ; $6896: $64
    jr nz, @+$64                                  ; $6897: $20 $62

    ld l, a                                       ; $6899: $6f
    ld [hl], h                                    ; $689a: $74
    ld l, b                                       ; $689b: $68
    jr nz, jr_018_6901                            ; $689c: $20 $63

    ld l, b                                       ; $689e: $68
    ld l, c                                       ; $689f: $69
    ld [hl], b                                    ; $68a0: $70
    ld bc, $6e61                                  ; $68a1: $01 $61 $6e
    ld h, h                                       ; $68a4: $64
    jr nz, jr_018_6919                            ; $68a5: $20 $72

    ld l, a                                       ; $68a7: $6f
    ld l, h                                       ; $68a8: $6c
    ld l, h                                       ; $68a9: $6c
    jr nz, jr_018_6920                            ; $68aa: $20 $74

    ld h, l                                       ; $68ac: $65

jr_018_68ad:
    ld h, e                                       ; $68ad: $63
    ld l, b                                       ; $68ae: $68
    ld l, [hl]                                    ; $68af: $6e
    ld l, c                                       ; $68b0: $69
    ld [hl], c                                    ; $68b1: $71
    ld [hl], l                                    ; $68b2: $75
    ld h, l                                       ; $68b3: $65
    ld [hl], e                                    ; $68b4: $73
    ld l, $03                                     ; $68b5: $2e $03
    nop                                           ; $68b7: $00
    ld b, l                                       ; $68b8: $45
    halt                                          ; $68b9: $76
    ld h, l                                       ; $68ba: $65
    ld [hl], d                                    ; $68bb: $72
    ld a, c                                       ; $68bc: $79
    jr nz, jr_018_6922                            ; $68bd: $20 $63

jr_018_68bf:
    ld l, b                                       ; $68bf: $68
    ld h, c                                       ; $68c0: $61

jr_018_68c1:
    ld l, [hl]                                    ; $68c1: $6e
    ld h, e                                       ; $68c2: $63

jr_018_68c3:
    ld h, l                                       ; $68c3: $65

jr_018_68c4:
    ld bc, $7262                                  ; $68c4: $01 $62 $72

jr_018_68c7:
    ld l, c                                       ; $68c7: $69
    ld l, [hl]                                    ; $68c8: $6e
    ld h, a                                       ; $68c9: $67
    ld [hl], e                                    ; $68ca: $73
    jr nz, jr_018_693f                            ; $68cb: $20 $72

    ld l, c                                       ; $68cd: $69
    ld [hl], e                                    ; $68ce: $73
    ld l, e                                       ; $68cf: $6b
    ld l, $2e                                     ; $68d0: $2e $2e
    ld l, $01                                     ; $68d2: $2e $01
    ld [hl], h                                    ; $68d4: $74

jr_018_68d5:
    ld l, b                                       ; $68d5: $68
    ld h, c                                       ; $68d6: $61
    ld [hl], h                                    ; $68d7: $74
    daa                                           ; $68d8: $27
    ld [hl], e                                    ; $68d9: $73
    jr nz, jr_018_6928                            ; $68da: $20 $4c

    ld l, c                                       ; $68dc: $69
    ld l, [hl]                                    ; $68dd: $6e

jr_018_68de:
    ld l, e                                       ; $68de: $6b

jr_018_68df:
    ld [hl], e                                    ; $68df: $73
    jr nz, @+$45                                  ; $68e0: $20 $43

    ld l, h                                       ; $68e2: $6c
    ld [hl], l                                    ; $68e3: $75
    ld h, d                                       ; $68e4: $62
    ld hl, $0003                                  ; $68e5: $21 $03 $00
    ld d, h                                       ; $68e8: $54
    ld l, b                                       ; $68e9: $68
    ld h, l                                       ; $68ea: $65
    ld a, c                                       ; $68eb: $79
    jr nz, jr_018_6961                            ; $68ec: $20 $73

    ld h, c                                       ; $68ee: $61
    ld a, c                                       ; $68ef: $79
    jr nz, jr_018_6969                            ; $68f0: $20 $77

    ld l, b                                       ; $68f2: $68
    ld h, c                                       ; $68f3: $61
    ld [hl], h                                    ; $68f4: $74
    ld h, l                                       ; $68f5: $65
    halt                                          ; $68f6: $76
    ld h, l                                       ; $68f7: $65
    ld [hl], d                                    ; $68f8: $72

jr_018_68f9:
    ld bc, $7263                                  ; $68f9: $01 $63 $72
    ld h, l                                       ; $68fc: $65
    ld h, c                                       ; $68fd: $61
    ld [hl], h                                    ; $68fe: $74
    ld h, l                                       ; $68ff: $65
    ld [hl], e                                    ; $6900: $73

jr_018_6901:
    jr nz, jr_018_6977                            ; $6901: $20 $74

    ld l, b                                       ; $6903: $68
    ld h, l                                       ; $6904: $65
    jr nz, jr_018_697e                            ; $6905: $20 $77

    ld l, c                                       ; $6907: $69
    ld l, [hl]                                    ; $6908: $6e
    ld h, h                                       ; $6909: $64
    inc l                                         ; $690a: $2c
    ld bc, $7263                                  ; $690b: $01 $63 $72
    ld h, l                                       ; $690e: $65
    ld h, c                                       ; $690f: $61
    ld [hl], h                                    ; $6910: $74
    ld h, l                                       ; $6911: $65
    ld h, h                                       ; $6912: $64
    jr nz, jr_018_6961                            ; $6913: $20 $4c

    ld l, c                                       ; $6915: $69
    ld l, [hl]                                    ; $6916: $6e
    ld l, e                                       ; $6917: $6b
    ld [hl], e                                    ; $6918: $73

jr_018_6919:
    ld l, $03                                     ; $6919: $2e $03
    nop                                           ; $691b: $00
    ld d, h                                       ; $691c: $54
    ld l, b                                       ; $691d: $68
    ld h, l                                       ; $691e: $65
    ld a, c                                       ; $691f: $79

jr_018_6920:
    jr nz, jr_018_6995                            ; $6920: $20 $73

jr_018_6922:
    ld h, c                                       ; $6922: $61
    ld a, c                                       ; $6923: $79
    jr nz, jr_018_6999                            ; $6924: $20 $73

    ld l, a                                       ; $6926: $6f
    ld l, l                                       ; $6927: $6d

jr_018_6928:
    ld h, l                                       ; $6928: $65
    ld [hl], h                                    ; $6929: $74
    ld l, b                                       ; $692a: $68
    ld l, c                                       ; $692b: $69
    ld l, [hl]                                    ; $692c: $6e
    ld h, a                                       ; $692d: $67
    ld bc, $6962                                  ; $692e: $01 $62 $69
    ld h, a                                       ; $6931: $67
    jr nz, jr_018_699c                            ; $6932: $20 $68

    ld h, c                                       ; $6934: $61
    ld [hl], b                                    ; $6935: $70
    ld [hl], b                                    ; $6936: $70
    ld h, l                                       ; $6937: $65
    ld l, [hl]                                    ; $6938: $6e
    ld [hl], e                                    ; $6939: $73
    jr nz, jr_018_69b3                            ; $693a: $20 $77

    ld l, b                                       ; $693c: $68
    ld h, l                                       ; $693d: $65
    ld l, [hl]                                    ; $693e: $6e

jr_018_693f:
    ld bc, $6f79                                  ; $693f: $01 $79 $6f
    ld [hl], l                                    ; $6942: $75
    jr nz, @+$6f                                  ; $6943: $20 $6d

    ld h, c                                       ; $6945: $61
    ld l, e                                       ; $6946: $6b
    ld h, l                                       ; $6947: $65
    jr nz, jr_018_6991                            ; $6948: $20 $47

    ld [hl], d                                    ; $694a: $72
    ld h, c                                       ; $694b: $61
    ld l, [hl]                                    ; $694c: $6e
    ld h, h                                       ; $694d: $64
    jr nz, jr_018_6993                            ; $694e: $20 $43

    ld l, b                                       ; $6950: $68
    ld h, c                                       ; $6951: $61
    ld l, l                                       ; $6952: $6d
    ld [hl], b                                    ; $6953: $70
    ld l, $02                                     ; $6954: $2e $02
    ld c, $07                                     ; $6956: $0e $07
    jr nz, @+$79                                  ; $6958: $20 $77

    ld l, a                                       ; $695a: $6f
    ld [hl], l                                    ; $695b: $75
    ld l, h                                       ; $695c: $6c
    ld h, h                                       ; $695d: $64
    jr nz, jr_018_69c2                            ; $695e: $20 $62

    ld h, l                                       ; $6960: $65

jr_018_6961:
    ld bc, $6874                                  ; $6961: $01 $74 $68
    ld h, l                                       ; $6964: $65
    jr nz, jr_018_69d6                            ; $6965: $20 $6f

    ld l, [hl]                                    ; $6967: $6e
    ld h, l                                       ; $6968: $65

jr_018_6969:
    jr nz, jr_018_69df                            ; $6969: $20 $74

    ld l, a                                       ; $696b: $6f
    jr nz, jr_018_69cf                            ; $696c: $20 $61

    ld [hl], e                                    ; $696e: $73
    ld l, e                                       ; $696f: $6b
    ld l, $03                                     ; $6970: $2e $03
    nop                                           ; $6972: $00
    ld d, e                                       ; $6973: $53
    ld l, a                                       ; $6974: $6f
    jr nz, jr_018_69f0                            ; $6975: $20 $79

jr_018_6977:
    ld l, a                                       ; $6977: $6f
    ld [hl], l                                    ; $6978: $75
    jr nz, jr_018_69eb                            ; $6979: $20 $70

    ld l, h                                       ; $697b: $6c
    ld h, c                                       ; $697c: $61
    ld h, e                                       ; $697d: $63

jr_018_697e:
    ld h, l                                       ; $697e: $65
    ld h, h                                       ; $697f: $64
    jr nz, jr_018_69e3                            ; $6980: $20 $61

    ld [hl], h                                    ; $6982: $74
    ld bc, $694c                                  ; $6983: $01 $4c $69
    ld l, [hl]                                    ; $6986: $6e
    ld l, e                                       ; $6987: $6b
    ld [hl], e                                    ; $6988: $73
    jr nz, jr_018_69ce                            ; $6989: $20 $43

    ld l, h                                       ; $698b: $6c
    ld [hl], l                                    ; $698c: $75
    ld h, d                                       ; $698d: $62
    inc l                                         ; $698e: $2c
    jr nz, jr_018_6a05                            ; $698f: $20 $74

jr_018_6991:
    ld l, a                                       ; $6991: $6f
    ld l, a                                       ; $6992: $6f

jr_018_6993:
    ld l, $01                                     ; $6993: $2e $01

jr_018_6995:
    ld d, e                                       ; $6995: $53
    ld l, a                                       ; $6996: $6f
    ld l, l                                       ; $6997: $6d
    ld h, l                                       ; $6998: $65

jr_018_6999:
    jr nz, jr_018_6a00                            ; $6999: $20 $65

    ld h, [hl]                                    ; $699b: $66

jr_018_699c:
    ld h, [hl]                                    ; $699c: $66
    ld l, a                                       ; $699d: $6f
    ld [hl], d                                    ; $699e: $72
    ld [hl], h                                    ; $699f: $74
    inc l                                         ; $69a0: $2c
    jr nz, jr_018_6a08                            ; $69a1: $20 $65

    ld l, b                                       ; $69a3: $68
    ccf                                           ; $69a4: $3f
    inc bc                                        ; $69a5: $03
    nop                                           ; $69a6: $00
    ld b, h                                       ; $69a7: $44
    ld d, l                                       ; $69a8: $55
    ld c, l                                       ; $69a9: $4d
    ld c, l                                       ; $69aa: $4d
    ld e, c                                       ; $69ab: $59
    nop                                           ; $69ac: $00
    ld d, a                                       ; $69ad: $57
    ld l, c                                       ; $69ae: $69
    ld [hl], h                                    ; $69af: $74
    ld l, b                                       ; $69b0: $68
    jr nz, jr_018_6a14                            ; $69b1: $20 $61

jr_018_69b3:
    jr nz, jr_018_69f8                            ; $69b3: $20 $43

    ld l, h                                       ; $69b5: $6c
    ld [hl], l                                    ; $69b6: $75
    ld h, d                                       ; $69b7: $62
    jr nz, jr_018_69fd                            ; $69b8: $20 $43

    ld l, b                                       ; $69ba: $68
    ld h, c                                       ; $69bb: $61
    ld l, l                                       ; $69bc: $6d
    ld [hl], b                                    ; $69bd: $70
    ccf                                           ; $69be: $3f
    ld bc, $6c50                                  ; $69bf: $01 $50 $6c

jr_018_69c2:
    ld h, c                                       ; $69c2: $61
    ld a, c                                       ; $69c3: $79
    ld l, c                                       ; $69c4: $69
    ld l, [hl]                                    ; $69c5: $6e
    ld h, a                                       ; $69c6: $67
    jr nz, jr_018_6a2a                            ; $69c7: $20 $61

    jr nz, jr_018_6a18                            ; $69c9: $20 $4d

    ld h, c                                       ; $69cb: $61
    ld [hl], h                                    ; $69cc: $74
    ld h, e                                       ; $69cd: $63

jr_018_69ce:
    ld l, b                                       ; $69ce: $68

jr_018_69cf:
    ld bc, $6147                                  ; $69cf: $01 $47 $61
    ld l, l                                       ; $69d2: $6d
    ld h, l                                       ; $69d3: $65
    jr nz, jr_018_6a37                            ; $69d4: $20 $61

jr_018_69d6:
    ld [hl], d                                    ; $69d6: $72
    ld h, l                                       ; $69d7: $65
    jr nz, jr_018_6a53                            ; $69d8: $20 $79

    ld l, a                                       ; $69da: $6f
    ld [hl], l                                    ; $69db: $75
    ccf                                           ; $69dc: $3f
    inc bc                                        ; $69dd: $03
    nop                                           ; $69de: $00

jr_018_69df:
    ld c, c                                       ; $69df: $49
    ld [hl], e                                    ; $69e0: $73
    ld l, [hl]                                    ; $69e1: $6e
    daa                                           ; $69e2: $27

jr_018_69e3:
    ld [hl], h                                    ; $69e3: $74
    jr nz, jr_018_6a5a                            ; $69e4: $20 $74

    ld l, b                                       ; $69e6: $68
    ld h, l                                       ; $69e7: $65
    jr nz, jr_018_6a52                            ; $69e8: $20 $68

    ld h, l                                       ; $69ea: $65

jr_018_69eb:
    ld h, c                                       ; $69eb: $61
    ld [hl], h                                    ; $69ec: $74
    ld l, b                                       ; $69ed: $68
    jr nz, jr_018_6a59                            ; $69ee: $20 $69

jr_018_69f0:
    ld l, [hl]                                    ; $69f0: $6e
    ld bc, $6874                                  ; $69f1: $01 $74 $68
    ld h, l                                       ; $69f4: $65
    jr nz, jr_018_6a43                            ; $69f5: $20 $4c

    ld l, c                                       ; $69f7: $69

jr_018_69f8:
    ld l, [hl]                                    ; $69f8: $6e
    ld l, e                                       ; $69f9: $6b
    ld [hl], e                                    ; $69fa: $73
    jr nz, @+$74                                  ; $69fb: $20 $72

jr_018_69fd:
    ld l, a                                       ; $69fd: $6f
    ld [hl], l                                    ; $69fe: $75
    ld h, a                                       ; $69ff: $67

jr_018_6a00:
    ld l, b                                       ; $6a00: $68
    ld bc, $2061                                  ; $6a01: $01 $61 $20
    ld [hl], d                                    ; $6a04: $72

jr_018_6a05:
    ld h, l                                       ; $6a05: $65
    ld h, c                                       ; $6a06: $61
    ld l, h                                       ; $6a07: $6c

jr_018_6a08:
    jr nz, jr_018_6a7a                            ; $6a08: $20 $70

    ld h, c                                       ; $6a0a: $61
    ld l, c                                       ; $6a0b: $69
    ld l, [hl]                                    ; $6a0c: $6e
    ccf                                           ; $6a0d: $3f
    ld [bc], a                                    ; $6a0e: $02
    ld c, [hl]                                    ; $6a0f: $4e
    ld l, a                                       ; $6a10: $6f
    jr nz, jr_018_6a80                            ; $6a11: $20 $6d

    ld h, c                                       ; $6a13: $61

jr_018_6a14:
    ld [hl], h                                    ; $6a14: $74
    ld [hl], h                                    ; $6a15: $74
    ld h, l                                       ; $6a16: $65
    ld [hl], d                                    ; $6a17: $72

jr_018_6a18:
    jr nz, jr_018_6a82                            ; $6a18: $20 $68

    ld l, a                                       ; $6a1a: $6f
    ld [hl], a                                    ; $6a1b: $77
    jr nz, jr_018_6a91                            ; $6a1c: $20 $73

    ld [hl], h                                    ; $6a1e: $74
    ld [hl], d                                    ; $6a1f: $72
    ld l, a                                       ; $6a20: $6f
    ld l, [hl]                                    ; $6a21: $6e
    ld h, a                                       ; $6a22: $67
    ld bc, $6f79                                  ; $6a23: $01 $79 $6f
    ld [hl], l                                    ; $6a26: $75
    jr nz, jr_018_6a8a                            ; $6a27: $20 $61

    ld [hl], d                                    ; $6a29: $72

jr_018_6a2a:
    ld h, l                                       ; $6a2a: $65
    inc l                                         ; $6a2b: $2c
    jr nz, jr_018_6aa7                            ; $6a2c: $20 $79

    ld l, a                                       ; $6a2e: $6f
    ld [hl], l                                    ; $6a2f: $75
    daa                                           ; $6a30: $27
    ld l, h                                       ; $6a31: $6c
    ld l, h                                       ; $6a32: $6c
    jr nz, jr_018_6aa3                            ; $6a33: $20 $6e

    ld h, l                                       ; $6a35: $65
    ld h, l                                       ; $6a36: $65

jr_018_6a37:
    ld h, h                                       ; $6a37: $64
    ld bc, $2061                                  ; $6a38: $01 $61 $20
    scf                                           ; $6a3b: $37
    ld c, c                                       ; $6a3c: $49
    jr nz, jr_018_6ab3                            ; $6a3d: $20 $74

    ld l, a                                       ; $6a3f: $6f
    jr nz, @+$69                                  ; $6a40: $20 $67

    ld h, l                                       ; $6a42: $65

jr_018_6a43:
    ld [hl], h                                    ; $6a43: $74
    jr nz, jr_018_6ab5                            ; $6a44: $20 $6f

    ld [hl], l                                    ; $6a46: $75
    ld [hl], h                                    ; $6a47: $74
    ld l, $03                                     ; $6a48: $2e $03
    nop                                           ; $6a4a: $00
    ld c, b                                       ; $6a4b: $48
    ld h, l                                       ; $6a4c: $65
    ld a, c                                       ; $6a4d: $79
    ld hl, $4920                                  ; $6a4e: $21 $20 $49
    ld [hl], e                                    ; $6a51: $73

jr_018_6a52:
    ld l, [hl]                                    ; $6a52: $6e

jr_018_6a53:
    daa                                           ; $6a53: $27
    ld [hl], h                                    ; $6a54: $74
    jr nz, @+$76                                  ; $6a55: $20 $74

    ld l, b                                       ; $6a57: $68
    ld h, c                                       ; $6a58: $61

jr_018_6a59:
    ld [hl], h                                    ; $6a59: $74

jr_018_6a5a:
    ld bc, $7247                                  ; $6a5a: $01 $47 $72
    ld h, c                                       ; $6a5d: $61
    ld l, [hl]                                    ; $6a5e: $6e
    ld h, h                                       ; $6a5f: $64
    jr nz, jr_018_6aa5                            ; $6a60: $20 $43

    ld l, b                                       ; $6a62: $68
    ld h, c                                       ; $6a63: $61
    ld l, l                                       ; $6a64: $6d
    ld [hl], b                                    ; $6a65: $70
    inc l                                         ; $6a66: $2c
    ld bc, $3f07                                  ; $6a67: $01 $07 $3f
    ld [bc], a                                    ; $6a6a: $02
    ld d, a                                       ; $6a6b: $57
    ld h, c                                       ; $6a6c: $61
    ld a, c                                       ; $6a6d: $79
    jr nz, @+$76                                  ; $6a6e: $20 $74

    ld l, a                                       ; $6a70: $6f
    jr nz, jr_018_6ada                            ; $6a71: $20 $67

    ld l, a                                       ; $6a73: $6f
    jr nz, jr_018_6adf                            ; $6a74: $20 $69

    ld l, [hl]                                    ; $6a76: $6e
    ld bc, $6874                                  ; $6a77: $01 $74 $68

jr_018_6a7a:
    ld h, c                                       ; $6a7a: $61
    ld [hl], h                                    ; $6a7b: $74
    jr nz, jr_018_6aca                            ; $6a7c: $20 $4c

    ld l, c                                       ; $6a7e: $69
    ld l, [hl]                                    ; $6a7f: $6e

jr_018_6a80:
    ld l, e                                       ; $6a80: $6b
    ld [hl], e                                    ; $6a81: $73

jr_018_6a82:
    jr nz, jr_018_6ac7                            ; $6a82: $20 $43

    ld l, h                                       ; $6a84: $6c
    ld [hl], l                                    ; $6a85: $75
    ld h, d                                       ; $6a86: $62
    ld bc, $6f54                                  ; $6a87: $01 $54 $6f

jr_018_6a8a:
    ld [hl], l                                    ; $6a8a: $75
    ld [hl], d                                    ; $6a8b: $72
    ld l, [hl]                                    ; $6a8c: $6e
    ld h, c                                       ; $6a8d: $61
    ld l, l                                       ; $6a8e: $6d
    ld h, l                                       ; $6a8f: $65
    ld l, [hl]                                    ; $6a90: $6e

jr_018_6a91:
    ld [hl], h                                    ; $6a91: $74
    ld hl, $0003                                  ; $6a92: $21 $03 $00
    ld c, b                                       ; $6a95: $48
    ld h, l                                       ; $6a96: $65
    ld a, c                                       ; $6a97: $79
    inc l                                         ; $6a98: $2c
    jr nz, jr_018_6b0f                            ; $6a99: $20 $74

    ld l, b                                       ; $6a9b: $68
    ld h, l                                       ; $6a9c: $65
    ld a, c                                       ; $6a9d: $79
    jr nz, @+$75                                  ; $6a9e: $20 $73

    ld h, c                                       ; $6aa0: $61
    ld l, c                                       ; $6aa1: $69
    ld h, h                                       ; $6aa2: $64

jr_018_6aa3:
    jr nz, jr_018_6b1e                            ; $6aa3: $20 $79

jr_018_6aa5:
    ld l, a                                       ; $6aa5: $6f
    ld [hl], l                                    ; $6aa6: $75

jr_018_6aa7:
    ld bc, $6f77                                  ; $6aa7: $01 $77 $6f
    ld l, [hl]                                    ; $6aaa: $6e
    jr nz, jr_018_6b21                            ; $6aab: $20 $74

    ld l, b                                       ; $6aad: $68
    ld h, l                                       ; $6aae: $65
    jr nz, jr_018_6afd                            ; $6aaf: $20 $4c

    ld l, c                                       ; $6ab1: $69
    ld l, [hl]                                    ; $6ab2: $6e

jr_018_6ab3:
    ld l, e                                       ; $6ab3: $6b
    ld [hl], e                                    ; $6ab4: $73

jr_018_6ab5:
    ld bc, $6c43                                  ; $6ab5: $01 $43 $6c
    ld [hl], l                                    ; $6ab8: $75
    ld h, d                                       ; $6ab9: $62
    jr nz, jr_018_6b10                            ; $6aba: $20 $54

    ld l, a                                       ; $6abc: $6f
    ld [hl], l                                    ; $6abd: $75
    ld [hl], d                                    ; $6abe: $72
    ld l, [hl]                                    ; $6abf: $6e
    ld h, c                                       ; $6ac0: $61
    ld l, l                                       ; $6ac1: $6d
    ld h, l                                       ; $6ac2: $65
    ld l, [hl]                                    ; $6ac3: $6e
    ld [hl], h                                    ; $6ac4: $74
    ld l, $02                                     ; $6ac5: $2e $02

jr_018_6ac7:
    ld d, a                                       ; $6ac7: $57
    ld l, a                                       ; $6ac8: $6f
    ld [hl], a                                    ; $6ac9: $77

jr_018_6aca:
    ld hl, $4920                                  ; $6aca: $21 $20 $49
    jr nz, jr_018_6b43                            ; $6acd: $20 $74

    ld l, b                                       ; $6acf: $68
    ld l, c                                       ; $6ad0: $69
    ld l, [hl]                                    ; $6ad1: $6e
    ld l, e                                       ; $6ad2: $6b
    jr nz, jr_018_6b49                            ; $6ad3: $20 $74

    ld l, b                                       ; $6ad5: $68
    ld h, c                                       ; $6ad6: $61
    ld [hl], h                                    ; $6ad7: $74
    daa                                           ; $6ad8: $27
    ld [hl], e                                    ; $6ad9: $73

jr_018_6ada:
    ld bc, $696c                                  ; $6ada: $01 $6c $69
    ld l, e                                       ; $6add: $6b
    ld h, l                                       ; $6ade: $65

jr_018_6adf:
    inc l                                         ; $6adf: $2c
    jr nz, jr_018_6b55                            ; $6ae0: $20 $73

    ld l, a                                       ; $6ae2: $6f
    jr nz, jr_018_6b48                            ; $6ae3: $20 $63

    ld l, a                                       ; $6ae5: $6f
    ld l, a                                       ; $6ae6: $6f
    ld l, h                                       ; $6ae7: $6c
    ld hl, $0003                                  ; $6ae8: $21 $03 $00
    ld b, [hl]                                    ; $6aeb: $46
    ld l, c                                       ; $6aec: $69
    ld l, [hl]                                    ; $6aed: $6e
    ld h, c                                       ; $6aee: $61
    ld l, h                                       ; $6aef: $6c
    ld l, h                                       ; $6af0: $6c
    ld a, c                                       ; $6af1: $79
    inc l                                         ; $6af2: $2c
    jr nz, jr_018_6b42                            ; $6af3: $20 $4d

    ld h, c                                       ; $6af5: $61
    ld [hl], d                                    ; $6af6: $72
    ld l, c                                       ; $6af7: $69
    ld l, a                                       ; $6af8: $6f
    ld l, [hl]                                    ; $6af9: $6e
    ld bc, $6c43                                  ; $6afa: $01 $43 $6c

jr_018_6afd:
    ld [hl], l                                    ; $6afd: $75
    ld h, d                                       ; $6afe: $62
    daa                                           ; $6aff: $27
    ld [hl], e                                    ; $6b00: $73
    jr nz, jr_018_6b73                            ; $6b01: $20 $70

    ld [hl], d                                    ; $6b03: $72
    ld l, a                                       ; $6b04: $6f
    ld h, h                                       ; $6b05: $64
    ld [hl], l                                    ; $6b06: $75
    ld h, e                                       ; $6b07: $63
    ld h, l                                       ; $6b08: $65
    ld h, h                                       ; $6b09: $64
    jr nz, jr_018_6b6d                            ; $6b0a: $20 $61

    ld bc, $7247                                  ; $6b0c: $01 $47 $72

jr_018_6b0f:
    ld h, c                                       ; $6b0f: $61

jr_018_6b10:
    ld l, [hl]                                    ; $6b10: $6e
    ld h, h                                       ; $6b11: $64
    jr nz, jr_018_6b57                            ; $6b12: $20 $43

    ld l, b                                       ; $6b14: $68
    ld h, c                                       ; $6b15: $61
    ld l, l                                       ; $6b16: $6d
    ld [hl], b                                    ; $6b17: $70
    ld l, c                                       ; $6b18: $69
    ld l, a                                       ; $6b19: $6f
    ld l, [hl]                                    ; $6b1a: $6e
    ld hl, $0003                                  ; $6b1b: $21 $03 $00

jr_018_6b1e:
    ld b, h                                       ; $6b1e: $44
    ld l, c                                       ; $6b1f: $69
    ld h, h                                       ; $6b20: $64

jr_018_6b21:
    jr nz, jr_018_6b9c                            ; $6b21: $20 $79

    ld l, a                                       ; $6b23: $6f
    ld [hl], l                                    ; $6b24: $75
    jr nz, @+$74                                  ; $6b25: $20 $72

    ld h, l                                       ; $6b27: $65
    ld h, c                                       ; $6b28: $61
    ld l, h                                       ; $6b29: $6c
    ld l, h                                       ; $6b2a: $6c
    ld a, c                                       ; $6b2b: $79
    jr nz, @+$64                                  ; $6b2c: $20 $62

    ld h, l                                       ; $6b2e: $65
    ld h, c                                       ; $6b2f: $61
    ld [hl], h                                    ; $6b30: $74
    ld bc, $7247                                  ; $6b31: $01 $47 $72
    ld h, c                                       ; $6b34: $61
    ld l, [hl]                                    ; $6b35: $6e
    ld h, h                                       ; $6b36: $64
    jr nz, jr_018_6b7c                            ; $6b37: $20 $43

    ld l, b                                       ; $6b39: $68
    ld h, c                                       ; $6b3a: $61
    ld l, l                                       ; $6b3b: $6d
    ld [hl], b                                    ; $6b3c: $70
    jr nz, jr_018_6b4d                            ; $6b3d: $20 $0e

    rlca                                          ; $6b3f: $07
    ccf                                           ; $6b40: $3f
    nop                                           ; $6b41: $00

jr_018_6b42:
    ld b, c                                       ; $6b42: $41

jr_018_6b43:
    ld l, h                                       ; $6b43: $6c
    ld l, h                                       ; $6b44: $6c
    jr nz, jr_018_6bae                            ; $6b45: $20 $67

    ld l, a                                       ; $6b47: $6f

jr_018_6b48:
    ld l, h                                       ; $6b48: $6c

jr_018_6b49:
    ld h, [hl]                                    ; $6b49: $66
    ld h, l                                       ; $6b4a: $65
    ld [hl], d                                    ; $6b4b: $72
    ld [hl], e                                    ; $6b4c: $73

jr_018_6b4d:
    jr nz, @+$79                                  ; $6b4d: $20 $77

    ld h, l                                       ; $6b4f: $65
    ld [hl], d                                    ; $6b50: $72
    ld h, l                                       ; $6b51: $65
    ld bc, $6873                                  ; $6b52: $01 $73 $68

jr_018_6b55:
    ld l, a                                       ; $6b55: $6f
    ld l, a                                       ; $6b56: $6f

jr_018_6b57:
    ld [hl], h                                    ; $6b57: $74
    ld l, c                                       ; $6b58: $69
    ld l, [hl]                                    ; $6b59: $6e
    ld h, a                                       ; $6b5a: $67
    jr nz, jr_018_6bc3                            ; $6b5b: $20 $66

    ld l, a                                       ; $6b5d: $6f
    ld [hl], d                                    ; $6b5e: $72
    jr nz, jr_018_6b6f                            ; $6b5f: $20 $0e

    rlca                                          ; $6b61: $07
    ld l, $02                                     ; $6b62: $2e $02
    ld c, [hl]                                    ; $6b64: $4e
    ld l, a                                       ; $6b65: $6f
    ld [hl], a                                    ; $6b66: $77
    inc l                                         ; $6b67: $2c
    jr nz, jr_018_6bb3                            ; $6b68: $20 $49

    jr nz, jr_018_6bd3                            ; $6b6a: $20 $67

    ld [hl], l                                    ; $6b6c: $75

jr_018_6b6d:
    ld h, l                                       ; $6b6d: $65
    ld [hl], e                                    ; $6b6e: $73

jr_018_6b6f:
    ld [hl], e                                    ; $6b6f: $73
    jr nz, jr_018_6be9                            ; $6b70: $20 $77

    ld h, l                                       ; $6b72: $65

jr_018_6b73:
    daa                                           ; $6b73: $27
    ld l, h                                       ; $6b74: $6c
    ld l, h                                       ; $6b75: $6c
    ld bc, $6562                                  ; $6b76: $01 $62 $65
    jr nz, jr_018_6bdc                            ; $6b79: $20 $61

    ld h, [hl]                                    ; $6b7b: $66

jr_018_6b7c:
    ld [hl], h                                    ; $6b7c: $74
    ld h, l                                       ; $6b7d: $65
    ld [hl], d                                    ; $6b7e: $72
    jr nz, jr_018_6bfa                            ; $6b7f: $20 $79

    ld l, a                                       ; $6b81: $6f
    ld [hl], l                                    ; $6b82: $75
    inc l                                         ; $6b83: $2c
    ld bc, $2107                                  ; $6b84: $01 $07 $21
    inc bc                                        ; $6b87: $03
    nop                                           ; $6b88: $00
    ld b, e                                       ; $6b89: $43
    daa                                           ; $6b8a: $27
    ld l, l                                       ; $6b8b: $6d
    ld l, a                                       ; $6b8c: $6f
    ld l, [hl]                                    ; $6b8d: $6e
    inc l                                         ; $6b8e: $2c
    jr nz, jr_018_6c02                            ; $6b8f: $20 $71

    ld [hl], l                                    ; $6b91: $75
    ld l, c                                       ; $6b92: $69
    ld [hl], h                                    ; $6b93: $74
    jr nz, @+$76                                  ; $6b94: $20 $74

    ld l, b                                       ; $6b96: $68
    ld h, l                                       ; $6b97: $65
    ld bc, $6f6d                                  ; $6b98: $01 $6d $6f
    ld h, h                                       ; $6b9b: $64

jr_018_6b9c:
    ld h, l                                       ; $6b9c: $65
    ld [hl], e                                    ; $6b9d: $73
    ld [hl], h                                    ; $6b9e: $74
    ld a, c                                       ; $6b9f: $79
    jr nz, jr_018_6c03                            ; $6ba0: $20 $61

    ld h, e                                       ; $6ba2: $63
    ld [hl], h                                    ; $6ba3: $74
    ld hl, $0003                                  ; $6ba4: $21 $03 $00
    ld d, e                                       ; $6ba7: $53
    ld l, a                                       ; $6ba8: $6f
    jr nz, jr_018_6c24                            ; $6ba9: $20 $79

    ld l, a                                       ; $6bab: $6f
    ld [hl], l                                    ; $6bac: $75
    daa                                           ; $6bad: $27

jr_018_6bae:
    ld [hl], d                                    ; $6bae: $72
    ld h, l                                       ; $6baf: $65
    jr nz, jr_018_6c26                            ; $6bb0: $20 $74

    ld l, b                                       ; $6bb2: $68

jr_018_6bb3:
    ld h, l                                       ; $6bb3: $65
    jr nz, jr_018_6c25                            ; $6bb4: $20 $6f

    ld l, [hl]                                    ; $6bb6: $6e
    ld h, l                                       ; $6bb7: $65
    ld bc, $6877                                  ; $6bb8: $01 $77 $68
    ld l, a                                       ; $6bbb: $6f
    jr nz, jr_018_6c20                            ; $6bbc: $20 $62

    ld h, l                                       ; $6bbe: $65
    ld h, c                                       ; $6bbf: $61
    ld [hl], h                                    ; $6bc0: $74
    jr nz, jr_018_6c37                            ; $6bc1: $20 $74

jr_018_6bc3:
    ld l, b                                       ; $6bc3: $68
    ld h, l                                       ; $6bc4: $65
    jr nz, jr_018_6c13                            ; $6bc5: $20 $4c

    ld l, c                                       ; $6bc7: $69
    ld l, [hl]                                    ; $6bc8: $6e
    ld l, e                                       ; $6bc9: $6b
    ld [hl], e                                    ; $6bca: $73
    ld hl, $5702                                  ; $6bcb: $21 $02 $57
    ld l, b                                       ; $6bce: $68
    ld h, c                                       ; $6bcf: $61
    ld [hl], h                                    ; $6bd0: $74
    jr nz, jr_018_6c37                            ; $6bd1: $20 $64

jr_018_6bd3:
    ld l, a                                       ; $6bd3: $6f
    jr nz, jr_018_6c4f                            ; $6bd4: $20 $79

    ld l, a                                       ; $6bd6: $6f
    ld [hl], l                                    ; $6bd7: $75
    jr nz, @+$75                                  ; $6bd8: $20 $73

    ld h, c                                       ; $6bda: $61
    ld a, c                                       ; $6bdb: $79

jr_018_6bdc:
    ld bc, $6f79                                  ; $6bdc: $01 $79 $6f
    ld [hl], l                                    ; $6bdf: $75
    jr nz, jr_018_6c56                            ; $6be0: $20 $74

    ld h, l                                       ; $6be2: $65
    ld h, c                                       ; $6be3: $61
    ld h, e                                       ; $6be4: $63
    ld l, b                                       ; $6be5: $68
    jr nz, @+$6f                                  ; $6be6: $20 $6d

    ld h, l                                       ; $6be8: $65

jr_018_6be9:
    jr nz, jr_018_6c53                            ; $6be9: $20 $68

    ld l, a                                       ; $6beb: $6f
    ld [hl], a                                    ; $6bec: $77
    ld bc, $6f74                                  ; $6bed: $01 $74 $6f
    jr nz, jr_018_6c53                            ; $6bf0: $20 $61

    ld [hl], h                                    ; $6bf2: $74
    ld [hl], h                                    ; $6bf3: $74
    ld h, c                                       ; $6bf4: $61
    ld h, e                                       ; $6bf5: $63
    ld l, e                                       ; $6bf6: $6b
    jr nz, jr_018_6c62                            ; $6bf7: $20 $69

    ld [hl], h                                    ; $6bf9: $74

jr_018_6bfa:
    ccf                                           ; $6bfa: $3f
    inc bc                                        ; $6bfb: $03
    nop                                           ; $6bfc: $00
    ld b, c                                       ; $6bfd: $41
    ld [hl], b                                    ; $6bfe: $70
    ld [hl], b                                    ; $6bff: $70
    ld h, c                                       ; $6c00: $61
    ld [hl], d                                    ; $6c01: $72

jr_018_6c02:
    ld h, l                                       ; $6c02: $65

jr_018_6c03:
    ld l, [hl]                                    ; $6c03: $6e
    ld [hl], h                                    ; $6c04: $74
    ld l, h                                       ; $6c05: $6c
    ld a, c                                       ; $6c06: $79
    jr nz, jr_018_6c6a                            ; $6c07: $20 $61

    jr nz, @+$6e                                  ; $6c09: $20 $6c

    ld l, a                                       ; $6c0b: $6f
    ld [hl], h                                    ; $6c0c: $74
    ld bc, $666f                                  ; $6c0d: $01 $6f $66
    jr nz, jr_018_6c59                            ; $6c10: $20 $47

    ld [hl], d                                    ; $6c12: $72

jr_018_6c13:
    ld h, c                                       ; $6c13: $61
    ld l, [hl]                                    ; $6c14: $6e
    ld h, h                                       ; $6c15: $64
    jr nz, jr_018_6c5b                            ; $6c16: $20 $43

    ld l, b                                       ; $6c18: $68
    ld h, c                                       ; $6c19: $61
    ld l, l                                       ; $6c1a: $6d
    ld [hl], b                                    ; $6c1b: $70
    ld [hl], e                                    ; $6c1c: $73
    ld bc, $6168                                  ; $6c1d: $01 $68 $61

jr_018_6c20:
    halt                                          ; $6c20: $76
    ld h, l                                       ; $6c21: $65
    jr nz, jr_018_6c94                            ; $6c22: $20 $70

jr_018_6c24:
    ld l, h                                       ; $6c24: $6c

jr_018_6c25:
    ld h, c                                       ; $6c25: $61

jr_018_6c26:
    ld a, c                                       ; $6c26: $79
    ld h, l                                       ; $6c27: $65
    ld h, h                                       ; $6c28: $64
    jr nz, jr_018_6c78                            ; $6c29: $20 $4d

    ld h, c                                       ; $6c2b: $61
    ld [hl], d                                    ; $6c2c: $72
    ld l, c                                       ; $6c2d: $69
    ld l, a                                       ; $6c2e: $6f
    ld l, $02                                     ; $6c2f: $2e $02
    ld b, d                                       ; $6c31: $42
    ld [hl], l                                    ; $6c32: $75
    ld [hl], h                                    ; $6c33: $74
    jr nz, jr_018_6ca4                            ; $6c34: $20 $6e

    ld l, a                                       ; $6c36: $6f

jr_018_6c37:
    ld l, [hl]                                    ; $6c37: $6e
    ld h, l                                       ; $6c38: $65
    jr nz, jr_018_6ca3                            ; $6c39: $20 $68

    ld h, c                                       ; $6c3b: $61
    halt                                          ; $6c3c: $76
    ld h, l                                       ; $6c3d: $65
    ld bc, $6562                                  ; $6c3e: $01 $62 $65
    ld h, l                                       ; $6c41: $65
    ld l, [hl]                                    ; $6c42: $6e
    jr nz, jr_018_6ca6                            ; $6c43: $20 $61

    ld h, d                                       ; $6c45: $62
    ld l, h                                       ; $6c46: $6c
    ld h, l                                       ; $6c47: $65
    jr nz, jr_018_6cbe                            ; $6c48: $20 $74

    ld l, a                                       ; $6c4a: $6f
    ld bc, $6562                                  ; $6c4b: $01 $62 $65
    ld h, c                                       ; $6c4e: $61

jr_018_6c4f:
    ld [hl], h                                    ; $6c4f: $74
    jr nz, jr_018_6cba                            ; $6c50: $20 $68

    ld l, c                                       ; $6c52: $69

jr_018_6c53:
    ld l, l                                       ; $6c53: $6d
    ld l, $03                                     ; $6c54: $2e $03

jr_018_6c56:
    nop                                           ; $6c56: $00
    ld d, h                                       ; $6c57: $54
    ld l, b                                       ; $6c58: $68

jr_018_6c59:
    ld h, l                                       ; $6c59: $65
    ld a, c                                       ; $6c5a: $79

jr_018_6c5b:
    jr nz, jr_018_6cd0                            ; $6c5b: $20 $73

    ld h, c                                       ; $6c5d: $61
    ld a, c                                       ; $6c5e: $79
    jr nz, @+$52                                  ; $6c5f: $20 $50

    ld h, l                                       ; $6c61: $65

jr_018_6c62:
    ld h, c                                       ; $6c62: $61
    ld h, e                                       ; $6c63: $63
    ld l, b                                       ; $6c64: $68
    daa                                           ; $6c65: $27
    ld [hl], e                                    ; $6c66: $73
    ld bc, $6143                                  ; $6c67: $01 $43 $61

jr_018_6c6a:
    ld [hl], e                                    ; $6c6a: $73
    ld [hl], h                                    ; $6c6b: $74
    ld l, h                                       ; $6c6c: $6c
    ld h, l                                       ; $6c6d: $65
    jr nz, jr_018_6cd9                            ; $6c6e: $20 $69

    ld [hl], e                                    ; $6c70: $73
    jr nz, @+$79                                  ; $6c71: $20 $77

    ld h, c                                       ; $6c73: $61
    ld a, c                                       ; $6c74: $79
    ld bc, $7075                                  ; $6c75: $01 $75 $70

jr_018_6c78:
    jr nz, jr_018_6ce3                            ; $6c78: $20 $69

    ld l, [hl]                                    ; $6c7a: $6e
    jr nz, jr_018_6cf1                            ; $6c7b: $20 $74

    ld l, b                                       ; $6c7d: $68
    ld h, l                                       ; $6c7e: $65
    jr nz, jr_018_6ce4                            ; $6c7f: $20 $63

    ld l, h                                       ; $6c81: $6c
    ld l, a                                       ; $6c82: $6f
    ld [hl], l                                    ; $6c83: $75
    ld h, h                                       ; $6c84: $64
    ld [hl], e                                    ; $6c85: $73
    ld l, $2e                                     ; $6c86: $2e $2e
    ld l, $03                                     ; $6c88: $2e $03
    nop                                           ; $6c8a: $00
    ld c, c                                       ; $6c8b: $49
    jr nz, jr_018_6cf6                            ; $6c8c: $20 $68

    ld h, l                                       ; $6c8e: $65
    ld h, c                                       ; $6c8f: $61
    ld [hl], d                                    ; $6c90: $72
    jr nz, jr_018_6cfc                            ; $6c91: $20 $69

    ld l, [hl]                                    ; $6c93: $6e

jr_018_6c94:
    halt                                          ; $6c94: $76
    ld l, c                                       ; $6c95: $69
    ld [hl], h                                    ; $6c96: $74
    ld h, c                                       ; $6c97: $61
    ld [hl], h                                    ; $6c98: $74
    ld l, c                                       ; $6c99: $69
    ld l, a                                       ; $6c9a: $6f
    ld l, [hl]                                    ; $6c9b: $6e
    ld [hl], e                                    ; $6c9c: $73
    ld bc, $6f74                                  ; $6c9d: $01 $74 $6f
    jr nz, jr_018_6cf2                            ; $6ca0: $20 $50

    ld h, l                                       ; $6ca2: $65

jr_018_6ca3:
    ld h, c                                       ; $6ca3: $61

jr_018_6ca4:
    ld h, e                                       ; $6ca4: $63
    ld l, b                                       ; $6ca5: $68

jr_018_6ca6:
    daa                                           ; $6ca6: $27
    ld [hl], e                                    ; $6ca7: $73
    jr nz, jr_018_6ced                            ; $6ca8: $20 $43

    ld h, c                                       ; $6caa: $61
    ld [hl], e                                    ; $6cab: $73
    ld [hl], h                                    ; $6cac: $74
    ld l, h                                       ; $6cad: $6c
    ld h, l                                       ; $6cae: $65
    ld bc, $6f63                                  ; $6caf: $01 $63 $6f
    ld l, l                                       ; $6cb2: $6d
    ld h, l                                       ; $6cb3: $65
    jr nz, @+$77                                  ; $6cb4: $20 $75

    ld l, [hl]                                    ; $6cb6: $6e
    ld h, l                                       ; $6cb7: $65
    ld a, b                                       ; $6cb8: $78
    ld [hl], b                                    ; $6cb9: $70

jr_018_6cba:
    ld h, l                                       ; $6cba: $65
    ld h, e                                       ; $6cbb: $63
    ld [hl], h                                    ; $6cbc: $74
    ld h, l                                       ; $6cbd: $65

jr_018_6cbe:
    ld h, h                                       ; $6cbe: $64
    ld l, h                                       ; $6cbf: $6c
    ld a, c                                       ; $6cc0: $79
    ld l, $02                                     ; $6cc1: $2e $02
    ld c, c                                       ; $6cc3: $49
    jr nz, jr_018_6d2e                            ; $6cc4: $20 $68

    ld h, l                                       ; $6cc6: $65
    ld h, c                                       ; $6cc7: $61
    ld [hl], d                                    ; $6cc8: $72
    jr nz, jr_018_6cd9                            ; $6cc9: $20 $0e

    rlca                                          ; $6ccb: $07
    jr nz, jr_018_6d35                            ; $6ccc: $20 $67

    ld l, a                                       ; $6cce: $6f
    ld [hl], h                                    ; $6ccf: $74

jr_018_6cd0:
    ld bc, $6e6f                                  ; $6cd0: $01 $6f $6e
    ld h, l                                       ; $6cd3: $65
    jr nz, jr_018_6d3d                            ; $6cd4: $20 $67

    ld l, a                                       ; $6cd6: $6f
    ld l, c                                       ; $6cd7: $69
    ld l, [hl]                                    ; $6cd8: $6e

jr_018_6cd9:
    ld h, a                                       ; $6cd9: $67
    jr nz, jr_018_6d42                            ; $6cda: $20 $66

    ld [hl], d                                    ; $6cdc: $72
    ld l, a                                       ; $6cdd: $6f
    ld l, l                                       ; $6cde: $6d
    ld bc, $614d                                  ; $6cdf: $01 $4d $61
    ld [hl], d                                    ; $6ce2: $72

jr_018_6ce3:
    ld l, c                                       ; $6ce3: $69

jr_018_6ce4:
    ld l, a                                       ; $6ce4: $6f
    ld l, [hl]                                    ; $6ce5: $6e
    jr nz, @+$76                                  ; $6ce6: $20 $74

    ld l, a                                       ; $6ce8: $6f
    jr nz, jr_018_6d37                            ; $6ce9: $20 $4c

    ld l, c                                       ; $6ceb: $69
    ld l, [hl]                                    ; $6cec: $6e

jr_018_6ced:
    ld l, e                                       ; $6ced: $6b
    ld [hl], e                                    ; $6cee: $73
    ld l, $03                                     ; $6cef: $2e $03

jr_018_6cf1:
    nop                                           ; $6cf1: $00

jr_018_6cf2:
    ld e, c                                       ; $6cf2: $59
    ld l, a                                       ; $6cf3: $6f
    ld [hl], l                                    ; $6cf4: $75
    daa                                           ; $6cf5: $27

jr_018_6cf6:
    halt                                          ; $6cf6: $76
    ld h, l                                       ; $6cf7: $65
    jr nz, jr_018_6d5d                            ; $6cf8: $20 $63

    ld l, a                                       ; $6cfa: $6f
    ld l, l                                       ; $6cfb: $6d

jr_018_6cfc:
    ld h, l                                       ; $6cfc: $65
    jr nz, jr_018_6d60                            ; $6cfd: $20 $61

    jr nz, jr_018_6d6d                            ; $6cff: $20 $6c

    ld l, a                                       ; $6d01: $6f
    ld l, [hl]                                    ; $6d02: $6e
    ld h, a                                       ; $6d03: $67
    ld bc, $6177                                  ; $6d04: $01 $77 $61
    ld a, c                                       ; $6d07: $79
    inc l                                         ; $6d08: $2c
    jr nz, jr_018_6d12                            ; $6d09: $20 $07

    ld l, $02                                     ; $6d0b: $2e $02
    ld b, a                                       ; $6d0d: $47
    ld [hl], d                                    ; $6d0e: $72
    ld h, c                                       ; $6d0f: $61
    ld l, [hl]                                    ; $6d10: $6e
    ld h, h                                       ; $6d11: $64

jr_018_6d12:
    jr nz, jr_018_6d57                            ; $6d12: $20 $43

    ld l, b                                       ; $6d14: $68
    ld h, c                                       ; $6d15: $61
    ld l, l                                       ; $6d16: $6d
    ld [hl], b                                    ; $6d17: $70
    ld l, c                                       ; $6d18: $69
    ld l, a                                       ; $6d19: $6f
    ld l, [hl]                                    ; $6d1a: $6e
    ld bc, $7369                                  ; $6d1b: $01 $69 $73
    jr nz, jr_018_6d94                            ; $6d1e: $20 $74

    ld l, b                                       ; $6d20: $68
    ld h, l                                       ; $6d21: $65
    jr nz, jr_018_6d98                            ; $6d22: $20 $74

    ld l, a                                       ; $6d24: $6f
    ld [hl], b                                    ; $6d25: $70
    ld hl, $0003                                  ; $6d26: $21 $03 $00
    ld c, c                                       ; $6d29: $49
    jr nz, jr_018_6d93                            ; $6d2a: $20 $67

    ld [hl], l                                    ; $6d2c: $75
    ld h, l                                       ; $6d2d: $65

jr_018_6d2e:
    ld [hl], e                                    ; $6d2e: $73
    ld [hl], e                                    ; $6d2f: $73
    jr nz, @+$7b                                  ; $6d30: $20 $79

    ld l, a                                       ; $6d32: $6f
    ld [hl], l                                    ; $6d33: $75
    daa                                           ; $6d34: $27

jr_018_6d35:
    ld l, h                                       ; $6d35: $6c
    ld l, h                                       ; $6d36: $6c

jr_018_6d37:
    jr nz, jr_018_6d9b                            ; $6d37: $20 $62

    ld h, l                                       ; $6d39: $65
    ld bc, $6f67                                  ; $6d3a: $01 $67 $6f

jr_018_6d3d:
    ld l, c                                       ; $6d3d: $69
    ld l, [hl]                                    ; $6d3e: $6e
    ld h, a                                       ; $6d3f: $67
    jr nz, @+$76                                  ; $6d40: $20 $74

jr_018_6d42:
    ld l, a                                       ; $6d42: $6f
    jr nz, jr_018_6d95                            ; $6d43: $20 $50

    ld h, l                                       ; $6d45: $65
    ld h, c                                       ; $6d46: $61
    ld h, e                                       ; $6d47: $63
    ld l, b                                       ; $6d48: $68
    daa                                           ; $6d49: $27
    ld [hl], e                                    ; $6d4a: $73
    ld bc, $6143                                  ; $6d4b: $01 $43 $61
    ld [hl], e                                    ; $6d4e: $73
    ld [hl], h                                    ; $6d4f: $74
    ld l, h                                       ; $6d50: $6c
    ld h, l                                       ; $6d51: $65
    inc l                                         ; $6d52: $2c
    jr nz, @+$09                                  ; $6d53: $20 $07

    ld l, $02                                     ; $6d55: $2e $02

jr_018_6d57:
    ld c, c                                       ; $6d57: $49
    ld [hl], h                                    ; $6d58: $74
    daa                                           ; $6d59: $27
    ld h, h                                       ; $6d5a: $64
    jr nz, jr_018_6dbf                            ; $6d5b: $20 $62

jr_018_6d5d:
    ld h, l                                       ; $6d5d: $65
    jr nz, jr_018_6dd3                            ; $6d5e: $20 $73

jr_018_6d60:
    ld l, a                                       ; $6d60: $6f
    jr nz, jr_018_6dc6                            ; $6d61: $20 $63

    ld l, a                                       ; $6d63: $6f
    ld l, a                                       ; $6d64: $6f
    ld l, h                                       ; $6d65: $6c
    ld bc, $6f74                                  ; $6d66: $01 $74 $6f
    jr nz, jr_018_6ddb                            ; $6d69: $20 $70

    ld l, h                                       ; $6d6b: $6c
    ld h, c                                       ; $6d6c: $61

jr_018_6d6d:
    ld a, c                                       ; $6d6d: $79
    jr nz, jr_018_6dd1                            ; $6d6e: $20 $61

    ld [hl], h                                    ; $6d70: $74
    ld bc, $6550                                  ; $6d71: $01 $50 $65
    ld h, c                                       ; $6d74: $61
    ld h, e                                       ; $6d75: $63
    ld l, b                                       ; $6d76: $68
    daa                                           ; $6d77: $27
    ld [hl], e                                    ; $6d78: $73
    jr nz, jr_018_6dbe                            ; $6d79: $20 $43

    ld h, c                                       ; $6d7b: $61
    ld [hl], e                                    ; $6d7c: $73
    ld [hl], h                                    ; $6d7d: $74
    ld l, h                                       ; $6d7e: $6c
    ld h, l                                       ; $6d7f: $65
    ld l, $2e                                     ; $6d80: $2e $2e
    ld l, $03                                     ; $6d82: $2e $03
    nop                                           ; $6d84: $00
    ld b, [hl]                                    ; $6d85: $46
    ld l, c                                       ; $6d86: $69
    ld l, [hl]                                    ; $6d87: $6e
    ld l, c                                       ; $6d88: $69
    ld [hl], e                                    ; $6d89: $73
    ld l, b                                       ; $6d8a: $68
    ld h, l                                       ; $6d8b: $65
    ld h, h                                       ; $6d8c: $64
    jr nz, @+$72                                  ; $6d8d: $20 $70

    ld l, h                                       ; $6d8f: $6c
    ld h, c                                       ; $6d90: $61
    ld a, c                                       ; $6d91: $79
    ld l, c                                       ; $6d92: $69

jr_018_6d93:
    ld l, [hl]                                    ; $6d93: $6e

jr_018_6d94:
    ld h, a                                       ; $6d94: $67

jr_018_6d95:
    ld bc, $6f74                                  ; $6d95: $01 $74 $6f

jr_018_6d98:
    ld h, h                                       ; $6d98: $64
    ld h, c                                       ; $6d99: $61
    ld a, c                                       ; $6d9a: $79

jr_018_6d9b:
    inc l                                         ; $6d9b: $2c
    jr nz, jr_018_6da5                            ; $6d9c: $20 $07

    ccf                                           ; $6d9e: $3f
    nop                                           ; $6d9f: $00
    ld c, a                                       ; $6da0: $4f
    ld l, b                                       ; $6da1: $68
    inc l                                         ; $6da2: $2c
    jr nz, jr_018_6e0c                            ; $6da3: $20 $67

jr_018_6da5:
    ld l, c                                       ; $6da5: $69
    halt                                          ; $6da6: $76
    ld l, c                                       ; $6da7: $69
    ld l, [hl]                                    ; $6da8: $6e
    ld h, a                                       ; $6da9: $67
    ld bc, $6f79                                  ; $6daa: $01 $79 $6f
    ld [hl], l                                    ; $6dad: $75
    ld [hl], d                                    ; $6dae: $72
    jr nz, @+$76                                  ; $6daf: $20 $74

    ld l, c                                       ; $6db1: $69
    ld [hl], d                                    ; $6db2: $72
    ld h, l                                       ; $6db3: $65
    ld h, h                                       ; $6db4: $64
    jr nz, @+$64                                  ; $6db5: $20 $62

    ld l, a                                       ; $6db7: $6f
    ld h, h                                       ; $6db8: $64
    ld a, c                                       ; $6db9: $79
    ld bc, $2061                                  ; $6dba: $01 $61 $20
    ld [hl], d                                    ; $6dbd: $72

jr_018_6dbe:
    ld h, l                                       ; $6dbe: $65

jr_018_6dbf:
    ld [hl], e                                    ; $6dbf: $73
    ld [hl], h                                    ; $6dc0: $74
    jr nz, jr_018_6e32                            ; $6dc1: $20 $6f

    ld [hl], l                                    ; $6dc3: $75
    ld [hl], h                                    ; $6dc4: $74
    ld [hl], e                                    ; $6dc5: $73

jr_018_6dc6:
    ld l, c                                       ; $6dc6: $69
    ld h, h                                       ; $6dc7: $64
    ld h, l                                       ; $6dc8: $65
    ccf                                           ; $6dc9: $3f
    ld [bc], a                                    ; $6dca: $02
    ld d, h                                       ; $6dcb: $54
    ld l, b                                       ; $6dcc: $68
    ld h, c                                       ; $6dcd: $61
    ld [hl], h                                    ; $6dce: $74
    jr nz, jr_018_6e32                            ; $6dcf: $20 $61

jr_018_6dd1:
    ld l, h                                       ; $6dd1: $6c
    ld [hl], a                                    ; $6dd2: $77

jr_018_6dd3:
    ld h, c                                       ; $6dd3: $61
    ld a, c                                       ; $6dd4: $79
    ld [hl], e                                    ; $6dd5: $73
    jr nz, jr_018_6e44                            ; $6dd6: $20 $6c

    ld l, c                                       ; $6dd8: $69
    ld h, [hl]                                    ; $6dd9: $66
    ld [hl], h                                    ; $6dda: $74

jr_018_6ddb:
    ld [hl], e                                    ; $6ddb: $73
    ld bc, $6874                                  ; $6ddc: $01 $74 $68
    ld h, l                                       ; $6ddf: $65
    jr nz, jr_018_6e55                            ; $6de0: $20 $73

    ld [hl], b                                    ; $6de2: $70
    ld l, c                                       ; $6de3: $69
    ld [hl], d                                    ; $6de4: $72
    ld l, c                                       ; $6de5: $69
    ld [hl], h                                    ; $6de6: $74
    ld [hl], e                                    ; $6de7: $73
    ld hl, $5720                                  ; $6de8: $21 $20 $57
    ld h, l                                       ; $6deb: $65
    ld l, h                                       ; $6dec: $6c
    ld l, h                                       ; $6ded: $6c
    inc l                                         ; $6dee: $2c
    ld bc, $6174                                  ; $6def: $01 $74 $61
    ld l, e                                       ; $6df2: $6b
    ld h, l                                       ; $6df3: $65
    jr nz, @+$7b                                  ; $6df4: $20 $79

    ld l, a                                       ; $6df6: $6f
    ld [hl], l                                    ; $6df7: $75
    ld [hl], d                                    ; $6df8: $72
    jr nz, @+$76                                  ; $6df9: $20 $74

    ld l, c                                       ; $6dfb: $69
    ld l, l                                       ; $6dfc: $6d
    ld h, l                                       ; $6dfd: $65
    ld hl, $0003                                  ; $6dfe: $21 $03 $00
    ld c, a                                       ; $6e01: $4f
    ld l, b                                       ; $6e02: $68
    inc l                                         ; $6e03: $2c
    jr nz, jr_018_6e78                            ; $6e04: $20 $72

    ld h, l                                       ; $6e06: $65
    ld h, [hl]                                    ; $6e07: $66
    ld [hl], d                                    ; $6e08: $72
    ld h, l                                       ; $6e09: $65
    ld [hl], e                                    ; $6e0a: $73
    ld l, b                                       ; $6e0b: $68

jr_018_6e0c:
    ld l, c                                       ; $6e0c: $69
    ld l, [hl]                                    ; $6e0d: $6e
    ld h, a                                       ; $6e0e: $67
    ld bc, $6f79                                  ; $6e0f: $01 $79 $6f
    ld [hl], l                                    ; $6e12: $75
    ld [hl], d                                    ; $6e13: $72
    ld [hl], e                                    ; $6e14: $73
    ld h, l                                       ; $6e15: $65
    ld l, h                                       ; $6e16: $6c
    ld h, [hl]                                    ; $6e17: $66
    jr nz, jr_018_6e7c                            ; $6e18: $20 $62

    ld h, l                                       ; $6e1a: $65
    ld h, [hl]                                    ; $6e1b: $66
    ld l, a                                       ; $6e1c: $6f
    ld [hl], d                                    ; $6e1d: $72
    ld h, l                                       ; $6e1e: $65
    jr nz, jr_018_6e94                            ; $6e1f: $20 $73

    ld l, a                                       ; $6e21: $6f
    ld l, l                                       ; $6e22: $6d
    ld h, l                                       ; $6e23: $65
    ld bc, $6f6d                                  ; $6e24: $01 $6d $6f
    ld [hl], d                                    ; $6e27: $72
    ld h, l                                       ; $6e28: $65
    jr nz, jr_018_6e9f                            ; $6e29: $20 $74

    ld [hl], d                                    ; $6e2b: $72
    ld h, c                                       ; $6e2c: $61
    ld l, c                                       ; $6e2d: $69
    ld l, [hl]                                    ; $6e2e: $6e
    ld l, c                                       ; $6e2f: $69
    ld l, [hl]                                    ; $6e30: $6e
    ld h, a                                       ; $6e31: $67

jr_018_6e32:
    ccf                                           ; $6e32: $3f
    ld [bc], a                                    ; $6e33: $02
    ld c, b                                       ; $6e34: $48
    ld h, l                                       ; $6e35: $65
    ld a, c                                       ; $6e36: $79
    ld hl, $5420                                  ; $6e37: $21 $20 $54
    ld [hl], d                                    ; $6e3a: $72
    ld a, c                                       ; $6e3b: $79
    jr nz, jr_018_6eb1                            ; $6e3c: $20 $73

    ld [hl], h                                    ; $6e3e: $74
    ld l, a                                       ; $6e3f: $6f
    ld [hl], b                                    ; $6e40: $70
    ld [hl], b                                    ; $6e41: $70
    ld l, c                                       ; $6e42: $69
    ld l, [hl]                                    ; $6e43: $6e

jr_018_6e44:
    ld h, a                                       ; $6e44: $67
    ld bc, $7962                                  ; $6e45: $01 $62 $79
    jr nz, jr_018_6eb9                            ; $6e48: $20 $6f

    ld [hl], h                                    ; $6e4a: $74
    ld l, b                                       ; $6e4b: $68
    ld h, l                                       ; $6e4c: $65
    ld [hl], d                                    ; $6e4d: $72
    jr nz, jr_018_6eb3                            ; $6e4e: $20 $63

    ld l, a                                       ; $6e50: $6f
    ld [hl], l                                    ; $6e51: $75
    ld [hl], d                                    ; $6e52: $72
    ld [hl], e                                    ; $6e53: $73
    ld h, l                                       ; $6e54: $65

jr_018_6e55:
    ld [hl], e                                    ; $6e55: $73
    ld bc, $6e69                                  ; $6e56: $01 $69 $6e
    jr nz, jr_018_6ecf                            ; $6e59: $20 $74

    ld l, b                                       ; $6e5b: $68
    ld h, l                                       ; $6e5c: $65
    jr nz, jr_018_6ecf                            ; $6e5d: $20 $70

    ld [hl], d                                    ; $6e5f: $72
    ld l, a                                       ; $6e60: $6f
    ld h, e                                       ; $6e61: $63
    ld h, l                                       ; $6e62: $65
    ld [hl], e                                    ; $6e63: $73
    ld [hl], e                                    ; $6e64: $73
    ld hl, $0003                                  ; $6e65: $21 $03 $00
    ld c, b                                       ; $6e68: $48
    ld h, l                                       ; $6e69: $65
    ld a, c                                       ; $6e6a: $79
    inc l                                         ; $6e6b: $2c
    jr nz, jr_018_6e75                            ; $6e6c: $20 $07

    ld hl, $4701                                  ; $6e6e: $21 $01 $47
    ld l, a                                       ; $6e71: $6f
    ld l, c                                       ; $6e72: $69
    ld l, [hl]                                    ; $6e73: $6e
    ld h, a                                       ; $6e74: $67

jr_018_6e75:
    jr nz, @+$71                                  ; $6e75: $20 $6f

    ld [hl], l                                    ; $6e77: $75

jr_018_6e78:
    ld [hl], h                                    ; $6e78: $74
    ld [hl], e                                    ; $6e79: $73
    ld l, c                                       ; $6e7a: $69
    ld h, h                                       ; $6e7b: $64

jr_018_6e7c:
    ld h, l                                       ; $6e7c: $65
    ccf                                           ; $6e7d: $3f
    nop                                           ; $6e7e: $00
    ld b, e                                       ; $6e7f: $43
    ld l, b                                       ; $6e80: $68
    ld h, l                                       ; $6e81: $65
    ld h, e                                       ; $6e82: $63
    ld l, e                                       ; $6e83: $6b
    jr nz, jr_018_6ef5                            ; $6e84: $20 $6f

    ld [hl], l                                    ; $6e86: $75
    ld [hl], h                                    ; $6e87: $74
    jr nz, jr_018_6ef9                            ; $6e88: $20 $6f

    ld [hl], h                                    ; $6e8a: $74
    ld l, b                                       ; $6e8b: $68
    ld h, l                                       ; $6e8c: $65
    ld [hl], d                                    ; $6e8d: $72
    ld bc, $6f63                                  ; $6e8e: $01 $63 $6f
    ld [hl], l                                    ; $6e91: $75
    ld [hl], d                                    ; $6e92: $72
    ld [hl], e                                    ; $6e93: $73

jr_018_6e94:
    ld h, l                                       ; $6e94: $65
    ld [hl], e                                    ; $6e95: $73
    inc l                                         ; $6e96: $2c
    jr nz, @+$76                                  ; $6e97: $20 $74

    ld l, a                                       ; $6e99: $6f
    ld l, a                                       ; $6e9a: $6f
    ld l, $20                                     ; $6e9b: $2e $20
    ld c, c                                       ; $6e9d: $49
    ld [hl], h                                    ; $6e9e: $74

jr_018_6e9f:
    daa                                           ; $6e9f: $27
    ld l, h                                       ; $6ea0: $6c
    ld l, h                                       ; $6ea1: $6c
    ld bc, $6d69                                  ; $6ea2: $01 $69 $6d
    ld [hl], b                                    ; $6ea5: $70
    ld [hl], d                                    ; $6ea6: $72
    ld l, a                                       ; $6ea7: $6f
    halt                                          ; $6ea8: $76
    ld h, l                                       ; $6ea9: $65
    jr nz, jr_018_6f25                            ; $6eaa: $20 $79

    ld l, a                                       ; $6eac: $6f
    ld [hl], l                                    ; $6ead: $75
    ld [hl], d                                    ; $6eae: $72
    jr nz, jr_018_6f18                            ; $6eaf: $20 $67

jr_018_6eb1:
    ld h, c                                       ; $6eb1: $61
    ld l, l                                       ; $6eb2: $6d

jr_018_6eb3:
    ld h, l                                       ; $6eb3: $65
    ld hl, $0003                                  ; $6eb4: $21 $03 $00
    ld c, a                                       ; $6eb7: $4f
    ld l, [hl]                                    ; $6eb8: $6e

jr_018_6eb9:
    ld h, e                                       ; $6eb9: $63
    ld h, l                                       ; $6eba: $65
    jr nz, jr_018_6f26                            ; $6ebb: $20 $69

    ld l, [hl]                                    ; $6ebd: $6e
    jr nz, jr_018_6f21                            ; $6ebe: $20 $61

    jr nz, @+$79                                  ; $6ec0: $20 $77

    ld l, b                                       ; $6ec2: $68
    ld l, c                                       ; $6ec3: $69
    ld l, h                                       ; $6ec4: $6c
    ld h, l                                       ; $6ec5: $65
    ld bc, $6f79                                  ; $6ec6: $01 $79 $6f
    ld [hl], l                                    ; $6ec9: $75
    jr nz, jr_018_6f3f                            ; $6eca: $20 $73

    ld l, b                                       ; $6ecc: $68
    ld l, a                                       ; $6ecd: $6f
    ld [hl], l                                    ; $6ece: $75

jr_018_6ecf:
    ld l, h                                       ; $6ecf: $6c
    ld h, h                                       ; $6ed0: $64
    jr nz, @+$72                                  ; $6ed1: $20 $70

    ld l, h                                       ; $6ed3: $6c
    ld h, c                                       ; $6ed4: $61
    ld a, c                                       ; $6ed5: $79
    ld bc, $746f                                  ; $6ed6: $01 $6f $74
    ld l, b                                       ; $6ed9: $68
    ld h, l                                       ; $6eda: $65
    ld [hl], d                                    ; $6edb: $72
    jr nz, jr_018_6f41                            ; $6edc: $20 $63

    ld l, a                                       ; $6ede: $6f
    ld [hl], l                                    ; $6edf: $75
    ld [hl], d                                    ; $6ee0: $72
    ld [hl], e                                    ; $6ee1: $73
    ld h, l                                       ; $6ee2: $65
    ld [hl], e                                    ; $6ee3: $73
    inc l                                         ; $6ee4: $2c
    jr nz, @+$76                                  ; $6ee5: $20 $74

    ld l, a                                       ; $6ee7: $6f
    ld l, a                                       ; $6ee8: $6f
    ld l, $03                                     ; $6ee9: $2e $03
    nop                                           ; $6eeb: $00
    ld c, b                                       ; $6eec: $48
    ld h, l                                       ; $6eed: $65
    ld a, c                                       ; $6eee: $79
    inc l                                         ; $6eef: $2c
    jr nz, jr_018_6ef9                            ; $6ef0: $20 $07

    ld hl, $4701                                  ; $6ef2: $21 $01 $47

jr_018_6ef5:
    ld l, a                                       ; $6ef5: $6f
    ld l, c                                       ; $6ef6: $69
    ld l, [hl]                                    ; $6ef7: $6e
    ld h, a                                       ; $6ef8: $67

jr_018_6ef9:
    jr nz, @+$71                                  ; $6ef9: $20 $6f

    ld [hl], l                                    ; $6efb: $75
    ld [hl], h                                    ; $6efc: $74
    ld [hl], e                                    ; $6efd: $73
    ld l, c                                       ; $6efe: $69
    ld h, h                                       ; $6eff: $64
    ld h, l                                       ; $6f00: $65
    ccf                                           ; $6f01: $3f
    nop                                           ; $6f02: $00
    ld b, e                                       ; $6f03: $43
    ld l, b                                       ; $6f04: $68
    ld h, l                                       ; $6f05: $65
    ld h, e                                       ; $6f06: $63
    ld l, e                                       ; $6f07: $6b
    jr nz, jr_018_6f79                            ; $6f08: $20 $6f

    ld [hl], l                                    ; $6f0a: $75
    ld [hl], h                                    ; $6f0b: $74
    jr nz, jr_018_6f7d                            ; $6f0c: $20 $6f

    ld [hl], h                                    ; $6f0e: $74
    ld l, b                                       ; $6f0f: $68
    ld h, l                                       ; $6f10: $65
    ld [hl], d                                    ; $6f11: $72
    ld bc, $6f63                                  ; $6f12: $01 $63 $6f
    ld [hl], l                                    ; $6f15: $75
    ld [hl], d                                    ; $6f16: $72
    ld [hl], e                                    ; $6f17: $73

jr_018_6f18:
    ld h, l                                       ; $6f18: $65
    ld [hl], e                                    ; $6f19: $73
    inc l                                         ; $6f1a: $2c
    jr nz, jr_018_6f91                            ; $6f1b: $20 $74

    ld l, a                                       ; $6f1d: $6f
    ld l, a                                       ; $6f1e: $6f
    ld l, $20                                     ; $6f1f: $2e $20

jr_018_6f21:
    ld c, c                                       ; $6f21: $49
    ld [hl], h                                    ; $6f22: $74
    daa                                           ; $6f23: $27
    ld l, h                                       ; $6f24: $6c

jr_018_6f25:
    ld l, h                                       ; $6f25: $6c

jr_018_6f26:
    ld bc, $6d69                                  ; $6f26: $01 $69 $6d
    ld [hl], b                                    ; $6f29: $70
    ld [hl], d                                    ; $6f2a: $72
    ld l, a                                       ; $6f2b: $6f
    halt                                          ; $6f2c: $76
    ld h, l                                       ; $6f2d: $65
    jr nz, jr_018_6fa9                            ; $6f2e: $20 $79

    ld l, a                                       ; $6f30: $6f
    ld [hl], l                                    ; $6f31: $75
    ld [hl], d                                    ; $6f32: $72
    jr nz, jr_018_6f9c                            ; $6f33: $20 $67

    ld h, c                                       ; $6f35: $61
    ld l, l                                       ; $6f36: $6d
    ld h, l                                       ; $6f37: $65
    ld hl, $0003                                  ; $6f38: $21 $03 $00
    ld c, a                                       ; $6f3b: $4f
    ld l, [hl]                                    ; $6f3c: $6e
    ld h, e                                       ; $6f3d: $63
    ld h, l                                       ; $6f3e: $65

jr_018_6f3f:
    jr nz, jr_018_6faa                            ; $6f3f: $20 $69

jr_018_6f41:
    ld l, [hl]                                    ; $6f41: $6e
    jr nz, @+$63                                  ; $6f42: $20 $61

    jr nz, jr_018_6fbd                            ; $6f44: $20 $77

    ld l, b                                       ; $6f46: $68
    ld l, c                                       ; $6f47: $69
    ld l, h                                       ; $6f48: $6c
    ld h, l                                       ; $6f49: $65
    ld bc, $6f79                                  ; $6f4a: $01 $79 $6f
    ld [hl], l                                    ; $6f4d: $75
    jr nz, jr_018_6fc3                            ; $6f4e: $20 $73

    ld l, b                                       ; $6f50: $68
    ld l, a                                       ; $6f51: $6f
    ld [hl], l                                    ; $6f52: $75
    ld l, h                                       ; $6f53: $6c
    ld h, h                                       ; $6f54: $64
    jr nz, jr_018_6fc7                            ; $6f55: $20 $70

    ld l, h                                       ; $6f57: $6c
    ld h, c                                       ; $6f58: $61
    ld a, c                                       ; $6f59: $79
    ld bc, $746f                                  ; $6f5a: $01 $6f $74
    ld l, b                                       ; $6f5d: $68
    ld h, l                                       ; $6f5e: $65
    ld [hl], d                                    ; $6f5f: $72
    jr nz, @+$65                                  ; $6f60: $20 $63

    ld l, a                                       ; $6f62: $6f
    ld [hl], l                                    ; $6f63: $75
    ld [hl], d                                    ; $6f64: $72
    ld [hl], e                                    ; $6f65: $73
    ld h, l                                       ; $6f66: $65
    ld [hl], e                                    ; $6f67: $73
    inc l                                         ; $6f68: $2c
    jr nz, jr_018_6fdf                            ; $6f69: $20 $74

    ld l, a                                       ; $6f6b: $6f
    ld l, a                                       ; $6f6c: $6f
    ld l, $03                                     ; $6f6d: $2e $03
    nop                                           ; $6f6f: $00
    ld c, b                                       ; $6f70: $48
    ld h, l                                       ; $6f71: $65
    ld a, c                                       ; $6f72: $79
    inc l                                         ; $6f73: $2c
    jr nz, jr_018_6f7d                            ; $6f74: $20 $07

    ld hl, $4701                                  ; $6f76: $21 $01 $47

jr_018_6f79:
    ld l, a                                       ; $6f79: $6f
    ld l, c                                       ; $6f7a: $69
    ld l, [hl]                                    ; $6f7b: $6e
    ld h, a                                       ; $6f7c: $67

jr_018_6f7d:
    jr nz, jr_018_6fee                            ; $6f7d: $20 $6f

    ld [hl], l                                    ; $6f7f: $75
    ld [hl], h                                    ; $6f80: $74
    ld [hl], e                                    ; $6f81: $73
    ld l, c                                       ; $6f82: $69
    ld h, h                                       ; $6f83: $64
    ld h, l                                       ; $6f84: $65
    ccf                                           ; $6f85: $3f
    nop                                           ; $6f86: $00
    ld b, a                                       ; $6f87: $47
    ld l, a                                       ; $6f88: $6f
    ld l, c                                       ; $6f89: $69
    ld l, [hl]                                    ; $6f8a: $6e
    ld h, a                                       ; $6f8b: $67
    jr nz, jr_018_7002                            ; $6f8c: $20 $74

    ld l, a                                       ; $6f8e: $6f
    jr nz, @+$65                                  ; $6f8f: $20 $63

jr_018_6f91:
    ld l, b                                       ; $6f91: $68
    ld h, l                                       ; $6f92: $65
    ld h, e                                       ; $6f93: $63
    ld l, e                                       ; $6f94: $6b
    jr nz, jr_018_7006                            ; $6f95: $20 $6f

    ld [hl], l                                    ; $6f97: $75
    ld [hl], h                                    ; $6f98: $74
    ld bc, $694c                                  ; $6f99: $01 $4c $69

jr_018_6f9c:
    ld l, [hl]                                    ; $6f9c: $6e
    ld l, e                                       ; $6f9d: $6b
    ld [hl], e                                    ; $6f9e: $73
    jr nz, jr_018_6fe4                            ; $6f9f: $20 $43

    ld l, h                                       ; $6fa1: $6c
    ld [hl], l                                    ; $6fa2: $75
    ld h, d                                       ; $6fa3: $62
    jr nz, jr_018_7008                            ; $6fa4: $20 $62

    ld h, l                                       ; $6fa6: $65
    ld h, [hl]                                    ; $6fa7: $66
    ld l, a                                       ; $6fa8: $6f

jr_018_6fa9:
    ld [hl], d                                    ; $6fa9: $72

jr_018_6faa:
    ld h, l                                       ; $6faa: $65
    ld bc, $6874                                  ; $6fab: $01 $74 $68
    ld h, l                                       ; $6fae: $65
    jr nz, jr_018_7005                            ; $6faf: $20 $54

    ld l, a                                       ; $6fb1: $6f
    ld [hl], l                                    ; $6fb2: $75
    ld [hl], d                                    ; $6fb3: $72
    ld l, [hl]                                    ; $6fb4: $6e
    ld h, c                                       ; $6fb5: $61
    ld l, l                                       ; $6fb6: $6d
    ld h, l                                       ; $6fb7: $65
    ld l, [hl]                                    ; $6fb8: $6e
    ld [hl], h                                    ; $6fb9: $74
    ccf                                           ; $6fba: $3f
    inc bc                                        ; $6fbb: $03
    nop                                           ; $6fbc: $00

jr_018_6fbd:
    ld c, c                                       ; $6fbd: $49
    jr nz, jr_018_7023                            ; $6fbe: $20 $63

    ld h, c                                       ; $6fc0: $61
    ld l, [hl]                                    ; $6fc1: $6e
    daa                                           ; $6fc2: $27

jr_018_6fc3:
    ld [hl], h                                    ; $6fc3: $74
    jr nz, @+$79                                  ; $6fc4: $20 $77

    ld h, c                                       ; $6fc6: $61

jr_018_6fc7:
    ld l, c                                       ; $6fc7: $69
    ld [hl], h                                    ; $6fc8: $74
    jr nz, jr_018_703f                            ; $6fc9: $20 $74

    ld l, a                                       ; $6fcb: $6f
    ld bc, $6573                                  ; $6fcc: $01 $73 $65
    ld h, l                                       ; $6fcf: $65
    jr nz, jr_018_704b                            ; $6fd0: $20 $79

    ld l, a                                       ; $6fd2: $6f
    ld [hl], l                                    ; $6fd3: $75
    jr nz, jr_018_7038                            ; $6fd4: $20 $62

    ld h, l                                       ; $6fd6: $65
    ld h, e                                       ; $6fd7: $63
    ld l, a                                       ; $6fd8: $6f
    ld l, l                                       ; $6fd9: $6d
    ld h, l                                       ; $6fda: $65
    ld bc, $7247                                  ; $6fdb: $01 $47 $72
    ld h, c                                       ; $6fde: $61

jr_018_6fdf:
    ld l, [hl]                                    ; $6fdf: $6e
    ld h, h                                       ; $6fe0: $64
    jr nz, jr_018_7026                            ; $6fe1: $20 $43

    ld l, b                                       ; $6fe3: $68

jr_018_6fe4:
    ld h, c                                       ; $6fe4: $61
    ld l, l                                       ; $6fe5: $6d
    ld [hl], b                                    ; $6fe6: $70
    ld l, c                                       ; $6fe7: $69
    ld l, a                                       ; $6fe8: $6f
    ld l, [hl]                                    ; $6fe9: $6e
    ld hl, $0003                                  ; $6fea: $21 $03 $00
    ld c, b                                       ; $6fed: $48

jr_018_6fee:
    ld h, l                                       ; $6fee: $65
    ld a, c                                       ; $6fef: $79
    inc l                                         ; $6ff0: $2c
    jr nz, jr_018_6ffa                            ; $6ff1: $20 $07

    ld hl, $4701                                  ; $6ff3: $21 $01 $47
    ld l, a                                       ; $6ff6: $6f
    ld l, c                                       ; $6ff7: $69
    ld l, [hl]                                    ; $6ff8: $6e
    ld h, a                                       ; $6ff9: $67

jr_018_6ffa:
    jr nz, jr_018_706b                            ; $6ffa: $20 $6f

    ld [hl], l                                    ; $6ffc: $75
    ld [hl], h                                    ; $6ffd: $74
    ld [hl], e                                    ; $6ffe: $73
    ld l, c                                       ; $6fff: $69
    ld h, h                                       ; $7000: $64
    ld h, l                                       ; $7001: $65

jr_018_7002:
    ccf                                           ; $7002: $3f
    nop                                           ; $7003: $00
    ld d, b                                       ; $7004: $50

jr_018_7005:
    ld [hl], d                                    ; $7005: $72

jr_018_7006:
    ld h, c                                       ; $7006: $61
    ld h, e                                       ; $7007: $63

jr_018_7008:
    ld [hl], h                                    ; $7008: $74
    ld l, c                                       ; $7009: $69
    ld h, e                                       ; $700a: $63
    ld l, c                                       ; $700b: $69
    ld l, [hl]                                    ; $700c: $6e
    ld h, a                                       ; $700d: $67
    jr nz, @+$77                                  ; $700e: $20 $75

    ld [hl], b                                    ; $7010: $70
    jr nz, jr_018_7087                            ; $7011: $20 $74

    ld l, a                                       ; $7013: $6f
    ld bc, $6174                                  ; $7014: $01 $74 $61
    ld l, e                                       ; $7017: $6b
    ld h, l                                       ; $7018: $65
    jr nz, jr_018_708f                            ; $7019: $20 $74

    ld l, b                                       ; $701b: $68
    ld h, l                                       ; $701c: $65
    jr nz, jr_018_7066                            ; $701d: $20 $47

    ld [hl], d                                    ; $701f: $72
    ld h, c                                       ; $7020: $61
    ld l, [hl]                                    ; $7021: $6e
    ld h, h                                       ; $7022: $64

jr_018_7023:
    ld bc, $6843                                  ; $7023: $01 $43 $68

jr_018_7026:
    ld h, c                                       ; $7026: $61
    ld l, l                                       ; $7027: $6d
    ld [hl], b                                    ; $7028: $70
    ld l, c                                       ; $7029: $69
    ld l, a                                       ; $702a: $6f
    ld l, [hl]                                    ; $702b: $6e
    jr nz, jr_018_70a2                            ; $702c: $20 $74

    ld l, c                                       ; $702e: $69
    ld [hl], h                                    ; $702f: $74
    ld l, h                                       ; $7030: $6c
    ld h, l                                       ; $7031: $65
    ccf                                           ; $7032: $3f
    inc bc                                        ; $7033: $03
    nop                                           ; $7034: $00
    ld c, c                                       ; $7035: $49
    jr nz, @+$65                                  ; $7036: $20 $63

jr_018_7038:
    ld h, c                                       ; $7038: $61
    ld l, [hl]                                    ; $7039: $6e
    daa                                           ; $703a: $27
    ld [hl], h                                    ; $703b: $74
    jr nz, jr_018_70b5                            ; $703c: $20 $77

    ld h, c                                       ; $703e: $61

jr_018_703f:
    ld l, c                                       ; $703f: $69
    ld [hl], h                                    ; $7040: $74
    jr nz, jr_018_70b7                            ; $7041: $20 $74

    ld l, a                                       ; $7043: $6f
    ld bc, $6573                                  ; $7044: $01 $73 $65
    ld h, l                                       ; $7047: $65
    jr nz, jr_018_70c3                            ; $7048: $20 $79

    ld l, a                                       ; $704a: $6f

jr_018_704b:
    ld [hl], l                                    ; $704b: $75
    jr nz, @+$64                                  ; $704c: $20 $62

    ld h, l                                       ; $704e: $65
    ld h, e                                       ; $704f: $63
    ld l, a                                       ; $7050: $6f
    ld l, l                                       ; $7051: $6d
    ld h, l                                       ; $7052: $65
    ld bc, $7247                                  ; $7053: $01 $47 $72
    ld h, c                                       ; $7056: $61
    ld l, [hl]                                    ; $7057: $6e
    ld h, h                                       ; $7058: $64
    jr nz, jr_018_709e                            ; $7059: $20 $43

    ld l, b                                       ; $705b: $68
    ld h, c                                       ; $705c: $61
    ld l, l                                       ; $705d: $6d
    ld [hl], b                                    ; $705e: $70
    ld l, c                                       ; $705f: $69
    ld l, a                                       ; $7060: $6f
    ld l, [hl]                                    ; $7061: $6e
    ld hl, $0003                                  ; $7062: $21 $03 $00
    ld c, b                                       ; $7065: $48

jr_018_7066:
    ld h, l                                       ; $7066: $65
    ld a, c                                       ; $7067: $79
    inc l                                         ; $7068: $2c
    jr nz, jr_018_7072                            ; $7069: $20 $07

jr_018_706b:
    ld hl, $4701                                  ; $706b: $21 $01 $47
    ld l, a                                       ; $706e: $6f
    ld l, c                                       ; $706f: $69
    ld l, [hl]                                    ; $7070: $6e
    ld h, a                                       ; $7071: $67

jr_018_7072:
    jr nz, jr_018_70e3                            ; $7072: $20 $6f

    ld [hl], l                                    ; $7074: $75
    ld [hl], h                                    ; $7075: $74
    ld [hl], e                                    ; $7076: $73
    ld l, c                                       ; $7077: $69
    ld h, h                                       ; $7078: $64
    ld h, l                                       ; $7079: $65
    ccf                                           ; $707a: $3f
    nop                                           ; $707b: $00
    ld c, b                                       ; $707c: $48
    ld h, l                                       ; $707d: $65
    ld h, c                                       ; $707e: $61
    ld h, h                                       ; $707f: $64
    jr nz, jr_018_70e8                            ; $7080: $20 $66

    ld l, a                                       ; $7082: $6f
    ld [hl], d                                    ; $7083: $72
    jr nz, jr_018_70d2                            ; $7084: $20 $4c

    ld l, c                                       ; $7086: $69

jr_018_7087:
    ld l, [hl]                                    ; $7087: $6e
    ld l, e                                       ; $7088: $6b
    ld [hl], e                                    ; $7089: $73
    jr nz, jr_018_70cf                            ; $708a: $20 $43

    ld l, h                                       ; $708c: $6c
    ld [hl], l                                    ; $708d: $75
    ld h, d                                       ; $708e: $62

jr_018_708f:
    ld l, $01                                     ; $708f: $2e $01
    ld d, e                                       ; $7091: $53
    ld l, a                                       ; $7092: $6f
    ld l, l                                       ; $7093: $6d
    ld h, l                                       ; $7094: $65
    ld [hl], h                                    ; $7095: $74
    ld l, b                                       ; $7096: $68
    ld l, c                                       ; $7097: $69
    ld l, [hl]                                    ; $7098: $6e
    ld h, a                                       ; $7099: $67
    jr nz, jr_018_7103                            ; $709a: $20 $67

    ld l, a                                       ; $709c: $6f
    ld l, a                                       ; $709d: $6f

jr_018_709e:
    ld h, h                                       ; $709e: $64
    daa                                           ; $709f: $27
    ld l, h                                       ; $70a0: $6c
    ld l, h                                       ; $70a1: $6c

jr_018_70a2:
    ld bc, $6f63                                  ; $70a2: $01 $63 $6f
    ld l, l                                       ; $70a5: $6d
    ld h, l                                       ; $70a6: $65
    jr nz, jr_018_7118                            ; $70a7: $20 $6f

    ld h, [hl]                                    ; $70a9: $66
    jr nz, jr_018_7115                            ; $70aa: $20 $69

    ld [hl], h                                    ; $70ac: $74
    ld l, $02                                     ; $70ad: $2e $02
    ld c, $07                                     ; $70af: $0e $07
    jr nz, @+$79                                  ; $70b1: $20 $77

    ld h, c                                       ; $70b3: $61
    ld [hl], e                                    ; $70b4: $73

jr_018_70b5:
    jr nz, jr_018_712c                            ; $70b5: $20 $75

jr_018_70b7:
    ld [hl], b                                    ; $70b7: $70
    ld bc, $6874                                  ; $70b8: $01 $74 $68
    ld h, c                                       ; $70bb: $61
    ld [hl], h                                    ; $70bc: $74
    jr nz, jr_018_7136                            ; $70bd: $20 $77

    ld h, c                                       ; $70bf: $61
    ld a, c                                       ; $70c0: $79
    jr nz, jr_018_713a                            ; $70c1: $20 $77

jr_018_70c3:
    ld l, b                                       ; $70c3: $68
    ld h, l                                       ; $70c4: $65
    ld l, [hl]                                    ; $70c5: $6e
    jr nz, jr_018_7130                            ; $70c6: $20 $68

    ld l, c                                       ; $70c8: $69
    ld [hl], e                                    ; $70c9: $73
    ld [bc], a                                    ; $70ca: $02
    ld l, c                                       ; $70cb: $69
    ld l, [hl]                                    ; $70cc: $6e
    halt                                          ; $70cd: $76
    ld l, c                                       ; $70ce: $69

jr_018_70cf:
    ld [hl], h                                    ; $70cf: $74
    ld h, c                                       ; $70d0: $61
    ld [hl], h                                    ; $70d1: $74

jr_018_70d2:
    ld l, c                                       ; $70d2: $69
    ld l, a                                       ; $70d3: $6f
    ld l, [hl]                                    ; $70d4: $6e
    jr nz, jr_018_713a                            ; $70d5: $20 $63

    ld h, c                                       ; $70d7: $61
    ld l, l                                       ; $70d8: $6d
    ld h, l                                       ; $70d9: $65
    ld l, $03                                     ; $70da: $2e $03
    nop                                           ; $70dc: $00
    ld b, c                                       ; $70dd: $41
    jr nz, @+$49                                  ; $70de: $20 $47

    ld [hl], d                                    ; $70e0: $72
    ld h, c                                       ; $70e1: $61
    ld l, [hl]                                    ; $70e2: $6e

jr_018_70e3:
    ld h, h                                       ; $70e3: $64
    jr nz, jr_018_7129                            ; $70e4: $20 $43

    ld l, b                                       ; $70e6: $68
    ld h, c                                       ; $70e7: $61

jr_018_70e8:
    ld l, l                                       ; $70e8: $6d
    ld [hl], b                                    ; $70e9: $70
    ld bc, $6873                                  ; $70ea: $01 $73 $68
    ld l, a                                       ; $70ed: $6f
    ld [hl], l                                    ; $70ee: $75
    ld l, h                                       ; $70ef: $6c
    ld h, h                                       ; $70f0: $64
    jr nz, jr_018_7166                            ; $70f1: $20 $73

    ld [hl], h                                    ; $70f3: $74
    ld l, a                                       ; $70f4: $6f
    ld [hl], b                                    ; $70f5: $70
    ld bc, $7962                                  ; $70f6: $01 $62 $79
    jr nz, jr_018_7147                            ; $70f9: $20 $4c

    ld l, c                                       ; $70fb: $69
    ld l, [hl]                                    ; $70fc: $6e
    ld l, e                                       ; $70fd: $6b
    ld [hl], e                                    ; $70fe: $73
    jr nz, @+$45                                  ; $70ff: $20 $43

    ld l, h                                       ; $7101: $6c
    ld [hl], l                                    ; $7102: $75

jr_018_7103:
    ld h, d                                       ; $7103: $62
    inc l                                         ; $7104: $2c
    jr nz, @+$76                                  ; $7105: $20 $74

    ld l, a                                       ; $7107: $6f
    ld l, a                                       ; $7108: $6f
    ld l, $03                                     ; $7109: $2e $03
    nop                                           ; $710b: $00
    rlca                                          ; $710c: $07
    ld hl, $5901                                  ; $710d: $21 $01 $59
    ld l, a                                       ; $7110: $6f
    ld [hl], l                                    ; $7111: $75
    daa                                           ; $7112: $27
    ld [hl], d                                    ; $7113: $72
    ld h, l                                       ; $7114: $65

jr_018_7115:
    jr nz, jr_018_717f                            ; $7115: $20 $68

    ld h, c                                       ; $7117: $61

jr_018_7118:
    ld l, [hl]                                    ; $7118: $6e
    ld h, a                                       ; $7119: $67
    ld l, c                                       ; $711a: $69
    ld l, [hl]                                    ; $711b: $6e
    ld h, a                                       ; $711c: $67
    jr nz, jr_018_718e                            ; $711d: $20 $6f

    ld [hl], l                                    ; $711f: $75
    ld [hl], h                                    ; $7120: $74
    ld bc, $6977                                  ; $7121: $01 $77 $69
    ld [hl], h                                    ; $7124: $74
    ld l, b                                       ; $7125: $68
    jr nz, jr_018_7136                            ; $7126: $20 $0e

    inc b                                         ; $7128: $04

jr_018_7129:
    ld hl, $4f02                                  ; $7129: $21 $02 $4f

jr_018_712c:
    ld l, b                                       ; $712c: $68
    inc l                                         ; $712d: $2c
    jr nz, jr_018_71a9                            ; $712e: $20 $79

jr_018_7130:
    ld l, a                                       ; $7130: $6f
    ld [hl], l                                    ; $7131: $75
    jr nz, @+$79                                  ; $7132: $20 $77

    ld h, c                                       ; $7134: $61
    ld l, [hl]                                    ; $7135: $6e

jr_018_7136:
    ld [hl], h                                    ; $7136: $74
    jr nz, jr_018_71ad                            ; $7137: $20 $74

    ld l, a                                       ; $7139: $6f

jr_018_713a:
    ld bc, $6f63                                  ; $713a: $01 $63 $6f
    ld [hl], b                                    ; $713d: $70
    ld a, c                                       ; $713e: $79
    jr nz, jr_018_71b5                            ; $713f: $20 $74

    ld l, b                                       ; $7141: $68
    ld h, l                                       ; $7142: $65
    jr nz, jr_018_7188                            ; $7143: $20 $43

    ld l, h                                       ; $7145: $6c
    ld [hl], l                                    ; $7146: $75

jr_018_7147:
    ld h, d                                       ; $7147: $62
    ld bc, $6843                                  ; $7148: $01 $43 $68
    ld h, c                                       ; $714b: $61
    ld l, l                                       ; $714c: $6d
    ld [hl], b                                    ; $714d: $70
    daa                                           ; $714e: $27
    ld [hl], e                                    ; $714f: $73
    jr nz, jr_018_71c6                            ; $7150: $20 $74

    ld h, l                                       ; $7152: $65
    ld h, e                                       ; $7153: $63
    ld l, b                                       ; $7154: $68
    ld l, [hl]                                    ; $7155: $6e
    ld l, c                                       ; $7156: $69
    ld [hl], c                                    ; $7157: $71
    ld [hl], l                                    ; $7158: $75
    ld h, l                                       ; $7159: $65
    ld hl, $0003                                  ; $715a: $21 $03 $00
    rlca                                          ; $715d: $07
    ld hl, $5901                                  ; $715e: $21 $01 $59
    ld l, a                                       ; $7161: $6f
    ld [hl], l                                    ; $7162: $75
    daa                                           ; $7163: $27
    ld [hl], d                                    ; $7164: $72
    ld h, l                                       ; $7165: $65

jr_018_7166:
    jr nz, jr_018_71d0                            ; $7166: $20 $68

    ld h, c                                       ; $7168: $61
    ld l, [hl]                                    ; $7169: $6e
    ld h, a                                       ; $716a: $67
    ld l, c                                       ; $716b: $69
    ld l, [hl]                                    ; $716c: $6e
    ld h, a                                       ; $716d: $67
    jr nz, jr_018_71df                            ; $716e: $20 $6f

    ld [hl], l                                    ; $7170: $75
    ld [hl], h                                    ; $7171: $74
    ld bc, $6977                                  ; $7172: $01 $77 $69
    ld [hl], h                                    ; $7175: $74
    ld l, b                                       ; $7176: $68
    jr nz, jr_018_7187                            ; $7177: $20 $0e

    inc b                                         ; $7179: $04
    ld hl, $5702                                  ; $717a: $21 $02 $57
    ld l, b                                       ; $717d: $68
    ld h, c                                       ; $717e: $61

jr_018_717f:
    ld [hl], h                                    ; $717f: $74
    jr nz, jr_018_71e3                            ; $7180: $20 $61

    jr nz, @+$6f                                  ; $7182: $20 $6d

    ld h, c                                       ; $7184: $61
    ld [hl], h                                    ; $7185: $74
    ld h, e                                       ; $7186: $63

jr_018_7187:
    ld l, b                                       ; $7187: $68

jr_018_7188:
    jr nz, @+$2f                                  ; $7188: $20 $2d

    jr nz, jr_018_7200                            ; $718a: $20 $74

    ld l, b                                       ; $718c: $68
    ld h, l                                       ; $718d: $65

jr_018_718e:
    ld bc, $7563                                  ; $718e: $01 $63 $75
    ld [hl], d                                    ; $7191: $72
    ld [hl], d                                    ; $7192: $72
    ld h, l                                       ; $7193: $65
    ld l, [hl]                                    ; $7194: $6e
    ld [hl], h                                    ; $7195: $74
    jr nz, jr_018_71f9                            ; $7196: $20 $61

    ld l, [hl]                                    ; $7198: $6e
    ld h, h                                       ; $7199: $64
    jr nz, @+$68                                  ; $719a: $20 $66

    ld l, a                                       ; $719c: $6f
    ld [hl], d                                    ; $719d: $72
    ld l, l                                       ; $719e: $6d
    dec l                                         ; $719f: $2d
    ld bc, $7265                                  ; $71a0: $01 $65 $72
    jr nz, jr_018_71f2                            ; $71a3: $20 $4d

    ld h, c                                       ; $71a5: $61
    ld [hl], d                                    ; $71a6: $72
    ld l, c                                       ; $71a7: $69
    ld l, a                                       ; $71a8: $6f

jr_018_71a9:
    ld l, [hl]                                    ; $71a9: $6e
    jr nz, jr_018_71ef                            ; $71aa: $20 $43

    ld l, b                                       ; $71ac: $68

jr_018_71ad:
    ld h, c                                       ; $71ad: $61
    ld l, l                                       ; $71ae: $6d
    ld [hl], b                                    ; $71af: $70
    ld [hl], e                                    ; $71b0: $73
    ld hl, $0003                                  ; $71b1: $21 $03 $00
    rlca                                          ; $71b4: $07

jr_018_71b5:
    inc l                                         ; $71b5: $2c
    jr nz, jr_018_722f                            ; $71b6: $20 $77

    ld l, c                                       ; $71b8: $69
    ld l, h                                       ; $71b9: $6c
    ld l, h                                       ; $71ba: $6c
    ld bc, $6f79                                  ; $71bb: $01 $79 $6f
    ld [hl], l                                    ; $71be: $75
    jr nz, jr_018_7222                            ; $71bf: $20 $61

    ld l, [hl]                                    ; $71c1: $6e
    ld h, h                                       ; $71c2: $64
    jr nz, jr_018_71d3                            ; $71c3: $20 $0e

    dec b                                         ; $71c5: $05

jr_018_71c6:
    jr nz, jr_018_7238                            ; $71c6: $20 $70

    ld l, h                                       ; $71c8: $6c
    ld h, c                                       ; $71c9: $61
    ld a, c                                       ; $71ca: $79
    ld bc, $2061                                  ; $71cb: $01 $61 $20
    ld c, l                                       ; $71ce: $4d
    ld h, c                                       ; $71cf: $61

jr_018_71d0:
    ld [hl], h                                    ; $71d0: $74
    ld h, e                                       ; $71d1: $63
    ld l, b                                       ; $71d2: $68

jr_018_71d3:
    jr nz, jr_018_721c                            ; $71d3: $20 $47

    ld h, c                                       ; $71d5: $61
    ld l, l                                       ; $71d6: $6d
    ld h, l                                       ; $71d7: $65
    ccf                                           ; $71d8: $3f
    ld [bc], a                                    ; $71d9: $02
    ld d, h                                       ; $71da: $54
    ld l, b                                       ; $71db: $68
    ld h, c                                       ; $71dc: $61
    ld [hl], h                                    ; $71dd: $74
    daa                                           ; $71de: $27

jr_018_71df:
    ld l, h                                       ; $71df: $6c
    ld l, h                                       ; $71e0: $6c
    jr nz, @+$64                                  ; $71e1: $20 $62

jr_018_71e3:
    ld h, l                                       ; $71e3: $65
    jr nz, @+$75                                  ; $71e4: $20 $73

    ld l, a                                       ; $71e6: $6f
    ld l, l                                       ; $71e7: $6d
    ld h, l                                       ; $71e8: $65
    dec l                                         ; $71e9: $2d
    ld bc, $6874                                  ; $71ea: $01 $74 $68
    ld l, c                                       ; $71ed: $69
    ld l, [hl]                                    ; $71ee: $6e

jr_018_71ef:
    ld h, a                                       ; $71ef: $67
    jr nz, jr_018_725b                            ; $71f0: $20 $69

jr_018_71f2:
    ld h, [hl]                                    ; $71f2: $66
    jr nz, jr_018_726e                            ; $71f3: $20 $79

    ld l, a                                       ; $71f5: $6f
    ld [hl], l                                    ; $71f6: $75
    jr nz, jr_018_725b                            ; $71f7: $20 $62

jr_018_71f9:
    ld h, l                                       ; $71f9: $65
    ld h, c                                       ; $71fa: $61
    ld [hl], h                                    ; $71fb: $74
    ld bc, $6150                                  ; $71fc: $01 $50 $61
    ld l, h                                       ; $71ff: $6c

jr_018_7200:
    ld l, l                                       ; $7200: $6d
    jr nz, @+$45                                  ; $7201: $20 $43

    ld l, h                                       ; $7203: $6c
    ld [hl], l                                    ; $7204: $75
    ld h, d                                       ; $7205: $62
    daa                                           ; $7206: $27
    ld [hl], e                                    ; $7207: $73
    jr nz, jr_018_724d                            ; $7208: $20 $43

    ld l, b                                       ; $720a: $68
    ld h, c                                       ; $720b: $61
    ld l, l                                       ; $720c: $6d
    ld [hl], b                                    ; $720d: $70
    ld hl, $0003                                  ; $720e: $21 $03 $00
    rlca                                          ; $7211: $07
    inc l                                         ; $7212: $2c
    jr nz, jr_018_728c                            ; $7213: $20 $77

    ld l, c                                       ; $7215: $69
    ld l, h                                       ; $7216: $6c
    ld l, h                                       ; $7217: $6c
    ld bc, $6f79                                  ; $7218: $01 $79 $6f
    ld [hl], l                                    ; $721b: $75

jr_018_721c:
    jr nz, jr_018_727f                            ; $721c: $20 $61

    ld l, [hl]                                    ; $721e: $6e
    ld h, h                                       ; $721f: $64
    jr nz, jr_018_7230                            ; $7220: $20 $0e

jr_018_7222:
    dec b                                         ; $7222: $05
    jr nz, jr_018_7295                            ; $7223: $20 $70

    ld l, h                                       ; $7225: $6c
    ld h, c                                       ; $7226: $61
    ld a, c                                       ; $7227: $79
    ld bc, $2061                                  ; $7228: $01 $61 $20
    ld c, l                                       ; $722b: $4d
    ld h, c                                       ; $722c: $61
    ld [hl], h                                    ; $722d: $74
    ld h, e                                       ; $722e: $63

jr_018_722f:
    ld l, b                                       ; $722f: $68

jr_018_7230:
    jr nz, @+$49                                  ; $7230: $20 $47

    ld h, c                                       ; $7232: $61
    ld l, l                                       ; $7233: $6d
    ld h, l                                       ; $7234: $65
    ccf                                           ; $7235: $3f
    ld [bc], a                                    ; $7236: $02
    ld d, a                                       ; $7237: $57

jr_018_7238:
    ld l, c                                       ; $7238: $69
    ld [hl], h                                    ; $7239: $74
    ld l, b                                       ; $723a: $68
    jr nz, @+$76                                  ; $723b: $20 $74

    ld l, b                                       ; $723d: $68
    ld h, l                                       ; $723e: $65
    jr nz, jr_018_7291                            ; $723f: $20 $50

    ld h, c                                       ; $7241: $61
    ld l, h                                       ; $7242: $6c
    ld l, l                                       ; $7243: $6d
    ld bc, $6c43                                  ; $7244: $01 $43 $6c
    ld [hl], l                                    ; $7247: $75
    ld h, d                                       ; $7248: $62
    jr nz, jr_018_728e                            ; $7249: $20 $43

    ld l, b                                       ; $724b: $68
    ld h, c                                       ; $724c: $61

jr_018_724d:
    ld l, l                                       ; $724d: $6d
    ld [hl], b                                    ; $724e: $70
    inc l                                         ; $724f: $2c
    jr nz, @+$76                                  ; $7250: $20 $74

    ld l, b                                       ; $7252: $68
    ld h, c                                       ; $7253: $61
    ld [hl], h                                    ; $7254: $74
    daa                                           ; $7255: $27
    ld l, h                                       ; $7256: $6c
    ld l, h                                       ; $7257: $6c
    ld bc, $6562                                  ; $7258: $01 $62 $65

jr_018_725b:
    jr nz, jr_018_72be                            ; $725b: $20 $61

    jr nz, jr_018_72d1                            ; $725d: $20 $72

    ld l, a                                       ; $725f: $6f
    ld [hl], l                                    ; $7260: $75
    ld l, [hl]                                    ; $7261: $6e
    ld h, h                                       ; $7262: $64
    jr nz, jr_018_72d9                            ; $7263: $20 $74

    ld l, a                                       ; $7265: $6f
    jr nz, jr_018_72db                            ; $7266: $20 $73

    ld h, l                                       ; $7268: $65
    ld h, l                                       ; $7269: $65
    ld hl, $0003                                  ; $726a: $21 $03 $00
    rlca                                          ; $726d: $07

jr_018_726e:
    inc l                                         ; $726e: $2c
    jr nz, jr_018_72e8                            ; $726f: $20 $77

    ld l, c                                       ; $7271: $69
    ld l, h                                       ; $7272: $6c
    ld l, h                                       ; $7273: $6c
    ld bc, $6f79                                  ; $7274: $01 $79 $6f
    ld [hl], l                                    ; $7277: $75
    jr nz, jr_018_72db                            ; $7278: $20 $61

    ld l, [hl]                                    ; $727a: $6e
    ld h, h                                       ; $727b: $64
    jr nz, jr_018_728c                            ; $727c: $20 $0e

    dec b                                         ; $727e: $05

jr_018_727f:
    jr nz, @+$72                                  ; $727f: $20 $70

    ld l, h                                       ; $7281: $6c
    ld h, c                                       ; $7282: $61
    ld a, c                                       ; $7283: $79
    ld bc, $2061                                  ; $7284: $01 $61 $20
    ld c, l                                       ; $7287: $4d
    ld h, c                                       ; $7288: $61
    ld [hl], h                                    ; $7289: $74
    ld h, e                                       ; $728a: $63
    ld l, b                                       ; $728b: $68

jr_018_728c:
    jr nz, jr_018_72d5                            ; $728c: $20 $47

jr_018_728e:
    ld h, c                                       ; $728e: $61
    ld l, l                                       ; $728f: $6d
    ld h, l                                       ; $7290: $65

jr_018_7291:
    ccf                                           ; $7291: $3f
    ld [bc], a                                    ; $7292: $02
    ld d, a                                       ; $7293: $57
    ld h, l                                       ; $7294: $65

jr_018_7295:
    ld l, h                                       ; $7295: $6c
    ld l, h                                       ; $7296: $6c
    inc l                                         ; $7297: $2c
    jr nz, jr_018_7303                            ; $7298: $20 $69

    ld h, [hl]                                    ; $729a: $66
    jr nz, jr_018_7316                            ; $729b: $20 $79

    ld l, a                                       ; $729d: $6f
    ld [hl], l                                    ; $729e: $75
    jr nz, jr_018_7318                            ; $729f: $20 $77

    ld h, c                                       ; $72a1: $61
    ld l, [hl]                                    ; $72a2: $6e
    ld [hl], h                                    ; $72a3: $74
    ld bc, $6f74                                  ; $72a4: $01 $74 $6f
    jr nz, jr_018_7312                            ; $72a7: $20 $69

    ld l, l                                       ; $72a9: $6d
    ld [hl], b                                    ; $72aa: $70
    ld [hl], d                                    ; $72ab: $72
    ld l, a                                       ; $72ac: $6f
    halt                                          ; $72ad: $76
    ld h, l                                       ; $72ae: $65
    inc l                                         ; $72af: $2c
    jr nz, jr_018_7325                            ; $72b0: $20 $73

    ld [hl], h                                    ; $72b2: $74
    ld l, c                                       ; $72b3: $69
    ld h, e                                       ; $72b4: $63
    ld l, e                                       ; $72b5: $6b
    ld bc, $6977                                  ; $72b6: $01 $77 $69
    ld [hl], h                                    ; $72b9: $74
    ld l, b                                       ; $72ba: $68
    jr nz, jr_018_7331                            ; $72bb: $20 $74

    ld l, b                                       ; $72bd: $68

jr_018_72be:
    ld h, l                                       ; $72be: $65
    jr nz, jr_018_7323                            ; $72bf: $20 $62

    ld h, l                                       ; $72c1: $65
    ld [hl], e                                    ; $72c2: $73
    ld [hl], h                                    ; $72c3: $74
    ld hl, $0003                                  ; $72c4: $21 $03 $00
    rlca                                          ; $72c7: $07
    inc l                                         ; $72c8: $2c
    jr nz, jr_018_7342                            ; $72c9: $20 $77

    ld l, c                                       ; $72cb: $69
    ld l, h                                       ; $72cc: $6c
    ld l, h                                       ; $72cd: $6c
    ld bc, $6f79                                  ; $72ce: $01 $79 $6f

jr_018_72d1:
    ld [hl], l                                    ; $72d1: $75
    jr nz, jr_018_7335                            ; $72d2: $20 $61

    ld l, [hl]                                    ; $72d4: $6e

jr_018_72d5:
    ld h, h                                       ; $72d5: $64
    jr nz, jr_018_72e6                            ; $72d6: $20 $0e

    dec b                                         ; $72d8: $05

jr_018_72d9:
    jr nz, jr_018_734b                            ; $72d9: $20 $70

jr_018_72db:
    ld l, h                                       ; $72db: $6c
    ld h, c                                       ; $72dc: $61
    ld a, c                                       ; $72dd: $79
    ld bc, $2061                                  ; $72de: $01 $61 $20
    ld c, l                                       ; $72e1: $4d
    ld h, c                                       ; $72e2: $61
    ld [hl], h                                    ; $72e3: $74
    ld h, e                                       ; $72e4: $63
    ld l, b                                       ; $72e5: $68

jr_018_72e6:
    jr nz, jr_018_732f                            ; $72e6: $20 $47

jr_018_72e8:
    ld h, c                                       ; $72e8: $61
    ld l, l                                       ; $72e9: $6d
    ld h, l                                       ; $72ea: $65
    ccf                                           ; $72eb: $3f
    ld [bc], a                                    ; $72ec: $02
    ld c, c                                       ; $72ed: $49
    daa                                           ; $72ee: $27
    ld h, h                                       ; $72ef: $64
    jr nz, jr_018_735e                            ; $72f0: $20 $6c

    ld l, c                                       ; $72f2: $69
    ld l, e                                       ; $72f3: $6b
    ld h, l                                       ; $72f4: $65
    jr nz, jr_018_736b                            ; $72f5: $20 $74

    ld l, a                                       ; $72f7: $6f
    jr nz, jr_018_736d                            ; $72f8: $20 $73

    ld h, l                                       ; $72fa: $65
    ld h, l                                       ; $72fb: $65
    ld bc, $6f79                                  ; $72fc: $01 $79 $6f
    ld [hl], l                                    ; $72ff: $75
    jr nz, jr_018_7369                            ; $7300: $20 $67

    ld l, a                                       ; $7302: $6f

jr_018_7303:
    jr nz, jr_018_737a                            ; $7303: $20 $75

    ld [hl], b                                    ; $7305: $70
    jr nz, jr_018_7369                            ; $7306: $20 $61

    ld h, a                                       ; $7308: $67
    ld h, c                                       ; $7309: $61
    ld l, c                                       ; $730a: $69
    ld l, [hl]                                    ; $730b: $6e
    ld [hl], e                                    ; $730c: $73
    ld [hl], h                                    ; $730d: $74
    ld bc, $6874                                  ; $730e: $01 $74 $68
    ld h, l                                       ; $7311: $65

jr_018_7312:
    jr nz, jr_018_737a                            ; $7312: $20 $66

    ld l, a                                       ; $7314: $6f
    ld [hl], d                                    ; $7315: $72

jr_018_7316:
    ld l, l                                       ; $7316: $6d
    ld h, l                                       ; $7317: $65

jr_018_7318:
    ld [hl], d                                    ; $7318: $72
    jr nz, jr_018_735e                            ; $7319: $20 $43

    ld l, b                                       ; $731b: $68
    ld h, c                                       ; $731c: $61
    ld l, l                                       ; $731d: $6d
    ld [hl], b                                    ; $731e: $70
    ld hl, $0003                                  ; $731f: $21 $03 $00
    ld d, b                                       ; $7322: $50

jr_018_7323:
    ld l, h                                       ; $7323: $6c
    ld h, c                                       ; $7324: $61

jr_018_7325:
    ld a, c                                       ; $7325: $79
    ld l, c                                       ; $7326: $69
    ld l, [hl]                                    ; $7327: $6e
    ld h, a                                       ; $7328: $67
    jr nz, jr_018_738c                            ; $7329: $20 $61

    jr nz, jr_018_737a                            ; $732b: $20 $4d

    ld h, c                                       ; $732d: $61
    ld [hl], h                                    ; $732e: $74

jr_018_732f:
    ld h, e                                       ; $732f: $63
    ld l, b                                       ; $7330: $68

jr_018_7331:
    ld bc, $6147                                  ; $7331: $01 $47 $61
    ld l, l                                       ; $7334: $6d

jr_018_7335:
    ld h, l                                       ; $7335: $65
    jr nz, jr_018_73af                            ; $7336: $20 $77

    ld l, c                                       ; $7338: $69
    ld [hl], h                                    ; $7339: $74
    ld l, b                                       ; $733a: $68
    jr nz, jr_018_734b                            ; $733b: $20 $0e

    ld b, $2c                                     ; $733d: $06 $2c
    ld bc, $3f07                                  ; $733f: $01 $07 $3f

jr_018_7342:
    ld [bc], a                                    ; $7342: $02
    ld c, b                                       ; $7343: $48
    ld h, l                                       ; $7344: $65
    jr nz, @+$74                                  ; $7345: $20 $72

    ld h, l                                       ; $7347: $65
    ld h, c                                       ; $7348: $61
    ld l, h                                       ; $7349: $6c
    ld l, h                                       ; $734a: $6c

jr_018_734b:
    ld a, c                                       ; $734b: $79
    jr nz, jr_018_73b6                            ; $734c: $20 $68

    ld l, c                                       ; $734e: $69
    ld [hl], h                                    ; $734f: $74
    ld [hl], e                                    ; $7350: $73
    ld bc, $6874                                  ; $7351: $01 $74 $68
    ld h, l                                       ; $7354: $65
    jr nz, @+$64                                  ; $7355: $20 $62

    ld h, c                                       ; $7357: $61
    ld l, h                                       ; $7358: $6c
    ld l, h                                       ; $7359: $6c
    inc l                                         ; $735a: $2c
    jr nz, jr_018_73d0                            ; $735b: $20 $73

    ld l, a                                       ; $735d: $6f

jr_018_735e:
    jr nz, @+$66                                  ; $735e: $20 $64

    ld l, a                                       ; $7360: $6f
    ld l, [hl]                                    ; $7361: $6e
    daa                                           ; $7362: $27
    ld [hl], h                                    ; $7363: $74
    ld bc, $756f                                  ; $7364: $01 $6f $75
    ld [hl], h                                    ; $7367: $74
    dec l                                         ; $7368: $2d

jr_018_7369:
    ld [hl], b                                    ; $7369: $70
    ld h, c                                       ; $736a: $61

jr_018_736b:
    ld h, e                                       ; $736b: $63
    ld h, l                                       ; $736c: $65

jr_018_736d:
    jr nz, jr_018_73e8                            ; $736d: $20 $79

    ld l, a                                       ; $736f: $6f
    ld [hl], l                                    ; $7370: $75
    ld [hl], d                                    ; $7371: $72
    ld [hl], e                                    ; $7372: $73
    ld h, l                                       ; $7373: $65
    ld l, h                                       ; $7374: $6c
    ld h, [hl]                                    ; $7375: $66
    ld hl, $0003                                  ; $7376: $21 $03 $00
    ld d, b                                       ; $7379: $50

jr_018_737a:
    ld l, h                                       ; $737a: $6c
    ld h, c                                       ; $737b: $61
    ld a, c                                       ; $737c: $79
    ld l, c                                       ; $737d: $69
    ld l, [hl]                                    ; $737e: $6e
    ld h, a                                       ; $737f: $67
    jr nz, jr_018_73e3                            ; $7380: $20 $61

    jr nz, jr_018_73d1                            ; $7382: $20 $4d

    ld h, c                                       ; $7384: $61
    ld [hl], h                                    ; $7385: $74
    ld h, e                                       ; $7386: $63
    ld l, b                                       ; $7387: $68
    ld bc, $6147                                  ; $7388: $01 $47 $61
    ld l, l                                       ; $738b: $6d

jr_018_738c:
    ld h, l                                       ; $738c: $65
    jr nz, jr_018_7406                            ; $738d: $20 $77

    ld l, c                                       ; $738f: $69
    ld [hl], h                                    ; $7390: $74
    ld l, b                                       ; $7391: $68
    jr nz, jr_018_73a2                            ; $7392: $20 $0e

    ld b, $2c                                     ; $7394: $06 $2c
    ld bc, $3f07                                  ; $7396: $01 $07 $3f
    ld [bc], a                                    ; $7399: $02
    ld d, a                                       ; $739a: $57
    ld l, a                                       ; $739b: $6f
    ld [hl], a                                    ; $739c: $77
    ld hl, $4120                                  ; $739d: $21 $20 $41
    jr nz, jr_018_740f                            ; $73a0: $20 $6d

jr_018_73a2:
    ld h, c                                       ; $73a2: $61
    ld [hl], h                                    ; $73a3: $74
    ld h, e                                       ; $73a4: $63
    ld l, b                                       ; $73a5: $68
    jr nz, jr_018_740a                            ; $73a6: $20 $62

    ld h, l                                       ; $73a8: $65
    dec l                                         ; $73a9: $2d
    ld bc, $7774                                  ; $73aa: $01 $74 $77
    ld h, l                                       ; $73ad: $65
    ld h, l                                       ; $73ae: $65

jr_018_73af:
    ld l, [hl]                                    ; $73af: $6e
    jr nz, jr_018_742b                            ; $73b0: $20 $79

    ld l, a                                       ; $73b2: $6f
    ld [hl], l                                    ; $73b3: $75
    jr nz, @+$63                                  ; $73b4: $20 $61

jr_018_73b6:
    ld l, [hl]                                    ; $73b6: $6e
    ld h, h                                       ; $73b7: $64
    jr nz, jr_018_742e                            ; $73b8: $20 $74

    ld l, b                                       ; $73ba: $68
    ld h, l                                       ; $73bb: $65
    ld bc, $6f66                                  ; $73bc: $01 $66 $6f
    ld [hl], d                                    ; $73bf: $72
    ld l, l                                       ; $73c0: $6d
    ld h, l                                       ; $73c1: $65
    ld [hl], d                                    ; $73c2: $72
    jr nz, jr_018_7409                            ; $73c3: $20 $44

    ld [hl], l                                    ; $73c5: $75
    ld l, [hl]                                    ; $73c6: $6e
    ld h, l                                       ; $73c7: $65
    jr nz, jr_018_740d                            ; $73c8: $20 $43

    ld l, b                                       ; $73ca: $68
    ld h, c                                       ; $73cb: $61
    ld l, l                                       ; $73cc: $6d
    ld [hl], b                                    ; $73cd: $70
    ccf                                           ; $73ce: $3f
    inc bc                                        ; $73cf: $03

jr_018_73d0:
    nop                                           ; $73d0: $00

jr_018_73d1:
    ld d, b                                       ; $73d1: $50
    ld l, h                                       ; $73d2: $6c
    ld h, c                                       ; $73d3: $61
    ld a, c                                       ; $73d4: $79
    ld l, c                                       ; $73d5: $69
    ld l, [hl]                                    ; $73d6: $6e
    ld h, a                                       ; $73d7: $67
    jr nz, jr_018_743b                            ; $73d8: $20 $61

    jr nz, @+$4f                                  ; $73da: $20 $4d

    ld h, c                                       ; $73dc: $61
    ld [hl], h                                    ; $73dd: $74
    ld h, e                                       ; $73de: $63
    ld l, b                                       ; $73df: $68
    ld bc, $6147                                  ; $73e0: $01 $47 $61

jr_018_73e3:
    ld l, l                                       ; $73e3: $6d
    ld h, l                                       ; $73e4: $65
    jr nz, jr_018_745e                            ; $73e5: $20 $77

    ld l, c                                       ; $73e7: $69

jr_018_73e8:
    ld [hl], h                                    ; $73e8: $74
    ld l, b                                       ; $73e9: $68
    jr nz, @+$10                                  ; $73ea: $20 $0e

    rlca                                          ; $73ec: $07
    inc l                                         ; $73ed: $2c
    ld bc, $3f07                                  ; $73ee: $01 $07 $3f
    ld [bc], a                                    ; $73f1: $02
    ld b, c                                       ; $73f2: $41
    jr nz, jr_018_7442                            ; $73f3: $20 $4d

    ld h, c                                       ; $73f5: $61
    ld [hl], h                                    ; $73f6: $74
    ld h, e                                       ; $73f7: $63
    ld l, b                                       ; $73f8: $68
    jr nz, jr_018_7442                            ; $73f9: $20 $47

    ld h, c                                       ; $73fb: $61
    ld l, l                                       ; $73fc: $6d
    ld h, l                                       ; $73fd: $65
    jr nz, @+$79                                  ; $73fe: $20 $77

    ld l, c                                       ; $7400: $69
    ld [hl], h                                    ; $7401: $74
    ld l, b                                       ; $7402: $68
    ld bc, $6874                                  ; $7403: $01 $74 $68

jr_018_7406:
    ld h, l                                       ; $7406: $65
    jr nz, jr_018_7450                            ; $7407: $20 $47

jr_018_7409:
    ld [hl], d                                    ; $7409: $72

jr_018_740a:
    ld h, c                                       ; $740a: $61
    ld l, [hl]                                    ; $740b: $6e
    ld h, h                                       ; $740c: $64

jr_018_740d:
    jr nz, jr_018_7452                            ; $740d: $20 $43

jr_018_740f:
    ld l, b                                       ; $740f: $68
    ld h, c                                       ; $7410: $61
    ld l, l                                       ; $7411: $6d
    ld [hl], b                                    ; $7412: $70
    ld l, c                                       ; $7413: $69
    ld l, a                                       ; $7414: $6f
    ld l, [hl]                                    ; $7415: $6e
    jr nz, jr_018_7445                            ; $7416: $20 $2d

    ld bc, $6874                                  ; $7418: $01 $74 $68
    ld h, c                                       ; $741b: $61
    ld [hl], h                                    ; $741c: $74
    daa                                           ; $741d: $27
    ld [hl], e                                    ; $741e: $73
    jr nz, @+$63                                  ; $741f: $20 $61

    ld l, l                                       ; $7421: $6d
    ld h, c                                       ; $7422: $61
    ld a, d                                       ; $7423: $7a
    ld l, c                                       ; $7424: $69
    ld l, [hl]                                    ; $7425: $6e
    ld h, a                                       ; $7426: $67
    ld hl, $0003                                  ; $7427: $21 $03 $00
    ld d, b                                       ; $742a: $50

jr_018_742b:
    ld l, h                                       ; $742b: $6c
    ld h, c                                       ; $742c: $61
    ld a, c                                       ; $742d: $79

jr_018_742e:
    ld l, c                                       ; $742e: $69
    ld l, [hl]                                    ; $742f: $6e
    ld h, a                                       ; $7430: $67
    jr nz, jr_018_7494                            ; $7431: $20 $61

    jr nz, @+$4f                                  ; $7433: $20 $4d

    ld h, c                                       ; $7435: $61
    ld [hl], h                                    ; $7436: $74
    ld h, e                                       ; $7437: $63
    ld l, b                                       ; $7438: $68
    jr nz, @+$49                                  ; $7439: $20 $47

jr_018_743b:
    ld h, c                                       ; $743b: $61
    ld l, l                                       ; $743c: $6d
    ld h, l                                       ; $743d: $65
    ld bc, $6977                                  ; $743e: $01 $77 $69
    ld [hl], h                                    ; $7441: $74

jr_018_7442:
    ld l, b                                       ; $7442: $68
    jr nz, @+$10                                  ; $7443: $20 $0e

jr_018_7445:
    rlca                                          ; $7445: $07
    inc l                                         ; $7446: $2c
    ld bc, $3f07                                  ; $7447: $01 $07 $3f
    ld [bc], a                                    ; $744a: $02
    ld b, c                                       ; $744b: $41
    jr nz, @+$74                                  ; $744c: $20 $72

    ld l, a                                       ; $744e: $6f
    ld [hl], l                                    ; $744f: $75

jr_018_7450:
    ld l, [hl]                                    ; $7450: $6e
    ld h, h                                       ; $7451: $64

jr_018_7452:
    jr nz, jr_018_74cb                            ; $7452: $20 $77

    ld l, c                                       ; $7454: $69
    ld [hl], h                                    ; $7455: $74
    ld l, b                                       ; $7456: $68
    jr nz, jr_018_74cd                            ; $7457: $20 $74

    ld l, b                                       ; $7459: $68
    ld h, l                                       ; $745a: $65
    ld bc, $6f66                                  ; $745b: $01 $66 $6f

jr_018_745e:
    ld [hl], d                                    ; $745e: $72
    ld l, l                                       ; $745f: $6d
    ld h, l                                       ; $7460: $65
    ld [hl], d                                    ; $7461: $72
    jr nz, jr_018_74ab                            ; $7462: $20 $47

    ld [hl], d                                    ; $7464: $72
    ld h, c                                       ; $7465: $61
    ld l, [hl]                                    ; $7466: $6e
    ld h, h                                       ; $7467: $64
    jr nz, jr_018_74ad                            ; $7468: $20 $43

    ld l, b                                       ; $746a: $68
    ld h, c                                       ; $746b: $61
    ld l, l                                       ; $746c: $6d
    ld [hl], b                                    ; $746d: $70
    ld bc, $6977                                  ; $746e: $01 $77 $69
    ld l, h                                       ; $7471: $6c
    ld l, h                                       ; $7472: $6c
    jr nz, @+$64                                  ; $7473: $20 $62

    ld h, l                                       ; $7475: $65
    jr nz, jr_018_74d9                            ; $7476: $20 $61

    jr nz, jr_018_74ee                            ; $7478: $20 $74

    ld l, b                                       ; $747a: $68
    ld [hl], d                                    ; $747b: $72
    ld l, c                                       ; $747c: $69
    ld l, h                                       ; $747d: $6c
    ld l, h                                       ; $747e: $6c
    ld h, l                                       ; $747f: $65
    ld [hl], d                                    ; $7480: $72
    ld hl, $0003                                  ; $7481: $21 $03 $00
    ld d, b                                       ; $7484: $50
    ld l, h                                       ; $7485: $6c
    ld h, c                                       ; $7486: $61
    ld a, c                                       ; $7487: $79
    jr nz, @+$10                                  ; $7488: $20 $0e

    inc b                                         ; $748a: $04
    inc l                                         ; $748b: $2c
    jr nz, jr_018_74ef                            ; $748c: $20 $61

    ld l, [hl]                                    ; $748e: $6e
    ld h, h                                       ; $748f: $64
    ld bc, $6f79                                  ; $7490: $01 $79 $6f
    ld [hl], l                                    ; $7493: $75

jr_018_7494:
    daa                                           ; $7494: $27
    ld l, h                                       ; $7495: $6c
    ld l, h                                       ; $7496: $6c
    jr nz, @+$68                                  ; $7497: $20 $66

    ld l, c                                       ; $7499: $69
    ld l, [hl]                                    ; $749a: $6e
    ld h, h                                       ; $749b: $64
    jr nz, @+$69                                  ; $749c: $20 $67

    ld l, a                                       ; $749e: $6f
    ld l, h                                       ; $749f: $6c
    ld h, [hl]                                    ; $74a0: $66
    daa                                           ; $74a1: $27
    ld [hl], e                                    ; $74a2: $73
    ld bc, $6f6e                                  ; $74a3: $01 $6e $6f
    ld [hl], h                                    ; $74a6: $74
    jr nz, jr_018_750a                            ; $74a7: $20 $61

    ld l, h                                       ; $74a9: $6c
    ld l, h                                       ; $74aa: $6c

jr_018_74ab:
    jr nz, @+$72                                  ; $74ab: $20 $70

jr_018_74ad:
    ld l, a                                       ; $74ad: $6f
    ld [hl], a                                    ; $74ae: $77
    ld h, l                                       ; $74af: $65
    ld [hl], d                                    ; $74b0: $72
    ld l, $03                                     ; $74b1: $2e $03
    nop                                           ; $74b3: $00
    ld d, b                                       ; $74b4: $50
    ld l, h                                       ; $74b5: $6c
    ld h, c                                       ; $74b6: $61
    ld a, c                                       ; $74b7: $79
    ld l, c                                       ; $74b8: $69
    ld l, [hl]                                    ; $74b9: $6e
    ld h, a                                       ; $74ba: $67
    jr nz, jr_018_7531                            ; $74bb: $20 $74

    ld l, b                                       ; $74bd: $68
    ld h, l                                       ; $74be: $65
    jr nz, @+$45                                  ; $74bf: $20 $43

    ld l, b                                       ; $74c1: $68
    ld h, c                                       ; $74c2: $61
    ld l, l                                       ; $74c3: $6d
    ld [hl], b                                    ; $74c4: $70
    ld bc, $6f74                                  ; $74c5: $01 $74 $6f
    jr nz, jr_018_753a                            ; $74c8: $20 $70

    ld [hl], d                                    ; $74ca: $72

jr_018_74cb:
    ld h, c                                       ; $74cb: $61
    ld h, e                                       ; $74cc: $63

jr_018_74cd:
    ld [hl], h                                    ; $74cd: $74
    ld l, c                                       ; $74ce: $69
    ld h, e                                       ; $74cf: $63
    ld h, l                                       ; $74d0: $65
    jr nz, jr_018_7539                            ; $74d1: $20 $66

    ld l, a                                       ; $74d3: $6f
    ld [hl], d                                    ; $74d4: $72
    ld bc, $200b                                  ; $74d5: $01 $0b $20
    ld [hl], a                                    ; $74d8: $77

jr_018_74d9:
    ld l, c                                       ; $74d9: $69
    ld l, h                                       ; $74da: $6c
    ld l, h                                       ; $74db: $6c
    jr nz, jr_018_7546                            ; $74dc: $20 $68

    ld h, l                                       ; $74de: $65
    ld l, h                                       ; $74df: $6c
    ld [hl], b                                    ; $74e0: $70
    ld l, $03                                     ; $74e1: $2e $03
    nop                                           ; $74e3: $00
    ld d, b                                       ; $74e4: $50
    ld l, h                                       ; $74e5: $6c
    ld h, c                                       ; $74e6: $61
    ld a, c                                       ; $74e7: $79
    ld l, c                                       ; $74e8: $69
    ld l, [hl]                                    ; $74e9: $6e
    ld h, a                                       ; $74ea: $67
    jr nz, jr_018_74fb                            ; $74eb: $20 $0e

    dec b                                         ; $74ed: $05

jr_018_74ee:
    daa                                           ; $74ee: $27

jr_018_74ef:
    ld l, h                                       ; $74ef: $6c
    ld l, h                                       ; $74f0: $6c
    ld bc, $6967                                  ; $74f1: $01 $67 $69
    halt                                          ; $74f4: $76
    ld h, l                                       ; $74f5: $65
    jr nz, @+$6b                                  ; $74f6: $20 $69

    ld l, [hl]                                    ; $74f8: $6e
    ld [hl], e                                    ; $74f9: $73
    ld l, c                                       ; $74fa: $69

jr_018_74fb:
    ld h, a                                       ; $74fb: $67
    ld l, b                                       ; $74fc: $68
    ld [hl], h                                    ; $74fd: $74
    jr nz, jr_018_7569                            ; $74fe: $20 $69

    ld l, [hl]                                    ; $7500: $6e
    ld [hl], h                                    ; $7501: $74
    ld l, a                                       ; $7502: $6f
    ld bc, $7461                                  ; $7503: $01 $61 $74
    ld [hl], h                                    ; $7506: $74
    ld h, c                                       ; $7507: $61
    ld h, e                                       ; $7508: $63
    ld l, e                                       ; $7509: $6b

jr_018_750a:
    jr nz, jr_018_757b                            ; $750a: $20 $6f

    ld [hl], b                                    ; $750c: $70
    ld [hl], h                                    ; $750d: $74
    ld l, c                                       ; $750e: $69
    ld l, a                                       ; $750f: $6f
    ld l, [hl]                                    ; $7510: $6e
    ld [hl], e                                    ; $7511: $73
    ld l, $03                                     ; $7512: $2e $03
    nop                                           ; $7514: $00
    ld d, b                                       ; $7515: $50
    ld l, h                                       ; $7516: $6c
    ld h, c                                       ; $7517: $61
    ld a, c                                       ; $7518: $79
    ld l, c                                       ; $7519: $69
    ld l, [hl]                                    ; $751a: $6e
    ld h, a                                       ; $751b: $67
    jr nz, jr_018_752c                            ; $751c: $20 $0e

    dec b                                         ; $751e: $05
    daa                                           ; $751f: $27
    ld l, h                                       ; $7520: $6c
    ld l, h                                       ; $7521: $6c
    ld bc, $6967                                  ; $7522: $01 $67 $69
    halt                                          ; $7525: $76
    ld h, l                                       ; $7526: $65
    jr nz, jr_018_7592                            ; $7527: $20 $69

    ld l, [hl]                                    ; $7529: $6e
    ld [hl], e                                    ; $752a: $73
    ld l, c                                       ; $752b: $69

jr_018_752c:
    ld h, a                                       ; $752c: $67
    ld l, b                                       ; $752d: $68
    ld [hl], h                                    ; $752e: $74
    jr nz, @+$6b                                  ; $752f: $20 $69

jr_018_7531:
    ld l, [hl]                                    ; $7531: $6e
    ld [hl], h                                    ; $7532: $74
    ld l, a                                       ; $7533: $6f
    ld bc, $7461                                  ; $7534: $01 $61 $74
    ld [hl], h                                    ; $7537: $74
    ld h, c                                       ; $7538: $61

jr_018_7539:
    ld h, e                                       ; $7539: $63

jr_018_753a:
    ld l, e                                       ; $753a: $6b
    jr nz, jr_018_75ac                            ; $753b: $20 $6f

    ld [hl], b                                    ; $753d: $70
    ld [hl], h                                    ; $753e: $74
    ld l, c                                       ; $753f: $69
    ld l, a                                       ; $7540: $6f
    ld l, [hl]                                    ; $7541: $6e
    ld [hl], e                                    ; $7542: $73
    ld l, $03                                     ; $7543: $2e $03
    nop                                           ; $7545: $00

jr_018_7546:
    ld d, b                                       ; $7546: $50
    ld l, h                                       ; $7547: $6c
    ld h, c                                       ; $7548: $61
    ld a, c                                       ; $7549: $79
    ld l, c                                       ; $754a: $69
    ld l, [hl]                                    ; $754b: $6e
    ld h, a                                       ; $754c: $67
    jr nz, jr_018_755d                            ; $754d: $20 $0e

    dec b                                         ; $754f: $05
    daa                                           ; $7550: $27
    ld l, h                                       ; $7551: $6c
    ld l, h                                       ; $7552: $6c
    ld bc, $6967                                  ; $7553: $01 $67 $69
    halt                                          ; $7556: $76
    ld h, l                                       ; $7557: $65
    jr nz, jr_018_75c3                            ; $7558: $20 $69

    ld l, [hl]                                    ; $755a: $6e
    ld [hl], e                                    ; $755b: $73
    ld l, c                                       ; $755c: $69

jr_018_755d:
    ld h, a                                       ; $755d: $67
    ld l, b                                       ; $755e: $68
    ld [hl], h                                    ; $755f: $74
    jr nz, jr_018_75cb                            ; $7560: $20 $69

    ld l, [hl]                                    ; $7562: $6e
    ld [hl], h                                    ; $7563: $74
    ld l, a                                       ; $7564: $6f
    ld bc, $7461                                  ; $7565: $01 $61 $74
    ld [hl], h                                    ; $7568: $74

jr_018_7569:
    ld h, c                                       ; $7569: $61
    ld h, e                                       ; $756a: $63
    ld l, e                                       ; $756b: $6b
    jr nz, jr_018_75dd                            ; $756c: $20 $6f

    ld [hl], b                                    ; $756e: $70
    ld [hl], h                                    ; $756f: $74
    ld l, c                                       ; $7570: $69
    ld l, a                                       ; $7571: $6f
    ld l, [hl]                                    ; $7572: $6e
    ld [hl], e                                    ; $7573: $73
    ld l, $03                                     ; $7574: $2e $03
    nop                                           ; $7576: $00
    ld d, b                                       ; $7577: $50
    ld [hl], d                                    ; $7578: $72
    ld h, c                                       ; $7579: $61
    ld h, e                                       ; $757a: $63

jr_018_757b:
    ld [hl], h                                    ; $757b: $74
    ld l, c                                       ; $757c: $69
    ld h, e                                       ; $757d: $63
    ld l, c                                       ; $757e: $69
    ld l, [hl]                                    ; $757f: $6e
    ld h, a                                       ; $7580: $67
    jr nz, jr_018_75e9                            ; $7581: $20 $66

    ld l, a                                       ; $7583: $6f
    ld [hl], d                                    ; $7584: $72
    ld bc, $200b                                  ; $7585: $01 $0b $20
    ld h, d                                       ; $7588: $62
    ld a, c                                       ; $7589: $79
    jr nz, jr_018_75fc                            ; $758a: $20 $70

    ld l, h                                       ; $758c: $6c
    ld h, c                                       ; $758d: $61
    ld a, c                                       ; $758e: $79
    ld l, c                                       ; $758f: $69
    ld l, [hl]                                    ; $7590: $6e
    ld h, a                                       ; $7591: $67

jr_018_7592:
    ld bc, $6150                                  ; $7592: $01 $50 $61
    ld l, h                                       ; $7595: $6c
    ld l, l                                       ; $7596: $6d
    daa                                           ; $7597: $27
    ld [hl], e                                    ; $7598: $73
    jr nz, jr_018_7601                            ; $7599: $20 $66

    ld l, a                                       ; $759b: $6f
    ld [hl], d                                    ; $759c: $72
    ld l, l                                       ; $759d: $6d
    ld h, l                                       ; $759e: $65
    ld [hl], d                                    ; $759f: $72
    jr nz, jr_018_75e5                            ; $75a0: $20 $43

    ld l, b                                       ; $75a2: $68
    ld h, c                                       ; $75a3: $61
    ld l, l                                       ; $75a4: $6d
    ld [hl], b                                    ; $75a5: $70
    ccf                                           ; $75a6: $3f
    inc bc                                        ; $75a7: $03
    nop                                           ; $75a8: $00
    ld e, c                                       ; $75a9: $59
    ld l, a                                       ; $75aa: $6f
    ld [hl], l                                    ; $75ab: $75

jr_018_75ac:
    jr nz, jr_018_7611                            ; $75ac: $20 $63

    ld h, c                                       ; $75ae: $61
    ld l, [hl]                                    ; $75af: $6e
    jr nz, @+$6e                                  ; $75b0: $20 $6c

    ld h, l                                       ; $75b2: $65
    ld h, c                                       ; $75b3: $61
    ld [hl], d                                    ; $75b4: $72
    ld l, [hl]                                    ; $75b5: $6e
    jr nz, @+$76                                  ; $75b6: $20 $74

    ld l, a                                       ; $75b8: $6f
    ld bc, $7264                                  ; $75b9: $01 $64 $72
    ld l, c                                       ; $75bc: $69
    halt                                          ; $75bd: $76
    ld h, l                                       ; $75be: $65
    jr nz, jr_018_7622                            ; $75bf: $20 $61

    ld l, [hl]                                    ; $75c1: $6e
    ld h, h                                       ; $75c2: $64

jr_018_75c3:
    jr nz, jr_018_7628                            ; $75c3: $20 $63

    ld l, b                                       ; $75c5: $68
    ld l, c                                       ; $75c6: $69
    ld [hl], b                                    ; $75c7: $70
    jr nz, @+$64                                  ; $75c8: $20 $62

    ld a, c                                       ; $75ca: $79

jr_018_75cb:
    ld bc, $6c70                                  ; $75cb: $01 $70 $6c
    ld h, c                                       ; $75ce: $61
    ld a, c                                       ; $75cf: $79
    ld l, c                                       ; $75d0: $69
    ld l, [hl]                                    ; $75d1: $6e
    ld h, a                                       ; $75d2: $67
    jr nz, jr_018_75e3                            ; $75d3: $20 $0e

    ld b, $2e                                     ; $75d5: $06 $2e
    inc bc                                        ; $75d7: $03
    nop                                           ; $75d8: $00
    ld d, b                                       ; $75d9: $50
    ld l, h                                       ; $75da: $6c
    ld h, c                                       ; $75db: $61
    ld a, c                                       ; $75dc: $79

jr_018_75dd:
    ld l, c                                       ; $75dd: $69
    ld l, [hl]                                    ; $75de: $6e
    ld h, a                                       ; $75df: $67
    jr nz, @+$46                                  ; $75e0: $20 $44

    ld [hl], l                                    ; $75e2: $75

jr_018_75e3:
    ld l, [hl]                                    ; $75e3: $6e
    ld h, l                                       ; $75e4: $65

jr_018_75e5:
    daa                                           ; $75e5: $27
    ld [hl], e                                    ; $75e6: $73
    jr nz, jr_018_764f                            ; $75e7: $20 $66

jr_018_75e9:
    ld l, a                                       ; $75e9: $6f
    ld [hl], d                                    ; $75ea: $72
    ld l, l                                       ; $75eb: $6d
    dec l                                         ; $75ec: $2d
    ld bc, $7265                                  ; $75ed: $01 $65 $72
    jr nz, @+$45                                  ; $75f0: $20 $43

    ld l, b                                       ; $75f2: $68
    ld h, c                                       ; $75f3: $61
    ld l, l                                       ; $75f4: $6d
    ld [hl], b                                    ; $75f5: $70
    jr nz, @+$76                                  ; $75f6: $20 $74

    ld l, a                                       ; $75f8: $6f
    jr nz, jr_018_766b                            ; $75f9: $20 $70

    ld [hl], d                                    ; $75fb: $72

jr_018_75fc:
    ld h, l                                       ; $75fc: $65
    dec l                                         ; $75fd: $2d
    ld bc, $6170                                  ; $75fe: $01 $70 $61

jr_018_7601:
    ld [hl], d                                    ; $7601: $72
    ld h, l                                       ; $7602: $65
    jr nz, jr_018_766b                            ; $7603: $20 $66

    ld l, a                                       ; $7605: $6f
    ld [hl], d                                    ; $7606: $72
    jr nz, jr_018_7614                            ; $7607: $20 $0b

    ccf                                           ; $7609: $3f
    inc bc                                        ; $760a: $03
    nop                                           ; $760b: $00
    rlca                                          ; $760c: $07
    inc l                                         ; $760d: $2c
    jr nz, jr_018_7679                            ; $760e: $20 $69

    ld [hl], e                                    ; $7610: $73

jr_018_7611:
    ld bc, $6874                                  ; $7611: $01 $74 $68

jr_018_7614:
    ld h, c                                       ; $7614: $61
    ld [hl], h                                    ; $7615: $74
    jr nz, jr_018_765f                            ; $7616: $20 $47

    ld [hl], d                                    ; $7618: $72
    ld h, c                                       ; $7619: $61
    ld l, [hl]                                    ; $761a: $6e
    ld h, h                                       ; $761b: $64
    ld bc, $6843                                  ; $761c: $01 $43 $68
    ld h, c                                       ; $761f: $61
    ld l, l                                       ; $7620: $6d
    ld [hl], b                                    ; $7621: $70

jr_018_7622:
    ld l, c                                       ; $7622: $69
    ld l, a                                       ; $7623: $6f
    ld l, [hl]                                    ; $7624: $6e
    jr nz, @+$10                                  ; $7625: $20 $0e

    rlca                                          ; $7627: $07

jr_018_7628:
    ccf                                           ; $7628: $3f
    ld [bc], a                                    ; $7629: $02
    ld c, c                                       ; $762a: $49
    jr nz, jr_018_76a4                            ; $762b: $20 $77

    ld l, a                                       ; $762d: $6f
    ld l, [hl]                                    ; $762e: $6e
    ld h, h                                       ; $762f: $64
    ld h, l                                       ; $7630: $65
    ld [hl], d                                    ; $7631: $72
    ld l, $2e                                     ; $7632: $2e $2e
    ld l, $01                                     ; $7634: $2e $01
    ld [hl], a                                    ; $7636: $77
    ld l, b                                       ; $7637: $68
    ld l, a                                       ; $7638: $6f
    jr nz, jr_018_76b2                            ; $7639: $20 $77

    ld l, c                                       ; $763b: $69
    ld l, h                                       ; $763c: $6c
    ld l, h                                       ; $763d: $6c
    jr nz, jr_018_76b7                            ; $763e: $20 $77

    ld l, c                                       ; $7640: $69
    ld l, [hl]                                    ; $7641: $6e
    ccf                                           ; $7642: $3f
    inc bc                                        ; $7643: $03
    nop                                           ; $7644: $00
    rlca                                          ; $7645: $07
    inc l                                         ; $7646: $2c
    jr nz, jr_018_76b2                            ; $7647: $20 $69

    ld [hl], e                                    ; $7649: $73
    ld bc, $6874                                  ; $764a: $01 $74 $68
    ld h, c                                       ; $764d: $61
    ld [hl], h                                    ; $764e: $74

jr_018_764f:
    jr nz, jr_018_76b7                            ; $764f: $20 $66

    ld l, a                                       ; $7651: $6f
    ld [hl], d                                    ; $7652: $72
    ld l, l                                       ; $7653: $6d
    ld h, l                                       ; $7654: $65
    ld [hl], d                                    ; $7655: $72
    jr nz, jr_018_769f                            ; $7656: $20 $47

    ld [hl], d                                    ; $7658: $72
    ld h, c                                       ; $7659: $61
    ld l, [hl]                                    ; $765a: $6e
    ld h, h                                       ; $765b: $64
    ld bc, $6843                                  ; $765c: $01 $43 $68

jr_018_765f:
    ld h, c                                       ; $765f: $61
    ld l, l                                       ; $7660: $6d
    ld [hl], b                                    ; $7661: $70
    ld l, c                                       ; $7662: $69
    ld l, a                                       ; $7663: $6f
    ld l, [hl]                                    ; $7664: $6e
    jr nz, @+$10                                  ; $7665: $20 $0e

    rlca                                          ; $7667: $07
    ccf                                           ; $7668: $3f
    ld [bc], a                                    ; $7669: $02
    ld c, c                                       ; $766a: $49

jr_018_766b:
    jr nz, jr_018_76e4                            ; $766b: $20 $77

    ld l, a                                       ; $766d: $6f
    ld l, [hl]                                    ; $766e: $6e
    ld h, h                                       ; $766f: $64
    ld h, l                                       ; $7670: $65
    ld [hl], d                                    ; $7671: $72
    ld l, $2e                                     ; $7672: $2e $2e
    ld l, $01                                     ; $7674: $2e $01
    ld [hl], a                                    ; $7676: $77
    ld l, b                                       ; $7677: $68
    ld l, a                                       ; $7678: $6f

jr_018_7679:
    jr nz, jr_018_76f2                            ; $7679: $20 $77

    ld l, c                                       ; $767b: $69
    ld l, h                                       ; $767c: $6c
    ld l, h                                       ; $767d: $6c
    jr nz, @+$79                                  ; $767e: $20 $77

    ld l, c                                       ; $7680: $69
    ld l, [hl]                                    ; $7681: $6e
    ccf                                           ; $7682: $3f
    inc bc                                        ; $7683: $03
    nop                                           ; $7684: $00
    ld d, h                                       ; $7685: $54
    ld l, b                                       ; $7686: $68
    ld h, l                                       ; $7687: $65
    ld [hl], d                                    ; $7688: $72
    ld h, l                                       ; $7689: $65
    daa                                           ; $768a: $27
    ld [hl], e                                    ; $768b: $73
    jr nz, jr_018_76ef                            ; $768c: $20 $61

    jr nz, jr_018_76f2                            ; $768e: $20 $62

    ld l, a                                       ; $7690: $6f
    ld l, a                                       ; $7691: $6f
    ld l, e                                       ; $7692: $6b
    ld a, [hl-]                                   ; $7693: $3a
    ld bc, $5022                                  ; $7694: $01 $22 $50
    ld [hl], d                                    ; $7697: $72
    ld l, a                                       ; $7698: $6f
    ld [hl], b                                    ; $7699: $70
    ld h, l                                       ; $769a: $65
    ld [hl], d                                    ; $769b: $72
    jr nz, @+$59                                  ; $769c: $20 $57

    ld l, a                                       ; $769e: $6f

jr_018_769f:
    ld [hl], d                                    ; $769f: $72
    ld h, h                                       ; $76a0: $64
    jr nz, jr_018_76f8                            ; $76a1: $20 $55

    ld [hl], e                                    ; $76a3: $73

jr_018_76a4:
    ld h, c                                       ; $76a4: $61
    ld h, a                                       ; $76a5: $67
    ld h, l                                       ; $76a6: $65
    ld l, $22                                     ; $76a7: $2e $22
    inc bc                                        ; $76a9: $03
    nop                                           ; $76aa: $00
    ld d, h                                       ; $76ab: $54
    ld l, b                                       ; $76ac: $68
    ld h, l                                       ; $76ad: $65
    ld [hl], d                                    ; $76ae: $72
    ld h, l                                       ; $76af: $65
    daa                                           ; $76b0: $27
    ld [hl], e                                    ; $76b1: $73

jr_018_76b2:
    jr nz, @+$63                                  ; $76b2: $20 $61

    jr nz, jr_018_7718                            ; $76b4: $20 $62

    ld l, a                                       ; $76b6: $6f

jr_018_76b7:
    ld l, a                                       ; $76b7: $6f
    ld l, e                                       ; $76b8: $6b
    ld a, [hl-]                                   ; $76b9: $3a
    ld bc, $4722                                  ; $76ba: $01 $22 $47
    ld l, a                                       ; $76bd: $6f
    ld l, h                                       ; $76be: $6c
    ld h, [hl]                                    ; $76bf: $66
    jr nz, jr_018_7714                            ; $76c0: $20 $52

    ld [hl], l                                    ; $76c2: $75
    ld l, h                                       ; $76c3: $6c
    ld h, l                                       ; $76c4: $65
    ld [hl], e                                    ; $76c5: $73
    ld l, $22                                     ; $76c6: $2e $22
    inc bc                                        ; $76c8: $03
    nop                                           ; $76c9: $00
    ld d, h                                       ; $76ca: $54
    ld l, b                                       ; $76cb: $68
    ld h, l                                       ; $76cc: $65
    ld [hl], d                                    ; $76cd: $72
    ld h, l                                       ; $76ce: $65
    daa                                           ; $76cf: $27
    ld [hl], e                                    ; $76d0: $73
    jr nz, @+$63                                  ; $76d1: $20 $61

    jr nz, jr_018_7737                            ; $76d3: $20 $62

    ld l, a                                       ; $76d5: $6f
    ld l, a                                       ; $76d6: $6f
    ld l, e                                       ; $76d7: $6b
    ld a, [hl-]                                   ; $76d8: $3a
    ld bc, $5322                                  ; $76d9: $01 $22 $53
    ld [hl], h                                    ; $76dc: $74
    ld [hl], d                                    ; $76dd: $72
    ld h, c                                       ; $76de: $61
    ld [hl], h                                    ; $76df: $74
    ld h, l                                       ; $76e0: $65
    ld h, a                                       ; $76e1: $67
    ld l, c                                       ; $76e2: $69
    ld h, e                                       ; $76e3: $63

jr_018_76e4:
    jr nz, jr_018_772d                            ; $76e4: $20 $47

    ld l, a                                       ; $76e6: $6f
    ld l, h                                       ; $76e7: $6c
    ld h, [hl]                                    ; $76e8: $66
    ld l, $22                                     ; $76e9: $2e $22
    inc bc                                        ; $76eb: $03
    nop                                           ; $76ec: $00
    ld d, h                                       ; $76ed: $54
    ld l, b                                       ; $76ee: $68

jr_018_76ef:
    ld h, l                                       ; $76ef: $65
    ld [hl], d                                    ; $76f0: $72
    ld h, l                                       ; $76f1: $65

jr_018_76f2:
    daa                                           ; $76f2: $27
    ld [hl], e                                    ; $76f3: $73
    jr nz, jr_018_7757                            ; $76f4: $20 $61

    jr nz, jr_018_775a                            ; $76f6: $20 $62

jr_018_76f8:
    ld l, a                                       ; $76f8: $6f
    ld l, a                                       ; $76f9: $6f
    ld l, e                                       ; $76fa: $6b
    ld a, [hl-]                                   ; $76fb: $3a
    ld bc, $4722                                  ; $76fc: $01 $22 $47
    ld l, a                                       ; $76ff: $6f
    ld l, h                                       ; $7700: $6c
    ld h, [hl]                                    ; $7701: $66
    jr nz, jr_018_7757                            ; $7702: $20 $53

    ld h, c                                       ; $7704: $61
    ld a, c                                       ; $7705: $79
    ld l, c                                       ; $7706: $69
    ld l, [hl]                                    ; $7707: $6e
    ld h, a                                       ; $7708: $67
    ld [hl], e                                    ; $7709: $73
    ld l, $22                                     ; $770a: $2e $22
    inc bc                                        ; $770c: $03
    nop                                           ; $770d: $00
    ld c, c                                       ; $770e: $49
    jr nz, jr_018_777c                            ; $770f: $20 $6b

    ld l, [hl]                                    ; $7711: $6e
    ld l, a                                       ; $7712: $6f
    ld [hl], a                                    ; $7713: $77

jr_018_7714:
    jr nz, jr_018_7782                            ; $7714: $20 $6c

    ld l, a                                       ; $7716: $6f
    ld [hl], a                                    ; $7717: $77

jr_018_7718:
    ld h, l                                       ; $7718: $65
    ld [hl], d                                    ; $7719: $72
    jr nz, jr_018_777f                            ; $771a: $20 $63

    ld l, h                                       ; $771c: $6c
    ld [hl], l                                    ; $771d: $75
    ld h, d                                       ; $771e: $62
    ld [hl], e                                    ; $771f: $73
    ld bc, $6168                                  ; $7720: $01 $68 $61
    halt                                          ; $7723: $76
    ld h, l                                       ; $7724: $65
    jr nz, jr_018_7793                            ; $7725: $20 $6c

    ld h, l                                       ; $7727: $65
    ld [hl], e                                    ; $7728: $73
    ld [hl], e                                    ; $7729: $73
    jr nz, jr_018_778f                            ; $772a: $20 $63

    ld l, a                                       ; $772c: $6f

jr_018_772d:
    ld l, [hl]                                    ; $772d: $6e
    ld [hl], h                                    ; $772e: $74
    ld [hl], d                                    ; $772f: $72
    ld l, a                                       ; $7730: $6f
    ld l, h                                       ; $7731: $6c
    inc l                                         ; $7732: $2c
    ld bc, $7562                                  ; $7733: $01 $62 $75
    ld [hl], h                                    ; $7736: $74

jr_018_7737:
    jr nz, jr_018_779d                            ; $7737: $20 $64

    ld h, c                                       ; $7739: $61
    ld l, [hl]                                    ; $773a: $6e
    ld h, a                                       ; $773b: $67
    ld hl, $4202                                  ; $773c: $21 $02 $42
    ld [hl], l                                    ; $773f: $75
    ld l, [hl]                                    ; $7740: $6e
    ld l, e                                       ; $7741: $6b
    ld h, l                                       ; $7742: $65
    ld [hl], d                                    ; $7743: $72
    jr nz, @+$75                                  ; $7744: $20 $73

    ld l, b                                       ; $7746: $68
    ld l, a                                       ; $7747: $6f
    ld [hl], h                                    ; $7748: $74
    ld [hl], e                                    ; $7749: $73
    jr nz, jr_018_77b0                            ; $774a: $20 $64

    ld l, a                                       ; $774c: $6f
    ld l, [hl]                                    ; $774d: $6e
    daa                                           ; $774e: $27
    ld [hl], h                                    ; $774f: $74
    ld bc, $656e                                  ; $7750: $01 $6e $65
    ld h, e                                       ; $7753: $63
    ld h, l                                       ; $7754: $65
    ld [hl], e                                    ; $7755: $73
    ld [hl], e                                    ; $7756: $73

jr_018_7757:
    ld h, c                                       ; $7757: $61
    ld [hl], d                                    ; $7758: $72
    ld l, c                                       ; $7759: $69

jr_018_775a:
    ld l, h                                       ; $775a: $6c
    ld a, c                                       ; $775b: $79
    jr nz, jr_018_77c6                            ; $775c: $20 $68

    ld h, c                                       ; $775e: $61
    halt                                          ; $775f: $76
    ld h, l                                       ; $7760: $65
    ld bc, $6f74                                  ; $7761: $01 $74 $6f
    jr nz, @+$6f                                  ; $7764: $20 $6d

    ld h, c                                       ; $7766: $61
    ld l, e                                       ; $7767: $6b
    ld h, l                                       ; $7768: $65
    jr nz, jr_018_77df                            ; $7769: $20 $74

    ld l, b                                       ; $776b: $68
    ld h, l                                       ; $776c: $65
    jr nz, jr_018_77d6                            ; $776d: $20 $67

    ld [hl], d                                    ; $776f: $72
    ld h, l                                       ; $7770: $65
    ld h, l                                       ; $7771: $65
    ld l, [hl]                                    ; $7772: $6e
    ld hl, $0003                                  ; $7773: $21 $03 $00
    ld b, a                                       ; $7776: $47
    ld l, a                                       ; $7777: $6f
    ld l, a                                       ; $7778: $6f
    ld h, h                                       ; $7779: $64
    jr nz, jr_018_77dd                            ; $777a: $20 $61

jr_018_777c:
    ld [hl], b                                    ; $777c: $70
    ld [hl], b                                    ; $777d: $70
    ld [hl], d                                    ; $777e: $72

jr_018_777f:
    ld l, a                                       ; $777f: $6f
    ld h, c                                       ; $7780: $61
    ld h, e                                       ; $7781: $63

jr_018_7782:
    ld l, b                                       ; $7782: $68
    jr nz, jr_018_77f8                            ; $7783: $20 $73

    ld l, b                                       ; $7785: $68
    ld l, a                                       ; $7786: $6f
    ld [hl], h                                    ; $7787: $74
    ld [hl], e                                    ; $7788: $73
    ld bc, $6163                                  ; $7789: $01 $63 $61
    ld l, [hl]                                    ; $778c: $6e
    jr nz, jr_018_7801                            ; $778d: $20 $72

jr_018_778f:
    ld h, l                                       ; $778f: $65
    ld h, c                                       ; $7790: $61
    ld l, h                                       ; $7791: $6c
    ld l, h                                       ; $7792: $6c

jr_018_7793:
    ld a, c                                       ; $7793: $79
    jr nz, jr_018_77fe                            ; $7794: $20 $68

    ld h, l                                       ; $7796: $65
    ld l, h                                       ; $7797: $6c
    ld [hl], b                                    ; $7798: $70
    jr nz, jr_018_7814                            ; $7799: $20 $79

    ld l, a                                       ; $779b: $6f
    ld [hl], l                                    ; $779c: $75

jr_018_779d:
    ld [hl], d                                    ; $779d: $72
    ld bc, $6373                                  ; $779e: $01 $73 $63
    ld l, a                                       ; $77a1: $6f
    ld [hl], d                                    ; $77a2: $72
    ld h, l                                       ; $77a3: $65
    ld hl, $0003                                  ; $77a4: $21 $03 $00
    ld c, c                                       ; $77a7: $49
    ld [hl], h                                    ; $77a8: $74
    daa                                           ; $77a9: $27
    ld [hl], e                                    ; $77aa: $73
    jr nz, @+$67                                  ; $77ab: $20 $65

    ld h, c                                       ; $77ad: $61
    ld [hl], e                                    ; $77ae: $73
    ld a, c                                       ; $77af: $79

jr_018_77b0:
    jr nz, jr_018_7826                            ; $77b0: $20 $74

    ld l, a                                       ; $77b2: $6f
    jr nz, jr_018_7818                            ; $77b3: $20 $63

    ld l, a                                       ; $77b5: $6f
    ld l, l                                       ; $77b6: $6d
    ld h, l                                       ; $77b7: $65
    jr nz, jr_018_782f                            ; $77b8: $20 $75

    ld [hl], b                                    ; $77ba: $70
    ld bc, $6873                                  ; $77bb: $01 $73 $68
    ld l, a                                       ; $77be: $6f
    ld [hl], d                                    ; $77bf: $72
    ld [hl], h                                    ; $77c0: $74
    jr nz, jr_018_782c                            ; $77c1: $20 $69

    ld h, [hl]                                    ; $77c3: $66
    jr nz, jr_018_783f                            ; $77c4: $20 $79

jr_018_77c6:
    ld l, a                                       ; $77c6: $6f
    ld [hl], l                                    ; $77c7: $75
    jr nz, jr_018_782e                            ; $77c8: $20 $64

    ld l, a                                       ; $77ca: $6f
    ld l, [hl]                                    ; $77cb: $6e
    daa                                           ; $77cc: $27
    ld [hl], h                                    ; $77cd: $74
    ld bc, $7375                                  ; $77ce: $01 $75 $73
    ld h, l                                       ; $77d1: $65
    jr nz, jr_018_7838                            ; $77d2: $20 $64

    ld l, c                                       ; $77d4: $69
    ld [hl], e                                    ; $77d5: $73

jr_018_77d6:
    ld [hl], h                                    ; $77d6: $74
    ld h, c                                       ; $77d7: $61
    ld l, [hl]                                    ; $77d8: $6e
    ld h, e                                       ; $77d9: $63
    ld h, l                                       ; $77da: $65
    jr nz, jr_018_7840                            ; $77db: $20 $63

jr_018_77dd:
    ld l, h                                       ; $77dd: $6c
    ld [hl], l                                    ; $77de: $75

jr_018_77df:
    ld h, d                                       ; $77df: $62
    ld [hl], e                                    ; $77e0: $73
    ld [bc], a                                    ; $77e1: $02
    ld l, c                                       ; $77e2: $69
    ld l, [hl]                                    ; $77e3: $6e
    jr nz, jr_018_7847                            ; $77e4: $20 $61

    jr nz, jr_018_7850                            ; $77e6: $20 $68

    ld h, l                                       ; $77e8: $65
    ld h, c                                       ; $77e9: $61
    ld h, h                                       ; $77ea: $64
    ld [hl], a                                    ; $77eb: $77
    ld l, c                                       ; $77ec: $69
    ld l, [hl]                                    ; $77ed: $6e
    ld h, h                                       ; $77ee: $64
    ld l, $20                                     ; $77ef: $2e $20
    ld c, c                                       ; $77f1: $49
    ld l, [hl]                                    ; $77f2: $6e
    jr nz, jr_018_7856                            ; $77f3: $20 $61

    ld bc, $6174                                  ; $77f5: $01 $74 $61

jr_018_77f8:
    ld l, c                                       ; $77f8: $69
    ld l, h                                       ; $77f9: $6c
    ld [hl], a                                    ; $77fa: $77
    ld l, c                                       ; $77fb: $69
    ld l, [hl]                                    ; $77fc: $6e
    ld h, h                                       ; $77fd: $64

jr_018_77fe:
    inc l                                         ; $77fe: $2c
    jr nz, jr_018_7876                            ; $77ff: $20 $75

jr_018_7801:
    ld [hl], e                                    ; $7801: $73
    ld h, l                                       ; $7802: $65
    jr nz, @+$75                                  ; $7803: $20 $73

    ld l, l                                       ; $7805: $6d
    ld h, c                                       ; $7806: $61
    ld l, h                                       ; $7807: $6c
    ld l, h                                       ; $7808: $6c
    ld bc, $6c63                                  ; $7809: $01 $63 $6c
    ld [hl], l                                    ; $780c: $75
    ld h, d                                       ; $780d: $62
    ld [hl], e                                    ; $780e: $73
    ld l, $2e                                     ; $780f: $2e $2e
    ld l, $4f                                     ; $7811: $2e $4f
    ld l, b                                       ; $7813: $68

jr_018_7814:
    ld hl, $5920                                  ; $7814: $21 $20 $59
    ld l, a                                       ; $7817: $6f

jr_018_7818:
    ld [hl], l                                    ; $7818: $75
    jr nz, jr_018_7886                            ; $7819: $20 $6b

    ld l, [hl]                                    ; $781b: $6e
    ld l, a                                       ; $781c: $6f
    ld [hl], a                                    ; $781d: $77
    ld hl, $0003                                  ; $781e: $21 $03 $00
    ld d, h                                       ; $7821: $54
    ld l, b                                       ; $7822: $68
    ld h, l                                       ; $7823: $65
    jr nz, jr_018_7869                            ; $7824: $20 $43

jr_018_7826:
    ld l, h                                       ; $7826: $6c
    ld [hl], l                                    ; $7827: $75
    ld h, d                                       ; $7828: $62
    jr nz, jr_018_786e                            ; $7829: $20 $43

    ld l, b                                       ; $782b: $68

jr_018_782c:
    ld h, c                                       ; $782c: $61
    ld l, l                                       ; $782d: $6d

jr_018_782e:
    ld [hl], b                                    ; $782e: $70

jr_018_782f:
    ld [hl], e                                    ; $782f: $73
    jr nz, jr_018_7893                            ; $7830: $20 $61

    ld [hl], d                                    ; $7832: $72
    ld h, l                                       ; $7833: $65
    ld bc, $6568                                  ; $7834: $01 $68 $65
    ld [hl], d                                    ; $7837: $72

jr_018_7838:
    ld h, l                                       ; $7838: $65
    jr nz, @+$6b                                  ; $7839: $20 $69

    ld l, [hl]                                    ; $783b: $6e
    jr nz, jr_018_78b2                            ; $783c: $20 $74

    ld l, b                                       ; $783e: $68

jr_018_783f:
    ld h, l                                       ; $783f: $65

jr_018_7840:
    jr nz, jr_018_78ae                            ; $7840: $20 $6c

    ld l, a                                       ; $7842: $6f
    ld [hl], l                                    ; $7843: $75
    ld l, [hl]                                    ; $7844: $6e
    ld h, a                                       ; $7845: $67
    ld h, l                                       ; $7846: $65

jr_018_7847:
    ld bc, $6f74                                  ; $7847: $01 $74 $6f
    ld h, h                                       ; $784a: $64
    ld h, c                                       ; $784b: $61
    ld a, c                                       ; $784c: $79
    ld l, $03                                     ; $784d: $2e $03
    nop                                           ; $784f: $00

jr_018_7850:
    ld c, c                                       ; $7850: $49
    jr nz, @+$79                                  ; $7851: $20 $77

    ld h, c                                       ; $7853: $61
    ld l, [hl]                                    ; $7854: $6e
    ld [hl], h                                    ; $7855: $74

jr_018_7856:
    jr nz, jr_018_78cc                            ; $7856: $20 $74

    ld l, a                                       ; $7858: $6f
    jr nz, jr_018_78bd                            ; $7859: $20 $62

    ld h, l                                       ; $785b: $65
    jr nz, jr_018_78bf                            ; $785c: $20 $61

    ld bc, $6c43                                  ; $785e: $01 $43 $6c
    ld [hl], l                                    ; $7861: $75
    ld h, d                                       ; $7862: $62
    jr nz, jr_018_78a8                            ; $7863: $20 $43

    ld l, b                                       ; $7865: $68
    ld h, c                                       ; $7866: $61
    ld l, l                                       ; $7867: $6d
    ld [hl], b                                    ; $7868: $70

jr_018_7869:
    jr nz, jr_018_78de                            ; $7869: $20 $73

    ld l, a                                       ; $786b: $6f
    jr nz, jr_018_78b7                            ; $786c: $20 $49

jr_018_786e:
    jr nz, @+$65                                  ; $786e: $20 $63

    ld h, c                                       ; $7870: $61
    ld l, [hl]                                    ; $7871: $6e
    ld bc, $6168                                  ; $7872: $01 $68 $61
    ld l, [hl]                                    ; $7875: $6e

jr_018_7876:
    ld h, a                                       ; $7876: $67
    jr nz, jr_018_78ed                            ; $7877: $20 $74

    ld l, b                                       ; $7879: $68
    ld h, l                                       ; $787a: $65
    ld [hl], d                                    ; $787b: $72
    ld h, l                                       ; $787c: $65
    jr nz, @+$76                                  ; $787d: $20 $74

    ld l, a                                       ; $787f: $6f
    ld l, a                                       ; $7880: $6f
    ld hl, $0003                                  ; $7881: $21 $03 $00
    ld c, c                                       ; $7884: $49
    ld h, [hl]                                    ; $7885: $66

jr_018_7886:
    jr nz, jr_018_7901                            ; $7886: $20 $79

    ld l, a                                       ; $7888: $6f
    ld [hl], l                                    ; $7889: $75
    daa                                           ; $788a: $27
    ld [hl], d                                    ; $788b: $72
    ld h, l                                       ; $788c: $65
    jr nz, jr_018_78f6                            ; $788d: $20 $67

    ld l, a                                       ; $788f: $6f
    ld l, c                                       ; $7890: $69
    ld l, [hl]                                    ; $7891: $6e
    ld h, a                                       ; $7892: $67

jr_018_7893:
    jr nz, jr_018_790a                            ; $7893: $20 $75

    ld [hl], b                                    ; $7895: $70
    ld bc, $6874                                  ; $7896: $01 $74 $68
    ld h, l                                       ; $7899: $65
    ld [hl], d                                    ; $789a: $72
    ld h, l                                       ; $789b: $65
    inc l                                         ; $789c: $2c
    jr nz, jr_018_7918                            ; $789d: $20 $79

    ld l, a                                       ; $789f: $6f
    ld [hl], l                                    ; $78a0: $75
    daa                                           ; $78a1: $27
    ld h, h                                       ; $78a2: $64
    jr nz, @+$64                                  ; $78a3: $20 $62

    ld h, l                                       ; $78a5: $65
    ld [hl], h                                    ; $78a6: $74
    ld [hl], h                                    ; $78a7: $74

jr_018_78a8:
    ld h, l                                       ; $78a8: $65
    ld [hl], d                                    ; $78a9: $72
    ld bc, $6e6b                                  ; $78aa: $01 $6b $6e
    ld l, a                                       ; $78ad: $6f

jr_018_78ae:
    ld [hl], a                                    ; $78ae: $77
    jr nz, jr_018_7928                            ; $78af: $20 $77

    ld l, b                                       ; $78b1: $68

jr_018_78b2:
    ld l, a                                       ; $78b2: $6f
    daa                                           ; $78b3: $27
    ld [hl], e                                    ; $78b4: $73
    jr nz, jr_018_792e                            ; $78b5: $20 $77

jr_018_78b7:
    ld l, b                                       ; $78b7: $68
    ld l, a                                       ; $78b8: $6f
    ld l, $03                                     ; $78b9: $2e $03
    nop                                           ; $78bb: $00
    ld d, h                                       ; $78bc: $54

jr_018_78bd:
    ld l, b                                       ; $78bd: $68
    ld l, a                                       ; $78be: $6f

jr_018_78bf:
    ld [hl], e                                    ; $78bf: $73
    ld h, l                                       ; $78c0: $65
    jr nz, jr_018_7924                            ; $78c1: $20 $61

    ld [hl], d                                    ; $78c3: $72
    ld h, l                                       ; $78c4: $65
    jr nz, jr_018_7928                            ; $78c5: $20 $61

    ld l, h                                       ; $78c7: $6c
    ld l, h                                       ; $78c8: $6c
    jr nz, jr_018_793f                            ; $78c9: $20 $74

    ld l, b                                       ; $78cb: $68

jr_018_78cc:
    ld h, l                                       ; $78cc: $65
    ld bc, $6c43                                  ; $78cd: $01 $43 $6c
    ld [hl], l                                    ; $78d0: $75
    ld h, d                                       ; $78d1: $62
    jr nz, @+$45                                  ; $78d2: $20 $43

    ld l, b                                       ; $78d4: $68
    ld h, c                                       ; $78d5: $61
    ld l, l                                       ; $78d6: $6d
    ld [hl], b                                    ; $78d7: $70
    ld [hl], e                                    ; $78d8: $73
    ld hl, $4920                                  ; $78d9: $21 $20 $49
    daa                                           ; $78dc: $27
    ld l, h                                       ; $78dd: $6c

jr_018_78de:
    ld l, h                                       ; $78de: $6c
    ld bc, $6574                                  ; $78df: $01 $74 $65
    ld l, h                                       ; $78e2: $6c
    ld l, h                                       ; $78e3: $6c
    jr nz, @+$7b                                  ; $78e4: $20 $79

    ld l, a                                       ; $78e6: $6f
    ld [hl], l                                    ; $78e7: $75
    jr nz, jr_018_7961                            ; $78e8: $20 $77

    ld l, b                                       ; $78ea: $68
    ld l, a                                       ; $78eb: $6f
    daa                                           ; $78ec: $27

jr_018_78ed:
    ld [hl], e                                    ; $78ed: $73
    jr nz, jr_018_7967                            ; $78ee: $20 $77

    ld l, b                                       ; $78f0: $68
    ld l, a                                       ; $78f1: $6f
    ld hl, $0003                                  ; $78f2: $21 $03 $00
    ld d, h                                       ; $78f5: $54

jr_018_78f6:
    ld l, b                                       ; $78f6: $68
    ld l, a                                       ; $78f7: $6f
    ld [hl], e                                    ; $78f8: $73
    ld h, l                                       ; $78f9: $65
    jr nz, jr_018_795d                            ; $78fa: $20 $61

    ld [hl], d                                    ; $78fc: $72
    ld h, l                                       ; $78fd: $65
    jr nz, jr_018_7961                            ; $78fe: $20 $61

    ld l, h                                       ; $7900: $6c

jr_018_7901:
    ld l, h                                       ; $7901: $6c
    jr nz, @+$76                                  ; $7902: $20 $74

    ld l, b                                       ; $7904: $68
    ld h, l                                       ; $7905: $65
    ld bc, $7865                                  ; $7906: $01 $65 $78
    dec l                                         ; $7909: $2d

jr_018_790a:
    ld b, e                                       ; $790a: $43
    ld l, h                                       ; $790b: $6c
    ld [hl], l                                    ; $790c: $75
    ld h, d                                       ; $790d: $62
    jr nz, jr_018_7953                            ; $790e: $20 $43

    ld l, b                                       ; $7910: $68
    ld h, c                                       ; $7911: $61
    ld l, l                                       ; $7912: $6d
    ld [hl], b                                    ; $7913: $70
    ld [hl], e                                    ; $7914: $73
    ld hl, $4920                                  ; $7915: $21 $20 $49

jr_018_7918:
    daa                                           ; $7918: $27
    ld l, h                                       ; $7919: $6c
    ld l, h                                       ; $791a: $6c
    ld bc, $6574                                  ; $791b: $01 $74 $65
    ld l, h                                       ; $791e: $6c
    ld l, h                                       ; $791f: $6c
    jr nz, @+$7b                                  ; $7920: $20 $79

    ld l, a                                       ; $7922: $6f
    ld [hl], l                                    ; $7923: $75

jr_018_7924:
    jr nz, jr_018_799d                            ; $7924: $20 $77

    ld l, b                                       ; $7926: $68
    ld l, a                                       ; $7927: $6f

jr_018_7928:
    daa                                           ; $7928: $27
    ld [hl], e                                    ; $7929: $73
    jr nz, @+$79                                  ; $792a: $20 $77

    ld l, b                                       ; $792c: $68
    ld l, a                                       ; $792d: $6f

jr_018_792e:
    ld hl, $0003                                  ; $792e: $21 $03 $00
    ld d, h                                       ; $7931: $54
    ld l, b                                       ; $7932: $68
    ld h, l                                       ; $7933: $65
    jr nz, jr_018_799f                            ; $7934: $20 $69

    ld l, [hl]                                    ; $7936: $6e
    ld [hl], h                                    ; $7937: $74
    ld h, l                                       ; $7938: $65
    ld l, h                                       ; $7939: $6c
    ld l, h                                       ; $793a: $6c
    ld h, l                                       ; $793b: $65
    ld h, e                                       ; $793c: $63
    ld [hl], h                                    ; $793d: $74
    ld [hl], l                                    ; $793e: $75

jr_018_793f:
    ld h, c                                       ; $793f: $61
    ld l, h                                       ; $7940: $6c
    jr nz, jr_018_79b2                            ; $7941: $20 $6f

    ld l, [hl]                                    ; $7943: $6e
    ld bc, $6874                                  ; $7944: $01 $74 $68
    ld h, l                                       ; $7947: $65
    jr nz, jr_018_79bc                            ; $7948: $20 $72

    ld l, c                                       ; $794a: $69
    ld h, a                                       ; $794b: $67
    ld l, b                                       ; $794c: $68
    ld [hl], h                                    ; $794d: $74
    jr nz, jr_018_79b9                            ; $794e: $20 $69

    ld [hl], e                                    ; $7950: $73
    jr nz, jr_018_799f                            ; $7951: $20 $4c

jr_018_7953:
    ld l, c                                       ; $7953: $69
    ld l, [hl]                                    ; $7954: $6e
    ld l, e                                       ; $7955: $6b
    ld [hl], e                                    ; $7956: $73
    ld bc, $6843                                  ; $7957: $01 $43 $68
    ld h, c                                       ; $795a: $61
    ld l, l                                       ; $795b: $6d
    ld [hl], b                                    ; $795c: $70

jr_018_795d:
    inc l                                         ; $795d: $2c
    jr nz, jr_018_796e                            ; $795e: $20 $0e

    rlca                                          ; $7960: $07

jr_018_7961:
    ld l, $02                                     ; $7961: $2e $02
    ld c, b                                       ; $7963: $48
    ld h, l                                       ; $7964: $65
    daa                                           ; $7965: $27
    ld [hl], e                                    ; $7966: $73

jr_018_7967:
    jr nz, jr_018_79dd                            ; $7967: $20 $74

    ld l, b                                       ; $7969: $68
    ld h, l                                       ; $796a: $65
    jr nz, jr_018_79cf                            ; $796b: $20 $62

    ld h, l                                       ; $796d: $65

jr_018_796e:
    ld [hl], e                                    ; $796e: $73
    ld [hl], h                                    ; $796f: $74
    jr nz, @+$71                                  ; $7970: $20 $6f

    ld h, [hl]                                    ; $7972: $66
    ld bc, $6874                                  ; $7973: $01 $74 $68
    ld h, l                                       ; $7976: $65
    jr nz, jr_018_79bc                            ; $7977: $20 $43

    ld l, h                                       ; $7979: $6c
    ld [hl], l                                    ; $797a: $75
    ld h, d                                       ; $797b: $62
    jr nz, jr_018_79c1                            ; $797c: $20 $43

    ld l, b                                       ; $797e: $68
    ld h, c                                       ; $797f: $61
    ld l, l                                       ; $7980: $6d
    ld [hl], b                                    ; $7981: $70
    ld [hl], e                                    ; $7982: $73
    ld l, $03                                     ; $7983: $2e $03
    nop                                           ; $7985: $00
    ld d, h                                       ; $7986: $54
    ld l, b                                       ; $7987: $68
    ld h, l                                       ; $7988: $65
    jr nz, jr_018_79fe                            ; $7989: $20 $73

    ld [hl], h                                    ; $798b: $74
    ld [hl], l                                    ; $798c: $75
    ld h, h                                       ; $798d: $64
    jr nz, jr_018_79fe                            ; $798e: $20 $6e

    ld h, l                                       ; $7990: $65
    ld a, b                                       ; $7991: $78
    ld [hl], h                                    ; $7992: $74
    jr nz, jr_018_7a09                            ; $7993: $20 $74

    ld l, a                                       ; $7995: $6f
    jr nz, jr_018_7a00                            ; $7996: $20 $68

    ld l, c                                       ; $7998: $69
    ld l, l                                       ; $7999: $6d
    ld bc, $7369                                  ; $799a: $01 $69 $73

jr_018_799d:
    jr nz, jr_018_79e3                            ; $799d: $20 $44

jr_018_799f:
    ld [hl], l                                    ; $799f: $75
    ld l, [hl]                                    ; $79a0: $6e
    ld h, l                                       ; $79a1: $65
    jr nz, jr_018_79e7                            ; $79a2: $20 $43

    ld l, b                                       ; $79a4: $68
    ld h, c                                       ; $79a5: $61
    ld l, l                                       ; $79a6: $6d
    ld [hl], b                                    ; $79a7: $70
    inc l                                         ; $79a8: $2c
    ld c, $06                                     ; $79a9: $0e $06
    inc l                                         ; $79ab: $2c
    ld bc, $6874                                  ; $79ac: $01 $74 $68
    ld h, l                                       ; $79af: $65
    jr nz, jr_018_7a25                            ; $79b0: $20 $73

jr_018_79b2:
    ld h, l                                       ; $79b2: $65
    ld h, e                                       ; $79b3: $63
    ld l, a                                       ; $79b4: $6f
    ld l, [hl]                                    ; $79b5: $6e
    ld h, h                                       ; $79b6: $64
    jr nz, jr_018_7a1b                            ; $79b7: $20 $62

jr_018_79b9:
    ld h, l                                       ; $79b9: $65
    ld [hl], e                                    ; $79ba: $73
    ld [hl], h                                    ; $79bb: $74

jr_018_79bc:
    ld hl, $0003                                  ; $79bc: $21 $03 $00
    ld d, h                                       ; $79bf: $54
    ld l, b                                       ; $79c0: $68

jr_018_79c1:
    ld h, l                                       ; $79c1: $65
    jr nz, jr_018_7a30                            ; $79c2: $20 $6c

    ld h, c                                       ; $79c4: $61
    ld h, h                                       ; $79c5: $64
    ld a, c                                       ; $79c6: $79
    jr nz, jr_018_7a32                            ; $79c7: $20 $69

    ld [hl], e                                    ; $79c9: $73
    jr nz, @+$52                                  ; $79ca: $20 $50

    ld h, c                                       ; $79cc: $61
    ld l, h                                       ; $79cd: $6c
    ld l, l                                       ; $79ce: $6d

jr_018_79cf:
    ld bc, $6843                                  ; $79cf: $01 $43 $68
    ld h, c                                       ; $79d2: $61
    ld l, l                                       ; $79d3: $6d
    ld [hl], b                                    ; $79d4: $70
    inc l                                         ; $79d5: $2c
    jr nz, @+$10                                  ; $79d6: $20 $0e

    dec b                                         ; $79d8: $05
    ld l, $20                                     ; $79d9: $2e $20
    ld d, e                                       ; $79db: $53
    ld l, b                                       ; $79dc: $68

jr_018_79dd:
    ld h, l                                       ; $79dd: $65
    daa                                           ; $79de: $27
    ld [hl], e                                    ; $79df: $73
    ld bc, $656e                                  ; $79e0: $01 $6e $65

jr_018_79e3:
    ld a, b                                       ; $79e3: $78
    ld [hl], h                                    ; $79e4: $74
    jr nz, jr_018_7a50                            ; $79e5: $20 $69

jr_018_79e7:
    ld l, [hl]                                    ; $79e7: $6e
    jr nz, jr_018_7a56                            ; $79e8: $20 $6c

    ld l, c                                       ; $79ea: $69
    ld l, [hl]                                    ; $79eb: $6e
    ld h, l                                       ; $79ec: $65
    ld l, $03                                     ; $79ed: $2e $03
    nop                                           ; $79ef: $00
    ld d, h                                       ; $79f0: $54
    ld l, b                                       ; $79f1: $68
    ld h, l                                       ; $79f2: $65
    jr nz, jr_018_7a61                            ; $79f3: $20 $6c

    ld l, c                                       ; $79f5: $69
    ld [hl], h                                    ; $79f6: $74
    ld [hl], h                                    ; $79f7: $74
    ld l, h                                       ; $79f8: $6c
    ld h, l                                       ; $79f9: $65
    jr nz, @+$69                                  ; $79fa: $20 $67

    ld [hl], l                                    ; $79fc: $75
    ld a, c                                       ; $79fd: $79

jr_018_79fe:
    jr nz, @+$71                                  ; $79fe: $20 $6f

jr_018_7a00:
    ld l, [hl]                                    ; $7a00: $6e
    ld bc, $6874                                  ; $7a01: $01 $74 $68
    ld h, l                                       ; $7a04: $65
    jr nz, jr_018_7a73                            ; $7a05: $20 $6c

    ld h, l                                       ; $7a07: $65
    ld h, [hl]                                    ; $7a08: $66

jr_018_7a09:
    ld [hl], h                                    ; $7a09: $74
    jr nz, jr_018_7a75                            ; $7a0a: $20 $69

    ld [hl], e                                    ; $7a0c: $73
    jr nz, jr_018_7a1d                            ; $7a0d: $20 $0e

    inc b                                         ; $7a0f: $04
    ld l, $01                                     ; $7a10: $2e $01
    ld b, c                                       ; $7a12: $41
    ld [hl], e                                    ; $7a13: $73
    jr nz, @+$4f                                  ; $7a14: $20 $4d

    ld h, c                                       ; $7a16: $61
    ld [hl], d                                    ; $7a17: $72
    ld l, c                                       ; $7a18: $69
    ld l, a                                       ; $7a19: $6f
    ld l, [hl]                                    ; $7a1a: $6e

jr_018_7a1b:
    jr nz, jr_018_7a60                            ; $7a1b: $20 $43

jr_018_7a1d:
    ld l, b                                       ; $7a1d: $68
    ld h, c                                       ; $7a1e: $61
    ld l, l                                       ; $7a1f: $6d
    ld [hl], b                                    ; $7a20: $70
    inc l                                         ; $7a21: $2c
    ld [bc], a                                    ; $7a22: $02
    ld l, b                                       ; $7a23: $68
    ld h, l                                       ; $7a24: $65

jr_018_7a25:
    daa                                           ; $7a25: $27
    ld [hl], e                                    ; $7a26: $73
    jr nz, jr_018_7a8a                            ; $7a27: $20 $61

    ld [hl], h                                    ; $7a29: $74
    jr nz, jr_018_7aa0                            ; $7a2a: $20 $74

    ld l, b                                       ; $7a2c: $68
    ld h, l                                       ; $7a2d: $65
    jr nz, jr_018_7a92                            ; $7a2e: $20 $62

jr_018_7a30:
    ld l, a                                       ; $7a30: $6f
    ld [hl], h                                    ; $7a31: $74

jr_018_7a32:
    ld [hl], h                                    ; $7a32: $74
    ld l, a                                       ; $7a33: $6f
    ld l, l                                       ; $7a34: $6d
    ld bc, $666f                                  ; $7a35: $01 $6f $66
    jr nz, @+$76                                  ; $7a38: $20 $74

    ld l, b                                       ; $7a3a: $68
    ld h, l                                       ; $7a3b: $65
    jr nz, jr_018_7aaa                            ; $7a3c: $20 $6c

    ld h, c                                       ; $7a3e: $61
    ld h, h                                       ; $7a3f: $64
    ld h, h                                       ; $7a40: $64
    ld h, l                                       ; $7a41: $65
    ld [hl], d                                    ; $7a42: $72
    ld l, $03                                     ; $7a43: $2e $03
    nop                                           ; $7a45: $00
    ld b, h                                       ; $7a46: $44
    ld l, c                                       ; $7a47: $69
    ld h, h                                       ; $7a48: $64
    jr nz, jr_018_7ac4                            ; $7a49: $20 $79

    ld l, a                                       ; $7a4b: $6f
    ld [hl], l                                    ; $7a4c: $75
    jr nz, @+$69                                  ; $7a4d: $20 $67

    ld h, l                                       ; $7a4f: $65

jr_018_7a50:
    ld [hl], h                                    ; $7a50: $74
    jr nz, jr_018_7ac7                            ; $7a51: $20 $74

    ld l, b                                       ; $7a53: $68
    ld h, c                                       ; $7a54: $61
    ld [hl], h                                    ; $7a55: $74

jr_018_7a56:
    ccf                                           ; $7a56: $3f
    nop                                           ; $7a57: $00
    ld e, c                                       ; $7a58: $59
    ld l, a                                       ; $7a59: $6f
    ld [hl], l                                    ; $7a5a: $75
    jr nz, @+$66                                  ; $7a5b: $20 $64

    ld l, c                                       ; $7a5d: $69
    ld h, h                                       ; $7a5e: $64
    ld l, [hl]                                    ; $7a5f: $6e

jr_018_7a60:
    daa                                           ; $7a60: $27

jr_018_7a61:
    ld [hl], h                                    ; $7a61: $74
    jr nz, jr_018_7acb                            ; $7a62: $20 $67

    ld h, l                                       ; $7a64: $65
    ld [hl], h                                    ; $7a65: $74
    jr nz, jr_018_7ad1                            ; $7a66: $20 $69

    ld [hl], h                                    ; $7a68: $74
    ccf                                           ; $7a69: $3f
    ld bc, $4b4f                                  ; $7a6a: $01 $4f $4b
    inc l                                         ; $7a6d: $2c
    jr nz, jr_018_7adc                            ; $7a6e: $20 $6c

    ld l, c                                       ; $7a70: $69
    ld [hl], e                                    ; $7a71: $73
    ld [hl], h                                    ; $7a72: $74

jr_018_7a73:
    ld h, l                                       ; $7a73: $65
    ld l, [hl]                                    ; $7a74: $6e

jr_018_7a75:
    jr nz, jr_018_7aec                            ; $7a75: $20 $75

    ld [hl], b                                    ; $7a77: $70
    ld l, $2e                                     ; $7a78: $2e $2e
    ld l, $03                                     ; $7a7a: $2e $03
    nop                                           ; $7a7c: $00
    ld c, c                                       ; $7a7d: $49
    ld h, [hl]                                    ; $7a7e: $66
    jr nz, jr_018_7afa                            ; $7a7f: $20 $79

    ld l, a                                       ; $7a81: $6f
    ld [hl], l                                    ; $7a82: $75
    jr nz, jr_018_7afc                            ; $7a83: $20 $77

    ld h, c                                       ; $7a85: $61
    ld l, [hl]                                    ; $7a86: $6e
    ld [hl], h                                    ; $7a87: $74
    jr nz, jr_018_7afe                            ; $7a88: $20 $74

jr_018_7a8a:
    ld l, a                                       ; $7a8a: $6f
    jr nz, jr_018_7aef                            ; $7a8b: $20 $62

    ld h, l                                       ; $7a8d: $65
    ld bc, $2061                                  ; $7a8e: $01 $61 $20
    ld b, e                                       ; $7a91: $43

jr_018_7a92:
    ld l, h                                       ; $7a92: $6c
    ld [hl], l                                    ; $7a93: $75
    ld h, d                                       ; $7a94: $62
    jr nz, jr_018_7ada                            ; $7a95: $20 $43

    ld l, b                                       ; $7a97: $68
    ld h, c                                       ; $7a98: $61
    ld l, l                                       ; $7a99: $6d
    ld [hl], b                                    ; $7a9a: $70
    inc l                                         ; $7a9b: $2c
    jr nz, jr_018_7b09                            ; $7a9c: $20 $6b

    ld l, [hl]                                    ; $7a9e: $6e
    ld l, a                                       ; $7a9f: $6f

jr_018_7aa0:
    ld [hl], a                                    ; $7aa0: $77
    ld bc, $6f79                                  ; $7aa1: $01 $79 $6f
    ld [hl], l                                    ; $7aa4: $75
    ld [hl], d                                    ; $7aa5: $72
    jr nz, jr_018_7b1a                            ; $7aa6: $20 $72

    ld l, c                                       ; $7aa8: $69
    halt                                          ; $7aa9: $76

jr_018_7aaa:
    ld h, c                                       ; $7aaa: $61
    ld l, h                                       ; $7aab: $6c
    ld [hl], e                                    ; $7aac: $73
    ld hl, $0003                                  ; $7aad: $21 $03 $00
    ld b, h                                       ; $7ab0: $44
    ld l, a                                       ; $7ab1: $6f
    ld l, [hl]                                    ; $7ab2: $6e
    daa                                           ; $7ab3: $27
    ld [hl], h                                    ; $7ab4: $74
    jr nz, jr_018_7b1d                            ; $7ab5: $20 $66

    ld l, a                                       ; $7ab7: $6f
    ld [hl], d                                    ; $7ab8: $72
    ld h, a                                       ; $7ab9: $67
    ld h, l                                       ; $7aba: $65
    ld [hl], h                                    ; $7abb: $74
    jr nz, jr_018_7b32                            ; $7abc: $20 $74

    ld l, b                                       ; $7abe: $68
    ld h, l                                       ; $7abf: $65
    jr nz, jr_018_7b27                            ; $7ac0: $20 $65

    ld a, b                                       ; $7ac2: $78
    dec l                                         ; $7ac3: $2d

jr_018_7ac4:
    ld bc, $6843                                  ; $7ac4: $01 $43 $68

jr_018_7ac7:
    ld h, c                                       ; $7ac7: $61
    ld l, l                                       ; $7ac8: $6d
    ld [hl], b                                    ; $7ac9: $70
    ld [hl], e                                    ; $7aca: $73

jr_018_7acb:
    jr nz, jr_018_7b46                            ; $7acb: $20 $79

    ld l, a                                       ; $7acd: $6f
    ld [hl], l                                    ; $7ace: $75
    jr nz, jr_018_7b33                            ; $7acf: $20 $62

jr_018_7ad1:
    ld h, l                                       ; $7ad1: $65
    ld h, c                                       ; $7ad2: $61
    ld [hl], h                                    ; $7ad3: $74
    jr nz, jr_018_7b3f                            ; $7ad4: $20 $69

    ld l, [hl]                                    ; $7ad6: $6e
    ld bc, $6f79                                  ; $7ad7: $01 $79 $6f

jr_018_7ada:
    ld [hl], l                                    ; $7ada: $75
    ld [hl], d                                    ; $7adb: $72

jr_018_7adc:
    jr nz, jr_018_7b50                            ; $7adc: $20 $72

    ld l, c                                       ; $7ade: $69
    ld [hl], e                                    ; $7adf: $73
    ld h, l                                       ; $7ae0: $65
    jr nz, jr_018_7b57                            ; $7ae1: $20 $74

    ld l, a                                       ; $7ae3: $6f
    jr nz, @+$76                                  ; $7ae4: $20 $74

    ld l, b                                       ; $7ae6: $68
    ld h, l                                       ; $7ae7: $65
    jr nz, jr_018_7b5e                            ; $7ae8: $20 $74

    ld l, a                                       ; $7aea: $6f
    ld [hl], b                                    ; $7aeb: $70

jr_018_7aec:
    ld l, $03                                     ; $7aec: $2e $03
    nop                                           ; $7aee: $00

jr_018_7aef:
    ld d, h                                       ; $7aef: $54
    ld l, b                                       ; $7af0: $68
    ld h, l                                       ; $7af1: $65
    jr nz, @+$6b                                  ; $7af2: $20 $69

    ld l, [hl]                                    ; $7af4: $6e
    ld [hl], h                                    ; $7af5: $74
    ld h, l                                       ; $7af6: $65
    ld l, h                                       ; $7af7: $6c
    ld l, h                                       ; $7af8: $6c
    ld h, l                                       ; $7af9: $65

jr_018_7afa:
    ld h, e                                       ; $7afa: $63
    ld [hl], h                                    ; $7afb: $74

jr_018_7afc:
    ld [hl], l                                    ; $7afc: $75
    ld h, c                                       ; $7afd: $61

jr_018_7afe:
    ld l, h                                       ; $7afe: $6c
    jr nz, jr_018_7b70                            ; $7aff: $20 $6f

    ld l, [hl]                                    ; $7b01: $6e
    ld bc, $6874                                  ; $7b02: $01 $74 $68
    ld h, l                                       ; $7b05: $65
    jr nz, jr_018_7b7a                            ; $7b06: $20 $72

    ld l, c                                       ; $7b08: $69

jr_018_7b09:
    ld h, a                                       ; $7b09: $67
    ld l, b                                       ; $7b0a: $68
    ld [hl], h                                    ; $7b0b: $74
    daa                                           ; $7b0c: $27
    ld [hl], e                                    ; $7b0d: $73
    jr nz, jr_018_7b76                            ; $7b0e: $20 $66

    ld l, a                                       ; $7b10: $6f
    ld [hl], d                                    ; $7b11: $72
    ld l, l                                       ; $7b12: $6d
    ld h, l                                       ; $7b13: $65
    ld [hl], d                                    ; $7b14: $72
    ld bc, $694c                                  ; $7b15: $01 $4c $69
    ld l, [hl]                                    ; $7b18: $6e
    ld l, e                                       ; $7b19: $6b

jr_018_7b1a:
    ld [hl], e                                    ; $7b1a: $73
    jr nz, jr_018_7b60                            ; $7b1b: $20 $43

jr_018_7b1d:
    ld l, b                                       ; $7b1d: $68
    ld h, c                                       ; $7b1e: $61
    ld l, l                                       ; $7b1f: $6d
    ld [hl], b                                    ; $7b20: $70
    inc l                                         ; $7b21: $2c
    ld [bc], a                                    ; $7b22: $02
    ld c, $07                                     ; $7b23: $0e $07
    ld l, $01                                     ; $7b25: $2e $01

jr_018_7b27:
    ld d, h                                       ; $7b27: $54
    ld l, b                                       ; $7b28: $68
    ld h, l                                       ; $7b29: $65
    ld a, c                                       ; $7b2a: $79
    jr nz, jr_018_7ba0                            ; $7b2b: $20 $73

    ld h, c                                       ; $7b2d: $61
    ld l, c                                       ; $7b2e: $69
    ld h, h                                       ; $7b2f: $64
    jr nz, jr_018_7b9a                            ; $7b30: $20 $68

jr_018_7b32:
    ld h, l                                       ; $7b32: $65

jr_018_7b33:
    ld bc, $6177                                  ; $7b33: $01 $77 $61
    ld [hl], e                                    ; $7b36: $73
    jr nz, jr_018_7bad                            ; $7b37: $20 $74

    ld l, b                                       ; $7b39: $68
    ld h, l                                       ; $7b3a: $65
    jr nz, jr_018_7b9f                            ; $7b3b: $20 $62

    ld h, l                                       ; $7b3d: $65
    ld [hl], e                                    ; $7b3e: $73

jr_018_7b3f:
    ld [hl], h                                    ; $7b3f: $74
    ld l, $2e                                     ; $7b40: $2e $2e
    ld l, $03                                     ; $7b42: $2e $03
    nop                                           ; $7b44: $00
    ld d, h                                       ; $7b45: $54

jr_018_7b46:
    ld l, b                                       ; $7b46: $68
    ld h, l                                       ; $7b47: $65
    jr nz, @+$75                                  ; $7b48: $20 $73

    ld [hl], h                                    ; $7b4a: $74
    ld [hl], l                                    ; $7b4b: $75
    ld h, h                                       ; $7b4c: $64
    jr nz, jr_018_7bbe                            ; $7b4d: $20 $6f

    ld l, [hl]                                    ; $7b4f: $6e

jr_018_7b50:
    jr nz, jr_018_7bba                            ; $7b50: $20 $68

    ld l, c                                       ; $7b52: $69
    ld [hl], e                                    ; $7b53: $73
    ld bc, $656c                                  ; $7b54: $01 $6c $65

jr_018_7b57:
    ld h, [hl]                                    ; $7b57: $66
    ld [hl], h                                    ; $7b58: $74
    jr nz, jr_018_7bc4                            ; $7b59: $20 $69

    ld [hl], e                                    ; $7b5b: $73
    jr nz, jr_018_7bd2                            ; $7b5c: $20 $74

jr_018_7b5e:
    ld l, b                                       ; $7b5e: $68
    ld h, l                                       ; $7b5f: $65

jr_018_7b60:
    jr nz, jr_018_7bc8                            ; $7b60: $20 $66

    ld l, a                                       ; $7b62: $6f
    ld [hl], d                                    ; $7b63: $72
    ld l, l                                       ; $7b64: $6d
    ld h, l                                       ; $7b65: $65
    ld [hl], d                                    ; $7b66: $72
    ld bc, $7544                                  ; $7b67: $01 $44 $75
    ld l, [hl]                                    ; $7b6a: $6e
    ld h, l                                       ; $7b6b: $65
    jr nz, jr_018_7bb1                            ; $7b6c: $20 $43

    ld l, b                                       ; $7b6e: $68
    ld h, c                                       ; $7b6f: $61

jr_018_7b70:
    ld l, l                                       ; $7b70: $6d
    ld [hl], b                                    ; $7b71: $70
    ld l, $02                                     ; $7b72: $2e $02
    ld c, $06                                     ; $7b74: $0e $06

jr_018_7b76:
    daa                                           ; $7b76: $27
    ld [hl], e                                    ; $7b77: $73
    jr nz, jr_018_7be6                            ; $7b78: $20 $6c

jr_018_7b7a:
    ld l, a                                       ; $7b7a: $6f
    ld l, [hl]                                    ; $7b7b: $6e
    ld h, a                                       ; $7b7c: $67
    jr nz, jr_018_7be3                            ; $7b7d: $20 $64

    ld [hl], d                                    ; $7b7f: $72
    ld l, c                                       ; $7b80: $69
    halt                                          ; $7b81: $76
    ld h, l                                       ; $7b82: $65
    ld bc, $7375                                  ; $7b83: $01 $75 $73
    ld h, l                                       ; $7b86: $65
    ld h, h                                       ; $7b87: $64
    jr nz, jr_018_7bfe                            ; $7b88: $20 $74

    ld l, a                                       ; $7b8a: $6f
    jr nz, jr_018_7bef                            ; $7b8b: $20 $62

    ld h, l                                       ; $7b8d: $65
    ld bc, $6573                                  ; $7b8e: $01 $73 $65
    ld h, e                                       ; $7b91: $63
    ld l, a                                       ; $7b92: $6f
    ld l, [hl]                                    ; $7b93: $6e
    ld h, h                                       ; $7b94: $64
    jr nz, jr_018_7bf9                            ; $7b95: $20 $62

    ld h, l                                       ; $7b97: $65
    ld [hl], e                                    ; $7b98: $73
    ld [hl], h                                    ; $7b99: $74

jr_018_7b9a:
    ld l, $03                                     ; $7b9a: $2e $03
    nop                                           ; $7b9c: $00
    ld d, h                                       ; $7b9d: $54
    ld l, b                                       ; $7b9e: $68

jr_018_7b9f:
    ld h, l                                       ; $7b9f: $65

jr_018_7ba0:
    jr nz, jr_018_7c19                            ; $7ba0: $20 $77

    ld l, a                                       ; $7ba2: $6f
    ld l, l                                       ; $7ba3: $6d
    ld h, c                                       ; $7ba4: $61
    ld l, [hl]                                    ; $7ba5: $6e
    jr nz, @+$71                                  ; $7ba6: $20 $6f

    ld l, [hl]                                    ; $7ba8: $6e
    jr nz, jr_018_7c1f                            ; $7ba9: $20 $74

    ld l, b                                       ; $7bab: $68
    ld h, l                                       ; $7bac: $65

jr_018_7bad:
    ld bc, $656c                                  ; $7bad: $01 $6c $65
    ld h, [hl]                                    ; $7bb0: $66

jr_018_7bb1:
    ld [hl], h                                    ; $7bb1: $74
    jr nz, jr_018_7c1d                            ; $7bb2: $20 $69

    ld [hl], e                                    ; $7bb4: $73
    jr nz, jr_018_7c1d                            ; $7bb5: $20 $66

    ld l, a                                       ; $7bb7: $6f
    ld [hl], d                                    ; $7bb8: $72
    ld l, l                                       ; $7bb9: $6d

jr_018_7bba:
    ld h, l                                       ; $7bba: $65
    ld [hl], d                                    ; $7bbb: $72
    jr nz, jr_018_7c0e                            ; $7bbc: $20 $50

jr_018_7bbe:
    ld h, c                                       ; $7bbe: $61
    ld l, h                                       ; $7bbf: $6c
    ld l, l                                       ; $7bc0: $6d
    ld bc, $6843                                  ; $7bc1: $01 $43 $68

jr_018_7bc4:
    ld h, c                                       ; $7bc4: $61
    ld l, l                                       ; $7bc5: $6d
    ld [hl], b                                    ; $7bc6: $70
    inc l                                         ; $7bc7: $2c

jr_018_7bc8:
    jr nz, @+$10                                  ; $7bc8: $20 $0e

    dec b                                         ; $7bca: $05
    ld l, $20                                     ; $7bcb: $2e $20
    ld c, b                                       ; $7bcd: $48
    ld h, l                                       ; $7bce: $65
    ld [hl], d                                    ; $7bcf: $72
    ld [bc], a                                    ; $7bd0: $02
    ld [hl], e                                    ; $7bd1: $73

jr_018_7bd2:
    ld [hl], h                                    ; $7bd2: $74
    ld h, l                                       ; $7bd3: $65
    ld h, c                                       ; $7bd4: $61
    ld h, h                                       ; $7bd5: $64
    ld a, c                                       ; $7bd6: $79
    jr nz, jr_018_7c49                            ; $7bd7: $20 $70

    ld l, h                                       ; $7bd9: $6c
    ld h, c                                       ; $7bda: $61
    ld a, c                                       ; $7bdb: $79
    jr nz, jr_018_7c46                            ; $7bdc: $20 $68

    ld h, c                                       ; $7bde: $61
    ld h, h                                       ; $7bdf: $64
    ld bc, $6568                                  ; $7be0: $01 $68 $65

jr_018_7be3:
    ld [hl], d                                    ; $7be3: $72
    jr nz, @+$63                                  ; $7be4: $20 $61

jr_018_7be6:
    ld [hl], h                                    ; $7be6: $74
    jr nz, jr_018_7c1c                            ; $7be7: $20 $33

    ld [hl], d                                    ; $7be9: $72
    ld h, h                                       ; $7bea: $64
    inc l                                         ; $7beb: $2c
    jr nz, jr_018_7c63                            ; $7bec: $20 $75

    ld l, [hl]                                    ; $7bee: $6e

jr_018_7bef:
    ld [hl], h                                    ; $7bef: $74
    ld l, c                                       ; $7bf0: $69
    ld l, h                                       ; $7bf1: $6c
    ld bc, $2007                                  ; $7bf2: $01 $07 $20
    ld [hl], e                                    ; $7bf5: $73
    ld l, b                                       ; $7bf6: $68
    ld l, a                                       ; $7bf7: $6f
    ld [hl], a                                    ; $7bf8: $77

jr_018_7bf9:
    ld h, l                                       ; $7bf9: $65
    ld h, h                                       ; $7bfa: $64
    jr nz, jr_018_7c72                            ; $7bfb: $20 $75

    ld [hl], b                                    ; $7bfd: $70

jr_018_7bfe:
    ld hl, $0003                                  ; $7bfe: $21 $03 $00
    ld d, h                                       ; $7c01: $54
    ld l, b                                       ; $7c02: $68
    ld h, l                                       ; $7c03: $65
    jr nz, jr_018_7c72                            ; $7c04: $20 $6c

    ld l, c                                       ; $7c06: $69
    ld [hl], h                                    ; $7c07: $74
    ld [hl], h                                    ; $7c08: $74
    ld l, h                                       ; $7c09: $6c
    ld h, l                                       ; $7c0a: $65
    jr nz, jr_018_7c74                            ; $7c0b: $20 $67

    ld [hl], l                                    ; $7c0d: $75

jr_018_7c0e:
    ld a, c                                       ; $7c0e: $79
    jr nz, @+$6b                                  ; $7c0f: $20 $69

    ld [hl], e                                    ; $7c11: $73
    ld bc, $6874                                  ; $7c12: $01 $74 $68
    ld h, l                                       ; $7c15: $65
    jr nz, jr_018_7c7e                            ; $7c16: $20 $66

    ld l, a                                       ; $7c18: $6f

jr_018_7c19:
    ld [hl], d                                    ; $7c19: $72
    ld l, l                                       ; $7c1a: $6d
    ld h, l                                       ; $7c1b: $65

jr_018_7c1c:
    ld [hl], d                                    ; $7c1c: $72

jr_018_7c1d:
    jr nz, jr_018_7c6c                            ; $7c1d: $20 $4d

jr_018_7c1f:
    ld h, c                                       ; $7c1f: $61
    ld [hl], d                                    ; $7c20: $72
    ld l, c                                       ; $7c21: $69
    ld l, a                                       ; $7c22: $6f
    ld l, [hl]                                    ; $7c23: $6e
    ld bc, $6843                                  ; $7c24: $01 $43 $68
    ld h, c                                       ; $7c27: $61
    ld l, l                                       ; $7c28: $6d
    ld [hl], b                                    ; $7c29: $70
    ld l, $20                                     ; $7c2a: $2e $20
    ld c, $04                                     ; $7c2c: $0e $04
    jr nz, jr_018_7c98                            ; $7c2e: $20 $68

    ld h, c                                       ; $7c30: $61
    ld [hl], e                                    ; $7c31: $73
    ld [bc], a                                    ; $7c32: $02
    ld h, d                                       ; $7c33: $62
    ld h, l                                       ; $7c34: $65
    ld h, l                                       ; $7c35: $65
    ld l, [hl]                                    ; $7c36: $6e
    jr nz, jr_018_7cb0                            ; $7c37: $20 $77

    ld l, a                                       ; $7c39: $6f
    ld [hl], d                                    ; $7c3a: $72
    ld l, e                                       ; $7c3b: $6b
    ld l, c                                       ; $7c3c: $69
    ld l, [hl]                                    ; $7c3d: $6e
    ld h, a                                       ; $7c3e: $67
    jr nz, jr_018_7cb0                            ; $7c3f: $20 $6f

    ld l, [hl]                                    ; $7c41: $6e
    jr nz, jr_018_7cac                            ; $7c42: $20 $68

    ld l, c                                       ; $7c44: $69
    ld [hl], e                                    ; $7c45: $73

jr_018_7c46:
    ld bc, $7570                                  ; $7c46: $01 $70 $75

jr_018_7c49:
    ld [hl], h                                    ; $7c49: $74
    ld [hl], h                                    ; $7c4a: $74
    ld l, c                                       ; $7c4b: $69
    ld l, [hl]                                    ; $7c4c: $6e
    ld h, a                                       ; $7c4d: $67
    inc l                                         ; $7c4e: $2c
    jr nz, jr_018_7cb9                            ; $7c4f: $20 $68

    ld l, a                                       ; $7c51: $6f
    ld [hl], b                                    ; $7c52: $70
    ld l, c                                       ; $7c53: $69
    ld l, [hl]                                    ; $7c54: $6e
    ld h, a                                       ; $7c55: $67
    jr nz, jr_018_7ccc                            ; $7c56: $20 $74

    ld l, a                                       ; $7c58: $6f
    ld bc, $6572                                  ; $7c59: $01 $72 $65
    ld [hl], h                                    ; $7c5c: $74
    ld h, c                                       ; $7c5d: $61
    ld l, e                                       ; $7c5e: $6b
    ld h, l                                       ; $7c5f: $65
    jr nz, jr_018_7cd6                            ; $7c60: $20 $74

    ld l, b                                       ; $7c62: $68

jr_018_7c63:
    ld h, l                                       ; $7c63: $65
    jr nz, jr_018_7cda                            ; $7c64: $20 $74

    ld l, c                                       ; $7c66: $69
    ld [hl], h                                    ; $7c67: $74
    ld l, h                                       ; $7c68: $6c
    ld h, l                                       ; $7c69: $65
    ld l, $03                                     ; $7c6a: $2e $03

jr_018_7c6c:
    nop                                           ; $7c6c: $00
    ld c, c                                       ; $7c6d: $49
    daa                                           ; $7c6e: $27
    ld l, l                                       ; $7c6f: $6d
    jr nz, jr_018_7ce6                            ; $7c70: $20 $74

jr_018_7c72:
    ld l, b                                       ; $7c72: $68
    ld h, l                                       ; $7c73: $65

jr_018_7c74:
    jr nz, jr_018_7cb9                            ; $7c74: $20 $43

    ld l, h                                       ; $7c76: $6c
    ld [hl], l                                    ; $7c77: $75
    ld h, d                                       ; $7c78: $62
    jr nz, jr_018_7cbe                            ; $7c79: $20 $43

    ld l, b                                       ; $7c7b: $68
    ld h, c                                       ; $7c7c: $61
    ld l, l                                       ; $7c7d: $6d

jr_018_7c7e:
    ld [hl], b                                    ; $7c7e: $70
    ld bc, $6568                                  ; $7c7f: $01 $68 $65
    ld [hl], d                                    ; $7c82: $72
    ld h, l                                       ; $7c83: $65
    jr nz, jr_018_7ce7                            ; $7c84: $20 $61

    ld [hl], h                                    ; $7c86: $74
    jr nz, jr_018_7cd6                            ; $7c87: $20 $4d

    ld h, c                                       ; $7c89: $61
    ld [hl], d                                    ; $7c8a: $72
    ld l, c                                       ; $7c8b: $69
    ld l, a                                       ; $7c8c: $6f
    ld l, [hl]                                    ; $7c8d: $6e
    jr nz, @+$45                                  ; $7c8e: $20 $43

    ld l, h                                       ; $7c90: $6c
    ld [hl], l                                    ; $7c91: $75
    ld h, d                                       ; $7c92: $62
    ld hl, $4102                                  ; $7c93: $21 $02 $41
    ld [hl], d                                    ; $7c96: $72
    ld h, l                                       ; $7c97: $65

jr_018_7c98:
    jr nz, jr_018_7d13                            ; $7c98: $20 $79

    ld l, a                                       ; $7c9a: $6f
    ld [hl], l                                    ; $7c9b: $75
    jr nz, jr_018_7d12                            ; $7c9c: $20 $74

    ld l, b                                       ; $7c9e: $68
    ld h, c                                       ; $7c9f: $61
    ld [hl], h                                    ; $7ca0: $74
    jr nz, @+$70                                  ; $7ca1: $20 $6e

    ld h, l                                       ; $7ca3: $65
    ld [hl], a                                    ; $7ca4: $77
    ld h, d                                       ; $7ca5: $62
    ld l, c                                       ; $7ca6: $69
    ld h, l                                       ; $7ca7: $65
    ld bc, $6f67                                  ; $7ca8: $01 $67 $6f
    ld l, h                                       ; $7cab: $6c

jr_018_7cac:
    ld h, [hl]                                    ; $7cac: $66
    ld h, l                                       ; $7cad: $65
    ld [hl], d                                    ; $7cae: $72
    inc l                                         ; $7caf: $2c

jr_018_7cb0:
    jr nz, jr_018_7cb9                            ; $7cb0: $20 $07

    ccf                                           ; $7cb2: $3f
    nop                                           ; $7cb3: $00
    ld b, a                                       ; $7cb4: $47
    ld [hl], l                                    ; $7cb5: $75
    ld h, l                                       ; $7cb6: $65
    ld [hl], e                                    ; $7cb7: $73
    ld [hl], e                                    ; $7cb8: $73

jr_018_7cb9:
    jr nz, jr_018_7d04                            ; $7cb9: $20 $49

    jr nz, jr_018_7d34                            ; $7cbb: $20 $77

    ld h, c                                       ; $7cbd: $61

jr_018_7cbe:
    ld [hl], e                                    ; $7cbe: $73
    jr nz, @+$79                                  ; $7cbf: $20 $77

    ld [hl], d                                    ; $7cc1: $72
    ld l, a                                       ; $7cc2: $6f
    ld l, [hl]                                    ; $7cc3: $6e
    ld h, a                                       ; $7cc4: $67
    ld l, $03                                     ; $7cc5: $2e $03
    nop                                           ; $7cc7: $00
    ld b, l                                       ; $7cc8: $45
    ld a, b                                       ; $7cc9: $78
    ld [hl], b                                    ; $7cca: $70
    ld h, l                                       ; $7ccb: $65

jr_018_7ccc:
    ld [hl], d                                    ; $7ccc: $72
    ld l, c                                       ; $7ccd: $69
    ld h, l                                       ; $7cce: $65
    ld l, [hl]                                    ; $7ccf: $6e
    ld h, e                                       ; $7cd0: $63
    ld h, l                                       ; $7cd1: $65
    jr nz, jr_018_7d4b                            ; $7cd2: $20 $77

    ld l, c                                       ; $7cd4: $69
    ld l, [hl]                                    ; $7cd5: $6e

jr_018_7cd6:
    ld [hl], e                                    ; $7cd6: $73
    ld bc, $6f54                                  ; $7cd7: $01 $54 $6f

jr_018_7cda:
    ld [hl], l                                    ; $7cda: $75
    ld [hl], d                                    ; $7cdb: $72
    ld l, [hl]                                    ; $7cdc: $6e
    ld h, c                                       ; $7cdd: $61
    ld l, l                                       ; $7cde: $6d
    ld h, l                                       ; $7cdf: $65
    ld l, [hl]                                    ; $7ce0: $6e
    ld [hl], h                                    ; $7ce1: $74
    ld [hl], e                                    ; $7ce2: $73
    ld hl, $4d02                                  ; $7ce3: $21 $02 $4d

jr_018_7ce6:
    ld h, c                                       ; $7ce6: $61

jr_018_7ce7:
    ld a, c                                       ; $7ce7: $79
    ld h, d                                       ; $7ce8: $62
    ld h, l                                       ; $7ce9: $65
    jr nz, @+$4b                                  ; $7cea: $20 $49

    jr nz, jr_018_7d51                            ; $7cec: $20 $63

    ld l, a                                       ; $7cee: $6f
    ld [hl], l                                    ; $7cef: $75
    ld l, h                                       ; $7cf0: $6c
    ld h, h                                       ; $7cf1: $64
    jr nz, jr_018_7d60                            ; $7cf2: $20 $6c

    ld h, l                                       ; $7cf4: $65
    ld l, [hl]                                    ; $7cf5: $6e
    ld h, h                                       ; $7cf6: $64
    ld bc, $6f79                                  ; $7cf7: $01 $79 $6f
    ld [hl], l                                    ; $7cfa: $75
    jr nz, jr_018_7d70                            ; $7cfb: $20 $73

    ld l, a                                       ; $7cfd: $6f
    ld l, l                                       ; $7cfe: $6d
    ld h, l                                       ; $7cff: $65
    ld hl, $213f                                  ; $7d00: $21 $3f $21
    nop                                           ; $7d03: $00

jr_018_7d04:
    push af                                       ; $7d04: $f5
    ld a, $00                                     ; $7d05: $3e $00
    call Call_018_7d14                            ; $7d07: $cd $14 $7d
    pop af                                        ; $7d0a: $f1
    ret                                           ; $7d0b: $c9


    push af                                       ; $7d0c: $f5
    ld a, $01                                     ; $7d0d: $3e $01
    call Call_018_7d14                            ; $7d0f: $cd $14 $7d

jr_018_7d12:
    pop af                                        ; $7d12: $f1

jr_018_7d13:
    ret                                           ; $7d13: $c9


Call_018_7d14:
    push bc                                       ; $7d14: $c5
    push de                                       ; $7d15: $d5
    push hl                                       ; $7d16: $e5
    ld hl, $4004                                  ; $7d17: $21 $04 $40
    sla e                                         ; $7d1a: $cb $23
    rl d                                          ; $7d1c: $cb $12
    add hl, de                                    ; $7d1e: $19
    ld e, [hl]                                    ; $7d1f: $5e
    inc hl                                        ; $7d20: $23
    ld d, [hl]                                    ; $7d21: $56
    ld hl, $4404                                  ; $7d22: $21 $04 $44
    add hl, de                                    ; $7d25: $19
    or a                                          ; $7d26: $b7
    jr nz, jr_018_7d31                            ; $7d27: $20 $08

    ld de, $c600                                  ; $7d29: $11 $00 $c6
    ld bc, $0180                                  ; $7d2c: $01 $80 $01
    jr jr_018_7d37                                ; $7d2f: $18 $06

jr_018_7d31:
    ld de, $d880                                  ; $7d31: $11 $80 $d8

jr_018_7d34:
    ld bc, $0020                                  ; $7d34: $01 $20 $00

jr_018_7d37:
    call MemCopy                            ; $7d37: $cd $d3 $03
    pop hl                                        ; $7d3a: $e1
    pop de                                        ; $7d3b: $d1
    pop bc                                        ; $7d3c: $c1
    ret                                           ; $7d3d: $c9


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

jr_018_7d4b:
    rst $38                                       ; $7d4b: $ff
    rst $38                                       ; $7d4c: $ff
    rst $38                                       ; $7d4d: $ff
    rst $38                                       ; $7d4e: $ff
    rst $38                                       ; $7d4f: $ff
    rst $38                                       ; $7d50: $ff

jr_018_7d51:
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

jr_018_7d60:
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

jr_018_7d70:
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
