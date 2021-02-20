; Disassembly of "mgolf.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $048", ROMX[$4000], BANK[$48]

    ld d, e                                       ; $4000: $53
    ld b, b                                       ; $4001: $40
    add c                                         ; $4002: $81
    ld c, d                                       ; $4003: $4a
    jp Jump_000_274a                              ; $4004: $c3 $4a $27


    ld c, d                                       ; $4007: $4a
    ld [hl], b                                    ; $4008: $70
    ld c, l                                       ; $4009: $4d
    ld b, d                                       ; $400a: $42
    ld e, [hl]                                    ; $400b: $5e
    nop                                           ; $400c: $00
    ld l, h                                       ; $400d: $6c
    ld bc, $0101                                  ; $400e: $01 $01 $01
    ld b, b                                       ; $4011: $40
    ld b, c                                       ; $4012: $41
    ld b, d                                       ; $4013: $42
    ld b, e                                       ; $4014: $43
    ld b, h                                       ; $4015: $44
    ld b, l                                       ; $4016: $45
    ld b, [hl]                                    ; $4017: $46
    nop                                           ; $4018: $00
    ld bc, $0103                                  ; $4019: $01 $03 $01
    ld d, b                                       ; $401c: $50
    ld d, c                                       ; $401d: $51
    ld d, d                                       ; $401e: $52
    ld d, e                                       ; $401f: $53
    ld d, h                                       ; $4020: $54
    ld d, l                                       ; $4021: $55
    ld d, [hl]                                    ; $4022: $56
    ld d, a                                       ; $4023: $57
    ld e, b                                       ; $4024: $58
    ld e, c                                       ; $4025: $59
    ld e, d                                       ; $4026: $5a
    ld e, e                                       ; $4027: $5b
    nop                                           ; $4028: $00
    ld bc, $0101                                  ; $4029: $01 $01 $01
    ld h, b                                       ; $402c: $60
    ld h, c                                       ; $402d: $61
    ld h, d                                       ; $402e: $62
    ld h, e                                       ; $402f: $63
    ld h, h                                       ; $4030: $64
    ld h, l                                       ; $4031: $65
    ld h, [hl]                                    ; $4032: $66
    ld h, a                                       ; $4033: $67
    ld l, b                                       ; $4034: $68
    ld l, c                                       ; $4035: $69
    ld l, d                                       ; $4036: $6a
    ld l, e                                       ; $4037: $6b
    nop                                           ; $4038: $00
    ld bc, $0103                                  ; $4039: $01 $03 $01
    ld [hl], b                                    ; $403c: $70
    ld [hl], c                                    ; $403d: $71
    ld [hl], d                                    ; $403e: $72
    ld [hl], e                                    ; $403f: $73
    ld [hl], h                                    ; $4040: $74
    ld [hl], l                                    ; $4041: $75
    halt                                          ; $4042: $76
    ld [hl], a                                    ; $4043: $77
    ld a, b                                       ; $4044: $78
    ld a, c                                       ; $4045: $79
    ld a, d                                       ; $4046: $7a
    ld a, e                                       ; $4047: $7b
    nop                                           ; $4048: $00
    ld [$0110], sp                                ; $4049: $08 $10 $01
    cp l                                          ; $404c: $bd
    cp d                                          ; $404d: $ba
    or c                                          ; $404e: $b1
    jr nz, @+$62                                  ; $404f: $20 $60

    jr nc, jr_048_4053                            ; $4051: $30 $00

Call_048_4053:
jr_048_4053:
    push bc                                       ; $4053: $c5
    push de                                       ; $4054: $d5
    push hl                                       ; $4055: $e5
    ld h, a                                       ; $4056: $67
    ldh a, [$96]                                  ; $4057: $f0 $96
    push af                                       ; $4059: $f5
    push hl                                       ; $405a: $e5
    ld c, $10                                     ; $405b: $0e $10
    call Call_000_25a1                            ; $405d: $cd $a1 $25
    call Call_000_2625                            ; $4060: $cd $25 $26
    call Call_000_23b6                            ; $4063: $cd $b6 $23
    rst $18                                       ; $4066: $df
    nop                                           ; $4067: $00
    dec b                                         ; $4068: $05
    rst $18                                       ; $4069: $df
    ld a, [bc]                                    ; $406a: $0a
    ld bc, $1adf                                  ; $406b: $01 $df $1a
    inc bc                                        ; $406e: $03
    call Call_000_0341                            ; $406f: $cd $41 $03
    call Call_000_2683                            ; $4072: $cd $83 $26
    xor a                                         ; $4075: $af
    ldh [$8a], a                                  ; $4076: $e0 $8a
    ldh [$8b], a                                  ; $4078: $e0 $8b
    pop hl                                        ; $407a: $e1
    push hl                                       ; $407b: $e5
    call Call_048_4362                            ; $407c: $cd $62 $43
    call Call_048_4639                            ; $407f: $cd $39 $46
    pop hl                                        ; $4082: $e1
    ld a, h                                       ; $4083: $7c
    cp $00                                        ; $4084: $fe $00
    jr nz, jr_048_40af                            ; $4086: $20 $27

    call Call_048_458c                            ; $4088: $cd $8c $45
    ld a, $0e                                     ; $408b: $3e $0e
    ld hl, $42f7                                  ; $408d: $21 $f7 $42
    call Call_000_23e8                            ; $4090: $cd $e8 $23
    ld hl, $c800                                  ; $4093: $21 $00 $c8
    ld a, l                                       ; $4096: $7d
    add $34                                       ; $4097: $c6 $34
    ld l, a                                       ; $4099: $6f
    ld a, h                                       ; $409a: $7c
    adc $00                                       ; $409b: $ce $00
    ld h, a                                       ; $409d: $67
    ld a, [hl]                                    ; $409e: $7e
    cp $09                                        ; $409f: $fe $09
    jr z, jr_048_40a9                             ; $40a1: $28 $06

    call Call_048_4696                            ; $40a3: $cd $96 $46
    jp Jump_048_42b9                              ; $40a6: $c3 $b9 $42


jr_048_40a9:
    call Call_048_480d                            ; $40a9: $cd $0d $48
    jp Jump_048_42b9                              ; $40ac: $c3 $b9 $42


jr_048_40af:
    call Call_048_460e                            ; $40af: $cd $0e $46
    pop af                                        ; $40b2: $f1
    ldh [$96], a                                  ; $40b3: $e0 $96
    ldh [rSVBK], a                                ; $40b5: $e0 $70
    pop hl                                        ; $40b7: $e1
    pop de                                        ; $40b8: $d1
    ld b, h                                       ; $40b9: $44
    ldh a, [$96]                                  ; $40ba: $f0 $96
    push af                                       ; $40bc: $f5
    push hl                                       ; $40bd: $e5
    push de                                       ; $40be: $d5
    ld a, b                                       ; $40bf: $78
    call Call_048_4c7d                            ; $40c0: $cd $7d $4c
    ld a, $03                                     ; $40c3: $3e $03
    call Call_048_4c7d                            ; $40c5: $cd $7d $4c
    ld a, $06                                     ; $40c8: $3e $06
    ldh [$96], a                                  ; $40ca: $e0 $96
    ldh [rSVBK], a                                ; $40cc: $e0 $70
    ld hl, $c800                                  ; $40ce: $21 $00 $c8
    ld a, l                                       ; $40d1: $7d
    add $12                                       ; $40d2: $c6 $12
    ld l, a                                       ; $40d4: $6f
    ld a, h                                       ; $40d5: $7c
    adc $00                                       ; $40d6: $ce $00
    ld h, a                                       ; $40d8: $67
    ld a, [hl]                                    ; $40d9: $7e
    cp $63                                        ; $40da: $fe $63
    jr z, jr_048_40e5                             ; $40dc: $28 $07

    ld a, $02                                     ; $40de: $3e $02
    call Call_048_4c7d                            ; $40e0: $cd $7d $4c
    jr jr_048_40ea                                ; $40e3: $18 $05

jr_048_40e5:
    ld a, $05                                     ; $40e5: $3e $05
    call Call_048_4c7d                            ; $40e7: $cd $7d $4c

jr_048_40ea:
    rst $18                                       ; $40ea: $df
    inc h                                         ; $40eb: $24
    inc bc                                        ; $40ec: $03
    pop de                                        ; $40ed: $d1
    push de                                       ; $40ee: $d5
    ld a, $06                                     ; $40ef: $3e $06
    ldh [$96], a                                  ; $40f1: $e0 $96
    ldh [rSVBK], a                                ; $40f3: $e0 $70
    ld hl, $d630                                  ; $40f5: $21 $30 $d6
    ld a, e                                       ; $40f8: $7b
    ld [hl+], a                                   ; $40f9: $22
    ld [hl], d                                    ; $40fa: $72
    inc hl                                        ; $40fb: $23
    xor a                                         ; $40fc: $af
    ld [hl+], a                                   ; $40fd: $22
    ld [hl+], a                                   ; $40fe: $22
    ld a, $1c                                     ; $40ff: $3e $1c
    ld [hl+], a                                   ; $4101: $22
    ld a, $6c                                     ; $4102: $3e $6c
    ld [hl+], a                                   ; $4104: $22
    ld a, $ca                                     ; $4105: $3e $ca
    ld [hl+], a                                   ; $4107: $22
    ld a, $08                                     ; $4108: $3e $08
    ld [hl+], a                                   ; $410a: $22
    xor a                                         ; $410b: $af
    ld [hl+], a                                   ; $410c: $22
    ld [hl+], a                                   ; $410d: $22
    ld [hl], a                                    ; $410e: $77
    ld de, $0000                                  ; $410f: $11 $00 $00
    rst $18                                       ; $4112: $df
    ld a, [hl-]                                   ; $4113: $3a
    ld [bc], a                                    ; $4114: $02
    ld d, h                                       ; $4115: $54
    ld e, l                                       ; $4116: $5d
    ld hl, $d63c                                  ; $4117: $21 $3c $d6
    ld a, e                                       ; $411a: $7b
    ld [hl+], a                                   ; $411b: $22
    ld [hl], d                                    ; $411c: $72
    ld hl, $d642                                  ; $411d: $21 $42 $d6
    ld a, e                                       ; $4120: $7b
    ld [hl+], a                                   ; $4121: $22
    ld [hl], d                                    ; $4122: $72
    ld hl, $d63e                                  ; $4123: $21 $3e $d6
    ld a, $68                                     ; $4126: $3e $68
    ld [hl+], a                                   ; $4128: $22
    ld a, $84                                     ; $4129: $3e $84
    ld [hl+], a                                   ; $412b: $22
    ld a, $ca                                     ; $412c: $3e $ca
    ld [hl+], a                                   ; $412e: $22
    ld a, $08                                     ; $412f: $3e $08
    ld [hl+], a                                   ; $4131: $22
    xor a                                         ; $4132: $af
    ld [$d63b], a                                 ; $4133: $ea $3b $d6
    ld a, $01                                     ; $4136: $3e $01
    ldh [$96], a                                  ; $4138: $e0 $96
    ldh [rSVBK], a                                ; $413a: $e0 $70
    ld hl, $d000                                  ; $413c: $21 $00 $d0
    ld de, $b800                                  ; $413f: $11 $00 $b8
    ld c, $24                                     ; $4142: $0e $24
    call Call_000_0468                            ; $4144: $cd $68 $04
    ld hl, $d400                                  ; $4147: $21 $00 $d4
    ld de, $9800                                  ; $414a: $11 $00 $98
    ld c, $24                                     ; $414d: $0e $24
    call Call_000_04db                            ; $414f: $cd $db $04
    call Call_000_0804                            ; $4152: $cd $04 $08
    ld a, $0f                                     ; $4155: $3e $0f
    ld hl, $4336                                  ; $4157: $21 $36 $43
    call Call_000_23e8                            ; $415a: $cd $e8 $23
    call Call_000_0371                            ; $415d: $cd $71 $03
    ld c, $10                                     ; $4160: $0e $10
    call Call_000_25af                            ; $4162: $cd $af $25
    call Call_000_2625                            ; $4165: $cd $25 $26
    ld a, $0f                                     ; $4168: $3e $0f
    ld hl, $4b05                                  ; $416a: $21 $05 $4b
    call Call_000_23e8                            ; $416d: $cd $e8 $23
    ld a, $06                                     ; $4170: $3e $06
    ldh [$96], a                                  ; $4172: $e0 $96
    ldh [rSVBK], a                                ; $4174: $e0 $70
    pop de                                        ; $4176: $d1
    pop hl                                        ; $4177: $e1
    push hl                                       ; $4178: $e5
    push de                                       ; $4179: $d5
    ld a, h                                       ; $417a: $7c
    sub $04                                       ; $417b: $d6 $04
    jp z, Jump_048_425c                           ; $417d: $ca $5c $42

    ld hl, $d630                                  ; $4180: $21 $30 $d6
    ld a, [hl+]                                   ; $4183: $2a
    ld h, [hl]                                    ; $4184: $66
    ld l, a                                       ; $4185: $6f
    ld a, h                                       ; $4186: $7c
    or l                                          ; $4187: $b5
    jp z, Jump_048_425c                           ; $4188: $ca $5c $42

Jump_048_418b:
jr_048_418b:
    call Call_048_4c02                            ; $418b: $cd $02 $4c
    ld a, [$d638]                                 ; $418e: $fa $38 $d6
    and a                                         ; $4191: $a7
    jr nz, jr_048_41f9                            ; $4192: $20 $65

    ld a, [$d639]                                 ; $4194: $fa $39 $d6
    and a                                         ; $4197: $a7
    jr nz, jr_048_41a8                            ; $4198: $20 $0e

    ldh a, [$90]                                  ; $419a: $f0 $90
    and $03                                       ; $419c: $e6 $03
    jr nz, jr_048_41a8                            ; $419e: $20 $08

    rst $08                                       ; $41a0: $cf
    ld e, e                                       ; $41a1: $5b
    call Call_000_2ed5                            ; $41a2: $cd $d5 $2e
    inc b                                         ; $41a5: $04
    jr jr_048_418b                                ; $41a6: $18 $e3

jr_048_41a8:
    ld a, $01                                     ; $41a8: $3e $01
    ld [$d639], a                                 ; $41aa: $ea $39 $d6
    rst $08                                       ; $41ad: $cf
    ld e, h                                       ; $41ae: $5c
    call Call_048_4c02                            ; $41af: $cd $02 $4c
    ld hl, $d630                                  ; $41b2: $21 $30 $d6
    ld a, [hl+]                                   ; $41b5: $2a
    ld h, [hl]                                    ; $41b6: $66
    ld l, a                                       ; $41b7: $6f
    ld de, $fc18                                  ; $41b8: $11 $18 $fc
    add hl, de                                    ; $41bb: $19
    jr nc, jr_048_41f4                            ; $41bc: $30 $36

    ld hl, $d630                                  ; $41be: $21 $30 $d6
    ld a, [hl+]                                   ; $41c1: $2a
    ld h, [hl]                                    ; $41c2: $66
    ld l, a                                       ; $41c3: $6f
    ld de, $d8f0                                  ; $41c4: $11 $f0 $d8
    add hl, de                                    ; $41c7: $19
    jr nc, jr_048_41e2                            ; $41c8: $30 $18

    call Call_048_4c02                            ; $41ca: $cd $02 $4c
    call Call_048_4c02                            ; $41cd: $cd $02 $4c
    call Call_048_4c02                            ; $41d0: $cd $02 $4c
    call Call_048_4c02                            ; $41d3: $cd $02 $4c
    call Call_048_4c02                            ; $41d6: $cd $02 $4c
    call Call_048_4c02                            ; $41d9: $cd $02 $4c
    call Call_048_4c02                            ; $41dc: $cd $02 $4c
    call Call_048_4c02                            ; $41df: $cd $02 $4c

jr_048_41e2:
    call Call_048_4c02                            ; $41e2: $cd $02 $4c
    call Call_048_4c02                            ; $41e5: $cd $02 $4c
    call Call_048_4c02                            ; $41e8: $cd $02 $4c
    call Call_048_4c02                            ; $41eb: $cd $02 $4c
    call Call_048_4c02                            ; $41ee: $cd $02 $4c
    call Call_048_4c02                            ; $41f1: $cd $02 $4c

jr_048_41f4:
    call Call_000_2e3b                            ; $41f4: $cd $3b $2e
    jr jr_048_418b                                ; $41f7: $18 $92

jr_048_41f9:
    rst $08                                       ; $41f9: $cf
    ld e, h                                       ; $41fa: $5c
    ld a, [$caad]                                 ; $41fb: $fa $ad $ca
    and a                                         ; $41fe: $a7
    jr z, jr_048_425c                             ; $41ff: $28 $5b

    push af                                       ; $4201: $f5
    ld a, $06                                     ; $4202: $3e $06
    ldh [$96], a                                  ; $4204: $e0 $96
    ldh [rSVBK], a                                ; $4206: $e0 $70
    ld c, $00                                     ; $4208: $0e $00
    ld a, [$d400]                                 ; $420a: $fa $00 $d4
    and a                                         ; $420d: $a7
    jr nz, jr_048_4212                            ; $420e: $20 $02

    ld c, $fc                                     ; $4210: $0e $fc

jr_048_4212:
    ld a, c                                       ; $4212: $79
    ld hl, $d63a                                  ; $4213: $21 $3a $d6
    ld [hl], a                                    ; $4216: $77
    ld b, $28                                     ; $4217: $06 $28

jr_048_4219:
    ld hl, $d63a                                  ; $4219: $21 $3a $d6
    ld a, [hl]                                    ; $421c: $7e
    and a                                         ; $421d: $a7
    jr z, jr_048_4222                             ; $421e: $28 $02

    inc a                                         ; $4220: $3c
    ld [hl], a                                    ; $4221: $77

jr_048_4222:
    call Call_000_2e3b                            ; $4222: $cd $3b $2e
    dec b                                         ; $4225: $05
    jr z, jr_048_422d                             ; $4226: $28 $05

    ldh a, [$94]                                  ; $4228: $f0 $94
    or a                                          ; $422a: $b7
    jr z, jr_048_4219                             ; $422b: $28 $ec

jr_048_422d:
    pop af                                        ; $422d: $f1
    call Call_048_4dc4                            ; $422e: $cd $c4 $4d
    rst $08                                       ; $4231: $cf
    ld e, h                                       ; $4232: $5c
    call Call_000_2ed5                            ; $4233: $cd $d5 $2e
    inc d                                         ; $4236: $14
    ld a, $06                                     ; $4237: $3e $06
    ldh [$96], a                                  ; $4239: $e0 $96
    ldh [rSVBK], a                                ; $423b: $e0 $70
    ld hl, $caae                                  ; $423d: $21 $ae $ca
    ld a, [hl+]                                   ; $4240: $2a
    ld d, [hl]                                    ; $4241: $56
    ld e, a                                       ; $4242: $5f
    ld hl, $d630                                  ; $4243: $21 $30 $d6
    ld a, [hl+]                                   ; $4246: $2a
    ld h, [hl]                                    ; $4247: $66
    ld l, a                                       ; $4248: $6f
    add hl, de                                    ; $4249: $19
    ld d, h                                       ; $424a: $54
    ld e, l                                       ; $424b: $5d
    ld hl, $d630                                  ; $424c: $21 $30 $d6
    ld a, e                                       ; $424f: $7b
    ld [hl+], a                                   ; $4250: $22
    ld [hl], d                                    ; $4251: $72
    xor a                                         ; $4252: $af
    ld [$caad], a                                 ; $4253: $ea $ad $ca
    ld [$d638], a                                 ; $4256: $ea $38 $d6
    jp Jump_048_418b                              ; $4259: $c3 $8b $41


Jump_048_425c:
jr_048_425c:
    ld a, $06                                     ; $425c: $3e $06
    ldh [$96], a                                  ; $425e: $e0 $96
    ldh [rSVBK], a                                ; $4260: $e0 $70
    ld c, $00                                     ; $4262: $0e $00
    ld a, [$d400]                                 ; $4264: $fa $00 $d4
    and a                                         ; $4267: $a7
    jr nz, jr_048_426c                            ; $4268: $20 $02

    ld c, $fc                                     ; $426a: $0e $fc

jr_048_426c:
    ld a, c                                       ; $426c: $79
    ld hl, $d63a                                  ; $426d: $21 $3a $d6
    ld [hl], a                                    ; $4270: $77
    ld b, $f0                                     ; $4271: $06 $f0

jr_048_4273:
    ld hl, $d63a                                  ; $4273: $21 $3a $d6
    ld a, [hl]                                    ; $4276: $7e
    and a                                         ; $4277: $a7
    jr z, jr_048_427c                             ; $4278: $28 $02

    inc a                                         ; $427a: $3c
    ld [hl], a                                    ; $427b: $77

jr_048_427c:
    call Call_000_2e3b                            ; $427c: $cd $3b $2e
    dec b                                         ; $427f: $05
    jr z, jr_048_4287                             ; $4280: $28 $05

    ldh a, [$94]                                  ; $4282: $f0 $94
    or a                                          ; $4284: $b7
    jr z, jr_048_4273                             ; $4285: $28 $ec

jr_048_4287:
    ld c, $10                                     ; $4287: $0e $10
    call Call_000_25a1                            ; $4289: $cd $a1 $25
    call Call_000_2625                            ; $428c: $cd $25 $26
    ld hl, $4336                                  ; $428f: $21 $36 $43
    call Call_000_2449                            ; $4292: $cd $49 $24
    ld hl, $4b05                                  ; $4295: $21 $05 $4b
    call Call_000_2449                            ; $4298: $cd $49 $24
    call Call_000_2e3b                            ; $429b: $cd $3b $2e
    pop de                                        ; $429e: $d1
    pop hl                                        ; $429f: $e1
    pop af                                        ; $42a0: $f1
    ldh [$96], a                                  ; $42a1: $e0 $96
    ldh [rSVBK], a                                ; $42a3: $e0 $70
    pop bc                                        ; $42a5: $c1
    ld a, $06                                     ; $42a6: $3e $06
    ldh [$96], a                                  ; $42a8: $e0 $96
    ldh [rSVBK], a                                ; $42aa: $e0 $70
    ld hl, $d630                                  ; $42ac: $21 $30 $d6
    ld a, [hl+]                                   ; $42af: $2a
    ld d, [hl]                                    ; $42b0: $56
    ld e, a                                       ; $42b1: $5f
    ld a, d                                       ; $42b2: $7a
    or e                                          ; $42b3: $b3
    ret z                                         ; $42b4: $c8

    rst $18                                       ; $42b5: $df
    ld [hl+], a                                   ; $42b6: $22
    ld [bc], a                                    ; $42b7: $02
    ret                                           ; $42b8: $c9


Jump_048_42b9:
    ld a, $01                                     ; $42b9: $3e $01
    ldh [$96], a                                  ; $42bb: $e0 $96
    ldh [rSVBK], a                                ; $42bd: $e0 $70
    ld hl, $d000                                  ; $42bf: $21 $00 $d0
    ld de, $b800                                  ; $42c2: $11 $00 $b8
    ld c, $24                                     ; $42c5: $0e $24
    call Call_000_0468                            ; $42c7: $cd $68 $04
    ld hl, $d400                                  ; $42ca: $21 $00 $d4
    ld de, $9800                                  ; $42cd: $11 $00 $98
    ld c, $24                                     ; $42d0: $0e $24
    call Call_000_04db                            ; $42d2: $cd $db $04
    call Call_000_0804                            ; $42d5: $cd $04 $08
    rst $18                                       ; $42d8: $df
    inc h                                         ; $42d9: $24
    inc bc                                        ; $42da: $03
    ld a, $0f                                     ; $42db: $3e $0f
    ld hl, $4336                                  ; $42dd: $21 $36 $43
    call Call_000_23e8                            ; $42e0: $cd $e8 $23
    call Call_000_0371                            ; $42e3: $cd $71 $03
    ld c, $10                                     ; $42e6: $0e $10
    call Call_000_25af                            ; $42e8: $cd $af $25
    call Call_000_2625                            ; $42eb: $cd $25 $26
    pop af                                        ; $42ee: $f1
    ldh [$96], a                                  ; $42ef: $e0 $96
    ldh [rSVBK], a                                ; $42f1: $e0 $70
    pop hl                                        ; $42f3: $e1
    pop de                                        ; $42f4: $d1
    pop bc                                        ; $42f5: $c1
    ret                                           ; $42f6: $c9


    push af                                       ; $42f7: $f5
    push bc                                       ; $42f8: $c5
    push de                                       ; $42f9: $d5
    push hl                                       ; $42fa: $e5
    ld a, $06                                     ; $42fb: $3e $06
    ldh [$96], a                                  ; $42fd: $e0 $96
    ldh [rSVBK], a                                ; $42ff: $e0 $70
    ld a, [$d251]                                 ; $4301: $fa $51 $d2
    sla a                                         ; $4304: $cb $27
    sla a                                         ; $4306: $cb $27
    sla a                                         ; $4308: $cb $27
    sla a                                         ; $430a: $cb $27
    ld e, a                                       ; $430c: $5f
    ld d, $00                                     ; $430d: $16 $00
    ld a, [$d253]                                 ; $430f: $fa $53 $d2
    inc a                                         ; $4312: $3c
    ld [$d253], a                                 ; $4313: $ea $53 $d2
    and $20                                       ; $4316: $e6 $20
    jr nz, jr_048_4323                            ; $4318: $20 $09

    ld hl, $4330                                  ; $431a: $21 $30 $43
    ld bc, $0ac8                                  ; $431d: $01 $c8 $0a
    call Call_000_26ea                            ; $4320: $cd $ea $26

jr_048_4323:
    pop hl                                        ; $4323: $e1
    pop de                                        ; $4324: $d1
    pop bc                                        ; $4325: $c1
    pop af                                        ; $4326: $f1
    ret                                           ; $4327: $c9


    nop                                           ; $4328: $00
    nop                                           ; $4329: $00
    nop                                           ; $432a: $00
    nop                                           ; $432b: $00
    nop                                           ; $432c: $00
    nop                                           ; $432d: $00
    nop                                           ; $432e: $00
    nop                                           ; $432f: $00
    ld b, b                                       ; $4330: $40
    stop                                          ; $4331: $10 $00
    nop                                           ; $4333: $00
    add b                                         ; $4334: $80
    nop                                           ; $4335: $00
    push af                                       ; $4336: $f5
    push bc                                       ; $4337: $c5
    push de                                       ; $4338: $d5
    push hl                                       ; $4339: $e5
    rst $18                                       ; $433a: $df
    ld b, $42                                     ; $433b: $06 $42
    ld hl, $4350                                  ; $433d: $21 $50 $43
    ld bc, $09c0                                  ; $4340: $01 $c0 $09
    ld de, $7058                                  ; $4343: $11 $58 $70
    call Call_000_26ea                            ; $4346: $cd $ea $26
    pop hl                                        ; $4349: $e1
    pop de                                        ; $434a: $d1
    pop bc                                        ; $434b: $c1
    pop af                                        ; $434c: $f1
    ret                                           ; $434d: $c9


    nop                                           ; $434e: $00
    nop                                           ; $434f: $00
    nop                                           ; $4350: $00
    nop                                           ; $4351: $00
    nop                                           ; $4352: $00
    nop                                           ; $4353: $00
    nop                                           ; $4354: $00
    ld [$0002], sp                                ; $4355: $08 $02 $00
    stop                                          ; $4358: $10 $00
    inc b                                         ; $435a: $04
    nop                                           ; $435b: $00
    db $10                                        ; $435c: $10
    ld [$0006], sp                                ; $435d: $08 $06 $00
    add b                                         ; $4360: $80
    nop                                           ; $4361: $00

Call_048_4362:
    ld a, $01                                     ; $4362: $3e $01
    ldh [$96], a                                  ; $4364: $e0 $96
    ldh [rSVBK], a                                ; $4366: $e0 $70
    push hl                                       ; $4368: $e5
    ld hl, $4f70                                  ; $4369: $21 $70 $4f
    ld de, $d000                                  ; $436c: $11 $00 $d0
    call Call_000_1f2f                            ; $436f: $cd $2f $1f
    ld hl, $d000                                  ; $4372: $21 $00 $d0
    ld de, $b000                                  ; $4375: $11 $00 $b0
    ld c, $80                                     ; $4378: $0e $80
    call Call_000_0468                            ; $437a: $cd $68 $04
    ld hl, $d800                                  ; $437d: $21 $00 $d8
    ld de, $a800                                  ; $4380: $11 $00 $a8
    ld c, $40                                     ; $4383: $0e $40
    call Call_000_04db                            ; $4385: $cd $db $04
    ld hl, $58a0                                  ; $4388: $21 $a0 $58
    ld de, $0008                                  ; $438b: $11 $08 $00
    call Call_000_0595                            ; $438e: $cd $95 $05
    ld a, $06                                     ; $4391: $3e $06
    ldh [$96], a                                  ; $4393: $e0 $96
    ldh [rSVBK], a                                ; $4395: $e0 $70
    ld hl, $d504                                  ; $4397: $21 $04 $d5
    ld [hl], $00                                  ; $439a: $36 $00
    call Call_000_04de                            ; $439c: $cd $de $04
    rst $18                                       ; $439f: $df
    inc b                                         ; $43a0: $04
    ld b, d                                       ; $43a1: $42
    call Call_000_04de                            ; $43a2: $cd $de $04
    ld a, $06                                     ; $43a5: $3e $06
    ldh [$96], a                                  ; $43a7: $e0 $96
    ldh [rSVBK], a                                ; $43a9: $e0 $70
    ld a, $78                                     ; $43ab: $3e $78
    ld [$d54c], a                                 ; $43ad: $ea $4c $d5
    ld a, $28                                     ; $43b0: $3e $28
    ld [$d54d], a                                 ; $43b2: $ea $4d $d5
    ld a, $01                                     ; $43b5: $3e $01
    ldh [$96], a                                  ; $43b7: $e0 $96
    ldh [rSVBK], a                                ; $43b9: $e0 $70
    ld hl, $5a90                                  ; $43bb: $21 $90 $5a
    ld de, $d000                                  ; $43be: $11 $00 $d0
    call Call_000_1f2f                            ; $43c1: $cd $2f $1f
    ld hl, $d000                                  ; $43c4: $21 $00 $d0
    ld de, $ac00                                  ; $43c7: $11 $00 $ac
    ld c, $04                                     ; $43ca: $0e $04
    call Call_000_04db                            ; $43cc: $cd $db $04
    ld hl, $5ad0                                  ; $43cf: $21 $d0 $5a
    ld de, $d000                                  ; $43d2: $11 $00 $d0
    call Call_000_1f2f                            ; $43d5: $cd $2f $1f
    ld hl, $d000                                  ; $43d8: $21 $00 $d0
    ld de, $ac40                                  ; $43db: $11 $40 $ac
    ld c, $04                                     ; $43de: $0e $04

Call_048_43e0:
    call Call_000_04db                            ; $43e0: $cd $db $04
    ld hl, $5b19                                  ; $43e3: $21 $19 $5b
    ld de, $0901                                  ; $43e6: $11 $01 $09
    call Call_000_0595                            ; $43e9: $cd $95 $05
    pop hl                                        ; $43ec: $e1
    ld a, h                                       ; $43ed: $7c
    cp $01                                        ; $43ee: $fe $01
    jr z, jr_048_4425                             ; $43f0: $28 $33

    ld hl, $5a60                                  ; $43f2: $21 $60 $5a
    ld de, $d000                                  ; $43f5: $11 $00 $d0
    call Call_000_1f2f                            ; $43f8: $cd $2f $1f
    ld hl, $d000                                  ; $43fb: $21 $00 $d0
    ld de, $ac80                                  ; $43fe: $11 $80 $ac
    ld c, $02                                     ; $4401: $0e $02
    call Call_000_04db                            ; $4403: $cd $db $04
    ld hl, $5a78                                  ; $4406: $21 $78 $5a
    ld de, $0a01                                  ; $4409: $11 $01 $0a
    call Call_000_0595                            ; $440c: $cd $95 $05
    ld hl, $5bc0                                  ; $440f: $21 $c0 $5b
    ld de, $d000                                  ; $4412: $11 $00 $d0
    call Call_000_1f2f                            ; $4415: $cd $2f $1f
    ld hl, $d000                                  ; $4418: $21 $00 $d0
    ld de, $9400                                  ; $441b: $11 $00 $94
    ld c, $40                                     ; $441e: $0e $40
    call Call_000_04db                            ; $4420: $cd $db $04
    jr jr_048_4442                                ; $4423: $18 $1d

jr_048_4425:
    call Call_000_04de                            ; $4425: $cd $de $04
    ld a, $01                                     ; $4428: $3e $01
    ldh [$96], a                                  ; $442a: $e0 $96
    ldh [rSVBK], a                                ; $442c: $e0 $70
    ld hl, $5b29                                  ; $442e: $21 $29 $5b
    ld de, $de00                                  ; $4431: $11 $00 $de
    call Call_000_1f2f                            ; $4434: $cd $2f $1f
    ld hl, $de00                                  ; $4437: $21 $00 $de
    ld de, $aca0                                  ; $443a: $11 $a0 $ac
    ld c, $14                                     ; $443d: $0e $14
    call Call_000_04db                            ; $443f: $cd $db $04

jr_048_4442:
    ld a, $01                                     ; $4442: $3e $01
    ldh [$96], a                                  ; $4444: $e0 $96
    ldh [rSVBK], a                                ; $4446: $e0 $70
    ld hl, $5660                                  ; $4448: $21 $60 $56
    ld de, $d000                                  ; $444b: $11 $00 $d0
    ld c, $24                                     ; $444e: $0e $24
    call Call_000_03eb                            ; $4450: $cd $eb $03
    ld hl, $5420                                  ; $4453: $21 $20 $54
    ld de, $d400                                  ; $4456: $11 $00 $d4
    ld c, $24                                     ; $4459: $0e $24
    call Call_000_03eb                            ; $445b: $cd $eb $03
    ret                                           ; $445e: $c9


    nop                                           ; $445f: $00
    dec bc                                        ; $4460: $0b
    ld bc, $010b                                  ; $4461: $01 $0b $01
    dec bc                                        ; $4464: $0b
    ld bc, $010b                                  ; $4465: $01 $0b $01
    dec bc                                        ; $4468: $0b
    ld bc, $010b                                  ; $4469: $01 $0b $01
    dec bc                                        ; $446c: $0b
    ld bc, $010b                                  ; $446d: $01 $0b $01
    dec bc                                        ; $4470: $0b
    ld bc, $010b                                  ; $4471: $01 $0b $01
    dec bc                                        ; $4474: $0b
    ld bc, $010b                                  ; $4475: $01 $0b $01
    dec bc                                        ; $4478: $0b
    ld bc, $010b                                  ; $4479: $01 $0b $01
    dec bc                                        ; $447c: $0b
    ld bc, $010b                                  ; $447d: $01 $0b $01
    dec bc                                        ; $4480: $0b
    ld bc, $010b                                  ; $4481: $01 $0b $01
    dec bc                                        ; $4484: $0b
    ld [bc], a                                    ; $4485: $02
    dec bc                                        ; $4486: $0b
    db $10                                        ; $4487: $10
    dec bc                                        ; $4488: $0b
    jr nz, @+$03                                  ; $4489: $20 $01

    jr nz, @+$03                                  ; $448b: $20 $01

    jr nz, @+$03                                  ; $448d: $20 $01

    jr nz, @+$03                                  ; $448f: $20 $01

    jr nz, @+$03                                  ; $4491: $20 $01

    jr nz, @+$03                                  ; $4493: $20 $01

    jr nz, @+$03                                  ; $4495: $20 $01

    jr nz, @+$03                                  ; $4497: $20 $01

    jr nz, @+$03                                  ; $4499: $20 $01

    jr nz, @+$03                                  ; $449b: $20 $01

    jr nz, @+$03                                  ; $449d: $20 $01

    jr nz, @+$03                                  ; $449f: $20 $01

    jr nz, @+$03                                  ; $44a1: $20 $01

    jr nz, @+$03                                  ; $44a3: $20 $01

    jr nz, @+$03                                  ; $44a5: $20 $01

    jr nz, @+$03                                  ; $44a7: $20 $01

    jr nz, @+$03                                  ; $44a9: $20 $01

    jr nz, jr_048_44ae                            ; $44ab: $20 $01

    ld [de], a                                    ; $44ad: $12

jr_048_44ae:
    dec bc                                        ; $44ae: $0b
    db $10                                        ; $44af: $10
    dec bc                                        ; $44b0: $0b
    jr nz, @+$03                                  ; $44b1: $20 $01

    jr nz, @+$03                                  ; $44b3: $20 $01

    jr nz, @+$03                                  ; $44b5: $20 $01

    jr nz, @+$03                                  ; $44b7: $20 $01

    jr nz, @+$03                                  ; $44b9: $20 $01

    jr nz, @+$03                                  ; $44bb: $20 $01

    jr nz, @+$03                                  ; $44bd: $20 $01

    jr nz, @+$03                                  ; $44bf: $20 $01

    jr nz, @+$03                                  ; $44c1: $20 $01

    jr nz, @+$03                                  ; $44c3: $20 $01

    jr nz, @+$03                                  ; $44c5: $20 $01

    jr nz, @+$03                                  ; $44c7: $20 $01

    jr nz, @+$03                                  ; $44c9: $20 $01

    jr nz, @+$03                                  ; $44cb: $20 $01

    jr nz, @+$03                                  ; $44cd: $20 $01

    jr nz, @+$03                                  ; $44cf: $20 $01

    jr nz, @+$03                                  ; $44d1: $20 $01

    jr nz, jr_048_44d6                            ; $44d3: $20 $01

    ld [de], a                                    ; $44d5: $12

jr_048_44d6:
    dec bc                                        ; $44d6: $0b
    db $10                                        ; $44d7: $10
    dec bc                                        ; $44d8: $0b
    jr nz, @+$03                                  ; $44d9: $20 $01

    jr nz, @+$03                                  ; $44db: $20 $01

    jr nz, @+$03                                  ; $44dd: $20 $01

    jr nz, @+$03                                  ; $44df: $20 $01

    jr nz, @+$03                                  ; $44e1: $20 $01

    jr nz, @+$03                                  ; $44e3: $20 $01

    jr nz, @+$03                                  ; $44e5: $20 $01

    jr nz, @+$03                                  ; $44e7: $20 $01

    jr nz, @+$03                                  ; $44e9: $20 $01

    jr nz, @+$03                                  ; $44eb: $20 $01

    jr nz, @+$03                                  ; $44ed: $20 $01

    jr nz, @+$03                                  ; $44ef: $20 $01

    jr nz, @+$03                                  ; $44f1: $20 $01

    jr nz, @+$03                                  ; $44f3: $20 $01

    jr nz, @+$03                                  ; $44f5: $20 $01

    jr nz, @+$03                                  ; $44f7: $20 $01

    jr nz, @+$03                                  ; $44f9: $20 $01

    jr nz, jr_048_44fe                            ; $44fb: $20 $01

    ld [de], a                                    ; $44fd: $12

jr_048_44fe:
    dec bc                                        ; $44fe: $0b
    jr nz, jr_048_450c                            ; $44ff: $20 $0b

    ld hl, $210b                                  ; $4501: $21 $0b $21
    dec bc                                        ; $4504: $0b
    ld hl, $210b                                  ; $4505: $21 $0b $21
    dec bc                                        ; $4508: $0b
    ld hl, $210b                                  ; $4509: $21 $0b $21

jr_048_450c:
    dec bc                                        ; $450c: $0b
    ld hl, $210b                                  ; $450d: $21 $0b $21
    dec bc                                        ; $4510: $0b
    ld hl, $210b                                  ; $4511: $21 $0b $21
    dec bc                                        ; $4514: $0b
    ld hl, $210b                                  ; $4515: $21 $0b $21
    dec bc                                        ; $4518: $0b
    ld hl, $210b                                  ; $4519: $21 $0b $21
    dec bc                                        ; $451c: $0b
    ld hl, $210b                                  ; $451d: $21 $0b $21
    dec bc                                        ; $4520: $0b
    ld hl, $210b                                  ; $4521: $21 $0b $21
    dec bc                                        ; $4524: $0b
    ld [hl+], a                                   ; $4525: $22
    dec bc                                        ; $4526: $0b

Call_048_4527:
    push af                                       ; $4527: $f5
    push bc                                       ; $4528: $c5
    push de                                       ; $4529: $d5
    push hl                                       ; $452a: $e5
    ld c, $00                                     ; $452b: $0e $00
    ld hl, $445f                                  ; $452d: $21 $5f $44

jr_048_4530:
    ld a, c                                       ; $4530: $79
    cp $05                                        ; $4531: $fe $05
    jr z, jr_048_454b                             ; $4533: $28 $16

    ld b, $00                                     ; $4535: $06 $00

jr_048_4537:
    ld a, b                                       ; $4537: $78
    cp $14                                        ; $4538: $fe $14
    jr z, jr_048_4548                             ; $453a: $28 $0c

    ld a, [hl]                                    ; $453c: $7e
    ld d, a                                       ; $453d: $57
    inc hl                                        ; $453e: $23
    ld a, [hl]                                    ; $453f: $7e
    ld e, a                                       ; $4540: $5f
    call Call_048_48cf                            ; $4541: $cd $cf $48
    inc hl                                        ; $4544: $23
    inc b                                         ; $4545: $04

Jump_048_4546:
    jr jr_048_4537                                ; $4546: $18 $ef

jr_048_4548:
    inc c                                         ; $4548: $0c
    jr jr_048_4530                                ; $4549: $18 $e5

jr_048_454b:
    pop hl                                        ; $454b: $e1
    pop de                                        ; $454c: $d1
    pop bc                                        ; $454d: $c1
    pop af                                        ; $454e: $f1
    ret                                           ; $454f: $c9


    nop                                           ; $4550: $00
    dec bc                                        ; $4551: $0b
    ld bc, $010b                                  ; $4552: $01 $0b $01
    dec bc                                        ; $4555: $0b
    ld bc, $010b                                  ; $4556: $01 $0b $01
    dec bc                                        ; $4559: $0b
    ld [bc], a                                    ; $455a: $02
    dec bc                                        ; $455b: $0b
    db $10                                        ; $455c: $10
    dec bc                                        ; $455d: $0b
    jr nz, @+$03                                  ; $455e: $20 $01

    jr nz, @+$03                                  ; $4560: $20 $01

    jr nz, @+$03                                  ; $4562: $20 $01

    jr nz, jr_048_4567                            ; $4564: $20 $01

    ld [de], a                                    ; $4566: $12

jr_048_4567:
    dec bc                                        ; $4567: $0b
    db $10                                        ; $4568: $10
    dec bc                                        ; $4569: $0b
    jr nz, @+$03                                  ; $456a: $20 $01

    jr nz, @+$03                                  ; $456c: $20 $01

    jr nz, @+$03                                  ; $456e: $20 $01

    jr nz, jr_048_4573                            ; $4570: $20 $01

    ld [de], a                                    ; $4572: $12

jr_048_4573:
    dec bc                                        ; $4573: $0b
    db $10                                        ; $4574: $10
    dec bc                                        ; $4575: $0b
    jr nz, @+$03                                  ; $4576: $20 $01

    jr nz, @+$03                                  ; $4578: $20 $01

    jr nz, @+$03                                  ; $457a: $20 $01

    jr nz, jr_048_457f                            ; $457c: $20 $01

    ld [de], a                                    ; $457e: $12

jr_048_457f:
    dec bc                                        ; $457f: $0b
    jr nz, jr_048_458d                            ; $4580: $20 $0b

    ld hl, $210b                                  ; $4582: $21 $0b $21
    dec bc                                        ; $4585: $0b
    ld hl, $210b                                  ; $4586: $21 $0b $21
    dec bc                                        ; $4589: $0b
    ld [hl+], a                                   ; $458a: $22
    dec bc                                        ; $458b: $0b

Call_048_458c:
    push af                                       ; $458c: $f5

jr_048_458d:
    push bc                                       ; $458d: $c5
    push de                                       ; $458e: $d5
    push hl                                       ; $458f: $e5
    ld bc, $0005                                  ; $4590: $01 $05 $00
    ld a, $00                                     ; $4593: $3e $00
    ld hl, $4550                                  ; $4595: $21 $50 $45

jr_048_4598:
    ld a, c                                       ; $4598: $79
    cp $0a                                        ; $4599: $fe $0a
    jr z, jr_048_45b3                             ; $459b: $28 $16

    ld b, $00                                     ; $459d: $06 $00

jr_048_459f:
    ld a, b                                       ; $459f: $78
    cp $06                                        ; $45a0: $fe $06
    jr z, jr_048_45b0                             ; $45a2: $28 $0c

    ld a, [hl]                                    ; $45a4: $7e
    ld d, a                                       ; $45a5: $57
    inc hl                                        ; $45a6: $23
    ld a, [hl]                                    ; $45a7: $7e
    ld e, a                                       ; $45a8: $5f
    call Call_048_48cf                            ; $45a9: $cd $cf $48
    inc hl                                        ; $45ac: $23
    inc b                                         ; $45ad: $04
    jr jr_048_459f                                ; $45ae: $18 $ef

jr_048_45b0:
    inc c                                         ; $45b0: $0c
    jr jr_048_4598                                ; $45b1: $18 $e5

jr_048_45b3:
    ld de, $d4c2                                  ; $45b3: $11 $c2 $d4
    ld hl, $001a                                  ; $45b6: $21 $1a $00
    ld c, $20                                     ; $45b9: $0e $20
    rst $18                                       ; $45bb: $df
    ld [hl+], a                                   ; $45bc: $22
    dec b                                         ; $45bd: $05
    ld de, $d502                                  ; $45be: $11 $02 $d5
    ld hl, $001a                                  ; $45c1: $21 $1a $00
    ld c, $20                                     ; $45c4: $0e $20
    rst $18                                       ; $45c6: $df
    jr nz, jr_048_45ce                            ; $45c7: $20 $05

    pop hl                                        ; $45c9: $e1
    pop de                                        ; $45ca: $d1
    pop bc                                        ; $45cb: $c1
    pop af                                        ; $45cc: $f1
    ret                                           ; $45cd: $c9


jr_048_45ce:
    jr c, @+$0d                                   ; $45ce: $38 $0b

    add hl, sp                                    ; $45d0: $39
    dec bc                                        ; $45d1: $0b
    ld a, [hl-]                                   ; $45d2: $3a
    dec bc                                        ; $45d3: $0b
    dec sp                                        ; $45d4: $3b
    dec bc                                        ; $45d5: $0b
    inc a                                         ; $45d6: $3c
    dec bc                                        ; $45d7: $0b
    dec a                                         ; $45d8: $3d
    dec bc                                        ; $45d9: $0b
    ld a, $0b                                     ; $45da: $3e $0b
    ccf                                           ; $45dc: $3f
    dec bc                                        ; $45dd: $0b
    ld c, b                                       ; $45de: $48
    dec bc                                        ; $45df: $0b
    ld c, c                                       ; $45e0: $49
    dec bc                                        ; $45e1: $0b
    ld c, d                                       ; $45e2: $4a
    dec bc                                        ; $45e3: $0b
    ld c, e                                       ; $45e4: $4b
    dec bc                                        ; $45e5: $0b
    ld c, h                                       ; $45e6: $4c
    dec bc                                        ; $45e7: $0b
    ld c, l                                       ; $45e8: $4d
    dec bc                                        ; $45e9: $0b
    ld c, [hl]                                    ; $45ea: $4e
    dec bc                                        ; $45eb: $0b
    ld c, a                                       ; $45ec: $4f
    dec bc                                        ; $45ed: $0b
    ld e, b                                       ; $45ee: $58
    dec bc                                        ; $45ef: $0b
    ld e, c                                       ; $45f0: $59
    dec bc                                        ; $45f1: $0b
    ld e, d                                       ; $45f2: $5a
    dec bc                                        ; $45f3: $0b
    ld e, e                                       ; $45f4: $5b
    dec bc                                        ; $45f5: $0b
    ld e, h                                       ; $45f6: $5c
    dec bc                                        ; $45f7: $0b
    ld e, l                                       ; $45f8: $5d
    dec bc                                        ; $45f9: $0b
    ld e, [hl]                                    ; $45fa: $5e
    dec bc                                        ; $45fb: $0b
    ld e, a                                       ; $45fc: $5f
    dec bc                                        ; $45fd: $0b
    ld l, b                                       ; $45fe: $68
    dec bc                                        ; $45ff: $0b
    ld l, c                                       ; $4600: $69
    dec bc                                        ; $4601: $0b
    ld l, d                                       ; $4602: $6a
    dec bc                                        ; $4603: $0b
    ld l, e                                       ; $4604: $6b
    dec bc                                        ; $4605: $0b
    ld l, h                                       ; $4606: $6c
    dec bc                                        ; $4607: $0b
    ld l, l                                       ; $4608: $6d
    dec bc                                        ; $4609: $0b
    ld l, [hl]                                    ; $460a: $6e
    dec bc                                        ; $460b: $0b
    ld l, a                                       ; $460c: $6f
    dec bc                                        ; $460d: $0b

Call_048_460e:
    push af                                       ; $460e: $f5
    push bc                                       ; $460f: $c5
    push de                                       ; $4610: $d5
    push hl                                       ; $4611: $e5
    ld c, $0b                                     ; $4612: $0e $0b
    ld a, $00                                     ; $4614: $3e $00
    ld hl, $45ce                                  ; $4616: $21 $ce $45

jr_048_4619:
    ld a, c                                       ; $4619: $79
    cp $0f                                        ; $461a: $fe $0f
    jr z, jr_048_4634                             ; $461c: $28 $16

    ld b, $01                                     ; $461e: $06 $01

jr_048_4620:
    ld a, b                                       ; $4620: $78
    cp $09                                        ; $4621: $fe $09
    jr z, jr_048_4631                             ; $4623: $28 $0c

    ld a, [hl]                                    ; $4625: $7e
    ld d, a                                       ; $4626: $57
    inc hl                                        ; $4627: $23
    ld a, [hl]                                    ; $4628: $7e
    ld e, a                                       ; $4629: $5f
    call Call_048_48cf                            ; $462a: $cd $cf $48
    inc hl                                        ; $462d: $23
    inc b                                         ; $462e: $04
    jr jr_048_4620                                ; $462f: $18 $ef

jr_048_4631:
    inc c                                         ; $4631: $0c
    jr jr_048_4619                                ; $4632: $18 $e5

jr_048_4634:
    pop hl                                        ; $4634: $e1
    pop de                                        ; $4635: $d1
    pop bc                                        ; $4636: $c1
    pop af                                        ; $4637: $f1
    ret                                           ; $4638: $c9


Call_048_4639:
    push af                                       ; $4639: $f5
    push bc                                       ; $463a: $c5
    push de                                       ; $463b: $d5
    push hl                                       ; $463c: $e5
    call Call_048_4673                            ; $463d: $cd $73 $46
    ld a, $01                                     ; $4640: $3e $01
    ldh [$96], a                                  ; $4642: $e0 $96
    ldh [rSVBK], a                                ; $4644: $e0 $70
    ld de, $d4c7                                  ; $4646: $11 $c7 $d4
    ld hl, $149b                                  ; $4649: $21 $9b $14
    ld c, $20                                     ; $464c: $0e $20
    rst $18                                       ; $464e: $df
    ld [hl+], a                                   ; $464f: $22
    dec b                                         ; $4650: $05
    ld hl, $c800                                  ; $4651: $21 $00 $c8
    ld a, l                                       ; $4654: $7d
    add $12                                       ; $4655: $c6 $12
    ld l, a                                       ; $4657: $6f
    ld a, h                                       ; $4658: $7c
    adc $00                                       ; $4659: $ce $00
    ld h, a                                       ; $465b: $67
    ld a, [hl]                                    ; $465c: $7e
    ld l, a                                       ; $465d: $6f
    ld h, $00                                     ; $465e: $26 $00
    rst $18                                       ; $4660: $df
    ld d, [hl]                                    ; $4661: $56
    dec b                                         ; $4662: $05
    ld de, $d507                                  ; $4663: $11 $07 $d5
    ld hl, $149c                                  ; $4666: $21 $9c $14
    ld c, $20                                     ; $4669: $0e $20
    rst $18                                       ; $466b: $df
    ld [hl+], a                                   ; $466c: $22
    dec b                                         ; $466d: $05
    pop hl                                        ; $466e: $e1
    pop de                                        ; $466f: $d1
    pop bc                                        ; $4670: $c1
    pop af                                        ; $4671: $f1
    ret                                           ; $4672: $c9


Call_048_4673:
    push af                                       ; $4673: $f5
    push bc                                       ; $4674: $c5
    push de                                       ; $4675: $d5
    push hl                                       ; $4676: $e5
    ld c, $06                                     ; $4677: $0e $06

jr_048_4679:
    ld a, c                                       ; $4679: $79
    cp $09                                        ; $467a: $fe $09
    jr z, jr_048_4691                             ; $467c: $28 $13

    ld b, $06                                     ; $467e: $06 $06

jr_048_4680:
    ld a, b                                       ; $4680: $78
    cp $0e                                        ; $4681: $fe $0e
    jr z, jr_048_468e                             ; $4683: $28 $09

    ld de, $2000                                  ; $4685: $11 $00 $20
    call Call_048_48cf                            ; $4688: $cd $cf $48
    inc b                                         ; $468b: $04
    jr jr_048_4680                                ; $468c: $18 $f2

jr_048_468e:
    inc c                                         ; $468e: $0c
    jr jr_048_4679                                ; $468f: $18 $e8

jr_048_4691:
    pop hl                                        ; $4691: $e1
    pop de                                        ; $4692: $d1
    pop bc                                        ; $4693: $c1
    pop af                                        ; $4694: $f1
    ret                                           ; $4695: $c9


Call_048_4696:
    push af                                       ; $4696: $f5
    push bc                                       ; $4697: $c5
    push de                                       ; $4698: $d5
    push hl                                       ; $4699: $e5
    call Call_048_4791                            ; $469a: $cd $91 $47
    call Call_048_47b4                            ; $469d: $cd $b4 $47
    ld hl, $c800                                  ; $46a0: $21 $00 $c8
    ld a, l                                       ; $46a3: $7d
    add $34                                       ; $46a4: $c6 $34
    ld l, a                                       ; $46a6: $6f
    ld a, h                                       ; $46a7: $7c
    adc $00                                       ; $46a8: $ce $00
    ld h, a                                       ; $46aa: $67
    ld a, [hl]                                    ; $46ab: $7e
    ld hl, $14a8                                  ; $46ac: $21 $a8 $14
    dec a                                         ; $46af: $3d
    ld d, $00                                     ; $46b0: $16 $00
    ld e, a                                       ; $46b2: $5f
    add hl, de                                    ; $46b3: $19
    ld de, $d581                                  ; $46b4: $11 $81 $d5
    ld c, $20                                     ; $46b7: $0e $20
    rst $18                                       ; $46b9: $df
    ld [hl+], a                                   ; $46ba: $22
    dec b                                         ; $46bb: $05
    ld hl, $c800                                  ; $46bc: $21 $00 $c8
    ld a, l                                       ; $46bf: $7d
    add $36                                       ; $46c0: $c6 $36
    ld l, a                                       ; $46c2: $6f
    ld a, h                                       ; $46c3: $7c
    adc $00                                       ; $46c4: $ce $00
    ld h, a                                       ; $46c6: $67
    ld a, [hl]                                    ; $46c7: $7e
    ld d, $00                                     ; $46c8: $16 $00
    ld e, a                                       ; $46ca: $5f
    ld hl, $0021                                  ; $46cb: $21 $21 $00
    add hl, de                                    ; $46ce: $19
    ld de, $d5c1                                  ; $46cf: $11 $c1 $d5
    ld c, $20                                     ; $46d2: $0e $20
    rst $18                                       ; $46d4: $df
    ld [hl+], a                                   ; $46d5: $22
    dec b                                         ; $46d6: $05
    ld hl, $c800                                  ; $46d7: $21 $00 $c8
    ld a, l                                       ; $46da: $7d
    add $37                                       ; $46db: $c6 $37
    ld l, a                                       ; $46dd: $6f
    ld a, h                                       ; $46de: $7c
    adc $00                                       ; $46df: $ce $00
    ld h, a                                       ; $46e1: $67
    ld a, [hl]                                    ; $46e2: $7e
    ld l, a                                       ; $46e3: $6f
    ld h, $00                                     ; $46e4: $26 $00
    rst $18                                       ; $46e6: $df
    ld d, [hl]                                    ; $46e7: $56
    dec b                                         ; $46e8: $05
    ld a, $01                                     ; $46e9: $3e $01
    ldh [$96], a                                  ; $46eb: $e0 $96
    ldh [rSVBK], a                                ; $46ed: $e0 $70
    ld de, $d601                                  ; $46ef: $11 $01 $d6
    ld hl, $14a0                                  ; $46f2: $21 $a0 $14
    ld c, $20                                     ; $46f5: $0e $20
    rst $18                                       ; $46f7: $df
    ld [hl+], a                                   ; $46f8: $22
    dec b                                         ; $46f9: $05
    ld hl, $c800                                  ; $46fa: $21 $00 $c8
    ld a, l                                       ; $46fd: $7d
    add $34                                       ; $46fe: $c6 $34
    ld l, a                                       ; $4700: $6f
    ld a, h                                       ; $4701: $7c
    adc $00                                       ; $4702: $ce $00
    ld h, a                                       ; $4704: $67
    ld a, [hl]                                    ; $4705: $7e
    cp $02                                        ; $4706: $fe $02
    jr z, jr_048_4724                             ; $4708: $28 $1a

    ld de, $d608                                  ; $470a: $11 $08 $d6
    ld hl, $14a1                                  ; $470d: $21 $a1 $14
    ld c, $20                                     ; $4710: $0e $20
    rst $18                                       ; $4712: $df
    ld [hl+], a                                   ; $4713: $22
    dec b                                         ; $4714: $05
    ld hl, $c8be                                  ; $4715: $21 $be $c8
    ld a, [hl]                                    ; $4718: $7e
    ld bc, $0c10                                  ; $4719: $01 $10 $0c
    call Call_048_48f3                            ; $471c: $cd $f3 $48

jr_048_471f:
    pop hl                                        ; $471f: $e1
    pop de                                        ; $4720: $d1
    pop bc                                        ; $4721: $c1
    pop af                                        ; $4722: $f1
    ret                                           ; $4723: $c9


jr_048_4724:
    ld a, [$c837]                                 ; $4724: $fa $37 $c8
    ld hl, $c96e                                  ; $4727: $21 $6e $c9
    xor b                                         ; $472a: $a8

jr_048_472b:
    cp $00                                        ; $472b: $fe $00
    jr z, jr_048_4744                             ; $472d: $28 $15

    push af                                       ; $472f: $f5
    ld a, [hl]                                    ; $4730: $7e
    cp $01                                        ; $4731: $fe $01
    jr z, jr_048_473b                             ; $4733: $28 $06

    cp $02                                        ; $4735: $fe $02
    jr z, jr_048_473e                             ; $4737: $28 $05

    jr jr_048_473f                                ; $4739: $18 $04

jr_048_473b:
    inc b                                         ; $473b: $04
    jr jr_048_473f                                ; $473c: $18 $01

jr_048_473e:
    dec b                                         ; $473e: $05

jr_048_473f:
    pop af                                        ; $473f: $f1
    inc hl                                        ; $4740: $23
    dec a                                         ; $4741: $3d
    jr jr_048_472b                                ; $4742: $18 $e7

jr_048_4744:
    ld a, [$c83a]                                 ; $4744: $fa $3a $c8
    or a                                          ; $4747: $b7
    jr nz, jr_048_477c                            ; $4748: $20 $32

    bit 7, b                                      ; $474a: $cb $78
    jr nz, jr_048_4766                            ; $474c: $20 $18

    ld a, b                                       ; $474e: $78
    cp $00                                        ; $474f: $fe $00
    jr z, jr_048_477c                             ; $4751: $28 $29

    ld h, $00                                     ; $4753: $26 $00
    ld l, b                                       ; $4755: $68
    rst $18                                       ; $4756: $df
    ld d, [hl]                                    ; $4757: $56
    dec b                                         ; $4758: $05
    ld de, $d608                                  ; $4759: $11 $08 $d6
    ld hl, $14bb                                  ; $475c: $21 $bb $14
    ld c, $20                                     ; $475f: $0e $20
    rst $18                                       ; $4761: $df
    ld [hl+], a                                   ; $4762: $22
    dec b                                         ; $4763: $05
    jr jr_048_471f                                ; $4764: $18 $b9

jr_048_4766:
    ld a, b                                       ; $4766: $78
    cpl                                           ; $4767: $2f
    inc a                                         ; $4768: $3c
    ld h, $00                                     ; $4769: $26 $00
    ld l, a                                       ; $476b: $6f
    rst $18                                       ; $476c: $df
    ld d, [hl]                                    ; $476d: $56
    dec b                                         ; $476e: $05
    ld de, $d608                                  ; $476f: $11 $08 $d6
    ld hl, $14bc                                  ; $4772: $21 $bc $14
    ld c, $20                                     ; $4775: $0e $20
    rst $18                                       ; $4777: $df
    ld [hl+], a                                   ; $4778: $22
    dec b                                         ; $4779: $05
    jr jr_048_471f                                ; $477a: $18 $a3

jr_048_477c:
    ld de, $d608                                  ; $477c: $11 $08 $d6
    ld hl, $14bd                                  ; $477f: $21 $bd $14
    ld c, $20                                     ; $4782: $0e $20
    rst $18                                       ; $4784: $df
    ld [hl+], a                                   ; $4785: $22
    dec b                                         ; $4786: $05
    jr jr_048_471f                                ; $4787: $18 $96

    ld hl, $4049                                  ; $4789: $21 $49 $40
    call Call_048_4852                            ; $478c: $cd $52 $48
    jr jr_048_471f                                ; $478f: $18 $8e

Call_048_4791:
    push af                                       ; $4791: $f5
    push bc                                       ; $4792: $c5
    push de                                       ; $4793: $d5
    push hl                                       ; $4794: $e5
    ld c, $0d                                     ; $4795: $0e $0d

jr_048_4797:
    ld a, c                                       ; $4797: $79
    cp $12                                        ; $4798: $fe $12
    jr z, jr_048_47af                             ; $479a: $28 $13

    ld b, $01                                     ; $479c: $06 $01

jr_048_479e:
    ld a, b                                       ; $479e: $78
    cp $14                                        ; $479f: $fe $14
    jr z, jr_048_47ac                             ; $47a1: $28 $09

    ld de, $2001                                  ; $47a3: $11 $01 $20
    call Call_048_48cf                            ; $47a6: $cd $cf $48
    inc b                                         ; $47a9: $04
    jr jr_048_479e                                ; $47aa: $18 $f2

jr_048_47ac:
    inc c                                         ; $47ac: $0c
    jr jr_048_4797                                ; $47ad: $18 $e8

jr_048_47af:
    pop hl                                        ; $47af: $e1
    pop de                                        ; $47b0: $d1
    pop bc                                        ; $47b1: $c1
    pop af                                        ; $47b2: $f1
    ret                                           ; $47b3: $c9


Call_048_47b4:
    push af                                       ; $47b4: $f5
    push bc                                       ; $47b5: $c5
    push de                                       ; $47b6: $d5
    push hl                                       ; $47b7: $e5
    ld c, $0b                                     ; $47b8: $0e $0b

jr_048_47ba:
    ld a, c                                       ; $47ba: $79
    cp $0d                                        ; $47bb: $fe $0d
    jr z, jr_048_47d2                             ; $47bd: $28 $13

    ld b, $01                                     ; $47bf: $06 $01

jr_048_47c1:
    ld a, b                                       ; $47c1: $78
    cp $0a                                        ; $47c2: $fe $0a
    jr z, jr_048_47cf                             ; $47c4: $28 $09

    ld de, $2001                                  ; $47c6: $11 $01 $20
    call Call_048_48cf                            ; $47c9: $cd $cf $48
    inc b                                         ; $47cc: $04
    jr jr_048_47c1                                ; $47cd: $18 $f2

jr_048_47cf:
    inc c                                         ; $47cf: $0c
    jr jr_048_47ba                                ; $47d0: $18 $e8

jr_048_47d2:
    pop hl                                        ; $47d2: $e1
    pop de                                        ; $47d3: $d1
    pop bc                                        ; $47d4: $c1
    pop af                                        ; $47d5: $f1
    ret                                           ; $47d6: $c9


Call_048_47d7:
    push af                                       ; $47d7: $f5
    push bc                                       ; $47d8: $c5
    push de                                       ; $47d9: $d5
    push hl                                       ; $47da: $e5
    ld c, $0d                                     ; $47db: $0e $0d

jr_048_47dd:
    ld a, c                                       ; $47dd: $79
    cp $12                                        ; $47de: $fe $12
    jr z, jr_048_47f5                             ; $47e0: $28 $13

    ld b, $01                                     ; $47e2: $06 $01

jr_048_47e4:
    ld a, b                                       ; $47e4: $78
    cp $14                                        ; $47e5: $fe $14
    jr z, jr_048_47f2                             ; $47e7: $28 $09

    ld de, $2001                                  ; $47e9: $11 $01 $20
    call Call_048_48cf                            ; $47ec: $cd $cf $48
    inc b                                         ; $47ef: $04
    jr jr_048_47e4                                ; $47f0: $18 $f2

jr_048_47f2:
    inc c                                         ; $47f2: $0c
    jr jr_048_47dd                                ; $47f3: $18 $e8

jr_048_47f5:
    pop hl                                        ; $47f5: $e1
    pop de                                        ; $47f6: $d1
    pop bc                                        ; $47f7: $c1
    pop af                                        ; $47f8: $f1
    ret                                           ; $47f9: $c9


    ld [$0a09], sp                                ; $47fa: $08 $09 $0a
    dec bc                                        ; $47fd: $0b
    inc c                                         ; $47fe: $0c
    dec c                                         ; $47ff: $0d
    ld c, $0f                                     ; $4800: $0e $0f
    db $10                                        ; $4802: $10
    ld de, $1312                                  ; $4803: $11 $12 $13
    inc d                                         ; $4806: $14
    dec d                                         ; $4807: $15
    ld d, $17                                     ; $4808: $16 $17
    ld h, $2c                                     ; $480a: $26 $2c
    rst $38                                       ; $480c: $ff

Call_048_480d:
    push af                                       ; $480d: $f5
    push bc                                       ; $480e: $c5
    push de                                       ; $480f: $d5
    push hl                                       ; $4810: $e5
    call Call_048_47d7                            ; $4811: $cd $d7 $47
    call Call_048_47b4                            ; $4814: $cd $b4 $47
    ld hl, $c960                                  ; $4817: $21 $60 $c9
    ld a, [hl]                                    ; $481a: $7e
    rst $18                                       ; $481b: $df
    ld d, [hl]                                    ; $481c: $56
    ld a, [bc]                                    ; $481d: $0a
    push af                                       ; $481e: $f5
    ld hl, $012c                                  ; $481f: $21 $2c $01
    ld d, $00                                     ; $4822: $16 $00
    ld e, a                                       ; $4824: $5f
    add hl, de                                    ; $4825: $19
    ld de, $d5c1                                  ; $4826: $11 $c1 $d5
    ld c, $20                                     ; $4829: $0e $20
    rst $18                                       ; $482b: $df
    ld [hl+], a                                   ; $482c: $22
    dec b                                         ; $482d: $05
    pop af                                        ; $482e: $f1
    ld d, a                                       ; $482f: $57
    ld hl, $47fa                                  ; $4830: $21 $fa $47

jr_048_4833:
    ld a, [hl]                                    ; $4833: $7e
    cp $ff                                        ; $4834: $fe $ff
    jr z, jr_048_484d                             ; $4836: $28 $15

    cp d                                          ; $4838: $ba
    jr z, jr_048_483e                             ; $4839: $28 $03

    inc hl                                        ; $483b: $23
    jr jr_048_4833                                ; $483c: $18 $f5

jr_048_483e:
    ld hl, $012c                                  ; $483e: $21 $2c $01
    ld e, d                                       ; $4841: $5a
    ld d, $00                                     ; $4842: $16 $00
    add hl, de                                    ; $4844: $19
    ld de, $d601                                  ; $4845: $11 $01 $d6
    ld c, $20                                     ; $4848: $0e $20
    rst $18                                       ; $484a: $df
    jr nz, jr_048_4852                            ; $484b: $20 $05

jr_048_484d:
    pop hl                                        ; $484d: $e1
    pop de                                        ; $484e: $d1
    pop bc                                        ; $484f: $c1
    pop af                                        ; $4850: $f1
    ret                                           ; $4851: $c9


Call_048_4852:
jr_048_4852:
    push af                                       ; $4852: $f5
    push bc                                       ; $4853: $c5
    push de                                       ; $4854: $d5
    push hl                                       ; $4855: $e5
    ld a, [hl]                                    ; $4856: $7e
    ld b, a                                       ; $4857: $47
    inc hl                                        ; $4858: $23
    ld a, [hl]                                    ; $4859: $7e
    ld c, a                                       ; $485a: $4f
    inc hl                                        ; $485b: $23
    ld a, [hl]                                    ; $485c: $7e
    ld e, a                                       ; $485d: $5f
    inc hl                                        ; $485e: $23
    call Call_048_4867                            ; $485f: $cd $67 $48
    pop hl                                        ; $4862: $e1
    pop de                                        ; $4863: $d1
    pop bc                                        ; $4864: $c1
    pop af                                        ; $4865: $f1
    ret                                           ; $4866: $c9


Call_048_4867:
    push af                                       ; $4867: $f5
    push bc                                       ; $4868: $c5
    push de                                       ; $4869: $d5
    push hl                                       ; $486a: $e5

jr_048_486b:
    ld a, [hl]                                    ; $486b: $7e
    cp $00                                        ; $486c: $fe $00
    jr z, jr_048_48b4                             ; $486e: $28 $44

    cp $9e                                        ; $4870: $fe $9e
    jr z, jr_048_4888                             ; $4872: $28 $14

    cp $9f                                        ; $4874: $fe $9f
    jr z, jr_048_4888                             ; $4876: $28 $10

    cp $de                                        ; $4878: $fe $de
    jr z, jr_048_4888                             ; $487a: $28 $0c

    cp $df                                        ; $487c: $fe $df
    jr z, jr_048_4888                             ; $487e: $28 $08

    ld d, a                                       ; $4880: $57
    call Call_048_48cf                            ; $4881: $cd $cf $48
    inc b                                         ; $4884: $04
    inc hl                                        ; $4885: $23
    jr jr_048_486b                                ; $4886: $18 $e3

jr_048_4888:
    push bc                                       ; $4888: $c5
    dec b                                         ; $4889: $05
    dec c                                         ; $488a: $0d
    push af                                       ; $488b: $f5
    ld a, c                                       ; $488c: $79
    cp $00                                        ; $488d: $fe $00
    jr z, jr_048_489a                             ; $488f: $28 $09

    pop af                                        ; $4891: $f1
    ld d, a                                       ; $4892: $57
    call Call_048_48cf                            ; $4893: $cd $cf $48
    pop bc                                        ; $4896: $c1
    inc hl                                        ; $4897: $23
    jr jr_048_486b                                ; $4898: $18 $d1

jr_048_489a:
    pop af                                        ; $489a: $f1
    push de                                       ; $489b: $d5
    cp $9e                                        ; $489c: $fe $9e
    jr z, jr_048_48a9                             ; $489e: $28 $09

    cp $de                                        ; $48a0: $fe $de
    jr z, jr_048_48a9                             ; $48a2: $28 $05

    ld de, $040b                                  ; $48a4: $11 $0b $04
    jr jr_048_48ac                                ; $48a7: $18 $03

jr_048_48a9:
    ld de, $030b                                  ; $48a9: $11 $0b $03

jr_048_48ac:
    call Call_048_48cf                            ; $48ac: $cd $cf $48
    pop de                                        ; $48af: $d1
    pop bc                                        ; $48b0: $c1
    inc hl                                        ; $48b1: $23
    jr jr_048_486b                                ; $48b2: $18 $b7

jr_048_48b4:
    pop hl                                        ; $48b4: $e1
    pop de                                        ; $48b5: $d1
    pop bc                                        ; $48b6: $c1
    pop af                                        ; $48b7: $f1
    ret                                           ; $48b8: $c9


Call_048_48b9:
    push af                                       ; $48b9: $f5
    push de                                       ; $48ba: $d5
    ld hl, $0020                                  ; $48bb: $21 $20 $00
    ld a, c                                       ; $48be: $79
    call Call_000_08b9                            ; $48bf: $cd $b9 $08
    ld d, $00                                     ; $48c2: $16 $00
    ld e, b                                       ; $48c4: $58
    add hl, de                                    ; $48c5: $19
    push hl                                       ; $48c6: $e5
    pop de                                        ; $48c7: $d1
    ld hl, $d000                                  ; $48c8: $21 $00 $d0
    add hl, de                                    ; $48cb: $19
    pop de                                        ; $48cc: $d1
    pop af                                        ; $48cd: $f1
    ret                                           ; $48ce: $c9


Call_048_48cf:
    push af                                       ; $48cf: $f5
    push bc                                       ; $48d0: $c5
    push de                                       ; $48d1: $d5
    push hl                                       ; $48d2: $e5
    ldh a, [$96]                                  ; $48d3: $f0 $96
    push af                                       ; $48d5: $f5
    ld a, $01                                     ; $48d6: $3e $01
    ldh [$96], a                                  ; $48d8: $e0 $96
    ldh [rSVBK], a                                ; $48da: $e0 $70
    call Call_048_48b9                            ; $48dc: $cd $b9 $48
    ld a, e                                       ; $48df: $7b
    ld [hl], a                                    ; $48e0: $77
    push de                                       ; $48e1: $d5
    ld de, $0400                                  ; $48e2: $11 $00 $04
    add hl, de                                    ; $48e5: $19
    pop de                                        ; $48e6: $d1
    ld a, d                                       ; $48e7: $7a
    ld [hl], a                                    ; $48e8: $77
    pop af                                        ; $48e9: $f1
    ldh [$96], a                                  ; $48ea: $e0 $96
    ldh [rSVBK], a                                ; $48ec: $e0 $70
    pop hl                                        ; $48ee: $e1
    pop de                                        ; $48ef: $d1
    pop bc                                        ; $48f0: $c1
    pop af                                        ; $48f1: $f1
    ret                                           ; $48f2: $c9


Call_048_48f3:
    push af                                       ; $48f3: $f5
    push bc                                       ; $48f4: $c5
    push de                                       ; $48f5: $d5
    push hl                                       ; $48f6: $e5
    ld d, a                                       ; $48f7: $57
    push bc                                       ; $48f8: $c5
    push de                                       ; $48f9: $d5
    call Call_048_4a08                            ; $48fa: $cd $08 $4a
    push hl                                       ; $48fd: $e5
    pop bc                                        ; $48fe: $c1
    ld de, $0000                                  ; $48ff: $11 $00 $00
    call Call_048_497e                            ; $4902: $cd $7e $49
    cp $00                                        ; $4905: $fe $00
    jr z, jr_048_4915                             ; $4907: $28 $0c

    bit 7, h                                      ; $4909: $cb $7c
    jr nz, jr_048_4911                            ; $490b: $20 $04

    ld a, $2b                                     ; $490d: $3e $2b
    jr jr_048_4917                                ; $490f: $18 $06

jr_048_4911:
    ld a, $2d                                     ; $4911: $3e $2d
    jr jr_048_4917                                ; $4913: $18 $02

jr_048_4915:
    ld a, $47                                     ; $4915: $3e $47

jr_048_4917:
    pop de                                        ; $4917: $d1
    pop bc                                        ; $4918: $c1
    push de                                       ; $4919: $d5
    ld d, a                                       ; $491a: $57
    ld e, $01                                     ; $491b: $1e $01
    call Call_048_48cf                            ; $491d: $cd $cf $48
    pop de                                        ; $4920: $d1
    inc b                                         ; $4921: $04
    ld a, d                                       ; $4922: $7a
    cp $00                                        ; $4923: $fe $00
    jr z, jr_048_494f                             ; $4925: $28 $28

    push bc                                       ; $4927: $c5
    push de                                       ; $4928: $d5
    call Call_048_4a08                            ; $4929: $cd $08 $4a
    bit 7, h                                      ; $492c: $cb $7c
    jr z, jr_048_4938                             ; $492e: $28 $08

    push hl                                       ; $4930: $e5
    pop de                                        ; $4931: $d1
    ld hl, $0000                                  ; $4932: $21 $00 $00
    call Call_000_08ac                            ; $4935: $cd $ac $08

jr_048_4938:
    ld de, $0064                                  ; $4938: $11 $64 $00
    call Call_000_09ae                            ; $493b: $cd $ae $09
    pop de                                        ; $493e: $d1
    pop bc                                        ; $493f: $c1
    ld a, l                                       ; $4940: $7d
    cp $00                                        ; $4941: $fe $00
    jr z, jr_048_494f                             ; $4943: $28 $0a

    push de                                       ; $4945: $d5
    ld d, $31                                     ; $4946: $16 $31
    ld e, $01                                     ; $4948: $1e $01
    call Call_048_48cf                            ; $494a: $cd $cf $48
    pop de                                        ; $494d: $d1
    inc b                                         ; $494e: $04

jr_048_494f:
    ld a, d                                       ; $494f: $7a
    call Call_048_49a2                            ; $4950: $cd $a2 $49
    cp $00                                        ; $4953: $fe $00
    jr nz, jr_048_4960                            ; $4955: $20 $09

    ld a, d                                       ; $4957: $7a
    sub $64                                       ; $4958: $d6 $64
    bit 7, a                                      ; $495a: $cb $7f
    jr nz, jr_048_496b                            ; $495c: $20 $0d

    ld a, $00                                     ; $495e: $3e $00

jr_048_4960:
    add $30                                       ; $4960: $c6 $30
    push de                                       ; $4962: $d5
    ld d, a                                       ; $4963: $57
    ld e, $01                                     ; $4964: $1e $01
    call Call_048_48cf                            ; $4966: $cd $cf $48
    pop de                                        ; $4969: $d1
    inc b                                         ; $496a: $04

jr_048_496b:
    ld a, d                                       ; $496b: $7a
    call Call_048_49cf                            ; $496c: $cd $cf $49
    add $30                                       ; $496f: $c6 $30
    push de                                       ; $4971: $d5
    ld d, a                                       ; $4972: $57
    ld e, $01                                     ; $4973: $1e $01
    call Call_048_48cf                            ; $4975: $cd $cf $48
    pop de                                        ; $4978: $d1
    pop hl                                        ; $4979: $e1
    pop de                                        ; $497a: $d1
    pop bc                                        ; $497b: $c1
    pop af                                        ; $497c: $f1
    ret                                           ; $497d: $c9


Call_048_497e:
    push bc                                       ; $497e: $c5
    push de                                       ; $497f: $d5
    push hl                                       ; $4980: $e5
    push bc                                       ; $4981: $c5
    pop hl                                        ; $4982: $e1
    call Call_000_08ac                            ; $4983: $cd $ac $08
    bit 7, h                                      ; $4986: $cb $7c
    jr nz, jr_048_499c                            ; $4988: $20 $12

    ld a, h                                       ; $498a: $7c
    cp $00                                        ; $498b: $fe $00
    jr nz, jr_048_4998                            ; $498d: $20 $09

    ld a, l                                       ; $498f: $7d
    cp $00                                        ; $4990: $fe $00
    jr nz, jr_048_4998                            ; $4992: $20 $04

    ld a, $00                                     ; $4994: $3e $00
    jr jr_048_499e                                ; $4996: $18 $06

jr_048_4998:
    ld a, $01                                     ; $4998: $3e $01
    jr jr_048_499e                                ; $499a: $18 $02

jr_048_499c:
    ld a, $02                                     ; $499c: $3e $02

jr_048_499e:
    pop hl                                        ; $499e: $e1
    pop de                                        ; $499f: $d1
    pop bc                                        ; $49a0: $c1
    ret                                           ; $49a1: $c9


Call_048_49a2:
    push bc                                       ; $49a2: $c5
    push de                                       ; $49a3: $d5
    push hl                                       ; $49a4: $e5
    call Call_048_4a08                            ; $49a5: $cd $08 $4a
    bit 7, h                                      ; $49a8: $cb $7c
    jr z, jr_048_49b4                             ; $49aa: $28 $08

    push hl                                       ; $49ac: $e5
    pop de                                        ; $49ad: $d1
    ld hl, $0000                                  ; $49ae: $21 $00 $00
    call Call_000_08ac                            ; $49b1: $cd $ac $08

jr_048_49b4:
    push hl                                       ; $49b4: $e5
    pop bc                                        ; $49b5: $c1
    ld de, $0064                                  ; $49b6: $11 $64 $00
    call Call_000_08ac                            ; $49b9: $cd $ac $08
    bit 7, h                                      ; $49bc: $cb $7c
    jr nz, jr_048_49c2                            ; $49be: $20 $02

    push hl                                       ; $49c0: $e5
    pop bc                                        ; $49c1: $c1

jr_048_49c2:
    push bc                                       ; $49c2: $c5
    pop hl                                        ; $49c3: $e1
    ld de, $000a                                  ; $49c4: $11 $0a $00
    call Call_000_09ae                            ; $49c7: $cd $ae $09
    ld a, l                                       ; $49ca: $7d
    pop hl                                        ; $49cb: $e1
    pop de                                        ; $49cc: $d1
    pop bc                                        ; $49cd: $c1
    ret                                           ; $49ce: $c9


Call_048_49cf:
    push bc                                       ; $49cf: $c5
    push de                                       ; $49d0: $d5
    push hl                                       ; $49d1: $e5
    call Call_048_4a08                            ; $49d2: $cd $08 $4a
    bit 7, h                                      ; $49d5: $cb $7c
    jr z, jr_048_49e1                             ; $49d7: $28 $08

    push hl                                       ; $49d9: $e5
    pop de                                        ; $49da: $d1
    ld hl, $0000                                  ; $49db: $21 $00 $00
    call Call_000_08ac                            ; $49de: $cd $ac $08

jr_048_49e1:
    push hl                                       ; $49e1: $e5
    pop bc                                        ; $49e2: $c1
    ld de, $0064                                  ; $49e3: $11 $64 $00
    call Call_000_08ac                            ; $49e6: $cd $ac $08
    bit 7, h                                      ; $49e9: $cb $7c
    jr nz, jr_048_49ef                            ; $49eb: $20 $02

    push hl                                       ; $49ed: $e5
    pop bc                                        ; $49ee: $c1

jr_048_49ef:
    push bc                                       ; $49ef: $c5
    pop hl                                        ; $49f0: $e1
    ld de, $000a                                  ; $49f1: $11 $0a $00
    call Call_000_09ae                            ; $49f4: $cd $ae $09
    ld a, $0a                                     ; $49f7: $3e $0a
    call Call_000_08b9                            ; $49f9: $cd $b9 $08
    push hl                                       ; $49fc: $e5
    pop de                                        ; $49fd: $d1
    push bc                                       ; $49fe: $c5
    pop hl                                        ; $49ff: $e1
    call Call_000_08ac                            ; $4a00: $cd $ac $08
    ld a, l                                       ; $4a03: $7d
    pop hl                                        ; $4a04: $e1
    pop de                                        ; $4a05: $d1
    pop bc                                        ; $4a06: $c1
    ret                                           ; $4a07: $c9


Call_048_4a08:
    push af                                       ; $4a08: $f5
    push bc                                       ; $4a09: $c5
    push de                                       ; $4a0a: $d5
    ld l, a                                       ; $4a0b: $6f
    ld h, $00                                     ; $4a0c: $26 $00
    push hl                                       ; $4a0e: $e5
    pop bc                                        ; $4a0f: $c1
    ld d, $00                                     ; $4a10: $16 $00
    ld e, $91                                     ; $4a12: $1e $91
    call Call_000_08ac                            ; $4a14: $cd $ac $08
    bit 7, h                                      ; $4a17: $cb $7c
    jr nz, jr_048_4a21                            ; $4a19: $20 $06

    push bc                                       ; $4a1b: $c5
    pop hl                                        ; $4a1c: $e1
    ld h, $ff                                     ; $4a1d: $26 $ff
    jr jr_048_4a23                                ; $4a1f: $18 $02

jr_048_4a21:
    push bc                                       ; $4a21: $c5
    pop hl                                        ; $4a22: $e1

jr_048_4a23:
    pop de                                        ; $4a23: $d1
    pop bc                                        ; $4a24: $c1
    pop af                                        ; $4a25: $f1
    ret                                           ; $4a26: $c9


    push bc                                       ; $4a27: $c5
    push de                                       ; $4a28: $d5
    push hl                                       ; $4a29: $e5
    ld a, $06                                     ; $4a2a: $3e $06
    ldh [$96], a                                  ; $4a2c: $e0 $96
    ldh [rSVBK], a                                ; $4a2e: $e0 $70
    xor a                                         ; $4a30: $af
    ld [$d251], a                                 ; $4a31: $ea $51 $d2

jr_048_4a34:
    call Call_000_2e3b                            ; $4a34: $cd $3b $2e
    ldh a, [$94]                                  ; $4a37: $f0 $94
    or a                                          ; $4a39: $b7
    jr z, jr_048_4a34                             ; $4a3a: $28 $f8

    push af                                       ; $4a3c: $f5
    push bc                                       ; $4a3d: $c5
    push de                                       ; $4a3e: $d5
    push hl                                       ; $4a3f: $e5
    rst $08                                       ; $4a40: $cf
    ld e, e                                       ; $4a41: $5b
    pop hl                                        ; $4a42: $e1
    pop de                                        ; $4a43: $d1
    pop bc                                        ; $4a44: $c1
    pop af                                        ; $4a45: $f1
    bit 0, a                                      ; $4a46: $cb $47
    jr nz, jr_048_4a69                            ; $4a48: $20 $1f

    bit 1, a                                      ; $4a4a: $cb $4f
    jr nz, jr_048_4a76                            ; $4a4c: $20 $28

    bit 6, a                                      ; $4a4e: $cb $77
    jr nz, jr_048_4a58                            ; $4a50: $20 $06

    bit 7, a                                      ; $4a52: $cb $7f
    jr nz, jr_048_4a58                            ; $4a54: $20 $02

    jr jr_048_4a34                                ; $4a56: $18 $dc

jr_048_4a58:
    ld a, $06                                     ; $4a58: $3e $06
    ldh [$96], a                                  ; $4a5a: $e0 $96
    ldh [rSVBK], a                                ; $4a5c: $e0 $70
    ld a, [$d251]                                 ; $4a5e: $fa $51 $d2
    inc a                                         ; $4a61: $3c
    and $01                                       ; $4a62: $e6 $01
    ld [$d251], a                                 ; $4a64: $ea $51 $d2
    jr jr_048_4a34                                ; $4a67: $18 $cb

jr_048_4a69:
    rst $08                                       ; $4a69: $cf
    ld e, h                                       ; $4a6a: $5c
    ld a, $06                                     ; $4a6b: $3e $06
    ldh [$96], a                                  ; $4a6d: $e0 $96
    ldh [rSVBK], a                                ; $4a6f: $e0 $70
    ld a, [$d251]                                 ; $4a71: $fa $51 $d2
    jr jr_048_4a7a                                ; $4a74: $18 $04

jr_048_4a76:
    rst $08                                       ; $4a76: $cf
    ld e, h                                       ; $4a77: $5c
    ld a, $ff                                     ; $4a78: $3e $ff

jr_048_4a7a:
    call Call_000_2e3b                            ; $4a7a: $cd $3b $2e
    pop hl                                        ; $4a7d: $e1
    pop de                                        ; $4a7e: $d1
    pop bc                                        ; $4a7f: $c1
    ret                                           ; $4a80: $c9


    push af                                       ; $4a81: $f5
    push bc                                       ; $4a82: $c5
    push de                                       ; $4a83: $d5
    push hl                                       ; $4a84: $e5
    ldh a, [$96]                                  ; $4a85: $f0 $96
    push af                                       ; $4a87: $f5
    ld a, $01                                     ; $4a88: $3e $01
    ldh [$96], a                                  ; $4a8a: $e0 $96
    ldh [rSVBK], a                                ; $4a8c: $e0 $70
    call Call_048_4527                            ; $4a8e: $cd $27 $45
    ld hl, $400e                                  ; $4a91: $21 $0e $40
    call Call_048_4852                            ; $4a94: $cd $52 $48
    ld hl, $4019                                  ; $4a97: $21 $19 $40
    call Call_048_4852                            ; $4a9a: $cd $52 $48
    ld a, $01                                     ; $4a9d: $3e $01
    ldh [$96], a                                  ; $4a9f: $e0 $96
    ldh [rSVBK], a                                ; $4aa1: $e0 $70
    ld hl, $d000                                  ; $4aa3: $21 $00 $d0
    ld de, $b800                                  ; $4aa6: $11 $00 $b8
    ld c, $08                                     ; $4aa9: $0e $08
    call Call_000_0468                            ; $4aab: $cd $68 $04
    ld hl, $d400                                  ; $4aae: $21 $00 $d4
    ld de, $9800                                  ; $4ab1: $11 $00 $98
    ld c, $08                                     ; $4ab4: $0e $08
    call Call_000_0468                            ; $4ab6: $cd $68 $04
    pop af                                        ; $4ab9: $f1
    ldh [$96], a                                  ; $4aba: $e0 $96
    ldh [rSVBK], a                                ; $4abc: $e0 $70
    pop hl                                        ; $4abe: $e1
    pop de                                        ; $4abf: $d1
    pop bc                                        ; $4ac0: $c1
    pop af                                        ; $4ac1: $f1
    ret                                           ; $4ac2: $c9


    push af                                       ; $4ac3: $f5
    push bc                                       ; $4ac4: $c5
    push de                                       ; $4ac5: $d5
    push hl                                       ; $4ac6: $e5
    ldh a, [$96]                                  ; $4ac7: $f0 $96
    push af                                       ; $4ac9: $f5
    ld a, $01                                     ; $4aca: $3e $01
    ldh [$96], a                                  ; $4acc: $e0 $96
    ldh [rSVBK], a                                ; $4ace: $e0 $70
    call Call_048_4527                            ; $4ad0: $cd $27 $45
    ld hl, $4029                                  ; $4ad3: $21 $29 $40
    call Call_048_4852                            ; $4ad6: $cd $52 $48
    ld hl, $4039                                  ; $4ad9: $21 $39 $40
    call Call_048_4852                            ; $4adc: $cd $52 $48
    ld a, $01                                     ; $4adf: $3e $01
    ldh [$96], a                                  ; $4ae1: $e0 $96
    ldh [rSVBK], a                                ; $4ae3: $e0 $70
    ld hl, $d000                                  ; $4ae5: $21 $00 $d0
    ld de, $b800                                  ; $4ae8: $11 $00 $b8
    ld c, $08                                     ; $4aeb: $0e $08
    call Call_000_0468                            ; $4aed: $cd $68 $04
    ld hl, $d400                                  ; $4af0: $21 $00 $d4
    ld de, $9800                                  ; $4af3: $11 $00 $98
    ld c, $08                                     ; $4af6: $0e $08
    call Call_000_0468                            ; $4af8: $cd $68 $04
    pop af                                        ; $4afb: $f1
    ldh [$96], a                                  ; $4afc: $e0 $96
    ldh [rSVBK], a                                ; $4afe: $e0 $70

Jump_048_4b00:
    pop hl                                        ; $4b00: $e1
    pop de                                        ; $4b01: $d1
    pop bc                                        ; $4b02: $c1
    pop af                                        ; $4b03: $f1
    ret                                           ; $4b04: $c9


    ld a, $06                                     ; $4b05: $3e $06
    ldh [$96], a                                  ; $4b07: $e0 $96
    ldh [rSVBK], a                                ; $4b09: $e0 $70
    ld hl, $d632                                  ; $4b0b: $21 $32 $d6
    ld a, [hl+]                                   ; $4b0e: $2a
    ld h, [hl]                                    ; $4b0f: $66
    ld l, a                                       ; $4b10: $6f
    ld de, $d64e                                  ; $4b11: $11 $4e $d6
    ld a, $05                                     ; $4b14: $3e $05
    call Call_000_2326                            ; $4b16: $cd $26 $23
    ld hl, $d634                                  ; $4b19: $21 $34 $d6
    ld d, [hl]                                    ; $4b1c: $56
    inc hl                                        ; $4b1d: $23
    ld e, [hl]                                    ; $4b1e: $5e
    ld hl, $d64e                                  ; $4b1f: $21 $4e $d6
    ld a, $05                                     ; $4b22: $3e $05
    call Call_048_4bd4                            ; $4b24: $cd $d4 $4b
    ld a, $06                                     ; $4b27: $3e $06
    ldh [$96], a                                  ; $4b29: $e0 $96
    ldh [rSVBK], a                                ; $4b2b: $e0 $70
    ld hl, $c800                                  ; $4b2d: $21 $00 $c8
    ld a, l                                       ; $4b30: $7d
    add $12                                       ; $4b31: $c6 $12
    ld l, a                                       ; $4b33: $6f
    ld a, h                                       ; $4b34: $7c
    adc $00                                       ; $4b35: $ce $00
    ld h, a                                       ; $4b37: $67
    ld a, [hl]                                    ; $4b38: $7e
    cp $63                                        ; $4b39: $fe $63
    ret z                                         ; $4b3b: $c8

    ld a, [$d400]                                 ; $4b3c: $fa $00 $d4
    and a                                         ; $4b3f: $a7
    jp nz, Jump_048_4bb7                          ; $4b40: $c2 $b7 $4b

    ld a, [$d63b]                                 ; $4b43: $fa $3b $d6
    and a                                         ; $4b46: $a7
    ret nz                                        ; $4b47: $c0

    ld hl, $d642                                  ; $4b48: $21 $42 $d6
    ld a, [hl+]                                   ; $4b4b: $2a
    ld h, [hl]                                    ; $4b4c: $66
    ld l, a                                       ; $4b4d: $6f
    ld a, h                                       ; $4b4e: $7c
    or l                                          ; $4b4f: $b5
    jr z, jr_048_4b69                             ; $4b50: $28 $17

    ld de, $d644                                  ; $4b52: $11 $44 $d6
    ld a, $05                                     ; $4b55: $3e $05
    call Call_000_2326                            ; $4b57: $cd $26 $23
    ld hl, $d63e                                  ; $4b5a: $21 $3e $d6
    ld d, [hl]                                    ; $4b5d: $56
    inc hl                                        ; $4b5e: $23
    ld e, [hl]                                    ; $4b5f: $5e
    ld hl, $d644                                  ; $4b60: $21 $44 $d6
    ld a, $05                                     ; $4b63: $3e $05
    call Call_048_4c54                            ; $4b65: $cd $54 $4c
    ret                                           ; $4b68: $c9


jr_048_4b69:
    ld a, [$d63b]                                 ; $4b69: $fa $3b $d6
    and a                                         ; $4b6c: $a7
    ret nz                                        ; $4b6d: $c0

    ld a, $02                                     ; $4b6e: $3e $02
    ldh [$96], a                                  ; $4b70: $e0 $96
    ldh [rSVBK], a                                ; $4b72: $e0 $70
    ld a, $01                                     ; $4b74: $3e $01
    ld hl, $d800                                  ; $4b76: $21 $00 $d8
    ld b, $40                                     ; $4b79: $06 $40

jr_048_4b7b:
    ld [hl+], a                                   ; $4b7b: $22
    dec b                                         ; $4b7c: $05
    jr nz, jr_048_4b7b                            ; $4b7d: $20 $fc

    ld hl, $d800                                  ; $4b7f: $21 $00 $d8
    ld de, $b9e0                                  ; $4b82: $11 $e0 $b9
    ld c, $04                                     ; $4b85: $0e $04
    call Call_000_0468                            ; $4b87: $cd $68 $04
    ld a, $03                                     ; $4b8a: $3e $03
    ldh [$96], a                                  ; $4b8c: $e0 $96
    ldh [rSVBK], a                                ; $4b8e: $e0 $70
    ld a, $20                                     ; $4b90: $3e $20
    ld hl, $d800                                  ; $4b92: $21 $00 $d8
    ld b, $40                                     ; $4b95: $06 $40

jr_048_4b97:
    ld [hl+], a                                   ; $4b97: $22
    dec b                                         ; $4b98: $05
    jr nz, jr_048_4b97                            ; $4b99: $20 $fc

    ld a, $07                                     ; $4b9b: $3e $07
    ldh [$96], a                                  ; $4b9d: $e0 $96
    ldh [rSVBK], a                                ; $4b9f: $e0 $70
    ld hl, $dd00                                  ; $4ba1: $21 $00 $dd
    ld de, $99e0                                  ; $4ba4: $11 $e0 $99
    ld c, $04                                     ; $4ba7: $0e $04
    call Call_000_0468                            ; $4ba9: $cd $68 $04
    ld a, $06                                     ; $4bac: $3e $06
    ldh [$96], a                                  ; $4bae: $e0 $96
    ldh [rSVBK], a                                ; $4bb0: $e0 $70
    ld a, $01                                     ; $4bb2: $3e $01
    ld [$d63b], a                                 ; $4bb4: $ea $3b $d6

Jump_048_4bb7:
    ld hl, $d63c                                  ; $4bb7: $21 $3c $d6
    ld a, [hl+]                                   ; $4bba: $2a
    ld h, [hl]                                    ; $4bbb: $66
    ld l, a                                       ; $4bbc: $6f
    ld de, $d644                                  ; $4bbd: $11 $44 $d6
    ld a, $05                                     ; $4bc0: $3e $05
    call Call_000_2326                            ; $4bc2: $cd $26 $23
    ld hl, $d63e                                  ; $4bc5: $21 $3e $d6
    ld d, [hl]                                    ; $4bc8: $56
    inc hl                                        ; $4bc9: $23
    ld e, [hl]                                    ; $4bca: $5e
    ld hl, $d644                                  ; $4bcb: $21 $44 $d6
    ld a, $05                                     ; $4bce: $3e $05
    call Call_048_4c54                            ; $4bd0: $cd $54 $4c
    ret                                           ; $4bd3: $c9


Call_048_4bd4:
jr_048_4bd4:
    push af                                       ; $4bd4: $f5
    push de                                       ; $4bd5: $d5
    ld a, [$d63a]                                 ; $4bd6: $fa $3a $d6
    add d                                         ; $4bd9: $82
    ld d, a                                       ; $4bda: $57
    push hl                                       ; $4bdb: $e5
    push bc                                       ; $4bdc: $c5
    ld a, [hl]                                    ; $4bdd: $7e
    sub $20                                       ; $4bde: $d6 $20
    jr z, jr_048_4bf4                             ; $4be0: $28 $12

    sub $10                                       ; $4be2: $d6 $10
    add a                                         ; $4be4: $87
    ld b, a                                       ; $4be5: $47
    ld a, [$d636]                                 ; $4be6: $fa $36 $d6
    ld c, a                                       ; $4be9: $4f
    ld a, b                                       ; $4bea: $78
    add c                                         ; $4beb: $81
    ld c, a                                       ; $4bec: $4f
    ld a, [$d637]                                 ; $4bed: $fa $37 $d6
    ld b, a                                       ; $4bf0: $47
    call Call_000_2798                            ; $4bf1: $cd $98 $27

jr_048_4bf4:
    pop bc                                        ; $4bf4: $c1
    pop hl                                        ; $4bf5: $e1
    pop de                                        ; $4bf6: $d1
    dec bc                                        ; $4bf7: $0b
    inc hl                                        ; $4bf8: $23
    ld a, d                                       ; $4bf9: $7a
    add $08                                       ; $4bfa: $c6 $08
    ld d, a                                       ; $4bfc: $57
    pop af                                        ; $4bfd: $f1
    dec a                                         ; $4bfe: $3d
    jr nz, jr_048_4bd4                            ; $4bff: $20 $d3

    ret                                           ; $4c01: $c9


Call_048_4c02:
    ld a, $06                                     ; $4c02: $3e $06
    ldh [$96], a                                  ; $4c04: $e0 $96
    ldh [rSVBK], a                                ; $4c06: $e0 $70
    ld a, [$d638]                                 ; $4c08: $fa $38 $d6
    and a                                         ; $4c0b: $a7
    jr nz, jr_048_4c2e                            ; $4c0c: $20 $20

    ld hl, $d632                                  ; $4c0e: $21 $32 $d6
    ld a, [hl+]                                   ; $4c11: $2a
    ld d, [hl]                                    ; $4c12: $56
    ld e, a                                       ; $4c13: $5f
    inc de                                        ; $4c14: $13
    dec hl                                        ; $4c15: $2b
    ld a, e                                       ; $4c16: $7b
    ld [hl+], a                                   ; $4c17: $22
    ld [hl], d                                    ; $4c18: $72
    ld hl, $d630                                  ; $4c19: $21 $30 $d6
    ld a, [hl+]                                   ; $4c1c: $2a
    ld h, [hl]                                    ; $4c1d: $66
    ld l, a                                       ; $4c1e: $6f
    ld a, l                                       ; $4c1f: $7d
    sub e                                         ; $4c20: $93
    ld l, a                                       ; $4c21: $6f
    ld a, h                                       ; $4c22: $7c
    sbc d                                         ; $4c23: $9a
    ld h, a                                       ; $4c24: $67
    ld a, h                                       ; $4c25: $7c
    or l                                          ; $4c26: $b5
    jr nz, jr_048_4c2e                            ; $4c27: $20 $05

    ld a, $01                                     ; $4c29: $3e $01
    ld [$d638], a                                 ; $4c2b: $ea $38 $d6

jr_048_4c2e:
    ld hl, $d632                                  ; $4c2e: $21 $32 $d6
    ld a, [hl+]                                   ; $4c31: $2a
    ld b, [hl]                                    ; $4c32: $46
    ld c, a                                       ; $4c33: $4f
    ld hl, $d63c                                  ; $4c34: $21 $3c $d6
    ld a, [hl+]                                   ; $4c37: $2a
    ld h, [hl]                                    ; $4c38: $66
    ld l, a                                       ; $4c39: $6f
    ld a, l                                       ; $4c3a: $7d
    sub c                                         ; $4c3b: $91
    ld l, a                                       ; $4c3c: $6f
    ld a, h                                       ; $4c3d: $7c
    sbc b                                         ; $4c3e: $98
    ld h, a                                       ; $4c3f: $67
    bit 7, h                                      ; $4c40: $cb $7c
    jr nz, jr_048_4c4d                            ; $4c42: $20 $09

    ld d, h                                       ; $4c44: $54
    ld e, l                                       ; $4c45: $5d
    ld hl, $d642                                  ; $4c46: $21 $42 $d6
    ld a, e                                       ; $4c49: $7b
    ld [hl+], a                                   ; $4c4a: $22
    ld [hl], d                                    ; $4c4b: $72
    ret                                           ; $4c4c: $c9


jr_048_4c4d:
    xor a                                         ; $4c4d: $af
    ld hl, $d642                                  ; $4c4e: $21 $42 $d6
    ld [hl+], a                                   ; $4c51: $22
    ld [hl+], a                                   ; $4c52: $22
    ret                                           ; $4c53: $c9


Call_048_4c54:
jr_048_4c54:
    push af                                       ; $4c54: $f5
    push de                                       ; $4c55: $d5
    push hl                                       ; $4c56: $e5
    push bc                                       ; $4c57: $c5
    ld a, [hl]                                    ; $4c58: $7e
    sub $20                                       ; $4c59: $d6 $20
    jr z, jr_048_4c6f                             ; $4c5b: $28 $12

    sub $10                                       ; $4c5d: $d6 $10
    add a                                         ; $4c5f: $87
    ld b, a                                       ; $4c60: $47
    ld a, [$d636]                                 ; $4c61: $fa $36 $d6
    ld c, a                                       ; $4c64: $4f
    ld a, b                                       ; $4c65: $78
    add c                                         ; $4c66: $81
    ld c, a                                       ; $4c67: $4f
    ld a, [$d637]                                 ; $4c68: $fa $37 $d6
    ld b, a                                       ; $4c6b: $47
    call Call_000_2798                            ; $4c6c: $cd $98 $27

jr_048_4c6f:
    pop bc                                        ; $4c6f: $c1
    pop hl                                        ; $4c70: $e1
    pop de                                        ; $4c71: $d1
    dec bc                                        ; $4c72: $0b
    inc hl                                        ; $4c73: $23
    ld a, d                                       ; $4c74: $7a
    add $08                                       ; $4c75: $c6 $08
    ld d, a                                       ; $4c77: $57
    pop af                                        ; $4c78: $f1
    dec a                                         ; $4c79: $3d
    jr nz, jr_048_4c54                            ; $4c7a: $20 $d8

    ret                                           ; $4c7c: $c9


Call_048_4c7d:
    and a                                         ; $4c7d: $a7
    jr z, jr_048_4c92                             ; $4c7e: $28 $12

    dec a                                         ; $4c80: $3d
    jr z, jr_048_4cb1                             ; $4c81: $28 $2e

    dec a                                         ; $4c83: $3d
    jr z, jr_048_4ce2                             ; $4c84: $28 $5c

    dec a                                         ; $4c86: $3d
    jr z, jr_048_4cfe                             ; $4c87: $28 $75

    dec a                                         ; $4c89: $3d
    jp z, Jump_048_4d12                           ; $4c8a: $ca $12 $4d

    dec a                                         ; $4c8d: $3d
    jp z, Jump_048_4d2e                           ; $4c8e: $ca $2e $4d

    ret                                           ; $4c91: $c9


jr_048_4c92:
    ld a, $01                                     ; $4c92: $3e $01
    ldh [$96], a                                  ; $4c94: $e0 $96
    ldh [rSVBK], a                                ; $4c96: $e0 $70
    ld hl, $14ae                                  ; $4c98: $21 $ae $14
    ld de, $d442                                  ; $4c9b: $11 $42 $d4
    ld c, $20                                     ; $4c9e: $0e $20
    rst $18                                       ; $4ca0: $df
    ld [hl+], a                                   ; $4ca1: $22
    dec b                                         ; $4ca2: $05
    ld hl, $d042                                  ; $4ca3: $21 $42 $d0
    ld d, $10                                     ; $4ca6: $16 $10
    ld a, $01                                     ; $4ca8: $3e $01
    call Call_048_4dfa                            ; $4caa: $cd $fa $4d
    call Call_048_4dff                            ; $4cad: $cd $ff $4d
    ret                                           ; $4cb0: $c9


jr_048_4cb1:
    ld a, $01                                     ; $4cb1: $3e $01
    ldh [$96], a                                  ; $4cb3: $e0 $96
    ldh [rSVBK], a                                ; $4cb5: $e0 $70
    ld hl, $14af                                  ; $4cb7: $21 $af $14
    ld de, $d422                                  ; $4cba: $11 $22 $d4
    ld c, $20                                     ; $4cbd: $0e $20
    rst $18                                       ; $4cbf: $df
    ld [hl+], a                                   ; $4cc0: $22
    dec b                                         ; $4cc1: $05
    ld hl, $d022                                  ; $4cc2: $21 $22 $d0
    ld d, $10                                     ; $4cc5: $16 $10
    ld a, $01                                     ; $4cc7: $3e $01
    call Call_048_4dfa                            ; $4cc9: $cd $fa $4d
    ld hl, $14b0                                  ; $4ccc: $21 $b0 $14
    ld de, $d462                                  ; $4ccf: $11 $62 $d4
    ld c, $20                                     ; $4cd2: $0e $20
    rst $18                                       ; $4cd4: $df
    ld [hl+], a                                   ; $4cd5: $22
    dec b                                         ; $4cd6: $05
    ld hl, $d062                                  ; $4cd7: $21 $62 $d0
    ld d, $10                                     ; $4cda: $16 $10
    ld a, $01                                     ; $4cdc: $3e $01
    call Call_048_4dfa                            ; $4cde: $cd $fa $4d
    ret                                           ; $4ce1: $c9


jr_048_4ce2:
    ld a, $01                                     ; $4ce2: $3e $01
    ldh [$96], a                                  ; $4ce4: $e0 $96
    ldh [rSVBK], a                                ; $4ce6: $e0 $70
    ld hl, $14b1                                  ; $4ce8: $21 $b1 $14
    ld de, $d601                                  ; $4ceb: $11 $01 $d6
    ld c, $20                                     ; $4cee: $0e $20
    rst $18                                       ; $4cf0: $df
    ld [hl+], a                                   ; $4cf1: $22
    dec b                                         ; $4cf2: $05
    ld hl, $d201                                  ; $4cf3: $21 $01 $d2
    ld d, $10                                     ; $4cf6: $16 $10
    ld a, $01                                     ; $4cf8: $3e $01
    call Call_048_4dfa                            ; $4cfa: $cd $fa $4d
    ret                                           ; $4cfd: $c9


jr_048_4cfe:
    ld a, $07                                     ; $4cfe: $3e $07
    ldh [$96], a                                  ; $4d00: $e0 $96
    ldh [rSVBK], a                                ; $4d02: $e0 $70
    ld hl, $14b2                                  ; $4d04: $21 $b2 $14
    ld de, $dd2b                                  ; $4d07: $11 $2b $dd
    ld c, $20                                     ; $4d0a: $0e $20
    rst $18                                       ; $4d0c: $df
    ld [hl+], a                                   ; $4d0d: $22
    dec b                                         ; $4d0e: $05
    rst $08                                       ; $4d0f: $cf
    ld h, e                                       ; $4d10: $63
    ret                                           ; $4d11: $c9


Jump_048_4d12:
    ld a, $01                                     ; $4d12: $3e $01
    ldh [$96], a                                  ; $4d14: $e0 $96
    ldh [rSVBK], a                                ; $4d16: $e0 $70
    ld hl, $14b3                                  ; $4d18: $21 $b3 $14
    ld de, $d442                                  ; $4d1b: $11 $42 $d4
    ld c, $20                                     ; $4d1e: $0e $20
    rst $18                                       ; $4d20: $df
    ld [hl+], a                                   ; $4d21: $22
    dec b                                         ; $4d22: $05
    ld hl, $d042                                  ; $4d23: $21 $42 $d0
    ld d, $10                                     ; $4d26: $16 $10
    ld a, $01                                     ; $4d28: $3e $01
    call Call_048_4dfa                            ; $4d2a: $cd $fa $4d
    ret                                           ; $4d2d: $c9


Jump_048_4d2e:
    rst $08                                       ; $4d2e: $cf
    nop                                           ; $4d2f: $00
    ld a, $01                                     ; $4d30: $3e $01
    ldh [$96], a                                  ; $4d32: $e0 $96
    ldh [rSVBK], a                                ; $4d34: $e0 $70
    ld hl, $14b4                                  ; $4d36: $21 $b4 $14
    ld de, $d601                                  ; $4d39: $11 $01 $d6
    ld c, $20                                     ; $4d3c: $0e $20
    rst $18                                       ; $4d3e: $df
    ld [hl+], a                                   ; $4d3f: $22
    dec b                                         ; $4d40: $05
    ld hl, $d201                                  ; $4d41: $21 $01 $d2
    ld d, $10                                     ; $4d44: $16 $10
    ld a, $01                                     ; $4d46: $3e $01
    call Call_048_4dfa                            ; $4d48: $cd $fa $4d
    ret                                           ; $4d4b: $c9


    ld a, $05                                     ; $4d4c: $3e $05
    ldh [$96], a                                  ; $4d4e: $e0 $96
    ldh [rSVBK], a                                ; $4d50: $e0 $70
    rst $18                                       ; $4d52: $df
    inc h                                         ; $4d53: $24
    dec b                                         ; $4d54: $05
    ld hl, $c600                                  ; $4d55: $21 $00 $c6
    ld de, $d800                                  ; $4d58: $11 $00 $d8

jr_048_4d5b:
    ld a, $05                                     ; $4d5b: $3e $05
    ldh [$96], a                                  ; $4d5d: $e0 $96
    ldh [rSVBK], a                                ; $4d5f: $e0 $70
    ld b, [hl]                                    ; $4d61: $46
    ld a, $01                                     ; $4d62: $3e $01
    ldh [$96], a                                  ; $4d64: $e0 $96
    ldh [rSVBK], a                                ; $4d66: $e0 $70
    ld a, b                                       ; $4d68: $78
    ld [de], a                                    ; $4d69: $12
    inc hl                                        ; $4d6a: $23
    inc de                                        ; $4d6b: $13
    and a                                         ; $4d6c: $a7
    jr nz, jr_048_4d5b                            ; $4d6d: $20 $ec

    ret                                           ; $4d6f: $c9


    push af                                       ; $4d70: $f5
    push bc                                       ; $4d71: $c5
    push de                                       ; $4d72: $d5
    push hl                                       ; $4d73: $e5
    ldh a, [$96]                                  ; $4d74: $f0 $96
    push af                                       ; $4d76: $f5
    ld a, $06                                     ; $4d77: $3e $06
    ldh [$96], a                                  ; $4d79: $e0 $96
    ldh [rSVBK], a                                ; $4d7b: $e0 $70
    xor a                                         ; $4d7d: $af
    ld [$d400], a                                 ; $4d7e: $ea $00 $d4
    pop af                                        ; $4d81: $f1
    ldh [$96], a                                  ; $4d82: $e0 $96
    ldh [rSVBK], a                                ; $4d84: $e0 $70
    pop hl                                        ; $4d86: $e1
    pop de                                        ; $4d87: $d1
    pop bc                                        ; $4d88: $c1
    pop af                                        ; $4d89: $f1
    push af                                       ; $4d8a: $f5
    push bc                                       ; $4d8b: $c5
    push de                                       ; $4d8c: $d5
    push hl                                       ; $4d8d: $e5
    ldh a, [$96]                                  ; $4d8e: $f0 $96
    push af                                       ; $4d90: $f5
    ld a, $01                                     ; $4d91: $3e $01
    call Call_048_4053                            ; $4d93: $cd $53 $40
    ld a, $06                                     ; $4d96: $3e $06
    ldh [$96], a                                  ; $4d98: $e0 $96
    ldh [rSVBK], a                                ; $4d9a: $e0 $70
    ld a, [$d63b]                                 ; $4d9c: $fa $3b $d6
    and a                                         ; $4d9f: $a7
    jr z, jr_048_4dba                             ; $4da0: $28 $18

    rst $18                                       ; $4da2: $df
    nop                                           ; $4da3: $00
    ld b, c                                       ; $4da4: $41
    ld a, $06                                     ; $4da5: $3e $06
    ldh [$96], a                                  ; $4da7: $e0 $96
    ldh [rSVBK], a                                ; $4da9: $e0 $70
    ld a, $01                                     ; $4dab: $3e $01
    ld [$d400], a                                 ; $4dad: $ea $00 $d4
    ld a, $01                                     ; $4db0: $3e $01
    ld de, $0000                                  ; $4db2: $11 $00 $00
    ld h, $04                                     ; $4db5: $26 $04
    call Call_048_4053                            ; $4db7: $cd $53 $40

jr_048_4dba:
    pop af                                        ; $4dba: $f1
    ldh [$96], a                                  ; $4dbb: $e0 $96
    ldh [rSVBK], a                                ; $4dbd: $e0 $70
    pop hl                                        ; $4dbf: $e1
    pop de                                        ; $4dc0: $d1
    pop bc                                        ; $4dc1: $c1
    pop af                                        ; $4dc2: $f1
    ret                                           ; $4dc3: $c9


Call_048_4dc4:
    and a                                         ; $4dc4: $a7
    ret z                                         ; $4dc5: $c8

    ld a, $06                                     ; $4dc6: $3e $06
    ldh [$96], a                                  ; $4dc8: $e0 $96
    ldh [rSVBK], a                                ; $4dca: $e0 $70
    ld a, [$d551]                                 ; $4dcc: $fa $51 $d5
    and a                                         ; $4dcf: $a7
    jr z, jr_048_4dd5                             ; $4dd0: $28 $03

    call Call_000_2e3b                            ; $4dd2: $cd $3b $2e

jr_048_4dd5:
    ldh a, [$96]                                  ; $4dd5: $f0 $96
    push af                                       ; $4dd7: $f5
    ld a, $07                                     ; $4dd8: $3e $07
    ldh [$96], a                                  ; $4dda: $e0 $96
    ldh [rSVBK], a                                ; $4ddc: $e0 $70
    ld hl, $da00                                  ; $4dde: $21 $00 $da
    ld de, $b820                                  ; $4de1: $11 $20 $b8
    ld c, $06                                     ; $4de4: $0e $06
    call Call_000_0468                            ; $4de6: $cd $68 $04
    ld hl, $db00                                  ; $4de9: $21 $00 $db
    ld de, $9820                                  ; $4dec: $11 $20 $98
    ld c, $06                                     ; $4def: $0e $06
    call Call_000_0468                            ; $4df1: $cd $68 $04
    pop af                                        ; $4df4: $f1
    ldh [$96], a                                  ; $4df5: $e0 $96
    ldh [rSVBK], a                                ; $4df7: $e0 $70
    ret                                           ; $4df9: $c9


Call_048_4dfa:
jr_048_4dfa:
    ld [hl+], a                                   ; $4dfa: $22
    dec d                                         ; $4dfb: $15
    jr nz, jr_048_4dfa                            ; $4dfc: $20 $fc

    ret                                           ; $4dfe: $c9


Call_048_4dff:
    ld a, [$caad]                                 ; $4dff: $fa $ad $ca
    and a                                         ; $4e02: $a7
    ret z                                         ; $4e03: $c8

    ldh a, [$96]                                  ; $4e04: $f0 $96
    push af                                       ; $4e06: $f5
    ld a, $07                                     ; $4e07: $3e $07
    ldh [$96], a                                  ; $4e09: $e0 $96
    ldh [rSVBK], a                                ; $4e0b: $e0 $70
    ld hl, $db00                                  ; $4e0d: $21 $00 $db
    ld de, $4487                                  ; $4e10: $11 $87 $44
    ld c, $14                                     ; $4e13: $0e $14
    call Call_048_4f37                            ; $4e15: $cd $37 $4f
    ld hl, $db20                                  ; $4e18: $21 $20 $db
    ld de, $4487                                  ; $4e1b: $11 $87 $44
    ld c, $14                                     ; $4e1e: $0e $14
    call Call_048_4f37                            ; $4e20: $cd $37 $4f
    ld hl, $db40                                  ; $4e23: $21 $40 $db
    ld de, $4487                                  ; $4e26: $11 $87 $44
    ld c, $14                                     ; $4e29: $0e $14
    call Call_048_4f37                            ; $4e2b: $cd $37 $4f
    ld hl, $da00                                  ; $4e2e: $21 $00 $da
    ld de, $4488                                  ; $4e31: $11 $88 $44
    ld c, $14                                     ; $4e34: $0e $14
    call Call_048_4f37                            ; $4e36: $cd $37 $4f
    ld hl, $da20                                  ; $4e39: $21 $20 $da
    ld de, $4488                                  ; $4e3c: $11 $88 $44
    ld c, $14                                     ; $4e3f: $0e $14
    call Call_048_4f37                            ; $4e41: $cd $37 $4f
    ld hl, $da40                                  ; $4e44: $21 $40 $da
    ld de, $4488                                  ; $4e47: $11 $88 $44
    ld c, $14                                     ; $4e4a: $0e $14
    call Call_048_4f37                            ; $4e4c: $cd $37 $4f
    pop af                                        ; $4e4f: $f1
    ldh [$96], a                                  ; $4e50: $e0 $96
    ldh [rSVBK], a                                ; $4e52: $e0 $70
    ld a, [$caad]                                 ; $4e54: $fa $ad $ca
    cp $01                                        ; $4e57: $fe $01
    jr z, jr_048_4e84                             ; $4e59: $28 $29

    cp $02                                        ; $4e5b: $fe $02
    jr z, jr_048_4ea2                             ; $4e5d: $28 $43

    cp $03                                        ; $4e5f: $fe $03
    jr z, jr_048_4ec0                             ; $4e61: $28 $5d

    cp $14                                        ; $4e63: $fe $14
    jp z, Jump_048_4ede                           ; $4e65: $ca $de $4e

    cp $15                                        ; $4e68: $fe $15
    jp z, Jump_048_4ee7                           ; $4e6a: $ca $e7 $4e

    cp $16                                        ; $4e6d: $fe $16
    jp z, Jump_048_4ef0                           ; $4e6f: $ca $f0 $4e

    cp $17                                        ; $4e72: $fe $17
    jp z, Jump_048_4ef9                           ; $4e74: $ca $f9 $4e

    cp $18                                        ; $4e77: $fe $18
    jp z, Jump_048_4f02                           ; $4e79: $ca $02 $4f

    cp $19                                        ; $4e7c: $fe $19
    jp z, Jump_048_4f0b                           ; $4e7e: $ca $0b $4f

    jp Jump_048_4f13                              ; $4e81: $c3 $13 $4f


jr_048_4e84:
    ld a, $07                                     ; $4e84: $3e $07
    ldh [$96], a                                  ; $4e86: $e0 $96
    ldh [rSVBK], a                                ; $4e88: $e0 $70
    ld hl, $14b6                                  ; $4e8a: $21 $b6 $14
    ld de, $db42                                  ; $4e8d: $11 $42 $db
    ld c, $20                                     ; $4e90: $0e $20
    rst $18                                       ; $4e92: $df
    ld [hl+], a                                   ; $4e93: $22
    dec b                                         ; $4e94: $05
    ld hl, $da42                                  ; $4e95: $21 $42 $da
    ld d, $11                                     ; $4e98: $16 $11
    ld a, $01                                     ; $4e9a: $3e $01
    call Call_048_4dfa                            ; $4e9c: $cd $fa $4d
    jp Jump_048_4f1b                              ; $4e9f: $c3 $1b $4f


jr_048_4ea2:
    ld a, $07                                     ; $4ea2: $3e $07
    ldh [$96], a                                  ; $4ea4: $e0 $96
    ldh [rSVBK], a                                ; $4ea6: $e0 $70
    ld hl, $14b7                                  ; $4ea8: $21 $b7 $14
    ld de, $db42                                  ; $4eab: $11 $42 $db
    ld c, $20                                     ; $4eae: $0e $20
    rst $18                                       ; $4eb0: $df
    ld [hl+], a                                   ; $4eb1: $22
    dec b                                         ; $4eb2: $05
    ld hl, $da42                                  ; $4eb3: $21 $42 $da
    ld d, $11                                     ; $4eb6: $16 $11
    ld a, $01                                     ; $4eb8: $3e $01
    call Call_048_4dfa                            ; $4eba: $cd $fa $4d
    jp Jump_048_4f1b                              ; $4ebd: $c3 $1b $4f


jr_048_4ec0:
    ld a, $07                                     ; $4ec0: $3e $07
    ldh [$96], a                                  ; $4ec2: $e0 $96
    ldh [rSVBK], a                                ; $4ec4: $e0 $70
    ld hl, $14b8                                  ; $4ec6: $21 $b8 $14
    ld de, $db42                                  ; $4ec9: $11 $42 $db
    ld c, $20                                     ; $4ecc: $0e $20
    rst $18                                       ; $4ece: $df
    ld [hl+], a                                   ; $4ecf: $22
    dec b                                         ; $4ed0: $05
    ld hl, $da42                                  ; $4ed1: $21 $42 $da
    ld d, $11                                     ; $4ed4: $16 $11
    ld a, $01                                     ; $4ed6: $3e $01
    call Call_048_4dfa                            ; $4ed8: $cd $fa $4d
    jp Jump_048_4f1b                              ; $4edb: $c3 $1b $4f


Jump_048_4ede:
    ld hl, $0047                                  ; $4ede: $21 $47 $00
    call Call_048_4f3f                            ; $4ee1: $cd $3f $4f
    jp Jump_048_4f1b                              ; $4ee4: $c3 $1b $4f


Jump_048_4ee7:
    ld hl, $0048                                  ; $4ee7: $21 $48 $00
    call Call_048_4f3f                            ; $4eea: $cd $3f $4f
    jp Jump_048_4f1b                              ; $4eed: $c3 $1b $4f


Jump_048_4ef0:
    ld hl, $0049                                  ; $4ef0: $21 $49 $00
    call Call_048_4f3f                            ; $4ef3: $cd $3f $4f
    jp Jump_048_4f1b                              ; $4ef6: $c3 $1b $4f


Jump_048_4ef9:
    ld hl, $004a                                  ; $4ef9: $21 $4a $00
    call Call_048_4f3f                            ; $4efc: $cd $3f $4f
    jp Jump_048_4f1b                              ; $4eff: $c3 $1b $4f


Jump_048_4f02:
    ld hl, $004b                                  ; $4f02: $21 $4b $00
    call Call_048_4f3f                            ; $4f05: $cd $3f $4f
    jp Jump_048_4f1b                              ; $4f08: $c3 $1b $4f


Jump_048_4f0b:
    ld hl, $004c                                  ; $4f0b: $21 $4c $00
    call Call_048_4f3f                            ; $4f0e: $cd $3f $4f
    jr jr_048_4f1b                                ; $4f11: $18 $08

Jump_048_4f13:
    ld hl, $004d                                  ; $4f13: $21 $4d $00
    call Call_048_4f3f                            ; $4f16: $cd $3f $4f
    jr jr_048_4f1b                                ; $4f19: $18 $00

Jump_048_4f1b:
jr_048_4f1b:
    ld a, $07                                     ; $4f1b: $3e $07
    ldh [$96], a                                  ; $4f1d: $e0 $96
    ldh [rSVBK], a                                ; $4f1f: $e0 $70
    ld hl, $14b5                                  ; $4f21: $21 $b5 $14
    ld de, $db02                                  ; $4f24: $11 $02 $db
    ld c, $20                                     ; $4f27: $0e $20
    rst $18                                       ; $4f29: $df
    ld [hl+], a                                   ; $4f2a: $22
    dec b                                         ; $4f2b: $05
    ld hl, $da02                                  ; $4f2c: $21 $02 $da
    ld d, $11                                     ; $4f2f: $16 $11
    ld a, $01                                     ; $4f31: $3e $01
    call Call_048_4dfa                            ; $4f33: $cd $fa $4d
    ret                                           ; $4f36: $c9


Call_048_4f37:
jr_048_4f37:
    ld a, [de]                                    ; $4f37: $1a
    inc de                                        ; $4f38: $13
    inc de                                        ; $4f39: $13
    ld [hl+], a                                   ; $4f3a: $22
    dec c                                         ; $4f3b: $0d
    jr nz, jr_048_4f37                            ; $4f3c: $20 $f9

    ret                                           ; $4f3e: $c9


Call_048_4f3f:
    push hl                                       ; $4f3f: $e5
    ld a, $07                                     ; $4f40: $3e $07
    ldh [$96], a                                  ; $4f42: $e0 $96
    ldh [rSVBK], a                                ; $4f44: $e0 $70
    ld hl, $14b9                                  ; $4f46: $21 $b9 $14
    ld de, $db42                                  ; $4f49: $11 $42 $db
    ld c, $20                                     ; $4f4c: $0e $20
    rst $18                                       ; $4f4e: $df
    ld [hl+], a                                   ; $4f4f: $22
    dec b                                         ; $4f50: $05
    pop hl                                        ; $4f51: $e1
    ld de, $db4a                                  ; $4f52: $11 $4a $db
    ld c, $20                                     ; $4f55: $0e $20
    rst $18                                       ; $4f57: $df
    ld [hl+], a                                   ; $4f58: $22
    dec b                                         ; $4f59: $05
    ld hl, $da42                                  ; $4f5a: $21 $42 $da
    ld d, $11                                     ; $4f5d: $16 $11
    ld a, $01                                     ; $4f5f: $3e $01
    call Call_048_4dfa                            ; $4f61: $cd $fa $4d
    ret                                           ; $4f64: $c9


    nop                                           ; $4f65: $00
    nop                                           ; $4f66: $00
    nop                                           ; $4f67: $00
    nop                                           ; $4f68: $00
    nop                                           ; $4f69: $00
    nop                                           ; $4f6a: $00
    nop                                           ; $4f6b: $00
    nop                                           ; $4f6c: $00
    nop                                           ; $4f6d: $00
    nop                                           ; $4f6e: $00
    nop                                           ; $4f6f: $00
    rst $38                                       ; $4f70: $ff
    rst $38                                       ; $4f71: $ff
    rst $38                                       ; $4f72: $ff
    ret nz                                        ; $4f73: $c0

    rst $38                                       ; $4f74: $ff
    sbc a                                         ; $4f75: $9f
    ldh [$b0], a                                  ; $4f76: $e0 $b0
    rst $08                                       ; $4f78: $cf
    rst $38                                       ; $4f79: $ff
    and a                                         ; $4f7a: $a7
    rst $18                                       ; $4f7b: $df
    xor h                                         ; $4f7c: $ac
    call c, $d8a8                                 ; $4f7d: $dc $a8 $d8
    xor b                                         ; $4f80: $a8
    ret c                                         ; $4f81: $d8

    add a                                         ; $4f82: $87
    rst $38                                       ; $4f83: $ff
    rst $38                                       ; $4f84: $ff
    nop                                           ; $4f85: $00
    db $fd                                        ; $4f86: $fd
    ldh [$fc], a                                  ; $4f87: $e0 $fc
    ldh [$fb], a                                  ; $4f89: $e0 $fb
    ldh [$fe], a                                  ; $4f8b: $e0 $fe
    pop hl                                        ; $4f8d: $e1
    rst $38                                       ; $4f8e: $ff
    rst $38                                       ; $4f8f: $ff
    rst $38                                       ; $4f90: $ff
    inc bc                                        ; $4f91: $03
    rst $38                                       ; $4f92: $ff
    ld sp, hl                                     ; $4f93: $f9
    rlca                                          ; $4f94: $07
    dec c                                         ; $4f95: $0d
    di                                            ; $4f96: $f3
    push hl                                       ; $4f97: $e5
    ld a, a                                       ; $4f98: $7f
    ei                                            ; $4f99: $fb
    dec [hl]                                      ; $4f9a: $35
    dec sp                                        ; $4f9b: $3b
    dec d                                         ; $4f9c: $15
    dec de                                        ; $4f9d: $1b
    dec d                                         ; $4f9e: $15
    dec de                                        ; $4f9f: $1b
    ldh [$e9], a                                  ; $4fa0: $e0 $e9
    ld sp, hl                                     ; $4fa2: $f9
    ld a, [bc]                                    ; $4fa3: $0a
    rst $38                                       ; $4fa4: $ff
    ldh [$d0], a                                  ; $4fa5: $e0 $d0
    rst $20                                       ; $4fa7: $e7
    inc b                                         ; $4fa8: $04
    inc b                                         ; $4fa9: $04
    ld a, [bc]                                    ; $4faa: $0a
    ld a, [bc]                                    ; $4fab: $0a
    inc b                                         ; $4fac: $04
    ld bc, $ca04                                  ; $4fad: $01 $04 $ca
    db $e3                                        ; $4fb0: $e3
    rst $38                                       ; $4fb1: $ff
    rst $38                                       ; $4fb2: $ff
    rst $38                                       ; $4fb3: $ff
    rst $38                                       ; $4fb4: $ff
    rst $38                                       ; $4fb5: $ff
    rst $38                                       ; $4fb6: $ff
    rst $38                                       ; $4fb7: $ff
    rst $38                                       ; $4fb8: $ff
    rst $38                                       ; $4fb9: $ff
    rst $38                                       ; $4fba: $ff
    inc c                                         ; $4fbb: $0c
    pop hl                                        ; $4fbc: $e1
    ret nz                                        ; $4fbd: $c0

    db $fc                                        ; $4fbe: $fc
    jp hl                                         ; $4fbf: $e9


    ld bc, $fee0                                  ; $4fc0: $01 $e0 $fe
    ld [$e10c], a                                 ; $4fc3: $ea $0c $e1
    db $fc                                        ; $4fc6: $fc
    jp hl                                         ; $4fc7: $e9


    xor [hl]                                      ; $4fc8: $ae
    db $ed                                        ; $4fc9: $ed
    ldh [$e0], a                                  ; $4fca: $e0 $e0
    ld a, e                                       ; $4fcc: $7b
    add b                                         ; $4fcd: $80
    add b                                         ; $4fce: $80
    sbc d                                         ; $4fcf: $9a
    jp hl                                         ; $4fd0: $e9


    rlca                                          ; $4fd1: $07
    rlca                                          ; $4fd2: $07
    ld bc, $8a01                                  ; $4fd3: $01 $01 $8a
    rst $38                                       ; $4fd6: $ff
    ldh [rIE], a                                  ; $4fd7: $e0 $ff
    rst $38                                       ; $4fd9: $ff
    rst $38                                       ; $4fda: $ff
    rst $38                                       ; $4fdb: $ff
    rst $38                                       ; $4fdc: $ff
    rst $38                                       ; $4fdd: $ff
    rst $38                                       ; $4fde: $ff
    rst $38                                       ; $4fdf: $ff
    nop                                           ; $4fe0: $00
    db $e3                                        ; $4fe1: $e3
    xor h                                         ; $4fe2: $ac
    call c, Call_000_3fa7                         ; $4fe3: $dc $a7 $3f
    rst $18                                       ; $4fe6: $df
    or b                                          ; $4fe7: $b0
    rst $08                                       ; $4fe8: $cf
    sbc a                                         ; $4fe9: $9f
    ldh [$c0], a                                  ; $4fea: $e0 $c0
    ld a, [bc]                                    ; $4fec: $0a
    ret z                                         ; $4fed: $c8

    ld a, [$fea5]                                 ; $4fee: $fa $a5 $fe
    inc c                                         ; $4ff1: $0c
    pop bc                                        ; $4ff2: $c1
    dec [hl]                                      ; $4ff3: $35
    dec sp                                        ; $4ff4: $3b
    push hl                                       ; $4ff5: $e5
    ei                                            ; $4ff6: $fb
    dec c                                         ; $4ff7: $0d
    di                                            ; $4ff8: $f3
    ld sp, hl                                     ; $4ff9: $f9
    db $eb                                        ; $4ffa: $eb
    rlca                                          ; $4ffb: $07
    inc bc                                        ; $4ffc: $03
    ld [$7fa1], a                                 ; $4ffd: $ea $a1 $7f
    cp $e0                                        ; $5000: $fe $e0
    ccf                                           ; $5002: $3f
    rra                                           ; $5003: $1f
    nop                                           ; $5004: $00
    rra                                           ; $5005: $1f
    nop                                           ; $5006: $00
    rrca                                          ; $5007: $0f
    nop                                           ; $5008: $00
    inc bc                                        ; $5009: $03
    nop                                           ; $500a: $00
    di                                            ; $500b: $f3
    ldh [$d0], a                                  ; $500c: $e0 $d0
    call $ffff                                    ; $500e: $cd $ff $ff
    nop                                           ; $5011: $00
    rst $38                                       ; $5012: $ff
    rst $38                                       ; $5013: $ff
    rst $38                                       ; $5014: $ff
    rst $38                                       ; $5015: $ff
    rst $38                                       ; $5016: $ff
    rst $38                                       ; $5017: $ff
    rst $38                                       ; $5018: $ff
    rst $38                                       ; $5019: $ff
    push hl                                       ; $501a: $e5
    db $e4                                        ; $501b: $e4
    rrca                                          ; $501c: $0f
    jp nz, $a10e                                  ; $501d: $c2 $0e $a1

    ld hl, sp-$01                                 ; $5020: $f8 $ff
    db $fc                                        ; $5022: $fc
    add sp, -$19                                  ; $5023: $e8 $e7
    db $f4                                        ; $5025: $f4
    di                                            ; $5026: $f3
    ld bc, $fefe                                  ; $5027: $01 $fe $fe
    nop                                           ; $502a: $00
    inc bc                                        ; $502b: $03
    db $fc                                        ; $502c: $fc
    rst $38                                       ; $502d: $ff
    ld [$10f0], sp                                ; $502e: $08 $f0 $10
    ldh [$e0], a                                  ; $5031: $e0 $e0
    nop                                           ; $5033: $00
    ld h, b                                       ; $5034: $60
    add b                                         ; $5035: $80
    rra                                           ; $5036: $1f
    and b                                         ; $5037: $a0
    nop                                           ; $5038: $00
    jr nz, jr_048_503b                            ; $5039: $20 $00

jr_048_503b:
    ld [hl], c                                    ; $503b: $71
    or a                                          ; $503c: $b7
    add c                                         ; $503d: $81
    db $fd                                        ; $503e: $fd
    ld [c], a                                     ; $503f: $e2
    xor d                                         ; $5040: $aa
    ld [c], a                                     ; $5041: $e2
    ld a, [$d0df]                                 ; $5042: $fa $df $d0
    ccf                                           ; $5045: $3f
    cp h                                          ; $5046: $bc
    pop bc                                        ; $5047: $c1
    rra                                           ; $5048: $1f
    pop af                                        ; $5049: $f1
    ld sp, $2eee                                  ; $504a: $31 $ee $2e
    cp a                                          ; $504d: $bf
    rst $28                                       ; $504e: $ef
    cpl                                           ; $504f: $2f
    add sp, $28                                   ; $5050: $e8 $28
    xor $2e                                       ; $5052: $ee $2e
    add b                                         ; $5054: $80
    and c                                         ; $5055: $a1
    ld a, a                                       ; $5056: $7f
    cp a                                          ; $5057: $bf
    rst $38                                       ; $5058: $ff
    add $c6                                       ; $5059: $c6 $c6
    cp e                                          ; $505b: $bb
    cp e                                          ; $505c: $bb
    xor d                                         ; $505d: $aa
    db $fd                                        ; $505e: $fd
    ldh [$ab], a                                  ; $505f: $e0 $ab
    db $fd                                        ; $5061: $fd
    cp d                                          ; $5062: $ba
    ld [hl], b                                    ; $5063: $70
    and c                                         ; $5064: $a1
    ei                                            ; $5065: $fb
    rst $38                                       ; $5066: $ff
    ld c, $0a                                     ; $5067: $0e $0a
    cp [hl]                                       ; $5069: $be
    cp d                                          ; $506a: $ba
    cp a                                          ; $506b: $bf
    and d                                         ; $506c: $a2
    cp [hl]                                       ; $506d: $be
    cp [hl]                                       ; $506e: $be
    and d                                         ; $506f: $a2
    and d                                         ; $5070: $a2
    cp [hl]                                       ; $5071: $be
    ld h, b                                       ; $5072: $60
    and d                                         ; $5073: $a2
    db $fd                                        ; $5074: $fd
    rst $38                                       ; $5075: $ff
    dec d                                         ; $5076: $15
    rla                                           ; $5077: $17
    rst $30                                       ; $5078: $f7
    rst $30                                       ; $5079: $f7
    ld a, [$3dfa]                                 ; $507a: $fa $fa $3d
    dec l                                         ; $507d: $2d
    ei                                            ; $507e: $fb
    ld a, [$50fa]                                 ; $507f: $fa $fa $50
    and c                                         ; $5082: $a1
    db $fc                                        ; $5083: $fc
    rst $38                                       ; $5084: $ff
    ld b, a                                       ; $5085: $47
    ld b, [hl]                                    ; $5086: $46
    ld e, d                                       ; $5087: $5a
    ld a, a                                       ; $5088: $7f
    ld e, e                                       ; $5089: $5b
    db $db                                        ; $508a: $db
    jp c, $dadb                                   ; $508b: $da $db $da

    rst $00                                       ; $508e: $c7
    add $41                                       ; $508f: $c6 $41
    db $e3                                        ; $5091: $e3
    rst $38                                       ; $5092: $ff
    adc h                                         ; $5093: $8c
    adc h                                         ; $5094: $8c
    or a                                          ; $5095: $b7
    or a                                          ; $5096: $b7
    or a                                          ; $5097: $b7
    or l                                          ; $5098: $b5
    or l                                          ; $5099: $b5
    or a                                          ; $509a: $b7
    ei                                            ; $509b: $fb
    adc a                                         ; $509c: $8f
    adc l                                         ; $509d: $8d
    ld sp, $19e3                                  ; $509e: $31 $e3 $19
    add hl, de                                    ; $50a1: $19
    halt                                          ; $50a2: $76

jr_048_50a3:
    halt                                          ; $50a3: $76
    ld d, a                                       ; $50a4: $57
    rst $38                                       ; $50a5: $ff
    ld [hl], a                                    ; $50a6: $77
    ld a, c                                       ; $50a7: $79
    ld e, c                                       ; $50a8: $59
    ld a, [hl]                                    ; $50a9: $7e
    ld e, [hl]                                    ; $50aa: $5e
    db $fc                                        ; $50ab: $fc
    nop                                           ; $50ac: $00
    ld a, [$06ff]                                 ; $50ad: $fa $ff $06
    dec a                                         ; $50b0: $3d
    ei                                            ; $50b1: $fb
    jp hl                                         ; $50b2: $e9


    xor a                                         ; $50b3: $af
    xor l                                         ; $50b4: $ad
    db $eb                                        ; $50b5: $eb
    jp hl                                         ; $50b6: $e9


    rst $38                                       ; $50b7: $ff
    xor a                                         ; $50b8: $af
    db $ed                                        ; $50b9: $ed
    xor e                                         ; $50ba: $ab
    xor l                                         ; $50bb: $ad
    db $eb                                        ; $50bc: $eb
    nop                                           ; $50bd: $00
    rst $38                                       ; $50be: $ff
    ld [bc], a                                    ; $50bf: $02
    rst $28                                       ; $50c0: $ef
    db $fc                                        ; $50c1: $fc
    db $fc                                        ; $50c2: $fc
    nop                                           ; $50c3: $00
    ld hl, sp-$02                                 ; $50c4: $f8 $fe
    ld [c], a                                     ; $50c6: $e2
    and $00                                       ; $50c7: $e6 $00
    pop bc                                        ; $50c9: $c1
    ld [hl], d                                    ; $50ca: $72
    ld b, $80                                     ; $50cb: $06 $80
    ld b, b                                       ; $50cd: $40
    ld [hl+], a                                   ; $50ce: $22
    ret nz                                        ; $50cf: $c0

    inc hl                                        ; $50d0: $23
    pop bc                                        ; $50d1: $c1
    ld hl, $6100                                  ; $50d2: $21 $00 $61
    ldh a, [$e2]                                  ; $50d5: $f0 $e2
    ld hl, sp-$0d                                 ; $50d7: $f8 $f3
    and d                                         ; $50d9: $a2
    jr nz, jr_048_50a3                            ; $50da: $20 $c7

    ldh a, [$ea]                                  ; $50dc: $f0 $ea
    rrca                                          ; $50de: $0f
    nop                                           ; $50df: $00

jr_048_50e0:
    ld bc, $03fe                                  ; $50e0: $01 $fe $03
    xor a                                         ; $50e3: $af
    db $fc                                        ; $50e4: $fc
    cp $00                                        ; $50e5: $fe $00
    cp $c4                                        ; $50e7: $fe $c4
    ld [c], a                                     ; $50e9: $e2
    add b                                         ; $50ea: $80
    cp $e0                                        ; $50eb: $fe $e0
    adc a                                         ; $50ed: $8f
    ei                                            ; $50ee: $fb
    nop                                           ; $50ef: $00
    rlca                                          ; $50f0: $07
    rst $00                                       ; $50f1: $c7
    ld h, b                                       ; $50f2: $60
    inc b                                         ; $50f3: $04
    nop                                           ; $50f4: $00
    ld b, $00                                     ; $50f5: $06 $00
    ld c, $f8                                     ; $50f7: $0e $f8
    xor d                                         ; $50f9: $aa
    ldh [$a0], a                                  ; $50fa: $e0 $a0
    add $df                                       ; $50fc: $c6 $df
    or [hl]                                       ; $50fe: $b6
    xor $2e                                       ; $50ff: $ee $2e
    ldh a, [$30]                                  ; $5101: $f0 $30
    rst $38                                       ; $5103: $ff
    rst $38                                       ; $5104: $ff
    rra                                           ; $5105: $1f
    db $fc                                        ; $5106: $fc
    inc bc                                        ; $5107: $03
    db $e3                                        ; $5108: $e3

jr_048_5109:
    inc e                                         ; $5109: $1c
    rst $08                                       ; $510a: $cf
    jr nc, jr_048_5109                            ; $510b: $30 $fc

    rst $18                                       ; $510d: $df
    inc bc                                        ; $510e: $03
    ret nz                                        ; $510f: $c0

    ccf                                           ; $5110: $3f
    cp d                                          ; $5111: $ba
    cp e                                          ; $5112: $bb
    inc a                                         ; $5113: $3c
    ldh [$fc], a                                  ; $5114: $e0 $fc
    add hl, de                                    ; $5116: $19
    sbc a                                         ; $5117: $9f
    and $e7                                       ; $5118: $e6 $e7
    jr @-$05                                      ; $511a: $18 $f9

    ld b, $76                                     ; $511c: $06 $76
    ld h, c                                       ; $511e: $61
    inc c                                         ; $511f: $0c
    ld [c], a                                     ; $5120: $e2
    db $e3                                        ; $5121: $e3
    cp a                                          ; $5122: $bf
    add hl, sp                                    ; $5123: $39
    add $cf                                       ; $5124: $c6 $cf
    jr nc, jr_048_50e0                            ; $5126: $30 $b8

    ld b, a                                       ; $5128: $47
    ld h, [hl]                                    ; $5129: $66
    ld h, c                                       ; $512a: $61
    rst $30                                       ; $512b: $f7
    rst $38                                       ; $512c: $ff
    rst $30                                       ; $512d: $f7
    dec d                                         ; $512e: $15
    rla                                           ; $512f: $17
    rst $38                                       ; $5130: $ff
    db $fd                                        ; $5131: $fd
    db $fc                                        ; $5132: $fc
    inc bc                                        ; $5133: $03
    adc a                                         ; $5134: $8f
    rst $30                                       ; $5135: $f7
    ld [hl], b                                    ; $5136: $70
    ld sp, $56ce                                  ; $5137: $31 $ce $56
    ld h, c                                       ; $513a: $61
    ld e, h                                       ; $513b: $5c
    ld e, a                                       ; $513c: $5f
    ld e, a                                       ; $513d: $5f
    ld d, b                                       ; $513e: $50
    rst $38                                       ; $513f: $ff
    or $f9                                        ; $5140: $f6 $f9
    add hl, de                                    ; $5142: $19
    and $f7                                       ; $5143: $e6 $f7
    ld [$32cd], sp                                ; $5145: $08 $cd $32
    cp $46                                        ; $5148: $fe $46
    ld h, c                                       ; $514a: $61
    cp c                                          ; $514b: $b9
    cp a                                          ; $514c: $bf
    cp a                                          ; $514d: $bf
    and c                                         ; $514e: $a1
    rst $20                                       ; $514f: $e7
    ld sp, hl                                     ; $5150: $f9
    ld hl, sp-$21                                 ; $5151: $f8 $df
    rlca                                          ; $5153: $07
    rrca                                          ; $5154: $0f
    ldh a, [$9b]                                  ; $5155: $f0 $9b
    ld h, h                                       ; $5157: $64
    ld [hl], $61                                  ; $5158: $36 $61
    ld d, [hl]                                    ; $515a: $56
    halt                                          ; $515b: $76
    rst $08                                       ; $515c: $cf
    ld a, c                                       ; $515d: $79
    ld e, c                                       ; $515e: $59
    rst $08                                       ; $515f: $cf
    rst $38                                       ; $5160: $ff
    ret nz                                        ; $5161: $c0

    pop hl                                        ; $5162: $e1
    ld a, [hl+]                                   ; $5163: $2a
    ld h, d                                       ; $5164: $62
    nop                                           ; $5165: $00
    db $fd                                        ; $5166: $fd
    rst $38                                       ; $5167: $ff
    cp e                                          ; $5168: $bb
    jp hl                                         ; $5169: $e9


    xor a                                         ; $516a: $af
    dec a                                         ; $516b: $3d
    ei                                            ; $516c: $fb
    db $fd                                        ; $516d: $fd
    inc bc                                        ; $516e: $03
    adc l                                         ; $516f: $8d
    rst $38                                       ; $5170: $ff
    ld [hl], e                                    ; $5171: $73
    pop af                                        ; $5172: $f1
    rrca                                          ; $5173: $0f
    ld a, l                                       ; $5174: $7d

jr_048_5175:
    add e                                         ; $5175: $83
    add c                                         ; $5176: $81
    ld a, a                                       ; $5177: $7f
    ldh [$7f], a                                  ; $5178: $e0 $7f
    add b                                         ; $517a: $80
    ld a, [c]                                     ; $517b: $f2
    ldh [$fe], a                                  ; $517c: $e0 $fe
    ld hl, sp-$01                                 ; $517e: $f8 $ff
    cp $58                                        ; $5180: $fe $58
    push bc                                       ; $5182: $c5
    or a                                          ; $5183: $b7
    ld bc, $2300                                  ; $5184: $01 $00 $23
    ld l, h                                       ; $5187: $6c
    ret nz                                        ; $5188: $c0

    ld e, $00                                     ; $5189: $1e $00
    di                                            ; $518b: $f3
    add c                                         ; $518c: $81
    db $f4                                        ; $518d: $f4
    rst $28                                       ; $518e: $ef
    rst $38                                       ; $518f: $ff
    and b                                         ; $5190: $a0
    rst $38                                       ; $5191: $ff
    sbc [hl]                                      ; $5192: $9e
    jr c, jr_048_5175                             ; $5193: $38 $e0

    ld c, $00                                     ; $5195: $0e $00
    dec e                                         ; $5197: $1d
    rst $28                                       ; $5198: $ef
    nop                                           ; $5199: $00
    ld a, b                                       ; $519a: $78
    nop                                           ; $519b: $00
    add b                                         ; $519c: $80
    push hl                                       ; $519d: $e5
    ld h, d                                       ; $519e: $62
    ld bc, $0800                                  ; $519f: $01 $00 $08
    cp [hl]                                       ; $51a2: $be
    cp $e0                                        ; $51a3: $fe $e0
    jr nc, jr_048_51a7                            ; $51a5: $30 $00

jr_048_51a7:
    pop hl                                        ; $51a7: $e1
    nop                                           ; $51a8: $00
    ld bc, $62d5                                  ; $51a9: $01 $d5 $62
    add d                                         ; $51ac: $82
    xor a                                         ; $51ad: $af
    nop                                           ; $51ae: $00
    ld c, [hl]                                    ; $51af: $4e
    nop                                           ; $51b0: $00
    inc a                                         ; $51b1: $3c
    ld b, $e0                                     ; $51b2: $06 $e0
    jp $c04a                                      ; $51b4: $c3 $4a $c0


    rla                                           ; $51b7: $17
    rst $30                                       ; $51b8: $f7
    rst $38                                       ; $51b9: $ff
    ld [bc], a                                    ; $51ba: $02
    rst $38                                       ; $51bb: $ff
    ld [c], a                                     ; $51bc: $e2
    pop hl                                        ; $51bd: $e1
    add hl, de                                    ; $51be: $19
    nop                                           ; $51bf: $00
    ccf                                           ; $51c0: $3f
    ld bc, $ffcb                                  ; $51c1: $01 $cb $ff
    ld a, a                                       ; $51c4: $7f
    ld b, $c1                                     ; $51c5: $06 $c1
    cp a                                          ; $51c7: $bf
    cp d                                          ; $51c8: $ba
    ld b, l                                       ; $51c9: $45
    add sp, $60                                   ; $51ca: $e8 $60
    inc e                                         ; $51cc: $1c
    rra                                           ; $51cd: $1f
    rst $28                                       ; $51ce: $ef
    jr nc, @+$41                                  ; $51cf: $30 $3f

    pop hl                                        ; $51d1: $e1
    ccf                                           ; $51d2: $3f
    adc e                                         ; $51d3: $8b
    and l                                         ; $51d4: $a5
    ldh [$e0], a                                  ; $51d5: $e0 $e0
    jr c, @+$01                                   ; $51d7: $38 $ff

    ld hl, sp+$5c                                 ; $51d9: $f8 $5c
    db $fc                                        ; $51db: $fc
    rra                                           ; $51dc: $1f
    db $fc                                        ; $51dd: $fc
    ld sp, hl                                     ; $51de: $f9
    ld b, $e1                                     ; $51df: $06 $e1
    rst $30                                       ; $51e1: $f7
    ld e, $d9                                     ; $51e2: $1e $d9
    ld h, $fc                                     ; $51e4: $26 $fc
    pop hl                                        ; $51e6: $e1
    ld sp, hl                                     ; $51e7: $f9
    ld b, $fb                                     ; $51e8: $06 $fb
    inc b                                         ; $51ea: $04
    ldh a, [$82]                                  ; $51eb: $f0 $82
    ld l, l                                       ; $51ed: $6d
    cp $ff                                        ; $51ee: $fe $ff
    cp $ff                                        ; $51f0: $fe $ff
    ld l, $6b                                     ; $51f2: $2e $6b
    db $fd                                        ; $51f4: $fd
    inc bc                                        ; $51f5: $03
    call $ff33                                    ; $51f6: $cd $33 $ff
    ld sp, hl                                     ; $51f9: $f9
    rlca                                          ; $51fa: $07
    push bc                                       ; $51fb: $c5
    dec sp                                        ; $51fc: $3b
    db $fd                                        ; $51fd: $fd
    inc bc                                        ; $51fe: $03
    pop hl                                        ; $51ff: $e1
    rra                                           ; $5200: $1f
    ld a, a                                       ; $5201: $7f
    sbc l                                         ; $5202: $9d
    ld h, e                                       ; $5203: $63
    db $fd                                        ; $5204: $fd
    inc bc                                        ; $5205: $03
    push af                                       ; $5206: $f5
    rst $38                                       ; $5207: $ff
    xor b                                         ; $5208: $a8
    dec c                                         ; $5209: $0d
    ld h, d                                       ; $520a: $62
    rst $38                                       ; $520b: $ff
    ld d, b                                       ; $520c: $50
    xor a                                         ; $520d: $af
    ld [$fd15], a                                 ; $520e: $ea $15 $fd
    ld [bc], a                                    ; $5211: $02
    rst $38                                       ; $5212: $ff
    nop                                           ; $5213: $00
    adc l                                         ; $5214: $8d
    ld b, b                                       ; $5215: $40
    rst $38                                       ; $5216: $ff
    ld b, [hl]                                    ; $5217: $46
    add b                                         ; $5218: $80
    ld a, a                                       ; $5219: $7f
    db $ec                                        ; $521a: $ec
    pop hl                                        ; $521b: $e1
    rra                                           ; $521c: $1f
    sbc [hl]                                      ; $521d: $9e
    rst $08                                       ; $521e: $cf
    ld c, d                                       ; $521f: $4a
    ld a, [bc]                                    ; $5220: $0a
    rst $28                                       ; $5221: $ef
    push af                                       ; $5222: $f5
    ld d, a                                       ; $5223: $57
    rst $38                                       ; $5224: $ff
    ld a, [bc]                                    ; $5225: $0a
    cp l                                          ; $5226: $bd
    ld b, d                                       ; $5227: $42
    ld [bc], a                                    ; $5228: $02
    db $fd                                        ; $5229: $fd
    dec d                                         ; $522a: $15
    rst $38                                       ; $522b: $ff
    ld [$50af], a                                 ; $522c: $ea $af $50
    ld e, a                                       ; $522f: $5f
    and b                                         ; $5230: $a0
    ld h, c                                       ; $5231: $61
    ld a, a                                       ; $5232: $7f
    ld b, d                                       ; $5233: $42
    rst $38                                       ; $5234: $ff
    ld a, a                                       ; $5235: $7f
    ret nz                                        ; $5236: $c0

    ld a, a                                       ; $5237: $7f
    ldh [$7f], a                                  ; $5238: $e0 $7f
    db $e4                                        ; $523a: $e4
    ccf                                           ; $523b: $3f
    db $ec                                        ; $523c: $ec
    ei                                            ; $523d: $fb
    ccf                                           ; $523e: $3f
    ldh [$f6], a                                  ; $523f: $e0 $f6
    ldh [$3e], a                                  ; $5241: $e0 $3e
    cp $16                                        ; $5243: $fe $16
    cp $1f                                        ; $5245: $fe $1f
    rst $28                                       ; $5247: $ef
    cp $4f                                        ; $5248: $fe $4f
    cp $c7                                        ; $524a: $fe $c7
    inc b                                         ; $524c: $04
    ldh [$3f], a                                  ; $524d: $e0 $3f
    cp $af                                        ; $524f: $fe $af
    set 7, [hl]                                   ; $5251: $cb $fe
    ret nz                                        ; $5253: $c0

    rst $38                                       ; $5254: $ff
    add b                                         ; $5255: $80
    ccf                                           ; $5256: $3f
    ld [$8ec4], a                                 ; $5257: $ea $c4 $8e
    ld hl, $837c                                  ; $525a: $21 $7c $83
    ld l, h                                       ; $525d: $6c
    add h                                         ; $525e: $84
    daa                                           ; $525f: $27
    ld a, [hl]                                    ; $5260: $7e
    ld hl, $1ce3                                  ; $5261: $21 $e3 $1c
    ldh a, [$eb]                                  ; $5264: $f0 $eb
    ld [hl], b                                    ; $5266: $70
    adc a                                         ; $5267: $8f
    ld h, h                                       ; $5268: $64
    ld hl, $01ff                                  ; $5269: $21 $ff $01
    ld [bc], a                                    ; $526c: $02
    inc bc                                        ; $526d: $03
    nop                                           ; $526e: $00
    ld [bc], a                                    ; $526f: $02
    ld bc, $0102                                  ; $5270: $01 $02 $01
    rst $28                                       ; $5273: $ef
    inc b                                         ; $5274: $04
    inc b                                         ; $5275: $04
    ld hl, sp+$07                                 ; $5276: $f8 $07
    ld d, h                                       ; $5278: $54
    ld hl, $60a0                                  ; $5279: $21 $a0 $60
    jr nz, @+$01                                  ; $527c: $20 $ff

    ldh [$a0], a                                  ; $527e: $e0 $a0
    ld h, b                                       ; $5280: $60
    or b                                          ; $5281: $b0
    jr nc, jr_048_52b0                            ; $5282: $30 $2c

    xor h                                         ; $5284: $ac
    di                                            ; $5285: $f3
    pop af                                        ; $5286: $f1
    inc c                                         ; $5287: $0c
    ret nz                                        ; $5288: $c0

    db $eb                                        ; $5289: $eb
    inc [hl]                                      ; $528a: $34
    add hl, hl                                    ; $528b: $29
    ld l, $21                                     ; $528c: $2e $21
    ld [hl], c                                    ; $528e: $71
    adc a                                         ; $528f: $8f
    ld [bc], a                                    ; $5290: $02
    cp $bc                                        ; $5291: $fe $bc
    rrca                                          ; $5293: $0f
    and b                                         ; $5294: $a0
    ld bc, $fe88                                  ; $5295: $01 $88 $fe
    ld bc, $17e8                                  ; $5298: $01 $e8 $17
    ld a, [bc]                                    ; $529b: $0a
    ld b, a                                       ; $529c: $47
    ldh a, [$7f]                                  ; $529d: $f0 $7f
    rrca                                          ; $529f: $0f
    xor d                                         ; $52a0: $aa
    ld d, l                                       ; $52a1: $55
    nop                                           ; $52a2: $00
    rst $38                                       ; $52a3: $ff
    ret nz                                        ; $52a4: $c0

    ccf                                           ; $52a5: $3f
    db $10                                        ; $52a6: $10
    and a                                         ; $52a7: $a7
    cp a                                          ; $52a8: $bf
    add b                                         ; $52a9: $80
    ld a, a                                       ; $52aa: $7f
    ld bc, $0bfe                                  ; $52ab: $01 $fe $0b
    db $f4                                        ; $52ae: $f4
    nop                                           ; $52af: $00

jr_048_52b0:
    and a                                         ; $52b0: $a7
    ld a, [hl+]                                   ; $52b1: $2a
    jp Jump_048_57d5                              ; $52b2: $c3 $d5 $57


    call $d6c3                                    ; $52b5: $cd $c3 $d6
    ld [hl+], a                                   ; $52b8: $22
    db $f4                                        ; $52b9: $f4
    jp hl                                         ; $52ba: $e9


    add d                                         ; $52bb: $82
    pop de                                        ; $52bc: $d1
    jp nz, $ff7f                                  ; $52bd: $c2 $7f $ff

    and $7f                                       ; $52c0: $e6 $7f
    ld sp, hl                                     ; $52c2: $f9
    ccf                                           ; $52c3: $3f
    rst $38                                       ; $52c4: $ff
    rrca                                          ; $52c5: $0f
    rst $38                                       ; $52c6: $ff
    ld bc, $3e0f                                  ; $52c7: $01 $0f $3e
    pop hl                                        ; $52ca: $e1
    ld [hl], b                                    ; $52cb: $70
    rst $38                                       ; $52cc: $ff
    call z, $ffa0                                 ; $52cd: $cc $a0 $ff
    rst $38                                       ; $52d0: $ff
    rst $38                                       ; $52d1: $ff
    rst $38                                       ; $52d2: $ff
    rst $38                                       ; $52d3: $ff
    rst $38                                       ; $52d4: $ff
    inc e                                         ; $52d5: $1c
    rst $38                                       ; $52d6: $ff
    rst $38                                       ; $52d7: $ff
    and $e5                                       ; $52d8: $e6 $e5
    add b                                         ; $52da: $80
    nop                                           ; $52db: $00
    ldh [rSVBK], a                                ; $52dc: $e0 $70
    ret                                           ; $52de: $c9


    dec l                                         ; $52df: $2d
    call Call_000_22f2                            ; $52e0: $cd $f2 $22
    ld sp, hl                                     ; $52e3: $f9
    rlca                                          ; $52e4: $07
    ld b, a                                       ; $52e5: $47
    pop hl                                        ; $52e6: $e1
    ldh a, [$e8]                                  ; $52e7: $f0 $e8
    cp $9f                                        ; $52e9: $fe $9f
    ld hl, sp-$61                                 ; $52eb: $f8 $9f
    ldh a, [$b1]                                  ; $52ed: $f0 $b1
    cp a                                          ; $52ef: $bf
    cp $e2                                        ; $52f0: $fe $e2
    ldh [$e4], a                                  ; $52f2: $e0 $e4
    nop                                           ; $52f4: $00
    ld c, d                                       ; $52f5: $4a
    jp Jump_000_02ff                              ; $52f6: $c3 $ff $02


    and b                                         ; $52f9: $a0
    rrca                                          ; $52fa: $0f
    rst $20                                       ; $52fb: $e7
    ei                                            ; $52fc: $fb
    rrca                                          ; $52fd: $0f
    ld sp, hl                                     ; $52fe: $f9
    cp $e0                                        ; $52ff: $fe $e0
    inc e                                         ; $5301: $1c
    ld h, d                                       ; $5302: $62
    ld hl, sp-$01                                 ; $5303: $f8 $ff
    ldh [$8f], a                                  ; $5305: $e0 $8f
    db $fc                                        ; $5307: $fc
    inc bc                                        ; $5308: $03
    ldh a, [rIF]                                  ; $5309: $f0 $0f
    inc d                                         ; $530b: $14
    ret nz                                        ; $530c: $c0

    and b                                         ; $530d: $a0
    ld [hl+], a                                   ; $530e: $22
    rst $08                                       ; $530f: $cf
    ld b, b                                       ; $5310: $40
    ldh [$7f], a                                  ; $5311: $e0 $7f
    rra                                           ; $5313: $1f
    db $fc                                        ; $5314: $fc
    rrca                                          ; $5315: $0f
    rst $38                                       ; $5316: $ff
    inc bc                                        ; $5317: $03
    rst $38                                       ; $5318: $ff
    dec b                                         ; $5319: $05
    ldh a, [$e5]                                  ; $531a: $f0 $e5
    ld c, $8f                                     ; $531c: $0e $8f
    and d                                         ; $531e: $a2
    rst $38                                       ; $531f: $ff
    ldh [rIE], a                                  ; $5320: $e0 $ff
    ld h, [hl]                                    ; $5322: $66
    ret z                                         ; $5323: $c8

    rst $38                                       ; $5324: $ff
    rst $38                                       ; $5325: $ff
    rst $38                                       ; $5326: $ff
    rst $38                                       ; $5327: $ff
    rst $38                                       ; $5328: $ff
    rst $38                                       ; $5329: $ff
    rst $38                                       ; $532a: $ff
    ld e, a                                       ; $532b: $5f
    cp $ef                                        ; $532c: $fe $ef
    cp $ff                                        ; $532e: $fe $ff
    db $fc                                        ; $5330: $fc
    rst $38                                       ; $5331: $ff
    ldh a, [$9f]                                  ; $5332: $f0 $9f
    rst $38                                       ; $5334: $ff
    add b                                         ; $5335: $80
    cp $81                                        ; $5336: $fe $81
    add b                                         ; $5338: $80
    ld a, l                                       ; $5339: $7d
    ldh [rNR11], a                                ; $533a: $e0 $11
    and l                                         ; $533c: $a5
    adc a                                         ; $533d: $8f
    and a                                         ; $533e: $a7
    ld a, b                                       ; $533f: $78
    rla                                           ; $5340: $17
    cp $42                                        ; $5341: $fe $42
    add b                                         ; $5343: $80
    inc b                                         ; $5344: $04
    ld l, d                                       ; $5345: $6a
    ret nz                                        ; $5346: $c0

    ld d, $40                                     ; $5347: $16 $40
    sbc a                                         ; $5349: $9f
    cp c                                          ; $534a: $b9
    ldh a, [$fe]                                  ; $534b: $f0 $fe
    pop hl                                        ; $534d: $e1
    inc b                                         ; $534e: $04
    db $e3                                        ; $534f: $e3
    or b                                          ; $5350: $b0
    rst $38                                       ; $5351: $ff
    sub b                                         ; $5352: $90
    db $e4                                        ; $5353: $e4
    ld b, [hl]                                    ; $5354: $46
    db $fc                                        ; $5355: $fc
    db $eb                                        ; $5356: $eb
    inc bc                                        ; $5357: $03
    add b                                         ; $5358: $80
    di                                            ; $5359: $f3
    ld [bc], a                                    ; $535a: $02
    ld sp, hl                                     ; $535b: $f9
    ld [$ebe0], sp                                ; $535c: $08 $e0 $eb
    rra                                           ; $535f: $1f
    adc e                                         ; $5360: $8b
    rst $10                                       ; $5361: $d7
    ld a, a                                       ; $5362: $7f
    add hl, bc                                    ; $5363: $09
    rst $38                                       ; $5364: $ff
    cp $e1                                        ; $5365: $fe $e1
    dec bc                                        ; $5367: $0b
    jp nz, $028a                                  ; $5368: $c2 $8a $02

    rst $38                                       ; $536b: $ff
    ld [hl], l                                    ; $536c: $75
    dec d                                         ; $536d: $15
    sbc $60                                       ; $536e: $de $60
    dec b                                         ; $5370: $05
    ld [$0be2], sp                                ; $5371: $08 $e2 $0b
    rst $38                                       ; $5374: $ff
    ld d, a                                       ; $5375: $57
    ld [c], a                                     ; $5376: $e2
    ld h, b                                       ; $5377: $60
    add b                                         ; $5378: $80
    db $db                                        ; $5379: $db
    ld h, d                                       ; $537a: $62
    db $fc                                        ; $537b: $fc
    ld [$ff4e], a                                 ; $537c: $ea $4e $ff
    rst $38                                       ; $537f: $ff
    rst $38                                       ; $5380: $ff
    rst $38                                       ; $5381: $ff
    rst $38                                       ; $5382: $ff
    rst $38                                       ; $5383: $ff
    rst $38                                       ; $5384: $ff
    or $f5                                        ; $5385: $f6 $f5
    sbc [hl]                                      ; $5387: $9e
    rst $38                                       ; $5388: $ff
    pop af                                        ; $5389: $f1
    sbc a                                         ; $538a: $9f
    ldh a, [$b3]                                  ; $538b: $f0 $b3
    db $fc                                        ; $538d: $fc
    ld a, [hl]                                    ; $538e: $7e
    rst $38                                       ; $538f: $ff
    adc a                                         ; $5390: $8f
    rst $28                                       ; $5391: $ef
    ld a, a                                       ; $5392: $7f
    ret nc                                        ; $5393: $d0

    cpl                                           ; $5394: $2f
    ld a, [$c041]                                 ; $5395: $fa $41 $c0
    call nc, $fe2b                                ; $5398: $d4 $2b $fe
    cp $f7                                        ; $539b: $fe $f7
    ld b, b                                       ; $539d: $40
    rra                                           ; $539e: $1f
    ldh [$c3], a                                  ; $539f: $e0 $c3
    db $fc                                        ; $53a1: $fc
    add hl, hl                                    ; $53a2: $29
    cp $aa                                        ; $53a3: $fe $aa
    ld a, a                                       ; $53a5: $7f
    ld d, l                                       ; $53a6: $55
    rst $38                                       ; $53a7: $ff
    nop                                           ; $53a8: $00
    dec bc                                        ; $53a9: $0b
    rst $38                                       ; $53aa: $ff
    xor e                                         ; $53ab: $ab
    ld e, a                                       ; $53ac: $5f
    ld b, $c3                                     ; $53ad: $06 $c3
    rst $18                                       ; $53af: $df
    jp hl                                         ; $53b0: $e9


    rra                                           ; $53b1: $1f
    srl a                                         ; $53b2: $cb $3f
    rst $08                                       ; $53b4: $cf
    ld c, $c0                                     ; $53b5: $0e $c0
    and b                                         ; $53b7: $a0
    ld e, a                                       ; $53b8: $5f
    xor [hl]                                      ; $53b9: $ae
    cp l                                          ; $53ba: $bd
    ld h, e                                       ; $53bb: $63
    rra                                           ; $53bc: $1f
    ldh [$81], a                                  ; $53bd: $e0 $81
    sub a                                         ; $53bf: $97
    ld b, b                                       ; $53c0: $40
    rra                                           ; $53c1: $1f
    db $fc                                        ; $53c2: $fc
    add b                                         ; $53c3: $80
    ld d, b                                       ; $53c4: $50
    ld l, c                                       ; $53c5: $69
    xor a                                         ; $53c6: $af
    add $e1                                       ; $53c7: $c6 $e1
    jr jr_048_53eb                                ; $53c9: $18 $20

    add b                                         ; $53cb: $80
    xor b                                         ; $53cc: $a8
    add b                                         ; $53cd: $80
    rst $38                                       ; $53ce: $ff
    ld a, [hl+]                                   ; $53cf: $2a
    ret nz                                        ; $53d0: $c0

    nop                                           ; $53d1: $00
    rlca                                          ; $53d2: $07
    and b                                         ; $53d3: $a0
    ld e, a                                       ; $53d4: $5f
    push af                                       ; $53d5: $f5
    ret                                           ; $53d6: $c9


    ld h, e                                       ; $53d7: $63
    ld a, a                                       ; $53d8: $7f
    rst $38                                       ; $53d9: $ff
    rst $38                                       ; $53da: $ff
    rst $38                                       ; $53db: $ff
    rst $38                                       ; $53dc: $ff
    rst $38                                       ; $53dd: $ff
    rst $38                                       ; $53de: $ff
    rst $38                                       ; $53df: $ff
    sbc h                                         ; $53e0: $9c
    rst $38                                       ; $53e1: $ff
    rst $38                                       ; $53e2: $ff
    push af                                       ; $53e3: $f5
    db $f4                                        ; $53e4: $f4
    db $e3                                        ; $53e5: $e3
    rra                                           ; $53e6: $1f
    ld hl, sp-$0e                                 ; $53e7: $f8 $f2
    adc b                                         ; $53e9: $88
    ld [hl], h                                    ; $53ea: $74

jr_048_53eb:
    ld bc, $7c05                                  ; $53eb: $01 $05 $7c
    db $10                                        ; $53ee: $10
    and $b5                                       ; $53ef: $e6 $b5
    ld b, c                                       ; $53f1: $41
    ldh [rIE], a                                  ; $53f2: $e0 $ff
    db $fd                                        ; $53f4: $fd
    rst $38                                       ; $53f5: $ff
    ld bc, $c2d6                                  ; $53f6: $01 $d6 $c2
    cp $a7                                        ; $53f9: $fe $a7
    ld b, e                                       ; $53fb: $43
    ld a, a                                       ; $53fc: $7f
    add b                                         ; $53fd: $80
    ccf                                           ; $53fe: $3f
    ret nz                                        ; $53ff: $c0

    ld e, [hl]                                    ; $5400: $5e
    and c                                         ; $5401: $a1
    cp a                                          ; $5402: $bf
    nop                                           ; $5403: $00
    adc c                                         ; $5404: $89
    ld b, [hl]                                    ; $5405: $46
    rst $38                                       ; $5406: $ff
    rst $38                                       ; $5407: $ff
    rst $38                                       ; $5408: $ff
    rst $38                                       ; $5409: $ff
    rst $38                                       ; $540a: $ff
    rst $38                                       ; $540b: $ff
    ld b, b                                       ; $540c: $40
    ld b, a                                       ; $540d: $47
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
    ld bc, $0101                                  ; $5421: $01 $01 $01
    ld bc, $0101                                  ; $5424: $01 $01 $01
    ld bc, $0101                                  ; $5427: $01 $01 $01
    ld bc, $0101                                  ; $542a: $01 $01 $01
    ld bc, $0101                                  ; $542d: $01 $01 $01
    ld bc, $0101                                  ; $5430: $01 $01 $01
    ld [bc], a                                    ; $5433: $02
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
    db $10                                        ; $5440: $10
    inc de                                        ; $5441: $13
    inc de                                        ; $5442: $13
    inc de                                        ; $5443: $13
    inc de                                        ; $5444: $13
    inc de                                        ; $5445: $13
    inc de                                        ; $5446: $13
    inc de                                        ; $5447: $13
    inc de                                        ; $5448: $13
    inc de                                        ; $5449: $13
    inc de                                        ; $544a: $13
    inc de                                        ; $544b: $13
    inc de                                        ; $544c: $13
    inc de                                        ; $544d: $13
    inc de                                        ; $544e: $13
    inc de                                        ; $544f: $13
    inc de                                        ; $5450: $13
    inc de                                        ; $5451: $13
    inc de                                        ; $5452: $13
    ld [de], a                                    ; $5453: $12
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
    db $10                                        ; $5460: $10
    inc de                                        ; $5461: $13
    inc de                                        ; $5462: $13
    inc de                                        ; $5463: $13
    inc de                                        ; $5464: $13
    inc de                                        ; $5465: $13
    inc de                                        ; $5466: $13
    inc de                                        ; $5467: $13
    inc de                                        ; $5468: $13
    inc de                                        ; $5469: $13
    inc de                                        ; $546a: $13
    inc de                                        ; $546b: $13
    inc de                                        ; $546c: $13
    inc de                                        ; $546d: $13
    inc de                                        ; $546e: $13
    inc de                                        ; $546f: $13
    inc de                                        ; $5470: $13
    inc de                                        ; $5471: $13
    inc de                                        ; $5472: $13
    ld [de], a                                    ; $5473: $12
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
    db $10                                        ; $5480: $10
    inc de                                        ; $5481: $13
    inc de                                        ; $5482: $13
    inc de                                        ; $5483: $13
    inc de                                        ; $5484: $13
    inc de                                        ; $5485: $13
    inc de                                        ; $5486: $13
    inc de                                        ; $5487: $13
    inc de                                        ; $5488: $13
    inc de                                        ; $5489: $13
    inc de                                        ; $548a: $13
    inc de                                        ; $548b: $13
    inc de                                        ; $548c: $13
    inc de                                        ; $548d: $13
    inc de                                        ; $548e: $13
    inc de                                        ; $548f: $13
    inc de                                        ; $5490: $13
    inc de                                        ; $5491: $13
    inc de                                        ; $5492: $13
    ld [de], a                                    ; $5493: $12
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
    jr nz, @+$23                                  ; $54a0: $20 $21

    ld hl, $2121                                  ; $54a2: $21 $21 $21
    ld hl, $2121                                  ; $54a5: $21 $21 $21
    ld hl, $2121                                  ; $54a8: $21 $21 $21
    ld hl, $2121                                  ; $54ab: $21 $21 $21
    ld hl, $2121                                  ; $54ae: $21 $21 $21
    ld hl, $2221                                  ; $54b1: $21 $21 $22
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
    ld [hl], $36                                  ; $54c0: $36 $36
    ld [hl], $36                                  ; $54c2: $36 $36
    ld [hl], $36                                  ; $54c4: $36 $36
    inc d                                         ; $54c6: $14
    ld de, $1111                                  ; $54c7: $11 $11 $11
    ld de, $1111                                  ; $54ca: $11 $11 $11
    dec d                                         ; $54cd: $15
    ld [hl], $36                                  ; $54ce: $36 $36
    ld [hl], $36                                  ; $54d0: $36 $36
    ld [hl], $36                                  ; $54d2: $36 $36
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
    ld b, [hl]                                    ; $54e0: $46
    ld b, [hl]                                    ; $54e1: $46
    ld b, [hl]                                    ; $54e2: $46
    ld b, [hl]                                    ; $54e3: $46
    ld b, [hl]                                    ; $54e4: $46
    ld b, [hl]                                    ; $54e5: $46
    ld de, $1111                                  ; $54e6: $11 $11 $11
    ld de, $1111                                  ; $54e9: $11 $11 $11
    ld de, $4611                                  ; $54ec: $11 $11 $46
    ld b, [hl]                                    ; $54ef: $46
    ld b, [hl]                                    ; $54f0: $46
    ld b, [hl]                                    ; $54f1: $46
    ld b, [hl]                                    ; $54f2: $46
    ld b, [hl]                                    ; $54f3: $46
    nop                                           ; $54f4: $00
    nop                                           ; $54f5: $00
    nop                                           ; $54f6: $00
    nop                                           ; $54f7: $00
    nop                                           ; $54f8: $00
    nop                                           ; $54f9: $00
    nop                                           ; $54fa: $00
    nop                                           ; $54fb: $00
    nop                                           ; $54fc: $00
    nop                                           ; $54fd: $00
    nop                                           ; $54fe: $00
    nop                                           ; $54ff: $00
    inc sp                                        ; $5500: $33
    inc sp                                        ; $5501: $33
    inc sp                                        ; $5502: $33
    inc sp                                        ; $5503: $33
    inc sp                                        ; $5504: $33
    inc sp                                        ; $5505: $33
    ld de, $1111                                  ; $5506: $11 $11 $11
    ld de, $1111                                  ; $5509: $11 $11 $11
    ld de, $3311                                  ; $550c: $11 $11 $33
    inc sp                                        ; $550f: $33
    inc sp                                        ; $5510: $33
    inc sp                                        ; $5511: $33
    inc sp                                        ; $5512: $33
    inc sp                                        ; $5513: $33
    nop                                           ; $5514: $00
    nop                                           ; $5515: $00
    nop                                           ; $5516: $00
    nop                                           ; $5517: $00
    nop                                           ; $5518: $00
    nop                                           ; $5519: $00
    nop                                           ; $551a: $00
    nop                                           ; $551b: $00
    nop                                           ; $551c: $00
    nop                                           ; $551d: $00
    nop                                           ; $551e: $00
    nop                                           ; $551f: $00
    ld d, [hl]                                    ; $5520: $56
    ld d, a                                       ; $5521: $57
    ld [hl-], a                                   ; $5522: $32
    ld d, [hl]                                    ; $5523: $56
    ld d, a                                       ; $5524: $57
    ld d, [hl]                                    ; $5525: $56
    ld de, $1111                                  ; $5526: $11 $11 $11
    ld de, $1111                                  ; $5529: $11 $11 $11
    ld de, $2311                                  ; $552c: $11 $11 $23
    ld sp, $3232                                  ; $552f: $31 $32 $32
    inc [hl]                                      ; $5532: $34
    dec [hl]                                      ; $5533: $35
    nop                                           ; $5534: $00
    nop                                           ; $5535: $00
    nop                                           ; $5536: $00
    nop                                           ; $5537: $00
    nop                                           ; $5538: $00
    nop                                           ; $5539: $00
    nop                                           ; $553a: $00
    nop                                           ; $553b: $00
    nop                                           ; $553c: $00
    nop                                           ; $553d: $00
    nop                                           ; $553e: $00
    nop                                           ; $553f: $00
    ld h, [hl]                                    ; $5540: $66
    ld h, a                                       ; $5541: $67
    ld b, d                                       ; $5542: $42
    ld h, [hl]                                    ; $5543: $66
    ld h, a                                       ; $5544: $67
    ld h, [hl]                                    ; $5545: $66
    add b                                         ; $5546: $80
    add d                                         ; $5547: $82
    add e                                         ; $5548: $83
    add h                                         ; $5549: $84
    add l                                         ; $554a: $85
    add [hl]                                      ; $554b: $86
    add a                                         ; $554c: $87
    adc b                                         ; $554d: $88
    ld b, b                                       ; $554e: $40
    ld b, c                                       ; $554f: $41
    ld b, d                                       ; $5550: $42
    ld b, e                                       ; $5551: $43
    ld b, h                                       ; $5552: $44
    ld b, l                                       ; $5553: $45
    nop                                           ; $5554: $00
    nop                                           ; $5555: $00
    nop                                           ; $5556: $00
    nop                                           ; $5557: $00
    nop                                           ; $5558: $00
    nop                                           ; $5559: $00
    nop                                           ; $555a: $00
    nop                                           ; $555b: $00
    nop                                           ; $555c: $00
    nop                                           ; $555d: $00
    nop                                           ; $555e: $00
    nop                                           ; $555f: $00
    halt                                          ; $5560: $76
    sub b                                         ; $5561: $90
    sub c                                         ; $5562: $91
    halt                                          ; $5563: $76
    sub b                                         ; $5564: $90
    halt                                          ; $5565: $76
    sub b                                         ; $5566: $90
    sub c                                         ; $5567: $91
    sub e                                         ; $5568: $93
    sub h                                         ; $5569: $94
    sub l                                         ; $556a: $95
    sub [hl]                                      ; $556b: $96
    sub a                                         ; $556c: $97
    sbc b                                         ; $556d: $98
    ld d, b                                       ; $556e: $50
    ld d, c                                       ; $556f: $51
    ld d, d                                       ; $5570: $52
    ld d, e                                       ; $5571: $53
    ld d, h                                       ; $5572: $54
    ld d, l                                       ; $5573: $55
    nop                                           ; $5574: $00
    nop                                           ; $5575: $00
    nop                                           ; $5576: $00
    nop                                           ; $5577: $00
    nop                                           ; $5578: $00
    nop                                           ; $5579: $00
    nop                                           ; $557a: $00
    nop                                           ; $557b: $00
    nop                                           ; $557c: $00
    nop                                           ; $557d: $00
    nop                                           ; $557e: $00
    nop                                           ; $557f: $00
    inc de                                        ; $5580: $13
    inc de                                        ; $5581: $13
    inc de                                        ; $5582: $13
    inc de                                        ; $5583: $13
    inc de                                        ; $5584: $13
    inc de                                        ; $5585: $13
    inc de                                        ; $5586: $13
    inc de                                        ; $5587: $13
    and e                                         ; $5588: $a3
    and h                                         ; $5589: $a4
    and l                                         ; $558a: $a5
    and [hl]                                      ; $558b: $a6
    and a                                         ; $558c: $a7
    xor b                                         ; $558d: $a8
    ld h, b                                       ; $558e: $60
    ld h, c                                       ; $558f: $61
    ld h, d                                       ; $5590: $62
    ld h, d                                       ; $5591: $62
    ld h, h                                       ; $5592: $64
    ld h, l                                       ; $5593: $65
    nop                                           ; $5594: $00
    nop                                           ; $5595: $00
    nop                                           ; $5596: $00
    nop                                           ; $5597: $00
    nop                                           ; $5598: $00
    nop                                           ; $5599: $00
    nop                                           ; $559a: $00
    nop                                           ; $559b: $00
    nop                                           ; $559c: $00
    nop                                           ; $559d: $00
    nop                                           ; $559e: $00
    nop                                           ; $559f: $00
    inc de                                        ; $55a0: $13
    inc de                                        ; $55a1: $13
    inc de                                        ; $55a2: $13
    inc de                                        ; $55a3: $13
    inc de                                        ; $55a4: $13
    inc de                                        ; $55a5: $13
    inc de                                        ; $55a6: $13
    inc de                                        ; $55a7: $13
    inc de                                        ; $55a8: $13
    inc de                                        ; $55a9: $13
    or l                                          ; $55aa: $b5
    or [hl]                                       ; $55ab: $b6
    or a                                          ; $55ac: $b7
    cp b                                          ; $55ad: $b8
    ld [hl], b                                    ; $55ae: $70
    ld [hl], c                                    ; $55af: $71
    ld [hl], d                                    ; $55b0: $72
    ld [hl], e                                    ; $55b1: $73
    ld [hl], h                                    ; $55b2: $74
    ld [hl], l                                    ; $55b3: $75
    nop                                           ; $55b4: $00
    nop                                           ; $55b5: $00
    nop                                           ; $55b6: $00
    nop                                           ; $55b7: $00
    nop                                           ; $55b8: $00
    nop                                           ; $55b9: $00
    nop                                           ; $55ba: $00
    nop                                           ; $55bb: $00
    nop                                           ; $55bc: $00
    nop                                           ; $55bd: $00
    nop                                           ; $55be: $00
    nop                                           ; $55bf: $00
    inc de                                        ; $55c0: $13
    inc de                                        ; $55c1: $13
    inc de                                        ; $55c2: $13
    inc de                                        ; $55c3: $13
    inc de                                        ; $55c4: $13
    inc de                                        ; $55c5: $13
    inc de                                        ; $55c6: $13
    inc de                                        ; $55c7: $13
    inc de                                        ; $55c8: $13
    inc de                                        ; $55c9: $13
    inc de                                        ; $55ca: $13
    inc de                                        ; $55cb: $13
    inc de                                        ; $55cc: $13
    inc de                                        ; $55cd: $13
    inc de                                        ; $55ce: $13
    inc de                                        ; $55cf: $13
    inc de                                        ; $55d0: $13
    inc de                                        ; $55d1: $13
    inc de                                        ; $55d2: $13
    inc de                                        ; $55d3: $13
    nop                                           ; $55d4: $00
    nop                                           ; $55d5: $00
    nop                                           ; $55d6: $00
    nop                                           ; $55d7: $00
    nop                                           ; $55d8: $00
    nop                                           ; $55d9: $00
    nop                                           ; $55da: $00
    nop                                           ; $55db: $00
    nop                                           ; $55dc: $00
    nop                                           ; $55dd: $00
    nop                                           ; $55de: $00
    nop                                           ; $55df: $00
    inc de                                        ; $55e0: $13
    inc de                                        ; $55e1: $13
    inc de                                        ; $55e2: $13
    inc de                                        ; $55e3: $13
    inc de                                        ; $55e4: $13
    inc de                                        ; $55e5: $13
    inc de                                        ; $55e6: $13
    inc de                                        ; $55e7: $13
    inc de                                        ; $55e8: $13
    inc de                                        ; $55e9: $13
    inc de                                        ; $55ea: $13
    inc de                                        ; $55eb: $13
    inc de                                        ; $55ec: $13
    inc de                                        ; $55ed: $13
    inc de                                        ; $55ee: $13
    inc de                                        ; $55ef: $13
    inc de                                        ; $55f0: $13
    inc de                                        ; $55f1: $13
    inc de                                        ; $55f2: $13
    inc de                                        ; $55f3: $13
    nop                                           ; $55f4: $00
    nop                                           ; $55f5: $00
    nop                                           ; $55f6: $00
    nop                                           ; $55f7: $00
    nop                                           ; $55f8: $00
    nop                                           ; $55f9: $00
    nop                                           ; $55fa: $00
    nop                                           ; $55fb: $00
    nop                                           ; $55fc: $00
    nop                                           ; $55fd: $00
    nop                                           ; $55fe: $00
    nop                                           ; $55ff: $00
    inc de                                        ; $5600: $13
    inc de                                        ; $5601: $13
    inc de                                        ; $5602: $13
    inc de                                        ; $5603: $13
    inc de                                        ; $5604: $13
    inc de                                        ; $5605: $13
    inc de                                        ; $5606: $13
    inc de                                        ; $5607: $13
    inc de                                        ; $5608: $13
    inc de                                        ; $5609: $13
    inc de                                        ; $560a: $13
    inc de                                        ; $560b: $13
    inc de                                        ; $560c: $13
    inc de                                        ; $560d: $13
    inc de                                        ; $560e: $13
    inc de                                        ; $560f: $13
    inc de                                        ; $5610: $13
    inc de                                        ; $5611: $13
    inc de                                        ; $5612: $13
    inc de                                        ; $5613: $13
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
    inc de                                        ; $5620: $13
    inc de                                        ; $5621: $13
    inc de                                        ; $5622: $13
    inc de                                        ; $5623: $13
    inc de                                        ; $5624: $13
    inc de                                        ; $5625: $13
    inc de                                        ; $5626: $13
    inc de                                        ; $5627: $13
    inc de                                        ; $5628: $13
    inc de                                        ; $5629: $13
    inc de                                        ; $562a: $13
    inc de                                        ; $562b: $13
    inc de                                        ; $562c: $13
    inc de                                        ; $562d: $13
    inc de                                        ; $562e: $13
    inc de                                        ; $562f: $13
    inc de                                        ; $5630: $13
    inc de                                        ; $5631: $13
    inc de                                        ; $5632: $13
    inc de                                        ; $5633: $13
    nop                                           ; $5634: $00
    nop                                           ; $5635: $00
    nop                                           ; $5636: $00
    nop                                           ; $5637: $00
    nop                                           ; $5638: $00
    nop                                           ; $5639: $00
    nop                                           ; $563a: $00
    nop                                           ; $563b: $00
    nop                                           ; $563c: $00
    nop                                           ; $563d: $00
    nop                                           ; $563e: $00
    nop                                           ; $563f: $00
    inc de                                        ; $5640: $13
    inc de                                        ; $5641: $13
    inc de                                        ; $5642: $13
    inc de                                        ; $5643: $13
    inc de                                        ; $5644: $13
    inc de                                        ; $5645: $13
    inc de                                        ; $5646: $13
    inc de                                        ; $5647: $13
    inc de                                        ; $5648: $13
    inc de                                        ; $5649: $13
    inc de                                        ; $564a: $13
    inc de                                        ; $564b: $13
    inc de                                        ; $564c: $13
    inc de                                        ; $564d: $13
    inc de                                        ; $564e: $13
    inc de                                        ; $564f: $13
    inc de                                        ; $5650: $13
    inc de                                        ; $5651: $13
    inc de                                        ; $5652: $13
    inc de                                        ; $5653: $13
    nop                                           ; $5654: $00
    nop                                           ; $5655: $00
    nop                                           ; $5656: $00
    nop                                           ; $5657: $00
    nop                                           ; $5658: $00
    nop                                           ; $5659: $00
    nop                                           ; $565a: $00
    nop                                           ; $565b: $00
    nop                                           ; $565c: $00
    nop                                           ; $565d: $00
    nop                                           ; $565e: $00
    nop                                           ; $565f: $00
    dec bc                                        ; $5660: $0b
    dec bc                                        ; $5661: $0b
    dec bc                                        ; $5662: $0b
    dec bc                                        ; $5663: $0b
    dec bc                                        ; $5664: $0b
    dec bc                                        ; $5665: $0b
    dec bc                                        ; $5666: $0b
    dec bc                                        ; $5667: $0b
    dec bc                                        ; $5668: $0b
    dec bc                                        ; $5669: $0b
    dec bc                                        ; $566a: $0b
    dec bc                                        ; $566b: $0b
    dec bc                                        ; $566c: $0b
    dec bc                                        ; $566d: $0b
    dec bc                                        ; $566e: $0b
    dec bc                                        ; $566f: $0b
    dec bc                                        ; $5670: $0b
    dec bc                                        ; $5671: $0b
    dec bc                                        ; $5672: $0b
    dec bc                                        ; $5673: $0b
    ld c, e                                       ; $5674: $4b
    dec bc                                        ; $5675: $0b
    dec bc                                        ; $5676: $0b
    dec bc                                        ; $5677: $0b
    dec bc                                        ; $5678: $0b
    dec bc                                        ; $5679: $0b
    dec bc                                        ; $567a: $0b
    ld c, e                                       ; $567b: $4b
    dec bc                                        ; $567c: $0b
    dec bc                                        ; $567d: $0b
    dec bc                                        ; $567e: $0b
    dec bc                                        ; $567f: $0b
    dec bc                                        ; $5680: $0b
    dec bc                                        ; $5681: $0b
    dec bc                                        ; $5682: $0b
    dec bc                                        ; $5683: $0b
    dec bc                                        ; $5684: $0b
    dec bc                                        ; $5685: $0b
    dec bc                                        ; $5686: $0b
    dec bc                                        ; $5687: $0b
    dec bc                                        ; $5688: $0b
    dec bc                                        ; $5689: $0b
    dec bc                                        ; $568a: $0b
    dec bc                                        ; $568b: $0b
    dec bc                                        ; $568c: $0b
    dec bc                                        ; $568d: $0b
    dec bc                                        ; $568e: $0b
    dec bc                                        ; $568f: $0b
    dec bc                                        ; $5690: $0b
    dec bc                                        ; $5691: $0b
    dec bc                                        ; $5692: $0b
    dec bc                                        ; $5693: $0b
    dec bc                                        ; $5694: $0b
    dec bc                                        ; $5695: $0b
    dec bc                                        ; $5696: $0b
    dec bc                                        ; $5697: $0b
    dec bc                                        ; $5698: $0b
    dec bc                                        ; $5699: $0b
    dec bc                                        ; $569a: $0b
    dec bc                                        ; $569b: $0b
    dec bc                                        ; $569c: $0b
    dec bc                                        ; $569d: $0b
    dec bc                                        ; $569e: $0b
    ld c, e                                       ; $569f: $4b
    dec bc                                        ; $56a0: $0b
    dec bc                                        ; $56a1: $0b
    dec bc                                        ; $56a2: $0b
    dec bc                                        ; $56a3: $0b
    dec bc                                        ; $56a4: $0b
    dec bc                                        ; $56a5: $0b
    dec bc                                        ; $56a6: $0b
    dec bc                                        ; $56a7: $0b
    dec bc                                        ; $56a8: $0b
    dec bc                                        ; $56a9: $0b
    dec bc                                        ; $56aa: $0b
    dec bc                                        ; $56ab: $0b
    dec bc                                        ; $56ac: $0b
    dec bc                                        ; $56ad: $0b
    dec bc                                        ; $56ae: $0b
    dec bc                                        ; $56af: $0b
    dec bc                                        ; $56b0: $0b
    dec bc                                        ; $56b1: $0b
    dec bc                                        ; $56b2: $0b
    dec bc                                        ; $56b3: $0b
    dec bc                                        ; $56b4: $0b
    dec bc                                        ; $56b5: $0b
    dec bc                                        ; $56b6: $0b
    dec bc                                        ; $56b7: $0b
    dec bc                                        ; $56b8: $0b
    dec bc                                        ; $56b9: $0b
    dec bc                                        ; $56ba: $0b
    dec bc                                        ; $56bb: $0b
    dec bc                                        ; $56bc: $0b
    dec bc                                        ; $56bd: $0b
    dec bc                                        ; $56be: $0b
    dec bc                                        ; $56bf: $0b
    dec bc                                        ; $56c0: $0b
    dec bc                                        ; $56c1: $0b
    dec bc                                        ; $56c2: $0b
    dec bc                                        ; $56c3: $0b
    dec bc                                        ; $56c4: $0b
    dec bc                                        ; $56c5: $0b
    dec bc                                        ; $56c6: $0b
    dec bc                                        ; $56c7: $0b
    dec bc                                        ; $56c8: $0b
    dec bc                                        ; $56c9: $0b
    dec bc                                        ; $56ca: $0b
    dec bc                                        ; $56cb: $0b
    dec bc                                        ; $56cc: $0b
    dec bc                                        ; $56cd: $0b
    dec bc                                        ; $56ce: $0b
    dec bc                                        ; $56cf: $0b
    dec bc                                        ; $56d0: $0b
    dec bc                                        ; $56d1: $0b
    dec bc                                        ; $56d2: $0b
    dec bc                                        ; $56d3: $0b
    dec bc                                        ; $56d4: $0b
    dec bc                                        ; $56d5: $0b
    dec bc                                        ; $56d6: $0b
    dec bc                                        ; $56d7: $0b
    dec bc                                        ; $56d8: $0b
    dec bc                                        ; $56d9: $0b
    dec bc                                        ; $56da: $0b
    dec bc                                        ; $56db: $0b
    dec bc                                        ; $56dc: $0b
    dec bc                                        ; $56dd: $0b
    dec bc                                        ; $56de: $0b
    dec bc                                        ; $56df: $0b
    dec bc                                        ; $56e0: $0b
    dec bc                                        ; $56e1: $0b
    dec bc                                        ; $56e2: $0b
    dec bc                                        ; $56e3: $0b
    dec bc                                        ; $56e4: $0b
    dec bc                                        ; $56e5: $0b
    dec bc                                        ; $56e6: $0b
    dec bc                                        ; $56e7: $0b
    dec bc                                        ; $56e8: $0b
    dec bc                                        ; $56e9: $0b
    dec bc                                        ; $56ea: $0b
    dec bc                                        ; $56eb: $0b
    dec bc                                        ; $56ec: $0b
    dec bc                                        ; $56ed: $0b
    dec bc                                        ; $56ee: $0b
    dec bc                                        ; $56ef: $0b
    dec bc                                        ; $56f0: $0b
    dec bc                                        ; $56f1: $0b
    dec bc                                        ; $56f2: $0b
    dec bc                                        ; $56f3: $0b
    dec bc                                        ; $56f4: $0b
    dec bc                                        ; $56f5: $0b
    dec bc                                        ; $56f6: $0b
    dec bc                                        ; $56f7: $0b
    dec bc                                        ; $56f8: $0b
    dec bc                                        ; $56f9: $0b
    dec bc                                        ; $56fa: $0b
    dec bc                                        ; $56fb: $0b
    dec bc                                        ; $56fc: $0b
    dec bc                                        ; $56fd: $0b
    dec bc                                        ; $56fe: $0b
    dec bc                                        ; $56ff: $0b
    dec c                                         ; $5700: $0d
    dec c                                         ; $5701: $0d
    dec c                                         ; $5702: $0d
    dec c                                         ; $5703: $0d
    dec c                                         ; $5704: $0d
    dec c                                         ; $5705: $0d
    dec c                                         ; $5706: $0d
    ld [$0808], sp                                ; $5707: $08 $08 $08
    ld [$0808], sp                                ; $570a: $08 $08 $08
    dec c                                         ; $570d: $0d
    dec c                                         ; $570e: $0d
    dec c                                         ; $570f: $0d
    dec c                                         ; $5710: $0d
    dec c                                         ; $5711: $0d
    dec c                                         ; $5712: $0d
    dec c                                         ; $5713: $0d
    dec bc                                        ; $5714: $0b
    dec bc                                        ; $5715: $0b
    dec bc                                        ; $5716: $0b
    dec bc                                        ; $5717: $0b
    dec bc                                        ; $5718: $0b
    dec bc                                        ; $5719: $0b
    dec bc                                        ; $571a: $0b
    dec bc                                        ; $571b: $0b
    dec bc                                        ; $571c: $0b
    dec bc                                        ; $571d: $0b
    dec bc                                        ; $571e: $0b
    dec bc                                        ; $571f: $0b
    dec c                                         ; $5720: $0d
    dec c                                         ; $5721: $0d
    dec c                                         ; $5722: $0d
    dec c                                         ; $5723: $0d
    dec c                                         ; $5724: $0d
    dec c                                         ; $5725: $0d
    ld [$0808], sp                                ; $5726: $08 $08 $08
    ld [$0808], sp                                ; $5729: $08 $08 $08
    ld [$0d08], sp                                ; $572c: $08 $08 $0d
    dec c                                         ; $572f: $0d
    dec c                                         ; $5730: $0d
    dec c                                         ; $5731: $0d
    dec c                                         ; $5732: $0d
    dec c                                         ; $5733: $0d
    dec bc                                        ; $5734: $0b
    dec bc                                        ; $5735: $0b
    dec bc                                        ; $5736: $0b
    dec bc                                        ; $5737: $0b
    dec bc                                        ; $5738: $0b
    dec bc                                        ; $5739: $0b
    dec bc                                        ; $573a: $0b
    dec bc                                        ; $573b: $0b
    dec bc                                        ; $573c: $0b
    dec bc                                        ; $573d: $0b
    dec bc                                        ; $573e: $0b
    dec bc                                        ; $573f: $0b
    dec c                                         ; $5740: $0d
    dec c                                         ; $5741: $0d
    dec c                                         ; $5742: $0d
    dec c                                         ; $5743: $0d
    dec c                                         ; $5744: $0d
    dec c                                         ; $5745: $0d
    ld [$0808], sp                                ; $5746: $08 $08 $08
    ld [$0808], sp                                ; $5749: $08 $08 $08
    ld [$0d08], sp                                ; $574c: $08 $08 $0d
    dec c                                         ; $574f: $0d
    dec c                                         ; $5750: $0d
    dec c                                         ; $5751: $0d
    dec c                                         ; $5752: $0d
    dec c                                         ; $5753: $0d
    dec bc                                        ; $5754: $0b
    dec bc                                        ; $5755: $0b
    dec bc                                        ; $5756: $0b
    dec bc                                        ; $5757: $0b
    dec bc                                        ; $5758: $0b
    dec bc                                        ; $5759: $0b
    dec bc                                        ; $575a: $0b
    ld c, e                                       ; $575b: $4b
    dec bc                                        ; $575c: $0b
    dec bc                                        ; $575d: $0b
    dec bc                                        ; $575e: $0b
    dec bc                                        ; $575f: $0b
    rrca                                          ; $5760: $0f
    rrca                                          ; $5761: $0f
    dec c                                         ; $5762: $0d
    rrca                                          ; $5763: $0f
    rrca                                          ; $5764: $0f
    rrca                                          ; $5765: $0f
    ld [$0808], sp                                ; $5766: $08 $08 $08
    ld [$0808], sp                                ; $5769: $08 $08 $08
    ld [$0d08], sp                                ; $576c: $08 $08 $0d
    dec c                                         ; $576f: $0d
    dec c                                         ; $5770: $0d
    dec c                                         ; $5771: $0d
    dec c                                         ; $5772: $0d
    dec c                                         ; $5773: $0d
    dec bc                                        ; $5774: $0b
    dec bc                                        ; $5775: $0b
    dec bc                                        ; $5776: $0b
    dec bc                                        ; $5777: $0b
    dec bc                                        ; $5778: $0b
    dec bc                                        ; $5779: $0b
    dec bc                                        ; $577a: $0b
    dec bc                                        ; $577b: $0b
    dec bc                                        ; $577c: $0b
    dec bc                                        ; $577d: $0b
    dec bc                                        ; $577e: $0b
    dec bc                                        ; $577f: $0b
    rrca                                          ; $5780: $0f
    rrca                                          ; $5781: $0f
    dec c                                         ; $5782: $0d
    rrca                                          ; $5783: $0f
    rrca                                          ; $5784: $0f
    rrca                                          ; $5785: $0f
    ld c, $0e                                     ; $5786: $0e $0e
    ld c, $0e                                     ; $5788: $0e $0e
    ld c, $0e                                     ; $578a: $0e $0e
    ld c, $0e                                     ; $578c: $0e $0e
    dec c                                         ; $578e: $0d
    dec c                                         ; $578f: $0d
    dec c                                         ; $5790: $0d
    dec c                                         ; $5791: $0d
    dec c                                         ; $5792: $0d
    dec c                                         ; $5793: $0d
    dec bc                                        ; $5794: $0b
    dec bc                                        ; $5795: $0b
    dec bc                                        ; $5796: $0b
    dec bc                                        ; $5797: $0b
    dec bc                                        ; $5798: $0b
    dec bc                                        ; $5799: $0b
    dec bc                                        ; $579a: $0b
    dec bc                                        ; $579b: $0b
    dec bc                                        ; $579c: $0b
    dec bc                                        ; $579d: $0b
    dec bc                                        ; $579e: $0b
    dec bc                                        ; $579f: $0b
    rrca                                          ; $57a0: $0f
    rrca                                          ; $57a1: $0f
    rrca                                          ; $57a2: $0f
    rrca                                          ; $57a3: $0f
    rrca                                          ; $57a4: $0f
    rrca                                          ; $57a5: $0f
    rrca                                          ; $57a6: $0f
    rrca                                          ; $57a7: $0f
    rrca                                          ; $57a8: $0f
    rrca                                          ; $57a9: $0f
    rrca                                          ; $57aa: $0f
    inc c                                         ; $57ab: $0c
    inc c                                         ; $57ac: $0c
    inc c                                         ; $57ad: $0c
    ld c, $0e                                     ; $57ae: $0e $0e
    ld c, $0e                                     ; $57b0: $0e $0e
    ld c, $0e                                     ; $57b2: $0e $0e
    dec bc                                        ; $57b4: $0b
    dec bc                                        ; $57b5: $0b
    dec bc                                        ; $57b6: $0b
    dec bc                                        ; $57b7: $0b
    dec bc                                        ; $57b8: $0b
    dec bc                                        ; $57b9: $0b
    dec bc                                        ; $57ba: $0b
    dec bc                                        ; $57bb: $0b
    dec bc                                        ; $57bc: $0b
    dec bc                                        ; $57bd: $0b
    dec bc                                        ; $57be: $0b
    dec bc                                        ; $57bf: $0b
    dec bc                                        ; $57c0: $0b
    dec bc                                        ; $57c1: $0b
    dec bc                                        ; $57c2: $0b
    dec bc                                        ; $57c3: $0b
    dec bc                                        ; $57c4: $0b
    dec bc                                        ; $57c5: $0b
    dec bc                                        ; $57c6: $0b
    dec bc                                        ; $57c7: $0b
    inc c                                         ; $57c8: $0c
    inc c                                         ; $57c9: $0c
    inc c                                         ; $57ca: $0c
    inc c                                         ; $57cb: $0c
    inc c                                         ; $57cc: $0c
    inc c                                         ; $57cd: $0c
    inc c                                         ; $57ce: $0c
    inc c                                         ; $57cf: $0c
    inc c                                         ; $57d0: $0c
    inc c                                         ; $57d1: $0c
    inc c                                         ; $57d2: $0c
    inc c                                         ; $57d3: $0c
    dec bc                                        ; $57d4: $0b

Jump_048_57d5:
    dec bc                                        ; $57d5: $0b
    dec bc                                        ; $57d6: $0b
    dec bc                                        ; $57d7: $0b
    dec bc                                        ; $57d8: $0b
    dec bc                                        ; $57d9: $0b
    dec bc                                        ; $57da: $0b
    dec bc                                        ; $57db: $0b
    dec bc                                        ; $57dc: $0b
    dec bc                                        ; $57dd: $0b
    dec bc                                        ; $57de: $0b
    dec bc                                        ; $57df: $0b
    dec bc                                        ; $57e0: $0b
    dec bc                                        ; $57e1: $0b
    dec bc                                        ; $57e2: $0b
    dec bc                                        ; $57e3: $0b
    dec bc                                        ; $57e4: $0b
    dec bc                                        ; $57e5: $0b
    dec bc                                        ; $57e6: $0b
    dec bc                                        ; $57e7: $0b
    dec bc                                        ; $57e8: $0b
    dec bc                                        ; $57e9: $0b
    inc c                                         ; $57ea: $0c
    inc c                                         ; $57eb: $0c
    inc c                                         ; $57ec: $0c
    inc c                                         ; $57ed: $0c
    inc c                                         ; $57ee: $0c
    inc c                                         ; $57ef: $0c
    inc c                                         ; $57f0: $0c
    inc c                                         ; $57f1: $0c
    inc c                                         ; $57f2: $0c
    inc c                                         ; $57f3: $0c
    dec bc                                        ; $57f4: $0b
    dec bc                                        ; $57f5: $0b
    dec bc                                        ; $57f6: $0b
    dec bc                                        ; $57f7: $0b
    dec bc                                        ; $57f8: $0b
    dec bc                                        ; $57f9: $0b
    dec bc                                        ; $57fa: $0b
    dec bc                                        ; $57fb: $0b
    dec bc                                        ; $57fc: $0b
    dec bc                                        ; $57fd: $0b
    dec bc                                        ; $57fe: $0b
    dec bc                                        ; $57ff: $0b
    dec bc                                        ; $5800: $0b
    dec bc                                        ; $5801: $0b
    dec bc                                        ; $5802: $0b
    dec bc                                        ; $5803: $0b
    dec bc                                        ; $5804: $0b
    dec bc                                        ; $5805: $0b
    dec bc                                        ; $5806: $0b
    dec bc                                        ; $5807: $0b
    dec bc                                        ; $5808: $0b
    dec bc                                        ; $5809: $0b
    dec bc                                        ; $580a: $0b
    dec bc                                        ; $580b: $0b
    dec bc                                        ; $580c: $0b
    dec bc                                        ; $580d: $0b
    dec bc                                        ; $580e: $0b
    dec bc                                        ; $580f: $0b
    dec bc                                        ; $5810: $0b
    dec bc                                        ; $5811: $0b
    dec bc                                        ; $5812: $0b
    dec bc                                        ; $5813: $0b
    dec bc                                        ; $5814: $0b
    dec bc                                        ; $5815: $0b
    dec bc                                        ; $5816: $0b
    dec bc                                        ; $5817: $0b
    dec bc                                        ; $5818: $0b
    dec bc                                        ; $5819: $0b
    dec bc                                        ; $581a: $0b
    dec bc                                        ; $581b: $0b
    dec bc                                        ; $581c: $0b
    dec bc                                        ; $581d: $0b
    dec bc                                        ; $581e: $0b
    dec bc                                        ; $581f: $0b
    dec bc                                        ; $5820: $0b
    dec bc                                        ; $5821: $0b
    dec bc                                        ; $5822: $0b
    dec bc                                        ; $5823: $0b
    dec bc                                        ; $5824: $0b
    dec bc                                        ; $5825: $0b
    dec bc                                        ; $5826: $0b
    dec bc                                        ; $5827: $0b
    dec bc                                        ; $5828: $0b
    dec bc                                        ; $5829: $0b
    dec bc                                        ; $582a: $0b
    dec bc                                        ; $582b: $0b
    dec bc                                        ; $582c: $0b
    dec bc                                        ; $582d: $0b
    dec bc                                        ; $582e: $0b
    dec bc                                        ; $582f: $0b
    dec bc                                        ; $5830: $0b
    dec bc                                        ; $5831: $0b
    dec bc                                        ; $5832: $0b
    dec bc                                        ; $5833: $0b
    dec bc                                        ; $5834: $0b
    dec bc                                        ; $5835: $0b
    dec bc                                        ; $5836: $0b
    dec bc                                        ; $5837: $0b
    dec bc                                        ; $5838: $0b
    dec bc                                        ; $5839: $0b
    dec bc                                        ; $583a: $0b
    dec bc                                        ; $583b: $0b
    dec bc                                        ; $583c: $0b
    dec bc                                        ; $583d: $0b
    dec bc                                        ; $583e: $0b
    dec bc                                        ; $583f: $0b
    dec bc                                        ; $5840: $0b
    dec bc                                        ; $5841: $0b
    dec bc                                        ; $5842: $0b
    dec bc                                        ; $5843: $0b
    dec bc                                        ; $5844: $0b
    dec bc                                        ; $5845: $0b
    dec bc                                        ; $5846: $0b
    dec bc                                        ; $5847: $0b
    dec bc                                        ; $5848: $0b
    dec bc                                        ; $5849: $0b
    dec bc                                        ; $584a: $0b
    dec bc                                        ; $584b: $0b
    dec bc                                        ; $584c: $0b
    dec bc                                        ; $584d: $0b
    dec bc                                        ; $584e: $0b
    dec bc                                        ; $584f: $0b
    dec bc                                        ; $5850: $0b
    dec bc                                        ; $5851: $0b
    dec bc                                        ; $5852: $0b
    dec bc                                        ; $5853: $0b
    dec bc                                        ; $5854: $0b
    dec bc                                        ; $5855: $0b
    dec bc                                        ; $5856: $0b
    dec bc                                        ; $5857: $0b
    dec bc                                        ; $5858: $0b
    dec bc                                        ; $5859: $0b
    dec bc                                        ; $585a: $0b
    dec bc                                        ; $585b: $0b
    dec bc                                        ; $585c: $0b
    dec bc                                        ; $585d: $0b
    dec bc                                        ; $585e: $0b
    dec bc                                        ; $585f: $0b
    dec bc                                        ; $5860: $0b
    dec bc                                        ; $5861: $0b
    dec bc                                        ; $5862: $0b
    dec bc                                        ; $5863: $0b
    dec bc                                        ; $5864: $0b
    dec bc                                        ; $5865: $0b
    dec bc                                        ; $5866: $0b
    dec bc                                        ; $5867: $0b
    dec bc                                        ; $5868: $0b
    dec bc                                        ; $5869: $0b
    dec bc                                        ; $586a: $0b
    dec bc                                        ; $586b: $0b
    dec bc                                        ; $586c: $0b
    dec bc                                        ; $586d: $0b
    dec bc                                        ; $586e: $0b
    dec bc                                        ; $586f: $0b
    dec bc                                        ; $5870: $0b
    dec bc                                        ; $5871: $0b
    dec bc                                        ; $5872: $0b
    dec bc                                        ; $5873: $0b
    dec bc                                        ; $5874: $0b
    dec bc                                        ; $5875: $0b
    dec bc                                        ; $5876: $0b
    dec bc                                        ; $5877: $0b
    dec bc                                        ; $5878: $0b
    dec bc                                        ; $5879: $0b
    dec bc                                        ; $587a: $0b
    dec bc                                        ; $587b: $0b
    dec bc                                        ; $587c: $0b
    dec bc                                        ; $587d: $0b
    dec bc                                        ; $587e: $0b
    dec bc                                        ; $587f: $0b
    dec bc                                        ; $5880: $0b
    dec bc                                        ; $5881: $0b
    dec bc                                        ; $5882: $0b
    dec bc                                        ; $5883: $0b
    dec bc                                        ; $5884: $0b
    dec bc                                        ; $5885: $0b
    dec bc                                        ; $5886: $0b
    dec bc                                        ; $5887: $0b
    dec bc                                        ; $5888: $0b
    dec bc                                        ; $5889: $0b
    dec bc                                        ; $588a: $0b
    dec bc                                        ; $588b: $0b
    dec bc                                        ; $588c: $0b
    dec bc                                        ; $588d: $0b
    dec bc                                        ; $588e: $0b
    dec bc                                        ; $588f: $0b
    dec bc                                        ; $5890: $0b
    dec bc                                        ; $5891: $0b
    dec bc                                        ; $5892: $0b
    dec bc                                        ; $5893: $0b
    dec bc                                        ; $5894: $0b
    dec bc                                        ; $5895: $0b
    dec bc                                        ; $5896: $0b
    dec bc                                        ; $5897: $0b
    dec bc                                        ; $5898: $0b
    dec bc                                        ; $5899: $0b
    dec bc                                        ; $589a: $0b
    dec bc                                        ; $589b: $0b
    dec bc                                        ; $589c: $0b
    dec bc                                        ; $589d: $0b
    dec bc                                        ; $589e: $0b
    dec bc                                        ; $589f: $0b
    rst $38                                       ; $58a0: $ff
    ld a, a                                       ; $58a1: $7f
    rst $38                                       ; $58a2: $ff
    ld l, e                                       ; $58a3: $6b
    ld e, b                                       ; $58a4: $58
    ld e, $00                                     ; $58a5: $1e $00
    nop                                           ; $58a7: $00
    ld b, h                                       ; $58a8: $44
    inc bc                                        ; $58a9: $03
    ld b, h                                       ; $58aa: $44
    inc bc                                        ; $58ab: $03
    nop                                           ; $58ac: $00
    ld [bc], a                                    ; $58ad: $02
    nop                                           ; $58ae: $00
    nop                                           ; $58af: $00
    rra                                           ; $58b0: $1f
    ld [de], a                                    ; $58b1: $12
    rst $38                                       ; $58b2: $ff
    inc bc                                        ; $58b3: $03
    or $00                                        ; $58b4: $f6 $00
    ld [hl+], a                                   ; $58b6: $22
    nop                                           ; $58b7: $00
    ld b, h                                       ; $58b8: $44
    inc bc                                        ; $58b9: $03
    rra                                           ; $58ba: $1f
    ld [de], a                                    ; $58bb: $12
    or $00                                        ; $58bc: $f6 $00
    ld [hl+], a                                   ; $58be: $22
    nop                                           ; $58bf: $00
    nop                                           ; $58c0: $00
    nop                                           ; $58c1: $00
    ld b, h                                       ; $58c2: $44
    inc bc                                        ; $58c3: $03
    nop                                           ; $58c4: $00
    ld [bc], a                                    ; $58c5: $02
    ld b, b                                       ; $58c6: $40
    ld bc, $6bff                                  ; $58c7: $01 $ff $6b
    adc [hl]                                      ; $58ca: $8e
    ld a, a                                       ; $58cb: $7f
    add b                                         ; $58cc: $80
    ld a, [hl]                                    ; $58cd: $7e
    add b                                         ; $58ce: $80
    ld a, l                                       ; $58cf: $7d
    rst $38                                       ; $58d0: $ff
    ld l, e                                       ; $58d1: $6b
    adc [hl]                                      ; $58d2: $8e
    ld a, a                                       ; $58d3: $7f
    nop                                           ; $58d4: $00
    ld [bc], a                                    ; $58d5: $02
    ld b, b                                       ; $58d6: $40
    ld bc, $7e80                                  ; $58d7: $01 $80 $7e
    adc [hl]                                      ; $58da: $8e
    ld a, a                                       ; $58db: $7f
    inc b                                         ; $58dc: $04
    ld [bc], a                                    ; $58dd: $02
    ld b, b                                       ; $58de: $40
    ld bc, $0000                                  ; $58df: $01 $00 $00
    adc [hl]                                      ; $58e2: $8e
    ld a, a                                       ; $58e3: $7f
    inc b                                         ; $58e4: $04
    ld [bc], a                                    ; $58e5: $02
    ld b, b                                       ; $58e6: $40
    ld bc, $0000                                  ; $58e7: $01 $00 $00
    nop                                           ; $58ea: $00
    nop                                           ; $58eb: $00
    nop                                           ; $58ec: $00
    nop                                           ; $58ed: $00
    nop                                           ; $58ee: $00
    nop                                           ; $58ef: $00
    rst $38                                       ; $58f0: $ff
    ccf                                           ; $58f1: $3f
    nop                                           ; $58f2: $00
    ld a, a                                       ; $58f3: $7f
    nop                                           ; $58f4: $00
    rst $38                                       ; $58f5: $ff
    rra                                           ; $58f6: $1f
    pop af                                        ; $58f7: $f1
    ld sp, $eeff                                  ; $58f8: $31 $ff $ee
    ld l, $ef                                     ; $58fb: $2e $ef
    cpl                                           ; $58fd: $2f
    add sp, $28                                   ; $58fe: $e8 $28
    xor $2e                                       ; $5900: $ee $2e
    rst $38                                       ; $5902: $ff
    rst $38                                       ; $5903: $ff
    nop                                           ; $5904: $00
    rst $38                                       ; $5905: $ff
    nop                                           ; $5906: $00
    ld a, a                                       ; $5907: $7f
    rst $38                                       ; $5908: $ff
    add $c6                                       ; $5909: $c6 $c6
    or a                                          ; $590b: $b7
    cp e                                          ; $590c: $bb
    cp e                                          ; $590d: $bb
    xor d                                         ; $590e: $aa
    db $fd                                        ; $590f: $fd
    ldh [$ab], a                                  ; $5910: $e0 $ab
    cp d                                          ; $5912: $ba
    ldh a, [$e1]                                  ; $5913: $f0 $e1
    ei                                            ; $5915: $fb
    rst $38                                       ; $5916: $ff
    rst $38                                       ; $5917: $ff
    ld c, $0a                                     ; $5918: $0e $0a
    cp [hl]                                       ; $591a: $be
    cp d                                          ; $591b: $ba
    and d                                         ; $591c: $a2
    cp [hl]                                       ; $591d: $be
    cp [hl]                                       ; $591e: $be
    rst $30                                       ; $591f: $f7
    and d                                         ; $5920: $a2
    and d                                         ; $5921: $a2
    cp [hl]                                       ; $5922: $be
    ldh [$e1], a                                  ; $5923: $e0 $e1
    rst $38                                       ; $5925: $ff
    db $fd                                        ; $5926: $fd
    dec d                                         ; $5927: $15
    rla                                           ; $5928: $17
    rst $38                                       ; $5929: $ff
    rst $30                                       ; $592a: $f7
    rst $30                                       ; $592b: $f7
    ld a, [$3dfa]                                 ; $592c: $fa $fa $3d
    dec l                                         ; $592f: $2d
    ld a, [$fefa]                                 ; $5930: $fa $fa $fe
    ret nc                                        ; $5933: $d0

    pop hl                                        ; $5934: $e1
    db $fc                                        ; $5935: $fc
    rst $38                                       ; $5936: $ff
    ld b, a                                       ; $5937: $47
    ld b, [hl]                                    ; $5938: $46
    ld e, d                                       ; $5939: $5a
    ld e, e                                       ; $593a: $5b
    db $db                                        ; $593b: $db
    rst $18                                       ; $593c: $df

jr_048_593d:
    jp c, $dadb                                   ; $593d: $da $db $da

    rst $00                                       ; $5940: $c7
    add $e0                                       ; $5941: $c6 $e0
    ld [c], a                                     ; $5943: $e2
    rst $38                                       ; $5944: $ff
    adc h                                         ; $5945: $8c
    rst $38                                       ; $5946: $ff
    adc h                                         ; $5947: $8c
    or a                                          ; $5948: $b7
    or a                                          ; $5949: $b7
    or a                                          ; $594a: $b7
    or l                                          ; $594b: $b5
    or l                                          ; $594c: $b5
    or a                                          ; $594d: $b7
    adc a                                         ; $594e: $8f
    db $fd                                        ; $594f: $fd
    adc l                                         ; $5950: $8d
    ldh a, [$e3]                                  ; $5951: $f0 $e3
    add hl, de                                    ; $5953: $19
    add hl, de                                    ; $5954: $19
    halt                                          ; $5955: $76
    halt                                          ; $5956: $76
    ld d, a                                       ; $5957: $57
    ld [hl], a                                    ; $5958: $77
    rst $38                                       ; $5959: $ff
    ld a, c                                       ; $595a: $79
    ld e, c                                       ; $595b: $59
    ld a, [hl]                                    ; $595c: $7e
    ld e, [hl]                                    ; $595d: $5e
    db $fc                                        ; $595e: $fc
    nop                                           ; $595f: $00
    ld a, [$ff06]                                 ; $5960: $fa $06 $ff
    dec a                                         ; $5963: $3d
    ei                                            ; $5964: $fb
    jp hl                                         ; $5965: $e9


    xor a                                         ; $5966: $af
    xor l                                         ; $5967: $ad
    db $eb                                        ; $5968: $eb
    jp hl                                         ; $5969: $e9


    xor a                                         ; $596a: $af
    rst $38                                       ; $596b: $ff
    db $ed                                        ; $596c: $ed
    xor e                                         ; $596d: $ab
    xor l                                         ; $596e: $ad
    db $eb                                        ; $596f: $eb
    xor $2e                                       ; $5970: $ee $2e
    ldh a, [$30]                                  ; $5972: $f0 $30
    rst $38                                       ; $5974: $ff
    rst $38                                       ; $5975: $ff
    rra                                           ; $5976: $1f
    db $fc                                        ; $5977: $fc
    inc bc                                        ; $5978: $03
    db $e3                                        ; $5979: $e3
    inc e                                         ; $597a: $1c
    rst $08                                       ; $597b: $cf
    jr nc, jr_048_593d                            ; $597c: $30 $bf

    db $fc                                        ; $597e: $fc
    inc bc                                        ; $597f: $03
    ret nz                                        ; $5980: $c0

    ccf                                           ; $5981: $3f
    cp d                                          ; $5982: $ba
    cp e                                          ; $5983: $bb
    cp h                                          ; $5984: $bc
    ldh [$fc], a                                  ; $5985: $e0 $fc
    cp a                                          ; $5987: $bf
    add hl, de                                    ; $5988: $19
    and $e7                                       ; $5989: $e6 $e7
    jr @-$05                                      ; $598b: $18 $f9

    ld b, $b7                                     ; $598d: $06 $b7
    ldh [rP1], a                                  ; $598f: $e0 $00
    cp $8c                                        ; $5991: $fe $8c
    ld [c], a                                     ; $5993: $e2
    db $e3                                        ; $5994: $e3
    add hl, sp                                    ; $5995: $39
    add $cf                                       ; $5996: $c6 $cf
    jr nc, @-$46                                  ; $5998: $30 $b8

    ld b, a                                       ; $599a: $47
    cp $f0                                        ; $599b: $fe $f0
    pop hl                                        ; $599d: $e1
    rst $30                                       ; $599e: $f7
    rst $30                                       ; $599f: $f7
    dec d                                         ; $59a0: $15
    rla                                           ; $59a1: $17
    rst $38                                       ; $59a2: $ff
    db $fd                                        ; $59a3: $fd
    db $fc                                        ; $59a4: $fc
    rst $18                                       ; $59a5: $df
    inc bc                                        ; $59a6: $03
    adc a                                         ; $59a7: $8f
    ld [hl], b                                    ; $59a8: $70
    ld sp, $e0ce                                  ; $59a9: $31 $ce $e0
    pop hl                                        ; $59ac: $e1
    ld e, h                                       ; $59ad: $5c
    ld e, a                                       ; $59ae: $5f
    rst $38                                       ; $59af: $ff
    ld e, a                                       ; $59b0: $5f
    ld d, b                                       ; $59b1: $50
    or $f9                                        ; $59b2: $f6 $f9
    add hl, de                                    ; $59b4: $19
    and $f7                                       ; $59b5: $e6 $f7
    ld [$cdfb], sp                                ; $59b7: $08 $fb $cd
    ld [hl-], a                                   ; $59ba: $32
    ret nc                                        ; $59bb: $d0

    pop hl                                        ; $59bc: $e1
    cp c                                          ; $59bd: $b9
    cp a                                          ; $59be: $bf
    cp a                                          ; $59bf: $bf
    and c                                         ; $59c0: $a1
    rst $20                                       ; $59c1: $e7
    ld a, a                                       ; $59c2: $7f
    ld sp, hl                                     ; $59c3: $f9
    ld hl, sp+$07                                 ; $59c4: $f8 $07
    rrca                                          ; $59c6: $0f
    ldh a, [$9b]                                  ; $59c7: $f0 $9b
    ld h, h                                       ; $59c9: $64
    ret nz                                        ; $59ca: $c0

    pop hl                                        ; $59cb: $e1
    cp a                                          ; $59cc: $bf
    ld d, [hl]                                    ; $59cd: $56
    halt                                          ; $59ce: $76
    ld a, c                                       ; $59cf: $79
    ld e, c                                       ; $59d0: $59
    rst $08                                       ; $59d1: $cf
    rst $38                                       ; $59d2: $ff
    ret nz                                        ; $59d3: $c0

    pop hl                                        ; $59d4: $e1
    rst $38                                       ; $59d5: $ff
    db $fd                                        ; $59d6: $fd
    nop                                           ; $59d7: $00
    or b                                          ; $59d8: $b0
    pop hl                                        ; $59d9: $e1
    db $fd                                        ; $59da: $fd
    cp e                                          ; $59db: $bb
    jp hl                                         ; $59dc: $e9


    xor a                                         ; $59dd: $af
    dec a                                         ; $59de: $3d
    ei                                            ; $59df: $fb
    rst $38                                       ; $59e0: $ff
    db $fd                                        ; $59e1: $fd
    inc bc                                        ; $59e2: $03
    adc l                                         ; $59e3: $8d
    ld [hl], e                                    ; $59e4: $73
    pop af                                        ; $59e5: $f1
    rrca                                          ; $59e6: $0f
    ld a, l                                       ; $59e7: $7d
    add e                                         ; $59e8: $83
    rst $38                                       ; $59e9: $ff
    add c                                         ; $59ea: $81
    ld a, a                                       ; $59eb: $7f
    ld sp, hl                                     ; $59ec: $f9
    ld b, $e1                                     ; $59ed: $06 $e1
    ld e, $d9                                     ; $59ef: $1e $d9
    ld h, $1e                                     ; $59f1: $26 $1e
    db $fc                                        ; $59f3: $fc
    pop hl                                        ; $59f4: $e1
    ld sp, hl                                     ; $59f5: $f9
    ld b, $fb                                     ; $59f6: $06 $fb
    inc b                                         ; $59f8: $04
    ld [hl+], a                                   ; $59f9: $22
    ld [c], a                                     ; $59fa: $e2
    cp $ff                                        ; $59fb: $fe $ff
    cp $ff                                        ; $59fd: $fe $ff
    cp $f6                                        ; $59ff: $fe $f6
    or $fd                                        ; $5a01: $f6 $fd
    inc bc                                        ; $5a03: $03
    call $f933                                    ; $5a04: $cd $33 $f9
    rlca                                          ; $5a07: $07
    push bc                                       ; $5a08: $c5
    rst $38                                       ; $5a09: $ff
    dec sp                                        ; $5a0a: $3b
    db $fd                                        ; $5a0b: $fd
    inc bc                                        ; $5a0c: $03
    pop hl                                        ; $5a0d: $e1
    rra                                           ; $5a0e: $1f
    sbc l                                         ; $5a0f: $9d
    ld h, e                                       ; $5a10: $63
    db $fd                                        ; $5a11: $fd
    cp [hl]                                       ; $5a12: $be
    ld c, $e0                                     ; $5a13: $0e $e0
    nop                                           ; $5a15: $00
    ld a, a                                       ; $5a16: $7f
    ccf                                           ; $5a17: $3f
    ccf                                           ; $5a18: $3f
    nop                                           ; $5a19: $00
    rst $38                                       ; $5a1a: $ff
    and $7c                                       ; $5a1b: $e6 $7c
    or c                                          ; $5a1d: $b1
    add e                                         ; $5a1e: $83
    pop bc                                        ; $5a1f: $c1
    ret nz                                        ; $5a20: $c0

    ld d, l                                       ; $5a21: $55

jr_048_5a22:
    ldh [$ee], a                                  ; $5a22: $e0 $ee
    push hl                                       ; $5a24: $e5
    db $e3                                        ; $5a25: $e3
    inc e                                         ; $5a26: $1c
    ldh a, [$eb]                                  ; $5a27: $f0 $eb
    ld [hl], b                                    ; $5a29: $70
    db $fd                                        ; $5a2a: $fd
    adc a                                         ; $5a2b: $8f
    ldh [$e1], a                                  ; $5a2c: $e0 $e1
    ld bc, $0302                                  ; $5a2e: $01 $02 $03
    nop                                           ; $5a31: $00
    ld [bc], a                                    ; $5a32: $02
    ld bc, $02bf                                  ; $5a33: $01 $bf $02
    ld bc, $0404                                  ; $5a36: $01 $04 $04
    ld hl, sp+$07                                 ; $5a39: $f8 $07
    ret nc                                        ; $5a3b: $d0

    pop hl                                        ; $5a3c: $e1
    and b                                         ; $5a3d: $a0
    rst $38                                       ; $5a3e: $ff
    ld h, b                                       ; $5a3f: $60
    jr nz, jr_048_5a22                            ; $5a40: $20 $e0

    and b                                         ; $5a42: $a0
    ld h, b                                       ; $5a43: $60
    or b                                          ; $5a44: $b0
    jr nc, jr_048_5a73                            ; $5a45: $30 $2c

    rst $00                                       ; $5a47: $c7
    xor h                                         ; $5a48: $ac
    di                                            ; $5a49: $f3
    inc c                                         ; $5a4a: $0c
    ret nz                                        ; $5a4b: $c0

    db $eb                                        ; $5a4c: $eb
    ld a, [bc]                                    ; $5a4d: $0a
    ld [c], a                                     ; $5a4e: $e2
    or b                                          ; $5a4f: $b0
    add sp, $71                                   ; $5a50: $e8 $71
    adc a                                         ; $5a52: $8f
    rrca                                          ; $5a53: $0f
    ld [bc], a                                    ; $5a54: $02
    cp $fc                                        ; $5a55: $fe $fc
    db $fc                                        ; $5a57: $fc
    sub b                                         ; $5a58: $90
    rst $20                                       ; $5a59: $e7
    nop                                           ; $5a5a: $00
    nop                                           ; $5a5b: $00
    nop                                           ; $5a5c: $00
    nop                                           ; $5a5d: $00
    nop                                           ; $5a5e: $00
    nop                                           ; $5a5f: $00
    rst $38                                       ; $5a60: $ff
    ldh [$e0], a                                  ; $5a61: $e0 $e0
    or b                                          ; $5a63: $b0
    ldh a, [$98]                                  ; $5a64: $f0 $98
    ld hl, sp-$54                                 ; $5a66: $f8 $ac
    db $fc                                        ; $5a68: $fc
    rst $38                                       ; $5a69: $ff
    cp [hl]                                       ; $5a6a: $be
    ld hl, sp-$44                                 ; $5a6b: $f8 $bc
    ldh a, [$f8]                                  ; $5a6d: $f0 $f8
    ldh [$f0], a                                  ; $5a6f: $e0 $f0
    nop                                           ; $5a71: $00
    nop                                           ; $5a72: $00

jr_048_5a73:
    rst $38                                       ; $5a73: $ff
    db $ed                                        ; $5a74: $ed
    nop                                           ; $5a75: $00
    nop                                           ; $5a76: $00
    nop                                           ; $5a77: $00
    ld b, h                                       ; $5a78: $44
    inc bc                                        ; $5a79: $03
    nop                                           ; $5a7a: $00
    ld [bc], a                                    ; $5a7b: $02
    rst $18                                       ; $5a7c: $df
    ld bc, $03ff                                  ; $5a7d: $01 $ff $03
    ld [c], a                                     ; $5a80: $e2
    ld l, e                                       ; $5a81: $6b
    nop                                           ; $5a82: $00
    ld [bc], a                                    ; $5a83: $02
    rst $18                                       ; $5a84: $df
    ld bc, $03ff                                  ; $5a85: $01 $ff $03
    nop                                           ; $5a88: $00
    nop                                           ; $5a89: $00
    nop                                           ; $5a8a: $00
    nop                                           ; $5a8b: $00
    nop                                           ; $5a8c: $00
    nop                                           ; $5a8d: $00
    nop                                           ; $5a8e: $00
    nop                                           ; $5a8f: $00
    push hl                                       ; $5a90: $e5
    nop                                           ; $5a91: $00
    rst $38                                       ; $5a92: $ff
    db $e4                                        ; $5a93: $e4
    ld bc, $e0ff                                  ; $5a94: $01 $ff $e0
    ld hl, sp-$1d                                 ; $5a97: $f8 $e3
    inc bc                                        ; $5a99: $03
    ld [bc], a                                    ; $5a9a: $02
    ld b, $ff                                     ; $5a9b: $06 $ff
    dec b                                         ; $5a9d: $05
    rlca                                          ; $5a9e: $07
    rlca                                          ; $5a9f: $07
    ld b, $05                                     ; $5aa0: $06 $05
    inc c                                         ; $5aa2: $0c
    dec bc                                        ; $5aa3: $0b
    dec c                                         ; $5aa4: $0d
    rst $38                                       ; $5aa5: $ff
    ld a, [bc]                                    ; $5aa6: $0a
    dec c                                         ; $5aa7: $0d
    ld a, [bc]                                    ; $5aa8: $0a
    inc a                                         ; $5aa9: $3c
    inc a                                         ; $5aaa: $3c
    ld [hl], d                                    ; $5aab: $72
    ld c, [hl]                                    ; $5aac: $4e
    ld b, d                                       ; $5aad: $42
    rst $38                                       ; $5aae: $ff
    ld a, [hl]                                    ; $5aaf: $7e
    ld a, [c]                                     ; $5ab0: $f2
    cp $ca                                        ; $5ab1: $fe $ca
    ld a, $0a                                     ; $5ab3: $3e $0a
    cp $ee                                        ; $5ab5: $fe $ee
    rst $38                                       ; $5ab7: $ff
    cp $3e                                        ; $5ab8: $fe $3e
    ld a, [hl-]                                   ; $5aba: $3a
    cp $fe                                        ; $5abb: $fe $fe
    pop af                                        ; $5abd: $f1
    rrca                                          ; $5abe: $0f
    dec bc                                        ; $5abf: $0b
    rst $38                                       ; $5ac0: $ff
    rst $38                                       ; $5ac1: $ff
    rst $38                                       ; $5ac2: $ff
    rst $38                                       ; $5ac3: $ff
    rrca                                          ; $5ac4: $0f
    pop af                                        ; $5ac5: $f1
    rrca                                          ; $5ac6: $0f
    pop af                                        ; $5ac7: $f1
    ld e, l                                       ; $5ac8: $5d
    rlca                                          ; $5ac9: $07
    and e                                         ; $5aca: $a3
    sbc l                                         ; $5acb: $9d
    ld h, e                                       ; $5acc: $63
    nop                                           ; $5acd: $00
    nop                                           ; $5ace: $00
    nop                                           ; $5acf: $00
    rst $38                                       ; $5ad0: $ff
    jr jr_048_5aea                                ; $5ad1: $18 $17

    jr jr_048_5aec                                ; $5ad3: $18 $17

    rra                                           ; $5ad5: $1f
    rra                                           ; $5ad6: $1f
    inc a                                         ; $5ad7: $3c
    inc sp                                        ; $5ad8: $33
    rst $38                                       ; $5ad9: $ff
    ccf                                           ; $5ada: $3f
    cpl                                           ; $5adb: $2f
    ld a, a                                       ; $5adc: $7f
    ld b, b                                       ; $5add: $40
    ld a, a                                       ; $5ade: $7f
    ld e, e                                       ; $5adf: $5b
    ld a, a                                       ; $5ae0: $7f
    ld e, a                                       ; $5ae1: $5f
    rst $38                                       ; $5ae2: $ff
    ld a, a                                       ; $5ae3: $7f
    ld d, a                                       ; $5ae4: $57
    ld a, a                                       ; $5ae5: $7f
    ld d, e                                       ; $5ae6: $53
    ld a, a                                       ; $5ae7: $7f
    ld h, b                                       ; $5ae8: $60
    rst $18                                       ; $5ae9: $df

jr_048_5aea:
    rst $38                                       ; $5aea: $ff
    rst $38                                       ; $5aeb: $ff

jr_048_5aec:
    pop bc                                        ; $5aec: $c1
    rst $38                                       ; $5aed: $ff
    ldh [rIE], a                                  ; $5aee: $e0 $ff
    rst $38                                       ; $5af0: $ff
    rst $38                                       ; $5af1: $ff
    ld [hl], b                                    ; $5af2: $70
    ld [hl], b                                    ; $5af3: $70
    rst $38                                       ; $5af4: $ff
    add hl, de                                    ; $5af5: $19
    rst $20                                       ; $5af6: $e7
    dec sp                                        ; $5af7: $3b
    rst $00                                       ; $5af8: $c7
    cp l                                          ; $5af9: $bd
    rst $00                                       ; $5afa: $c7
    push af                                       ; $5afb: $f5
    rst $28                                       ; $5afc: $ef
    cp a                                          ; $5afd: $bf
    dec h                                         ; $5afe: $25
    rst $38                                       ; $5aff: $ff
    xor c                                         ; $5b00: $a9
    ld a, a                                       ; $5b01: $7f
    xor d                                         ; $5b02: $aa
    ld a, [hl]                                    ; $5b03: $7e
    cp $e1                                        ; $5b04: $fe $e1
    cp [hl]                                       ; $5b06: $be
    rst $38                                       ; $5b07: $ff
    ld a, [hl]                                    ; $5b08: $7e
    ld [hl], e                                    ; $5b09: $73
    rst $38                                       ; $5b0a: $ff
    rst $20                                       ; $5b0b: $e7
    ld sp, hl                                     ; $5b0c: $f9
    ld l, a                                       ; $5b0d: $6f
    pop af                                        ; $5b0e: $f1
    ld l, a                                       ; $5b0f: $6f
    rra                                           ; $5b10: $1f
    pop af                                        ; $5b11: $f1
    rst $30                                       ; $5b12: $f7
    ei                                            ; $5b13: $fb
    ld a, $3e                                     ; $5b14: $3e $3e
    nop                                           ; $5b16: $00
    nop                                           ; $5b17: $00
    nop                                           ; $5b18: $00
    ld [c], a                                     ; $5b19: $e2
    ld l, e                                       ; $5b1a: $6b
    rst $38                                       ; $5b1b: $ff
    ld l, e                                       ; $5b1c: $6b
    ld e, a                                       ; $5b1d: $5f
    ld bc, $0000                                  ; $5b1e: $01 $00 $00
    rst $38                                       ; $5b21: $ff
    ld l, e                                       ; $5b22: $6b
    rst $38                                       ; $5b23: $ff
    ld l, e                                       ; $5b24: $6b
    ld e, a                                       ; $5b25: $5f
    ld bc, $0000                                  ; $5b26: $01 $00 $00
    cp a                                          ; $5b29: $bf
    inc a                                         ; $5b2a: $3c
    ld a, [hl]                                    ; $5b2b: $7e
    ld a, d                                       ; $5b2c: $7a
    jp $99fd                                      ; $5b2d: $c3 $fd $99


    cp $e1                                        ; $5b30: $fe $e1
    cp c                                          ; $5b32: $b9
    cp a                                          ; $5b33: $bf
    add c                                         ; $5b34: $81
    ld b, d                                       ; $5b35: $42
    jp Jump_048_7e3c                              ; $5b36: $c3 $3c $7e


    nop                                           ; $5b39: $00
    rst $38                                       ; $5b3a: $ff
    db $ec                                        ; $5b3b: $ec
    inc a                                         ; $5b3c: $3c
    rst $38                                       ; $5b3d: $ff
    ld a, h                                       ; $5b3e: $7c
    ld [hl], h                                    ; $5b3f: $74
    ld b, h                                       ; $5b40: $44
    ld d, h                                       ; $5b41: $54
    ld b, h                                       ; $5b42: $44
    ld [hl], h                                    ; $5b43: $74
    ld h, h                                       ; $5b44: $64
    inc [hl]                                      ; $5b45: $34
    ld a, a                                       ; $5b46: $7f
    ld h, h                                       ; $5b47: $64
    inc [hl]                                      ; $5b48: $34
    inc h                                         ; $5b49: $24
    inc h                                         ; $5b4a: $24
    inc h                                         ; $5b4b: $24
    inc a                                         ; $5b4c: $3c
    inc a                                         ; $5b4d: $3c
    ldh [$ee], a                                  ; $5b4e: $e0 $ee
    cp $c0                                        ; $5b50: $fe $c0
    ldh [$dd], a                                  ; $5b52: $e0 $dd
    sbc c                                         ; $5b54: $99
    ld a, l                                       ; $5b55: $7d
    pop af                                        ; $5b56: $f1
    ld [hl], $67                                  ; $5b57: $36 $67
    ld a, l                                       ; $5b59: $7d
    rst $18                                       ; $5b5a: $df
    pop bc                                        ; $5b5b: $c1
    add c                                         ; $5b5c: $81
    add c                                         ; $5b5d: $81
    rst $38                                       ; $5b5e: $ff
    rst $38                                       ; $5b5f: $ff
    ldh [$f3], a                                  ; $5b60: $e0 $f3
    ld a, d                                       ; $5b62: $7a
    db $e3                                        ; $5b63: $e3
    rst $28                                       ; $5b64: $ef
    ld a, l                                       ; $5b65: $7d
    ld sp, hl                                     ; $5b66: $f9
    cp l                                          ; $5b67: $bd
    sbc c                                         ; $5b68: $99
    and b                                         ; $5b69: $a0
    ld a, [c]                                     ; $5b6a: $f2
    ld a, [hl]                                    ; $5b6b: $7e
    ld e, d                                       ; $5b6c: $5a
    jp nz, $baff                                  ; $5b6d: $c2 $ff $ba

    sub d                                         ; $5b70: $92
    ld a, [$ff93]                                 ; $5b71: $fa $93 $ff
    add c                                         ; $5b74: $81
    adc c                                         ; $5b75: $89
    add c                                         ; $5b76: $81
    rst $28                                       ; $5b77: $ef
    ld a, d                                       ; $5b78: $7a
    di                                            ; $5b79: $f3
    inc c                                         ; $5b7a: $0c
    ld e, $80                                     ; $5b7b: $1e $80
    db $ed                                        ; $5b7d: $ed
    ld a, [hl]                                    ; $5b7e: $7e
    ld a, a                                       ; $5b7f: $7f
    ld a, l                                       ; $5b80: $7d
    rst $20                                       ; $5b81: $e7
    ld b, c                                       ; $5b82: $41
    ld l, [hl]                                    ; $5b83: $6e
    ld c, a                                       ; $5b84: $4f
    ld e, h                                       ; $5b85: $5c
    ldh [$c0], a                                  ; $5b86: $e0 $c0
    ld hl, sp-$44                                 ; $5b88: $f8 $bc
    sbc [hl]                                      ; $5b8a: $9e
    ld a, [$83f7]                                 ; $5b8b: $fa $f7 $83
    db $fd                                        ; $5b8e: $fd
    sbc c                                         ; $5b8f: $99
    and b                                         ; $5b90: $a0
    di                                            ; $5b91: $f3
    ld a, h                                       ; $5b92: $7c
    cp $fa                                        ; $5b93: $fe $fa
    add d                                         ; $5b95: $82
    rst $38                                       ; $5b96: $ff
    adc d                                         ; $5b97: $8a
    add d                                         ; $5b98: $82
    ld a, d                                       ; $5b99: $7a
    ld [c], a                                     ; $5b9a: $e2
    ld [hl], h                                    ; $5b9b: $74
    ld b, [hl]                                    ; $5b9c: $46
    ld [hl], h                                    ; $5b9d: $74
    ld b, h                                       ; $5b9e: $44
    ld c, a                                       ; $5b9f: $4f
    ld b, h                                       ; $5ba0: $44
    ld b, h                                       ; $5ba1: $44
    jr c, jr_048_5c20                             ; $5ba2: $38 $7c

    ld h, b                                       ; $5ba4: $60
    db $f4                                        ; $5ba5: $f4
    db $fc                                        ; $5ba6: $fc
    ret nz                                        ; $5ba7: $c0

    db $dd                                        ; $5ba8: $dd
    ld h, b                                       ; $5ba9: $60
    db $f4                                        ; $5baa: $f4
    cp $e0                                        ; $5bab: $fe $e0
    pop bc                                        ; $5bad: $c1
    cp l                                          ; $5bae: $bd
    sbc c                                         ; $5baf: $99
    ld e, l                                       ; $5bb0: $5d
    pop bc                                        ; $5bb1: $c1
    dec a                                         ; $5bb2: $3d
    ld a, c                                       ; $5bb3: $79
    ld e, d                                       ; $5bb4: $5a
    ld bc, $e043                                  ; $5bb5: $01 $43 $e0
    rst $08                                       ; $5bb8: $cf
    nop                                           ; $5bb9: $00
    nop                                           ; $5bba: $00
    nop                                           ; $5bbb: $00
    nop                                           ; $5bbc: $00
    nop                                           ; $5bbd: $00
    nop                                           ; $5bbe: $00
    nop                                           ; $5bbf: $00
    rst $38                                       ; $5bc0: $ff
    rst $38                                       ; $5bc1: $ff
    ld [hl], b                                    ; $5bc2: $70
    rst $08                                       ; $5bc3: $cf
    cp b                                          ; $5bc4: $b8
    cp e                                          ; $5bc5: $bb
    call nz, $c1bf                                ; $5bc6: $c4 $bf $c1
    cp $fe                                        ; $5bc9: $fe $fe
    ldh [$c9], a                                  ; $5bcb: $e0 $c9
    ei                                            ; $5bcd: $fb
    ld [hl], h                                    ; $5bce: $74
    rst $00                                       ; $5bcf: $c7
    jr c, @+$01                                   ; $5bd0: $38 $ff

    nop                                           ; $5bd2: $00
    cp $fe                                        ; $5bd3: $fe $fe
    ldh [$e2], a                                  ; $5bd5: $e0 $e2
    sbc a                                         ; $5bd7: $9f
    ld [hl], e                                    ; $5bd8: $73
    halt                                          ; $5bd9: $76
    sbc e                                         ; $5bda: $9b
    halt                                          ; $5bdb: $76
    sbc e                                         ; $5bdc: $9b
    rst $38                                       ; $5bdd: $ff
    or $eb                                        ; $5bde: $f6 $eb
    adc [hl]                                      ; $5be0: $8e
    ld [hl], c                                    ; $5be1: $71
    rst $38                                       ; $5be2: $ff
    ld [bc], a                                    ; $5be3: $02
    cp $03                                        ; $5be4: $fe $03
    rst $38                                       ; $5be6: $ff
    rst $38                                       ; $5be7: $ff
    rst $00                                       ; $5be8: $c7
    cp [hl]                                       ; $5be9: $be
    ld h, e                                       ; $5bea: $63
    ld l, [hl]                                    ; $5beb: $6e
    or e                                          ; $5bec: $b3
    xor $33                                       ; $5bed: $ee $33
    rst $38                                       ; $5bef: $ff
    rst $28                                       ; $5bf0: $ef
    ld sp, $10ef                                  ; $5bf1: $31 $ef $10
    rst $38                                       ; $5bf4: $ff
    ld [$04fb], sp                                ; $5bf5: $08 $fb $04
    cp a                                          ; $5bf8: $bf
    rst $38                                       ; $5bf9: $ff
    add hl, de                                    ; $5bfa: $19
    ld a, e                                       ; $5bfb: $7b
    adc l                                         ; $5bfc: $8d
    ei                                            ; $5bfd: $fb
    dec c                                         ; $5bfe: $0d
    cp $e0                                        ; $5bff: $fe $e0
    adc l                                         ; $5c01: $8d
    ei                                            ; $5c02: $fb
    dec sp                                        ; $5c03: $3b
    call nz, $e2d0                                ; $5c04: $c4 $d0 $e2
    ld h, d                                       ; $5c07: $62
    sbc $b3                                       ; $5c08: $de $b3
    ld [hl], $db                                  ; $5c0a: $36 $db
    cp a                                          ; $5c0c: $bf
    halt                                          ; $5c0d: $76
    sbc e                                         ; $5c0e: $9b
    ld [hl], a                                    ; $5c0f: $77
    sbc c                                         ; $5c10: $99
    ld [hl], a                                    ; $5c11: $77
    adc b                                         ; $5c12: $88
    ret nz                                        ; $5c13: $c0

    ld [c], a                                     ; $5c14: $e2
    inc hl                                        ; $5c15: $23
    rst $38                                       ; $5c16: $ff
    xor $35                                       ; $5c17: $ee $35
    rst $28                                       ; $5c19: $ef
    scf                                           ; $5c1a: $37
    db $ec                                        ; $5c1b: $ec
    ld [hl], a                                    ; $5c1c: $77
    rst $28                                       ; $5c1d: $ef
    or e                                          ; $5c1e: $b3
    ei                                            ; $5c1f: $fb

jr_048_5c20:
    ld l, $d1                                     ; $5c20: $2e $d1
    or b                                          ; $5c22: $b0
    ld [c], a                                     ; $5c23: $e2
    add b                                         ; $5c24: $80
    ld a, a                                       ; $5c25: $7f
    ret nz                                        ; $5c26: $c0

    rst $18                                       ; $5c27: $df
    and b                                         ; $5c28: $a0
    rst $28                                       ; $5c29: $ef
    ccf                                           ; $5c2a: $3f
    ret nz                                        ; $5c2b: $c0

    rst $38                                       ; $5c2c: $ff
    add b                                         ; $5c2d: $80
    db $fc                                        ; $5c2e: $fc
    ldh [rNR23], a                                ; $5c2f: $e0 $18
    ei                                            ; $5c31: $fb
    inc e                                         ; $5c32: $1c
    rst $38                                       ; $5c33: $ff
    rst $38                                       ; $5c34: $ff
    ld a, [hl]                                    ; $5c35: $7e
    ret c                                         ; $5c36: $d8

    ccf                                           ; $5c37: $3f
    ei                                            ; $5c38: $fb
    inc e                                         ; $5c39: $1c
    di                                            ; $5c3a: $f3
    inc c                                         ; $5c3b: $0c
    rrca                                          ; $5c3c: $0f
    rst $38                                       ; $5c3d: $ff
    ld a, [hl]                                    ; $5c3e: $7e
    ret nz                                        ; $5c3f: $c0

    ccf                                           ; $5c40: $3f
    sub b                                         ; $5c41: $90
    ld [c], a                                     ; $5c42: $e2
    cp $ff                                        ; $5c43: $fe $ff
    cp $ff                                        ; $5c45: $fe $ff
    cp $ff                                        ; $5c47: $fe $ff
    cp $f8                                        ; $5c49: $fe $f8
    rst $30                                       ; $5c4b: $f7
    or c                                          ; $5c4c: $b1
    rst $28                                       ; $5c4d: $ef
    reti                                          ; $5c4e: $d9


    sbc e                                         ; $5c4f: $9b
    db $ed                                        ; $5c50: $ed
    ei                                            ; $5c51: $fb
    call $bbef                                    ; $5c52: $cd $ef $bb
    push af                                       ; $5c55: $f5
    and a                                         ; $5c56: $a7
    ret c                                         ; $5c57: $d8

    nop                                           ; $5c58: $00
    ld [c], a                                     ; $5c59: $e2
    ld h, e                                       ; $5c5a: $63
    adc $b5                                       ; $5c5b: $ce $b5
    rst $38                                       ; $5c5d: $ff
    ccf                                           ; $5c5e: $3f
    rst $00                                       ; $5c5f: $c7
    ld a, h                                       ; $5c60: $7c
    add a                                         ; $5c61: $87
    ld a, a                                       ; $5c62: $7f
    add e                                         ; $5c63: $83
    ld a, [hl]                                    ; $5c64: $7e
    add c                                         ; $5c65: $81
    cp $f0                                        ; $5c66: $fe $f0
    jp nz, Jump_048_7b88                          ; $5c68: $c2 $88 $7b

    call z, $a5df                                 ; $5c6b: $cc $df $a5
    dec a                                         ; $5c6e: $3d
    rst $00                                       ; $5c6f: $c7
    rst $28                                       ; $5c70: $ef
    rst $38                                       ; $5c71: $ff
    add d                                         ; $5c72: $82
    ld a, $c1                                     ; $5c73: $3e $c1
    nop                                           ; $5c75: $00
    ld [c], a                                     ; $5c76: $e2
    sbc b                                         ; $5c77: $98
    cp e                                          ; $5c78: $bb
    call $bb3f                                    ; $5c79: $cd $3f $bb
    ld c, l                                       ; $5c7c: $4d
    ld a, e                                       ; $5c7d: $7b
    adc l                                         ; $5c7e: $8d
    ld a, e                                       ; $5c7f: $7b
    adc h                                         ; $5c80: $8c
    db $f4                                        ; $5c81: $f4
    ret nz                                        ; $5c82: $c0

    ret nc                                        ; $5c83: $d0

    jp nz, $9ebd                                  ; $5c84: $c2 $bd $9e

    ret nc                                        ; $5c87: $d0

    jp nz, $e9f7                                  ; $5c88: $c2 $f7 $e9

    adc a                                         ; $5c8b: $8f
    ld [hl], b                                    ; $5c8c: $70
    nop                                           ; $5c8d: $00
    and $33                                       ; $5c8e: $e6 $33
    cp a                                          ; $5c90: $bf
    xor $71                                       ; $5c91: $ee $71
    rst $28                                       ; $5c93: $ef
    or a                                          ; $5c94: $b7
    inc l                                         ; $5c95: $2c
    db $d3                                        ; $5c96: $d3
    or b                                          ; $5c97: $b0
    jp nz, $e3c0                                  ; $5c98: $c2 $c0 $e3

    rra                                           ; $5c9b: $1f
    ldh [$fc], a                                  ; $5c9c: $e0 $fc
    add $a0                                       ; $5c9e: $c6 $a0
    pop bc                                        ; $5ca0: $c1
    adc h                                         ; $5ca1: $8c
    pop bc                                        ; $5ca2: $c1
    call c, Call_048_6dfb                         ; $5ca3: $dc $fb $6d
    rst $28                                       ; $5ca6: $ef
    srl h                                         ; $5ca7: $cb $3c
    ei                                            ; $5ca9: $fb
    ld [hl], h                                    ; $5caa: $74
    sub b                                         ; $5cab: $90
    jp nz, $9fe1                                  ; $5cac: $c2 $e1 $9f

    ld [hl], c                                    ; $5caf: $71
    ld a, a                                       ; $5cb0: $7f
    rst $30                                       ; $5cb1: $f7
    ld sp, hl                                     ; $5cb2: $f9
    sub a                                         ; $5cb3: $97
    ld a, c                                       ; $5cb4: $79
    rst $38                                       ; $5cb5: $ff
    jp hl                                         ; $5cb6: $e9


    adc e                                         ; $5cb7: $8b
    ldh a, [$e3]                                  ; $5cb8: $f0 $e3
    ld a, a                                       ; $5cba: $7f
    ld l, b                                       ; $5cbb: $68
    rst $38                                       ; $5cbc: $ff
    or h                                          ; $5cbd: $b4
    dec h                                         ; $5cbe: $25
    cp $6d                                        ; $5cbf: $fe $6d
    or [hl]                                       ; $5cc1: $b6
    cp $e0                                        ; $5cc2: $fe $e0
    db $fd                                        ; $5cc4: $fd
    sub d                                         ; $5cc5: $92
    ld [hl], b                                    ; $5cc6: $70
    ret nz                                        ; $5cc7: $c0

    ld bc, $71ff                                  ; $5cc8: $01 $ff $71
    rst $08                                       ; $5ccb: $cf
    cp b                                          ; $5ccc: $b8
    ei                                            ; $5ccd: $fb
    rst $18                                       ; $5cce: $df
    db $f4                                        ; $5ccf: $f4
    add a                                         ; $5cd0: $87
    ld hl, sp-$01                                 ; $5cd1: $f8 $ff
    ld [hl], b                                    ; $5cd3: $70
    ld h, b                                       ; $5cd4: $60
    ret nz                                        ; $5cd5: $c0

    ldh [$9f], a                                  ; $5cd6: $e0 $9f
    rst $38                                       ; $5cd8: $ff
    ld [hl], b                                    ; $5cd9: $70
    ld [hl], a                                    ; $5cda: $77
    sbc b                                         ; $5cdb: $98
    ld [hl], a                                    ; $5cdc: $77
    xor b                                         ; $5cdd: $a8
    rst $28                                       ; $5cde: $ef
    ld d, b                                       ; $5cdf: $50
    rst $18                                       ; $5ce0: $df
    rlca                                          ; $5ce1: $07
    jr nz, @+$01                                  ; $5ce2: $20 $ff

    ld b, b                                       ; $5ce4: $40
    db $fc                                        ; $5ce5: $fc
    ldh [rNR43], a                                ; $5ce6: $e0 $22
    rst $38                                       ; $5ce8: $ff
    db $fc                                        ; $5ce9: $fc
    ei                                            ; $5cea: $fb
    nop                                           ; $5ceb: $00
    jp nz, $a0fa                                  ; $5cec: $c2 $fa $a0

    rst $20                                       ; $5cef: $e7
    jr c, @-$03                                   ; $5cf0: $38 $fb

    adc l                                         ; $5cf2: $8d
    nop                                           ; $5cf3: $00
    add $70                                       ; $5cf4: $c6 $70
    pop hl                                        ; $5cf6: $e1
    ld hl, sp-$69                                 ; $5cf7: $f8 $97
    ld a, b                                       ; $5cf9: $78
    ei                                            ; $5cfa: $fb
    rst $38                                       ; $5cfb: $ff
    add sp, $70                                   ; $5cfc: $e8 $70
    db $e4                                        ; $5cfe: $e4
    ld de, $9a77                                  ; $5cff: $11 $77 $9a
    rst $30                                       ; $5d02: $f7
    xor e                                         ; $5d03: $ab
    rst $28                                       ; $5d04: $ef
    xor [hl]                                      ; $5d05: $ae
    di                                            ; $5d06: $f3
    rst $28                                       ; $5d07: $ef
    ld d, c                                       ; $5d08: $51
    sub b                                         ; $5d09: $90
    db $e4                                        ; $5d0a: $e4
    jp $e53e                                      ; $5d0b: $c3 $3e $e5


    rst $38                                       ; $5d0e: $ff
    db $ed                                        ; $5d0f: $ed
    sub $1d                                       ; $5d10: $d6 $1d
    and $ff                                       ; $5d12: $e6 $ff
    jp $e11e                                      ; $5d14: $c3 $1e $e1


    ld l, d                                       ; $5d17: $6a
    ld a, h                                       ; $5d18: $7c

jr_048_5d19:
    ldh [$60], a                                  ; $5d19: $e0 $60
    cp $e0                                        ; $5d1b: $fe $e0
    ldh [$fc], a                                  ; $5d1d: $e0 $fc
    db $e3                                        ; $5d1f: $e3
    ld e, a                                       ; $5d20: $5f
    and b                                         ; $5d21: $a0
    ldh [$a0], a                                  ; $5d22: $e0 $a0
    rst $38                                       ; $5d24: $ff
    inc c                                         ; $5d25: $0c
    ei                                            ; $5d26: $fb
    ld l, h                                       ; $5d27: $6c
    db $db                                        ; $5d28: $db
    cp h                                          ; $5d29: $bc
    cp e                                          ; $5d2a: $bb
    call z, Call_048_5fbb                         ; $5d2b: $cc $bb $5f
    db $dd                                        ; $5d2e: $dd
    ei                                            ; $5d2f: $fb
    ld l, h                                       ; $5d30: $6c
    swap h                                        ; $5d31: $cb $34
    jr nz, jr_048_5d19                            ; $5d33: $20 $e4

    ld [hl], b                                    ; $5d35: $70
    or b                                          ; $5d36: $b0
    and $ff                                       ; $5d37: $e6 $ff
    add b                                         ; $5d39: $80
    cp a                                          ; $5d3a: $bf
    ret nz                                        ; $5d3b: $c0

jr_048_5d3c:
    rst $38                                       ; $5d3c: $ff
    jp $e19e                                      ; $5d3d: $c3 $9e $e1


    cp a                                          ; $5d40: $bf
    rst $10                                       ; $5d41: $d7
    jp $c5be                                      ; $5d42: $c3 $be $c5


    sbc b                                         ; $5d45: $98
    ret nz                                        ; $5d46: $c0

    ld sp, $a6e0                                  ; $5d47: $31 $e0 $a6
    ldh [$5f], a                                  ; $5d4a: $e0 $5f
    rst $18                                       ; $5d4c: $df
    ldh [rIE], a                                  ; $5d4d: $e0 $ff
    and b                                         ; $5d4f: $a0
    cpl                                           ; $5d50: $2f
    ret nc                                        ; $5d51: $d0

    add b                                         ; $5d52: $80
    and d                                         ; $5d53: $a2
    add d                                         ; $5d54: $82
    cp [hl]                                       ; $5d55: $be
    rst $38                                       ; $5d56: $ff
    db $d3                                        ; $5d57: $d3
    or [hl]                                       ; $5d58: $b6
    db $db                                        ; $5d59: $db
    or [hl]                                       ; $5d5a: $b6
    db $db                                        ; $5d5b: $db
    cp $6d                                        ; $5d5c: $fe $6d
    ret                                           ; $5d5e: $c9


    rst $38                                       ; $5d5f: $ff
    ld [hl], $ff                                  ; $5d60: $36 $ff
    ld h, $ee                                     ; $5d62: $26 $ee
    inc de                                        ; $5d64: $13
    cp $63                                        ; $5d65: $fe $63
    xor $7d                                       ; $5d67: $ee $7d
    inc sp                                        ; $5d69: $33
    cp $e4                                        ; $5d6a: $fe $e4
    ld de, $60ff                                  ; $5d6c: $11 $ff $60
    rst $28                                       ; $5d6f: $ef

jr_048_5d70:
    jr nc, jr_048_5d70                            ; $5d70: $30 $fe

    add sp, -$4b                                  ; $5d72: $e8 $b5
    db $10                                        ; $5d74: $10
    ldh a, [$e0]                                  ; $5d75: $f0 $e0
    ld [hl], b                                    ; $5d77: $70
    cp $e7                                        ; $5d78: $fe $e7
    rst $08                                       ; $5d7a: $cf
    jr nc, jr_048_5dbd                            ; $5d7b: $30 $40

    and d                                         ; $5d7d: $a2
    call nc, $ffdf                                ; $5d7e: $d4 $df $ff
    cp $fe                                        ; $5d81: $fe $fe

jr_048_5d83:
    rst $38                                       ; $5d83: $ff
    sub $fe                                       ; $5d84: $d6 $fe
    ldh [$94], a                                  ; $5d86: $e0 $94
    ld l, e                                       ; $5d88: $6b
    cp $30                                        ; $5d89: $fe $30
    and d                                         ; $5d8b: $a2
    call c, $fffe                                 ; $5d8c: $dc $fe $ff
    and $ff                                       ; $5d8f: $e6 $ff
    adc $f7                                       ; $5d91: $ce $f7
    rst $28                                       ; $5d93: $ef
    sbc $e7                                       ; $5d94: $de $e7
    sbc h                                         ; $5d96: $9c
    ld h, e                                       ; $5d97: $63
    jr nz, jr_048_5d3c                            ; $5d98: $20 $a2

    ld a, h                                       ; $5d9a: $7c
    rst $00                                       ; $5d9b: $c7
    cp $ff                                        ; $5d9c: $fe $ff
    sbc $e7                                       ; $5d9e: $de $e7
    sbc $e7                                       ; $5da0: $de $e7

jr_048_5da2:
    db $fc                                        ; $5da2: $fc
    ld a, a                                       ; $5da3: $7f
    pop bc                                        ; $5da4: $c1
    ld a, $f6                                     ; $5da5: $3e $f6
    ld [hl], b                                    ; $5da7: $70
    pop hl                                        ; $5da8: $e1
    cp a                                          ; $5da9: $bf
    ldh a, [rP1]                                  ; $5daa: $f0 $00
    jp $b4fb                                      ; $5dac: $c3 $fb $b4


    rst $20                                       ; $5daf: $e7
    jr @-$02                                      ; $5db0: $18 $fc

    nop                                           ; $5db2: $00
    and d                                         ; $5db3: $a2
    sbc h                                         ; $5db4: $9c
    ret nz                                        ; $5db5: $c0

    rst $30                                       ; $5db6: $f7
    add sp, $0f                                   ; $5db7: $e8 $0f
    ldh a, [rIE]                                  ; $5db9: $f0 $ff
    ldh [$fe], a                                  ; $5dbb: $e0 $fe

jr_048_5dbd:
    jr nc, jr_048_5d83                            ; $5dbd: $30 $c4

    inc e                                         ; $5dbf: $1c
    di                                            ; $5dc0: $f3
    ld l, $fe                                     ; $5dc1: $2e $fe
    dec a                                         ; $5dc3: $3d
    pop hl                                        ; $5dc4: $e1
    ld a, $ef                                     ; $5dc5: $3e $ef
    rst $38                                       ; $5dc7: $ff
    inc e                                         ; $5dc8: $1c
    pop af                                        ; $5dc9: $f1
    ld c, $e0                                     ; $5dca: $0e $e0
    add d                                         ; $5dcc: $82
    ld e, b                                       ; $5dcd: $58
    di                                            ; $5dce: $f3
    ld l, h                                       ; $5dcf: $6c
    ld c, a                                       ; $5dd0: $4f
    rst $08                                       ; $5dd1: $cf
    ld [hl], b                                    ; $5dd2: $70
    rst $18                                       ; $5dd3: $df
    ld h, c                                       ; $5dd4: $61
    ld b, $e0                                     ; $5dd5: $06 $e0
    add b                                         ; $5dd7: $80
    jp $d0e0                                      ; $5dd8: $c3 $e0 $d0


    call nz, $408e                                ; $5ddb: $c4 $8e $40
    push bc                                       ; $5dde: $c5
    ldh a, [$87]                                  ; $5ddf: $f0 $87
    ld a, c                                       ; $5de1: $79
    inc l                                         ; $5de2: $2c
    jp nz, $e1bc                                  ; $5de3: $c2 $bc $e1

    jr nz, @-$3b                                  ; $5de6: $20 $c3

    ld [hl], d                                    ; $5de8: $72
    cp a                                          ; $5de9: $bf
    or $eb                                        ; $5dea: $f6 $eb
    ld c, $f3                                     ; $5dec: $0e $f3
    rst $38                                       ; $5dee: $ff
    pop hl                                        ; $5def: $e1
    ldh [$a0], a                                  ; $5df0: $e0 $a0
    jr nz, jr_048_5da2                            ; $5df2: $20 $ae

    ld b, b                                       ; $5df4: $40
    ldh [$b0], a                                  ; $5df5: $e0 $b0
    ld l, a                                       ; $5df7: $6f
    ldh a, [$3a]                                  ; $5df8: $f0 $3a
    ldh [rSVBK], a                                ; $5dfa: $e0 $70
    ldh [$82], a                                  ; $5dfc: $e0 $82
    ld bc, $9efc                                  ; $5dfe: $01 $fc $9e
    add c                                         ; $5e01: $81
    cp $e3                                        ; $5e02: $fe $e3
    rst $38                                       ; $5e04: $ff
    ld bc, $807f                                  ; $5e05: $01 $7f $80
    rst $38                                       ; $5e08: $ff
    ld [c], a                                     ; $5e09: $e2
    ld a, a                                       ; $5e0a: $7f
    ld e, $f3                                     ; $5e0b: $1e $f3
    or $1b                                        ; $5e0d: $f6 $1b
    rst $30                                       ; $5e0f: $f7
    dec de                                        ; $5e10: $1b
    or $fe                                        ; $5e11: $f6 $fe
    pop hl                                        ; $5e13: $e1
    rst $30                                       ; $5e14: $f7
    db $eb                                        ; $5e15: $eb
    ld c, $f1                                     ; $5e16: $0e $f1
    or h                                          ; $5e18: $b4
    add b                                         ; $5e19: $80
    ld d, l                                       ; $5e1a: $55
    db $dd                                        ; $5e1b: $dd
    and [hl]                                      ; $5e1c: $a6
    cp l                                          ; $5e1d: $bd
    ld a, a                                       ; $5e1e: $7f
    ld b, d                                       ; $5e1f: $42
    rst $38                                       ; $5e20: $ff
    add c                                         ; $5e21: $81
    rst $38                                       ; $5e22: $ff
    ld b, b                                       ; $5e23: $40
    rst $38                                       ; $5e24: $ff
    ld hl, $8080                                  ; $5e25: $21 $80 $80
    cp [hl]                                       ; $5e28: $be
    or h                                          ; $5e29: $b4
    add c                                         ; $5e2a: $81
    ld h, b                                       ; $5e2b: $60
    rst $18                                       ; $5e2c: $df
    and b                                         ; $5e2d: $a0
    cp a                                          ; $5e2e: $bf
    ld b, b                                       ; $5e2f: $40
    call nc, Call_000_00e0                        ; $5e30: $d4 $e0 $00
    rlca                                          ; $5e33: $07
    ld a, a                                       ; $5e34: $7f
    add b                                         ; $5e35: $80
    nop                                           ; $5e36: $00
    rst $38                                       ; $5e37: $ff
    db $ec                                        ; $5e38: $ec
    ld c, $cd                                     ; $5e39: $0e $cd
    rst $38                                       ; $5e3b: $ff
    xor l                                         ; $5e3c: $ad
    rst $38                                       ; $5e3d: $ff
    db $ed                                        ; $5e3e: $ed
    nop                                           ; $5e3f: $00
    nop                                           ; $5e40: $00
    nop                                           ; $5e41: $00
    ld c, $7f                                     ; $5e42: $0e $7f
    call Call_000_258a                            ; $5e44: $cd $8a $25
    call Call_000_2625                            ; $5e47: $cd $25 $26
    call Call_000_23b6                            ; $5e4a: $cd $b6 $23
    ld a, $01                                     ; $5e4d: $3e $01
    ldh [$96], a                                  ; $5e4f: $e0 $96
    ldh [rSVBK], a                                ; $5e51: $e0 $70
    call Call_000_0341                            ; $5e53: $cd $41 $03
    call Call_000_2683                            ; $5e56: $cd $83 $26
    ld a, $90                                     ; $5e59: $3e $90
    ldh [rWY], a                                  ; $5e5b: $e0 $4a
    xor a                                         ; $5e5d: $af
    ldh [$8b], a                                  ; $5e5e: $e0 $8b
    ldh [$8a], a                                  ; $5e60: $e0 $8a
    ld hl, $5f0c                                  ; $5e62: $21 $0c $5f
    ld de, $0008                                  ; $5e65: $11 $08 $00
    call Call_000_0595                            ; $5e68: $cd $95 $05
    ld hl, $5f4c                                  ; $5e6b: $21 $4c $5f
    ld de, $d000                                  ; $5e6e: $11 $00 $d0
    call Call_000_1f2f                            ; $5e71: $cd $2f $1f
    ld hl, $d000                                  ; $5e74: $21 $00 $d0
    ld de, $b000                                  ; $5e77: $11 $00 $b0
    ld c, $40                                     ; $5e7a: $0e $40
    call Call_000_0468                            ; $5e7c: $cd $68 $04
    ld hl, $d400                                  ; $5e7f: $21 $00 $d4
    ld de, $b400                                  ; $5e82: $11 $00 $b4
    ld c, $40                                     ; $5e85: $0e $40
    call Call_000_0468                            ; $5e87: $cd $68 $04
    ld hl, $d800                                  ; $5e8a: $21 $00 $d8
    ld de, $a800                                  ; $5e8d: $11 $00 $a8
    ld c, $40                                     ; $5e90: $0e $40
    call Call_000_04db                            ; $5e92: $cd $db $04
    ld hl, $6776                                  ; $5e95: $21 $76 $67
    ld de, $d000                                  ; $5e98: $11 $00 $d0
    call Call_000_1f2f                            ; $5e9b: $cd $2f $1f
    ld hl, $d000                                  ; $5e9e: $21 $00 $d0
    ld de, $b800                                  ; $5ea1: $11 $00 $b8
    ld c, $24                                     ; $5ea4: $0e $24
    call Call_000_04db                            ; $5ea6: $cd $db $04
    ld hl, $6801                                  ; $5ea9: $21 $01 $68
    ld de, $d000                                  ; $5eac: $11 $00 $d0
    call Call_000_1f2f                            ; $5eaf: $cd $2f $1f
    ld hl, $d000                                  ; $5eb2: $21 $00 $d0
    ld de, $9800                                  ; $5eb5: $11 $00 $98
    ld c, $24                                     ; $5eb8: $0e $24
    call Call_000_04db                            ; $5eba: $cd $db $04
    call Call_000_0371                            ; $5ebd: $cd $71 $03
    xor a                                         ; $5ec0: $af
    ld [$c0f8], a                                 ; $5ec1: $ea $f8 $c0
    ld a, $01                                     ; $5ec4: $3e $01
    ld hl, $5ee9                                  ; $5ec6: $21 $e9 $5e
    call Call_000_23e8                            ; $5ec9: $cd $e8 $23
    ld c, $08                                     ; $5ecc: $0e $08
    call Call_000_258d                            ; $5ece: $cd $8d $25
    call Call_000_2625                            ; $5ed1: $cd $25 $26
    ld bc, $0e10                                  ; $5ed4: $01 $10 $0e

jr_048_5ed7:
    call Call_000_2e3b                            ; $5ed7: $cd $3b $2e
    ldh a, [$94]                                  ; $5eda: $f0 $94
    or a                                          ; $5edc: $b7
    jr z, jr_048_5ee3                             ; $5edd: $28 $04

    rst $08                                       ; $5edf: $cf
    ld e, h                                       ; $5ee0: $5c
    jr jr_048_5ee8                                ; $5ee1: $18 $05

jr_048_5ee3:
    dec bc                                        ; $5ee3: $0b
    ld a, b                                       ; $5ee4: $78
    or c                                          ; $5ee5: $b1
    jr nz, jr_048_5ed7                            ; $5ee6: $20 $ef

jr_048_5ee8:
    ret                                           ; $5ee8: $c9


    ld hl, $c0f8                                  ; $5ee9: $21 $f8 $c0
    ld a, [hl]                                    ; $5eec: $7e
    push hl                                       ; $5eed: $e5
    and $fc                                       ; $5eee: $e6 $fc
    ld h, $00                                     ; $5ef0: $26 $00
    ld l, a                                       ; $5ef2: $6f
    add hl, hl                                    ; $5ef3: $29
    add hl, hl                                    ; $5ef4: $29
    add hl, hl                                    ; $5ef5: $29
    add hl, hl                                    ; $5ef6: $29
    ld de, $6900                                  ; $5ef7: $11 $00 $69
    add hl, de                                    ; $5efa: $19
    ld de, $b000                                  ; $5efb: $11 $00 $b0
    ld c, $04                                     ; $5efe: $0e $04
    call Call_000_0468                            ; $5f00: $cd $68 $04
    pop hl                                        ; $5f03: $e1
    inc [hl]                                      ; $5f04: $34
    ld a, [hl]                                    ; $5f05: $7e
    cp $30                                        ; $5f06: $fe $30
    ret c                                         ; $5f08: $d8

    xor a                                         ; $5f09: $af
    ld [hl], a                                    ; $5f0a: $77
    ret                                           ; $5f0b: $c9


    adc [hl]                                      ; $5f0c: $8e
    ld a, a                                       ; $5f0d: $7f
    pop de                                        ; $5f0e: $d1
    inc b                                         ; $5f0f: $04
    add hl, bc                                    ; $5f10: $09
    nop                                           ; $5f11: $00
    rra                                           ; $5f12: $1f
    nop                                           ; $5f13: $00
    adc [hl]                                      ; $5f14: $8e
    ld a, a                                       ; $5f15: $7f
    rst $18                                       ; $5f16: $df
    ld [hl-], a                                   ; $5f17: $32
    add hl, bc                                    ; $5f18: $09
    nop                                           ; $5f19: $00
    rra                                           ; $5f1a: $1f
    nop                                           ; $5f1b: $00
    adc [hl]                                      ; $5f1c: $8e
    ld a, a                                       ; $5f1d: $7f
    rst $38                                       ; $5f1e: $ff
    ld h, e                                       ; $5f1f: $63
    add hl, bc                                    ; $5f20: $09
    nop                                           ; $5f21: $00
    rra                                           ; $5f22: $1f
    nop                                           ; $5f23: $00
    rst $38                                       ; $5f24: $ff
    ld h, e                                       ; $5f25: $63
    pop de                                        ; $5f26: $d1
    inc b                                         ; $5f27: $04
    add hl, bc                                    ; $5f28: $09
    nop                                           ; $5f29: $00
    rra                                           ; $5f2a: $1f
    nop                                           ; $5f2b: $00
    rst $38                                       ; $5f2c: $ff
    ld h, e                                       ; $5f2d: $63
    rst $18                                       ; $5f2e: $df
    ld [hl-], a                                   ; $5f2f: $32
    add hl, bc                                    ; $5f30: $09
    nop                                           ; $5f31: $00
    pop de                                        ; $5f32: $d1
    inc b                                         ; $5f33: $04
    adc [hl]                                      ; $5f34: $8e
    ld a, a                                       ; $5f35: $7f
    rst $38                                       ; $5f36: $ff
    ld h, e                                       ; $5f37: $63
    pop de                                        ; $5f38: $d1
    inc b                                         ; $5f39: $04
    add hl, bc                                    ; $5f3a: $09
    nop                                           ; $5f3b: $00
    adc [hl]                                      ; $5f3c: $8e
    ld a, a                                       ; $5f3d: $7f
    rst $18                                       ; $5f3e: $df
    ld [hl-], a                                   ; $5f3f: $32
    pop de                                        ; $5f40: $d1
    inc b                                         ; $5f41: $04
    add hl, bc                                    ; $5f42: $09
    nop                                           ; $5f43: $00
    adc [hl]                                      ; $5f44: $8e
    ld a, a                                       ; $5f45: $7f
    rst $38                                       ; $5f46: $ff
    inc bc                                        ; $5f47: $03
    sbc a                                         ; $5f48: $9f
    ld [bc], a                                    ; $5f49: $02
    add hl, bc                                    ; $5f4a: $09
    nop                                           ; $5f4b: $00
    rst $38                                       ; $5f4c: $ff
    ld bc, $7203                                  ; $5f4d: $01 $03 $72
    inc bc                                        ; $5f50: $03
    inc bc                                        ; $5f51: $03
    ld b, $05                                     ; $5f52: $06 $05
    ld c, $ff                                     ; $5f54: $0e $ff
    ccf                                           ; $5f56: $3f
    ld a, h                                       ; $5f57: $7c
    ld e, l                                       ; $5f58: $5d
    ld h, d                                       ; $5f59: $62
    cpl                                           ; $5f5a: $2f
    ld [hl], d                                    ; $5f5b: $72
    rla                                           ; $5f5c: $17
    ld a, [hl-]                                   ; $5f5d: $3a
    rst $38                                       ; $5f5e: $ff
    dec bc                                        ; $5f5f: $0b

jr_048_5f60:
    inc e                                         ; $5f60: $1c
    ld a, [bc]                                    ; $5f61: $0a
    dec e                                         ; $5f62: $1d
    inc d                                         ; $5f63: $14
    dec de                                        ; $5f64: $1b
    ld de, $df3f                                  ; $5f65: $11 $3f $df
    ld h, $3f                                     ; $5f68: $26 $3f
    jr jr_048_5fa8                                ; $5f6a: $18 $3c

    nop                                           ; $5f6c: $00
    rst $38                                       ; $5f6d: $ff
    ldh [$80], a                                  ; $5f6e: $e0 $80
    ret nz                                        ; $5f70: $c0

    rst $38                                       ; $5f71: $ff
    ld b, b                                       ; $5f72: $40
    ret nz                                        ; $5f73: $c0

    ret nz                                        ; $5f74: $c0

    ld h, b                                       ; $5f75: $60
    and b                                         ; $5f76: $a0
    ld [hl], b                                    ; $5f77: $70
    db $fc                                        ; $5f78: $fc
    ld a, $ff                                     ; $5f79: $3e $ff
    cp d                                          ; $5f7b: $ba
    ld b, [hl]                                    ; $5f7c: $46
    db $f4                                        ; $5f7d: $f4
    ld c, [hl]                                    ; $5f7e: $4e
    add sp, $5c                                   ; $5f7f: $e8 $5c
    ret nc                                        ; $5f81: $d0

    jr c, @+$01                                   ; $5f82: $38 $ff

    ld d, b                                       ; $5f84: $50
    cp b                                          ; $5f85: $b8
    jr z, jr_048_5f60                             ; $5f86: $28 $d8

    adc b                                         ; $5f88: $88
    db $fc                                        ; $5f89: $fc
    ld h, h                                       ; $5f8a: $64
    db $fc                                        ; $5f8b: $fc
    rst $20                                       ; $5f8c: $e7
    jr jr_048_5fcb                                ; $5f8d: $18 $3c

    ld c, $df                                     ; $5f8f: $0e $df
    pop hl                                        ; $5f91: $e1
    db $fc                                        ; $5f92: $fc
    ld hl, sp+$01                                 ; $5f93: $f8 $01
    nop                                           ; $5f95: $00
    ld [$07bd], sp                                ; $5f96: $08 $bd $07

jr_048_5f99:
    db $dd                                        ; $5f99: $dd
    jp hl                                         ; $5f9a: $e9


    add b                                         ; $5f9b: $80
    ld a, a                                       ; $5f9c: $7f
    nop                                           ; $5f9d: $00
    rst $38                                       ; $5f9e: $ff
    ldh a, [$ea]                                  ; $5f9f: $f0 $ea
    nop                                           ; $5fa1: $00
    ei                                            ; $5fa2: $fb
    ld [$daf0], sp                                ; $5fa3: $08 $f0 $da
    pop hl                                        ; $5fa6: $e1
    inc b                                         ; $5fa7: $04

jr_048_5fa8:
    inc bc                                        ; $5fa8: $03
    ld [$1107], sp                                ; $5fa9: $08 $07 $11
    rst $38                                       ; $5fac: $ff
    ld c, $23                                     ; $5fad: $0e $23
    dec e                                         ; $5faf: $1d
    rlca                                          ; $5fb0: $07
    dec sp                                        ; $5fb1: $3b
    ld b, a                                       ; $5fb2: $47
    ld a, $20                                     ; $5fb3: $3e $20
    rst $38                                       ; $5fb5: $ff
    rra                                           ; $5fb6: $1f
    nop                                           ; $5fb7: $00
    rst $38                                       ; $5fb8: $ff
    rrca                                          ; $5fb9: $0f
    rst $30                                       ; $5fba: $f7

Call_048_5fbb:
    ld a, a                                       ; $5fbb: $7f
    cp a                                          ; $5fbc: $bf
    rst $38                                       ; $5fbd: $ff
    cp $ff                                        ; $5fbe: $fe $ff
    ldh [$c1], a                                  ; $5fc0: $e0 $c1
    cp [hl]                                       ; $5fc2: $be
    nop                                           ; $5fc3: $00
    rst $38                                       ; $5fc4: $ff
    ld [$01f0], sp                                ; $5fc5: $08 $f0 $01
    rst $18                                       ; $5fc8: $df
    cp $e0                                        ; $5fc9: $fe $e0

jr_048_5fcb:
    rst $18                                       ; $5fcb: $df
    cp $fd                                        ; $5fcc: $fe $fd
    ldh a, [$e1]                                  ; $5fce: $f0 $e1
    rst $38                                       ; $5fd0: $ff
    rst $38                                       ; $5fd1: $ff
    ei                                            ; $5fd2: $fb
    ld a, a                                       ; $5fd3: $7f
    cp a                                          ; $5fd4: $bf
    ld l, h                                       ; $5fd5: $6c
    pop hl                                        ; $5fd6: $e1
    jr nz, jr_048_5f99                            ; $5fd7: $20 $c0

    ld [$c2f0], sp                                ; $5fd9: $08 $f0 $c2
    ld a, a                                       ; $5fdc: $7f
    cp h                                          ; $5fdd: $bc
    ldh a, [$ef]                                  ; $5fde: $f0 $ef
    db $fc                                        ; $5fe0: $fc
    ei                                            ; $5fe1: $fb
    rst $38                                       ; $5fe2: $ff
    cp $b2                                        ; $5fe3: $fe $b2
    jp hl                                         ; $5fe5: $e9


    rst $28                                       ; $5fe6: $ef
    ld b, b                                       ; $5fe7: $40
    add b                                         ; $5fe8: $80
    jr nz, @-$3e                                  ; $5fe9: $20 $c0

    add [hl]                                      ; $5feb: $86
    push hl                                       ; $5fec: $e5
    nop                                           ; $5fed: $00
    ld bc, $ff02                                  ; $5fee: $01 $02 $ff
    ld bc, $0300                                  ; $5ff1: $01 $00 $03
    nop                                           ; $5ff4: $00
    inc bc                                        ; $5ff5: $03
    jr nz, jr_048_6017                            ; $5ff6: $20 $1f

    ld b, e                                       ; $5ff8: $43
    rst $38                                       ; $5ff9: $ff
    inc a                                         ; $5ffa: $3c
    adc a                                         ; $5ffb: $8f
    ld [hl], a                                    ; $5ffc: $77
    rra                                           ; $5ffd: $1f
    rst $28                                       ; $5ffe: $ef
    ccf                                           ; $5fff: $3f
    rst $18                                       ; $6000: $df
    ld a, a                                       ; $6001: $7f
    db $eb                                        ; $6002: $eb
    cp a                                          ; $6003: $bf
    ld a, a                                       ; $6004: $7f
    cp a                                          ; $6005: $bf
    ldh [rP1], a                                  ; $6006: $e0 $00
    and a                                         ; $6008: $a7
    ldh [$81], a                                  ; $6009: $e0 $81
    add c                                         ; $600b: $81
    nop                                           ; $600c: $00
    ld a, [$e1f9]                                 ; $600d: $fa $f9 $e1
    rst $38                                       ; $6010: $ff
    cp [hl]                                       ; $6011: $be
    ldh [$83], a                                  ; $6012: $e0 $83
    inc bc                                        ; $6014: $03
    db $fc                                        ; $6015: $fc

Call_048_6016:
    ret nz                                        ; $6016: $c0

jr_048_6017:
    ccf                                           ; $6017: $3f
    rst $38                                       ; $6018: $ff
    ld hl, sp-$09                                 ; $6019: $f8 $f7
    ld e, $1d                                     ; $601b: $1e $1d
    add e                                         ; $601d: $83
    add e                                         ; $601e: $83
    ld sp, hl                                     ; $601f: $f9
    ld sp, hl                                     ; $6020: $f9
    rst $38                                       ; $6021: $ff
    cp $7e                                        ; $6022: $fe $7e
    rrca                                          ; $6024: $0f
    rst $30                                       ; $6025: $f7
    adc h                                         ; $6026: $8c
    ld [hl], e                                    ; $6027: $73
    ld [$ffff], sp                                ; $6028: $08 $ff $ff
    add hl, bc                                    ; $602b: $09
    or $00                                        ; $602c: $f6 $00
    cp $80                                        ; $602e: $fe $80
    ld a, [hl]                                    ; $6030: $7e
    ldh [$df], a                                  ; $6031: $e0 $df
    cp $9e                                        ; $6033: $fe $9e
    pop hl                                        ; $6035: $e1
    ld b, c                                       ; $6036: $41
    add b                                         ; $6037: $80
    sbc h                                         ; $6038: $9c
    inc e                                         ; $6039: $1c
    inc a                                         ; $603a: $3c
    inc a                                         ; $603b: $3c
    ld a, h                                       ; $603c: $7c
    db $fd                                        ; $603d: $fd
    ld a, h                                       ; $603e: $7c
    ld [hl], b                                    ; $603f: $70
    pop hl                                        ; $6040: $e1
    rst $18                                       ; $6041: $df
    rst $18                                       ; $6042: $df
    rra                                           ; $6043: $1f
    rst $18                                       ; $6044: $df
    rra                                           ; $6045: $1f
    rst $28                                       ; $6046: $ef
    rst $38                                       ; $6047: $ff
    ld c, a                                       ; $6048: $4f
    scf                                           ; $6049: $37
    daa                                           ; $604a: $27
    rra                                           ; $604b: $1f
    rlca                                          ; $604c: $07
    dec de                                        ; $604d: $1b
    db $d3                                        ; $604e: $d3
    rst $08                                       ; $604f: $cf
    ccf                                           ; $6050: $3f
    jp $c3cf                                      ; $6051: $c3 $cf $c3


    call $c7c9                                    ; $6054: $cd $c9 $c7
    ld l, b                                       ; $6057: $68
    db $e3                                        ; $6058: $e3
    ld a, [$ffe7]                                 ; $6059: $fa $e7 $ff
    sub b                                         ; $605c: $90
    ld h, b                                       ; $605d: $60
    ret z                                         ; $605e: $c8

    or b                                          ; $605f: $b0
    db $e4                                        ; $6060: $e4
    ret c                                         ; $6061: $d8

    ld a, [c]                                     ; $6062: $f2
    db $ec                                        ; $6063: $ec
    ld a, a                                       ; $6064: $7f
    ld sp, hl                                     ; $6065: $f9
    or $fc                                        ; $6066: $f6 $fc
    ei                                            ; $6068: $fb
    cp $fd                                        ; $6069: $fe $fd
    cp $10                                        ; $606b: $fe $10
    add sp, -$5a                                  ; $606d: $e8 $a6
    ld h, b                                       ; $606f: $60
    pop hl                                        ; $6070: $e1
    nop                                           ; $6071: $00
    ret nz                                        ; $6072: $c0

    ld l, h                                       ; $6073: $6c
    pop hl                                        ; $6074: $e1
    ld l, b                                       ; $6075: $68
    pop hl                                        ; $6076: $e1
    ld [bc], a                                    ; $6077: $02
    ld h, b                                       ; $6078: $60
    pop hl                                        ; $6079: $e1
    ld bc, $01bf                                  ; $607a: $01 $bf $01
    nop                                           ; $607d: $00
    rst $38                                       ; $607e: $ff
    ld a, a                                       ; $607f: $7f
    rst $38                                       ; $6080: $ff
    cp $fe                                        ; $6081: $fe $fe
    ldh [$7e], a                                  ; $6083: $e0 $7e
    rst $38                                       ; $6085: $ff
    ld a, a                                       ; $6086: $7f
    rst $38                                       ; $6087: $ff
    ld a, a                                       ; $6088: $7f
    cp $7f                                        ; $6089: $fe $7f
    cp a                                          ; $608b: $bf
    ccf                                           ; $608c: $3f
    rst $38                                       ; $608d: $ff
    di                                            ; $608e: $f3
    rst $38                                       ; $608f: $ff
    ld a, $ee                                     ; $6090: $3e $ee
    ldh [$ab], a                                  ; $6092: $e0 $ab
    rst $20                                       ; $6094: $e7
    cp $81                                        ; $6095: $fe $81
    ld a, [hl]                                    ; $6097: $7e
    ld hl, sp-$59                                 ; $6098: $f8 $a7
    rst $20                                       ; $609a: $e7
    cp $f9                                        ; $609b: $fe $f9
    call c, $ffe0                                 ; $609d: $dc $e0 $ff
    jp nz, $f63f                                  ; $60a0: $c2 $3f $f6

    ret nz                                        ; $60a3: $c0

    ld a, a                                       ; $60a4: $7f
    rst $38                                       ; $60a5: $ff
    cp [hl]                                       ; $60a6: $be
    rra                                           ; $60a7: $1f
    rst $28                                       ; $60a8: $ef
    adc a                                         ; $60a9: $8f
    ld [hl], a                                    ; $60aa: $77
    rst $20                                       ; $60ab: $e7
    sbc e                                         ; $60ac: $9b
    di                                            ; $60ad: $f3
    db $fd                                        ; $60ae: $fd
    db $ed                                        ; $60af: $ed
    sbc h                                         ; $60b0: $9c
    pop hl                                        ; $60b1: $e1

Call_048_60b2:
    inc bc                                        ; $60b2: $03
    db $e3                                        ; $60b3: $e3
    inc bc                                        ; $60b4: $03
    di                                            ; $60b5: $f3
    jp $ffbb                                      ; $60b6: $c3 $bb $ff


    db $e3                                        ; $60b9: $e3
    db $dd                                        ; $60ba: $dd
    pop af                                        ; $60bb: $f1
    xor $f0                                       ; $60bc: $ee $f0
    rst $38                                       ; $60be: $ff
    ld hl, sp-$09                                 ; $60bf: $f8 $f7
    xor a                                         ; $60c1: $af
    db $fc                                        ; $60c2: $fc
    ld a, e                                       ; $60c3: $7b
    pop bc                                        ; $60c4: $c1
    rst $00                                       ; $60c5: $c7
    cp $e1                                        ; $60c6: $fe $e1
    ret                                           ; $60c8: $c9


    cp $e0                                        ; $60c9: $fe $e0
    jp $cdff                                      ; $60cb: $c3 $ff $cd


    ld d, e                                       ; $60ce: $53
    adc l                                         ; $60cf: $8d
    inc hl                                        ; $60d0: $23
    rst $18                                       ; $60d1: $df
    rst $38                                       ; $60d2: $ff
    cp $cf                                        ; $60d3: $fe $cf
    rst $38                                       ; $60d5: $ff
    rst $08                                       ; $60d6: $cf
    rst $20                                       ; $60d7: $e7
    rst $20                                       ; $60d8: $e7
    db $e3                                        ; $60d9: $e3
    db $e3                                        ; $60da: $e3
    di                                            ; $60db: $f3
    di                                            ; $60dc: $f3
    pop af                                        ; $60dd: $f1
    or $ff                                        ; $60de: $f6 $ff
    ldh [$f0], a                                  ; $60e0: $e0 $f0
    ldh a, [$de]                                  ; $60e2: $f0 $de
    ret nz                                        ; $60e4: $c0

    ldh [$90], a                                  ; $60e5: $e0 $90
    ld h, b                                       ; $60e7: $60
    add b                                         ; $60e8: $80
    rst $38                                       ; $60e9: $ff
    ldh a, [$c8]                                  ; $60ea: $f0 $c8
    or b                                          ; $60ec: $b0
    ret nz                                        ; $60ed: $c0

    ld hl, sp-$40                                 ; $60ee: $f8 $c0
    ld hl, sp-$1c                                 ; $60f0: $f8 $e4
    rst $38                                       ; $60f2: $ff
    ret c                                         ; $60f3: $d8

    ccf                                           ; $60f4: $3f
    rst $18                                       ; $60f5: $df
    sbc a                                         ; $60f6: $9f
    ld l, a                                       ; $60f7: $6f
    ld e, a                                       ; $60f8: $5f
    cpl                                           ; $60f9: $2f
    rrca                                          ; $60fa: $0f
    rst $38                                       ; $60fb: $ff
    scf                                           ; $60fc: $37
    daa                                           ; $60fd: $27
    dec de                                        ; $60fe: $1b
    inc de                                        ; $60ff: $13
    inc c                                         ; $6100: $0c
    add hl, bc                                    ; $6101: $09
    ld b, $04                                     ; $6102: $06 $04
    rst $38                                       ; $6104: $ff
    inc bc                                        ; $6105: $03
    db $fc                                        ; $6106: $fc
    ei                                            ; $6107: $fb
    ld hl, sp-$09                                 ; $6108: $f8 $f7
    ldh a, [$ef]                                  ; $610a: $f0 $ef
    ldh [rIE], a                                  ; $610c: $e0 $ff
    rst $18                                       ; $610e: $df
    ret nz                                        ; $610f: $c0

    cp a                                          ; $6110: $bf
    jp nz, $843c                                  ; $6111: $c2 $3c $84

    ld a, b                                       ; $6114: $78
    ld [$f07f], sp                                ; $6115: $08 $7f $f0
    rra                                           ; $6118: $1f
    rst $28                                       ; $6119: $ef
    rrca                                          ; $611a: $0f
    rst $30                                       ; $611b: $f7
    rlca                                          ; $611c: $07
    ei                                            ; $611d: $fb
    ld c, b                                       ; $611e: $48
    ret nz                                        ; $611f: $c0

    ld a, a                                       ; $6120: $7f
    rst $38                                       ; $6121: $ff
    jr nz, jr_048_6143                            ; $6122: $20 $1f

    db $10                                        ; $6124: $10
    inc c                                         ; $6125: $0c
    nop                                           ; $6126: $00
    inc c                                         ; $6127: $0c
    halt                                          ; $6128: $76
    ret nz                                        ; $6129: $c0

    db $fd                                        ; $612a: $fd
    db $fc                                        ; $612b: $fc
    ld d, b                                       ; $612c: $50
    pop hl                                        ; $612d: $e1
    ccf                                           ; $612e: $3f
    sbc $0f                                       ; $612f: $de $0f
    db $f4                                        ; $6131: $f4
    add e                                         ; $6132: $83
    ld a, h                                       ; $6133: $7c
    rst $38                                       ; $6134: $ff
    ld hl, $7e1e                                  ; $6135: $21 $1e $7e
    cp l                                          ; $6138: $bd
    ccf                                           ; $6139: $3f
    sbc $9f                                       ; $613a: $de $9f
    ld l, a                                       ; $613c: $6f
    rst $38                                       ; $613d: $ff
    adc a                                         ; $613e: $8f
    ld a, a                                       ; $613f: $7f
    rst $08                                       ; $6140: $cf
    scf                                           ; $6141: $37
    rst $00                                       ; $6142: $c7

jr_048_6143:
    ccf                                           ; $6143: $3f
    rst $20                                       ; $6144: $e7
    dec de                                        ; $6145: $1b
    rst $38                                       ; $6146: $ff
    db $e3                                        ; $6147: $e3
    rra                                           ; $6148: $1f
    rlca                                          ; $6149: $07
    ei                                            ; $614a: $fb
    rlca                                          ; $614b: $07
    rst $38                                       ; $614c: $ff
    adc a                                         ; $614d: $8f
    ld [hl], a                                    ; $614e: $77
    rst $38                                       ; $614f: $ff
    adc a                                         ; $6150: $8f
    rst $30                                       ; $6151: $f7
    rst $00                                       ; $6152: $c7
    cp a                                          ; $6153: $bf
    rst $20                                       ; $6154: $e7
    db $db                                        ; $6155: $db
    db $e3                                        ; $6156: $e3
    rst $38                                       ; $6157: $ff
    rst $10                                       ; $6158: $d7
    di                                            ; $6159: $f3
    rst $28                                       ; $615a: $ef
    ld hl, sp-$01                                 ; $615b: $f8 $ff
    and $fc                                       ; $615d: $e6 $fc
    rst $38                                       ; $615f: $ff
    ld [c], a                                     ; $6160: $e2
    db $e4                                        ; $6161: $e4
    ret c                                         ; $6162: $d8

    ei                                            ; $6163: $fb
    ldh [$fc], a                                  ; $6164: $e0 $fc
    cp $e1                                        ; $6166: $fe $e1
    ld a, [c]                                     ; $6168: $f2
    db $ec                                        ; $6169: $ec
    ld a, [c]                                     ; $616a: $f2
    db $ec                                        ; $616b: $ec
    ldh a, [$fb]                                  ; $616c: $f0 $fb
    cp $f0                                        ; $616e: $fe $f0
    ld b, b                                       ; $6170: $40
    ret z                                         ; $6171: $c8

    nop                                           ; $6172: $00
    ld bc, $0703                                  ; $6173: $01 $03 $07
    rlca                                          ; $6176: $07
    db $dd                                        ; $6177: $dd
    rrca                                          ; $6178: $0f
    xor l                                         ; $6179: $ad
    and e                                         ; $617a: $a3
    rlca                                          ; $617b: $07
    rrca                                          ; $617c: $0f
    ccf                                           ; $617d: $3f
    ld d, e                                       ; $617e: $53
    ret nz                                        ; $617f: $c0

    rst $28                                       ; $6180: $ef
    ldh a, [$ef]                                  ; $6181: $f0 $ef
    ld a, a                                       ; $6183: $7f
    add b                                         ; $6184: $80
    ld bc, $3303                                  ; $6185: $01 $03 $33
    pop bc                                        ; $6188: $c1
    add b                                         ; $6189: $80
    pop bc                                        ; $618a: $c1
    pop af                                        ; $618b: $f1
    rst $38                                       ; $618c: $ff
    ld sp, hl                                     ; $618d: $f9
    db $fd                                        ; $618e: $fd
    rst $38                                       ; $618f: $ff
    sbc a                                         ; $6190: $9f
    ld a, a                                       ; $6191: $7f
    ei                                            ; $6192: $fb
    rlca                                          ; $6193: $07
    xor $ff                                       ; $6194: $ee $ff
    pop af                                        ; $6196: $f1
    ei                                            ; $6197: $fb
    rst $20                                       ; $6198: $e7
    sub $ef                                       ; $6199: $d6 $ef
    db $ed                                        ; $619b: $ed
    sbc $bb                                       ; $619c: $de $bb
    rst $38                                       ; $619e: $ff
    call c, $b856                                 ; $619f: $dc $56 $b8
    db $fc                                        ; $61a2: $fc
    ldh a, [$e8]                                  ; $61a3: $f0 $e8
    ldh a, [$37]                                  ; $61a5: $f0 $37
    rst $38                                       ; $61a7: $ff
    call z, $e4db                                 ; $61a8: $cc $db $e4
    cpl                                           ; $61ab: $2f
    ldh a, [$df]                                  ; $61ac: $f0 $df
    jr nc, jr_048_61e7                            ; $61ae: $30 $37

    ei                                            ; $61b0: $fb
    jr @+$19                                      ; $61b1: $18 $17

    cp $e0                                        ; $61b3: $fe $e0
    ld [hl], a                                    ; $61b5: $77
    ld hl, sp+$18                                 ; $61b6: $f8 $18
    rrca                                          ; $61b8: $0f
    inc c                                         ; $61b9: $0c
    rst $38                                       ; $61ba: $ff
    rlca                                          ; $61bb: $07
    ld [$100f], sp                                ; $61bc: $08 $0f $10
    rrca                                          ; $61bf: $0f
    db $10                                        ; $61c0: $10
    rra                                           ; $61c1: $1f
    daa                                           ; $61c2: $27
    ccf                                           ; $61c3: $3f
    inc e                                         ; $61c4: $1c
    jr c, jr_048_61d7                             ; $61c5: $38 $10

    jr nz, jr_048_61c9                            ; $61c7: $20 $00

jr_048_61c9:
    ld bc, $e046                                  ; $61c9: $01 $46 $e0
    cp $e3                                        ; $61cc: $fe $e3
    rst $38                                       ; $61ce: $ff
    ldh a, [$3f]                                  ; $61cf: $f0 $3f
    inc e                                         ; $61d1: $1c
    rlca                                          ; $61d2: $07
    ld b, $03                                     ; $61d3: $06 $03

jr_048_61d5:
    di                                            ; $61d5: $f3
    db $fd                                        ; $61d6: $fd

jr_048_61d7:
    rst $38                                       ; $61d7: $ff
    ld a, c                                       ; $61d8: $79
    or a                                          ; $61d9: $b7
    add hl, sp                                    ; $61da: $39
    sbc $1c                                       ; $61db: $de $1c
    ei                                            ; $61dd: $fb
    inc e                                         ; $61de: $1c
    rst $28                                       ; $61df: $ef
    cp a                                          ; $61e0: $bf
    inc c                                         ; $61e1: $0c
    rst $38                                       ; $61e2: $ff
    ld c, $fd                                     ; $61e3: $0e $fd
    ld c, $f5                                     ; $61e5: $0e $f5

jr_048_61e7:
    ld b, b                                       ; $61e7: $40
    jp z, $b37f                                   ; $61e8: $ca $7f $b3

    ld a, a                                       ; $61eb: $7f
    rst $38                                       ; $61ec: $ff
    ld e, d                                       ; $61ed: $5a
    db $e3                                        ; $61ee: $e3
    ld a, [$f0e7]                                 ; $61ef: $fa $e7 $f0
    ld a, [hl]                                    ; $61f2: $7e
    cp $eb                                        ; $61f3: $fe $eb
    dec c                                         ; $61f5: $0d
    rst $38                                       ; $61f6: $ff
    ld e, $1b                                     ; $61f7: $1e $1b
    inc a                                         ; $61f9: $3c
    ccf                                           ; $61fa: $3f
    jr c, jr_048_6234                             ; $61fb: $38 $37

    ld a, b                                       ; $61fd: $78
    ld a, a                                       ; $61fe: $7f
    ld a, a                                       ; $61ff: $7f
    ld [hl], b                                    ; $6200: $70
    ld l, a                                       ; $6201: $6f
    ldh a, [$7f]                                  ; $6202: $f0 $7f
    ldh [rIE], a                                  ; $6204: $e0 $ff
    ldh [$a1], a                                  ; $6206: $e0 $a1

Jump_048_6208:
    and $f2                                       ; $6208: $e6 $f2
    sbc c                                         ; $620a: $99
    db $e4                                        ; $620b: $e4
    cp $8f                                        ; $620c: $fe $8f
    rst $20                                       ; $620e: $e7
    add a                                         ; $620f: $87
    ld [c], a                                     ; $6210: $e2
    add sp, -$0f                                  ; $6211: $e8 $f1
    ld [hl], c                                    ; $6213: $71
    pop af                                        ; $6214: $f1
    cp a                                          ; $6215: $bf
    or c                                          ; $6216: $b1
    ld [hl], e                                    ; $6217: $73
    db $db                                        ; $6218: $db
    dec sp                                        ; $6219: $3b
    rst $28                                       ; $621a: $ef
    rra                                           ; $621b: $1f
    add hl, hl                                    ; $621c: $29
    and b                                         ; $621d: $a0
    rrca                                          ; $621e: $0f
    rst $38                                       ; $621f: $ff
    rst $38                                       ; $6220: $ff
    rlca                                          ; $6221: $07
    ld [$40f0], sp                                ; $6222: $08 $f0 $40
    ldh a, [rNR10]                                ; $6225: $f0 $10
    or b                                          ; $6227: $b0
    rst $18                                       ; $6228: $df
    db $10                                        ; $6229: $10
    and b                                         ; $622a: $a0
    jr nz, @-$1e                                  ; $622b: $20 $e0

    jr nz, jr_048_61d5                            ; $622d: $20 $a6

    add c                                         ; $622f: $81
    add b                                         ; $6230: $80
    rst $38                                       ; $6231: $ff
    rst $38                                       ; $6232: $ff
    nop                                           ; $6233: $00

jr_048_6234:
    db $fc                                        ; $6234: $fc
    inc bc                                        ; $6235: $03
    rst $30                                       ; $6236: $f7
    rrca                                          ; $6237: $0f
    xor $1f                                       ; $6238: $ee $1f
    db $db                                        ; $623a: $db
    rst $38                                       ; $623b: $ff
    inc a                                         ; $623c: $3c
    or a                                          ; $623d: $b7
    ld a, b                                       ; $623e: $78
    ld l, [hl]                                    ; $623f: $6e
    ldh a, [$dc]                                  ; $6240: $f0 $dc
    ldh [$fe], a                                  ; $6242: $e0 $fe
    db $fd                                        ; $6244: $fd
    ld bc, $e01e                                  ; $6245: $01 $1e $e0
    db $fc                                        ; $6248: $fc
    db $ed                                        ; $6249: $ed
    ld e, $f7                                     ; $624a: $1e $f7
    ld c, $82                                     ; $624c: $0e $82
    ei                                            ; $624e: $fb
    rlca                                          ; $624f: $07
    inc bc                                        ; $6250: $03
    rst $38                                       ; $6251: $ff
    ldh [$0e], a                                  ; $6252: $e0 $0e
    rst $30                                       ; $6254: $f7
    ld c, $f7                                     ; $6255: $0e $f7
    adc [hl]                                      ; $6257: $8e
    rst $38                                       ; $6258: $ff
    ld [hl], e                                    ; $6259: $73
    adc a                                         ; $625a: $8f
    ld [hl], d                                    ; $625b: $72
    rlca                                          ; $625c: $07
    ld a, b                                       ; $625d: $78
    inc bc                                        ; $625e: $03
    ld a, h                                       ; $625f: $7c
    inc bc                                        ; $6260: $03
    rla                                           ; $6261: $17
    ld a, h                                       ; $6262: $7c
    ld de, $d86e                                  ; $6263: $11 $6e $d8
    and b                                         ; $6266: $a0
    cp a                                          ; $6267: $bf
    ret c                                         ; $6268: $d8

    and c                                         ; $6269: $a1
    cp $e5                                        ; $626a: $fe $e5
    ld d, b                                       ; $626c: $50
    push hl                                       ; $626d: $e5
    pop hl                                        ; $626e: $e1
    ld sp, hl                                     ; $626f: $f9
    rst $38                                       ; $6270: $ff
    ldh [$2c], a                                  ; $6271: $e0 $2c
    and d                                         ; $6273: $a2
    xor h                                         ; $6274: $ac
    ret nz                                        ; $6275: $c0

    xor b                                         ; $6276: $a8
    pop bc                                        ; $6277: $c1
    ld a, [c]                                     ; $6278: $f2
    db $ec                                        ; $6279: $ec
    ld [c], a                                     ; $627a: $e2
    ret c                                         ; $627b: $d8

    sbc b                                         ; $627c: $98
    jp nz, $e05e                                  ; $627d: $c2 $5e $e0

    ld e, d                                       ; $6280: $5a
    ldh [$ef], a                                  ; $6281: $e0 $ef
    ldh a, [rHDMA2]                               ; $6283: $f0 $52
    ldh [$f0], a                                  ; $6285: $e0 $f0
    ld a, a                                       ; $6287: $7f
    rst $38                                       ; $6288: $ff
    ld [hl], b                                    ; $6289: $70
    ld [hl], a                                    ; $628a: $77
    ld a, b                                       ; $628b: $78
    ld bc, $0507                                  ; $628c: $01 $07 $05
    ld b, $04                                     ; $628f: $06 $04
    xor e                                         ; $6291: $ab
    ld [bc], a                                    ; $6292: $02
    ld [bc], a                                    ; $6293: $02
    ld b, [hl]                                    ; $6294: $46
    add [hl]                                      ; $6295: $86
    add c                                         ; $6296: $81
    ret c                                         ; $6297: $d8

    add b                                         ; $6298: $80
    ld [bc], a                                    ; $6299: $02
    ret c                                         ; $629a: $d8

    add b                                         ; $629b: $80
    inc b                                         ; $629c: $04
    rst $38                                       ; $629d: $ff
    inc bc                                        ; $629e: $03
    dec b                                         ; $629f: $05
    rlca                                          ; $62a0: $07
    ld bc, $0007                                  ; $62a1: $01 $07 $00
    ld b, $b8                                     ; $62a4: $06 $b8
    rst $38                                       ; $62a6: $ff
    ret nz                                        ; $62a7: $c0

    or b                                          ; $62a8: $b0
    ret nz                                        ; $62a9: $c0

    ldh a, [$80]                                  ; $62aa: $f0 $80
    ld h, b                                       ; $62ac: $60
    add c                                         ; $62ad: $81
    pop hl                                        ; $62ae: $e1
    rst $38                                       ; $62af: $ff
    inc bc                                        ; $62b0: $03

jr_048_62b1:
    jp $c303                                      ; $62b1: $c3 $03 $c3


    rlca                                          ; $62b4: $07
    add e                                         ; $62b5: $83
    rlca                                          ; $62b6: $07
    dec bc                                        ; $62b7: $0b
    rst $28                                       ; $62b8: $ef
    rra                                           ; $62b9: $1f
    ccf                                           ; $62ba: $3f
    ld a, a                                       ; $62bb: $7f
    ld a, [hl]                                    ; $62bc: $7e
    ld a, b                                       ; $62bd: $78
    and b                                         ; $62be: $a0
    db $dd                                        ; $62bf: $dd
    xor $ff                                       ; $62c0: $ee $ff
    rst $38                                       ; $62c2: $ff
    call z, $dceb                                 ; $62c3: $cc $eb $dc
    rst $38                                       ; $62c6: $ff
    ld hl, sp-$47                                 ; $62c7: $f8 $b9
    ld l, a                                       ; $62c9: $6f
    ld hl, sp-$01                                 ; $62ca: $f8 $ff
    ld b, a                                       ; $62cc: $47
    ld a, h                                       ; $62cd: $7c
    rlca                                          ; $62ce: $07
    db $fc                                        ; $62cf: $fc
    inc bc                                        ; $62d0: $03
    ld a, [hl]                                    ; $62d1: $7e
    inc bc                                        ; $62d2: $03
    cp $e3                                        ; $62d3: $fe $e3
    ld bc, $a37f                                  ; $62d5: $01 $7f $a3
    ret nz                                        ; $62d8: $c0

    halt                                          ; $62d9: $76
    rst $20                                       ; $62da: $e7
    ld l, h                                       ; $62db: $6c
    ldh [$df], a                                  ; $62dc: $e0 $df
    rra                                           ; $62de: $1f
    rst $38                                       ; $62df: $ff
    cp $8a                                        ; $62e0: $fe $8a
    ldh [$df], a                                  ; $62e2: $e0 $df
    ldh [$df], a                                  ; $62e4: $e0 $df
    db $ec                                        ; $62e6: $ec
    db $db                                        ; $62e7: $db
    rst $38                                       ; $62e8: $ff
    adc $fc                                       ; $62e9: $ce $fc
    ld c, [hl]                                    ; $62eb: $4e
    add e                                         ; $62ec: $83
    ld a, [de]                                    ; $62ed: $1a
    add c                                         ; $62ee: $81
    jr nz, jr_048_62b1                            ; $62ef: $20 $c0

    db $10                                        ; $62f1: $10
    ldh [$08], a                                  ; $62f2: $e0 $08
    ldh a, [rIE]                                  ; $62f4: $f0 $ff
    add h                                         ; $62f6: $84
    ld a, b                                       ; $62f7: $78
    ret nz                                        ; $62f8: $c0

    cp h                                          ; $62f9: $bc
    ld [c], a                                     ; $62fa: $e2
    call c, Call_048_783f                         ; $62fb: $dc $3f $78
    rst $38                                       ; $62fe: $ff
    dec sp                                        ; $62ff: $3b
    inc a                                         ; $6300: $3c
    rra                                           ; $6301: $1f
    inc a                                         ; $6302: $3c
    dec c                                         ; $6303: $0d
    ld e, $1e                                     ; $6304: $1e $1e
    ccf                                           ; $6306: $3f
    push af                                       ; $6307: $f5
    rra                                           ; $6308: $1f
    cp $e1                                        ; $6309: $fe $e1
    rra                                           ; $630b: $1f
    cp l                                          ; $630c: $bd
    ld h, l                                       ; $630d: $65
    sub l                                         ; $630e: $95
    nop                                           ; $630f: $00
    ld [$ef80], a                                 ; $6310: $ea $80 $ef
    ccf                                           ; $6313: $3f
    ldh [rIF], a                                  ; $6314: $e0 $0f
    ld hl, sp-$53                                 ; $6316: $f8 $ad
    ld h, e                                       ; $6318: $63
    ld [bc], a                                    ; $6319: $02
    nop                                           ; $631a: $00
    ld d, l                                       ; $631b: $55
    ei                                            ; $631c: $fb
    nop                                           ; $631d: $00
    cp a                                          ; $631e: $bf
    ld b, a                                       ; $631f: $47
    jp nz, Jump_000_0001                          ; $6320: $c2 $01 $00

    dec bc                                        ; $6323: $0b
    nop                                           ; $6324: $00
    ld d, a                                       ; $6325: $57
    cp $f4                                        ; $6326: $fe $f4
    db $e4                                        ; $6328: $e4
    cp $03                                        ; $6329: $fe $03
    ld hl, sp+$0f                                 ; $632b: $f8 $0f
    nop                                           ; $632d: $00
    ld b, $01                                     ; $632e: $06 $01
    rst $38                                       ; $6330: $ff
    rlca                                          ; $6331: $07
    inc b                                         ; $6332: $04
    rlca                                          ; $6333: $07
    add h                                         ; $6334: $84
    inc bc                                        ; $6335: $03
    add d                                         ; $6336: $82
    inc bc                                        ; $6337: $03
    pop bc                                        ; $6338: $c1
    ld a, a                                       ; $6339: $7f
    add c                                         ; $633a: $81
    ld b, b                                       ; $633b: $40
    add b                                         ; $633c: $80
    ld h, b                                       ; $633d: $60
    ret nz                                        ; $633e: $c0

    add a                                         ; $633f: $87
    rlca                                          ; $6340: $07
    cp $e1                                        ; $6341: $fe $e1
    rst $38                                       ; $6343: $ff
    ld b, e                                       ; $6344: $43
    add a                                         ; $6345: $87
    and c                                         ; $6346: $a1
    jp $ffe7                                      ; $6347: $c3 $e7 $ff


    cp l                                          ; $634a: $bd
    ld a, [hl]                                    ; $634b: $7e
    rst $38                                       ; $634c: $ff
    rst $38                                       ; $634d: $ff
    nop                                           ; $634e: $00
    add hl, bc                                    ; $634f: $09
    ld hl, sp+$00                                 ; $6350: $f8 $00
    ldh a, [$15]                                  ; $6352: $f0 $15
    ldh a, [rIE]                                  ; $6354: $f0 $ff
    inc hl                                        ; $6356: $23
    ldh [rLYC], a                                 ; $6357: $e0 $45
    ret nz                                        ; $6359: $c0

    adc e                                         ; $635a: $8b
    add b                                         ; $635b: $80
    rlca                                          ; $635c: $07
    nop                                           ; $635d: $00
    ei                                            ; $635e: $fb
    ccf                                           ; $635f: $3f
    jr nc, @+$03                                  ; $6360: $30 $01

    call nz, $fe01                                ; $6362: $c4 $01 $fe
    inc bc                                        ; $6365: $03
    db $fc                                        ; $6366: $fc
    rlca                                          ; $6367: $07
    rst $08                                       ; $6368: $cf
    pop af                                        ; $6369: $f1
    rra                                           ; $636a: $1f
    add a                                         ; $636b: $87
    rst $38                                       ; $636c: $ff
    ld d, h                                       ; $636d: $54
    and c                                         ; $636e: $a1
    cp $e0                                        ; $636f: $fe $e0
    ld [hl], a                                    ; $6371: $77
    rlca                                          ; $6372: $07
    db $ed                                        ; $6373: $ed
    rst $38                                       ; $6374: $ff
    ld d, d                                       ; $6375: $52
    and c                                         ; $6376: $a1
    di                                            ; $6377: $f3
    dec c                                         ; $6378: $0d
    ld b, b                                       ; $6379: $40
    adc c                                         ; $637a: $89
    ldh a, [$ef]                                  ; $637b: $f0 $ef
    ret nz                                        ; $637d: $c0

    rst $38                                       ; $637e: $ff
    cp a                                          ; $637f: $bf
    db $e3                                        ; $6380: $e3
    db $e3                                        ; $6381: $e3
    pop bc                                        ; $6382: $c1
    pop bc                                        ; $6383: $c1
    pop af                                        ; $6384: $f1
    pop af                                        ; $6385: $f1
    ld sp, hl                                     ; $6386: $f9
    ei                                            ; $6387: $fb
    ld sp, hl                                     ; $6388: $f9
    db $fd                                        ; $6389: $fd
    adc [hl]                                      ; $638a: $8e
    ld h, c                                       ; $638b: $61
    ld a, a                                       ; $638c: $7f
    ccf                                           ; $638d: $3f
    rst $08                                       ; $638e: $cf
    ldh [$fe], a                                  ; $638f: $e0 $fe
    cp e                                          ; $6391: $bb
    ldh a, [$ee]                                  ; $6392: $f0 $ee
    and h                                         ; $6394: $a4
    add b                                         ; $6395: $80
    rst $28                                       ; $6396: $ef
    ld hl, sp-$39                                 ; $6397: $f8 $c7
    cp $e0                                        ; $6399: $fe $e0
    add a                                         ; $639b: $87
    ld l, l                                       ; $639c: $6d
    ld hl, sp+$58                                 ; $639d: $f8 $58
    ld h, b                                       ; $639f: $60
    nop                                           ; $63a0: $00
    rrca                                          ; $63a1: $0f
    ld a, [hl+]                                   ; $63a2: $2a
    ld h, b                                       ; $63a3: $60
    rlca                                          ; $63a4: $07
    inc b                                         ; $63a5: $04
    call z, $ffc2                                 ; $63a6: $cc $c2 $ff
    nop                                           ; $63a9: $00
    rlca                                          ; $63aa: $07
    ld b, c                                       ; $63ab: $41
    rst $38                                       ; $63ac: $ff
    jr c, @+$01                                   ; $63ad: $38 $ff

    ld e, $ff                                     ; $63af: $1e $ff
    rst $38                                       ; $63b1: $ff
    ld a, [bc]                                    ; $63b2: $0a
    rst $38                                       ; $63b3: $ff
    db $10                                        ; $63b4: $10
    rst $38                                       ; $63b5: $ff
    add b                                         ; $63b6: $80
    rst $38                                       ; $63b7: $ff
    ret nz                                        ; $63b8: $c0

    ld a, a                                       ; $63b9: $7f
    rst $28                                       ; $63ba: $ef
    ret nz                                        ; $63bb: $c0

    ccf                                           ; $63bc: $3f
    rst $38                                       ; $63bd: $ff
    add b                                         ; $63be: $80
    call nc, $a081                                ; $63bf: $d4 $81 $a0
    rst $38                                       ; $63c2: $ff
    dec b                                         ; $63c3: $05
    db $eb                                        ; $63c4: $eb
    rst $38                                       ; $63c5: $ff
    ld [bc], a                                    ; $63c6: $02
    add [hl]                                      ; $63c7: $86
    and d                                         ; $63c8: $a2
    ldh [$0c], a                                  ; $63c9: $e0 $0c
    ld h, b                                       ; $63cb: $60
    ld bc, $17ff                                  ; $63cc: $01 $ff $17
    cp a                                          ; $63cf: $bf
    rst $38                                       ; $63d0: $ff
    db $fd                                        ; $63d1: $fd
    rst $38                                       ; $63d2: $ff
    xor d                                         ; $63d3: $aa
    rst $38                                       ; $63d4: $ff
    ld d, b                                       ; $63d5: $50
    cp d                                          ; $63d6: $ba
    add b                                         ; $63d7: $80
    jr @+$01                                      ; $63d8: $18 $ff

    ldh [$83], a                                  ; $63da: $e0 $83
    db $fc                                        ; $63dc: $fc
    ld b, b                                       ; $63dd: $40
    rst $38                                       ; $63de: $ff
    xor b                                         ; $63df: $a8
    rst $38                                       ; $63e0: $ff
    ld b, b                                       ; $63e1: $40
    adc $68                                       ; $63e2: $ce $68
    and h                                         ; $63e4: $a4
    inc bc                                        ; $63e5: $03
    ld bc, $0e30                                  ; $63e6: $01 $30 $0e
    ld h, b                                       ; $63e9: $60
    ld e, h                                       ; $63ea: $5c
    and l                                         ; $63eb: $a5
    rlca                                          ; $63ec: $07
    cp $ff                                        ; $63ed: $fe $ff
    rra                                           ; $63ef: $1f
    pop af                                        ; $63f0: $f1
    ld e, $f3                                     ; $63f1: $1e $f3
    inc e                                         ; $63f3: $1c
    di                                            ; $63f4: $f3
    inc e                                         ; $63f5: $1c
    db $e3                                        ; $63f6: $e3
    rst $28                                       ; $63f7: $ef
    ld a, $e3                                     ; $63f8: $3e $e3
    ld a, a                                       ; $63fa: $7f
    pop bc                                        ; $63fb: $c1
    xor l                                         ; $63fc: $ad
    ldh [rP1], a                                  ; $63fd: $e0 $00
    ccf                                           ; $63ff: $3f
    db $fc                                        ; $6400: $fc
    rst $18                                       ; $6401: $df
    ld h, a                                       ; $6402: $67
    pop hl                                        ; $6403: $e1
    ld a, a                                       ; $6404: $7f
    jp Jump_000_107f                              ; $6405: $c3 $7f $10


    ret nz                                        ; $6408: $c0

    rra                                           ; $6409: $1f
    rst $38                                       ; $640a: $ff
    rst $18                                       ; $640b: $df
    sbc [hl]                                      ; $640c: $9e
    ld a, a                                       ; $640d: $7f
    sub l                                         ; $640e: $95
    rst $38                                       ; $640f: $ff
    ldh a, [$8d]                                  ; $6410: $f0 $8d
    and b                                         ; $6412: $a0
    ret nz                                        ; $6413: $c0

    rst $38                                       ; $6414: $ff
    rst $38                                       ; $6415: $ff
    db $e3                                        ; $6416: $e3
    cp $87                                        ; $6417: $fe $87
    db $fc                                        ; $6419: $fc
    ld b, a                                       ; $641a: $47
    db $fc                                        ; $641b: $fc
    adc a                                         ; $641c: $8f
    ld hl, sp-$32                                 ; $641d: $f8 $ce
    ret nc                                        ; $641f: $d0

    ret nz                                        ; $6420: $c0

    rst $38                                       ; $6421: $ff
    ccf                                           ; $6422: $3f
    ldh [$d8], a                                  ; $6423: $e0 $d8
    pop hl                                        ; $6425: $e1
    add hl, de                                    ; $6426: $19
    and e                                         ; $6427: $a3
    rst $00                                       ; $6428: $c7
    ld a, h                                       ; $6429: $7c
    rst $38                                       ; $642a: $ff
    rrca                                          ; $642b: $0f
    rst $38                                       ; $642c: $ff
    add a                                         ; $642d: $87
    rst $38                                       ; $642e: $ff
    db $e3                                        ; $642f: $e3
    ccf                                           ; $6430: $3f
    ld sp, hl                                     ; $6431: $f9
    rrca                                          ; $6432: $0f
    push af                                       ; $6433: $f5
    db $fc                                        ; $6434: $fc
    ld e, h                                       ; $6435: $5c
    ret nz                                        ; $6436: $c0

    cp $5c                                        ; $6437: $fe $5c
    ret nz                                        ; $6439: $c0

    ld sp, hl                                     ; $643a: $f9
    ld b, $f0                                     ; $643b: $06 $f0
    ld c, $ff                                     ; $643d: $0e $ff
    ldh a, [$0e]                                  ; $643f: $f0 $0e
    ld [c], a                                     ; $6441: $e2
    inc e                                         ; $6442: $1c
    ldh [rNR32], a                                ; $6443: $e0 $1c
    call nz, $4d38                                ; $6445: $c4 $38 $4d
    nop                                           ; $6448: $00
    db $e4                                        ; $6449: $e4
    ret nz                                        ; $644a: $c0

    ld b, $07                                     ; $644b: $06 $07
    cp $e3                                        ; $644d: $fe $e3
    rst $38                                       ; $644f: $ff
    pop hl                                        ; $6450: $e1
    inc bc                                        ; $6451: $03
    sbc [hl]                                      ; $6452: $9e
    and b                                         ; $6453: $a0
    ld a, a                                       ; $6454: $7f
    ldh [$3f], a                                  ; $6455: $e0 $3f
    or b                                          ; $6457: $b0
    rra                                           ; $6458: $1f
    ld e, h                                       ; $6459: $5c
    rrca                                          ; $645a: $0f
    add a                                         ; $645b: $87
    push de                                       ; $645c: $d5
    ld b, b                                       ; $645d: $40
    rst $20                                       ; $645e: $e7
    add b                                         ; $645f: $80

Jump_048_6460:
    nop                                           ; $6460: $00
    add b                                         ; $6461: $80
    db $fd                                        ; $6462: $fd
    ldh [rNR21], a                                ; $6463: $e0 $16
    add c                                         ; $6465: $81
    ld hl, sp-$31                                 ; $6466: $f8 $cf
    db $fc                                        ; $6468: $fc
    adc a                                         ; $6469: $8f
    rlca                                          ; $646a: $07
    sbc a                                         ; $646b: $9f
    inc bc                                        ; $646c: $03
    rlca                                          ; $646d: $07
    cp d                                          ; $646e: $ba
    ld b, c                                       ; $646f: $41
    rst $10                                       ; $6470: $d7
    ld b, b                                       ; $6471: $40
    ld h, [hl]                                    ; $6472: $66
    db $e4                                        ; $6473: $e4
    db $fc                                        ; $6474: $fc
    ld a, [c]                                     ; $6475: $f2
    and l                                         ; $6476: $a5
    and b                                         ; $6477: $a0
    inc bc                                        ; $6478: $03
    ld d, h                                       ; $6479: $54
    rst $20                                       ; $647a: $e7
    adc l                                         ; $647b: $8d
    pop hl                                        ; $647c: $e1
    ld l, b                                       ; $647d: $68
    rst $00                                       ; $647e: $c7
    ret z                                         ; $647f: $c8

    adc a                                         ; $6480: $8f
    cp e                                          ; $6481: $bb
    ccf                                           ; $6482: $3f
    ldh [$fe], a                                  ; $6483: $e0 $fe
    pop hl                                        ; $6485: $e1
    dec hl                                        ; $6486: $2b
    ret nz                                        ; $6487: $c0

    ld d, l                                       ; $6488: $55
    sub b                                         ; $6489: $90
    ret nz                                        ; $648a: $c0

    ld bc, $48fa                                  ; $648b: $01 $fa $48
    ret nz                                        ; $648e: $c0

    ld [$e2e4], sp                                ; $648f: $08 $e4 $e2
    pop bc                                        ; $6492: $c1
    ld a, a                                       ; $6493: $7f
    rst $20                                       ; $6494: $e7
    ccf                                           ; $6495: $3f
    rst $38                                       ; $6496: $ff
    db $fd                                        ; $6497: $fd
    inc e                                         ; $6498: $1c
    add l                                         ; $6499: $85
    add c                                         ; $649a: $81
    rra                                           ; $649b: $1f
    pop af                                        ; $649c: $f1
    ld a, $f3                                     ; $649d: $3e $f3
    ld a, h                                       ; $649f: $7c
    db $e3                                        ; $64a0: $e3
    rst $38                                       ; $64a1: $ff
    db $fc                                        ; $64a2: $fc
    rst $00                                       ; $64a3: $c7
    ld hl, sp+$07                                 ; $64a4: $f8 $07
    ld hl, sp+$0f                                 ; $64a6: $f8 $0f
    pop af                                        ; $64a8: $f1
    rrca                                          ; $64a9: $0f
    rst $08                                       ; $64aa: $cf
    di                                            ; $64ab: $f3
    rrca                                          ; $64ac: $0f
    inc bc                                        ; $64ad: $03
    cp $ca                                        ; $64ae: $fe $ca
    add b                                         ; $64b0: $80
    push de                                       ; $64b1: $d5
    ret nz                                        ; $64b2: $c0

    ccf                                           ; $64b3: $3f
    ldh [rIE], a                                  ; $64b4: $e0 $ff
    rra                                           ; $64b6: $1f
    ldh a, [$ef]                                  ; $64b7: $f0 $ef
    or b                                          ; $64b9: $b0
    rst $38                                       ; $64ba: $ff
    nop                                           ; $64bb: $00
    rst $20                                       ; $64bc: $e7
    ld bc, $e3af                                  ; $64bd: $01 $af $e3
    nop                                           ; $64c0: $00
    db $d3                                        ; $64c1: $d3
    nop                                           ; $64c2: $00
    db $fc                                        ; $64c3: $fc
    pop hl                                        ; $64c4: $e1
    rst $20                                       ; $64c5: $e7
    db $f4                                        ; $64c6: $f4
    ldh [$cf], a                                  ; $64c7: $e0 $cf
    ld h, a                                       ; $64c9: $67
    ld bc, $e000                                  ; $64ca: $01 $00 $e0
    call c, $fe40                                 ; $64cd: $dc $40 $fe
    and $40                                       ; $64d0: $e6 $40
    add b                                         ; $64d2: $80
    jp c, $fe43                                   ; $64d3: $da $43 $fe

    sub a                                         ; $64d6: $97
    daa                                           ; $64d7: $27

jr_048_64d8:
    cp a                                          ; $64d8: $bf
    ret nz                                        ; $64d9: $c0

    rst $38                                       ; $64da: $ff
    ret nz                                        ; $64db: $c0

    rst $18                                       ; $64dc: $df
    ldh [$6f], a                                  ; $64dd: $e0 $6f
    rst $28                                       ; $64df: $ef
    ldh a, [$37]                                  ; $64e0: $f0 $37
    ld a, b                                       ; $64e2: $78
    dec de                                        ; $64e3: $1b
    cp d                                          ; $64e4: $ba
    and b                                         ; $64e5: $a0
    rlca                                          ; $64e6: $07
    ld c, $1b                                     ; $64e7: $0e $1b
    rst $38                                       ; $64e9: $ff
    ld [hl], c                                    ; $64ea: $71
    ld b, b                                       ; $64eb: $40
    ld a, a                                       ; $64ec: $7f
    ld b, b                                       ; $64ed: $40
    ccf                                           ; $64ee: $3f
    jr nz, @+$3e                                  ; $64ef: $20 $3c

    jr nz, @+$01                                  ; $64f1: $20 $ff

    ld e, $10                                     ; $64f3: $1e $10
    rra                                           ; $64f5: $1f
    db $10                                        ; $64f6: $10
    rrca                                          ; $64f7: $0f
    ld [$020f], sp                                ; $64f8: $08 $0f $02
    rst $28                                       ; $64fb: $ef
    db $fc                                        ; $64fc: $fc
    db $10                                        ; $64fd: $10
    ldh [$80], a                                  ; $64fe: $e0 $80
    xor h                                         ; $6500: $ac
    ld [hl+], a                                   ; $6501: $22
    pop hl                                        ; $6502: $e1
    ld e, $03                                     ; $6503: $1e $03
    rst $38                                       ; $6505: $ff
    db $fd                                        ; $6506: $fd
    rra                                           ; $6507: $1f
    rst $28                                       ; $6508: $ef
    db $10                                        ; $6509: $10
    rrca                                          ; $650a: $0f
    ld hl, $991e                                  ; $650b: $21 $1e $99
    rst $38                                       ; $650e: $ff
    ld h, [hl]                                    ; $650f: $66
    jr c, jr_048_64d8                             ; $6510: $38 $c6

    ld a, b                                       ; $6512: $78
    or [hl]                                       ; $6513: $b6
    ld a, [$f2f4]                                 ; $6514: $fa $f4 $f2
    ld d, a                                       ; $6517: $57
    db $fc                                        ; $6518: $fc
    ldh a, [$ec]                                  ; $6519: $f0 $ec
    ld e, h                                       ; $651b: $5c
    pop hl                                        ; $651c: $e1
    dec b                                         ; $651d: $05
    rst $20                                       ; $651e: $e7
    jr nz, jr_048_6526                            ; $651f: $20 $05

    xor b                                         ; $6521: $a8
    and b                                         ; $6522: $a0
    db $fd                                        ; $6523: $fd
    rlca                                          ; $6524: $07
    and h                                         ; $6525: $a4

jr_048_6526:
    and b                                         ; $6526: $a0
    di                                            ; $6527: $f3
    ld c, $f3                                     ; $6528: $0e $f3
    inc c                                         ; $652a: $0c
    ei                                            ; $652b: $fb
    ld c, $5f                                     ; $652c: $0e $5f
    db $fd                                        ; $652e: $fd
    ld b, $bf                                     ; $652f: $06 $bf
    nop                                           ; $6531: $00
    jp z, $e085                                   ; $6532: $ca $85 $e0

    ldh a, [$d3]                                  ; $6535: $f0 $d3
    ld h, d                                       ; $6537: $62
    ld a, a                                       ; $6538: $7f
    ei                                            ; $6539: $fb
    nop                                           ; $653a: $00
    jp hl                                         ; $653b: $e9


    nop                                           ; $653c: $00
    ld b, c                                       ; $653d: $41
    nop                                           ; $653e: $00
    add e                                         ; $653f: $83
    ldh [$e0], a                                  ; $6540: $e0 $e0
    cp $73                                        ; $6542: $fe $73
    jr nz, jr_048_6547                            ; $6544: $20 $01

    db $fd                                        ; $6546: $fd

jr_048_6547:
    inc bc                                        ; $6547: $03
    db $fd                                        ; $6548: $fd
    inc bc                                        ; $6549: $03
    rst $38                                       ; $654a: $ff
    inc bc                                        ; $654b: $03
    rst $38                                       ; $654c: $ff
    ei                                            ; $654d: $fb
    rlca                                          ; $654e: $07
    or $0f                                        ; $654f: $f6 $0f
    db $ec                                        ; $6551: $ec
    ld e, $d8                                     ; $6552: $1e $d8
    inc a                                         ; $6554: $3c
    ld b, a                                       ; $6555: $47
    add b                                         ; $6556: $80
    ret nz                                        ; $6557: $c0

    add b                                         ; $6558: $80
    rst $38                                       ; $6559: $ff
    ldh [rLYC], a                                 ; $655a: $e0 $45
    jr nz, @+$06                                  ; $655c: $20 $04

    inc h                                         ; $655e: $24
    ld b, $ba                                     ; $655f: $06 $ba
    jp nz, $01d3                                  ; $6561: $c2 $d3 $01

    inc bc                                        ; $6564: $03
    dec [hl]                                      ; $6565: $35
    ld b, b                                       ; $6566: $40
    pop de                                        ; $6567: $d1
    jp nz, Jump_048_6208                          ; $6568: $c2 $08 $62

    and c                                         ; $656b: $a1
    add e                                         ; $656c: $83
    ld [bc], a                                    ; $656d: $02
    rst $18                                       ; $656e: $df
    add e                                         ; $656f: $83
    ld b, b                                       ; $6570: $40
    pop bc                                        ; $6571: $c1
    ld hl, $96e0                                  ; $6572: $21 $e0 $96
    ld b, b                                       ; $6575: $40
    ldh a, [$27]                                  ; $6576: $f0 $27
    rst $18                                       ; $6578: $df
    rst $20                                       ; $6579: $e7
    ld c, a                                       ; $657a: $4f
    rst $08                                       ; $657b: $cf
    ld c, a                                       ; $657c: $4f
    rst $08                                       ; $657d: $cf
    ld [hl+], a                                   ; $657e: $22
    ld b, b                                       ; $657f: $40
    cp [hl]                                       ; $6580: $be
    inc a                                         ; $6581: $3c
    cp a                                          ; $6582: $bf
    db $db                                        ; $6583: $db
    nop                                           ; $6584: $00
    ld a, a                                       ; $6585: $7f
    ld [hl+], a                                   ; $6586: $22
    inc e                                         ; $6587: $1c
    ldh [$fe], a                                  ; $6588: $e0 $fe
    ld b, b                                       ; $658a: $40
    ret nz                                        ; $658b: $c0

    rst $08                                       ; $658c: $cf
    cp b                                          ; $658d: $b8
    adc b                                         ; $658e: $88
    ld [hl], b                                    ; $658f: $70
    stop                                          ; $6590: $10 $00
    add b                                         ; $6592: $80
    cp e                                          ; $6593: $bb
    pop hl                                        ; $6594: $e1
    rla                                           ; $6595: $17
    nop                                           ; $6596: $00
    db $fd                                        ; $6597: $fd
    cpl                                           ; $6598: $2f
    db $fc                                        ; $6599: $fc
    ld [c], a                                     ; $659a: $e2
    ld e, a                                       ; $659b: $5f
    nop                                           ; $659c: $00
    ccf                                           ; $659d: $3f
    nop                                           ; $659e: $00
    ld a, [hl]                                    ; $659f: $7e
    rlca                                          ; $65a0: $07
    ei                                            ; $65a1: $fb
    ldh [$3f], a                                  ; $65a2: $e0 $3f
    ld d, c                                       ; $65a4: $51
    ld h, l                                       ; $65a5: $65
    db $fd                                        ; $65a6: $fd
    inc bc                                        ; $65a7: $03
    rst $08                                       ; $65a8: $cf
    ccf                                           ; $65a9: $3f
    cp $ff                                        ; $65aa: $fe $ff
    rst $38                                       ; $65ac: $ff
    ldh a, [$f8]                                  ; $65ad: $f0 $f8
    ld sp, hl                                     ; $65af: $f9
    ld b, $f2                                     ; $65b0: $06 $f2
    rrca                                          ; $65b2: $0f
    rst $28                                       ; $65b3: $ef
    ld a, a                                       ; $65b4: $7f
    rra                                           ; $65b5: $1f
    cp l                                          ; $65b6: $bd
    ld a, a                                       ; $65b7: $7f
    ldh a, [$f8]                                  ; $65b8: $f0 $f8
    ret nz                                        ; $65ba: $c0

    ldh [$71], a                                  ; $65bb: $e0 $71
    push bc                                       ; $65bd: $c5
    cp e                                          ; $65be: $bb
    cp a                                          ; $65bf: $bf
    ret nz                                        ; $65c0: $c0

    and $40                                       ; $65c1: $e6 $40
    rst $38                                       ; $65c3: $ff
    rra                                           ; $65c4: $1f
    ccf                                           ; $65c5: $3f
    ld h, c                                       ; $65c6: $61
    jp $fffe                                      ; $65c7: $c3 $fe $ff


    ld bc, $07fb                                  ; $65ca: $01 $fb $07
    sbc a                                         ; $65cd: $9f
    ld a, a                                       ; $65ce: $7f
    db $fc                                        ; $65cf: $fc
    cp $c0                                        ; $65d0: $fe $c0
    ld a, [hl]                                    ; $65d2: $7e
    or h                                          ; $65d3: $b4
    nop                                           ; $65d4: $00
    nop                                           ; $65d5: $00
    nop                                           ; $65d6: $00
    or b                                          ; $65d7: $b0
    ld a, b                                       ; $65d8: $78
    ldh [$f0], a                                  ; $65d9: $e0 $f0
    sub $e0                                       ; $65db: $d6 $e0
    inc a                                         ; $65dd: $3c
    ld h, b                                       ; $65de: $60
    and $d8                                       ; $65df: $e6 $d8
    pop bc                                        ; $65e1: $c1
    ld c, $1f                                     ; $65e2: $0e $1f
    rlca                                          ; $65e4: $07
    rrca                                          ; $65e5: $0f
    cp b                                          ; $65e6: $b8
    ld b, b                                       ; $65e7: $40
    ld d, d                                       ; $65e8: $52
    ld [bc], a                                    ; $65e9: $02
    ret z                                         ; $65ea: $c8

    pop af                                        ; $65eb: $f1
    ld b, e                                       ; $65ec: $43
    cp d                                          ; $65ed: $ba
    ret nz                                        ; $65ee: $c0

    add a                                         ; $65ef: $87

jr_048_65f0:
    jr nz, jr_048_6601                            ; $65f0: $20 $0f

    cp [hl]                                       ; $65f2: $be
    ldh [$c0], a                                  ; $65f3: $e0 $c0
    db $e3                                        ; $65f5: $e3
    rst $18                                       ; $65f6: $df
    ccf                                           ; $65f7: $3f
    rst $28                                       ; $65f8: $ef
    db $fc                                        ; $65f9: $fc
    cp $f0                                        ; $65fa: $fe $f0
    ld hl, sp+$62                                 ; $65fc: $f8 $62
    jr nz, jr_048_6600                            ; $65fe: $20 $00

jr_048_6600:
    cp a                                          ; $6600: $bf

jr_048_6601:
    ld a, a                                       ; $6601: $7f
    adc a                                         ; $6602: $8f
    ldh [$f0], a                                  ; $6603: $e0 $f0
    add b                                         ; $6605: $80
    ret nz                                        ; $6606: $c0

    jr nz, jr_048_65f0                            ; $6607: $20 $e7

    db $f4                                        ; $6609: $f4
    ldh [rNR43], a                                ; $660a: $e0 $22
    ld a, [bc]                                    ; $660c: $0a
    rra                                           ; $660d: $1f
    rst $38                                       ; $660e: $ff
    rra                                           ; $660f: $1f
    dec l                                         ; $6610: $2d
    inc sp                                        ; $6611: $33
    dec a                                         ; $6612: $3d
    inc hl                                        ; $6613: $23
    ld d, [hl]                                    ; $6614: $56
    ld l, c                                       ; $6615: $69
    ld l, d                                       ; $6616: $6a
    sbc a                                         ; $6617: $9f
    ld e, l                                       ; $6618: $5d
    ld l, a                                       ; $6619: $6f
    ld e, h                                       ; $661a: $5c
    xor a                                         ; $661b: $af
    call c, $a012                                 ; $661c: $dc $12 $a0
    jp z, $bfa0                                   ; $661f: $ca $a0 $bf

    ei                                            ; $6622: $fb
    cp a                                          ; $6623: $bf
    rst $28                                       ; $6624: $ef
    ld l, c                                       ; $6625: $69
    and b                                         ; $6626: $a0
    ld h, a                                       ; $6627: $67

jr_048_6628:
    ld hl, sp+$7b                                 ; $6628: $f8 $7b
    db $fc                                        ; $662a: $fc
    cp a                                          ; $662b: $bf
    ld a, l                                       ; $662c: $7d
    ld a, h                                       ; $662d: $7c
    jr nc, jr_048_6630                            ; $662e: $30 $00

jr_048_6630:
    ld bc, $f9f9                                  ; $6630: $01 $f9 $f9
    jp hl                                         ; $6633: $e9


    add hl, de                                    ; $6634: $19
    cp $e1                                        ; $6635: $fe $e1
    rst $08                                       ; $6637: $cf

jr_048_6638:
    ld [$78f8], sp                                ; $6638: $08 $f8 $78
    ld hl, sp+$4c                                 ; $663b: $f8 $4c
    nop                                           ; $663d: $00
    ld a, [hl-]                                   ; $663e: $3a
    and c                                         ; $663f: $a1
    ret nz                                        ; $6640: $c0

    ret c                                         ; $6641: $d8

    rst $38                                       ; $6642: $ff
    rst $20                                       ; $6643: $e7
    ei                                            ; $6644: $fb
    rst $20                                       ; $6645: $e7
    ld a, e                                       ; $6646: $7b
    ld h, a                                       ; $6647: $67
    dec sp                                        ; $6648: $3b
    daa                                           ; $6649: $27
    ret nz                                        ; $664a: $c0

    cp [hl]                                       ; $664b: $be
    ld a, [bc]                                    ; $664c: $0a
    ld h, b                                       ; $664d: $60
    ld e, [hl]                                    ; $664e: $5e
    sbc $7b                                       ; $664f: $de $7b

jr_048_6651:
    rst $20                                       ; $6651: $e7
    ld a, e                                       ; $6652: $7b
    ldh a, [$e0]                                  ; $6653: $f0 $e0
    jp c, $e7f7                                   ; $6655: $da $f7 $e7

    ld a, a                                       ; $6658: $7f
    ld b, b                                       ; $6659: $40
    inc d                                         ; $665a: $14
    ld b, b                                       ; $665b: $40
    rlca                                          ; $665c: $07
    rst $38                                       ; $665d: $ff
    ld hl, sp-$11                                 ; $665e: $f8 $ef
    rst $38                                       ; $6660: $ff
    jr jr_048_6651                                ; $6661: $18 $ee

    add hl, de                                    ; $6663: $19
    xor $19                                       ; $6664: $ee $19
    rst $28                                       ; $6666: $ef
    jr jr_048_6638                                ; $6667: $18 $cf

    rst $38                                       ; $6669: $ff
    jr c, jr_048_666c                             ; $666a: $38 $00

jr_048_666c:
    nop                                           ; $666c: $00
    pop af                                        ; $666d: $f1
    pop af                                        ; $666e: $f1
    pop de                                        ; $666f: $d1
    ld sp, $fbd1                                  ; $6670: $31 $d1 $fb
    ld sp, $5111                                  ; $6673: $31 $11 $51
    jr nz, jr_048_6628                            ; $6676: $20 $b0

    ld [hl], b                                    ; $6678: $70
    and b                                         ; $6679: $a0
    ld h, b                                       ; $667a: $60
    ret nz                                        ; $667b: $c0

    rst $38                                       ; $667c: $ff
    ret nz                                        ; $667d: $c0

    ld h, b                                       ; $667e: $60
    ldh [$60], a                                  ; $667f: $e0 $60
    ldh [$7c], a                                  ; $6681: $e0 $7c
    db $fc                                        ; $6683: $fc
    ld [hl], a                                    ; $6684: $77
    ei                                            ; $6685: $fb
    rst $08                                       ; $6686: $cf
    rst $30                                       ; $6687: $f7
    cp $e0                                        ; $6688: $fe $e0
    ld [hl], a                                    ; $668a: $77
    ld c, a                                       ; $668b: $4f
    nop                                           ; $668c: $00
    nop                                           ; $668d: $00
    rrca                                          ; $668e: $0f
    rst $38                                       ; $668f: $ff
    rrca                                          ; $6690: $0f
    rra                                           ; $6691: $1f
    db $10                                        ; $6692: $10
    rst $38                                       ; $6693: $ff
    ldh a, [$dc]                                  ; $6694: $f0 $dc
    inc sp                                        ; $6696: $33
    db $dd                                        ; $6697: $dd
    cp $fe                                        ; $6698: $fe $fe
    ldh [$df], a                                  ; $669a: $e0 $df
    jr nc, jr_048_669e                            ; $669c: $30 $00

jr_048_669e:
    nop                                           ; $669e: $00
    ldh [$e0], a                                  ; $669f: $e0 $e0
    or a                                          ; $66a1: $b7
    rst $38                                       ; $66a2: $ff
    ld [hl], a                                    ; $66a3: $77
    reti                                          ; $66a4: $d9


    ccf                                           ; $66a5: $3f
    ld l, [hl]                                    ; $66a6: $6e
    sbc c                                         ; $66a7: $99
    rst $30                                       ; $66a8: $f7
    adc h                                         ; $66a9: $8c
    ld [hl], a                                    ; $66aa: $77
    rst $30                                       ; $66ab: $f7
    adc h                                         ; $66ac: $8c
    rst $28                                       ; $66ad: $ef
    inc e                                         ; $66ae: $1c
    sub [hl]                                      ; $66af: $96
    ld bc, $0e0e                                  ; $66b0: $01 $0e $0e
    sbc e                                         ; $66b3: $9b
    sub a                                         ; $66b4: $97
    rst $38                                       ; $66b5: $ff
    db $db                                        ; $66b6: $db
    rst $10                                       ; $66b7: $d7
    ld l, e                                       ; $66b8: $6b
    rst $30                                       ; $66b9: $f7
    cp e                                          ; $66ba: $bb
    ld h, a                                       ; $66bb: $67
    db $db                                        ; $66bc: $db
    daa                                           ; $66bd: $27
    rst $38                                       ; $66be: $ff
    di                                            ; $66bf: $f3
    adc h                                         ; $66c0: $8c
    db $ed                                        ; $66c1: $ed
    sbc [hl]                                      ; $66c2: $9e
    db $ed                                        ; $66c3: $ed
    sbc [hl]                                      ; $66c4: $9e
    rst $28                                       ; $66c5: $ef
    sbc [hl]                                      ; $66c6: $9e
    db $fd                                        ; $66c7: $fd
    adc [hl]                                      ; $66c8: $8e

jr_048_66c9:
    ld h, e                                       ; $66c9: $63
    nop                                           ; $66ca: $00
    ld a, c                                       ; $66cb: $79
    ld a, c                                       ; $66cc: $79
    nop                                           ; $66cd: $00
    nop                                           ; $66ce: $00
    xor a                                         ; $66cf: $af
    ld l, h                                       ; $66d0: $6c
    rst $38                                       ; $66d1: $ff
    and a                                         ; $66d2: $a7
    ld h, h                                       ; $66d3: $64
    xor e                                         ; $66d4: $ab
    ld l, h                                       ; $66d5: $6c
    xor a                                         ; $66d6: $af
    ld l, b                                       ; $66d7: $68
    jr z, jr_048_66c9                             ; $66d8: $28 $ef

    rst $38                                       ; $66da: $ff
    rst $28                                       ; $66db: $ef
    rst $28                                       ; $66dc: $ef
    rst $20                                       ; $66dd: $e7
    rst $20                                       ; $66de: $e7
    nop                                           ; $66df: $00
    nop                                           ; $66e0: $00
    ld [hl], b                                    ; $66e1: $70
    ldh a, [$dc]                                  ; $66e2: $f0 $dc
    and b                                         ; $66e4: $a0
    pop hl                                        ; $66e5: $e1
    sbc h                                         ; $66e6: $9c
    pop hl                                        ; $66e7: $e1
    ldh [$e0], a                                  ; $66e8: $e0 $e0
    ret nz                                        ; $66ea: $c0

    inc d                                         ; $66eb: $14
    ldh [$3b], a                                  ; $66ec: $e0 $3b
    daa                                           ; $66ee: $27
    rst $38                                       ; $66ef: $ff
    dec sp                                        ; $66f0: $3b
    daa                                           ; $66f1: $27
    ld e, e                                       ; $66f2: $5b
    ld h, a                                       ; $66f3: $67
    ld a, e                                       ; $66f4: $7b
    ld b, a                                       ; $66f5: $47
    ld b, e                                       ; $66f6: $43

jr_048_66f7:
    ld a, a                                       ; $66f7: $7f
    rst $38                                       ; $66f8: $ff
    ld a, a                                       ; $66f9: $7f
    ld a, a                                       ; $66fa: $7f
    ld a, $3e                                     ; $66fb: $3e $3e
    nop                                           ; $66fd: $00
    nop                                           ; $66fe: $00
    ld a, a                                       ; $66ff: $7f
    ld b, b                                       ; $6700: $40
    ld a, a                                       ; $6701: $7f

jr_048_6702:
    ld [hl], b                                    ; $6702: $70
    ld c, a                                       ; $6703: $4f
    or a                                          ; $6704: $b7
    rst $08                                       ; $6705: $cf
    rst $30                                       ; $6706: $f7
    adc a                                         ; $6707: $8f

jr_048_6708:
    add a                                         ; $6708: $87
    inc hl                                        ; $6709: $23
    nop                                           ; $670a: $00
    db $fd                                        ; $670b: $fd
    ld a, h                                       ; $670c: $7c

jr_048_670d:
    ld [hl+], a                                   ; $670d: $22
    ldh [$de], a                                  ; $670e: $e0 $de
    add hl, sp                                    ; $6710: $39
    sbc $39                                       ; $6711: $de $39

jr_048_6713:
    rst $18                                       ; $6713: $df
    jr c, jr_048_670d                             ; $6714: $38 $f7

    rst $18                                       ; $6716: $df
    jr c, jr_048_6731                             ; $6717: $38 $18

    ret nc                                        ; $6719: $d0

    jr nz, jr_048_6713                            ; $671a: $20 $f7

    rst $30                                       ; $671c: $f7
    nop                                           ; $671d: $00
    nop                                           ; $671e: $00
    rst $38                                       ; $671f: $ff
    jr nz, jr_048_6702                            ; $6720: $20 $e0

    ldh a, [$f0]                                  ; $6722: $f0 $f0
    ret nc                                        ; $6724: $d0

    jr nc, jr_048_66f7                            ; $6725: $30 $d0

    jr nc, jr_048_6708                            ; $6727: $30 $df

    db $10                                        ; $6729: $10
    ldh a, [$f0]                                  ; $672a: $f0 $f0
    ldh a, [$e0]                                  ; $672c: $f0 $e0
    ld e, [hl]                                    ; $672e: $5e
    ret nz                                        ; $672f: $c0

    halt                                          ; $6730: $76

jr_048_6731:
    ld c, a                                       ; $6731: $4f
    rst $38                                       ; $6732: $ff
    ld d, l                                       ; $6733: $55
    ld l, [hl]                                    ; $6734: $6e
    ld l, e                                       ; $6735: $6b
    ld [hl], h                                    ; $6736: $74
    scf                                           ; $6737: $37
    jr c, jr_048_6752                             ; $6738: $38 $18

    rra                                           ; $673a: $1f
    rst $38                                       ; $673b: $ff
    rrca                                          ; $673c: $0f
    rrca                                          ; $673d: $0f
    rlca                                          ; $673e: $07
    rlca                                          ; $673f: $07
    nop                                           ; $6740: $00
    nop                                           ; $6741: $00
    rst $18                                       ; $6742: $df
    jr nc, @+$81                                  ; $6743: $30 $7f

    sbc h                                         ; $6745: $9c
    ld [hl], e                                    ; $6746: $73
    cp l                                          ; $6747: $bd
    ld [hl], e                                    ; $6748: $73
    dec a                                         ; $6749: $3d
    di                                            ; $674a: $f3
    ld [hl], c                                    ; $674b: $71
    and b                                         ; $674c: $a0
    jr nz, @+$01                                  ; $674d: $20 $ff

    rst $08                                       ; $674f: $cf
    rst $08                                       ; $6750: $cf
    nop                                           ; $6751: $00

jr_048_6752:
    nop                                           ; $6752: $00
    ld [$de1d], a                                 ; $6753: $ea $1d $de
    add hl, sp                                    ; $6756: $39
    sbc a                                         ; $6757: $9f
    ld l, [hl]                                    ; $6758: $6e
    sbc c                                         ; $6759: $99
    xor l                                         ; $675a: $ad
    db $db                                        ; $675b: $db
    ret                                           ; $675c: $c9


    ld [hl-], a                                   ; $675d: $32
    ld bc, $c03e                                  ; $675e: $01 $3e $c0
    ld a, e                                       ; $6761: $7b
    rst $38                                       ; $6762: $ff
    add a                                         ; $6763: $87
    cp e                                          ; $6764: $bb
    rst $00                                       ; $6765: $c7
    db $db                                        ; $6766: $db
    rst $20                                       ; $6767: $e7
    db $eb                                        ; $6768: $eb
    rst $30                                       ; $6769: $f7
    or e                                          ; $676a: $b3
    ld a, a                                       ; $676b: $7f
    cp a                                          ; $676c: $bf
    sbc a                                         ; $676d: $9f
    sbc a                                         ; $676e: $9f
    ld c, $0e                                     ; $676f: $0e $0e
    nop                                           ; $6771: $00
    nop                                           ; $6772: $00
    nop                                           ; $6773: $00
    nop                                           ; $6774: $00
    nop                                           ; $6775: $00
    ld b, l                                       ; $6776: $45
    dec c                                         ; $6777: $0d
    rst $38                                       ; $6778: $ff
    ldh a, [rIF]                                  ; $6779: $f0 $0f
    rst $38                                       ; $677b: $ff
    add sp, -$0d                                  ; $677c: $e8 $f3
    ldh [$dd], a                                  ; $677e: $e0 $dd
    ldh [$08], a                                  ; $6780: $e0 $08
    rst $38                                       ; $6782: $ff
    db $e4                                        ; $6783: $e4
    inc e                                         ; $6784: $1c
    db $e3                                        ; $6785: $e3
    ld [c], a                                     ; $6786: $e2
    ldh [$ef], a                                  ; $6787: $e0 $ef
    ld [$0b08], sp                                ; $6789: $08 $08 $0b
    rst $38                                       ; $678c: $ff
    pop hl                                        ; $678d: $e1
    rst $18                                       ; $678e: $df
    ld [c], a                                     ; $678f: $e2
    ldh [$ed], a                                  ; $6790: $e0 $ed
    inc h                                         ; $6792: $24
    sbc a                                         ; $6793: $9f
    pop hl                                        ; $6794: $e1
    ldh [$e5], a                                  ; $6795: $e0 $e5
    dec bc                                        ; $6797: $0b
    cp a                                          ; $6798: $bf

jr_048_6799:
    pop hl                                        ; $6799: $e1
    and b                                         ; $679a: $a0
    db $eb                                        ; $679b: $eb
    ld c, l                                       ; $679c: $4d
    rst $38                                       ; $679d: $ff
    ldh [$e0], a                                  ; $679e: $e0 $e0
    jp hl                                         ; $67a0: $e9


    ld e, b                                       ; $67a1: $58
    ldh a, [$e1]                                  ; $67a2: $f0 $e1
    ldh [$ee], a                                  ; $67a4: $e0 $ee
    ld e, e                                       ; $67a6: $5b
    pop hl                                        ; $67a7: $e1
    inc c                                         ; $67a8: $0c
    inc c                                         ; $67a9: $0c
    ret nz                                        ; $67aa: $c0

    ldh [$0a], a                                  ; $67ab: $e0 $0a
    ldh [$f6], a                                  ; $67ad: $e0 $f6
    ld d, a                                       ; $67af: $57
    inc c                                         ; $67b0: $0c
    dec c                                         ; $67b1: $0d
    dec c                                         ; $67b2: $0d
    and b                                         ; $67b3: $a0
    pop hl                                        ; $67b4: $e1
    ld [$f4c0], sp                                ; $67b5: $08 $c0 $f4
    inc c                                         ; $67b8: $0c
    ldh [$e0], a                                  ; $67b9: $e0 $e0
    add hl, bc                                    ; $67bb: $09
    inc c                                         ; $67bc: $0c
    ld e, [hl]                                    ; $67bd: $5e
    pop hl                                        ; $67be: $e1
    and b                                         ; $67bf: $a0
    ld a, [c]                                     ; $67c0: $f2
    inc c                                         ; $67c1: $0c
    rst $38                                       ; $67c2: $ff
    ldh [$9f], a                                  ; $67c3: $e0 $9f
    ldh [$3a], a                                  ; $67c5: $e0 $3a
    ldh [$c0], a                                  ; $67c7: $e0 $c0
    ld a, [c]                                     ; $67c9: $f2
    pop de                                        ; $67ca: $d1
    ld [$e1e0], sp                                ; $67cb: $08 $e0 $e1
    db $fc                                        ; $67ce: $fc
    db $e3                                        ; $67cf: $e3
    and b                                         ; $67d0: $a0
    ld a, [c]                                     ; $67d1: $f2
    ld c, $e0                                     ; $67d2: $0e $e0
    db $ec                                        ; $67d4: $ec
    cpl                                           ; $67d5: $2f
    cpl                                           ; $67d6: $2f
    jr jr_048_6799                                ; $67d7: $18 $c0

    db $ec                                        ; $67d9: $ec
    add l                                         ; $67da: $85
    pop hl                                        ; $67db: $e1
    cp h                                          ; $67dc: $bc
    ld [c], a                                     ; $67dd: $e2
    ld c, $0e                                     ; $67de: $0e $0e
    ldh [$f1], a                                  ; $67e0: $e0 $f1
    ld h, l                                       ; $67e2: $65
    ld [c], a                                     ; $67e3: $e2
    db $e4                                        ; $67e4: $e4
    ldh [rNR23], a                                ; $67e5: $e0 $18
    cp $e1                                        ; $67e7: $fe $e1
    ret nz                                        ; $67e9: $c0

    db $ed                                        ; $67ea: $ed
    ld h, b                                       ; $67eb: $60
    add $0e                                       ; $67ec: $c6 $0e
    ld c, $60                                     ; $67ee: $0e $60
    sub $f0                                       ; $67f0: $d6 $f0
    rst $38                                       ; $67f2: $ff
    ldh a, [$f8]                                  ; $67f3: $f0 $f8
    nop                                           ; $67f5: $00
    rrca                                          ; $67f6: $0f
    bit 4, b                                      ; $67f7: $cb $60
    jp nc, $edfc                                  ; $67f9: $d2 $fc $ed

    ldh [$a9], a                                  ; $67fc: $e0 $a9
    nop                                           ; $67fe: $00
    nop                                           ; $67ff: $00
    nop                                           ; $6800: $00
    ld [hl], l                                    ; $6801: $75
    inc b                                         ; $6802: $04
    rst $38                                       ; $6803: $ff
    ldh a, [rP1]                                  ; $6804: $f0 $00
    rst $38                                       ; $6806: $ff
    add sp, $04                                   ; $6807: $e8 $04
    nop                                           ; $6809: $00
    ld [bc], a                                    ; $680a: $02
    db $dd                                        ; $680b: $dd
    ldh [rIE], a                                  ; $680c: $e0 $ff
    dec b                                         ; $680e: $05
    ld b, $07                                     ; $680f: $06 $07
    ld [$0a09], sp                                ; $6811: $08 $09 $0a
    dec bc                                        ; $6814: $0b
    inc c                                         ; $6815: $0c
    ld a, [$e1e3]                                 ; $6816: $fa $e3 $e1
    ld [bc], a                                    ; $6819: $02
    ldh [$eb], a                                  ; $681a: $e0 $eb
    ld bc, $0403                                  ; $681c: $01 $03 $04
    inc b                                         ; $681f: $04
    dec c                                         ; $6820: $0d
    rst $38                                       ; $6821: $ff
    ld c, $0f                                     ; $6822: $0e $0f
    db $10                                        ; $6824: $10
    ld de, $1312                                  ; $6825: $11 $12 $13
    inc d                                         ; $6828: $14
    dec d                                         ; $6829: $15
    db $e3                                        ; $682a: $e3
    ld d, $04                                     ; $682b: $16 $04
    ldh a, [$e1]                                  ; $682d: $f0 $e1
    ret nz                                        ; $682f: $c0

    ld [$e19f], a                                 ; $6830: $ea $9f $e1
    rla                                           ; $6833: $17
    jr jr_048_684f                                ; $6834: $18 $19

    ld a, a                                       ; $6836: $7f
    ld a, [de]                                    ; $6837: $1a
    dec de                                        ; $6838: $1b
    inc e                                         ; $6839: $1c
    dec e                                         ; $683a: $1d
    inc d                                         ; $683b: $14
    ld e, $1f                                     ; $683c: $1e $1f
    and b                                         ; $683e: $a0
    rst $28                                       ; $683f: $ef
    cp $7f                                        ; $6840: $fe $7f
    ld [c], a                                     ; $6842: $e2
    jr nz, jr_048_6866                            ; $6843: $20 $21

    ld [hl+], a                                   ; $6845: $22
    inc hl                                        ; $6846: $23
    inc h                                         ; $6847: $24
    dec h                                         ; $6848: $25
    inc d                                         ; $6849: $14
    ei                                            ; $684a: $fb
    ld h, $27                                     ; $684b: $26 $27
    ldh [$f2], a                                  ; $684d: $e0 $f2

jr_048_684f:
    jr z, jr_048_687a                             ; $684f: $28 $29

    ld a, [hl+]                                   ; $6851: $2a
    dec hl                                        ; $6852: $2b
    inc l                                         ; $6853: $2c
    cp a                                          ; $6854: $bf
    dec l                                         ; $6855: $2d
    ld l, $2f                                     ; $6856: $2e $2f
    jr nc, jr_048_688b                            ; $6858: $30 $31

    ld [hl-], a                                   ; $685a: $32
    ret nz                                        ; $685b: $c0

    ld a, [c]                                     ; $685c: $f2
    inc sp                                        ; $685d: $33
    rst $38                                       ; $685e: $ff
    inc [hl]                                      ; $685f: $34
    dec [hl]                                      ; $6860: $35
    ld [hl], $37                                  ; $6861: $36 $37
    jr c, jr_048_689e                             ; $6863: $38 $39

    ld a, [hl-]                                   ; $6865: $3a

jr_048_6866:
    dec sp                                        ; $6866: $3b
    ei                                            ; $6867: $fb
    inc a                                         ; $6868: $3c
    dec a                                         ; $6869: $3d
    and b                                         ; $686a: $a0
    ld a, [c]                                     ; $686b: $f2
    ld a, $34                                     ; $686c: $3e $34
    inc [hl]                                      ; $686e: $34
    ccf                                           ; $686f: $3f
    ld b, b                                       ; $6870: $40
    ld a, a                                       ; $6871: $7f
    ld b, c                                       ; $6872: $41
    ld b, d                                       ; $6873: $42
    ld b, e                                       ; $6874: $43
    ld b, h                                       ; $6875: $44
    inc d                                         ; $6876: $14
    ld b, l                                       ; $6877: $45
    ld b, [hl]                                    ; $6878: $46
    add b                                         ; $6879: $80

jr_048_687a:
    pop af                                        ; $687a: $f1
    rst $38                                       ; $687b: $ff
    ld b, a                                       ; $687c: $47
    ld c, b                                       ; $687d: $48
    ld c, c                                       ; $687e: $49
    ld c, d                                       ; $687f: $4a
    ld c, e                                       ; $6880: $4b
    ld c, h                                       ; $6881: $4c
    ld c, l                                       ; $6882: $4d
    ld c, [hl]                                    ; $6883: $4e
    rst $28                                       ; $6884: $ef
    ld c, a                                       ; $6885: $4f
    ld d, b                                       ; $6886: $50
    ld d, c                                       ; $6887: $51
    ld d, d                                       ; $6888: $52
    ld h, b                                       ; $6889: $60
    pop af                                        ; $688a: $f1

jr_048_688b:
    ld d, e                                       ; $688b: $53
    ld d, h                                       ; $688c: $54
    ld d, l                                       ; $688d: $55
    rst $38                                       ; $688e: $ff
    ld d, [hl]                                    ; $688f: $56
    ld d, a                                       ; $6890: $57
    ld e, b                                       ; $6891: $58
    ld e, c                                       ; $6892: $59
    ld e, d                                       ; $6893: $5a
    ld e, e                                       ; $6894: $5b
    ld e, h                                       ; $6895: $5c
    ld e, l                                       ; $6896: $5d
    db $fd                                        ; $6897: $fd
    ld e, [hl]                                    ; $6898: $5e
    ld b, b                                       ; $6899: $40
    pop af                                        ; $689a: $f1

jr_048_689b:
    ld e, a                                       ; $689b: $5f
    ld h, b                                       ; $689c: $60
    ld h, c                                       ; $689d: $61

jr_048_689e:
    ld h, d                                       ; $689e: $62
    ld h, e                                       ; $689f: $63
    ld h, h                                       ; $68a0: $64
    cp a                                          ; $68a1: $bf
    inc [hl]                                      ; $68a2: $34
    ld h, l                                       ; $68a3: $65
    ld h, [hl]                                    ; $68a4: $66
    ld h, a                                       ; $68a5: $67
    ld l, b                                       ; $68a6: $68
    ld l, c                                       ; $68a7: $69
    jr nz, jr_048_689b                            ; $68a8: $20 $f1

    ld l, d                                       ; $68aa: $6a
    rst $38                                       ; $68ab: $ff
    ld l, e                                       ; $68ac: $6b
    ld l, h                                       ; $68ad: $6c
    ld l, l                                       ; $68ae: $6d
    ld l, [hl]                                    ; $68af: $6e
    ld l, a                                       ; $68b0: $6f
    inc [hl]                                      ; $68b1: $34
    inc [hl]                                      ; $68b2: $34
    ld [hl], b                                    ; $68b3: $70
    rst $30                                       ; $68b4: $f7
    ld [hl], c                                    ; $68b5: $71
    ld [hl], d                                    ; $68b6: $72
    ld [hl], e                                    ; $68b7: $73
    nop                                           ; $68b8: $00
    ld a, [c]                                     ; $68b9: $f2
    ld [hl], h                                    ; $68ba: $74
    ld [hl], l                                    ; $68bb: $75
    halt                                          ; $68bc: $76
    ld [hl], a                                    ; $68bd: $77
    cp a                                          ; $68be: $bf
    ld a, b                                       ; $68bf: $78
    ld a, c                                       ; $68c0: $79
    ld a, d                                       ; $68c1: $7a
    ld a, e                                       ; $68c2: $7b
    ld a, h                                       ; $68c3: $7c
    ld a, l                                       ; $68c4: $7d
    ldh [$d4], a                                  ; $68c5: $e0 $d4
    ld a, [hl]                                    ; $68c7: $7e
    rst $28                                       ; $68c8: $ef
    ld a, a                                       ; $68c9: $7f
    add b                                         ; $68ca: $80
    add c                                         ; $68cb: $81
    add d                                         ; $68cc: $82
    ld h, b                                       ; $68cd: $60
    sub $83                                       ; $68ce: $d6 $83
    add h                                         ; $68d0: $84
    add l                                         ; $68d1: $85
    rst $38                                       ; $68d2: $ff
    add [hl]                                      ; $68d3: $86
    add a                                         ; $68d4: $87
    adc b                                         ; $68d5: $88
    adc c                                         ; $68d6: $89
    add [hl]                                      ; $68d7: $86
    adc d                                         ; $68d8: $8a
    adc e                                         ; $68d9: $8b
    adc h                                         ; $68da: $8c
    db $fd                                        ; $68db: $fd
    adc l                                         ; $68dc: $8d
    ld h, b                                       ; $68dd: $60
    pop de                                        ; $68de: $d1
    adc [hl]                                      ; $68df: $8e
    adc a                                         ; $68e0: $8f
    sub b                                         ; $68e1: $90
    sub c                                         ; $68e2: $91
    sub d                                         ; $68e3: $92
    sub e                                         ; $68e4: $93
    ccf                                           ; $68e5: $3f
    sub h                                         ; $68e6: $94
    sub c                                         ; $68e7: $91
    sub l                                         ; $68e8: $95
    sub [hl]                                      ; $68e9: $96
    sub a                                         ; $68ea: $97
    sbc b                                         ; $68eb: $98
    ld h, b                                       ; $68ec: $60
    jp nc, $d900                                  ; $68ed: $d2 $00 $d9

    nop                                           ; $68f0: $00
    ldh [$bc], a                                  ; $68f1: $e0 $bc
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
    ld bc, $0203                                  ; $6900: $01 $03 $02
    inc bc                                        ; $6903: $03
    inc bc                                        ; $6904: $03
    ld b, $05                                     ; $6905: $06 $05
    ld c, $3f                                     ; $6907: $0e $3f
    ld a, h                                       ; $6909: $7c
    ld e, l                                       ; $690a: $5d
    ld h, d                                       ; $690b: $62
    cpl                                           ; $690c: $2f
    ld [hl], d                                    ; $690d: $72

jr_048_690e:
    rla                                           ; $690e: $17
    ld a, [hl-]                                   ; $690f: $3a
    dec bc                                        ; $6910: $0b
    inc e                                         ; $6911: $1c
    ld a, [bc]                                    ; $6912: $0a
    dec e                                         ; $6913: $1d
    inc d                                         ; $6914: $14
    dec de                                        ; $6915: $1b
    ld de, $263f                                  ; $6916: $11 $3f $26
    ccf                                           ; $6919: $3f
    jr jr_048_6958                                ; $691a: $18 $3c

    nop                                           ; $691c: $00
    nop                                           ; $691d: $00
    nop                                           ; $691e: $00
    nop                                           ; $691f: $00
    add b                                         ; $6920: $80
    ret nz                                        ; $6921: $c0

    ld b, b                                       ; $6922: $40
    ret nz                                        ; $6923: $c0

    ret nz                                        ; $6924: $c0

    ld h, b                                       ; $6925: $60
    and b                                         ; $6926: $a0
    ld [hl], b                                    ; $6927: $70
    db $fc                                        ; $6928: $fc
    ld a, $ba                                     ; $6929: $3e $ba
    ld b, [hl]                                    ; $692b: $46
    db $f4                                        ; $692c: $f4
    ld c, [hl]                                    ; $692d: $4e
    add sp, $5c                                   ; $692e: $e8 $5c
    ret nc                                        ; $6930: $d0

    jr c, @+$52                                   ; $6931: $38 $50

    cp b                                          ; $6933: $b8
    jr z, jr_048_690e                             ; $6934: $28 $d8

    adc b                                         ; $6936: $88
    db $fc                                        ; $6937: $fc
    ld h, h                                       ; $6938: $64
    db $fc                                        ; $6939: $fc
    jr @+$3e                                      ; $693a: $18 $3c

    nop                                           ; $693c: $00
    nop                                           ; $693d: $00
    nop                                           ; $693e: $00
    nop                                           ; $693f: $00
    nop                                           ; $6940: $00
    ld bc, $0101                                  ; $6941: $01 $01 $01
    ld bc, $0303                                  ; $6944: $01 $03 $03
    rlca                                          ; $6947: $07
    ld c, $1f                                     ; $6948: $0e $1f
    inc de                                        ; $694a: $13
    inc e                                         ; $694b: $1c
    inc de                                        ; $694c: $13
    inc e                                         ; $694d: $1c
    dec c                                         ; $694e: $0d
    ld e, $06                                     ; $694f: $1e $06
    rrca                                          ; $6951: $0f
    ld [bc], a                                    ; $6952: $02
    rlca                                          ; $6953: $07
    dec b                                         ; $6954: $05
    ld c, $0a                                     ; $6955: $0e $0a
    dec c                                         ; $6957: $0d

jr_048_6958:
    add hl, bc                                    ; $6958: $09
    rrca                                          ; $6959: $0f
    ld c, $0e                                     ; $695a: $0e $0e
    nop                                           ; $695c: $00
    nop                                           ; $695d: $00
    nop                                           ; $695e: $00
    nop                                           ; $695f: $00
    add b                                         ; $6960: $80
    ret nz                                        ; $6961: $c0

    ld b, b                                       ; $6962: $40
    ret nz                                        ; $6963: $c0

    ret nz                                        ; $6964: $c0

    ld h, b                                       ; $6965: $60
    and b                                         ; $6966: $a0
    ld [hl], b                                    ; $6967: $70
    ld hl, sp+$3c                                 ; $6968: $f8 $3c
    ld e, h                                       ; $696a: $5c
    and h                                         ; $696b: $a4
    db $f4                                        ; $696c: $f4
    xor h                                         ; $696d: $ac
    add sp, -$44                                  ; $696e: $e8 $bc
    ldh a, [rNR23]                                ; $6970: $f0 $18
    or b                                          ; $6972: $b0
    ld d, b                                       ; $6973: $50
    db $10                                        ; $6974: $10
    ld hl, sp-$38                                 ; $6975: $f8 $c8
    ld hl, sp+$28                                 ; $6977: $f8 $28
    ld hl, sp+$18                                 ; $6979: $f8 $18
    jr c, jr_048_697d                             ; $697b: $38 $00

jr_048_697d:
    nop                                           ; $697d: $00
    nop                                           ; $697e: $00
    nop                                           ; $697f: $00
    nop                                           ; $6980: $00
    ld bc, $0101                                  ; $6981: $01 $01 $01
    ld bc, $0203                                  ; $6984: $01 $03 $02
    rlca                                          ; $6987: $07
    dec c                                         ; $6988: $0d
    ld c, $0f                                     ; $6989: $0e $0f
    ld [$0c0b], sp                                ; $698b: $08 $0b $0c
    dec c                                         ; $698e: $0d
    ld c, $07                                     ; $698f: $0e $07
    ld c, $03                                     ; $6991: $0e $03
    ld b, $07                                     ; $6993: $06 $07
    inc b                                         ; $6995: $04

jr_048_6996:
    ld b, $05                                     ; $6996: $06 $05
    inc b                                         ; $6998: $04
    rlca                                          ; $6999: $07
    rlca                                          ; $699a: $07
    rlca                                          ; $699b: $07
    nop                                           ; $699c: $00
    nop                                           ; $699d: $00
    nop                                           ; $699e: $00
    nop                                           ; $699f: $00
    add b                                         ; $69a0: $80
    ret nz                                        ; $69a1: $c0

    ld b, b                                       ; $69a2: $40
    ret nz                                        ; $69a3: $c0

    ld b, b                                       ; $69a4: $40
    ret nz                                        ; $69a5: $c0

    ret nz                                        ; $69a6: $c0

    ld h, b                                       ; $69a7: $60
    and b                                         ; $69a8: $a0
    ld h, b                                       ; $69a9: $60
    ld d, b                                       ; $69aa: $50
    or b                                          ; $69ab: $b0
    ret nc                                        ; $69ac: $d0

    or b                                          ; $69ad: $b0
    ldh [$b0], a                                  ; $69ae: $e0 $b0
    ldh [rNR41], a                                ; $69b0: $e0 $20
    and b                                         ; $69b2: $a0
    ld h, b                                       ; $69b3: $60
    jr nz, jr_048_6996                            ; $69b4: $20 $e0

    ld d, b                                       ; $69b6: $50
    ldh a, [$d0]                                  ; $69b7: $f0 $d0
    ldh a, [$30]                                  ; $69b9: $f0 $30
    ldh a, [rP1]                                  ; $69bb: $f0 $00
    nop                                           ; $69bd: $00
    nop                                           ; $69be: $00
    nop                                           ; $69bf: $00
    nop                                           ; $69c0: $00
    ld bc, $0101                                  ; $69c1: $01 $01 $01
    ld bc, $0101                                  ; $69c4: $01 $01 $01
    inc bc                                        ; $69c7: $03
    inc bc                                        ; $69c8: $03
    ld b, $07                                     ; $69c9: $06 $07
    inc b                                         ; $69cb: $04
    dec b                                         ; $69cc: $05
    ld b, $06                                     ; $69cd: $06 $06
    rlca                                          ; $69cf: $07
    inc bc                                        ; $69d0: $03
    rlca                                          ; $69d1: $07
    inc bc                                        ; $69d2: $03
    inc bc                                        ; $69d3: $03
    ld [bc], a                                    ; $69d4: $02
    inc bc                                        ; $69d5: $03
    inc bc                                        ; $69d6: $03
    ld [bc], a                                    ; $69d7: $02
    inc bc                                        ; $69d8: $03
    ld [bc], a                                    ; $69d9: $02
    ld bc, $0003                                  ; $69da: $01 $03 $00
    nop                                           ; $69dd: $00
    nop                                           ; $69de: $00
    nop                                           ; $69df: $00
    ret nz                                        ; $69e0: $c0

    ret nz                                        ; $69e1: $c0

    ld b, b                                       ; $69e2: $40
    ret nz                                        ; $69e3: $c0

    ld b, b                                       ; $69e4: $40
    ldh [$a0], a                                  ; $69e5: $e0 $a0
    ld h, b                                       ; $69e7: $60
    ldh [rNR41], a                                ; $69e8: $e0 $20
    and b                                         ; $69ea: $a0
    ld h, b                                       ; $69eb: $60
    ldh [$60], a                                  ; $69ec: $e0 $60
    ldh [$60], a                                  ; $69ee: $e0 $60
    ldh [rNR41], a                                ; $69f0: $e0 $20
    and b                                         ; $69f2: $a0
    ld h, b                                       ; $69f3: $60
    and b                                         ; $69f4: $a0
    ld h, b                                       ; $69f5: $60
    ret nz                                        ; $69f6: $c0

    ld h, b                                       ; $69f7: $60
    ld b, b                                       ; $69f8: $40
    ret nz                                        ; $69f9: $c0

    add b                                         ; $69fa: $80
    ret nz                                        ; $69fb: $c0

    nop                                           ; $69fc: $00
    nop                                           ; $69fd: $00
    nop                                           ; $69fe: $00
    nop                                           ; $69ff: $00
    nop                                           ; $6a00: $00
    ld bc, $0101                                  ; $6a01: $01 $01 $01
    ld bc, $0101                                  ; $6a04: $01 $01 $01
    inc bc                                        ; $6a07: $03

jr_048_6a08:
    ld [bc], a                                    ; $6a08: $02
    inc bc                                        ; $6a09: $03
    dec b                                         ; $6a0a: $05
    ld b, $05                                     ; $6a0b: $06 $05
    ld b, $03                                     ; $6a0d: $06 $03
    ld b, $03                                     ; $6a0f: $06 $03
    ld [bc], a                                    ; $6a11: $02
    ld [bc], a                                    ; $6a12: $02

jr_048_6a13:
    inc bc                                        ; $6a13: $03
    ld [bc], a                                    ; $6a14: $02
    inc bc                                        ; $6a15: $03
    dec b                                         ; $6a16: $05
    rlca                                          ; $6a17: $07
    dec b                                         ; $6a18: $05
    rlca                                          ; $6a19: $07
    ld b, $07                                     ; $6a1a: $06 $07
    nop                                           ; $6a1c: $00
    nop                                           ; $6a1d: $00
    nop                                           ; $6a1e: $00
    nop                                           ; $6a1f: $00
    add b                                         ; $6a20: $80

jr_048_6a21:
    ret nz                                        ; $6a21: $c0

    ld b, b                                       ; $6a22: $40

jr_048_6a23:
    ret nz                                        ; $6a23: $c0

    ld b, b                                       ; $6a24: $40
    ldh [$a0], a                                  ; $6a25: $e0 $a0
    ld [hl], b                                    ; $6a27: $70
    ret c                                         ; $6a28: $d8

    jr c, jr_048_6a23                             ; $6a29: $38 $f8

    ld [$18e8], sp                                ; $6a2b: $08 $e8 $18
    ret c                                         ; $6a2e: $d8

    jr c, jr_048_6a21                             ; $6a2f: $38 $f0

    jr c, jr_048_6a13                             ; $6a31: $38 $e0

    jr nc, jr_048_6aa5                            ; $6a33: $30 $70

    sub b                                         ; $6a35: $90
    jr nc, jr_048_6a08                            ; $6a36: $30 $d0

    sub b                                         ; $6a38: $90
    ldh a, [rSVBK]                                ; $6a39: $f0 $70
    ldh a, [rP1]                                  ; $6a3b: $f0 $00
    nop                                           ; $6a3d: $00
    nop                                           ; $6a3e: $00
    nop                                           ; $6a3f: $00
    nop                                           ; $6a40: $00
    ld bc, $0101                                  ; $6a41: $01 $01 $01
    ld bc, $0203                                  ; $6a44: $01 $03 $02
    rlca                                          ; $6a47: $07
    rrca                                          ; $6a48: $0f
    ld e, $1f                                     ; $6a49: $1e $1f
    db $10                                        ; $6a4b: $10
    rla                                           ; $6a4c: $17
    jr jr_048_6a5a                                ; $6a4d: $18 $0b

    inc e                                         ; $6a4f: $1c
    rlca                                          ; $6a50: $07
    inc c                                         ; $6a51: $0c
    ld b, $05                                     ; $6a52: $06 $05
    inc b                                         ; $6a54: $04
    rrca                                          ; $6a55: $0f
    add hl, bc                                    ; $6a56: $09
    rrca                                          ; $6a57: $0f
    ld a, [bc]                                    ; $6a58: $0a
    rrca                                          ; $6a59: $0f

jr_048_6a5a:
    inc c                                         ; $6a5a: $0c
    ld c, $00                                     ; $6a5b: $0e $00
    nop                                           ; $6a5d: $00
    nop                                           ; $6a5e: $00
    nop                                           ; $6a5f: $00
    add b                                         ; $6a60: $80
    ret nz                                        ; $6a61: $c0

    ld b, b                                       ; $6a62: $40
    ret nz                                        ; $6a63: $c0

    ret nz                                        ; $6a64: $c0

    ld h, b                                       ; $6a65: $60
    ldh [rSVBK], a                                ; $6a66: $e0 $70
    cp b                                          ; $6a68: $b8
    ld a, h                                       ; $6a69: $7c
    db $e4                                        ; $6a6a: $e4
    inc e                                         ; $6a6b: $1c
    db $e4                                        ; $6a6c: $e4
    inc e                                         ; $6a6d: $1c
    ret c                                         ; $6a6e: $d8

    inc a                                         ; $6a6f: $3c
    or b                                          ; $6a70: $b0
    ld a, b                                       ; $6a71: $78
    and b                                         ; $6a72: $a0
    ld [hl], b                                    ; $6a73: $70
    ld d, b                                       ; $6a74: $50
    cp b                                          ; $6a75: $b8
    xor b                                         ; $6a76: $a8
    ret c                                         ; $6a77: $d8

    ld c, b                                       ; $6a78: $48
    ld hl, sp+$38                                 ; $6a79: $f8 $38
    jr c, jr_048_6a7d                             ; $6a7b: $38 $00

jr_048_6a7d:
    nop                                           ; $6a7d: $00
    nop                                           ; $6a7e: $00
    nop                                           ; $6a7f: $00
    ld bc, $0203                                  ; $6a80: $01 $03 $02
    inc bc                                        ; $6a83: $03
    inc bc                                        ; $6a84: $03
    ld b, $05                                     ; $6a85: $06 $05
    ld c, $3f                                     ; $6a87: $0e $3f
    ld a, h                                       ; $6a89: $7c
    ld e, a                                       ; $6a8a: $5f
    ld h, b                                       ; $6a8b: $60
    cpl                                           ; $6a8c: $2f
    ld [hl], b                                    ; $6a8d: $70

jr_048_6a8e:
    rla                                           ; $6a8e: $17
    jr c, jr_048_6a9c                             ; $6a8f: $38 $0b

    inc e                                         ; $6a91: $1c
    ld a, [bc]                                    ; $6a92: $0a
    dec e                                         ; $6a93: $1d
    inc d                                         ; $6a94: $14
    dec de                                        ; $6a95: $1b
    ld de, $263f                                  ; $6a96: $11 $3f $26
    ccf                                           ; $6a99: $3f
    jr jr_048_6ad8                                ; $6a9a: $18 $3c

jr_048_6a9c:
    nop                                           ; $6a9c: $00
    nop                                           ; $6a9d: $00
    nop                                           ; $6a9e: $00
    nop                                           ; $6a9f: $00
    add b                                         ; $6aa0: $80
    ret nz                                        ; $6aa1: $c0

    ld b, b                                       ; $6aa2: $40
    ret nz                                        ; $6aa3: $c0

    ret nz                                        ; $6aa4: $c0

jr_048_6aa5:
    ld h, b                                       ; $6aa5: $60
    and b                                         ; $6aa6: $a0
    ld [hl], b                                    ; $6aa7: $70
    db $fc                                        ; $6aa8: $fc
    ld a, $fa                                     ; $6aa9: $3e $fa
    ld b, $f4                                     ; $6aab: $06 $f4
    ld c, $e8                                     ; $6aad: $0e $e8
    inc e                                         ; $6aaf: $1c
    ret nc                                        ; $6ab0: $d0

    jr c, @+$52                                   ; $6ab1: $38 $50

    cp b                                          ; $6ab3: $b8
    jr z, jr_048_6a8e                             ; $6ab4: $28 $d8

    adc b                                         ; $6ab6: $88
    db $fc                                        ; $6ab7: $fc
    ld h, h                                       ; $6ab8: $64
    db $fc                                        ; $6ab9: $fc
    jr @+$3e                                      ; $6aba: $18 $3c

    nop                                           ; $6abc: $00
    nop                                           ; $6abd: $00
    nop                                           ; $6abe: $00
    nop                                           ; $6abf: $00
    nop                                           ; $6ac0: $00
    ld bc, $0101                                  ; $6ac1: $01 $01 $01
    ld bc, $0303                                  ; $6ac4: $01 $03 $03
    rlca                                          ; $6ac7: $07
    ld c, $1f                                     ; $6ac8: $0e $1f
    inc de                                        ; $6aca: $13
    inc e                                         ; $6acb: $1c
    inc de                                        ; $6acc: $13
    inc e                                         ; $6acd: $1c
    dec c                                         ; $6ace: $0d
    ld e, $06                                     ; $6acf: $1e $06
    rrca                                          ; $6ad1: $0f
    ld [bc], a                                    ; $6ad2: $02

jr_048_6ad3:
    rlca                                          ; $6ad3: $07
    dec b                                         ; $6ad4: $05
    ld c, $0a                                     ; $6ad5: $0e $0a
    dec c                                         ; $6ad7: $0d

jr_048_6ad8:
    add hl, bc                                    ; $6ad8: $09
    rrca                                          ; $6ad9: $0f
    ld c, $0e                                     ; $6ada: $0e $0e
    nop                                           ; $6adc: $00
    nop                                           ; $6add: $00
    nop                                           ; $6ade: $00
    nop                                           ; $6adf: $00
    add b                                         ; $6ae0: $80
    ret nz                                        ; $6ae1: $c0

    ld b, b                                       ; $6ae2: $40
    ret nz                                        ; $6ae3: $c0

    ret nz                                        ; $6ae4: $c0

    ld h, b                                       ; $6ae5: $60
    and b                                         ; $6ae6: $a0
    ld [hl], b                                    ; $6ae7: $70
    ld hl, sp+$3c                                 ; $6ae8: $f8 $3c
    db $fc                                        ; $6aea: $fc
    inc b                                         ; $6aeb: $04
    db $f4                                        ; $6aec: $f4
    inc c                                         ; $6aed: $0c
    add sp, $1c                                   ; $6aee: $e8 $1c
    ldh a, [rNR23]                                ; $6af0: $f0 $18
    or b                                          ; $6af2: $b0
    ld d, b                                       ; $6af3: $50
    db $10                                        ; $6af4: $10
    ld hl, sp-$38                                 ; $6af5: $f8 $c8
    ld hl, sp+$28                                 ; $6af7: $f8 $28
    ld hl, sp+$18                                 ; $6af9: $f8 $18
    jr c, jr_048_6afd                             ; $6afb: $38 $00

jr_048_6afd:
    nop                                           ; $6afd: $00
    nop                                           ; $6afe: $00
    nop                                           ; $6aff: $00
    nop                                           ; $6b00: $00
    ld bc, $0101                                  ; $6b01: $01 $01 $01
    ld bc, $0203                                  ; $6b04: $01 $03 $02
    rlca                                          ; $6b07: $07
    dec c                                         ; $6b08: $0d
    ld c, $0f                                     ; $6b09: $0e $0f
    ld [$0c0b], sp                                ; $6b0b: $08 $0b $0c
    dec c                                         ; $6b0e: $0d

jr_048_6b0f:
    ld c, $07                                     ; $6b0f: $0e $07

jr_048_6b11:
    ld c, $03                                     ; $6b11: $0e $03
    ld b, $07                                     ; $6b13: $06 $07
    inc b                                         ; $6b15: $04

jr_048_6b16:
    ld b, $05                                     ; $6b16: $06 $05
    inc b                                         ; $6b18: $04
    rlca                                          ; $6b19: $07
    rlca                                          ; $6b1a: $07
    rlca                                          ; $6b1b: $07
    nop                                           ; $6b1c: $00
    nop                                           ; $6b1d: $00
    nop                                           ; $6b1e: $00

jr_048_6b1f:
    nop                                           ; $6b1f: $00
    add b                                         ; $6b20: $80
    ret nz                                        ; $6b21: $c0

    ld b, b                                       ; $6b22: $40
    ret nz                                        ; $6b23: $c0

    ld b, b                                       ; $6b24: $40
    ret nz                                        ; $6b25: $c0

    ret nz                                        ; $6b26: $c0

    ld h, b                                       ; $6b27: $60
    and b                                         ; $6b28: $a0
    ld h, b                                       ; $6b29: $60
    ret nc                                        ; $6b2a: $d0

    jr nc, jr_048_6afd                            ; $6b2b: $30 $d0

    jr nc, jr_048_6b0f                            ; $6b2d: $30 $e0

    jr nc, jr_048_6b11                            ; $6b2f: $30 $e0

    jr nz, jr_048_6ad3                            ; $6b31: $20 $a0

    ld h, b                                       ; $6b33: $60
    jr nz, jr_048_6b16                            ; $6b34: $20 $e0

    ld d, b                                       ; $6b36: $50
    ldh a, [$d0]                                  ; $6b37: $f0 $d0
    ldh a, [$30]                                  ; $6b39: $f0 $30
    ldh a, [rP1]                                  ; $6b3b: $f0 $00
    nop                                           ; $6b3d: $00
    nop                                           ; $6b3e: $00
    nop                                           ; $6b3f: $00
    ld bc, $0101                                  ; $6b40: $01 $01 $01
    ld bc, $0301                                  ; $6b43: $01 $01 $03
    ld [bc], a                                    ; $6b46: $02
    inc bc                                        ; $6b47: $03
    inc bc                                        ; $6b48: $03
    ld [bc], a                                    ; $6b49: $02
    ld [bc], a                                    ; $6b4a: $02
    inc bc                                        ; $6b4b: $03
    inc bc                                        ; $6b4c: $03
    inc bc                                        ; $6b4d: $03
    inc bc                                        ; $6b4e: $03
    inc bc                                        ; $6b4f: $03
    inc bc                                        ; $6b50: $03
    ld [bc], a                                    ; $6b51: $02
    ld [bc], a                                    ; $6b52: $02
    inc bc                                        ; $6b53: $03
    ld [bc], a                                    ; $6b54: $02
    inc bc                                        ; $6b55: $03
    ld bc, $0103                                  ; $6b56: $01 $03 $01
    ld bc, $0100                                  ; $6b59: $01 $00 $01
    nop                                           ; $6b5c: $00
    nop                                           ; $6b5d: $00
    nop                                           ; $6b5e: $00
    nop                                           ; $6b5f: $00
    add b                                         ; $6b60: $80
    ret nz                                        ; $6b61: $c0

    ld b, b                                       ; $6b62: $40
    ret nz                                        ; $6b63: $c0

    ld b, b                                       ; $6b64: $40
    ret nz                                        ; $6b65: $c0

    ret nz                                        ; $6b66: $c0

    ld h, b                                       ; $6b67: $60
    ldh [$30], a                                  ; $6b68: $e0 $30
    ldh a, [rNR10]                                ; $6b6a: $f0 $10
    ret nc                                        ; $6b6c: $d0

    jr nc, jr_048_6b1f                            ; $6b6d: $30 $b0

    ld [hl], b                                    ; $6b6f: $70
    ldh [rSVBK], a                                ; $6b70: $e0 $70
    ldh [$60], a                                  ; $6b72: $e0 $60
    and b                                         ; $6b74: $a0
    ld h, b                                       ; $6b75: $60
    ldh [rNR41], a                                ; $6b76: $e0 $20
    ld h, b                                       ; $6b78: $60
    and b                                         ; $6b79: $a0
    ret nz                                        ; $6b7a: $c0

    ldh [rP1], a                                  ; $6b7b: $e0 $00
    nop                                           ; $6b7d: $00
    nop                                           ; $6b7e: $00
    nop                                           ; $6b7f: $00
    nop                                           ; $6b80: $00
    ld bc, $0101                                  ; $6b81: $01 $01 $01
    ld bc, $0101                                  ; $6b84: $01 $01 $01
    inc bc                                        ; $6b87: $03

jr_048_6b88:
    ld [bc], a                                    ; $6b88: $02
    inc bc                                        ; $6b89: $03
    dec b                                         ; $6b8a: $05
    ld b, $05                                     ; $6b8b: $06 $05
    ld b, $03                                     ; $6b8d: $06 $03
    ld b, $03                                     ; $6b8f: $06 $03
    ld [bc], a                                    ; $6b91: $02
    ld [bc], a                                    ; $6b92: $02
    inc bc                                        ; $6b93: $03
    ld [bc], a                                    ; $6b94: $02
    inc bc                                        ; $6b95: $03
    dec b                                         ; $6b96: $05
    rlca                                          ; $6b97: $07
    dec b                                         ; $6b98: $05
    rlca                                          ; $6b99: $07
    ld b, $07                                     ; $6b9a: $06 $07
    nop                                           ; $6b9c: $00
    nop                                           ; $6b9d: $00
    nop                                           ; $6b9e: $00
    nop                                           ; $6b9f: $00
    add b                                         ; $6ba0: $80
    ret nz                                        ; $6ba1: $c0

    ld b, b                                       ; $6ba2: $40
    ret nz                                        ; $6ba3: $c0

    ld b, b                                       ; $6ba4: $40
    ldh [$a0], a                                  ; $6ba5: $e0 $a0
    ld [hl], b                                    ; $6ba7: $70
    ret c                                         ; $6ba8: $d8

    jr c, @+$7a                                   ; $6ba9: $38 $78

    adc b                                         ; $6bab: $88
    add sp, -$68                                  ; $6bac: $e8 $98
    ret c                                         ; $6bae: $d8

    cp b                                          ; $6baf: $b8
    ldh a, [$38]                                  ; $6bb0: $f0 $38
    ldh [$30], a                                  ; $6bb2: $e0 $30
    ld [hl], b                                    ; $6bb4: $70
    sub b                                         ; $6bb5: $90
    jr nc, jr_048_6b88                            ; $6bb6: $30 $d0

    sub b                                         ; $6bb8: $90
    ldh a, [rSVBK]                                ; $6bb9: $f0 $70
    ldh a, [rP1]                                  ; $6bbb: $f0 $00
    nop                                           ; $6bbd: $00
    nop                                           ; $6bbe: $00
    nop                                           ; $6bbf: $00
    nop                                           ; $6bc0: $00
    ld bc, $0101                                  ; $6bc1: $01 $01 $01
    ld bc, $0203                                  ; $6bc4: $01 $03 $02
    rlca                                          ; $6bc7: $07
    rrca                                          ; $6bc8: $0f
    ld e, $1d                                     ; $6bc9: $1e $1d
    ld [de], a                                    ; $6bcb: $12
    rla                                           ; $6bcc: $17
    ld a, [de]                                    ; $6bcd: $1a
    dec bc                                        ; $6bce: $0b
    ld e, $07                                     ; $6bcf: $1e $07
    inc c                                         ; $6bd1: $0c
    ld b, $05                                     ; $6bd2: $06 $05
    inc b                                         ; $6bd4: $04
    rrca                                          ; $6bd5: $0f
    add hl, bc                                    ; $6bd6: $09
    rrca                                          ; $6bd7: $0f
    ld a, [bc]                                    ; $6bd8: $0a
    rrca                                          ; $6bd9: $0f
    inc c                                         ; $6bda: $0c
    ld c, $00                                     ; $6bdb: $0e $00
    nop                                           ; $6bdd: $00
    nop                                           ; $6bde: $00
    nop                                           ; $6bdf: $00
    add b                                         ; $6be0: $80
    ret nz                                        ; $6be1: $c0

    ld b, b                                       ; $6be2: $40
    ret nz                                        ; $6be3: $c0

    ret nz                                        ; $6be4: $c0

    ld h, b                                       ; $6be5: $60
    ldh [rSVBK], a                                ; $6be6: $e0 $70
    cp b                                          ; $6be8: $b8
    ld a, h                                       ; $6be9: $7c
    ld h, h                                       ; $6bea: $64
    sbc h                                         ; $6beb: $9c
    db $e4                                        ; $6bec: $e4
    sbc h                                         ; $6bed: $9c
    ret c                                         ; $6bee: $d8

    cp h                                          ; $6bef: $bc
    or b                                          ; $6bf0: $b0
    ld a, b                                       ; $6bf1: $78
    and b                                         ; $6bf2: $a0
    ld [hl], b                                    ; $6bf3: $70
    ld d, b                                       ; $6bf4: $50
    cp b                                          ; $6bf5: $b8
    xor b                                         ; $6bf6: $a8
    ret c                                         ; $6bf7: $d8

    ld c, b                                       ; $6bf8: $48

jr_048_6bf9:
    ld hl, sp+$38                                 ; $6bf9: $f8 $38
    jr c, jr_048_6bfd                             ; $6bfb: $38 $00

jr_048_6bfd:
    nop                                           ; $6bfd: $00
    nop                                           ; $6bfe: $00
    nop                                           ; $6bff: $00
    ld [$c26c], sp                                ; $6c00: $08 $6c $c2
    ld [hl], b                                    ; $6c03: $70
    ld bc, $1c77                                  ; $6c04: $01 $77 $1c
    ld [hl], a                                    ; $6c07: $77
    cp a                                          ; $6c08: $bf
    dec c                                         ; $6c09: $0d
    dec c                                         ; $6c0a: $0d
    dec c                                         ; $6c0b: $0d
    ld c, $0e                                     ; $6c0c: $0e $0e
    ld c, $fa                                     ; $6c0e: $0e $fa
    ld [$0b4d], a                                 ; $6c10: $ea $4d $0b
    ld c, $0e                                     ; $6c13: $0e $0e
    db $fd                                        ; $6c15: $fd
    pop hl                                        ; $6c16: $e1
    ld c, l                                       ; $6c17: $4d
    ei                                            ; $6c18: $fb
    db $e3                                        ; $6c19: $e3
    pop hl                                        ; $6c1a: $e1
    ldh [$f5], a                                  ; $6c1b: $e0 $f5
    db $e4                                        ; $6c1d: $e4
    sub $ef                                       ; $6c1e: $d6 $ef
    nop                                           ; $6c20: $00
    call nz, $fde2                                ; $6c21: $c4 $e2 $fd
    xor $c0                                       ; $6c24: $ee $c0
    db $e3                                        ; $6c26: $e3
    and a                                         ; $6c27: $a7
    ldh [$fd], a                                  ; $6c28: $e0 $fd
    add sp, -$63                                  ; $6c2a: $e8 $9d
    pop hl                                        ; $6c2c: $e1
    call nc, $c0f1                                ; $6c2d: $d4 $f1 $c0
    pop af                                        ; $6c30: $f1
    jr jr_048_6bf9                                ; $6c31: $18 $c6

    push hl                                       ; $6c33: $e5
    ld a, [hl]                                    ; $6c34: $7e
    ldh [$fd], a                                  ; $6c35: $e0 $fd
    db $e3                                        ; $6c37: $e3
    dec l                                         ; $6c38: $2d
    dec l                                         ; $6c39: $2d
    ld a, e                                       ; $6c3a: $7b
    ld [c], a                                     ; $6c3b: $e2
    ret nc                                        ; $6c3c: $d0

    ld hl, sp+$3d                                 ; $6c3d: $f8 $3d
    push hl                                       ; $6c3f: $e5
    ld l, [hl]                                    ; $6c40: $6e
    sub e                                         ; $6c41: $93
    rst $20                                       ; $6c42: $e7
    dec c                                         ; $6c43: $0d
    ld l, l                                       ; $6c44: $6d
    ld l, e                                       ; $6c45: $6b
    rst $38                                       ; $6c46: $ff
    rst $20                                       ; $6c47: $e7
    ld c, l                                       ; $6c48: $4d
    dec l                                         ; $6c49: $2d
    or c                                          ; $6c4a: $b1
    pop hl                                        ; $6c4b: $e1
    ret nz                                        ; $6c4c: $c0

    ld [hl], a                                    ; $6c4d: $77
    db $e4                                        ; $6c4e: $e4
    inc de                                        ; $6c4f: $13
    db $eb                                        ; $6c50: $eb
    adc c                                         ; $6c51: $89
    jp hl                                         ; $6c52: $e9


    inc b                                         ; $6c53: $04
    pop hl                                        ; $6c54: $e1
    adc e                                         ; $6c55: $8b
    pop hl                                        ; $6c56: $e1
    nop                                           ; $6c57: $00
    ldh [$0d], a                                  ; $6c58: $e0 $0d
    ld l, l                                       ; $6c5a: $6d
    inc c                                         ; $6c5b: $0c
    call Call_000_3ce1                            ; $6c5c: $cd $e1 $3c
    db $e4                                        ; $6c5f: $e4
    dec l                                         ; $6c60: $2d
    dec c                                         ; $6c61: $0d
    cp a                                          ; $6c62: $bf
    db $e3                                        ; $6c63: $e3
    ld a, l                                       ; $6c64: $7d
    rst $30                                       ; $6c65: $f7
    add hl, bc                                    ; $6c66: $09
    ld [c], a                                     ; $6c67: $e2
    dec bc                                        ; $6c68: $0b
    ld [c], a                                     ; $6c69: $e2
    cp [hl]                                       ; $6c6a: $be
    cp b                                          ; $6c6b: $b8
    db $e4                                        ; $6c6c: $e4
    ld l, l                                       ; $6c6d: $6d
    dec l                                         ; $6c6e: $2d
    dec l                                         ; $6c6f: $2d
    dec l                                         ; $6c70: $2d
    inc c                                         ; $6c71: $0c
    rst $38                                       ; $6c72: $ff
    ldh [$2c], a                                  ; $6c73: $e0 $2c
    nop                                           ; $6c75: $00
    db $fc                                        ; $6c76: $fc
    pop hl                                        ; $6c77: $e1
    inc [hl]                                      ; $6c78: $34
    pop hl                                        ; $6c79: $e1
    ld a, [hl]                                    ; $6c7a: $7e
    ldh [$92], a                                  ; $6c7b: $e0 $92
    ld [$f043], a                                 ; $6c7d: $ea $43 $f0
    ld a, d                                       ; $6c80: $7a
    pop bc                                        ; $6c81: $c1
    add h                                         ; $6c82: $84
    ld [c], a                                     ; $6c83: $e2
    dec b                                         ; $6c84: $05
    ldh [rNR13], a                                ; $6c85: $e0 $13
    dec bc                                        ; $6c87: $0b
    dec c                                         ; $6c88: $0d
    pop bc                                        ; $6c89: $c1
    ld [c], a                                     ; $6c8a: $e2
    db $fc                                        ; $6c8b: $fc
    ld [c], a                                     ; $6c8c: $e2
    inc l                                         ; $6c8d: $2c
    cp [hl]                                       ; $6c8e: $be
    pop hl                                        ; $6c8f: $e1
    dec a                                         ; $6c90: $3d
    ldh [rNR42], a                                ; $6c91: $e0 $21
    rst $20                                       ; $6c93: $e7
    ret nz                                        ; $6c94: $c0

    add b                                         ; $6c95: $80
    push de                                       ; $6c96: $d5
    ld [hl], c                                    ; $6c97: $71
    jp nz, $c1c7                                  ; $6c98: $c2 $c7 $c1

    ld b, d                                       ; $6c9b: $42
    ldh [$c1], a                                  ; $6c9c: $e0 $c1
    and $7e                                       ; $6c9e: $e6 $7e
    db $e3                                        ; $6ca0: $e3
    ld l, e                                       ; $6ca1: $6b
    ld l, l                                       ; $6ca2: $6d
    nop                                           ; $6ca3: $00
    add b                                         ; $6ca4: $80
    db $e3                                        ; $6ca5: $e3
    ld a, d                                       ; $6ca6: $7a
    jp c, $c214                                   ; $6ca7: $da $14 $c2

    add $c1                                       ; $6caa: $c6 $c1
    ld b, d                                       ; $6cac: $42
    db $e4                                        ; $6cad: $e4
    ld a, [hl]                                    ; $6cae: $7e
    and $7f                                       ; $6caf: $e6 $7f
    ld [c], a                                     ; $6cb1: $e2
    xor $a3                                       ; $6cb2: $ee $a3
    nop                                           ; $6cb4: $00
    add b                                         ; $6cb5: $80
    ret c                                         ; $6cb6: $d8

    call nc, $c6a2                                ; $6cb7: $d4 $a2 $c6

jr_048_6cba:
    jp nz, $e5c1                                  ; $6cba: $c2 $c1 $e5

    ld bc, $7fe1                                  ; $6cbd: $01 $e1 $7f
    db $e4                                        ; $6cc0: $e4
    db $fd                                        ; $6cc1: $fd
    push bc                                       ; $6cc2: $c5
    ld a, d                                       ; $6cc3: $7a
    call z, Call_000_0978                         ; $6cc4: $cc $78 $09
    res 3, e                                      ; $6cc7: $cb $9b
    and c                                         ; $6cc9: $a1
    dec b                                         ; $6cca: $05
    rst $20                                       ; $6ccb: $e7
    ld l, h                                       ; $6ccc: $6c
    ld c, h                                       ; $6ccd: $4c
    ld c, h                                       ; $6cce: $4c
    ld c, h                                       ; $6ccf: $4c
    db $fd                                        ; $6cd0: $fd
    jp z, $7150                                   ; $6cd1: $ca $50 $71

    and c                                         ; $6cd4: $a1
    adc e                                         ; $6cd5: $8b
    or h                                          ; $6cd6: $b4
    adc h                                         ; $6cd7: $8c
    and e                                         ; $6cd8: $a3
    ld b, d                                       ; $6cd9: $42
    and c                                         ; $6cda: $a1
    dec bc                                        ; $6cdb: $0b
    dec b                                         ; $6cdc: $05
    ldh [$2c], a                                  ; $6cdd: $e0 $2c
    adc b                                         ; $6cdf: $88
    pop bc                                        ; $6ce0: $c1
    rst $28                                       ; $6ce1: $ef
    ld l, h                                       ; $6ce2: $6c
    ld l, h                                       ; $6ce3: $6c
    dec hl                                        ; $6ce4: $2b
    dec bc                                        ; $6ce5: $0b
    cp [hl]                                       ; $6ce6: $be
    rst $20                                       ; $6ce7: $e7
    dec c                                         ; $6ce8: $0d
    dec c                                         ; $6ce9: $0d
    ld c, e                                       ; $6cea: $4b
    nop                                           ; $6ceb: $00
    cp l                                          ; $6cec: $bd
    jp nz, $cc3a                                  ; $6ced: $c2 $3a $cc

    nop                                           ; $6cf0: $00
    and [hl]                                      ; $6cf1: $a6
    ld h, b                                       ; $6cf2: $60
    call nz, $e3c0                                ; $6cf3: $c4 $c0 $e3
    add d                                         ; $6cf6: $82
    ld [c], a                                     ; $6cf7: $e2
    pop bc                                        ; $6cf8: $c1
    ldh [$fe], a                                  ; $6cf9: $e0 $fe
    ldh [$84], a                                  ; $6cfb: $e0 $84
    ld a, l                                       ; $6cfd: $7d
    db $e4                                        ; $6cfe: $e4
    db $fd                                        ; $6cff: $fd
    ret nz                                        ; $6d00: $c0

    ld c, e                                       ; $6d01: $4b
    cp l                                          ; $6d02: $bd
    call nz, $acb7                                ; $6d03: $c4 $b7 $ac
    inc bc                                        ; $6d06: $03
    add $c0                                       ; $6d07: $c6 $c0
    db $ec                                        ; $6d09: $ec
    inc l                                         ; $6d0a: $2c
    ld e, $c2                                     ; $6d0b: $1e $c2
    ldh [$0b], a                                  ; $6d0d: $e0 $0b
    dec bc                                        ; $6d0f: $0b
    ld l, e                                       ; $6d10: $6b
    ld c, e                                       ; $6d11: $4b
    ld a, h                                       ; $6d12: $7c
    add $7d                                       ; $6d13: $c6 $7d
    ret z                                         ; $6d15: $c8

    ret z                                         ; $6d16: $c8

    adc [hl]                                      ; $6d17: $8e
    jr c, @-$7b                                   ; $6d18: $38 $83

    and [hl]                                      ; $6d1a: $a6
    add a                                         ; $6d1b: $87
    and c                                         ; $6d1c: $a1
    adc e                                         ; $6d1d: $8b
    push bc                                       ; $6d1e: $c5
    ld l, e                                       ; $6d1f: $6b
    ld c, e                                       ; $6d20: $4b
    ld c, e                                       ; $6d21: $4b
    pop bc                                        ; $6d22: $c1
    and $ff                                       ; $6d23: $e6 $ff
    call nz, $5a00                                ; $6d25: $c4 $00 $5a
    push hl                                       ; $6d28: $e5
    nop                                           ; $6d29: $00
    xor a                                         ; $6d2a: $af
    ld [hl+], a                                   ; $6d2b: $22
    jp $a187                                      ; $6d2c: $c3 $87 $a1


    ret z                                         ; $6d2f: $c8

    xor b                                         ; $6d30: $a8
    rst $30                                       ; $6d31: $f7
    jp $c97d                                      ; $6d32: $c3 $7d $c9


    jr nz, jr_048_6cba                            ; $6d35: $20 $83

    nop                                           ; $6d37: $00
    nop                                           ; $6d38: $00
    or d                                          ; $6d39: $b2
    ld c, e                                       ; $6d3a: $4b
    add c                                         ; $6d3b: $81
    add a                                         ; $6d3c: $87
    xor e                                         ; $6d3d: $ab
    jp $fce6                                      ; $6d3e: $c3 $e6 $fc


    and h                                         ; $6d41: $a4
    cp $c3                                        ; $6d42: $fe $c3
    scf                                           ; $6d44: $37
    sub h                                         ; $6d45: $94
    ret nz                                        ; $6d46: $c0

    add e                                         ; $6d47: $83
    nop                                           ; $6d48: $00
    jp nz, $fac5                                  ; $6d49: $c2 $c5 $fa

    rst $28                                       ; $6d4c: $ef
    cp [hl]                                       ; $6d4d: $be
    add $43                                       ; $6d4e: $c6 $43
    ldh a, [$a4]                                  ; $6d50: $f0 $a4
    add e                                         ; $6d52: $83
    rlca                                          ; $6d53: $07
    and e                                         ; $6d54: $a3
    pop bc                                        ; $6d55: $c1
    or $7e                                        ; $6d56: $f6 $7e
    jp nz, $d800                                  ; $6d58: $c2 $00 $d8

    db $e4                                        ; $6d5b: $e4
    add b                                         ; $6d5c: $80
    ld l, l                                       ; $6d5d: $6d
    add hl, sp                                    ; $6d5e: $39
    ld h, d                                       ; $6d5f: $62
    ld d, e                                       ; $6d60: $53
    ld h, b                                       ; $6d61: $60
    add b                                         ; $6d62: $80
    ld hl, sp+$78                                 ; $6d63: $f8 $78
    add b                                         ; $6d65: $80
    ret nz                                        ; $6d66: $c0

    db $e4                                        ; $6d67: $e4
    scf                                           ; $6d68: $37
    sub b                                         ; $6d69: $90
    add b                                         ; $6d6a: $80
    jp nz, $c065                                  ; $6d6b: $c2 $65 $c0

    cp $d6                                        ; $6d6e: $fe $d6
    jp $f13d                                      ; $6d70: $c3 $3d $f1


    nop                                           ; $6d73: $00
    and $c9                                       ; $6d74: $e6 $c9
    jp z, $8779                                   ; $6d76: $ca $79 $87

    ld l, h                                       ; $6d79: $6c
    ld h, c                                       ; $6d7a: $61
    ld l, h                                       ; $6d7b: $6c
    cp [hl]                                       ; $6d7c: $be
    and h                                         ; $6d7d: $a4
    or a                                          ; $6d7e: $b7
    ld c, d                                       ; $6d7f: $4a
    ret                                           ; $6d80: $c9


    ld c, b                                       ; $6d81: $48
    db $db                                        ; $6d82: $db
    ld b, d                                       ; $6d83: $42
    dec bc                                        ; $6d84: $0b
    dec c                                         ; $6d85: $0d
    inc c                                         ; $6d86: $0c
    and l                                         ; $6d87: $a5
    add b                                         ; $6d88: $80
    ei                                            ; $6d89: $fb
    add a                                         ; $6d8a: $87
    pop bc                                        ; $6d8b: $c1
    push hl                                       ; $6d8c: $e5
    dec hl                                        ; $6d8d: $2b
    ld h, b                                       ; $6d8e: $60
    ld b, b                                       ; $6d8f: $40
    rst $00                                       ; $6d90: $c7
    add b                                         ; $6d91: $80
    call nc, Call_048_6016                        ; $6d92: $d4 $16 $60
    adc d                                         ; $6d95: $8a
    db $ec                                        ; $6d96: $ec
    ld c, e                                       ; $6d97: $4b
    inc b                                         ; $6d98: $04
    cp e                                          ; $6d99: $bb
    add e                                         ; $6d9a: $83
    ld a, d                                       ; $6d9b: $7a
    ld h, c                                       ; $6d9c: $61
    ld l, l                                       ; $6d9d: $6d
    ld a, [de]                                    ; $6d9e: $1a
    and l                                         ; $6d9f: $a5
    nop                                           ; $6da0: $00
    or d                                          ; $6da1: $b2
    inc de                                        ; $6da2: $13
    ld b, c                                       ; $6da3: $41
    sub e                                         ; $6da4: $93
    ld b, b                                       ; $6da5: $40
    ld a, a                                       ; $6da6: $7f
    db $eb                                        ; $6da7: $eb
    ld bc, $3b2c                                  ; $6da8: $01 $2c $3b
    and b                                         ; $6dab: $a0
    ld a, d                                       ; $6dac: $7a
    add d                                         ; $6dad: $82
    ld b, b                                       ; $6dae: $40
    and b                                         ; $6daf: $a0
    ld a, l                                       ; $6db0: $7d
    ld h, d                                       ; $6db1: $62
    sbc a                                         ; $6db2: $9f
    ld h, d                                       ; $6db3: $62
    nop                                           ; $6db4: $00
    xor a                                         ; $6db5: $af
    ld b, l                                       ; $6db6: $45
    ld h, h                                       ; $6db7: $64
    inc b                                         ; $6db8: $04
    ld a, [hl]                                    ; $6db9: $7e
    adc $c0                                       ; $6dba: $ce $c0
    pop hl                                        ; $6dbc: $e1
    dec bc                                        ; $6dbd: $0b
    nop                                           ; $6dbe: $00
    xor e                                         ; $6dbf: $ab
    jp c, Jump_000_0ce1                           ; $6dc0: $da $e1 $0c

    ld d, b                                       ; $6dc3: $50
    ret                                           ; $6dc4: $c9


    inc h                                         ; $6dc5: $24
    dec b                                         ; $6dc6: $05
    ld h, b                                       ; $6dc7: $60
    ld e, $fe                                     ; $6dc8: $1e $fe
    ret                                           ; $6dca: $c9


    inc l                                         ; $6dcb: $2c
    inc l                                         ; $6dcc: $2c
    ld c, e                                       ; $6dcd: $4b
    ld l, e                                       ; $6dce: $6b
    nop                                           ; $6dcf: $00
    and a                                         ; $6dd0: $a7
    cp c                                          ; $6dd1: $b9
    inc hl                                        ; $6dd2: $23
    or $2c                                        ; $6dd3: $f6 $2c
    nop                                           ; $6dd5: $00
    dec a                                         ; $6dd6: $3d
    dec h                                         ; $6dd7: $25
    nop                                           ; $6dd8: $00
    add [hl]                                      ; $6dd9: $86
    ld a, l                                       ; $6dda: $7d
    jp z, $85fe                                   ; $6ddb: $ca $fe $85

    inc a                                         ; $6dde: $3c
    ld h, e                                       ; $6ddf: $63
    sbc [hl]                                      ; $6de0: $9e
    ld b, d                                       ; $6de1: $42
    rst $10                                       ; $6de2: $d7
    dec h                                         ; $6de3: $25
    add b                                         ; $6de4: $80
    call z, Call_048_7c00                         ; $6de5: $cc $00 $7c
    and e                                         ; $6de8: $a3
    reti                                          ; $6de9: $d9


    ld hl, $6088                                  ; $6dea: $21 $88 $60
    add h                                         ; $6ded: $84
    ld h, b                                       ; $6dee: $60
    add c                                         ; $6def: $81
    ld h, c                                       ; $6df0: $61
    halt                                          ; $6df1: $76
    jp hl                                         ; $6df2: $e9


    ld l, l                                       ; $6df3: $6d
    inc hl                                        ; $6df4: $23
    ld a, h                                       ; $6df5: $7c
    pop hl                                        ; $6df6: $e1
    ld [$b2bd], sp                                ; $6df7: $08 $bd $b2
    rst $00                                       ; $6dfa: $c7

Call_048_6dfb:
    inc h                                         ; $6dfb: $24
    reti                                          ; $6dfc: $d9


    nop                                           ; $6dfd: $00
    ld c, e                                       ; $6dfe: $4b
    cp [hl]                                       ; $6dff: $be
    ldh [rHDMA2], a                               ; $6e00: $e0 $52
    pop bc                                        ; $6e02: $c1
    and h                                         ; $6e03: $a4
    nop                                           ; $6e04: $00
    call nz, Call_000_0a41                        ; $6e05: $c4 $41 $0a
    cp b                                          ; $6e08: $b8
    ld [c], a                                     ; $6e09: $e2
    ld c, h                                       ; $6e0a: $4c
    cp e                                          ; $6e0b: $bb
    ld b, d                                       ; $6e0c: $42
    dec c                                         ; $6e0d: $0d
    ld [hl], h                                    ; $6e0e: $74
    ld hl, $c19a                                  ; $6e0f: $21 $9a $c1
    push bc                                       ; $6e12: $c5
    ld b, $73                                     ; $6e13: $06 $73
    inc l                                         ; $6e15: $2c
    ld c, $0a                                     ; $6e16: $0e $0a
    jr nz, @+$4d                                  ; $6e18: $20 $4b

    dec bc                                        ; $6e1a: $0b
    dec bc                                        ; $6e1b: $0b
    cp a                                          ; $6e1c: $bf
    ldh [$c1], a                                  ; $6e1d: $e0 $c1
    inc b                                         ; $6e1f: $04
    rst $38                                       ; $6e20: $ff
    ld b, b                                       ; $6e21: $40
    rlca                                          ; $6e22: $07
    jp nz, $eae0                                  ; $6e23: $c2 $e0 $ea

    and c                                         ; $6e26: $a1
    ld hl, sp+$22                                 ; $6e27: $f8 $22
    ld [hl], h                                    ; $6e29: $74
    ld [hl+], a                                   ; $6e2a: $22
    and c                                         ; $6e2b: $a1
    rlca                                          ; $6e2c: $07
    add d                                         ; $6e2d: $82
    db $10                                        ; $6e2e: $10
    dec l                                         ; $6e2f: $2d
    dec bc                                        ; $6e30: $0b
    ld c, e                                       ; $6e31: $4b
    ld [hl+], a                                   ; $6e32: $22
    cp l                                          ; $6e33: $bd
    ldh [$0b], a                                  ; $6e34: $e0 $0b
    ld sp, hl                                     ; $6e36: $f9
    ret nz                                        ; $6e37: $c0

    halt                                          ; $6e38: $76
    pop hl                                        ; $6e39: $e1
    add c                                         ; $6e3a: $81
    ld [hl+], a                                   ; $6e3b: $22
    dec hl                                        ; $6e3c: $2b
    db $ec                                        ; $6e3d: $ec
    call nz, $22b6                                ; $6e3e: $c4 $b6 $22
    nop                                           ; $6e41: $00
    or l                                          ; $6e42: $b5
    inc hl                                        ; $6e43: $23
    dec de                                        ; $6e44: $1b
    ld [hl+], a                                   ; $6e45: $22
    cp l                                          ; $6e46: $bd
    or h                                          ; $6e47: $b4
    jp nz, $bee1                                  ; $6e48: $c2 $e1 $be

    db $e3                                        ; $6e4b: $e3
    or h                                          ; $6e4c: $b4
    ld b, b                                       ; $6e4d: $40
    ld c, c                                       ; $6e4e: $49
    and b                                         ; $6e4f: $a0
    ld hl, sp+$41                                 ; $6e50: $f8 $41
    ret nz                                        ; $6e52: $c0

    ld l, c                                       ; $6e53: $69
    and e                                         ; $6e54: $a3
    cp h                                          ; $6e55: $bc
    pop hl                                        ; $6e56: $e1
    cp b                                          ; $6e57: $b8
    ld b, h                                       ; $6e58: $44
    ld l, $07                                     ; $6e59: $2e $07
    xor d                                         ; $6e5b: $aa
    dec b                                         ; $6e5c: $05
    and [hl]                                      ; $6e5d: $a6
    push bc                                       ; $6e5e: $c5
    ld c, l                                       ; $6e5f: $4d
    dec l                                         ; $6e60: $2d
    dec l                                         ; $6e61: $2d
    ld c, e                                       ; $6e62: $4b
    rst $38                                       ; $6e63: $ff
    ldh [$0b], a                                  ; $6e64: $e0 $0b
    ld c, e                                       ; $6e66: $4b
    ld [hl], a                                    ; $6e67: $77
    ret nz                                        ; $6e68: $c0

    ld c, e                                       ; $6e69: $4b
    rst $30                                       ; $6e6a: $f7
    jp nz, $41f8                                  ; $6e6b: $c2 $f8 $41

    nop                                           ; $6e6e: $00
    halt                                          ; $6e6f: $76
    pop hl                                        ; $6e70: $e1
    ld a, [hl-]                                   ; $6e71: $3a
    adc c                                         ; $6e72: $89
    ld d, d                                       ; $6e73: $52
    ld b, e                                       ; $6e74: $43
    add b                                         ; $6e75: $80
    ld c, $77                                     ; $6e76: $0e $77
    and e                                         ; $6e78: $a3
    ld d, c                                       ; $6e79: $51
    nop                                           ; $6e7a: $00
    ei                                            ; $6e7b: $fb
    ret nz                                        ; $6e7c: $c0

    add b                                         ; $6e7d: $80
    pop hl                                        ; $6e7e: $e1
    db $10                                        ; $6e7f: $10
    ld a, [hl-]                                   ; $6e80: $3a
    pop hl                                        ; $6e81: $e1
    cp c                                          ; $6e82: $b9
    ld b, c                                       ; $6e83: $41
    ret nz                                        ; $6e84: $c0

    push hl                                       ; $6e85: $e5
    or d                                          ; $6e86: $b2
    ld bc, $fa0b                                  ; $6e87: $01 $0b $fa
    ld h, c                                       ; $6e8a: $61
    ld a, [$fe2f]                                 ; $6e8b: $fa $2f $fe
    ld h, d                                       ; $6e8e: $62
    jr jr_048_6f0d                                ; $6e8f: $18 $7c

    ld [hl+], a                                   ; $6e91: $22
    sbc [hl]                                      ; $6e92: $9e
    add c                                         ; $6e93: $81
    ret nz                                        ; $6e94: $c0

    db $e3                                        ; $6e95: $e3
    ld c, e                                       ; $6e96: $4b
    dec hl                                        ; $6e97: $2b
    ld a, c                                       ; $6e98: $79
    ldh [$3a], a                                  ; $6e99: $e0 $3a
    ld b, c                                       ; $6e9b: $41
    pop af                                        ; $6e9c: $f1
    ret nz                                        ; $6e9d: $c0

    jr jr_048_6f1a                                ; $6e9e: $18 $7a

    adc h                                         ; $6ea0: $8c
    add b                                         ; $6ea1: $80
    pop de                                        ; $6ea2: $d1
    db $fc                                        ; $6ea3: $fc
    dec h                                         ; $6ea4: $25
    dec c                                         ; $6ea5: $0d
    ld l, e                                       ; $6ea6: $6b
    ld [bc], a                                    ; $6ea7: $02
    db $e3                                        ; $6ea8: $e3
    ld a, $42                                     ; $6ea9: $3e $42
    or h                                          ; $6eab: $b4
    pop bc                                        ; $6eac: $c1
    rrca                                          ; $6ead: $0f
    ld l, e                                       ; $6eae: $6b
    ld a, [bc]                                    ; $6eaf: $0a
    ld a, [bc]                                    ; $6eb0: $0a
    dec c                                         ; $6eb1: $0d
    ld [hl], l                                    ; $6eb2: $75
    ld [hl+], a                                   ; $6eb3: $22
    ld a, d                                       ; $6eb4: $7a
    add [hl]                                      ; $6eb5: $86
    ld d, h                                       ; $6eb6: $54
    ld b, d                                       ; $6eb7: $42
    ld [hl], l                                    ; $6eb8: $75
    dec l                                         ; $6eb9: $2d
    ld b, $2a                                     ; $6eba: $06 $2a
    db $e4                                        ; $6ebc: $e4
    dec c                                         ; $6ebd: $0d
    ld l, l                                       ; $6ebe: $6d
    dec a                                         ; $6ebf: $3d
    ret nz                                        ; $6ec0: $c0

    ei                                            ; $6ec1: $fb
    and b                                         ; $6ec2: $a0
    add d                                         ; $6ec3: $82
    ldh [rLYC], a                                 ; $6ec4: $e0 $45
    ld [c], a                                     ; $6ec6: $e2
    ei                                            ; $6ec7: $fb
    jr nz, @+$06                                  ; $6ec8: $20 $04

    ret nz                                        ; $6eca: $c0

    ldh [$f7], a                                  ; $6ecb: $e0 $f7
    ld b, $6d                                     ; $6ecd: $06 $6d
    ld d, $82                                     ; $6ecf: $16 $82
    or a                                          ; $6ed1: $b7
    ld d, c                                       ; $6ed2: $51
    ld a, e                                       ; $6ed3: $7b
    ld h, h                                       ; $6ed4: $64
    pop bc                                        ; $6ed5: $c1
    pop hl                                        ; $6ed6: $e1
    ld a, $c1                                     ; $6ed7: $3e $c1
    ld a, h                                       ; $6ed9: $7c
    ret nz                                        ; $6eda: $c0

    ld hl, $0046                                  ; $6edb: $21 $46 $00
    ld a, [bc]                                    ; $6ede: $0a
    dec bc                                        ; $6edf: $0b
    ld a, [bc]                                    ; $6ee0: $0a
    ld a, [bc]                                    ; $6ee1: $0a
    ld l, e                                       ; $6ee2: $6b
    ret nz                                        ; $6ee3: $c0

    push bc                                       ; $6ee4: $c5
    jr nz, jr_048_6f61                            ; $6ee5: $20 $7a

    ld hl, $819a                                  ; $6ee7: $21 $9a $81
    ld b, b                                       ; $6eea: $40
    ret z                                         ; $6eeb: $c8

    add b                                         ; $6eec: $80
    ld l, b                                       ; $6eed: $68
    pop hl                                        ; $6eee: $e1
    ld [bc], a                                    ; $6eef: $02

jr_048_6ef0:
    ld l, l                                       ; $6ef0: $6d
    add d                                         ; $6ef1: $82
    pop bc                                        ; $6ef2: $c1
    ret nz                                        ; $6ef3: $c0

    rst $20                                       ; $6ef4: $e7
    ld b, $c2                                     ; $6ef5: $06 $c2
    ldh [$2a], a                                  ; $6ef7: $e0 $2a
    ld a, [hl+]                                   ; $6ef9: $2a
    inc b                                         ; $6efa: $04
    jr nz, @+$3e                                  ; $6efb: $20 $3c

    ld l, c                                       ; $6efd: $69
    ld a, a                                       ; $6efe: $7f
    and b                                         ; $6eff: $a0
    add b                                         ; $6f00: $80
    adc $80                                       ; $6f01: $ce $80
    ld h, e                                       ; $6f03: $63
    ld b, b                                       ; $6f04: $40
    pop bc                                        ; $6f05: $c1
    pop hl                                        ; $6f06: $e1
    add d                                         ; $6f07: $82
    pop bc                                        ; $6f08: $c1
    add c                                         ; $6f09: $81
    pop hl                                        ; $6f0a: $e1
    ld [bc], a                                    ; $6f0b: $02
    push hl                                       ; $6f0c: $e5

jr_048_6f0d:
    push bc                                       ; $6f0d: $c5
    ld bc, $042f                                  ; $6f0e: $01 $2f $04
    ld l, h                                       ; $6f11: $6c
    add d                                         ; $6f12: $82
    pop bc                                        ; $6f13: $c1
    jr z, @-$6a                                   ; $6f14: $28 $94

    dec b                                         ; $6f16: $05
    add b                                         ; $6f17: $80
    rst $08                                       ; $6f18: $cf
    ld h, d                                       ; $6f19: $62

jr_048_6f1a:
    ld h, c                                       ; $6f1a: $61
    ld l, e                                       ; $6f1b: $6b
    ld c, b                                       ; $6f1c: $48
    jp nz, Jump_000_034b                          ; $6f1d: $c2 $4b $03

    db $e4                                        ; $6f20: $e4
    cp b                                          ; $6f21: $b8
    and l                                         ; $6f22: $a5
    nop                                           ; $6f23: $00
    inc l                                         ; $6f24: $2c
    inc b                                         ; $6f25: $04
    cp d                                          ; $6f26: $ba
    ld [$d080], sp                                ; $6f27: $08 $80 $d0
    ld a, [hl]                                    ; $6f2a: $7e
    ld [hl+], a                                   ; $6f2b: $22
    ld a, [bc]                                    ; $6f2c: $0a
    jr nz, jr_048_6ef0                            ; $6f2d: $20 $c1

    ld [$c03d], a                                 ; $6f2f: $ea $3d $c0
    or l                                          ; $6f32: $b5
    and b                                         ; $6f33: $a0
    nop                                           ; $6f34: $00
    inc a                                         ; $6f35: $3c
    ld b, a                                       ; $6f36: $47
    ld bc, $fba0                                  ; $6f37: $01 $a0 $fb
    ld h, $80                                     ; $6f3a: $26 $80
    call $e380                                    ; $6f3c: $cd $80 $e3
    inc bc                                        ; $6f3f: $03
    and $81                                       ; $6f40: $e6 $81
    jp $a172                                      ; $6f42: $c3 $72 $a1


    nop                                           ; $6f45: $00
    ld l, d                                       ; $6f46: $6a
    ld b, b                                       ; $6f47: $40
    cp d                                          ; $6f48: $ba
    rlca                                          ; $6f49: $07
    scf                                           ; $6f4a: $37
    add d                                         ; $6f4b: $82
    ld c, h                                       ; $6f4c: $4c
    dec b                                         ; $6f4d: $05
    cp l                                          ; $6f4e: $bd
    xor d                                         ; $6f4f: $aa
    add hl, sp                                    ; $6f50: $39
    ld h, c                                       ; $6f51: $61
    ld b, b                                       ; $6f52: $40
    db $e3                                        ; $6f53: $e3
    inc bc                                        ; $6f54: $03
    and $00                                       ; $6f55: $e6 $00
    ld [hl], $c2                                  ; $6f57: $36 $c2
    add b                                         ; $6f59: $80
    rst $20                                       ; $6f5a: $e7
    cp d                                          ; $6f5b: $ba
    ld h, e                                       ; $6f5c: $63
    ld d, l                                       ; $6f5d: $55
    ld h, e                                       ; $6f5e: $63
    dec a                                         ; $6f5f: $3d
    adc l                                         ; $6f60: $8d

jr_048_6f61:
    cp [hl]                                       ; $6f61: $be
    ld b, e                                       ; $6f62: $43
    ld d, l                                       ; $6f63: $55
    ret nz                                        ; $6f64: $c0

    add $a8                                       ; $6f65: $c6 $a8
    nop                                           ; $6f67: $00
    inc b                                         ; $6f68: $04
    ret nz                                        ; $6f69: $c0

    ret nz                                        ; $6f6a: $c0

    jp hl                                         ; $6f6b: $e9


    dec a                                         ; $6f6c: $3d
    add c                                         ; $6f6d: $81
    cp $c5                                        ; $6f6e: $fe $c5
    nop                                           ; $6f70: $00
    xor [hl]                                      ; $6f71: $ae
    ld a, l                                       ; $6f72: $7d
    inc hl                                        ; $6f73: $23
    ld b, b                                       ; $6f74: $40
    db $e3                                        ; $6f75: $e3
    add [hl]                                      ; $6f76: $86
    and l                                         ; $6f77: $a5
    ld [bc], a                                    ; $6f78: $02
    or a                                          ; $6f79: $b7
    add c                                         ; $6f7a: $81
    ld c, e                                       ; $6f7b: $4b
    ld b, d                                       ; $6f7c: $42
    push bc                                       ; $6f7d: $c5
    cp d                                          ; $6f7e: $ba
    ld d, $7d                                     ; $6f7f: $16 $7d
    ld b, h                                       ; $6f81: $44
    or c                                          ; $6f82: $b1
    ld h, c                                       ; $6f83: $61
    add h                                         ; $6f84: $84
    and b                                         ; $6f85: $a0
    ld c, [hl]                                    ; $6f86: $4e
    and d                                         ; $6f87: $a2
    nop                                           ; $6f88: $00
    ld sp, hl                                     ; $6f89: $f9
    call nz, Call_048_60b2                        ; $6f8a: $c4 $b2 $60
    db $ed                                        ; $6f8d: $ed
    jr nz, @+$2e                                  ; $6f8e: $20 $2c

    rlca                                          ; $6f90: $07
    ret nz                                        ; $6f91: $c0

    add e                                         ; $6f92: $83
    rst $38                                       ; $6f93: $ff
    jp Jump_048_4b00                              ; $6f94: $c3 $00 $4b


    ld b, l                                       ; $6f97: $45
    and [hl]                                      ; $6f98: $a6
    ld a, [bc]                                    ; $6f99: $0a
    adc $c2                                       ; $6f9a: $ce $c2
    dec bc                                        ; $6f9c: $0b
    cp c                                          ; $6f9d: $b9
    jp nz, $426b                                  ; $6f9e: $c2 $6b $42

    ldh [rTIMA], a                                ; $6fa1: $e0 $05
    push bc                                       ; $6fa3: $c5
    cp d                                          ; $6fa4: $ba
    rlca                                          ; $6fa5: $07
    cp c                                          ; $6fa6: $b9
    ld b, d                                       ; $6fa7: $42
    add b                                         ; $6fa8: $80
    add b                                         ; $6fa9: $80
    ld l, e                                       ; $6faa: $6b
    ret nz                                        ; $6fab: $c0

    ld b, $11                                     ; $6fac: $06 $11
    ldh [$83], a                                  ; $6fae: $e0 $83
    and e                                         ; $6fb0: $a3
    ld [$c2e0], sp                                ; $6fb1: $08 $e0 $c2
    pop hl                                        ; $6fb4: $e1
    add $a0                                       ; $6fb5: $c6 $a0
    dec l                                         ; $6fb7: $2d
    inc c                                         ; $6fb8: $0c
    xor $0a                                       ; $6fb9: $ee $0a
    ld a, $a0                                     ; $6fbb: $3e $a0
    ld c, e                                       ; $6fbd: $4b
    ld l, l                                       ; $6fbe: $6d
    push de                                       ; $6fbf: $d5
    ld h, h                                       ; $6fc0: $64
    add b                                         ; $6fc1: $80
    db $10                                        ; $6fc2: $10
    jp nz, $c7a3                                  ; $6fc3: $c2 $a3 $c7

    call nz, $c10c                                ; $6fc6: $c4 $0c $c1
    db $e4                                        ; $6fc9: $e4
    cpl                                           ; $6fca: $2f
    dec hl                                        ; $6fcb: $2b
    dec c                                         ; $6fcc: $0d
    dec bc                                        ; $6fcd: $0b
    cp a                                          ; $6fce: $bf
    ret                                           ; $6fcf: $c9


    nop                                           ; $6fd0: $00
    xor h                                         ; $6fd1: $ac
    add d                                         ; $6fd2: $82
    and e                                         ; $6fd3: $a3
    nop                                           ; $6fd4: $00
    ld h, c                                       ; $6fd5: $61
    ld h, b                                       ; $6fd6: $60
    add hl, bc                                    ; $6fd7: $09
    jp nz, $efc1                                  ; $6fd8: $c2 $c1 $ef

    add b                                         ; $6fdb: $80
    db $e3                                        ; $6fdc: $e3
    ld a, [$8006]                                 ; $6fdd: $fa $06 $80
    dec c                                         ; $6fe0: $0d
    ld c, l                                       ; $6fe1: $4d
    ld l, e                                       ; $6fe2: $6b
    rlca                                          ; $6fe3: $07
    rst $00                                       ; $6fe4: $c7
    ld b, b                                       ; $6fe5: $40
    nop                                           ; $6fe6: $00
    ld h, e                                       ; $6fe7: $63
    inc [hl]                                      ; $6fe8: $34
    dec c                                         ; $6fe9: $0d
    ld a, [hl]                                    ; $6fea: $7e
    add b                                         ; $6feb: $80
    cp b                                          ; $6fec: $b8
    ld [bc], a                                    ; $6fed: $02
    jp $bdaf                                      ; $6fee: $c3 $af $bd


    ld h, b                                       ; $6ff1: $60
    dec l                                         ; $6ff2: $2d
    ret nz                                        ; $6ff3: $c0

    ldh [rP1], a                                  ; $6ff4: $e0 $00
    ld c, c                                       ; $6ff6: $49
    and a                                         ; $6ff7: $a7

jr_048_6ff8:
    add b                                         ; $6ff8: $80
    ld b, e                                       ; $6ff9: $43
    add b                                         ; $6ffa: $80
    xor $80                                       ; $6ffb: $ee $80
    jp nz, Jump_000_053a                          ; $6ffd: $c2 $3a $05

    ld b, $a5                                     ; $7000: $06 $a5
    or c                                          ; $7002: $b1
    ld h, e                                       ; $7003: $63
    ret nz                                        ; $7004: $c0

    jp hl                                         ; $7005: $e9


    nop                                           ; $7006: $00
    ld a, d                                       ; $7007: $7a
    add d                                         ; $7008: $82
    add b                                         ; $7009: $80
    xor $40                                       ; $700a: $ee $40
    ld h, c                                       ; $700c: $61
    ld b, b                                       ; $700d: $40
    ld b, d                                       ; $700e: $42
    add b                                         ; $700f: $80
    jp nc, $e380                                  ; $7010: $d2 $80 $e3

    jp Jump_000_3c40                              ; $7013: $c3 $40 $3c


jr_048_7016:
    ld b, b                                       ; $7016: $40
    ld b, b                                       ; $7017: $40
    ld [bc], a                                    ; $7018: $02
    ld h, b                                       ; $7019: $60
    ld [$f8a1], sp                                ; $701a: $08 $a1 $f8
    inc c                                         ; $701d: $0c
    add b                                         ; $701e: $80
    and l                                         ; $701f: $a5
    nop                                           ; $7020: $00
    xor h                                         ; $7021: $ac
    ret nz                                        ; $7022: $c0

    push hl                                       ; $7023: $e5
    dec c                                         ; $7024: $0d
    ld b, b                                       ; $7025: $40
    and $24                                       ; $7026: $e6 $24
    ld [$c883], sp                                ; $7028: $08 $83 $c8
    add e                                         ; $702b: $83
    ld l, h                                       ; $702c: $6c
    db $f4                                        ; $702d: $f4
    ld b, $c1                                     ; $702e: $06 $c1
    ld b, b                                       ; $7030: $40
    dec bc                                        ; $7031: $0b
    ccf                                           ; $7032: $3f
    ld h, b                                       ; $7033: $60
    nop                                           ; $7034: $00
    ld d, c                                       ; $7035: $51
    ld [bc], a                                    ; $7036: $02
    inc h                                         ; $7037: $24
    inc bc                                        ; $7038: $03
    dec l                                         ; $7039: $2d
    nop                                           ; $703a: $00
    ld [$0334], a                                 ; $703b: $ea $34 $03
    ld a, $23                                     ; $703e: $3e $23
    inc [hl]                                      ; $7040: $34
    dec h                                         ; $7041: $25
    ccf                                           ; $7042: $3f
    ld h, c                                       ; $7043: $61
    sub c                                         ; $7044: $91
    and l                                         ; $7045: $a5
    inc c                                         ; $7046: $0c
    nop                                           ; $7047: $00
    xor [hl]                                      ; $7048: $ae
    and b                                         ; $7049: $a0
    nop                                           ; $704a: $00
    ld c, e                                       ; $704b: $4b
    ld l, e                                       ; $704c: $6b
    ld b, e                                       ; $704d: $43
    and c                                         ; $704e: $a1
    add [hl]                                      ; $704f: $86
    and b                                         ; $7050: $a0
    jp z, Jump_048_7422                           ; $7051: $ca $22 $74

    ld [bc], a                                    ; $7054: $02
    ret nz                                        ; $7055: $c0

    push af                                       ; $7056: $f5
    jp Jump_000_0069                              ; $7057: $c3 $69 $00


    pop bc                                        ; $705a: $c1
    pop hl                                        ; $705b: $e1
    ret nz                                        ; $705c: $c0

jr_048_705d:
    db $e4                                        ; $705d: $e4
    nop                                           ; $705e: $00
    or b                                          ; $705f: $b0
    pop bc                                        ; $7060: $c1
    ld h, d                                       ; $7061: $62
    ld c, l                                       ; $7062: $4d
    dec l                                         ; $7063: $2d
    ld bc, $ff6b                                  ; $7064: $01 $6b $ff
    ld [c], a                                     ; $7067: $e2
    cp c                                          ; $7068: $b9
    nop                                           ; $7069: $00
    jp nc, $fa00                                  ; $706a: $d2 $00 $fa

    ld [bc], a                                    ; $706d: $02
    ld [hl], l                                    ; $706e: $75
    inc bc                                        ; $706f: $03
    add hl, bc                                    ; $7070: $09
    add c                                         ; $7071: $81
    xor b                                         ; $7072: $a8
    ld [hl+], a                                   ; $7073: $22
    jr nz, jr_048_6ff8                            ; $7074: $20 $82

    and c                                         ; $7076: $a1
    ld b, b                                       ; $7077: $40
    ld b, $00                                     ; $7078: $06 $00
    ld c, e                                       ; $707a: $4b
    halt                                          ; $707b: $76
    jp nz, $0683                                  ; $707c: $c2 $83 $06

    ld l, l                                       ; $707f: $6d
    ld e, b                                       ; $7080: $58
    ld bc, $c2b6                                  ; $7081: $01 $b6 $c2
    nop                                           ; $7084: $00
    or $e0                                        ; $7085: $f6 $e0
    ld h, b                                       ; $7087: $60
    jp Jump_000_01a8                              ; $7088: $c3 $a8 $01


    ld b, d                                       ; $708b: $42
    and d                                         ; $708c: $a2
    ld c, d                                       ; $708d: $4a
    rlca                                          ; $708e: $07
    ld a, l                                       ; $708f: $7d
    add hl, hl                                    ; $7090: $29
    jr z, jr_048_7016                             ; $7091: $28 $83

    ld a, d                                       ; $7093: $7a
    ld hl, $b600                                  ; $7094: $21 $00 $b6
    ld h, c                                       ; $7097: $61
    jr z, jr_048_705d                             ; $7098: $28 $c3

    jp nz, $cee3                                  ; $709a: $c2 $e3 $ce

    inc hl                                        ; $709d: $23
    inc e                                         ; $709e: $1c
    pop bc                                        ; $709f: $c1
    xor d                                         ; $70a0: $aa
    ldh [rWY], a                                  ; $70a1: $e0 $4a
    rrca                                          ; $70a3: $0f
    ld b, b                                       ; $70a4: $40
    ld h, [hl]                                    ; $70a5: $66
    nop                                           ; $70a6: $00
    xor b                                         ; $70a7: $a8
    ld h, h                                       ; $70a8: $64
    pop hl                                        ; $70a9: $e1
    inc h                                         ; $70aa: $24
    db $fc                                        ; $70ab: $fc
    xor $b6                                       ; $70ac: $ee $b6
    db $e3                                        ; $70ae: $e3
    inc bc                                        ; $70af: $03
    dec hl                                        ; $70b0: $2b
    ld b, e                                       ; $70b1: $43
    inc hl                                        ; $70b2: $23
    ld c, b                                       ; $70b3: $48
    push hl                                       ; $70b4: $e5
    ret nz                                        ; $70b5: $c0

    ei                                            ; $70b6: $fb
    ld [$c307], sp                                ; $70b7: $08 $07 $c3
    ld d, l                                       ; $70ba: $55
    ld h, e                                       ; $70bb: $63
    ld bc, $0d61                                  ; $70bc: $01 $61 $0d
    nop                                           ; $70bf: $00
    nop                                           ; $70c0: $00
    nop                                           ; $70c1: $00
    cp a                                          ; $70c2: $bf
    and b                                         ; $70c3: $a0
    and b                                         ; $70c4: $a0
    and b                                         ; $70c5: $a0
    call c, $dedd                                 ; $70c6: $dc $dd $de
    ld a, [$d8eb]                                 ; $70c9: $fa $eb $d8
    ld l, a                                       ; $70cc: $6f
    reti                                          ; $70cd: $d9


    and b                                         ; $70ce: $a0
    jp nc, $e7d3                                  ; $70cf: $d2 $d3 $e7

    ldh [$d4], a                                  ; $70d2: $e0 $d4
    push de                                       ; $70d4: $d5
    ld [c], a                                     ; $70d5: $e2
    ldh [$e6], a                                  ; $70d6: $e0 $e6
    ld a, [$d0e3]                                 ; $70d8: $fa $e3 $d0
    pop de                                        ; $70db: $d1
    push af                                       ; $70dc: $f5
    pop hl                                        ; $70dd: $e1
    sub $ee                                       ; $70de: $d6 $ee
    and b                                         ; $70e0: $a0
    call c, $dfe4                                 ; $70e1: $dc $e4 $df
    rst $18                                       ; $70e4: $df
    ldh [$e1], a                                  ; $70e5: $e0 $e1
    ld [c], a                                     ; $70e7: $e2
    db $e3                                        ; $70e8: $e3
    ld a, [$a0ea]                                 ; $70e9: $fa $ea $a0
    jp c, $dbc1                                   ; $70ec: $da $c1 $db

    push bc                                       ; $70ef: $c5
    db $e4                                        ; $70f0: $e4
    db $fc                                        ; $70f1: $fc
    rst $20                                       ; $70f2: $e7
    or b                                          ; $70f3: $b0
    pop hl                                        ; $70f4: $e1
    sub $ef                                       ; $70f5: $d6 $ef
    call nz, $eae0                                ; $70f7: $c4 $e0 $ea
    push hl                                       ; $70fa: $e5
    rst $08                                       ; $70fb: $cf
    and $e7                                       ; $70fc: $e6 $e7
    add sp, -$17                                  ; $70fe: $e8 $e9
    ld a, [$c6ea]                                 ; $7100: $fa $ea $c6
    db $e3                                        ; $7103: $e3
    sbc a                                         ; $7104: $9f
    and d                                         ; $7105: $a2
    dec c                                         ; $7106: $0d
    sbc l                                         ; $7107: $9d
    rst $38                                       ; $7108: $ff
    push hl                                       ; $7109: $e5
    and d                                         ; $710a: $a2
    sbc a                                         ; $710b: $9f
    ld [hl], l                                    ; $710c: $75
    ld [c], a                                     ; $710d: $e2
    sub $ef                                       ; $710e: $d6 $ef
    call nz, Call_048_43e0                        ; $7110: $c4 $e0 $43
    jp hl                                         ; $7113: $e9


    ld [hl], e                                    ; $7114: $73
    sub $d7                                       ; $7115: $d6 $d7
    adc e                                         ; $7117: $8b
    db $e3                                        ; $7118: $e3
    ld d, e                                       ; $7119: $53
    pop hl                                        ; $711a: $e1
    sbc a                                         ; $711b: $9f
    sbc h                                         ; $711c: $9c
    ld b, [hl]                                    ; $711d: $46
    rst $38                                       ; $711e: $ff
    rst $20                                       ; $711f: $e7
    add e                                         ; $7120: $83
    sbc h                                         ; $7121: $9c
    sbc a                                         ; $7122: $9f
    ld [hl], d                                    ; $7123: $72
    and $13                                       ; $7124: $e6 $13
    db $ed                                        ; $7126: $ed
    ld c, c                                       ; $7127: $49
    add sp, $08                                   ; $7128: $e8 $08
    pop hl                                        ; $712a: $e1
    ld d, e                                       ; $712b: $53
    push hl                                       ; $712c: $e5
    sbc a                                         ; $712d: $9f
    ld l, a                                       ; $712e: $6f
    sbc h                                         ; $712f: $9c
    add e                                         ; $7130: $83
    adc c                                         ; $7131: $89
    adc b                                         ; $7132: $88
    rst $38                                       ; $7133: $ff
    push hl                                       ; $7134: $e5
    adc c                                         ; $7135: $89
    add e                                         ; $7136: $83
    cp a                                          ; $7137: $bf
    push hl                                       ; $7138: $e5
    or b                                          ; $7139: $b0
    inc de                                        ; $713a: $13
    rst $28                                       ; $713b: $ef
    ld c, c                                       ; $713c: $49
    jp hl                                         ; $713d: $e9


    ld [$d7e0], sp                                ; $713e: $08 $e0 $d7
    jp nz, $d5d4                                  ; $7141: $c2 $d4 $d5

    pop bc                                        ; $7144: $c1
    ldh [$86], a                                  ; $7145: $e0 $86
    cp a                                          ; $7147: $bf
    add l                                         ; $7148: $85
    ld [bc], a                                    ; $7149: $02
    rlca                                          ; $714a: $07
    rlca                                          ; $714b: $07
    rlca                                          ; $714c: $07
    ld [bc], a                                    ; $714d: $02
    ei                                            ; $714e: $fb
    ldh [rSC], a                                  ; $714f: $e0 $02
    add e                                         ; $7151: $83
    add l                                         ; $7152: $85
    add [hl]                                      ; $7153: $86
    cp a                                          ; $7154: $bf
    ld [c], a                                     ; $7155: $e2
    cp h                                          ; $7156: $bc
    ret nz                                        ; $7157: $c0

    inc de                                        ; $7158: $13
    ld a, [c]                                     ; $7159: $f2
    add b                                         ; $715a: $80
    ret                                           ; $715b: $c9


    add a                                         ; $715c: $87
    jp $ffa0                                      ; $715d: $c3 $a0 $ff


    sbc [hl]                                      ; $7160: $9e
    ld b, [hl]                                    ; $7161: $46
    adc d                                         ; $7162: $8a
    add l                                         ; $7163: $85
    ld [bc], a                                    ; $7164: $02
    rrca                                          ; $7165: $0f
    sbc c                                         ; $7166: $99
    nop                                           ; $7167: $00
    rst $38                                       ; $7168: $ff
    ld bc, $9899                                  ; $7169: $01 $99 $98
    sbc b                                         ; $716c: $98
    sbc b                                         ; $716d: $98
    rrca                                          ; $716e: $0f
    rlca                                          ; $716f: $07
    ld [bc], a                                    ; $7170: $02
    ldh [$bf], a                                  ; $7171: $e0 $bf
    ld [c], a                                     ; $7173: $e2
    push hl                                       ; $7174: $e5
    db $e3                                        ; $7175: $e3
    add b                                         ; $7176: $80
    reti                                          ; $7177: $d9


    cp $c0                                        ; $7178: $fe $c0
    ld c, h                                       ; $717a: $4c
    ret nz                                        ; $717b: $c0

    sbc a                                         ; $717c: $9f
    sbc l                                         ; $717d: $9d
    sbc l                                         ; $717e: $9d
    rst $38                                       ; $717f: $ff
    sbc h                                         ; $7180: $9c
    add e                                         ; $7181: $83
    add h                                         ; $7182: $84
    ld [bc], a                                    ; $7183: $02
    rrca                                          ; $7184: $0f
    sbc b                                         ; $7185: $98
    sbc b                                         ; $7186: $98
    sbc c                                         ; $7187: $99
    ld a, [$e0c1]                                 ; $7188: $fa $c1 $e0
    sub a                                         ; $718b: $97
    cp [hl]                                       ; $718c: $be
    ldh [$08], a                                  ; $718d: $e0 $08
    add l                                         ; $718f: $85
    adc e                                         ; $7190: $8b
    ld b, [hl]                                    ; $7191: $46
    sbc [hl]                                      ; $7192: $9e
    ld b, b                                       ; $7193: $40
    ld sp, $dec1                                  ; $7194: $31 $c1 $de
    ret nz                                        ; $7197: $c0

    add b                                         ; $7198: $80
    reti                                          ; $7199: $d9


    cp $c2                                        ; $719a: $fe $c2
    add $c1                                       ; $719c: $c6 $c1
    ld b, d                                       ; $719e: $42
    ldh [$08], a                                  ; $719f: $e0 $08
    add [hl]                                      ; $71a1: $86
    ldh [$fd], a                                  ; $71a2: $e0 $fd
    sbc b                                         ; $71a4: $98
    ret nz                                        ; $71a5: $c0

    pop hl                                        ; $71a6: $e1
    sub a                                         ; $71a7: $97
    sub a                                         ; $71a8: $97
    sbc b                                         ; $71a9: $98
    rrca                                          ; $71aa: $0f
    ld [bc], a                                    ; $71ab: $02

jr_048_71ac:
    add d                                         ; $71ac: $82
    jr nz, jr_048_71ac                            ; $71ad: $20 $fd

    jp $a0e6                                      ; $71af: $c3 $e6 $a0


    add b                                         ; $71b2: $80
    ret c                                         ; $71b3: $d8

    cp $c2                                        ; $71b4: $fe $c2
    add $c2                                       ; $71b6: $c6 $c2
    add a                                         ; $71b8: $87
    ld b, d                                       ; $71b9: $42
    ldh [$c1], a                                  ; $71ba: $e0 $c1
    pop hl                                        ; $71bc: $e1
    ld bc, $409a                                  ; $71bd: $01 $9a $40
    pop hl                                        ; $71c0: $e1
    ld a, a                                       ; $71c1: $7f
    ld [c], a                                     ; $71c2: $e2
    db $fd                                        ; $71c3: $fd
    jp $c1de                                      ; $71c4: $c3 $de $c1


    or a                                          ; $71c7: $b7
    xor e                                         ; $71c8: $ab
    add b                                         ; $71c9: $80
    ret                                           ; $71ca: $c9


    call $2da2                                    ; $71cb: $cd $a2 $2d
    and c                                         ; $71ce: $a1
    dec b                                         ; $71cf: $05
    pop hl                                        ; $71d0: $e1
    rlca                                          ; $71d1: $07
    rlca                                          ; $71d2: $07
    pop bc                                        ; $71d3: $c1
    pop hl                                        ; $71d4: $e1
    rrca                                          ; $71d5: $0f
    ld sp, hl                                     ; $71d6: $f9
    ld [c], a                                     ; $71d7: $e2
    dec sp                                        ; $71d8: $3b
    pop hl                                        ; $71d9: $e1
    ldh [$fd], a                                  ; $71da: $e0 $fd
    push bc                                       ; $71dc: $c5
    ld a, d                                       ; $71dd: $7a
    rst $08                                       ; $71de: $cf
    ret                                           ; $71df: $c9


    xor b                                         ; $71e0: $a8
    ld bc, $59c0                                  ; $71e1: $01 $c0 $59
    and b                                         ; $71e4: $a0
    sbc [hl]                                      ; $71e5: $9e
    ld b, [hl]                                    ; $71e6: $46
    add c                                         ; $71e7: $81
    rst $28                                       ; $71e8: $ef
    ld [bc], a                                    ; $71e9: $02
    rrca                                          ; $71ea: $0f
    ld bc, $cb00                                  ; $71eb: $01 $00 $cb
    pop hl                                        ; $71ee: $e1
    ld [bc], a                                    ; $71ef: $02
    ld b, l                                       ; $71f0: $45
    ld b, l                                       ; $71f1: $45
    daa                                           ; $71f2: $27
    ld [bc], a                                    ; $71f3: $02
    rlca                                          ; $71f4: $07
    rrca                                          ; $71f5: $0f
    cp e                                          ; $71f6: $bb
    jp $c1fd                                      ; $71f7: $c3 $fd $c1


    and c                                         ; $71fa: $a1
    add hl, sp                                    ; $71fb: $39
    and h                                         ; $71fc: $a4
    add b                                         ; $71fd: $80
    jp nc, Jump_000_09ec                          ; $71fe: $d2 $ec $09

    and l                                         ; $7201: $a5
    ret nz                                        ; $7202: $c0

    ldh [$08], a                                  ; $7203: $e0 $08
    sbc c                                         ; $7205: $99
    adc h                                         ; $7206: $8c
    ld [c], a                                     ; $7207: $e2
    ld [bc], a                                    ; $7208: $02
    ld b, l                                       ; $7209: $45
    ld a, [hl+]                                   ; $720a: $2a
    rst $20                                       ; $720b: $e7
    inc l                                         ; $720c: $2c
    ld sp, $792b                                  ; $720d: $31 $2b $79
    ret nz                                        ; $7210: $c0

jr_048_7211:
    cp e                                          ; $7211: $bb
    pop bc                                        ; $7212: $c1
    rrca                                          ; $7213: $0f
    ld [bc], a                                    ; $7214: $02
    add b                                         ; $7215: $80
    nop                                           ; $7216: $00
    cp l                                          ; $7217: $bd
    ret nz                                        ; $7218: $c0

    jp hl                                         ; $7219: $e9


    add b                                         ; $721a: $80
    sbc e                                         ; $721b: $9b
    and l                                         ; $721c: $a5
    nop                                           ; $721d: $00
    xor e                                         ; $721e: $ab
    add e                                         ; $721f: $83
    and c                                         ; $7220: $a1
    add hl, bc                                    ; $7221: $09
    and e                                         ; $7222: $a3
    ret nz                                        ; $7223: $c0

    pop hl                                        ; $7224: $e1
    inc c                                         ; $7225: $0c
    db $e3                                        ; $7226: $e3
    ld a, a                                       ; $7227: $7f
    ld b, [hl]                                    ; $7228: $46
    inc [hl]                                      ; $7229: $34
    jr nz, @+$22                                  ; $722a: $20 $20

    jr nz, jr_048_7258                            ; $722c: $20 $2a

    ld b, l                                       ; $722e: $45
    or a                                          ; $722f: $b7
    ret nz                                        ; $7230: $c0

    ld b, $bd                                     ; $7231: $06 $bd
    ret nz                                        ; $7233: $c0

    sbc b                                         ; $7234: $98
    ld [$e1c0], sp                                ; $7235: $08 $c0 $e1
    xor [hl]                                      ; $7238: $ae
    add b                                         ; $7239: $80
    and e                                         ; $723a: $a3
    add b                                         ; $723b: $80
    ld a, d                                       ; $723c: $7a
    ret                                           ; $723d: $c9


    inc c                                         ; $723e: $0c
    and [hl]                                      ; $723f: $a6
    db $ec                                        ; $7240: $ec
    add e                                         ; $7241: $83
    and h                                         ; $7242: $a4
    add a                                         ; $7243: $87
    and b                                         ; $7244: $a0
    add h                                         ; $7245: $84
    ld [$c48b], sp                                ; $7246: $08 $8b $c4
    ld b, l                                       ; $7249: $45
    dec hl                                        ; $724a: $2b
    ld sp, $2b73                                  ; $724b: $31 $73 $2b
    ld b, l                                       ; $724e: $45
    jr c, jr_048_7211                             ; $724f: $38 $c0

    ld a, l                                       ; $7251: $7d
    ret nz                                        ; $7252: $c0

    sub a                                         ; $7253: $97
    sbc b                                         ; $7254: $98
    ld [$c47d], sp                                ; $7255: $08 $7d $c4

jr_048_7258:
    add b                                         ; $7258: $80
    and e                                         ; $7259: $a3
    add b                                         ; $725a: $80
    ld a, d                                       ; $725b: $7a
    ret                                           ; $725c: $c9


    ld b, e                                       ; $725d: $43
    add [hl]                                      ; $725e: $86
    adc e                                         ; $725f: $8b
    add b                                         ; $7260: $80
    ld e, e                                       ; $7261: $5b
    add b                                         ; $7262: $80
    add a                                         ; $7263: $87
    and c                                         ; $7264: $a1
    adc $e1                                       ; $7265: $ce $e1
    sub [hl]                                      ; $7267: $96
    sbc $09                                       ; $7268: $de $09
    ret nz                                        ; $726a: $c0

    rrca                                          ; $726b: $0f
    rlca                                          ; $726c: $07
    inc b                                         ; $726d: $04
    inc b                                         ; $726e: $04
    or a                                          ; $726f: $b7
    jp nz, $9697                                  ; $7270: $c2 $97 $96

    sbc b                                         ; $7273: $98
    pop af                                        ; $7274: $f1
    ldh [$7d], a                                  ; $7275: $e0 $7d
    call nz, $8137                                ; $7277: $c4 $37 $81
    jp c, Jump_000_00db                           ; $727a: $da $db $00

    or e                                          ; $727d: $b3
    ld [bc], a                                    ; $727e: $02
    ld [c], a                                     ; $727f: $e2
    adc d                                         ; $7280: $8a
    inc e                                         ; $7281: $1c
    ld b, $c1                                     ; $7282: $06 $c1
    ret nz                                        ; $7284: $c0

    ldh [$97], a                                  ; $7285: $e0 $97
    sbc b                                         ; $7287: $98
    sbc c                                         ; $7288: $99
    cp d                                          ; $7289: $ba
    jp nz, $a1fe                                  ; $728a: $c2 $fe $a1

    ld a, [c]                                     ; $728d: $f2
    pop hl                                        ; $728e: $e1
    inc bc                                        ; $728f: $03
    rrca                                          ; $7290: $0f
    ld [bc], a                                    ; $7291: $02
    cp e                                          ; $7292: $bb
    and d                                         ; $7293: $a2
    scf                                           ; $7294: $37
    adc l                                         ; $7295: $8d
    ld c, c                                       ; $7296: $49
    adc c                                         ; $7297: $89
    ld [bc], a                                    ; $7298: $02
    db $e3                                        ; $7299: $e3
    ld c, a                                       ; $729a: $4f
    ld [c], a                                     ; $729b: $e2
    adc [hl]                                      ; $729c: $8e
    pop hl                                        ; $729d: $e1
    ld bc, $4098                                  ; $729e: $01 $98 $40
    and d                                         ; $72a1: $a2
    ret nz                                        ; $72a2: $c0

    and b                                         ; $72a3: $a0
    di                                            ; $72a4: $f3
    db $e3                                        ; $72a5: $e3
    cp [hl]                                       ; $72a6: $be
    jp $8d37                                      ; $72a7: $c3 $37 $8d


    ld b, $a7                                     ; $72aa: $06 $a7
    ld b, d                                       ; $72ac: $42
    add d                                         ; $72ad: $82
    db $10                                        ; $72ae: $10
    jp nz, $c0c3                                  ; $72af: $c2 $c3 $c0

    ld [c], a                                     ; $72b2: $e2
    cp a                                          ; $72b3: $bf
    pop hl                                        ; $72b4: $e1
    ld b, b                                       ; $72b5: $40
    and c                                         ; $72b6: $a1
    sub [hl]                                      ; $72b7: $96
    rst $38                                       ; $72b8: $ff
    ldh [$73], a                                  ; $72b9: $e0 $73
    ld [c], a                                     ; $72bb: $e2
    cp [hl]                                       ; $72bc: $be
    jp nz, $1a80                                  ; $72bd: $c2 $80 $1a

    add [hl]                                      ; $72c0: $86
    add b                                         ; $72c1: $80
    call $8342                                    ; $72c2: $cd $42 $83
    add d                                         ; $72c5: $82
    call nz, $e5bf                                ; $72c6: $c4 $bf $e5
    or l                                          ; $72c9: $b5
    db $e3                                        ; $72ca: $e3
    ld [hl], e                                    ; $72cb: $73
    db $e3                                        ; $72cc: $e3
    sbc c                                         ; $72cd: $99
    nop                                           ; $72ce: $00
    ret nz                                        ; $72cf: $c0

    db $e4                                        ; $72d0: $e4
    ld a, [de]                                    ; $72d1: $1a
    add d                                         ; $72d2: $82
    add b                                         ; $72d3: $80
    rst $08                                       ; $72d4: $cf
    ld h, h                                       ; $72d5: $64
    and e                                         ; $72d6: $a3
    ld [bc], a                                    ; $72d7: $02
    jp $e38a                                      ; $72d8: $c3 $8a $e3


    adc c                                         ; $72db: $89
    pop bc                                        ; $72dc: $c1
    db $fc                                        ; $72dd: $fc
    and $8c                                       ; $72de: $e6 $8c
    cp d                                          ; $72e0: $ba
    add c                                         ; $72e1: $81
    cp $a1                                        ; $72e2: $fe $a1
    ret nc                                        ; $72e4: $d0

    pop de                                        ; $72e5: $d1
    inc a                                         ; $72e6: $3c
    and d                                         ; $72e7: $a2
    add b                                         ; $72e8: $80
    ld [hl], d                                    ; $72e9: $72
    add d                                         ; $72ea: $82
    and e                                         ; $72eb: $a3
    ld [$8304], sp                                ; $72ec: $08 $04 $83
    and c                                         ; $72ef: $a1
    ccf                                           ; $72f0: $3f
    ld [c], a                                     ; $72f1: $e2
    sub a                                         ; $72f2: $97
    rlca                                          ; $72f3: $07
    jp nz, $c2be                                  ; $72f4: $c2 $be $c2

    ld [hl], c                                    ; $72f7: $71
    pop bc                                        ; $72f8: $c1
    cp [hl]                                       ; $72f9: $be
    and l                                         ; $72fa: $a5
    add b                                         ; $72fb: $80
    halt                                          ; $72fc: $76
    ld [bc], a                                    ; $72fd: $02
    adc e                                         ; $72fe: $8b
    ld b, b                                       ; $72ff: $40
    and c                                         ; $7300: $a1
    ld b, d                                       ; $7301: $42
    and c                                         ; $7302: $a1
    ld a, [bc]                                    ; $7303: $0a
    ld [c], a                                     ; $7304: $e2
    push bc                                       ; $7305: $c5
    db $e4                                        ; $7306: $e4
    ld [bc], a                                    ; $7307: $02
    add b                                         ; $7308: $80
    ld a, $c1                                     ; $7309: $3e $c1
    ld a, h                                       ; $730b: $7c
    add c                                         ; $730c: $81
    db $e3                                        ; $730d: $e3
    ld a, c                                       ; $730e: $79
    adc l                                         ; $730f: $8d
    jr c, @+$62                                   ; $7310: $38 $60

    ld l, h                                       ; $7312: $6c
    ld b, c                                       ; $7313: $41
    add b                                         ; $7314: $80
    ret c                                         ; $7315: $d8

    sbc a                                         ; $7316: $9f
    sbc h                                         ; $7317: $9c
    adc h                                         ; $7318: $8c
    add hl, sp                                    ; $7319: $39
    ld a, l                                       ; $731a: $7d
    rst $38                                       ; $731b: $ff
    jp $c4c1                                      ; $731c: $c3 $c1 $c4


    rrca                                          ; $731f: $0f
    ld [bc], a                                    ; $7320: $02
    ccf                                           ; $7321: $3f
    or $61                                        ; $7322: $f6 $61
    ret nz                                        ; $7324: $c0

    and b                                         ; $7325: $a0
    ld b, e                                       ; $7326: $43
    ld a, c                                       ; $7327: $79
    ld a, [hl]                                    ; $7328: $7e
    ld sp, hl                                     ; $7329: $f9
    ld b, d                                       ; $732a: $42
    db $db                                        ; $732b: $db
    ld b, b                                       ; $732c: $40
    nop                                           ; $732d: $00
    or h                                          ; $732e: $b4
    add b                                         ; $732f: $80
    and h                                         ; $7330: $a4
    ld a, a                                       ; $7331: $7f
    ld c, $a3                                     ; $7332: $0e $a3
    inc a                                         ; $7334: $3c
    nop                                           ; $7335: $00
    ret nz                                        ; $7336: $c0

    add c                                         ; $7337: $81
    ld h, c                                       ; $7338: $61
    ld [$3540], sp                                ; $7339: $08 $40 $35
    add hl, sp                                    ; $733c: $39
    ld a, l                                       ; $733d: $7d
    and c                                         ; $733e: $a1
    ld b, b                                       ; $733f: $40
    and c                                         ; $7340: $a1
    add b                                         ; $7341: $80
    ret nz                                        ; $7342: $c0

    add d                                         ; $7343: $82
    db $db                                        ; $7344: $db
    ld b, l                                       ; $7345: $45
    add b                                         ; $7346: $80
    adc $81                                       ; $7347: $ce $81
    ld b, h                                       ; $7349: $44
    ret nz                                        ; $734a: $c0

    add c                                         ; $734b: $81
    add hl, bc                                    ; $734c: $09
    add c                                         ; $734d: $81
    ld b, c                                       ; $734e: $41
    call nz, Call_000_0708                        ; $734f: $c4 $08 $07
    ld b, d                                       ; $7352: $42
    dec [hl]                                      ; $7353: $35
    ld a, [hl-]                                   ; $7354: $3a
    db $fd                                        ; $7355: $fd
    add c                                         ; $7356: $81
    nop                                           ; $7357: $00
    and e                                         ; $7358: $a3

jr_048_7359:
    xor c                                         ; $7359: $a9
    jr nz, jr_048_7359                            ; $735a: $20 $fd

    ld h, e                                       ; $735c: $63
    add b                                         ; $735d: $80
    ret nc                                        ; $735e: $d0

    ld [hl], b                                    ; $735f: $70
    adc c                                         ; $7360: $89
    ld hl, $8540                                  ; $7361: $21 $40 $85
    ld b, a                                       ; $7364: $47
    ld h, c                                       ; $7365: $61
    ld bc, $02e4                                  ; $7366: $01 $e4 $02
    ld [hl], $36                                  ; $7369: $36 $36
    add b                                         ; $736b: $80
    db $e3                                        ; $736c: $e3
    jr jr_048_73ec                                ; $736d: $18 $7d

    ld h, c                                       ; $736f: $61
    ld l, [hl]                                    ; $7370: $6e
    ld hl, $2075                                  ; $7371: $21 $75 $20
    sub $d7                                       ; $7374: $d6 $d7
    nop                                           ; $7376: $00
    ld d, c                                       ; $7377: $51
    adc c                                         ; $7378: $89
    jr nz, jr_048_73bb                            ; $7379: $20 $40

    add d                                         ; $737b: $82
    ld e, b                                       ; $737c: $58
    cp $c0                                        ; $737d: $fe $c0
    nop                                           ; $737f: $00
    add d                                         ; $7380: $82
    cp e                                          ; $7381: $bb
    db $e3                                        ; $7382: $e3
    rrca                                          ; $7383: $0f
    ld [bc], a                                    ; $7384: $02
    nop                                           ; $7385: $00
    db $e3                                        ; $7386: $e3
    rrca                                          ; $7387: $0f
    cp [hl]                                       ; $7388: $be
    ld h, l                                       ; $7389: $65
    ld [hl], b                                    ; $738a: $70
    dec h                                         ; $738b: $25
    jr nz, jr_048_73a5                            ; $738c: $20 $17

    ld b, h                                       ; $738e: $44
    add b                                         ; $738f: $80
    ld l, a                                       ; $7390: $6f
    ld b, b                                       ; $7391: $40
    add c                                         ; $7392: $81
    xor [hl]                                      ; $7393: $ae
    xor [hl]                                      ; $7394: $ae
    ld a, a                                       ; $7395: $7f
    jp z, Jump_048_6460                           ; $7396: $ca $60 $64

    add h                                         ; $7399: $84
    ld h, b                                       ; $739a: $60
    ld b, h                                       ; $739b: $44
    ld b, c                                       ; $739c: $41
    rrca                                          ; $739d: $0f
    cp h                                          ; $739e: $bc
    ld b, b                                       ; $739f: $40
    inc a                                         ; $73a0: $3c
    ld l, c                                       ; $73a1: $69
    sbc l                                         ; $73a2: $9d
    sbc l                                         ; $73a3: $9d
    ld a, h                                       ; $73a4: $7c

jr_048_73a5:
    pop hl                                        ; $73a5: $e1
    ld hl, sp+$39                                 ; $73a6: $f8 $39
    ld h, d                                       ; $73a8: $62
    nop                                           ; $73a9: $00
    ld c, a                                       ; $73aa: $4f
    ld a, a                                       ; $73ab: $7f
    ld [hl+], a                                   ; $73ac: $22
    sbc [hl]                                      ; $73ad: $9e
    xor a                                         ; $73ae: $af
    xor a                                         ; $73af: $af
    ld b, [hl]                                    ; $73b0: $46
    ld a, a                                       ; $73b1: $7f
    rst $38                                       ; $73b2: $ff
    ld a, l                                       ; $73b3: $7d
    ld [bc], a                                    ; $73b4: $02
    ld [bc], a                                    ; $73b5: $02
    ld a, c                                       ; $73b6: $79
    ld a, d                                       ; $73b7: $7a
    ld a, e                                       ; $73b8: $7b
    ld a, e                                       ; $73b9: $7b
    ld a, h                                       ; $73ba: $7c

jr_048_73bb:
    jp $087d                                      ; $73bb: $c3 $7d $08


    cp e                                          ; $73be: $bb
    add b                                         ; $73bf: $80
    add hl, sp                                    ; $73c0: $39
    ld h, b                                       ; $73c1: $60
    jr nc, jr_048_7425                            ; $73c2: $30 $61

    cp a                                          ; $73c4: $bf
    add b                                         ; $73c5: $80
    add [hl]                                      ; $73c6: $86
    add e                                         ; $73c7: $83
    add sp, $74                                   ; $73c8: $e8 $74
    jr z, jr_048_73cc                             ; $73ca: $28 $00

jr_048_73cc:
    ld d, b                                       ; $73cc: $50
    ld a, a                                       ; $73cd: $7f
    ld hl, $489e                                  ; $73ce: $21 $9e $48
    ld hl, $7b8e                                  ; $73d1: $21 $8e $7b
    ld a, e                                       ; $73d4: $7b
    db $e3                                        ; $73d5: $e3
    adc a                                         ; $73d6: $8f
    xor [hl]                                      ; $73d7: $ae
    rst $38                                       ; $73d8: $ff

jr_048_73d9:
    ldh [$74], a                                  ; $73d9: $e0 $74
    pop bc                                        ; $73db: $c1
    rlca                                          ; $73dc: $07
    ret nz                                        ; $73dd: $c0

    ld a, d                                       ; $73de: $7a
    ld a, h                                       ; $73df: $7c
    ld a, l                                       ; $73e0: $7d
    adc [hl]                                      ; $73e1: $8e
    rst $30                                       ; $73e2: $f7
    pop hl                                        ; $73e3: $e1
    rlca                                          ; $73e4: $07
    ld [bc], a                                    ; $73e5: $02
    add a                                         ; $73e6: $87
    ld [hl], h                                    ; $73e7: $74
    inc h                                         ; $73e8: $24
    ld [hl], c                                    ; $73e9: $71
    inc bc                                        ; $73ea: $03
    add b                                         ; $73eb: $80

jr_048_73ec:
    ld c, $da                                     ; $73ec: $0e $da
    sub a                                         ; $73ee: $97
    db $db                                        ; $73ef: $db
    ret nc                                        ; $73f0: $d0

    pop de                                        ; $73f1: $d1
    rlca                                          ; $73f2: $07
    ld h, $af                                     ; $73f3: $26 $af
    rst $38                                       ; $73f5: $ff
    ldh [$34], a                                  ; $73f6: $e0 $34
    ld h, b                                       ; $73f8: $60
    sbc e                                         ; $73f9: $9b
    ld c, $07                                     ; $73fa: $0e $07
    ret nz                                        ; $73fc: $c0

    ld b, l                                       ; $73fd: $45
    ld b, l                                       ; $73fe: $45
    ld a, a                                       ; $73ff: $7f
    db $ec                                        ; $7400: $ec
    jp nz, Jump_000_20b6                          ; $7401: $c2 $b6 $20

    ld [hl], h                                    ; $7404: $74
    inc hl                                        ; $7405: $23
    jr c, jr_048_746c                             ; $7406: $38 $64

    sbc b                                         ; $7408: $98
    nop                                           ; $7409: $00
    ld c, [hl]                                    ; $740a: $4e
    dec b                                         ; $740b: $05
    inc hl                                        ; $740c: $23
    add $05                                       ; $740d: $c6 $05
    xor [hl]                                      ; $740f: $ae
    xor [hl]                                      ; $7410: $ae
    db $f4                                        ; $7411: $f4
    ld b, b                                       ; $7412: $40
    rlca                                          ; $7413: $07
    ld h, b                                       ; $7414: $60
    ld b, l                                       ; $7415: $45
    scf                                           ; $7416: $37
    ld [hl], $36                                  ; $7417: $36 $36
    ld b, l                                       ; $7419: $45
    ld [$99a2], a                                 ; $741a: $ea $a2 $99
    sbc e                                         ; $741d: $9b
    ld [hl], h                                    ; $741e: $74
    jr nz, jr_048_73d9                            ; $741f: $20 $b8

    ld b, c                                       ; $7421: $41

Jump_048_7422:
    ld h, b                                       ; $7422: $60
    jr c, jr_048_7488                             ; $7423: $38 $63

jr_048_7425:
    ld l, [hl]                                    ; $7425: $6e
    ld bc, $0c80                                  ; $7426: $01 $80 $0c
    ld e, b                                       ; $7429: $58
    ld bc, $e87e                                  ; $742a: $01 $7e $e8
    ld b, [hl]                                    ; $742d: $46
    adc h                                         ; $742e: $8c
    rst $30                                       ; $742f: $f7
    ret nz                                        ; $7430: $c0

    rra                                           ; $7431: $1f
    adc l                                         ; $7432: $8d
    ld b, h                                       ; $7433: $44
    inc a                                         ; $7434: $3c
    dec [hl]                                      ; $7435: $35
    ld b, b                                       ; $7436: $40
    ld [$3a43], a                                 ; $7437: $ea $43 $3a
    add a                                         ; $743a: $87
    ld d, d                                       ; $743b: $52
    pop bc                                        ; $743c: $c1
    add $80                                       ; $743d: $c6 $80
    dec d                                         ; $743f: $15
    sbc a                                         ; $7440: $9f
    sbc h                                         ; $7441: $9c
    add [hl]                                      ; $7442: $86
    ldh [$80], a                                  ; $7443: $e0 $80
    db $e3                                        ; $7445: $e3
    or $c0                                        ; $7446: $f6 $c0
    adc a                                         ; $7448: $8f
    ld b, l                                       ; $7449: $45
    inc bc                                        ; $744a: $03
    ld [hl], $35                                  ; $744b: $36 $35
    ret nz                                        ; $744d: $c0

    db $e4                                        ; $744e: $e4
    rst $28                                       ; $744f: $ef
    ld bc, $e5c0                                  ; $7450: $01 $c0 $e5
    add b                                         ; $7453: $80
    ret nc                                        ; $7454: $d0

    and d                                         ; $7455: $a2
    inc hl                                        ; $7456: $23
    db $fc                                        ; $7457: $fc
    ld hl, $7cfc                                  ; $7458: $21 $fc $7c
    ret nz                                        ; $745b: $c0

    add b                                         ; $745c: $80
    db $e3                                        ; $745d: $e3
    ld b, l                                       ; $745e: $45
    ld b, e                                       ; $745f: $43
    ccf                                           ; $7460: $3f
    scf                                           ; $7461: $37
    jr c, jr_048_7499                             ; $7462: $38 $35

    rrca                                          ; $7464: $0f
    dec [hl]                                      ; $7465: $35
    inc a                                         ; $7466: $3c
    ld b, h                                       ; $7467: $44
    ld b, e                                       ; $7468: $43
    add b                                         ; $7469: $80
    db $e3                                        ; $746a: $e3
    ld a, d                                       ; $746b: $7a

jr_048_746c:
    ld h, h                                       ; $746c: $64
    ret nz                                        ; $746d: $c0

    pop bc                                        ; $746e: $c1
    add b                                         ; $746f: $80
    ld [de], a                                    ; $7470: $12
    ld a, b                                       ; $7471: $78
    inc a                                         ; $7472: $3c
    and b                                         ; $7473: $a0
    ld a, d                                       ; $7474: $7a
    add d                                         ; $7475: $82
    add d                                         ; $7476: $82
    db $e4                                        ; $7477: $e4
    ld b, l                                       ; $7478: $45
    ld [hl], $3b                                  ; $7479: $36 $3b
    dec [hl]                                      ; $747b: $35
    rst $38                                       ; $747c: $ff
    pop hl                                        ; $747d: $e1
    rra                                           ; $747e: $1f
    ld [hl], $4a                                  ; $747f: $36 $4a
    ld e, d                                       ; $7481: $5a
    add c                                         ; $7482: $81
    ld [bc], a                                    ; $7483: $02
    ld [hl], h                                    ; $7484: $74
    ld [bc], a                                    ; $7485: $02
    ld a, d                                       ; $7486: $7a
    add e                                         ; $7487: $83

jr_048_7488:
    ld [hl], l                                    ; $7488: $75
    dec b                                         ; $7489: $05
    adc h                                         ; $748a: $8c
    add b                                         ; $748b: $80
    dec c                                         ; $748c: $0d
    cp h                                          ; $748d: $bc
    ld hl, $d5d4                                  ; $748e: $21 $d4 $d5
    ld a, l                                       ; $7491: $7d
    jp $e182                                      ; $7492: $c3 $82 $e1


    ld b, [hl]                                    ; $7495: $46
    ldh [$35], a                                  ; $7496: $e0 $35
    ld a, a                                       ; $7498: $7f

jr_048_7499:
    dec [hl]                                      ; $7499: $35
    dec sp                                        ; $749a: $3b
    dec [hl]                                      ; $749b: $35
    ld [hl], $45                                  ; $749c: $36 $45
    ld c, a                                       ; $749e: $4f
    ld d, l                                       ; $749f: $55
    ret nz                                        ; $74a0: $c0

    pop hl                                        ; $74a1: $e1
    ret nz                                        ; $74a2: $c0

    ld a, d                                       ; $74a3: $7a
    add [hl]                                      ; $74a4: $86
    ld [hl], l                                    ; $74a5: $75
    inc bc                                        ; $74a6: $03
    add b                                         ; $74a7: $80
    ret nc                                        ; $74a8: $d0

    and e                                         ; $74a9: $a3
    ld h, c                                       ; $74aa: $61
    ld a, $c6                                     ; $74ab: $3e $c6
    rlca                                          ; $74ad: $07
    pop hl                                        ; $74ae: $e1
    xor h                                         ; $74af: $ac
    xor h                                         ; $74b0: $ac
    ld a, a                                       ; $74b1: $7f
    ld [hl], $50                                  ; $74b2: $36 $50
    ccf                                           ; $74b4: $3f
    ld c, b                                       ; $74b5: $48
    ld c, [hl]                                    ; $74b6: $4e
    ld b, e                                       ; $74b7: $43
    ld b, l                                       ; $74b8: $45
    add sp, $42                                   ; $74b9: $e8 $42
    and b                                         ; $74bb: $a0
    cp d                                          ; $74bc: $ba
    inc hl                                        ; $74bd: $23
    ld d, d                                       ; $74be: $52
    dec h                                         ; $74bf: $25
    add b                                         ; $74c0: $80
    ret nc                                        ; $74c1: $d0

    cp [hl]                                       ; $74c2: $be
    ld [hl+], a                                   ; $74c3: $22
    ld b, b                                       ; $74c4: $40
    push bc                                       ; $74c5: $c5
    add hl, sp                                    ; $74c6: $39
    ld b, h                                       ; $74c7: $44
    ldh [$ad], a                                  ; $74c8: $e0 $ad
    ld a, a                                       ; $74ca: $7f
    xor l                                         ; $74cb: $ad
    add hl, sp                                    ; $74cc: $39
    ld d, h                                       ; $74cd: $54
    ld c, h                                       ; $74ce: $4c
    ld d, h                                       ; $74cf: $54
    ld d, e                                       ; $74d0: $53
    ld b, l                                       ; $74d1: $45
    xor d                                         ; $74d2: $aa
    ld hl, $3c70                                  ; $74d3: $21 $70 $3c
    ld h, a                                       ; $74d6: $67
    add b                                         ; $74d7: $80
    ret c                                         ; $74d8: $d8

    ld b, e                                       ; $74d9: $43
    ldh [$82], a                                  ; $74da: $e0 $82
    jp Jump_048_4546                              ; $74dc: $c3 $46 $45


    ld a, [hl-]                                   ; $74df: $3a
    inc b                                         ; $74e0: $04
    ld [c], a                                     ; $74e1: $e2
    inc bc                                        ; $74e2: $03
    ld a, [hl-]                                   ; $74e3: $3a
    ld b, l                                       ; $74e4: $45
    ld hl, sp-$60                                 ; $74e5: $f8 $a0
    xor d                                         ; $74e7: $aa
    ld hl, $81ad                                  ; $74e8: $21 $ad $81
    ld a, [$8008]                                 ; $74eb: $fa $08 $80
    pop de                                        ; $74ee: $d1
    add b                                         ; $74ef: $80
    ld [bc], a                                    ; $74f0: $02
    ld [$c108], sp                                ; $74f1: $08 $08 $c1
    ld b, d                                       ; $74f4: $42
    db $e4                                        ; $74f5: $e4
    jp $40c2                                      ; $74f6: $c3 $c2 $40


    xor $80                                       ; $74f9: $ee $80
    xor d                                         ; $74fb: $aa
    jr nz, @+$7a                                  ; $74fc: $20 $78

    ld bc, $e3c0                                  ; $74fe: $01 $c0 $e3
    ld h, b                                       ; $7501: $60
    ld a, [$8003]                                 ; $7502: $fa $03 $80
    pop de                                        ; $7505: $d1
    add b                                         ; $7506: $80
    ld [bc], a                                    ; $7507: $02
    inc bc                                        ; $7508: $03
    rst $20                                       ; $7509: $e7
    add h                                         ; $750a: $84
    jp nz, $443c                                  ; $750b: $c2 $3c $44

    ld [hl], b                                    ; $750e: $70
    and b                                         ; $750f: $a0
    nop                                           ; $7510: $00
    db $ec                                        ; $7511: $ec
    ld h, l                                       ; $7512: $65
    ld a, d                                       ; $7513: $7a
    ld h, d                                       ; $7514: $62
    ld d, e                                       ; $7515: $53
    ld b, l                                       ; $7516: $45
    add b                                         ; $7517: $80
    rst $08                                       ; $7518: $cf
    add b                                         ; $7519: $80
    ld [bc], a                                    ; $751a: $02
    inc bc                                        ; $751b: $03
    rst $20                                       ; $751c: $e7
    ld b, b                                       ; $751d: $40
    db $e4                                        ; $751e: $e4
    ret nz                                        ; $751f: $c0

    pop hl                                        ; $7520: $e1
    nop                                           ; $7521: $00
    ld l, h                                       ; $7522: $6c
    ld h, h                                       ; $7523: $64
    cp d                                          ; $7524: $ba
    dec b                                         ; $7525: $05
    ld d, d                                       ; $7526: $52
    ld h, e                                       ; $7527: $63
    nop                                           ; $7528: $00
    xor a                                         ; $7529: $af
    add b                                         ; $752a: $80
    add d                                         ; $752b: $82
    ld b, $c2                                     ; $752c: $06 $c2
    inc bc                                        ; $752e: $03
    db $e3                                        ; $752f: $e3
    ld [bc], a                                    ; $7530: $02
    ret nz                                        ; $7531: $c0

    ld bc, $f839                                  ; $7532: $01 $39 $f8
    add e                                         ; $7535: $83
    db $ec                                        ; $7536: $ec
    ld b, e                                       ; $7537: $43
    cp d                                          ; $7538: $ba
    ld h, h                                       ; $7539: $64
    ld hl, sp+$44                                 ; $753a: $f8 $44
    nop                                           ; $753c: $00
    ld c, h                                       ; $753d: $4c
    cp d                                          ; $753e: $ba
    ld b, d                                       ; $753f: $42
    nop                                           ; $7540: $00
    db $e4                                        ; $7541: $e4
    adc h                                         ; $7542: $8c
    inc c                                         ; $7543: $0c
    and b                                         ; $7544: $a0
    ld bc, $36e3                                  ; $7545: $01 $e3 $36
    ld b, l                                       ; $7548: $45
    ld hl, sp-$7f                                 ; $7549: $f8 $81
    ld a, [hl+]                                   ; $754b: $2a
    inc hl                                        ; $754c: $23
    cp d                                          ; $754d: $ba
    jr nz, jr_048_7558                            ; $754e: $20 $08

    ld [hl], b                                    ; $7550: $70
    cp d                                          ; $7551: $ba
    dec b                                         ; $7552: $05
    nop                                           ; $7553: $00
    or b                                          ; $7554: $b0
    add hl, hl                                    ; $7555: $29
    add d                                         ; $7556: $82
    add h                                         ; $7557: $84

jr_048_7558:
    and d                                         ; $7558: $a2
    ld b, [hl]                                    ; $7559: $46
    ld b, [hl]                                    ; $755a: $46
    ld b, b                                       ; $755b: $40
    ld b, d                                       ; $755c: $42
    jp hl                                         ; $755d: $e9


    add c                                         ; $755e: $81
    ld b, [hl]                                    ; $755f: $46
    ld b, d                                       ; $7560: $42
    pop bc                                        ; $7561: $c1
    ld a, c                                       ; $7562: $79
    dec b                                         ; $7563: $05
    cp d                                          ; $7564: $ba
    dec b                                         ; $7565: $05
    add b                                         ; $7566: $80
    ld [hl], b                                    ; $7567: $70
    ld b, d                                       ; $7568: $42
    adc b                                         ; $7569: $88
    ld b, b                                       ; $756a: $40
    push hl                                       ; $756b: $e5
    add hl, sp                                    ; $756c: $39
    ld c, $c3                                     ; $756d: $0e $c3
    ldh [$89], a                                  ; $756f: $e0 $89
    adc b                                         ; $7571: $88
    add a                                         ; $7572: $87
    ld l, e                                       ; $7573: $6b
    ld bc, $03f8                                  ; $7574: $01 $f8 $03
    ret nz                                        ; $7577: $c0

    add [hl]                                      ; $7578: $86
    add b                                         ; $7579: $80
    db $10                                        ; $757a: $10
    inc e                                         ; $757b: $1c
    ld b, l                                       ; $757c: $45
    and l                                         ; $757d: $a5
    ret nz                                        ; $757e: $c0

    add $38                                       ; $757f: $c6 $38
    scf                                           ; $7581: $37
    ld b, l                                       ; $7582: $45
    dec b                                         ; $7583: $05
    pop bc                                        ; $7584: $c1
    ld b, c                                       ; $7585: $41
    ld h, c                                       ; $7586: $61
    ld l, l                                       ; $7587: $6d
    jr nz, jr_048_758b                            ; $7588: $20 $01

    sub l                                         ; $758a: $95

jr_048_758b:
    ld l, e                                       ; $758b: $6b
    ld bc, $4038                                  ; $758c: $01 $38 $40
    dec a                                         ; $758f: $3d
    ld h, [hl]                                    ; $7590: $66
    add b                                         ; $7591: $80
    ld de, $65c3                                  ; $7592: $11 $c3 $65
    push bc                                       ; $7595: $c5
    add b                                         ; $7596: $80
    jp nz, $02e1                                  ; $7597: $c2 $e1 $02

    add $a0                                       ; $759a: $c6 $a0
    add l                                         ; $759c: $85
    xor $03                                       ; $759d: $ee $03
    ret nz                                        ; $759f: $c0

    ld [c], a                                     ; $75a0: $e2
    ld hl, sp+$22                                 ; $75a1: $f8 $22
    ld a, a                                       ; $75a3: $7f
    add e                                         ; $75a4: $83
    cp l                                          ; $75a5: $bd
    and e                                         ; $75a6: $a3
    add b                                         ; $75a7: $80
    ld c, $00                                     ; $75a8: $0e $00
    add d                                         ; $75aa: $82
    and l                                         ; $75ab: $a5
    ld b, l                                       ; $75ac: $45
    add b                                         ; $75ad: $80
    ld b, a                                       ; $75ae: $47
    pop bc                                        ; $75af: $c1
    pop bc                                        ; $75b0: $c1
    ldh [$f1], a                                  ; $75b1: $e0 $f1
    inc hl                                        ; $75b3: $23
    ld l, $00                                     ; $75b4: $2e $00
    ret nz                                        ; $75b6: $c0

    pop hl                                        ; $75b7: $e1
    ld a, [hl]                                    ; $75b8: $7e
    and c                                         ; $75b9: $a1
    nop                                           ; $75ba: $00
    cp c                                          ; $75bb: $b9
    inc bc                                        ; $75bc: $03
    cp l                                          ; $75bd: $bd
    and e                                         ; $75be: $a3
    add b                                         ; $75bf: $80
    ld c, $82                                     ; $75c0: $0e $82
    and h                                         ; $75c2: $a4
    inc a                                         ; $75c3: $3c
    ld h, h                                       ; $75c4: $64
    pop bc                                        ; $75c5: $c1
    ld [c], a                                     ; $75c6: $e2
    ld a, l                                       ; $75c7: $7d
    inc bc                                        ; $75c8: $03
    ld bc, $f0e0                                  ; $75c9: $01 $e0 $f0
    ret nz                                        ; $75cc: $c0

    rst $20                                       ; $75cd: $e7
    dec sp                                        ; $75ce: $3b
    ld b, d                                       ; $75cf: $42
    add b                                         ; $75d0: $80
    db $10                                        ; $75d1: $10
    ld b, d                                       ; $75d2: $42
    and b                                         ; $75d3: $a0
    ld b, l                                       ; $75d4: $45
    ld b, e                                       ; $75d5: $43
    ld b, c                                       ; $75d6: $41
    ld b, e                                       ; $75d7: $43
    ld [$e0fd], sp                                ; $75d8: $08 $fd $e0
    jp z, Jump_000_00a0                           ; $75db: $ca $a0 $00

    ld h, b                                       ; $75de: $60
    adc d                                         ; $75df: $8a
    push af                                       ; $75e0: $f5
    jr nz, jr_048_7623                            ; $75e1: $20 $40

    ld [bc], a                                    ; $75e3: $02
    db $fd                                        ; $75e4: $fd
    ld [c], a                                     ; $75e5: $e2
    ret nz                                        ; $75e6: $c0

    call nz, Call_000_3d14                        ; $75e7: $c4 $14 $3d
    ld b, e                                       ; $75ea: $43
    add b                                         ; $75eb: $80
    ld [de], a                                    ; $75ec: $12
    sbc [hl]                                      ; $75ed: $9e
    call Call_000_3b62                            ; $75ee: $cd $62 $3b
    db $fd                                        ; $75f1: $fd
    ldh [$08], a                                  ; $75f2: $e0 $08
    push bc                                       ; $75f4: $c5
    cp e                                          ; $75f5: $bb
    ld bc, $06f0                                  ; $75f6: $01 $f0 $06
    jp nz, $a5ff                                  ; $75f9: $c2 $ff $a5

    add b                                         ; $75fc: $80
    push de                                       ; $75fd: $d5
    jp nz, $44a4                                  ; $75fe: $c2 $a4 $44

    inc a                                         ; $7601: $3c
    and h                                         ; $7602: $a4
    ld h, h                                       ; $7603: $64
    ld b, $ff                                     ; $7604: $06 $ff

jr_048_7606:
    ldh [$a5], a                                  ; $7606: $e0 $a5
    inc a                                         ; $7608: $3c
    db $fc                                        ; $7609: $fc
    ld b, d                                       ; $760a: $42
    adc b                                         ; $760b: $88
    and b                                         ; $760c: $a0
    or h                                          ; $760d: $b4
    inc bc                                        ; $760e: $03
    inc sp                                        ; $760f: $33
    ld [bc], a                                    ; $7610: $02
    nop                                           ; $7611: $00
    call nz, Call_048_78f8                        ; $7612: $c4 $f8 $78
    ld [bc], a                                    ; $7615: $02
    add b                                         ; $7616: $80
    adc $81                                       ; $7617: $ce $81
    ld [bc], a                                    ; $7619: $02
    sbc [hl]                                      ; $761a: $9e
    ld b, [hl]                                    ; $761b: $46
    ld b, d                                       ; $761c: $42
    dec [hl]                                      ; $761d: $35
    ld l, c                                       ; $761e: $69
    ccf                                           ; $761f: $3f
    and e                                         ; $7620: $a3
    dec [hl]                                      ; $7621: $35
    dec [hl]                                      ; $7622: $35

jr_048_7623:
    and e                                         ; $7623: $a3
    ld l, d                                       ; $7624: $6a
    dec [hl]                                      ; $7625: $35
    db $fc                                        ; $7626: $fc
    ld b, d                                       ; $7627: $42
    ld c, b                                       ; $7628: $48
    and d                                         ; $7629: $a2
    jr jr_048_7633                                ; $762a: $18 $07

    ld h, d                                       ; $762c: $62
    ld a, h                                       ; $762d: $7c
    jp nz, $203a                                  ; $762e: $c2 $3a $20

    ld a, c                                       ; $7631: $79
    adc l                                         ; $7632: $8d

jr_048_7633:
    ld a, $86                                     ; $7633: $3e $86
    add b                                         ; $7635: $80
    res 0, d                                      ; $7636: $cb $82
    ld b, d                                       ; $7638: $42
    cp c                                          ; $7639: $b9
    and c                                         ; $763a: $a1
    ret nz                                        ; $763b: $c0

    pop hl                                        ; $763c: $e1
    dec c                                         ; $763d: $0d
    ld h, c                                       ; $763e: $61
    ld l, d                                       ; $763f: $6a
    dec [hl]                                      ; $7640: $35
    ld b, d                                       ; $7641: $42
    nop                                           ; $7642: $00
    ld b, e                                       ; $7643: $43
    sbc e                                         ; $7644: $9b
    nop                                           ; $7645: $00
    add hl, bc                                    ; $7646: $09

jr_048_7647:
    ld h, b                                       ; $7647: $60
    ret z                                         ; $7648: $c8

    jr nz, jr_048_7647                            ; $7649: $20 $fc

    and e                                         ; $764b: $a3
    add c                                         ; $764c: $81
    and d                                         ; $764d: $a2
    ld a, $20                                     ; $764e: $3e $20
    nop                                           ; $7650: $00
    ld d, c                                       ; $7651: $51
    add c                                         ; $7652: $81
    nop                                           ; $7653: $00
    add d                                         ; $7654: $82
    ld hl, $442f                                  ; $7655: $21 $2f $44
    inc a                                         ; $7658: $3c
    ld l, e                                       ; $7659: $6b
    ld [hl], c                                    ; $765a: $71
    rst $38                                       ; $765b: $ff
    ldh [$6d], a                                  ; $765c: $e0 $6d
    ld c, c                                       ; $765e: $49
    add b                                         ; $765f: $80
    add b                                         ; $7660: $80
    ld hl, $0207                                  ; $7661: $21 $07 $02
    rrca                                          ; $7664: $0f
    sbc d                                         ; $7665: $9a
    ld a, $22                                     ; $7666: $3e $22
    db $f4                                        ; $7668: $f4
    nop                                           ; $7669: $00
    ld a, b                                       ; $766a: $78
    nop                                           ; $766b: $00
    pop bc                                        ; $766c: $c1
    ld b, c                                       ; $766d: $41
    ld b, c                                       ; $766e: $41
    ld b, h                                       ; $766f: $44
    or b                                          ; $7670: $b0
    nop                                           ; $7671: $00
    or c                                          ; $7672: $b1
    add d                                         ; $7673: $82
    ld [hl+], a                                   ; $7674: $22
    ret nz                                        ; $7675: $c0

    rst $00                                       ; $7676: $c7
    ld a, b                                       ; $7677: $78
    jr nz, jr_048_7606                            ; $7678: $20 $8c

    ld a, l                                       ; $767a: $7d
    ld a, e                                       ; $767b: $7b
    nop                                           ; $767c: $00
    ld [bc], a                                    ; $767d: $02
    inc bc                                        ; $767e: $03
    ld a, c                                       ; $767f: $79
    ld a, [hl]                                    ; $7680: $7e
    ld l, l                                       ; $7681: $6d
    jr nz, @-$53                                  ; $7682: $20 $ab

    nop                                           ; $7684: $00
    or $e3                                        ; $7685: $f6 $e3
    rst $38                                       ; $7687: $ff
    ld b, h                                       ; $7688: $44
    add b                                         ; $7689: $80
    db $10                                        ; $768a: $10
    add d                                         ; $768b: $82
    inc hl                                        ; $768c: $23
    adc [hl]                                      ; $768d: $8e
    ld b, b                                       ; $768e: $40
    add $9c                                       ; $768f: $c6 $9c
    sbc l                                         ; $7691: $9d
    sbc h                                         ; $7692: $9c
    or [hl]                                       ; $7693: $b6
    ld bc, $00b4                                  ; $7694: $01 $b4 $00
    ld c, b                                       ; $7697: $48
    nop                                           ; $7698: $00
    sbc l                                         ; $7699: $9d
    add l                                         ; $769a: $85
    sbc h                                         ; $769b: $9c
    push af                                       ; $769c: $f5
    pop hl                                        ; $769d: $e1
    adc a                                         ; $769e: $8f
    inc h                                         ; $769f: $24
    jr nz, @+$01                                  ; $76a0: $20 $ff

    ld b, h                                       ; $76a2: $44
    nop                                           ; $76a3: $00
    ld d, c                                       ; $76a4: $51
    cp h                                          ; $76a5: $bc
    pop bc                                        ; $76a6: $c1
    sbc a                                         ; $76a7: $9f
    inc h                                         ; $76a8: $24
    call nc, $fde0                                ; $76a9: $d4 $e0 $fd
    db $e3                                        ; $76ac: $e3
    sbc a                                         ; $76ad: $9f
    db $f4                                        ; $76ae: $f4
    pop hl                                        ; $76af: $e1
    or c                                          ; $76b0: $b1
    nop                                           ; $76b1: $00
    sbc h                                         ; $76b2: $9c
    or $e0                                        ; $76b3: $f6 $e0
    add sp, -$1d                                  ; $76b5: $e8 $e3
    nop                                           ; $76b7: $00
    and h                                         ; $76b8: $a4
    ld bc, $4401                                  ; $76b9: $01 $01 $44
    add a                                         ; $76bc: $87
    and h                                         ; $76bd: $a4
    nop                                           ; $76be: $00
    ld c, e                                       ; $76bf: $4b
    db $eb                                        ; $76c0: $eb
    ret nz                                        ; $76c1: $c0

    ld h, l                                       ; $76c2: $65
    ld b, $5a                                     ; $76c3: $06 $5a
    inc b                                         ; $76c5: $04
    or c                                          ; $76c6: $b1
    ldh [rP1], a                                  ; $76c7: $e0 $00
    pop de                                        ; $76c9: $d1
    add c                                         ; $76ca: $81
    ld c, [hl]                                    ; $76cb: $4e
    inc bc                                        ; $76cc: $03
    and h                                         ; $76cd: $a4
    pop hl                                        ; $76ce: $e1
    ld bc, $4a42                                  ; $76cf: $01 $42 $4a
    ld b, $80                                     ; $76d2: $06 $80
    dec bc                                        ; $76d4: $0b
    cp h                                          ; $76d5: $bc
    ret nz                                        ; $76d6: $c0

    and l                                         ; $76d7: $a5
    ld hl, $3500                                  ; $76d8: $21 $00 $35
    ret nz                                        ; $76db: $c0

    ld e, $c1                                     ; $76dc: $1e $c1
    sbc d                                         ; $76de: $9a
    ld hl, $c116                                  ; $76df: $21 $16 $c1
    db $f4                                        ; $76e2: $f4
    jp hl                                         ; $76e3: $e9


    or [hl]                                       ; $76e4: $b6
    db $e4                                        ; $76e5: $e4
    ld c, d                                       ; $76e6: $4a
    ld h, [hl]                                    ; $76e7: $66
    add b                                         ; $76e8: $80
    ld l, [hl]                                    ; $76e9: $6e
    nop                                           ; $76ea: $00
    push hl                                       ; $76eb: $e5
    ld h, c                                       ; $76ec: $61
    ld h, h                                       ; $76ed: $64
    ret nz                                        ; $76ee: $c0

    ld e, [hl]                                    ; $76ef: $5e
    ld hl, $61da                                  ; $76f0: $21 $da $61
    ld d, [hl]                                    ; $76f3: $56
    ld hl, $e8f4                                  ; $76f4: $21 $f4 $e8
    jr nz, jr_048_771c                            ; $76f7: $20 $23

    ld b, e                                       ; $76f9: $43
    dec h                                         ; $76fa: $25
    nop                                           ; $76fb: $00
    call nz, Call_000_0080                        ; $76fc: $c4 $80 $00
    nop                                           ; $76ff: $00
    nop                                           ; $7700: $00
    pop bc                                        ; $7701: $c1
    nop                                           ; $7702: $00
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
    nop                                           ; $770d: $00
    nop                                           ; $770e: $00
    ld bc, $fe80                                  ; $770f: $01 $80 $fe
    ldh [rIE], a                                  ; $7712: $e0 $ff
    rst $38                                       ; $7714: $ff
    rst $38                                       ; $7715: $ff
    rst $38                                       ; $7716: $ff
    rst $38                                       ; $7717: $ff
    add sp, $00                                   ; $7718: $e8 $00
    nop                                           ; $771a: $00
    nop                                           ; $771b: $00

jr_048_771c:
    ld [bc], a                                    ; $771c: $02
    nop                                           ; $771d: $00
    ld [de], a                                    ; $771e: $12
    dec e                                         ; $771f: $1d
    ld [bc], a                                    ; $7720: $02
    ld bc, $1d13                                  ; $7721: $01 $13 $1d
    ld [bc], a                                    ; $7724: $02
    ld [bc], a                                    ; $7725: $02
    ld a, [de]                                    ; $7726: $1a
    rra                                           ; $7727: $1f
    ld [bc], a                                    ; $7728: $02
    inc bc                                        ; $7729: $03
    dec de                                        ; $772a: $1b
    rra                                           ; $772b: $1f
    ld [bc], a                                    ; $772c: $02
    inc b                                         ; $772d: $04
    inc e                                         ; $772e: $1c
    rra                                           ; $772f: $1f
    ld [bc], a                                    ; $7730: $02
    dec b                                         ; $7731: $05
    dec e                                         ; $7732: $1d
    rra                                           ; $7733: $1f
    ld [bc], a                                    ; $7734: $02
    ld b, $1c                                     ; $7735: $06 $1c
    ld hl, $0702                                  ; $7737: $21 $02 $07
    dec e                                         ; $773a: $1d
    ld hl, $0802                                  ; $773b: $21 $02 $08
    ld d, $23                                     ; $773e: $16 $23
    ld [bc], a                                    ; $7740: $02
    add hl, bc                                    ; $7741: $09
    rla                                           ; $7742: $17
    inc hl                                        ; $7743: $23
    ld [bc], a                                    ; $7744: $02
    ld a, [bc]                                    ; $7745: $0a
    inc e                                         ; $7746: $1c
    inc hl                                        ; $7747: $23
    ld [bc], a                                    ; $7748: $02
    dec bc                                        ; $7749: $0b
    dec e                                         ; $774a: $1d
    inc hl                                        ; $774b: $23
    ld [bc], a                                    ; $774c: $02
    inc c                                         ; $774d: $0c
    ld a, [de]                                    ; $774e: $1a
    dec h                                         ; $774f: $25
    ld [bc], a                                    ; $7750: $02
    dec c                                         ; $7751: $0d
    dec de                                        ; $7752: $1b
    dec h                                         ; $7753: $25
    ld [bc], a                                    ; $7754: $02
    ld c, $20                                     ; $7755: $0e $20
    daa                                           ; $7757: $27
    ld [bc], a                                    ; $7758: $02
    rrca                                          ; $7759: $0f
    ld hl, $0227                                  ; $775a: $21 $27 $02
    db $10                                        ; $775d: $10
    inc d                                         ; $775e: $14
    add hl, hl                                    ; $775f: $29
    ld [bc], a                                    ; $7760: $02
    ld de, $2915                                  ; $7761: $11 $15 $29
    ld [bc], a                                    ; $7764: $02
    ld [de], a                                    ; $7765: $12
    inc h                                         ; $7766: $24
    add hl, hl                                    ; $7767: $29
    ld [bc], a                                    ; $7768: $02
    inc de                                        ; $7769: $13
    dec h                                         ; $776a: $25
    add hl, hl                                    ; $776b: $29
    ld [bc], a                                    ; $776c: $02
    inc d                                         ; $776d: $14
    inc d                                         ; $776e: $14
    dec l                                         ; $776f: $2d
    ld [bc], a                                    ; $7770: $02
    dec d                                         ; $7771: $15
    dec d                                         ; $7772: $15
    dec l                                         ; $7773: $2d
    ld [bc], a                                    ; $7774: $02
    ld d, $24                                     ; $7775: $16 $24
    dec l                                         ; $7777: $2d
    ld [bc], a                                    ; $7778: $02
    rla                                           ; $7779: $17
    dec h                                         ; $777a: $25
    dec l                                         ; $777b: $2d
    ld [bc], a                                    ; $777c: $02
    jr jr_048_7791                                ; $777d: $18 $12

    inc sp                                        ; $777f: $33
    ld [bc], a                                    ; $7780: $02
    add hl, de                                    ; $7781: $19
    inc de                                        ; $7782: $13
    inc sp                                        ; $7783: $33
    ld [bc], a                                    ; $7784: $02
    ld a, [de]                                    ; $7785: $1a
    inc e                                         ; $7786: $1c
    dec [hl]                                      ; $7787: $35
    ld [bc], a                                    ; $7788: $02
    dec de                                        ; $7789: $1b
    dec e                                         ; $778a: $1d
    dec [hl]                                      ; $778b: $35
    ld [bc], a                                    ; $778c: $02
    inc e                                         ; $778d: $1c
    ld a, [de]                                    ; $778e: $1a
    scf                                           ; $778f: $37
    ld [bc], a                                    ; $7790: $02

jr_048_7791:
    dec e                                         ; $7791: $1d
    dec de                                        ; $7792: $1b
    scf                                           ; $7793: $37
    ld [bc], a                                    ; $7794: $02
    ld e, $1c                                     ; $7795: $1e $1c
    add hl, sp                                    ; $7797: $39
    ld [bc], a                                    ; $7798: $02
    rra                                           ; $7799: $1f
    dec e                                         ; $779a: $1d
    add hl, sp                                    ; $779b: $39
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

Call_048_783f:
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

Call_048_78f8:
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

Jump_048_7b88:
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

Call_048_7c00:
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

Jump_048_7e3c:
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
