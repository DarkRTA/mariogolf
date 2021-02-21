; Disassembly of "mgolf.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $004", ROMX[$4000], BANK[$4]

    db $62, $40, $6b, $40, $0d, $41, $39, $41

    ld [$fc41], a                                 ; $4008: $ea $41 $fc
    ld b, c                                       ; $400b: $41
    ld l, c                                       ; $400c: $69
    ld c, e                                       ; $400d: $4b
    jp $d845                                      ; $400e: $c3 $45 $d8


    ld b, l                                       ; $4011: $45
    jp hl                                         ; $4012: $e9


    ld b, l                                       ; $4013: $45
    ld a, c                                       ; $4014: $79
    ld b, [hl]                                    ; $4015: $46
    ld [de], a                                    ; $4016: $12
    ld b, [hl]                                    ; $4017: $46
    and d                                         ; $4018: $a2
    ld b, [hl]                                    ; $4019: $46
    ei                                            ; $401a: $fb
    ld b, [hl]                                    ; $401b: $46
    ld d, [hl]                                    ; $401c: $56
    ld b, a                                       ; $401d: $47
    and d                                         ; $401e: $a2
    ld b, a                                       ; $401f: $47
    ld c, l                                       ; $4020: $4d
    ld c, b                                       ; $4021: $48
    db $fc                                        ; $4022: $fc
    ld c, b                                       ; $4023: $48
    or c                                          ; $4024: $b1
    ld c, c                                       ; $4025: $49
    db $ec                                        ; $4026: $ec
    ld c, c                                       ; $4027: $49
    ld d, a                                       ; $4028: $57
    ld c, d                                       ; $4029: $4a
    ld e, e                                       ; $402a: $5b
    ld c, d                                       ; $402b: $4a
    ld [hl], c                                    ; $402c: $71
    ld c, d                                       ; $402d: $4a

    db $84, $50, $0a, $51, $e6, $44, $f9, $44

    dec a                                         ; $4036: $3d
    ld c, l                                       ; $4037: $4d

    db $4c, $4e

    ld a, [bc]                                    ; $403a: $0a
    ld c, a                                       ; $403b: $4f

    db $72, $40, $c4, $55

    ld e, $55                                     ; $4040: $1e $55
    dec d                                         ; $4042: $15
    ld c, [hl]                                    ; $4043: $4e

    db $36, $4e, $2b, $4d

    ldh [$4e], a                                  ; $4048: $e0 $4e
    jp c, $2541                                   ; $404a: $da $41 $25

    ld b, l                                       ; $404d: $45

    db $d0, $51

    ld d, c                                       ; $4050: $51
    ld b, l                                       ; $4051: $45
    ld [hl], l                                    ; $4052: $75
    ld b, l                                       ; $4053: $45

    db $fd, $56, $ba, $57, $01, $58, $a1, $57, $08, $58

    adc b                                         ; $405e: $88
    ld b, l                                       ; $405f: $45
    sub $4c                                       ; $4060: $d6 $4c

    ld a, $07                                     ; $4062: $3e $07
    ld hl, $4072                                  ; $4064: $21 $72 $40
    call Call_000_23e8                            ; $4067: $cd $e8 $23
    ret                                           ; $406a: $c9


    ld hl, $4072                                  ; $406b: $21 $72 $40
    call Call_000_2449                            ; $406e: $cd $49 $24
    ret                                           ; $4071: $c9


    ld a, $04                                     ; $4072: $3e $04
    ldh [$96], a                                  ; $4074: $e0 $96
    ldh [rSVBK], a                                ; $4076: $e0 $70
    ld a, [$c325]                                 ; $4078: $fa $25 $c3
    ld h, a                                       ; $407b: $67
    ld a, [$c323]                                 ; $407c: $fa $23 $c3
    sub h                                         ; $407f: $94
    jr z, jr_004_4094                             ; $4080: $28 $12

    bit 7, a                                      ; $4082: $cb $7f
    jr nz, jr_004_408e                            ; $4084: $20 $08

    ld bc, $fb13                                  ; $4086: $01 $13 $fb
    call Call_000_2a8a                            ; $4089: $cd $8a $2a
    jr jr_004_4094                                ; $408c: $18 $06

jr_004_408e:
    ld bc, $fb00                                  ; $408e: $01 $00 $fb
    call Call_000_2a8a                            ; $4091: $cd $8a $2a

jr_004_4094:
    ld a, [$c324]                                 ; $4094: $fa $24 $c3
    ld h, a                                       ; $4097: $67
    ld a, [$c321]                                 ; $4098: $fa $21 $c3
    sub h                                         ; $409b: $94
    jr z, jr_004_40b0                             ; $409c: $28 $12

    bit 7, a                                      ; $409e: $cb $7f
    jr nz, jr_004_40aa                            ; $40a0: $20 $08

    ld bc, $15fa                                  ; $40a2: $01 $fa $15
    call Call_000_2af7                            ; $40a5: $cd $f7 $2a
    jr jr_004_40b0                                ; $40a8: $18 $06

jr_004_40aa:
    ld bc, $00fa                                  ; $40aa: $01 $fa $00
    call Call_000_2af7                            ; $40ad: $cd $f7 $2a

jr_004_40b0:
    ld a, [$c322]                                 ; $40b0: $fa $22 $c3
    ld c, a                                       ; $40b3: $4f
    ld a, [$c323]                                 ; $40b4: $fa $23 $c3
    ld [$c325], a                                 ; $40b7: $ea $25 $c3
    adc $00                                       ; $40ba: $ce $00
    sla c                                         ; $40bc: $cb $21
    rla                                           ; $40be: $17
    sla c                                         ; $40bf: $cb $21
    rla                                           ; $40c1: $17
    sla c                                         ; $40c2: $cb $21
    rla                                           ; $40c4: $17
    ld c, a                                       ; $40c5: $4f
    ld a, [$c369]                                 ; $40c6: $fa $69 $c3
    add c                                         ; $40c9: $81
    ldh [$8a], a                                  ; $40ca: $e0 $8a
    ld a, [$c320]                                 ; $40cc: $fa $20 $c3
    ld c, a                                       ; $40cf: $4f
    ld a, [$c321]                                 ; $40d0: $fa $21 $c3
    ld [$c324], a                                 ; $40d3: $ea $24 $c3
    adc $00                                       ; $40d6: $ce $00
    sla c                                         ; $40d8: $cb $21
    rla                                           ; $40da: $17
    sla c                                         ; $40db: $cb $21
    rla                                           ; $40dd: $17
    sla c                                         ; $40de: $cb $21
    rla                                           ; $40e0: $17
    ld c, a                                       ; $40e1: $4f
    ld a, [$c368]                                 ; $40e2: $fa $68 $c3
    add c                                         ; $40e5: $81
    ldh [$8b], a                                  ; $40e6: $e0 $8b
    ret                                           ; $40e8: $c9


    push af                                       ; $40e9: $f5
    push bc                                       ; $40ea: $c5
    push hl                                       ; $40eb: $e5
    ld a, $04                                     ; $40ec: $3e $04
    ldh [$96], a                                  ; $40ee: $e0 $96
    ldh [rSVBK], a                                ; $40f0: $e0 $70
    ld hl, $d000                                  ; $40f2: $21 $00 $d0
    ld c, $60                                     ; $40f5: $0e $60
    call Call_000_03a7                            ; $40f7: $cd $a7 $03
    ld a, $05                                     ; $40fa: $3e $05
    ld hl, $4b69                                  ; $40fc: $21 $69 $4b
    call Call_000_23e8                            ; $40ff: $cd $e8 $23
    xor a                                         ; $4102: $af
    ld [$c289], a                                 ; $4103: $ea $89 $c2
    ld [$da00], a                                 ; $4106: $ea $00 $da
    pop hl                                        ; $4109: $e1
    pop bc                                        ; $410a: $c1
    pop af                                        ; $410b: $f1
    ret                                           ; $410c: $c9


    push af                                       ; $410d: $f5
    push bc                                       ; $410e: $c5
    push hl                                       ; $410f: $e5
    ld a, $04                                     ; $4110: $3e $04
    ldh [$96], a                                  ; $4112: $e0 $96
    ldh [rSVBK], a                                ; $4114: $e0 $70
    ld hl, $d000                                  ; $4116: $21 $00 $d0
    ld c, $60                                     ; $4119: $0e $60
    call Call_000_03a7                            ; $411b: $cd $a7 $03
    ld a, $0a                                     ; $411e: $3e $0a
    ld hl, $4234                                  ; $4120: $21 $34 $42
    call Call_000_23e8                            ; $4123: $cd $e8 $23
    ld a, $05                                     ; $4126: $3e $05
    ld hl, $4b69                                  ; $4128: $21 $69 $4b
    call Call_000_23e8                            ; $412b: $cd $e8 $23
    xor a                                         ; $412e: $af
    ld [$c289], a                                 ; $412f: $ea $89 $c2
    ld [$da00], a                                 ; $4132: $ea $00 $da
    pop hl                                        ; $4135: $e1
    pop bc                                        ; $4136: $c1
    pop af                                        ; $4137: $f1
    ret                                           ; $4138: $c9


Call_004_4139:
    push af                                       ; $4139: $f5
    push de                                       ; $413a: $d5
    push bc                                       ; $413b: $c5
    ld hl, $d000                                  ; $413c: $21 $00 $d0
    ld c, $18                                     ; $413f: $0e $18

jr_004_4141:
    inc hl                                        ; $4141: $23
    ld a, [hl-]                                   ; $4142: $3a
    or a                                          ; $4143: $b7
    jr z, jr_004_4154                             ; $4144: $28 $0e

    ld de, $0040                                  ; $4146: $11 $40 $00
    add hl, de                                    ; $4149: $19
    dec c                                         ; $414a: $0d
    jr nz, jr_004_4141                            ; $414b: $20 $f4

    ld hl, $0000                                  ; $414d: $21 $00 $00
    pop bc                                        ; $4150: $c1
    pop de                                        ; $4151: $d1
    pop af                                        ; $4152: $f1
    ret                                           ; $4153: $c9


jr_004_4154:
    ld e, l                                       ; $4154: $5d
    ld d, h                                       ; $4155: $54
    ld hl, $002c                                  ; $4156: $21 $2c $00
    add hl, de                                    ; $4159: $19
    ld a, $18                                     ; $415a: $3e $18
    sub c                                         ; $415c: $91
    ld [hl], a                                    ; $415d: $77
    ld h, a                                       ; $415e: $67
    ld l, $00                                     ; $415f: $2e $00
    srl h                                         ; $4161: $cb $3c
    rr l                                          ; $4163: $cb $1d
    srl h                                         ; $4165: $cb $3c
    rr l                                          ; $4167: $cb $1d
    ld bc, $8000                                  ; $4169: $01 $00 $80
    add hl, bc                                    ; $416c: $09
    ld c, l                                       ; $416d: $4d
    ld b, h                                       ; $416e: $44
    ld hl, $0038                                  ; $416f: $21 $38 $00
    add hl, de                                    ; $4172: $19
    ld a, c                                       ; $4173: $79
    ld [hl+], a                                   ; $4174: $22
    ld [hl], b                                    ; $4175: $70
    ld l, e                                       ; $4176: $6b
    ld h, d                                       ; $4177: $62
    push hl                                       ; $4178: $e5
    ld de, $0011                                  ; $4179: $11 $11 $00
    add hl, de                                    ; $417c: $19
    ld [hl], $10                                  ; $417d: $36 $10
    pop hl                                        ; $417f: $e1
    push hl                                       ; $4180: $e5
    ld de, $000e                                  ; $4181: $11 $0e $00
    add hl, de                                    ; $4184: $19
    ld [hl], $20                                  ; $4185: $36 $20
    inc hl                                        ; $4187: $23
    ld [hl], $00                                  ; $4188: $36 $00
    pop hl                                        ; $418a: $e1
    push hl                                       ; $418b: $e5
    ld de, $0004                                  ; $418c: $11 $04 $00
    add hl, de                                    ; $418f: $19
    push hl                                       ; $4190: $e5
    call Call_000_0a61                            ; $4191: $cd $61 $0a
    ld a, h                                       ; $4194: $7c
    and $0f                                       ; $4195: $e6 $0f
    add $08                                       ; $4197: $c6 $08
    ld h, a                                       ; $4199: $67
    ld hl, $0800                                  ; $419a: $21 $00 $08
    ld c, l                                       ; $419d: $4d
    ld b, h                                       ; $419e: $44
    pop hl                                        ; $419f: $e1
    ld [hl], c                                    ; $41a0: $71
    inc hl                                        ; $41a1: $23
    ld [hl], b                                    ; $41a2: $70
    inc hl                                        ; $41a3: $23
    push hl                                       ; $41a4: $e5
    call Call_000_0a61                            ; $41a5: $cd $61 $0a
    ld a, h                                       ; $41a8: $7c
    and $0f                                       ; $41a9: $e6 $0f
    add $08                                       ; $41ab: $c6 $08
    ld h, a                                       ; $41ad: $67
    ld hl, $0800                                  ; $41ae: $21 $00 $08
    ld c, l                                       ; $41b1: $4d
    ld b, h                                       ; $41b2: $44
    pop hl                                        ; $41b3: $e1
    ld [hl], c                                    ; $41b4: $71
    inc hl                                        ; $41b5: $23
    ld [hl], b                                    ; $41b6: $70
    inc hl                                        ; $41b7: $23
    pop hl                                        ; $41b8: $e1
    push hl                                       ; $41b9: $e5
    ld de, $0005                                  ; $41ba: $11 $05 $00
    add hl, de                                    ; $41bd: $19
    ld b, [hl]                                    ; $41be: $46
    pop hl                                        ; $41bf: $e1
    push hl                                       ; $41c0: $e5
    ld de, $0018                                  ; $41c1: $11 $18 $00
    add hl, de                                    ; $41c4: $19
    ld [hl], b                                    ; $41c5: $70
    pop hl                                        ; $41c6: $e1
    push hl                                       ; $41c7: $e5
    ld de, $0007                                  ; $41c8: $11 $07 $00
    add hl, de                                    ; $41cb: $19
    ld b, [hl]                                    ; $41cc: $46
    pop hl                                        ; $41cd: $e1
    push hl                                       ; $41ce: $e5
    ld de, $0019                                  ; $41cf: $11 $19 $00
    add hl, de                                    ; $41d2: $19
    ld [hl], b                                    ; $41d3: $70
    pop hl                                        ; $41d4: $e1
    pop bc                                        ; $41d5: $c1
    pop de                                        ; $41d6: $d1
    pop af                                        ; $41d7: $f1
    jr jr_004_41e2                                ; $41d8: $18 $08

Call_004_41da:
    push af                                       ; $41da: $f5
    ld a, h                                       ; $41db: $7c
    or a                                          ; $41dc: $b7
    jr nz, jr_004_41e1                            ; $41dd: $20 $02

    pop af                                        ; $41df: $f1
    ret                                           ; $41e0: $c9


jr_004_41e1:
    pop af                                        ; $41e1: $f1

jr_004_41e2:
    push hl                                       ; $41e2: $e5
    ld [hl], e                                    ; $41e3: $73
    inc hl                                        ; $41e4: $23
    ld [hl], d                                    ; $41e5: $72
    inc hl                                        ; $41e6: $23
    ld [hl], a                                    ; $41e7: $77
    pop hl                                        ; $41e8: $e1
    ret                                           ; $41e9: $c9


Call_004_41ea:
    push af                                       ; $41ea: $f5
    ld a, h                                       ; $41eb: $7c
    or a                                          ; $41ec: $b7
    jr nz, jr_004_41f1                            ; $41ed: $20 $02

    pop af                                        ; $41ef: $f1
    ret                                           ; $41f0: $c9


jr_004_41f1:
    pop af                                        ; $41f1: $f1
    push hl                                       ; $41f2: $e5
    push de                                       ; $41f3: $d5
    ld de, $0016                                  ; $41f4: $11 $16 $00
    add hl, de                                    ; $41f7: $19
    ld [hl], a                                    ; $41f8: $77
    pop de                                        ; $41f9: $d1
    pop hl                                        ; $41fa: $e1
    ret                                           ; $41fb: $c9


Call_004_41fc:
    push af                                       ; $41fc: $f5
    ld a, h                                       ; $41fd: $7c
    or a                                          ; $41fe: $b7
    jr z, jr_004_420a                             ; $41ff: $28 $09

    push hl                                       ; $4201: $e5
    ld a, $18                                     ; $4202: $3e $18
    add l                                         ; $4204: $85
    ld l, a                                       ; $4205: $6f
    ld [hl], e                                    ; $4206: $73
    inc hl                                        ; $4207: $23
    ld [hl], d                                    ; $4208: $72
    pop hl                                        ; $4209: $e1

jr_004_420a:
    pop af                                        ; $420a: $f1
    ret                                           ; $420b: $c9


    db $c1, $45, $c3, $45, $d8, $45

    jp hl                                         ; $4212: $e9


    ld b, l                                       ; $4213: $45
    ld a, c                                       ; $4214: $79
    ld b, [hl]                                    ; $4215: $46
    ld [de], a                                    ; $4216: $12
    ld b, [hl]                                    ; $4217: $46
    and d                                         ; $4218: $a2
    ld b, [hl]                                    ; $4219: $46

    db $fb, $46

    ld d, [hl]                                    ; $421c: $56
    ld b, a                                       ; $421d: $47

    db $a2, $47

    ld c, l                                       ; $4220: $4d
    ld c, b                                       ; $4221: $48

    db $fc, $48, $a2, $49, $b1, $49

    db $ec                                        ; $4228: $ec
    ld c, c                                       ; $4229: $49
    ld d, a                                       ; $422a: $57
    ld c, d                                       ; $422b: $4a

    db $5b, $4a

    ld [hl], c                                    ; $422e: $71
    ld c, d                                       ; $422f: $4a

    db $7c, $4a, $6c, $47

    ld a, $04                                     ; $4234: $3e $04
    ldh [$96], a                                  ; $4236: $e0 $96
    ldh [rSVBK], a                                ; $4238: $e0 $70
    ld hl, $d000                                  ; $423a: $21 $00 $d0
    ld c, $18                                     ; $423d: $0e $18

Jump_004_423f:
    inc hl                                        ; $423f: $23
    ld a, [hl-]                                   ; $4240: $3a
    or a                                          ; $4241: $b7
    jp z, Jump_004_44b2                           ; $4242: $ca $b2 $44

    push af                                       ; $4245: $f5
    push bc                                       ; $4246: $c5
    push de                                       ; $4247: $d5
    push hl                                       ; $4248: $e5
    ld a, l                                       ; $4249: $7d
    ldh [$e0], a                                  ; $424a: $e0 $e0
    ld a, h                                       ; $424c: $7c
    ldh [$e1], a                                  ; $424d: $e0 $e1
    ld c, l                                       ; $424f: $4d
    ld b, h                                       ; $4250: $44
    ld hl, $001a                                  ; $4251: $21 $1a $00
    add hl, bc                                    ; $4254: $09
    ld a, [hl]                                    ; $4255: $7e
    rrca                                          ; $4256: $0f
    jr c, jr_004_4299                             ; $4257: $38 $40

    ld hl, $0015                                  ; $4259: $21 $15 $00
    add hl, bc                                    ; $425c: $09
    ld a, [hl]                                    ; $425d: $7e
    or a                                          ; $425e: $b7
    jr z, jr_004_4264                             ; $425f: $28 $03

    dec [hl]                                      ; $4261: $35
    jr jr_004_4299                                ; $4262: $18 $35

jr_004_4264:
    ld hl, $ffe0                                  ; $4264: $21 $e0 $ff
    ld a, [hl+]                                   ; $4267: $2a
    ld h, [hl]                                    ; $4268: $66
    add $00                                       ; $4269: $c6 $00
    ld l, a                                       ; $426b: $6f
    ld c, [hl]                                    ; $426c: $4e
    inc hl                                        ; $426d: $23
    ld b, [hl]                                    ; $426e: $46
    inc hl                                        ; $426f: $23

jr_004_4270:
    ld d, [hl]                                    ; $4270: $56
    ld a, d                                       ; $4271: $7a
    ld h, b                                       ; $4272: $60
    ld l, c                                       ; $4273: $69
    call Call_000_0611                            ; $4274: $cd $11 $06
    ld hl, $4288                                  ; $4277: $21 $88 $42
    push hl                                       ; $427a: $e5
    ld hl, $420c                                  ; $427b: $21 $0c $42
    add a                                         ; $427e: $87
    add l                                         ; $427f: $85
    ld l, a                                       ; $4280: $6f
    jr nc, jr_004_4284                            ; $4281: $30 $01

    inc h                                         ; $4283: $24

jr_004_4284:
    ld a, [hl+]                                   ; $4284: $2a
    ld h, [hl]                                    ; $4285: $66
    ld l, a                                       ; $4286: $6f
    jp hl                                         ; $4287: $e9


    ld d, a                                       ; $4288: $57
    ld hl, $ffe0                                  ; $4289: $21 $e0 $ff
    ld a, [hl+]                                   ; $428c: $2a
    ld h, [hl]                                    ; $428d: $66
    add $00                                       ; $428e: $c6 $00
    ld l, a                                       ; $4290: $6f
    ld [hl], c                                    ; $4291: $71
    inc hl                                        ; $4292: $23
    ld [hl], b                                    ; $4293: $70
    inc hl                                        ; $4294: $23
    ld a, d                                       ; $4295: $7a
    or a                                          ; $4296: $b7
    jr nz, jr_004_4270                            ; $4297: $20 $d7

jr_004_4299:
    ld hl, $ffe0                                  ; $4299: $21 $e0 $ff
    ld a, [hl+]                                   ; $429c: $2a
    ld b, [hl]                                    ; $429d: $46
    ld c, a                                       ; $429e: $4f
    ld hl, $001c                                  ; $429f: $21 $1c $00
    add hl, bc                                    ; $42a2: $09
    ld a, [hl+]                                   ; $42a3: $2a
    ld d, [hl]                                    ; $42a4: $56
    ld e, a                                       ; $42a5: $5f
    ld hl, $0008                                  ; $42a6: $21 $08 $00
    add hl, bc                                    ; $42a9: $09
    ld a, [hl+]                                   ; $42aa: $2a
    ld h, [hl]                                    ; $42ab: $66
    ld l, a                                       ; $42ac: $6f
    or h                                          ; $42ad: $b4
    or d                                          ; $42ae: $b2
    or e                                          ; $42af: $b3
    jr z, jr_004_42e0                             ; $42b0: $28 $2e

    push hl                                       ; $42b2: $e5
    ld hl, $0010                                  ; $42b3: $21 $10 $00
    add hl, de                                    ; $42b6: $19
    ld e, l                                       ; $42b7: $5d
    ld d, h                                       ; $42b8: $54
    pop hl                                        ; $42b9: $e1
    add hl, de                                    ; $42ba: $19
    bit 7, h                                      ; $42bb: $cb $7c
    jr nz, jr_004_42ce                            ; $42bd: $20 $0f

    xor a                                         ; $42bf: $af
    ld hl, $0008                                  ; $42c0: $21 $08 $00
    add hl, bc                                    ; $42c3: $09
    ld [hl+], a                                   ; $42c4: $22
    ld [hl+], a                                   ; $42c5: $22
    ld hl, $001c                                  ; $42c6: $21 $1c $00
    add hl, bc                                    ; $42c9: $09
    ld [hl+], a                                   ; $42ca: $22
    ld [hl+], a                                   ; $42cb: $22
    jr jr_004_42e0                                ; $42cc: $18 $12

jr_004_42ce:
    push hl                                       ; $42ce: $e5
    ld hl, $001c                                  ; $42cf: $21 $1c $00
    add hl, bc                                    ; $42d2: $09
    ld a, e                                       ; $42d3: $7b
    ld [hl+], a                                   ; $42d4: $22
    ld [hl], d                                    ; $42d5: $72
    pop hl                                        ; $42d6: $e1
    ld e, l                                       ; $42d7: $5d
    ld d, h                                       ; $42d8: $54
    ld hl, $0008                                  ; $42d9: $21 $08 $00
    add hl, bc                                    ; $42dc: $09
    ld a, e                                       ; $42dd: $7b
    ld [hl+], a                                   ; $42de: $22
    ld [hl], d                                    ; $42df: $72

jr_004_42e0:
    ld hl, $001a                                  ; $42e0: $21 $1a $00
    add hl, bc                                    ; $42e3: $09
    bit 1, [hl]                                   ; $42e4: $cb $4e
    jp nz, Jump_004_44ae                          ; $42e6: $c2 $ae $44

    ld hl, $0012                                  ; $42e9: $21 $12 $00
    add hl, bc                                    ; $42ec: $09
    ld a, [hl]                                    ; $42ed: $7e
    or a                                          ; $42ee: $b7
    jp z, Jump_004_4439                           ; $42ef: $ca $39 $44

    ld hl, $000a                                  ; $42f2: $21 $0a $00
    add hl, bc                                    ; $42f5: $09
    ld a, [hl+]                                   ; $42f6: $2a
    ld h, [hl]                                    ; $42f7: $66
    ld l, a                                       ; $42f8: $6f
    push hl                                       ; $42f9: $e5
    ld hl, $0004                                  ; $42fa: $21 $04 $00
    add hl, bc                                    ; $42fd: $09
    ld a, [hl+]                                   ; $42fe: $2a
    ld h, [hl]                                    ; $42ff: $66
    ld l, a                                       ; $4300: $6f
    pop de                                        ; $4301: $d1
    call Call_000_08ac                            ; $4302: $cd $ac $08
    push hl                                       ; $4305: $e5
    ld hl, $000c                                  ; $4306: $21 $0c $00
    add hl, bc                                    ; $4309: $09
    ld a, [hl+]                                   ; $430a: $2a
    ld h, [hl]                                    ; $430b: $66
    ld l, a                                       ; $430c: $6f
    push hl                                       ; $430d: $e5
    ld hl, $0006                                  ; $430e: $21 $06 $00
    add hl, bc                                    ; $4311: $09
    ld a, [hl+]                                   ; $4312: $2a
    ld h, [hl]                                    ; $4313: $66
    ld l, a                                       ; $4314: $6f
    pop de                                        ; $4315: $d1
    call Call_000_08ac                            ; $4316: $cd $ac $08
    pop de                                        ; $4319: $d1
    push de                                       ; $431a: $d5
    push hl                                       ; $431b: $e5
    call Call_000_0a7b                            ; $431c: $cd $7b $0a
    add $80                                       ; $431f: $c6 $80
    push af                                       ; $4321: $f5
    ld b, a                                       ; $4322: $47
    ld hl, $ffe0                                  ; $4323: $21 $e0 $ff
    ld a, [hl+]                                   ; $4326: $2a
    ld h, [hl]                                    ; $4327: $66
    add $10                                       ; $4328: $c6 $10
    ld l, a                                       ; $432a: $6f
    ld c, [hl]                                    ; $432b: $4e
    ld a, b                                       ; $432c: $78
    sub c                                         ; $432d: $91
    ld b, a                                       ; $432e: $47
    bit 7, a                                      ; $432f: $cb $7f
    jr z, jr_004_4335                             ; $4331: $28 $02

    cpl                                           ; $4333: $2f
    inc a                                         ; $4334: $3c

jr_004_4335:
    cp $60                                        ; $4335: $fe $60
    jr c, jr_004_4349                             ; $4337: $38 $10

    ld a, c                                       ; $4339: $79
    add $80                                       ; $433a: $c6 $80
    ld c, a                                       ; $433c: $4f
    ld a, $80                                     ; $433d: $3e $80
    sub b                                         ; $433f: $90
    cpl                                           ; $4340: $2f
    inc a                                         ; $4341: $3c
    ld b, a                                       ; $4342: $47
    bit 7, a                                      ; $4343: $cb $7f
    jr z, jr_004_4349                             ; $4345: $28 $02

    cpl                                           ; $4347: $2f
    inc a                                         ; $4348: $3c

jr_004_4349:
    inc hl                                        ; $4349: $23
    ld d, [hl]                                    ; $434a: $56
    cp d                                          ; $434b: $ba
    ld a, b                                       ; $434c: $78
    jr c, jr_004_4356                             ; $434d: $38 $07

    ld a, d                                       ; $434f: $7a
    bit 7, b                                      ; $4350: $cb $78
    jr z, jr_004_4356                             ; $4352: $28 $02

    cpl                                           ; $4354: $2f
    inc a                                         ; $4355: $3c

jr_004_4356:
    add c                                         ; $4356: $81
    dec hl                                        ; $4357: $2b
    ld [hl], a                                    ; $4358: $77
    push af                                       ; $4359: $f5
    ld hl, $ffe0                                  ; $435a: $21 $e0 $ff
    ld a, [hl+]                                   ; $435d: $2a
    ld h, [hl]                                    ; $435e: $66
    add $0e                                       ; $435f: $c6 $0e
    ld l, a                                       ; $4361: $6f
    ld a, [hl+]                                   ; $4362: $2a
    ld h, [hl]                                    ; $4363: $66
    ld l, a                                       ; $4364: $6f
    pop af                                        ; $4365: $f1
    call Call_000_0b31                            ; $4366: $cd $31 $0b
    push hl                                       ; $4369: $e5
    ld hl, $ffe0                                  ; $436a: $21 $e0 $ff
    ld a, [hl+]                                   ; $436d: $2a
    ld b, [hl]                                    ; $436e: $46
    ld c, a                                       ; $436f: $4f
    ld hl, $001b                                  ; $4370: $21 $1b $00
    add hl, bc                                    ; $4373: $09
    ld a, [hl]                                    ; $4374: $7e
    pop hl                                        ; $4375: $e1
    and a                                         ; $4376: $a7
    jr z, jr_004_43a1                             ; $4377: $28 $28

    push de                                       ; $4379: $d5
    push hl                                       ; $437a: $e5
    push de                                       ; $437b: $d5
    ld e, l                                       ; $437c: $5d
    ld d, h                                       ; $437d: $54
    ld hl, $0004                                  ; $437e: $21 $04 $00
    add hl, bc                                    ; $4381: $09
    ld a, [hl+]                                   ; $4382: $2a
    ld h, [hl]                                    ; $4383: $66
    ld l, a                                       ; $4384: $6f
    add hl, de                                    ; $4385: $19
    pop de                                        ; $4386: $d1
    push hl                                       ; $4387: $e5
    ld hl, $0006                                  ; $4388: $21 $06 $00
    add hl, bc                                    ; $438b: $09
    ld a, [hl+]                                   ; $438c: $2a
    ld h, [hl]                                    ; $438d: $66
    ld l, a                                       ; $438e: $6f
    add hl, de                                    ; $438f: $19
    ld e, l                                       ; $4390: $5d
    ld d, h                                       ; $4391: $54
    pop hl                                        ; $4392: $e1
    call Call_004_554d                            ; $4393: $cd $4d $55
    pop hl                                        ; $4396: $e1
    pop de                                        ; $4397: $d1
    and a                                         ; $4398: $a7
    jr z, jr_004_43a1                             ; $4399: $28 $06

    pop af                                        ; $439b: $f1
    pop hl                                        ; $439c: $e1
    pop de                                        ; $439d: $d1
    jp Jump_004_4439                              ; $439e: $c3 $39 $44


jr_004_43a1:
    ld bc, $0001                                  ; $43a1: $01 $01 $00
    pop af                                        ; $43a4: $f1
    add $20                                       ; $43a5: $c6 $20
    and $40                                       ; $43a7: $e6 $40
    jr z, jr_004_43ac                             ; $43a9: $28 $01

    inc c                                         ; $43ab: $0c

jr_004_43ac:
    push hl                                       ; $43ac: $e5
    ld hl, $ffe0                                  ; $43ad: $21 $e0 $ff
    ld a, [hl+]                                   ; $43b0: $2a
    ld h, [hl]                                    ; $43b1: $66
    add $06                                       ; $43b2: $c6 $06
    ld l, a                                       ; $43b4: $6f
    push hl                                       ; $43b5: $e5
    ld a, [hl+]                                   ; $43b6: $2a
    ld h, [hl]                                    ; $43b7: $66
    ld l, a                                       ; $43b8: $6f
    add hl, de                                    ; $43b9: $19
    pop de                                        ; $43ba: $d1
    ld a, l                                       ; $43bb: $7d
    ld [de], a                                    ; $43bc: $12
    inc de                                        ; $43bd: $13
    ld a, h                                       ; $43be: $7c
    ld [de], a                                    ; $43bf: $12
    push hl                                       ; $43c0: $e5
    ld hl, $ffe0                                  ; $43c1: $21 $e0 $ff
    ld a, [hl+]                                   ; $43c4: $2a
    ld h, [hl]                                    ; $43c5: $66
    add $0c                                       ; $43c6: $c6 $0c
    ld l, a                                       ; $43c8: $6f
    ld a, [hl+]                                   ; $43c9: $2a
    ld d, [hl]                                    ; $43ca: $56
    ld e, a                                       ; $43cb: $5f
    pop hl                                        ; $43cc: $e1
    call Call_000_08ac                            ; $43cd: $cd $ac $08
    ld a, h                                       ; $43d0: $7c
    or l                                          ; $43d1: $b5
    jr nz, jr_004_43d6                            ; $43d2: $20 $02

    set 1, b                                      ; $43d4: $cb $c8

jr_004_43d6:
    pop de                                        ; $43d6: $d1
    ld a, h                                       ; $43d7: $7c
    pop hl                                        ; $43d8: $e1
    xor h                                         ; $43d9: $ac
    bit 7, a                                      ; $43da: $cb $7f
    jr z, jr_004_43e0                             ; $43dc: $28 $02

    set 1, b                                      ; $43de: $cb $c8

jr_004_43e0:
    ld hl, $ffe0                                  ; $43e0: $21 $e0 $ff
    ld a, [hl+]                                   ; $43e3: $2a
    ld h, [hl]                                    ; $43e4: $66
    add $04                                       ; $43e5: $c6 $04
    ld l, a                                       ; $43e7: $6f
    push hl                                       ; $43e8: $e5
    ld a, [hl+]                                   ; $43e9: $2a
    ld h, [hl]                                    ; $43ea: $66
    ld l, a                                       ; $43eb: $6f
    add hl, de                                    ; $43ec: $19
    pop de                                        ; $43ed: $d1
    ld a, l                                       ; $43ee: $7d
    ld [de], a                                    ; $43ef: $12
    inc de                                        ; $43f0: $13
    ld a, h                                       ; $43f1: $7c
    ld [de], a                                    ; $43f2: $12
    push hl                                       ; $43f3: $e5
    ld hl, $ffe0                                  ; $43f4: $21 $e0 $ff
    ld a, [hl+]                                   ; $43f7: $2a
    ld h, [hl]                                    ; $43f8: $66
    add $0a                                       ; $43f9: $c6 $0a
    ld l, a                                       ; $43fb: $6f
    ld a, [hl+]                                   ; $43fc: $2a
    ld d, [hl]                                    ; $43fd: $56
    ld e, a                                       ; $43fe: $5f
    pop hl                                        ; $43ff: $e1
    call Call_000_08ac                            ; $4400: $cd $ac $08
    ld a, h                                       ; $4403: $7c
    or l                                          ; $4404: $b5
    jr nz, jr_004_4409                            ; $4405: $20 $02

    set 0, b                                      ; $4407: $cb $c0

jr_004_4409:
    ld a, h                                       ; $4409: $7c
    pop hl                                        ; $440a: $e1
    xor h                                         ; $440b: $ac
    bit 7, a                                      ; $440c: $cb $7f
    jr z, jr_004_4412                             ; $440e: $28 $02

    set 0, b                                      ; $4410: $cb $c0

jr_004_4412:
    ld e, c                                       ; $4412: $59
    ld d, b                                       ; $4413: $50
    ld hl, $ffe0                                  ; $4414: $21 $e0 $ff
    ld a, [hl+]                                   ; $4417: $2a
    ld b, [hl]                                    ; $4418: $46
    ld c, a                                       ; $4419: $4f
    ld a, d                                       ; $441a: $7a
    and e                                         ; $441b: $a3
    jr z, jr_004_4439                             ; $441c: $28 $1b

    ld hl, $0012                                  ; $441e: $21 $12 $00
    add hl, bc                                    ; $4421: $09
    ld [hl], $00                                  ; $4422: $36 $00
    ld hl, $0004                                  ; $4424: $21 $04 $00
    add hl, bc                                    ; $4427: $09
    push hl                                       ; $4428: $e5
    ld hl, $000a                                  ; $4429: $21 $0a $00
    add hl, bc                                    ; $442c: $09
    pop de                                        ; $442d: $d1
    ld a, [hl+]                                   ; $442e: $2a
    ld [de], a                                    ; $442f: $12
    inc de                                        ; $4430: $13
    ld a, [hl+]                                   ; $4431: $2a
    ld [de], a                                    ; $4432: $12
    inc de                                        ; $4433: $13
    ld a, [hl+]                                   ; $4434: $2a
    ld [de], a                                    ; $4435: $12
    inc de                                        ; $4436: $13
    ld a, [hl]                                    ; $4437: $7e
    ld [de], a                                    ; $4438: $12

Jump_004_4439:
jr_004_4439:
    ld hl, $0016                                  ; $4439: $21 $16 $00
    add hl, bc                                    ; $443c: $09
    ld a, [hl]                                    ; $443d: $7e
    cp $01                                        ; $443e: $fe $01
    jr nz, jr_004_44ae                            ; $4440: $20 $6c

    ld a, [$da00]                                 ; $4442: $fa $00 $da
    or a                                          ; $4445: $b7
    jr nz, jr_004_44ae                            ; $4446: $20 $66

    ld hl, $0004                                  ; $4448: $21 $04 $00
    add hl, bc                                    ; $444b: $09
    ld a, [hl+]                                   ; $444c: $2a
    ld h, [hl]                                    ; $444d: $66
    ld l, a                                       ; $444e: $6f
    ld de, $f610                                  ; $444f: $11 $10 $f6
    add hl, de                                    ; $4452: $19
    ld a, [$c329]                                 ; $4453: $fa $29 $c3
    ld d, a                                       ; $4456: $57
    ld a, h                                       ; $4457: $7c
    sub d                                         ; $4458: $92
    bit 7, a                                      ; $4459: $cb $7f
    jr z, jr_004_4462                             ; $445b: $28 $05

    ld h, d                                       ; $445d: $62
    ld l, $00                                     ; $445e: $2e $00
    jr jr_004_4471                                ; $4460: $18 $0f

jr_004_4462:
    ld a, [$c32b]                                 ; $4462: $fa $2b $c3
    sub $14                                       ; $4465: $d6 $14
    ld d, a                                       ; $4467: $57
    ld a, h                                       ; $4468: $7c
    sub d                                         ; $4469: $92
    bit 7, a                                      ; $446a: $cb $7f
    jr nz, jr_004_4471                            ; $446c: $20 $03

    ld h, d                                       ; $446e: $62
    ld l, $00                                     ; $446f: $2e $00

jr_004_4471:
    ld a, l                                       ; $4471: $7d
    and $e0                                       ; $4472: $e6 $e0
    ld de, $c320                                  ; $4474: $11 $20 $c3
    ld [de], a                                    ; $4477: $12
    inc de                                        ; $4478: $13
    ld a, h                                       ; $4479: $7c
    ld [de], a                                    ; $447a: $12
    ld hl, $0006                                  ; $447b: $21 $06 $00
    add hl, bc                                    ; $447e: $09
    ld a, [hl+]                                   ; $447f: $2a
    ld h, [hl]                                    ; $4480: $66
    ld l, a                                       ; $4481: $6f
    ld de, $f510                                  ; $4482: $11 $10 $f5
    add hl, de                                    ; $4485: $19
    ld a, [$c32a]                                 ; $4486: $fa $2a $c3
    ld d, a                                       ; $4489: $57
    ld a, h                                       ; $448a: $7c
    sub d                                         ; $448b: $92
    bit 7, a                                      ; $448c: $cb $7f
    jr z, jr_004_4495                             ; $448e: $28 $05

    ld h, d                                       ; $4490: $62
    ld l, $00                                     ; $4491: $2e $00
    jr jr_004_44a4                                ; $4493: $18 $0f

jr_004_4495:
    ld a, [$c32c]                                 ; $4495: $fa $2c $c3
    sub $12                                       ; $4498: $d6 $12
    ld d, a                                       ; $449a: $57
    ld a, h                                       ; $449b: $7c
    sub d                                         ; $449c: $92
    bit 7, a                                      ; $449d: $cb $7f
    jr nz, jr_004_44a4                            ; $449f: $20 $03

    ld h, d                                       ; $44a1: $62
    ld l, $00                                     ; $44a2: $2e $00

jr_004_44a4:
    ld a, l                                       ; $44a4: $7d
    and $e0                                       ; $44a5: $e6 $e0
    ld de, $c322                                  ; $44a7: $11 $22 $c3
    ld [de], a                                    ; $44aa: $12
    inc de                                        ; $44ab: $13
    ld a, h                                       ; $44ac: $7c
    ld [de], a                                    ; $44ad: $12

Jump_004_44ae:
jr_004_44ae:
    pop hl                                        ; $44ae: $e1
    pop de                                        ; $44af: $d1
    pop bc                                        ; $44b0: $c1
    pop af                                        ; $44b1: $f1

Jump_004_44b2:
    ld de, $0040                                  ; $44b2: $11 $40 $00
    add hl, de                                    ; $44b5: $19
    dec c                                         ; $44b6: $0d
    jp nz, Jump_004_423f                          ; $44b7: $c2 $3f $42

    ld hl, $c290                                  ; $44ba: $21 $90 $c2
    ld a, [hl+]                                   ; $44bd: $2a
    ld b, [hl]                                    ; $44be: $46
    ld c, a                                       ; $44bf: $4f
    inc b                                         ; $44c0: $04
    dec b                                         ; $44c1: $05
    jr z, jr_004_44e5                             ; $44c2: $28 $21

    ld hl, $0004                                  ; $44c4: $21 $04 $00
    add hl, bc                                    ; $44c7: $09
    ld de, $c2a0                                  ; $44c8: $11 $a0 $c2
    ld a, [hl+]                                   ; $44cb: $2a
    ld [de], a                                    ; $44cc: $12
    inc de                                        ; $44cd: $13
    ld a, [hl+]                                   ; $44ce: $2a
    ld [de], a                                    ; $44cf: $12
    ld hl, $0006                                  ; $44d0: $21 $06 $00
    add hl, bc                                    ; $44d3: $09
    ld de, $c2a2                                  ; $44d4: $11 $a2 $c2
    ld a, [hl+]                                   ; $44d7: $2a
    ld [de], a                                    ; $44d8: $12
    inc de                                        ; $44d9: $13
    ld a, [hl+]                                   ; $44da: $2a
    ld [de], a                                    ; $44db: $12
    ld hl, $0029                                  ; $44dc: $21 $29 $00
    add hl, bc                                    ; $44df: $09
    ld de, $c2a4                                  ; $44e0: $11 $a4 $c2
    ld a, [hl]                                    ; $44e3: $7e
    ld [de], a                                    ; $44e4: $12

jr_004_44e5:
    ret                                           ; $44e5: $c9


    push af                                       ; $44e6: $f5
    push de                                       ; $44e7: $d5
    ld a, $04                                     ; $44e8: $3e $04
    ldh [$96], a                                  ; $44ea: $e0 $96
    ldh [rSVBK], a                                ; $44ec: $e0 $70
    ldh a, [$95]                                  ; $44ee: $f0 $95
    ld de, $5288                                  ; $44f0: $11 $88 $52
    call Call_004_41da                            ; $44f3: $cd $da $41
    pop de                                        ; $44f6: $d1
    pop af                                        ; $44f7: $f1
    ret                                           ; $44f8: $c9


    inc h                                         ; $44f9: $24
    dec h                                         ; $44fa: $25
    ret z                                         ; $44fb: $c8

    push af                                       ; $44fc: $f5
    push de                                       ; $44fd: $d5
    push hl                                       ; $44fe: $e5
    ld a, $04                                     ; $44ff: $3e $04
    ldh [$96], a                                  ; $4501: $e0 $96
    ldh [rSVBK], a                                ; $4503: $e0 $70
    ldh a, [$95]                                  ; $4505: $f0 $95
    ld de, $527a                                  ; $4507: $11 $7a $52
    call Call_004_41da                            ; $450a: $cd $da $41
    ld e, l                                       ; $450d: $5d
    ld d, h                                       ; $450e: $54
    ld hl, $0017                                  ; $450f: $21 $17 $00
    add hl, de                                    ; $4512: $19
    ld [hl], $00                                  ; $4513: $36 $00
    ld hl, $001e                                  ; $4515: $21 $1e $00
    add hl, de                                    ; $4518: $19
    ld [hl], $00                                  ; $4519: $36 $00
    ld hl, $0033                                  ; $451b: $21 $33 $00
    add hl, de                                    ; $451e: $19
    ld [hl], $01                                  ; $451f: $36 $01
    pop hl                                        ; $4521: $e1
    pop de                                        ; $4522: $d1
    pop af                                        ; $4523: $f1
    ret                                           ; $4524: $c9


Call_004_4525:
    inc h                                         ; $4525: $24
    dec h                                         ; $4526: $25
    ret z                                         ; $4527: $c8

    inc d                                         ; $4528: $14
    dec d                                         ; $4529: $15
    ret z                                         ; $452a: $c8

    push af                                       ; $452b: $f5
    push de                                       ; $452c: $d5
    push hl                                       ; $452d: $e5
    push de                                       ; $452e: $d5
    ld a, $04                                     ; $452f: $3e $04
    ldh [$96], a                                  ; $4531: $e0 $96
    ldh [rSVBK], a                                ; $4533: $e0 $70
    ldh a, [$95]                                  ; $4535: $f0 $95
    ld de, $454b                                  ; $4537: $11 $4b $45
    call Call_004_41da                            ; $453a: $cd $da $41
    pop de                                        ; $453d: $d1
    call Call_004_41fc                            ; $453e: $cd $fc $41
    ld de, $0017                                  ; $4541: $11 $17 $00
    add hl, de                                    ; $4544: $19
    ld [hl], $00                                  ; $4545: $36 $00
    pop hl                                        ; $4547: $e1
    pop de                                        ; $4548: $d1
    pop af                                        ; $4549: $f1
    ret                                           ; $454a: $c9


    ld a, [bc]                                    ; $454b: $0a
    ld bc, $0c01                                  ; $454c: $01 $01 $0c
    db $fc                                        ; $454f: $fc
    rst $38                                       ; $4550: $ff

Call_004_4551:
    xor a                                         ; $4551: $af
    inc h                                         ; $4552: $24
    dec h                                         ; $4553: $25
    ret z                                         ; $4554: $c8

    push bc                                       ; $4555: $c5
    push de                                       ; $4556: $d5
    push hl                                       ; $4557: $e5
    ld a, $04                                     ; $4558: $3e $04
    ldh [$96], a                                  ; $455a: $e0 $96
    ldh [rSVBK], a                                ; $455c: $e0 $70
    ld c, l                                       ; $455e: $4d
    ld b, h                                       ; $455f: $44
    ld hl, $001c                                  ; $4560: $21 $1c $00
    add hl, bc                                    ; $4563: $09
    ld a, [hl+]                                   ; $4564: $2a
    ld d, [hl]                                    ; $4565: $56
    ld e, a                                       ; $4566: $5f
    ld hl, $0008                                  ; $4567: $21 $08 $00
    add hl, bc                                    ; $456a: $09
    ld a, [hl+]                                   ; $456b: $2a
    ld h, [hl]                                    ; $456c: $66
    ld l, a                                       ; $456d: $6f
    or h                                          ; $456e: $b4
    or d                                          ; $456f: $b2
    or e                                          ; $4570: $b3
    pop hl                                        ; $4571: $e1
    pop de                                        ; $4572: $d1
    pop bc                                        ; $4573: $c1
    ret                                           ; $4574: $c9


    push af                                       ; $4575: $f5
    push bc                                       ; $4576: $c5
    ld c, $78                                     ; $4577: $0e $78

jr_004_4579:
    call Call_004_4551                            ; $4579: $cd $51 $45
    and a                                         ; $457c: $a7
    jr z, jr_004_4585                             ; $457d: $28 $06

    call Call_000_2e3b                            ; $457f: $cd $3b $2e
    dec c                                         ; $4582: $0d
    jr nz, jr_004_4579                            ; $4583: $20 $f4

jr_004_4585:
    pop bc                                        ; $4585: $c1
    pop af                                        ; $4586: $f1
    ret                                           ; $4587: $c9


    xor a                                         ; $4588: $af
    inc h                                         ; $4589: $24
    dec h                                         ; $458a: $25
    ret z                                         ; $458b: $c8

    push de                                       ; $458c: $d5
    push hl                                       ; $458d: $e5
    ld a, $04                                     ; $458e: $3e $04
    ldh [$96], a                                  ; $4590: $e0 $96
    ldh [rSVBK], a                                ; $4592: $e0 $70
    ld e, l                                       ; $4594: $5d
    ld d, h                                       ; $4595: $54
    ld hl, $0004                                  ; $4596: $21 $04 $00
    add hl, de                                    ; $4599: $19
    ld a, $0a                                     ; $459a: $3e $0a
    add e                                         ; $459c: $83
    ld e, a                                       ; $459d: $5f
    jr nc, jr_004_45a1                            ; $459e: $30 $01

    inc d                                         ; $45a0: $14

jr_004_45a1:
    ld a, [de]                                    ; $45a1: $1a
    inc de                                        ; $45a2: $13
    cp [hl]                                       ; $45a3: $be
    inc hl                                        ; $45a4: $23
    jr nz, jr_004_45bc                            ; $45a5: $20 $15

    ld a, [de]                                    ; $45a7: $1a
    inc de                                        ; $45a8: $13
    cp [hl]                                       ; $45a9: $be
    inc hl                                        ; $45aa: $23
    jr nz, jr_004_45bc                            ; $45ab: $20 $0f

    ld a, [de]                                    ; $45ad: $1a
    inc de                                        ; $45ae: $13
    cp [hl]                                       ; $45af: $be
    inc hl                                        ; $45b0: $23
    jr nz, jr_004_45bc                            ; $45b1: $20 $09

    ld a, [de]                                    ; $45b3: $1a
    inc de                                        ; $45b4: $13
    cp [hl]                                       ; $45b5: $be
    inc hl                                        ; $45b6: $23
    jr nz, jr_004_45bc                            ; $45b7: $20 $03

    xor a                                         ; $45b9: $af
    jr jr_004_45be                                ; $45ba: $18 $02

jr_004_45bc:
    ld a, $01                                     ; $45bc: $3e $01

jr_004_45be:
    pop hl                                        ; $45be: $e1
    pop de                                        ; $45bf: $d1
    ret                                           ; $45c0: $c9


    xor a                                         ; $45c1: $af
    ret                                           ; $45c2: $c9


    inc bc                                        ; $45c3: $03
    ld a, d                                       ; $45c4: $7a
    ld l, c                                       ; $45c5: $69
    ld h, b                                       ; $45c6: $60
    call Call_000_0611                            ; $45c7: $cd $11 $06
    dec a                                         ; $45ca: $3d
    ld d, a                                       ; $45cb: $57
    ld hl, $ffe0                                  ; $45cc: $21 $e0 $ff
    ld a, [hl+]                                   ; $45cf: $2a
    ld h, [hl]                                    ; $45d0: $66
    add $15                                       ; $45d1: $c6 $15
    ld l, a                                       ; $45d3: $6f
    ld [hl], d                                    ; $45d4: $72
    inc bc                                        ; $45d5: $03
    xor a                                         ; $45d6: $af
    ret                                           ; $45d7: $c9


    ld hl, $ffe0                                  ; $45d8: $21 $e0 $ff
    ld a, [hl+]                                   ; $45db: $2a
    ld h, [hl]                                    ; $45dc: $66
    add $12                                       ; $45dd: $c6 $12
    ld l, a                                       ; $45df: $6f
    ld a, [hl]                                    ; $45e0: $7e
    and $01                                       ; $45e1: $e6 $01
    xor $01                                       ; $45e3: $ee $01
    jr z, jr_004_45e8                             ; $45e5: $28 $01

    inc bc                                        ; $45e7: $03

jr_004_45e8:
    ret                                           ; $45e8: $c9


    inc bc                                        ; $45e9: $03
    push bc                                       ; $45ea: $c5
    ld a, d                                       ; $45eb: $7a
    push af                                       ; $45ec: $f5
    ld hl, $ffe0                                  ; $45ed: $21 $e0 $ff
    ld a, [hl+]                                   ; $45f0: $2a
    ld h, [hl]                                    ; $45f1: $66
    add $04                                       ; $45f2: $c6 $04
    ld l, a                                       ; $45f4: $6f
    ld e, l                                       ; $45f5: $5d
    ld d, h                                       ; $45f6: $54
    pop af                                        ; $45f7: $f1
    ld l, c                                       ; $45f8: $69
    ld h, b                                       ; $45f9: $60
    ld bc, $0004                                  ; $45fa: $01 $04 $00
    call Call_000_0654                            ; $45fd: $cd $54 $06
    pop bc                                        ; $4600: $c1
    inc bc                                        ; $4601: $03
    inc bc                                        ; $4602: $03
    inc bc                                        ; $4603: $03
    inc bc                                        ; $4604: $03
    ld hl, $ffe0                                  ; $4605: $21 $e0 $ff
    ld a, [hl+]                                   ; $4608: $2a
    ld h, [hl]                                    ; $4609: $66
    add $12                                       ; $460a: $c6 $12
    ld l, a                                       ; $460c: $6f
    ld [hl], $00                                  ; $460d: $36 $00
    ld a, $01                                     ; $460f: $3e $01
    ret                                           ; $4611: $c9


    inc bc                                        ; $4612: $03
    push bc                                       ; $4613: $c5
    ld a, d                                       ; $4614: $7a
    ld l, c                                       ; $4615: $69
    ld h, b                                       ; $4616: $60
    call Call_000_0626                            ; $4617: $cd $26 $06
    push bc                                       ; $461a: $c5
    inc hl                                        ; $461b: $23
    inc hl                                        ; $461c: $23
    call Call_000_0626                            ; $461d: $cd $26 $06
    push bc                                       ; $4620: $c5
    inc hl                                        ; $4621: $23
    inc hl                                        ; $4622: $23
    call Call_000_0611                            ; $4623: $cd $11 $06
    push af                                       ; $4626: $f5
    push hl                                       ; $4627: $e5
    ld hl, $ffe0                                  ; $4628: $21 $e0 $ff
    ld a, [hl+]                                   ; $462b: $2a
    ld b, [hl]                                    ; $462c: $46
    ld c, a                                       ; $462d: $4f
    ld hl, $0004                                  ; $462e: $21 $04 $00
    add hl, bc                                    ; $4631: $09
    ld a, [hl+]                                   ; $4632: $2a
    ld h, [hl]                                    ; $4633: $66
    ld l, a                                       ; $4634: $6f
    call Call_000_08ac                            ; $4635: $cd $ac $08
    pop de                                        ; $4638: $d1
    push hl                                       ; $4639: $e5
    ld hl, $0006                                  ; $463a: $21 $06 $00
    add hl, bc                                    ; $463d: $09
    ld a, [hl+]                                   ; $463e: $2a
    ld h, [hl]                                    ; $463f: $66
    ld l, a                                       ; $4640: $6f
    call Call_000_08ac                            ; $4641: $cd $ac $08
    pop de                                        ; $4644: $d1
    call Call_000_0a7b                            ; $4645: $cd $7b $0a
    pop hl                                        ; $4648: $e1
    ld l, h                                       ; $4649: $6c
    ld h, $00                                     ; $464a: $26 $00
    call Call_000_0b31                            ; $464c: $cd $31 $0b
    pop bc                                        ; $464f: $c1
    add hl, bc                                    ; $4650: $09
    ld c, l                                       ; $4651: $4d
    ld b, h                                       ; $4652: $44
    pop hl                                        ; $4653: $e1
    add hl, de                                    ; $4654: $19
    ld e, l                                       ; $4655: $5d
    ld d, h                                       ; $4656: $54
    ld hl, $ffe0                                  ; $4657: $21 $e0 $ff
    ld a, [hl+]                                   ; $465a: $2a
    ld h, [hl]                                    ; $465b: $66
    add $0a                                       ; $465c: $c6 $0a
    ld l, a                                       ; $465e: $6f
    ld [hl], c                                    ; $465f: $71
    inc hl                                        ; $4660: $23
    ld [hl], b                                    ; $4661: $70
    inc hl                                        ; $4662: $23
    ld [hl], e                                    ; $4663: $73
    inc hl                                        ; $4664: $23
    ld [hl], d                                    ; $4665: $72
    pop bc                                        ; $4666: $c1
    ld hl, $0005                                  ; $4667: $21 $05 $00
    add hl, bc                                    ; $466a: $09
    ld c, l                                       ; $466b: $4d
    ld b, h                                       ; $466c: $44
    ld hl, $ffe0                                  ; $466d: $21 $e0 $ff
    ld a, [hl+]                                   ; $4670: $2a
    ld h, [hl]                                    ; $4671: $66
    add $12                                       ; $4672: $c6 $12
    ld l, a                                       ; $4674: $6f
    ld a, $01                                     ; $4675: $3e $01
    ld [hl], a                                    ; $4677: $77
    ret                                           ; $4678: $c9


    inc bc                                        ; $4679: $03
    push bc                                       ; $467a: $c5
    ld a, d                                       ; $467b: $7a
    push af                                       ; $467c: $f5
    ld hl, $ffe0                                  ; $467d: $21 $e0 $ff
    ld a, [hl+]                                   ; $4680: $2a
    ld h, [hl]                                    ; $4681: $66
    add $0a                                       ; $4682: $c6 $0a
    ld l, a                                       ; $4684: $6f
    ld e, l                                       ; $4685: $5d
    ld d, h                                       ; $4686: $54
    pop af                                        ; $4687: $f1
    ld l, c                                       ; $4688: $69
    ld h, b                                       ; $4689: $60
    ld bc, $0004                                  ; $468a: $01 $04 $00
    call Call_000_0654                            ; $468d: $cd $54 $06
    pop bc                                        ; $4690: $c1
    inc bc                                        ; $4691: $03
    inc bc                                        ; $4692: $03
    inc bc                                        ; $4693: $03
    inc bc                                        ; $4694: $03
    ld hl, $ffe0                                  ; $4695: $21 $e0 $ff
    ld a, [hl+]                                   ; $4698: $2a
    ld h, [hl]                                    ; $4699: $66
    add $12                                       ; $469a: $c6 $12
    ld l, a                                       ; $469c: $6f
    ld [hl], $01                                  ; $469d: $36 $01
    ld a, $01                                     ; $469f: $3e $01
    ret                                           ; $46a1: $c9


    inc bc                                        ; $46a2: $03
    push de                                       ; $46a3: $d5
    ld a, d                                       ; $46a4: $7a
    ld l, c                                       ; $46a5: $69
    ld h, b                                       ; $46a6: $60
    call Call_000_0626                            ; $46a7: $cd $26 $06
    ld e, c                                       ; $46aa: $59
    ld d, b                                       ; $46ab: $50
    ld c, l                                       ; $46ac: $4d
    ld b, h                                       ; $46ad: $44
    inc bc                                        ; $46ae: $03
    inc bc                                        ; $46af: $03
    ld hl, $ffe0                                  ; $46b0: $21 $e0 $ff
    ld a, [hl+]                                   ; $46b3: $2a
    ld h, [hl]                                    ; $46b4: $66
    add $04                                       ; $46b5: $c6 $04
    ld l, a                                       ; $46b7: $6f
    ld a, [hl+]                                   ; $46b8: $2a
    ld h, [hl]                                    ; $46b9: $66
    ld l, a                                       ; $46ba: $6f
    add hl, de                                    ; $46bb: $19
    ld e, l                                       ; $46bc: $5d
    ld d, h                                       ; $46bd: $54
    ld hl, $ffe0                                  ; $46be: $21 $e0 $ff
    ld a, [hl+]                                   ; $46c1: $2a
    ld h, [hl]                                    ; $46c2: $66
    add $0a                                       ; $46c3: $c6 $0a
    ld l, a                                       ; $46c5: $6f
    ld a, e                                       ; $46c6: $7b
    ld [hl+], a                                   ; $46c7: $22
    ld [hl], d                                    ; $46c8: $72
    pop de                                        ; $46c9: $d1
    ld a, d                                       ; $46ca: $7a
    ld l, c                                       ; $46cb: $69
    ld h, b                                       ; $46cc: $60
    call Call_000_0626                            ; $46cd: $cd $26 $06
    ld e, c                                       ; $46d0: $59
    ld d, b                                       ; $46d1: $50
    ld c, l                                       ; $46d2: $4d
    ld b, h                                       ; $46d3: $44
    inc bc                                        ; $46d4: $03
    inc bc                                        ; $46d5: $03
    ld hl, $ffe0                                  ; $46d6: $21 $e0 $ff
    ld a, [hl+]                                   ; $46d9: $2a
    ld h, [hl]                                    ; $46da: $66
    add $06                                       ; $46db: $c6 $06
    ld l, a                                       ; $46dd: $6f
    ld a, [hl+]                                   ; $46de: $2a
    ld h, [hl]                                    ; $46df: $66
    ld l, a                                       ; $46e0: $6f
    add hl, de                                    ; $46e1: $19
    ld e, l                                       ; $46e2: $5d
    ld d, h                                       ; $46e3: $54
    ld hl, $ffe0                                  ; $46e4: $21 $e0 $ff
    ld a, [hl+]                                   ; $46e7: $2a
    ld h, [hl]                                    ; $46e8: $66
    add $0c                                       ; $46e9: $c6 $0c
    ld l, a                                       ; $46eb: $6f
    ld a, e                                       ; $46ec: $7b
    ld [hl+], a                                   ; $46ed: $22
    ld [hl], d                                    ; $46ee: $72
    ld hl, $ffe0                                  ; $46ef: $21 $e0 $ff
    ld a, [hl+]                                   ; $46f2: $2a
    ld h, [hl]                                    ; $46f3: $66
    add $12                                       ; $46f4: $c6 $12
    ld l, a                                       ; $46f6: $6f
    ld a, $01                                     ; $46f7: $3e $01
    ld [hl], a                                    ; $46f9: $77
    ret                                           ; $46fa: $c9


    inc bc                                        ; $46fb: $03
    ld a, d                                       ; $46fc: $7a
    ld l, c                                       ; $46fd: $69
    ld h, b                                       ; $46fe: $60
    call Call_000_0611                            ; $46ff: $cd $11 $06
    inc bc                                        ; $4702: $03

Jump_004_4703:
    push af                                       ; $4703: $f5
    push bc                                       ; $4704: $c5
    ld a, d                                       ; $4705: $7a
    ld l, c                                       ; $4706: $69
    ld h, b                                       ; $4707: $60
    call Call_000_0626                            ; $4708: $cd $26 $06
    ld l, c                                       ; $470b: $69
    ld h, b                                       ; $470c: $60
    pop bc                                        ; $470d: $c1
    inc bc                                        ; $470e: $03
    inc bc                                        ; $470f: $03
    pop af                                        ; $4710: $f1
    call Call_000_0af2                            ; $4711: $cd $f2 $0a
    push de                                       ; $4714: $d5
    ld e, l                                       ; $4715: $5d
    ld d, h                                       ; $4716: $54
    ld hl, $ffe0                                  ; $4717: $21 $e0 $ff
    ld a, [hl+]                                   ; $471a: $2a
    ld h, [hl]                                    ; $471b: $66
    add $04                                       ; $471c: $c6 $04
    ld l, a                                       ; $471e: $6f
    ld a, [hl+]                                   ; $471f: $2a
    ld h, [hl]                                    ; $4720: $66
    ld l, a                                       ; $4721: $6f
    add hl, de                                    ; $4722: $19
    ld e, l                                       ; $4723: $5d
    ld d, h                                       ; $4724: $54
    ld hl, $ffe0                                  ; $4725: $21 $e0 $ff
    ld a, [hl+]                                   ; $4728: $2a
    ld h, [hl]                                    ; $4729: $66
    add $0a                                       ; $472a: $c6 $0a
    ld l, a                                       ; $472c: $6f
    ld a, e                                       ; $472d: $7b
    ld [hl+], a                                   ; $472e: $22
    ld [hl], d                                    ; $472f: $72
    pop de                                        ; $4730: $d1
    ld hl, $ffe0                                  ; $4731: $21 $e0 $ff
    ld a, [hl+]                                   ; $4734: $2a
    ld h, [hl]                                    ; $4735: $66
    add $06                                       ; $4736: $c6 $06
    ld l, a                                       ; $4738: $6f
    ld a, [hl+]                                   ; $4739: $2a
    ld h, [hl]                                    ; $473a: $66
    ld l, a                                       ; $473b: $6f
    add hl, de                                    ; $473c: $19
    ld e, l                                       ; $473d: $5d
    ld d, h                                       ; $473e: $54
    ld hl, $ffe0                                  ; $473f: $21 $e0 $ff
    ld a, [hl+]                                   ; $4742: $2a
    ld h, [hl]                                    ; $4743: $66
    add $0c                                       ; $4744: $c6 $0c
    ld l, a                                       ; $4746: $6f
    ld a, e                                       ; $4747: $7b
    ld [hl+], a                                   ; $4748: $22
    ld [hl], d                                    ; $4749: $72
    ld hl, $ffe0                                  ; $474a: $21 $e0 $ff
    ld a, [hl+]                                   ; $474d: $2a
    ld h, [hl]                                    ; $474e: $66
    add $12                                       ; $474f: $c6 $12
    ld l, a                                       ; $4751: $6f
    ld a, $01                                     ; $4752: $3e $01
    ld [hl], a                                    ; $4754: $77
    ret                                           ; $4755: $c9


    inc bc                                        ; $4756: $03
    ld a, d                                       ; $4757: $7a
    ld l, c                                       ; $4758: $69
    ld h, b                                       ; $4759: $60
    call Call_000_0611                            ; $475a: $cd $11 $06
    inc bc                                        ; $475d: $03
    push af                                       ; $475e: $f5
    ld hl, $ffe0                                  ; $475f: $21 $e0 $ff
    ld a, [hl+]                                   ; $4762: $2a
    ld h, [hl]                                    ; $4763: $66
    add $10                                       ; $4764: $c6 $10
    ld l, a                                       ; $4766: $6f
    pop af                                        ; $4767: $f1
    add [hl]                                      ; $4768: $86
    jp Jump_004_4703                              ; $4769: $c3 $03 $47


    ld hl, $ffe0                                  ; $476c: $21 $e0 $ff
    ld a, [hl+]                                   ; $476f: $2a
    ld h, [hl]                                    ; $4770: $66
    add $05                                       ; $4771: $c6 $05
    ld l, a                                       ; $4773: $6f
    ld d, [hl]                                    ; $4774: $56
    ld hl, $ffe0                                  ; $4775: $21 $e0 $ff
    ld a, [hl+]                                   ; $4778: $2a
    ld h, [hl]                                    ; $4779: $66
    add $07                                       ; $477a: $c6 $07
    ld l, a                                       ; $477c: $6f
    ld e, [hl]                                    ; $477d: $5e
    ld hl, $ffe0                                  ; $477e: $21 $e0 $ff
    ld a, [hl+]                                   ; $4781: $2a
    ld h, [hl]                                    ; $4782: $66
    add $18                                       ; $4783: $c6 $18
    ld l, a                                       ; $4785: $6f
    ld a, e                                       ; $4786: $7b
    ld [hl+], a                                   ; $4787: $22
    ld [hl], d                                    ; $4788: $72
    ld hl, $ffe0                                  ; $4789: $21 $e0 $ff
    ld a, [hl+]                                   ; $478c: $2a
    ld h, [hl]                                    ; $478d: $66
    add $0e                                       ; $478e: $c6 $0e
    ld l, a                                       ; $4790: $6f
    ld [hl], $08                                  ; $4791: $36 $08
    inc hl                                        ; $4793: $23
    ld [hl], $00                                  ; $4794: $36 $00
    ld hl, $ffe0                                  ; $4796: $21 $e0 $ff
    ld a, [hl+]                                   ; $4799: $2a
    ld h, [hl]                                    ; $479a: $66
    add $1b                                       ; $479b: $c6 $1b
    ld l, a                                       ; $479d: $6f
    ld [hl], $01                                  ; $479e: $36 $01
    inc bc                                        ; $47a0: $03
    ret                                           ; $47a1: $c9


    ld e, $04                                     ; $47a2: $1e $04

Jump_004_47a4:
    push bc                                       ; $47a4: $c5
    push de                                       ; $47a5: $d5
    ld hl, $ffe0                                  ; $47a6: $21 $e0 $ff
    ld a, [hl+]                                   ; $47a9: $2a
    ld b, [hl]                                    ; $47aa: $46
    ld c, a                                       ; $47ab: $4f
    ld hl, $002f                                  ; $47ac: $21 $2f $00
    add hl, bc                                    ; $47af: $09
    ld a, [hl]                                    ; $47b0: $7e
    and a                                         ; $47b1: $a7
    jr nz, jr_004_47ba                            ; $47b2: $20 $06

    pop de                                        ; $47b4: $d1
    pop bc                                        ; $47b5: $c1
    xor a                                         ; $47b6: $af
    jp Jump_004_484c                              ; $47b7: $c3 $4c $48


jr_004_47ba:
    call Call_000_0a61                            ; $47ba: $cd $61 $0a
    ld a, l                                       ; $47bd: $7d
    and $3f                                       ; $47be: $e6 $3f
    sub $20                                       ; $47c0: $d6 $20
    ld hl, $0010                                  ; $47c2: $21 $10 $00
    add hl, bc                                    ; $47c5: $09
    add [hl]                                      ; $47c6: $86
    and $f0                                       ; $47c7: $e6 $f0
    ld [$c28f], a                                 ; $47c9: $ea $8f $c2
    ld hl, $0100                                  ; $47cc: $21 $00 $01
    call Call_004_5332                            ; $47cf: $cd $32 $53
    push bc                                       ; $47d2: $c5
    push de                                       ; $47d3: $d5
    push hl                                       ; $47d4: $e5
    ld e, d                                       ; $47d5: $5a
    ld d, h                                       ; $47d6: $54
    ld hl, $0018                                  ; $47d7: $21 $18 $00
    add hl, bc                                    ; $47da: $09
    ld a, [hl+]                                   ; $47db: $2a
    ld b, [hl]                                    ; $47dc: $46
    ld c, a                                       ; $47dd: $4f
    ld hl, $0202                                  ; $47de: $21 $02 $02
    call Call_004_552f                            ; $47e1: $cd $2f $55
    pop hl                                        ; $47e4: $e1
    pop de                                        ; $47e5: $d1
    pop bc                                        ; $47e6: $c1
    and a                                         ; $47e7: $a7
    jr nz, jr_004_483d                            ; $47e8: $20 $53

    push bc                                       ; $47ea: $c5
    push de                                       ; $47eb: $d5
    push hl                                       ; $47ec: $e5
    ld a, [$c28f]                                 ; $47ed: $fa $8f $c2
    ld bc, $00e0                                  ; $47f0: $01 $e0 $00
    call Call_004_534e                            ; $47f3: $cd $4e $53
    call Call_004_551e                            ; $47f6: $cd $1e $55
    pop hl                                        ; $47f9: $e1
    pop de                                        ; $47fa: $d1
    pop bc                                        ; $47fb: $c1
    and a                                         ; $47fc: $a7
    jr nz, jr_004_483d                            ; $47fd: $20 $3e

    push bc                                       ; $47ff: $c5
    push de                                       ; $4800: $d5
    push hl                                       ; $4801: $e5
    ld a, [$c28f]                                 ; $4802: $fa $8f $c2
    add $20                                       ; $4805: $c6 $20
    ld bc, $00e0                                  ; $4807: $01 $e0 $00
    call Call_004_534e                            ; $480a: $cd $4e $53
    call Call_004_551e                            ; $480d: $cd $1e $55
    pop hl                                        ; $4810: $e1
    pop de                                        ; $4811: $d1
    pop bc                                        ; $4812: $c1
    and a                                         ; $4813: $a7
    jr nz, jr_004_483d                            ; $4814: $20 $27

    push bc                                       ; $4816: $c5
    push de                                       ; $4817: $d5
    push hl                                       ; $4818: $e5
    ld a, [$c28f]                                 ; $4819: $fa $8f $c2
    add $e0                                       ; $481c: $c6 $e0
    ld bc, $00e0                                  ; $481e: $01 $e0 $00
    call Call_004_534e                            ; $4821: $cd $4e $53
    call Call_004_551e                            ; $4824: $cd $1e $55
    pop hl                                        ; $4827: $e1
    pop de                                        ; $4828: $d1
    pop bc                                        ; $4829: $c1
    and a                                         ; $482a: $a7
    jr nz, jr_004_483d                            ; $482b: $20 $10

    call Call_004_5289                            ; $482d: $cd $89 $52
    ld hl, $0012                                  ; $4830: $21 $12 $00
    add hl, bc                                    ; $4833: $09
    ld [hl], $01                                  ; $4834: $36 $01
    pop de                                        ; $4836: $d1
    pop bc                                        ; $4837: $c1
    inc bc                                        ; $4838: $03
    ld a, $01                                     ; $4839: $3e $01
    jr jr_004_484c                                ; $483b: $18 $0f

jr_004_483d:
    ld hl, $0010                                  ; $483d: $21 $10 $00
    add hl, bc                                    ; $4840: $09
    ld a, [hl]                                    ; $4841: $7e
    add $41                                       ; $4842: $c6 $41
    ld [hl], a                                    ; $4844: $77
    pop de                                        ; $4845: $d1
    pop bc                                        ; $4846: $c1
    dec e                                         ; $4847: $1d
    jp nz, Jump_004_47a4                          ; $4848: $c2 $a4 $47

    xor a                                         ; $484b: $af

Jump_004_484c:
jr_004_484c:
    ret                                           ; $484c: $c9


    inc bc                                        ; $484d: $03
    push bc                                       ; $484e: $c5
    ld hl, $ffe0                                  ; $484f: $21 $e0 $ff
    ld a, [hl+]                                   ; $4852: $2a
    ld h, [hl]                                    ; $4853: $66
    add $18                                       ; $4854: $c6 $18
    ld l, a                                       ; $4856: $6f
    ld a, [hl+]                                   ; $4857: $2a
    ld h, [hl]                                    ; $4858: $66
    add $06                                       ; $4859: $c6 $06
    ld l, a                                       ; $485b: $6f
    ld e, [hl]                                    ; $485c: $5e
    inc hl                                        ; $485d: $23
    ld d, [hl]                                    ; $485e: $56
    ld c, d                                       ; $485f: $4a
    push de                                       ; $4860: $d5
    ld de, $fffd                                  ; $4861: $11 $fd $ff
    add hl, de                                    ; $4864: $19
    ld e, [hl]                                    ; $4865: $5e
    inc hl                                        ; $4866: $23
    ld d, [hl]                                    ; $4867: $56
    ld b, d                                       ; $4868: $42
    push de                                       ; $4869: $d5
    ld de, $000b                                  ; $486a: $11 $0b $00
    add hl, de                                    ; $486d: $19
    ld d, [hl]                                    ; $486e: $56
    push de                                       ; $486f: $d5
    ld e, c                                       ; $4870: $59
    ld d, b                                       ; $4871: $50
    ld hl, $ffe0                                  ; $4872: $21 $e0 $ff
    ld a, [hl+]                                   ; $4875: $2a
    ld b, [hl]                                    ; $4876: $46
    ld c, a                                       ; $4877: $4f
    ld hl, $0005                                  ; $4878: $21 $05 $00
    add hl, bc                                    ; $487b: $09
    ld a, d                                       ; $487c: $7a
    sub [hl]                                      ; $487d: $96
    ld l, a                                       ; $487e: $6f
    ld h, $00                                     ; $487f: $26 $00
    call Call_000_08b9                            ; $4881: $cd $b9 $08
    push hl                                       ; $4884: $e5
    ld hl, $0007                                  ; $4885: $21 $07 $00
    add hl, bc                                    ; $4888: $09
    ld a, e                                       ; $4889: $7b
    sub [hl]                                      ; $488a: $96
    ld l, a                                       ; $488b: $6f
    ld h, $00                                     ; $488c: $26 $00
    call Call_000_08b9                            ; $488e: $cd $b9 $08
    pop de                                        ; $4891: $d1
    add hl, de                                    ; $4892: $19
    add l                                         ; $4893: $85
    cp $08                                        ; $4894: $fe $08
    jr nc, jr_004_489d                            ; $4896: $30 $05

    add sp, $06                                   ; $4898: $e8 $06
    pop bc                                        ; $489a: $c1
    xor a                                         ; $489b: $af
    ret                                           ; $489c: $c9


jr_004_489d:
    ld hl, $ffe0                                  ; $489d: $21 $e0 $ff
    ld a, [hl+]                                   ; $48a0: $2a
    ld h, [hl]                                    ; $48a1: $66
    add $18                                       ; $48a2: $c6 $18
    ld l, a                                       ; $48a4: $6f
    ld a, [hl+]                                   ; $48a5: $2a
    ld h, [hl]                                    ; $48a6: $66
    add $0e                                       ; $48a7: $c6 $0e
    ld l, a                                       ; $48a9: $6f
    ld a, [hl+]                                   ; $48aa: $2a
    ld d, [hl]                                    ; $48ab: $56
    ld e, a                                       ; $48ac: $5f
    ld hl, $ffe0                                  ; $48ad: $21 $e0 $ff
    ld a, [hl+]                                   ; $48b0: $2a
    ld h, [hl]                                    ; $48b1: $66
    add $0e                                       ; $48b2: $c6 $0e
    ld l, a                                       ; $48b4: $6f
    ld a, e                                       ; $48b5: $7b
    ld [hl+], a                                   ; $48b6: $22
    ld [hl], d                                    ; $48b7: $72
    pop af                                        ; $48b8: $f1
    add $80                                       ; $48b9: $c6 $80
    ld hl, $0200                                  ; $48bb: $21 $00 $02
    call Call_000_0af2                            ; $48be: $cd $f2 $0a
    pop bc                                        ; $48c1: $c1
    add hl, bc                                    ; $48c2: $09
    ld c, l                                       ; $48c3: $4d
    ld b, h                                       ; $48c4: $44
    pop hl                                        ; $48c5: $e1
    add hl, de                                    ; $48c6: $19
    ld e, l                                       ; $48c7: $5d
    ld d, h                                       ; $48c8: $54
    ld l, c                                       ; $48c9: $69
    ld h, b                                       ; $48ca: $60
    call Call_004_551e                            ; $48cb: $cd $1e $55
    and a                                         ; $48ce: $a7
    jr nz, jr_004_48f9                            ; $48cf: $20 $28

    ld hl, $ffe0                                  ; $48d1: $21 $e0 $ff
    ld a, [hl+]                                   ; $48d4: $2a
    ld h, [hl]                                    ; $48d5: $66
    add $0a                                       ; $48d6: $c6 $0a
    ld l, a                                       ; $48d8: $6f
    ld [hl], c                                    ; $48d9: $71
    inc hl                                        ; $48da: $23
    ld [hl], b                                    ; $48db: $70
    inc hl                                        ; $48dc: $23
    ld [hl], e                                    ; $48dd: $73
    inc hl                                        ; $48de: $23
    ld [hl], d                                    ; $48df: $72
    call Call_004_4a8d                            ; $48e0: $cd $8d $4a
    jr z, jr_004_48f9                             ; $48e3: $28 $14

    ld hl, $ffe0                                  ; $48e5: $21 $e0 $ff
    ld a, [hl+]                                   ; $48e8: $2a
    ld h, [hl]                                    ; $48e9: $66
    add $11                                       ; $48ea: $c6 $11
    ld l, a                                       ; $48ec: $6f
    ld [hl], $40                                  ; $48ed: $36 $40
    ld hl, $ffe0                                  ; $48ef: $21 $e0 $ff
    ld a, [hl+]                                   ; $48f2: $2a
    ld h, [hl]                                    ; $48f3: $66
    add $12                                       ; $48f4: $c6 $12
    ld l, a                                       ; $48f6: $6f
    ld [hl], $01                                  ; $48f7: $36 $01

jr_004_48f9:
    xor a                                         ; $48f9: $af
    pop bc                                        ; $48fa: $c1
    ret                                           ; $48fb: $c9


    inc bc                                        ; $48fc: $03
    push bc                                       ; $48fd: $c5
    ld hl, $ffe0                                  ; $48fe: $21 $e0 $ff
    ld a, [hl+]                                   ; $4901: $2a
    ld b, [hl]                                    ; $4902: $46
    ld c, a                                       ; $4903: $4f
    ld hl, $0018                                  ; $4904: $21 $18 $00
    add hl, bc                                    ; $4907: $09
    push bc                                       ; $4908: $c5
    ld a, [hl+]                                   ; $4909: $2a
    ld b, [hl]                                    ; $490a: $46
    ld c, a                                       ; $490b: $4f
    ld hl, $0004                                  ; $490c: $21 $04 $00
    add hl, bc                                    ; $490f: $09
    pop bc                                        ; $4910: $c1
    ld e, [hl]                                    ; $4911: $5e
    inc hl                                        ; $4912: $23
    ld d, [hl]                                    ; $4913: $56
    inc hl                                        ; $4914: $23
    push de                                       ; $4915: $d5
    ld e, [hl]                                    ; $4916: $5e
    inc hl                                        ; $4917: $23
    ld d, [hl]                                    ; $4918: $56
    ld hl, $0011                                  ; $4919: $21 $11 $00
    add hl, bc                                    ; $491c: $09
    ld a, $40                                     ; $491d: $3e $40
    ld [hl], a                                    ; $491f: $77
    ld hl, $000c                                  ; $4920: $21 $0c $00
    add hl, bc                                    ; $4923: $09
    ld [hl], e                                    ; $4924: $73
    inc hl                                        ; $4925: $23
    ld [hl], d                                    ; $4926: $72
    pop de                                        ; $4927: $d1
    ld hl, $000a                                  ; $4928: $21 $0a $00
    add hl, bc                                    ; $492b: $09
    ld [hl], e                                    ; $492c: $73
    inc hl                                        ; $492d: $23
    ld [hl], d                                    ; $492e: $72
    call Call_004_4a8d                            ; $492f: $cd $8d $4a
    jr z, jr_004_499f                             ; $4932: $28 $6b

    ld hl, $000b                                  ; $4934: $21 $0b $00
    add hl, bc                                    ; $4937: $09
    ld d, [hl]                                    ; $4938: $56
    ld hl, $0005                                  ; $4939: $21 $05 $00
    add hl, bc                                    ; $493c: $09
    ld a, d                                       ; $493d: $7a
    sub [hl]                                      ; $493e: $96
    bit 7, a                                      ; $493f: $cb $7f
    jr z, jr_004_4945                             ; $4941: $28 $02

    cpl                                           ; $4943: $2f
    inc a                                         ; $4944: $3c

jr_004_4945:
    ld l, a                                       ; $4945: $6f
    ld h, $00                                     ; $4946: $26 $00
    call Call_000_08b9                            ; $4948: $cd $b9 $08
    push hl                                       ; $494b: $e5
    ld hl, $000d                                  ; $494c: $21 $0d $00
    add hl, bc                                    ; $494f: $09
    ld d, [hl]                                    ; $4950: $56
    ld hl, $0007                                  ; $4951: $21 $07 $00
    add hl, bc                                    ; $4954: $09
    ld a, d                                       ; $4955: $7a
    sub [hl]                                      ; $4956: $96
    bit 7, a                                      ; $4957: $cb $7f
    jr z, jr_004_495d                             ; $4959: $28 $02

    cpl                                           ; $495b: $2f
    inc a                                         ; $495c: $3c

jr_004_495d:
    ld l, a                                       ; $495d: $6f
    ld h, $00                                     ; $495e: $26 $00
    call Call_000_08b9                            ; $4960: $cd $b9 $08
    pop de                                        ; $4963: $d1
    add hl, de                                    ; $4964: $19
    ld a, h                                       ; $4965: $7c
    or a                                          ; $4966: $b7
    jr nz, jr_004_498e                            ; $4967: $20 $25

    ld a, l                                       ; $4969: $7d
    cp $01                                        ; $496a: $fe $01
    jr nc, jr_004_4973                            ; $496c: $30 $05

    ld de, $0010                                  ; $496e: $11 $10 $00
    jr jr_004_4991                                ; $4971: $18 $1e

jr_004_4973:
    cp $04                                        ; $4973: $fe $04
    jr nc, jr_004_497c                            ; $4975: $30 $05

    ld de, $0018                                  ; $4977: $11 $18 $00
    jr jr_004_4991                                ; $497a: $18 $15

jr_004_497c:
    cp $09                                        ; $497c: $fe $09
    jr nc, jr_004_4985                            ; $497e: $30 $05

    ld de, $0020                                  ; $4980: $11 $20 $00
    jr jr_004_4991                                ; $4983: $18 $0c

jr_004_4985:
    cp $10                                        ; $4985: $fe $10
    jr nc, jr_004_498e                            ; $4987: $30 $05

    ld de, $0040                                  ; $4989: $11 $40 $00
    jr jr_004_4991                                ; $498c: $18 $03

jr_004_498e:
    ld de, $0080                                  ; $498e: $11 $80 $00

jr_004_4991:
    ld hl, $000e                                  ; $4991: $21 $0e $00
    add hl, bc                                    ; $4994: $09
    ld a, e                                       ; $4995: $7b
    ld [hl+], a                                   ; $4996: $22
    ld [hl], d                                    ; $4997: $72
    ld hl, $0012                                  ; $4998: $21 $12 $00
    add hl, bc                                    ; $499b: $09
    ld a, $01                                     ; $499c: $3e $01
    ld [hl], a                                    ; $499e: $77

jr_004_499f:
    xor a                                         ; $499f: $af
    pop bc                                        ; $49a0: $c1
    ret                                           ; $49a1: $c9


    inc bc                                        ; $49a2: $03
    push bc                                       ; $49a3: $c5
    ld a, d                                       ; $49a4: $7a
    ld l, c                                       ; $49a5: $69
    ld h, b                                       ; $49a6: $60
    call Call_000_0626                            ; $49a7: $cd $26 $06
    pop hl                                        ; $49aa: $e1
    add hl, bc                                    ; $49ab: $09
    ld c, l                                       ; $49ac: $4d
    ld b, h                                       ; $49ad: $44
    ld a, $01                                     ; $49ae: $3e $01
    ret                                           ; $49b0: $c9


    inc bc                                        ; $49b1: $03
    ld a, d                                       ; $49b2: $7a
    ld l, c                                       ; $49b3: $69
    ld h, b                                       ; $49b4: $60
    call Call_000_0611                            ; $49b5: $cd $11 $06
    inc bc                                        ; $49b8: $03
    push af                                       ; $49b9: $f5
    ld a, d                                       ; $49ba: $7a
    ld l, c                                       ; $49bb: $69
    ld h, b                                       ; $49bc: $60
    call Call_000_0626                            ; $49bd: $cd $26 $06
    ld e, c                                       ; $49c0: $59
    ld d, b                                       ; $49c1: $50
    ld c, l                                       ; $49c2: $4d
    ld b, h                                       ; $49c3: $44
    inc bc                                        ; $49c4: $03
    inc bc                                        ; $49c5: $03
    pop af                                        ; $49c6: $f1
    push af                                       ; $49c7: $f5
    ld hl, $ffe0                                  ; $49c8: $21 $e0 $ff
    add [hl]                                      ; $49cb: $86
    inc hl                                        ; $49cc: $23
    ld h, [hl]                                    ; $49cd: $66
    ld l, a                                       ; $49ce: $6f
    pop af                                        ; $49cf: $f1
    push hl                                       ; $49d0: $e5
    add $31                                       ; $49d1: $c6 $31
    ld l, a                                       ; $49d3: $6f
    ld a, $4a                                     ; $49d4: $3e $4a
    adc $00                                       ; $49d6: $ce $00
    ld h, a                                       ; $49d8: $67
    ld a, [hl]                                    ; $49d9: $7e
    pop hl                                        ; $49da: $e1
    cp $02                                        ; $49db: $fe $02
    jr nz, jr_004_49e4                            ; $49dd: $20 $05

    ld a, e                                       ; $49df: $7b
    ld [hl+], a                                   ; $49e0: $22
    ld [hl], d                                    ; $49e1: $72
    jr jr_004_49e9                                ; $49e2: $18 $05

jr_004_49e4:
    cp $01                                        ; $49e4: $fe $01
    jr nz, jr_004_49e9                            ; $49e6: $20 $01

    ld [hl], e                                    ; $49e8: $73

jr_004_49e9:
    ld a, $01                                     ; $49e9: $3e $01
    ret                                           ; $49eb: $c9


    inc bc                                        ; $49ec: $03
    ld a, d                                       ; $49ed: $7a
    ld l, c                                       ; $49ee: $69
    ld h, b                                       ; $49ef: $60
    call Call_000_0611                            ; $49f0: $cd $11 $06
    inc bc                                        ; $49f3: $03
    push af                                       ; $49f4: $f5
    ld a, d                                       ; $49f5: $7a
    ld l, c                                       ; $49f6: $69
    ld h, b                                       ; $49f7: $60
    call Call_000_0626                            ; $49f8: $cd $26 $06
    ld e, c                                       ; $49fb: $59
    ld d, b                                       ; $49fc: $50
    ld c, l                                       ; $49fd: $4d
    ld b, h                                       ; $49fe: $44
    inc bc                                        ; $49ff: $03
    inc bc                                        ; $4a00: $03
    pop af                                        ; $4a01: $f1
    push af                                       ; $4a02: $f5
    ld hl, $ffe0                                  ; $4a03: $21 $e0 $ff
    add [hl]                                      ; $4a06: $86
    inc hl                                        ; $4a07: $23
    ld h, [hl]                                    ; $4a08: $66
    ld l, a                                       ; $4a09: $6f
    pop af                                        ; $4a0a: $f1
    push hl                                       ; $4a0b: $e5
    add $31                                       ; $4a0c: $c6 $31
    ld l, a                                       ; $4a0e: $6f
    ld a, $4a                                     ; $4a0f: $3e $4a
    adc $00                                       ; $4a11: $ce $00
    ld h, a                                       ; $4a13: $67
    ld a, [hl]                                    ; $4a14: $7e
    pop hl                                        ; $4a15: $e1
    cp $02                                        ; $4a16: $fe $02
    jr nz, jr_004_4a27                            ; $4a18: $20 $0d

    push hl                                       ; $4a1a: $e5
    ld a, [hl+]                                   ; $4a1b: $2a
    ld h, [hl]                                    ; $4a1c: $66
    ld l, a                                       ; $4a1d: $6f
    add hl, de                                    ; $4a1e: $19
    ld e, l                                       ; $4a1f: $5d
    ld d, h                                       ; $4a20: $54
    pop hl                                        ; $4a21: $e1
    ld a, e                                       ; $4a22: $7b
    ld [hl+], a                                   ; $4a23: $22
    ld [hl], d                                    ; $4a24: $72
    jr jr_004_4a2e                                ; $4a25: $18 $07

jr_004_4a27:
    cp $01                                        ; $4a27: $fe $01
    jr nz, jr_004_4a2e                            ; $4a29: $20 $03

    ld a, [hl]                                    ; $4a2b: $7e
    add e                                         ; $4a2c: $83
    ld [hl], a                                    ; $4a2d: $77

jr_004_4a2e:
    ld a, $01                                     ; $4a2e: $3e $01
    ret                                           ; $4a30: $c9


    ld [bc], a                                    ; $4a31: $02
    nop                                           ; $4a32: $00
    ld bc, $0201                                  ; $4a33: $01 $01 $02
    nop                                           ; $4a36: $00
    ld [bc], a                                    ; $4a37: $02
    nop                                           ; $4a38: $00
    ld [bc], a                                    ; $4a39: $02
    nop                                           ; $4a3a: $00
    ld [bc], a                                    ; $4a3b: $02
    nop                                           ; $4a3c: $00
    ld [bc], a                                    ; $4a3d: $02
    nop                                           ; $4a3e: $00

    db $02

    nop                                           ; $4a40: $00
    ld bc, $0101                                  ; $4a41: $01 $01 $01
    ld bc, $0101                                  ; $4a44: $01 $01 $01
    ld bc, $0101                                  ; $4a47: $01 $01 $01
    db $01                                        ; $4a4a: $01
    db $01                                        ; $4a4b: $01

    db $01

    ld bc, $0101                                  ; $4a4d: $01 $01 $01
    ld bc, $0002                                  ; $4a50: $01 $02 $00
    ld [bc], a                                    ; $4a53: $02
    nop                                           ; $4a54: $00
    ld bc, $0301                                  ; $4a55: $01 $01 $03
    ld a, $01                                     ; $4a58: $3e $01
    ret                                           ; $4a5a: $c9


    inc bc                                        ; $4a5b: $03
    ld a, d                                       ; $4a5c: $7a
    ld l, c                                       ; $4a5d: $69
    ld h, b                                       ; $4a5e: $60
    call Call_000_0611                            ; $4a5f: $cd $11 $06
    inc bc                                        ; $4a62: $03
    push af                                       ; $4a63: $f5
    ld hl, $ffe0                                  ; $4a64: $21 $e0 $ff
    ld a, [hl+]                                   ; $4a67: $2a
    ld h, [hl]                                    ; $4a68: $66
    ld l, a                                       ; $4a69: $6f
    pop af                                        ; $4a6a: $f1
    call Call_004_4e4c                            ; $4a6b: $cd $4c $4e
    ld a, $01                                     ; $4a6e: $3e $01
    ret                                           ; $4a70: $c9


    inc bc                                        ; $4a71: $03
    ld a, d                                       ; $4a72: $7a
    ld l, c                                       ; $4a73: $69
    ld h, b                                       ; $4a74: $60
    call Call_000_0611                            ; $4a75: $cd $11 $06
    inc bc                                        ; $4a78: $03
    ld a, $01                                     ; $4a79: $3e $01
    ret                                           ; $4a7b: $c9


    inc bc                                        ; $4a7c: $03
    push bc                                       ; $4a7d: $c5
    ld a, d                                       ; $4a7e: $7a
    ld l, c                                       ; $4a7f: $69
    ld h, b                                       ; $4a80: $60
    call Call_000_0626                            ; $4a81: $cd $26 $06
    ld l, c                                       ; $4a84: $69
    ld h, b                                       ; $4a85: $60
    call Call_000_015e                            ; $4a86: $cd $5e $01
    pop bc                                        ; $4a89: $c1
    inc bc                                        ; $4a8a: $03
    inc bc                                        ; $4a8b: $03
    ret                                           ; $4a8c: $c9


Call_004_4a8d:
    push hl                                       ; $4a8d: $e5
    push de                                       ; $4a8e: $d5
    ld hl, $ffe0                                  ; $4a8f: $21 $e0 $ff
    ld a, [hl+]                                   ; $4a92: $2a
    ld h, [hl]                                    ; $4a93: $66
    add $04                                       ; $4a94: $c6 $04
    ld l, a                                       ; $4a96: $6f
    push hl                                       ; $4a97: $e5
    ld de, $0006                                  ; $4a98: $11 $06 $00
    add hl, de                                    ; $4a9b: $19
    pop de                                        ; $4a9c: $d1
    ld a, [de]                                    ; $4a9d: $1a
    cp [hl]                                       ; $4a9e: $be
    jr nz, jr_004_4ab7                            ; $4a9f: $20 $16

    inc hl                                        ; $4aa1: $23
    inc de                                        ; $4aa2: $13
    ld a, [de]                                    ; $4aa3: $1a
    cp [hl]                                       ; $4aa4: $be
    jr nz, jr_004_4ab7                            ; $4aa5: $20 $10

    inc hl                                        ; $4aa7: $23
    inc de                                        ; $4aa8: $13
    ld a, [de]                                    ; $4aa9: $1a
    cp [hl]                                       ; $4aaa: $be
    jr nz, jr_004_4ab7                            ; $4aab: $20 $0a

    inc hl                                        ; $4aad: $23
    inc de                                        ; $4aae: $13
    ld a, [de]                                    ; $4aaf: $1a
    cp [hl]                                       ; $4ab0: $be
    jr nz, jr_004_4ab7                            ; $4ab1: $20 $04

    pop de                                        ; $4ab3: $d1
    pop hl                                        ; $4ab4: $e1
    xor a                                         ; $4ab5: $af
    ret                                           ; $4ab6: $c9


jr_004_4ab7:
    pop de                                        ; $4ab7: $d1
    pop hl                                        ; $4ab8: $e1
    ld a, $01                                     ; $4ab9: $3e $01
    or a                                          ; $4abb: $b7
    ret                                           ; $4abc: $c9


    db $00, $00, $40, $40, $40, $40, $40, $80, $80, $80, $c0, $c0, $c0, $c0, $c0, $00

Call_004_4acd:
    ld hl, $0034                                  ; $4acd: $21 $34 $00
    add hl, de                                    ; $4ad0: $19
    ld a, [hl]                                    ; $4ad1: $7e
    and a                                         ; $4ad2: $a7
    jr nz, jr_004_4b49                            ; $4ad3: $20 $74

jr_004_4ad5:
    ld hl, $002a                                  ; $4ad5: $21 $2a $00
    add hl, de                                    ; $4ad8: $19
    ld a, [hl]                                    ; $4ad9: $7e
    and a                                         ; $4ada: $a7
    jr nz, jr_004_4b49                            ; $4adb: $20 $6c

    ld hl, $0026                                  ; $4add: $21 $26 $00
    add hl, de                                    ; $4ae0: $19
    ld a, [hl+]                                   ; $4ae1: $2a
    ld h, [hl]                                    ; $4ae2: $66
    ld l, a                                       ; $4ae3: $6f
    ld a, [$c286]                                 ; $4ae4: $fa $86 $c2
    call Call_000_0626                            ; $4ae7: $cd $26 $06
    ld a, c                                       ; $4aea: $79
    cp $f0                                        ; $4aeb: $fe $f0
    jr c, jr_004_4b34                             ; $4aed: $38 $45

    ld a, c                                       ; $4aef: $79
    cp $ff                                        ; $4af0: $fe $ff
    jr z, jr_004_4b04                             ; $4af2: $28 $10

    cp $fe                                        ; $4af4: $fe $fe
    jr z, jr_004_4b1a                             ; $4af6: $28 $22

    cp $fc                                        ; $4af8: $fe $fc
    jr z, jr_004_4b22                             ; $4afa: $28 $26

    ld hl, $002a                                  ; $4afc: $21 $2a $00
    add hl, de                                    ; $4aff: $19
    ld [hl], $ff                                  ; $4b00: $36 $ff
    jr jr_004_4ad5                                ; $4b02: $18 $d1

jr_004_4b04:
    ld c, b                                       ; $4b04: $48
    ld b, $00                                     ; $4b05: $06 $00
    ld hl, $0024                                  ; $4b07: $21 $24 $00
    add hl, de                                    ; $4b0a: $19
    ld a, [hl+]                                   ; $4b0b: $2a
    ld h, [hl]                                    ; $4b0c: $66
    ld l, a                                       ; $4b0d: $6f
    add hl, bc                                    ; $4b0e: $09
    ld c, l                                       ; $4b0f: $4d
    ld b, h                                       ; $4b10: $44
    ld hl, $0026                                  ; $4b11: $21 $26 $00
    add hl, de                                    ; $4b14: $19
    ld a, c                                       ; $4b15: $79
    ld [hl+], a                                   ; $4b16: $22
    ld [hl], b                                    ; $4b17: $70
    jr jr_004_4ad5                                ; $4b18: $18 $bb

jr_004_4b1a:
    ld a, b                                       ; $4b1a: $78
    ld l, e                                       ; $4b1b: $6b
    ld h, d                                       ; $4b1c: $62
    call Call_004_4e51                            ; $4b1d: $cd $51 $4e
    jr jr_004_4ad5                                ; $4b20: $18 $b3

jr_004_4b22:
    ld a, b                                       ; $4b22: $78
    call Call_000_2c19                            ; $4b23: $cd $19 $2c
    ld hl, $0026                                  ; $4b26: $21 $26 $00
    add hl, de                                    ; $4b29: $19
    ld a, [hl+]                                   ; $4b2a: $2a
    ld b, [hl]                                    ; $4b2b: $46
    ld c, a                                       ; $4b2c: $4f
    inc bc                                        ; $4b2d: $03
    inc bc                                        ; $4b2e: $03
    ld a, b                                       ; $4b2f: $78
    ld [hl-], a                                   ; $4b30: $32
    ld [hl], c                                    ; $4b31: $71
    jr jr_004_4ad5                                ; $4b32: $18 $a1

jr_004_4b34:
    ld hl, $002a                                  ; $4b34: $21 $2a $00
    add hl, de                                    ; $4b37: $19
    ld [hl], b                                    ; $4b38: $70
    push bc                                       ; $4b39: $c5
    ld hl, $0026                                  ; $4b3a: $21 $26 $00
    add hl, de                                    ; $4b3d: $19
    ld a, [hl+]                                   ; $4b3e: $2a
    ld b, [hl]                                    ; $4b3f: $46
    ld c, a                                       ; $4b40: $4f
    inc bc                                        ; $4b41: $03
    inc bc                                        ; $4b42: $03
    ld a, b                                       ; $4b43: $78
    ld [hl-], a                                   ; $4b44: $32
    ld [hl], c                                    ; $4b45: $71
    pop bc                                        ; $4b46: $c1
    jr jr_004_4b4e                                ; $4b47: $18 $05

jr_004_4b49:
    ld hl, $0028                                  ; $4b49: $21 $28 $00
    add hl, de                                    ; $4b4c: $19
    ld c, [hl]                                    ; $4b4d: $4e

jr_004_4b4e:
    ld hl, $0012                                  ; $4b4e: $21 $12 $00
    add hl, de                                    ; $4b51: $19
    ld a, [hl]                                    ; $4b52: $7e
    ld hl, $0035                                  ; $4b53: $21 $35 $00
    and a                                         ; $4b56: $a7
    jr z, jr_004_4b5c                             ; $4b57: $28 $03

    ld hl, $0036                                  ; $4b59: $21 $36 $00

jr_004_4b5c:
    add hl, de                                    ; $4b5c: $19
    ld b, [hl]                                    ; $4b5d: $46
    ld hl, $002a                                  ; $4b5e: $21 $2a $00
    add hl, de                                    ; $4b61: $19
    ld a, [hl]                                    ; $4b62: $7e
    sub b                                         ; $4b63: $90
    jr nc, jr_004_4b67                            ; $4b64: $30 $01

    xor a                                         ; $4b66: $af

jr_004_4b67:
    ld [hl], a                                    ; $4b67: $77
    ret                                           ; $4b68: $c9


    rst $30                                       ; $4b69: $f7

    db $80, $02

    ret nz                                        ; $4b6c: $c0

    push af                                       ; $4b6d: $f5
    push bc                                       ; $4b6e: $c5
    push de                                       ; $4b6f: $d5
    push hl                                       ; $4b70: $e5
    ld a, $04                                     ; $4b71: $3e $04
    ldh [$96], a                                  ; $4b73: $e0 $96
    ldh [rSVBK], a                                ; $4b75: $e0 $70
    ld hl, $c320                                  ; $4b77: $21 $20 $c3
    ld a, [hl+]                                   ; $4b7a: $2a
    ld d, [hl]                                    ; $4b7b: $56
    ld e, a                                       ; $4b7c: $5f
    ld a, [$c368]                                 ; $4b7d: $fa $68 $c3
    ld l, a                                       ; $4b80: $6f
    ld h, $00                                     ; $4b81: $26 $00
    bit 7, l                                      ; $4b83: $cb $7d
    jr z, jr_004_4b89                             ; $4b85: $28 $02

    ld h, $ff                                     ; $4b87: $26 $ff

jr_004_4b89:
    add hl, hl                                    ; $4b89: $29
    add hl, hl                                    ; $4b8a: $29
    add hl, hl                                    ; $4b8b: $29
    add hl, hl                                    ; $4b8c: $29
    add hl, hl                                    ; $4b8d: $29
    add hl, de                                    ; $4b8e: $19
    ld c, l                                       ; $4b8f: $4d
    ld b, h                                       ; $4b90: $44
    ld hl, $c29a                                  ; $4b91: $21 $9a $c2
    ld a, c                                       ; $4b94: $79
    ld [hl+], a                                   ; $4b95: $22
    ld [hl], b                                    ; $4b96: $70
    ld hl, $c322                                  ; $4b97: $21 $22 $c3
    ld a, [hl+]                                   ; $4b9a: $2a
    ld d, [hl]                                    ; $4b9b: $56
    ld e, a                                       ; $4b9c: $5f
    ld a, [$c369]                                 ; $4b9d: $fa $69 $c3
    ld l, a                                       ; $4ba0: $6f
    ld h, $00                                     ; $4ba1: $26 $00
    bit 7, l                                      ; $4ba3: $cb $7d
    jr z, jr_004_4ba9                             ; $4ba5: $28 $02

    ld h, $ff                                     ; $4ba7: $26 $ff

jr_004_4ba9:
    add hl, hl                                    ; $4ba9: $29
    add hl, hl                                    ; $4baa: $29
    add hl, hl                                    ; $4bab: $29
    add hl, hl                                    ; $4bac: $29
    add hl, hl                                    ; $4bad: $29
    add hl, de                                    ; $4bae: $19
    ld c, l                                       ; $4baf: $4d
    ld b, h                                       ; $4bb0: $44
    ld hl, $c29c                                  ; $4bb1: $21 $9c $c2
    ld a, c                                       ; $4bb4: $79
    ld [hl+], a                                   ; $4bb5: $22
    ld [hl], b                                    ; $4bb6: $70
    ld de, $d000                                  ; $4bb7: $11 $00 $d0
    ld a, $18                                     ; $4bba: $3e $18
    ld [$c288], a                                 ; $4bbc: $ea $88 $c2

Jump_004_4bbf:
    inc e                                         ; $4bbf: $1c
    ld a, [de]                                    ; $4bc0: $1a
    dec e                                         ; $4bc1: $1d
    or a                                          ; $4bc2: $b7
    jp z, Jump_004_4cc4                           ; $4bc3: $ca $c4 $4c

    ld hl, $0016                                  ; $4bc6: $21 $16 $00
    add hl, de                                    ; $4bc9: $19
    ld a, [hl]                                    ; $4bca: $7e
    cp $02                                        ; $4bcb: $fe $02
    jp nz, Jump_004_4cc4                          ; $4bcd: $c2 $c4 $4c

    ld hl, $002e                                  ; $4bd0: $21 $2e $00
    add hl, de                                    ; $4bd3: $19
    ld a, [hl]                                    ; $4bd4: $7e
    and a                                         ; $4bd5: $a7
    jr z, jr_004_4bdc                             ; $4bd6: $28 $04

    dec [hl]                                      ; $4bd8: $35
    jp Jump_004_4cc4                              ; $4bd9: $c3 $c4 $4c


jr_004_4bdc:
    ld hl, $002b                                  ; $4bdc: $21 $2b $00
    add hl, de                                    ; $4bdf: $19
    ld a, [hl]                                    ; $4be0: $7e
    ld [$c286], a                                 ; $4be1: $ea $86 $c2
    ld hl, $002f                                  ; $4be4: $21 $2f $00
    add hl, de                                    ; $4be7: $19
    ld [hl], $00                                  ; $4be8: $36 $00
    ld hl, $c29c                                  ; $4bea: $21 $9c $c2
    ld a, [hl+]                                   ; $4bed: $2a
    ld b, [hl]                                    ; $4bee: $46
    ld c, a                                       ; $4bef: $4f
    ld hl, $0008                                  ; $4bf0: $21 $08 $00
    add hl, de                                    ; $4bf3: $19
    ld a, [hl+]                                   ; $4bf4: $2a
    ld h, [hl]                                    ; $4bf5: $66
    ld l, a                                       ; $4bf6: $6f
    bit 7, h                                      ; $4bf7: $cb $7c
    jr z, jr_004_4c05                             ; $4bf9: $28 $0a

    call Call_000_0c60                            ; $4bfb: $cd $60 $0c
    srl h                                         ; $4bfe: $cb $3c
    rr l                                          ; $4c00: $cb $1d
    add hl, bc                                    ; $4c02: $09
    ld c, l                                       ; $4c03: $4d
    ld b, h                                       ; $4c04: $44

jr_004_4c05:
    ld hl, $0006                                  ; $4c05: $21 $06 $00
    add hl, de                                    ; $4c08: $19
    ld a, [hl+]                                   ; $4c09: $2a
    ld h, [hl]                                    ; $4c0a: $66
    ld l, a                                       ; $4c0b: $6f
    ld a, l                                       ; $4c0c: $7d
    sub c                                         ; $4c0d: $91
    ld l, a                                       ; $4c0e: $6f
    ld a, h                                       ; $4c0f: $7c
    sbc b                                         ; $4c10: $98
    ld h, a                                       ; $4c11: $67
    ld bc, $0090                                  ; $4c12: $01 $90 $00
    add hl, bc                                    ; $4c15: $09
    ld a, h                                       ; $4c16: $7c
    cp $14                                        ; $4c17: $fe $14
    jp nc, Jump_004_4cb9                          ; $4c19: $d2 $b9 $4c

    add hl, hl                                    ; $4c1c: $29
    add hl, hl                                    ; $4c1d: $29
    add hl, hl                                    ; $4c1e: $29
    ld a, h                                       ; $4c1f: $7c
    ld [$c285], a                                 ; $4c20: $ea $85 $c2
    ld hl, $c29a                                  ; $4c23: $21 $9a $c2
    ld a, [hl+]                                   ; $4c26: $2a
    ld b, [hl]                                    ; $4c27: $46
    ld c, a                                       ; $4c28: $4f
    ld hl, $0004                                  ; $4c29: $21 $04 $00
    add hl, de                                    ; $4c2c: $19
    ld a, [hl+]                                   ; $4c2d: $2a
    ld h, [hl]                                    ; $4c2e: $66
    ld l, a                                       ; $4c2f: $6f
    ld a, l                                       ; $4c30: $7d
    sub c                                         ; $4c31: $91
    ld l, a                                       ; $4c32: $6f
    ld a, h                                       ; $4c33: $7c
    sbc b                                         ; $4c34: $98
    ld h, a                                       ; $4c35: $67
    ld bc, $0010                                  ; $4c36: $01 $10 $00
    add hl, bc                                    ; $4c39: $09
    ld a, h                                       ; $4c3a: $7c
    inc a                                         ; $4c3b: $3c
    cp $16                                        ; $4c3c: $fe $16
    jp nc, Jump_004_4cb9                          ; $4c3e: $d2 $b9 $4c

    add hl, hl                                    ; $4c41: $29
    add hl, hl                                    ; $4c42: $29
    add hl, hl                                    ; $4c43: $29
    ld a, h                                       ; $4c44: $7c
    ld [$c284], a                                 ; $4c45: $ea $84 $c2
    ld hl, $002f                                  ; $4c48: $21 $2f $00
    add hl, de                                    ; $4c4b: $19
    ld [hl], $01                                  ; $4c4c: $36 $01
    ld hl, $002c                                  ; $4c4e: $21 $2c $00
    add hl, de                                    ; $4c51: $19
    ld a, [hl]                                    ; $4c52: $7e
    add a                                         ; $4c53: $87
    add a                                         ; $4c54: $87
    ld c, a                                       ; $4c55: $4f
    ld hl, $002d                                  ; $4c56: $21 $2d $00
    add hl, de                                    ; $4c59: $19
    ld b, [hl]                                    ; $4c5a: $46
    push de                                       ; $4c5b: $d5
    ld a, [$c284]                                 ; $4c5c: $fa $84 $c2
    ld d, a                                       ; $4c5f: $57
    ld a, [$c285]                                 ; $4c60: $fa $85 $c2
    ld e, a                                       ; $4c63: $5f
    call Call_000_26a4                            ; $4c64: $cd $a4 $26
    pop de                                        ; $4c67: $d1
    call Call_004_4acd                            ; $4c68: $cd $cd $4a
    ld hl, $0033                                  ; $4c6b: $21 $33 $00
    add hl, de                                    ; $4c6e: $19
    ld a, [hl]                                    ; $4c6f: $7e
    and a                                         ; $4c70: $a7
    jr nz, jr_004_4c7d                            ; $4c71: $20 $0a

    ld hl, $0010                                  ; $4c73: $21 $10 $00
    add hl, de                                    ; $4c76: $19
    ld a, [hl]                                    ; $4c77: $7e
    ld hl, $0032                                  ; $4c78: $21 $32 $00
    add hl, de                                    ; $4c7b: $19
    ld [hl], a                                    ; $4c7c: $77

jr_004_4c7d:
    ld hl, $0032                                  ; $4c7d: $21 $32 $00
    add hl, de                                    ; $4c80: $19
    ld a, [hl]                                    ; $4c81: $7e
    add $08                                       ; $4c82: $c6 $08
    swap a                                        ; $4c84: $cb $37
    and $0f                                       ; $4c86: $e6 $0f
    add $bd                                       ; $4c88: $c6 $bd
    ld l, a                                       ; $4c8a: $6f
    adc $4a                                       ; $4c8b: $ce $4a
    sub l                                         ; $4c8d: $95
    ld h, a                                       ; $4c8e: $67
    ld b, [hl]                                    ; $4c8f: $46
    ld hl, $0028                                  ; $4c90: $21 $28 $00
    add hl, de                                    ; $4c93: $19
    ld a, [hl+]                                   ; $4c94: $2a
    cp c                                          ; $4c95: $b9
    jr nz, jr_004_4c9c                            ; $4c96: $20 $04

    ld a, [hl]                                    ; $4c98: $7e
    cp b                                          ; $4c99: $b8
    jr z, jr_004_4cb7                             ; $4c9a: $28 $1b

jr_004_4c9c:
    ld a, b                                       ; $4c9c: $78
    ld [hl-], a                                   ; $4c9d: $32
    ld [hl], c                                    ; $4c9e: $71
    ld hl, $0020                                  ; $4c9f: $21 $20 $00
    add hl, de                                    ; $4ca2: $19
    ld a, [hl+]                                   ; $4ca3: $2a
    ld h, [hl]                                    ; $4ca4: $66
    ld l, a                                       ; $4ca5: $6f
    push de                                       ; $4ca6: $d5
    push hl                                       ; $4ca7: $e5
    ld hl, $0038                                  ; $4ca8: $21 $38 $00
    add hl, de                                    ; $4cab: $19
    ld a, [hl+]                                   ; $4cac: $2a
    ld d, [hl]                                    ; $4cad: $56
    ld e, a                                       ; $4cae: $5f
    pop hl                                        ; $4caf: $e1
    ld a, [$c286]                                 ; $4cb0: $fa $86 $c2
    rst $18                                       ; $4cb3: $df

    db $00, $26

    pop de                                        ; $4cb6: $d1

jr_004_4cb7:
    jr jr_004_4cc4                                ; $4cb7: $18 $0b

Jump_004_4cb9:
    ld hl, $0037                                  ; $4cb9: $21 $37 $00
    add hl, de                                    ; $4cbc: $19
    ld a, [hl]                                    ; $4cbd: $7e
    and a                                         ; $4cbe: $a7
    jr z, jr_004_4cc4                             ; $4cbf: $28 $03

    call Call_004_4acd                            ; $4cc1: $cd $cd $4a

Jump_004_4cc4:
jr_004_4cc4:
    ld hl, $0040                                  ; $4cc4: $21 $40 $00
    add hl, de                                    ; $4cc7: $19
    ld e, l                                       ; $4cc8: $5d
    ld d, h                                       ; $4cc9: $54
    ld hl, $c288                                  ; $4cca: $21 $88 $c2
    dec [hl]                                      ; $4ccd: $35
    jp nz, Jump_004_4bbf                          ; $4cce: $c2 $bf $4b

    pop hl                                        ; $4cd1: $e1
    pop de                                        ; $4cd2: $d1
    pop bc                                        ; $4cd3: $c1
    pop af                                        ; $4cd4: $f1
    ret                                           ; $4cd5: $c9


    push af                                       ; $4cd6: $f5
    push bc                                       ; $4cd7: $c5
    push de                                       ; $4cd8: $d5
    push hl                                       ; $4cd9: $e5
    ld a, $04                                     ; $4cda: $3e $04
    ldh [$96], a                                  ; $4cdc: $e0 $96
    ldh [rSVBK], a                                ; $4cde: $e0 $70
    ld e, l                                       ; $4ce0: $5d
    ld d, h                                       ; $4ce1: $54
    ld hl, $0028                                  ; $4ce2: $21 $28 $00
    add hl, de                                    ; $4ce5: $19
    ld a, c                                       ; $4ce6: $79
    ld [hl+], a                                   ; $4ce7: $22
    ld [hl], b                                    ; $4ce8: $70
    ld hl, $002b                                  ; $4ce9: $21 $2b $00
    add hl, de                                    ; $4cec: $19
    ld a, [hl]                                    ; $4ced: $7e
    and a                                         ; $4cee: $a7
    jr z, @+$17                                   ; $4cef: $28 $15

    push af                                       ; $4cf1: $f5
    ld hl, $0020                                  ; $4cf2: $21 $20 $00
    add hl, de                                    ; $4cf5: $19
    ld a, [hl+]                                   ; $4cf6: $2a
    ld h, [hl]                                    ; $4cf7: $66
    ld l, a                                       ; $4cf8: $6f
    push hl                                       ; $4cf9: $e5
    ld hl, $0038                                  ; $4cfa: $21 $38 $00
    add hl, de                                    ; $4cfd: $19
    ld a, [hl+]                                   ; $4cfe: $2a
    ld d, [hl]                                    ; $4cff: $56
    ld e, a                                       ; $4d00: $5f
    pop hl                                        ; $4d01: $e1
    pop af                                        ; $4d02: $f1
    rst $18                                       ; $4d03: $df
    nop                                           ; $4d04: $00
    ld h, $e1                                     ; $4d05: $26 $e1
    pop de                                        ; $4d07: $d1
    pop bc                                        ; $4d08: $c1
    pop af                                        ; $4d09: $f1
    ret                                           ; $4d0a: $c9


    db $9e, $22, $ff, $6b, $5f, $01, $00, $00, $7f, $32, $ff, $6b, $1f, $02, $00, $00
    db $3f, $4a, $ff, $6b, $df, $18, $00, $00, $1e, $5e, $ff, $6b, $d8, $7c, $00, $00

    push af                                       ; $4d2b: $f5
    push bc                                       ; $4d2c: $c5
    push de                                       ; $4d2d: $d5
    push hl                                       ; $4d2e: $e5
    ld hl, $4d0b                                  ; $4d2f: $21 $0b $4d
    ld de, $0c04                                  ; $4d32: $11 $04 $0c
    call Call_000_0595                            ; $4d35: $cd $95 $05
    pop hl                                        ; $4d38: $e1
    pop de                                        ; $4d39: $d1
    pop bc                                        ; $4d3a: $c1
    pop af                                        ; $4d3b: $f1
    ret                                           ; $4d3c: $c9


    inc h                                         ; $4d3d: $24
    dec h                                         ; $4d3e: $25
    jr nz, jr_004_4d42                            ; $4d3f: $20 $01

    ret                                           ; $4d41: $c9


Call_004_4d42:
jr_004_4d42:
    push af                                       ; $4d42: $f5
    push bc                                       ; $4d43: $c5
    push de                                       ; $4d44: $d5
    push hl                                       ; $4d45: $e5
    ld e, l                                       ; $4d46: $5d
    ld d, h                                       ; $4d47: $54
    ld hl, $0030                                  ; $4d48: $21 $30 $00
    add hl, de                                    ; $4d4b: $19
    ld [hl], a                                    ; $4d4c: $77
    add a                                         ; $4d4d: $87
    add $1c                                       ; $4d4e: $c6 $1c
    ld l, a                                       ; $4d50: $6f
    adc $4f                                       ; $4d51: $ce $4f
    sub l                                         ; $4d53: $95
    ld h, a                                       ; $4d54: $67
    ld a, [hl+]                                   ; $4d55: $2a
    ld h, [hl]                                    ; $4d56: $66
    ld l, a                                       ; $4d57: $6f
    ld a, $04                                     ; $4d58: $3e $04
    ldh [$96], a                                  ; $4d5a: $e0 $96
    ldh [rSVBK], a                                ; $4d5c: $e0 $70
    ld a, $2b                                     ; $4d5e: $3e $2b
    add e                                         ; $4d60: $83
    ld c, a                                       ; $4d61: $4f
    ld b, d                                       ; $4d62: $42
    ld a, h                                       ; $4d63: $7c
    ld [bc], a                                    ; $4d64: $02
    push de                                       ; $4d65: $d5
    ld de, $c400                                  ; $4d66: $11 $00 $c4
    ld bc, $0010                                  ; $4d69: $01 $10 $00
    call Call_000_021a                            ; $4d6c: $cd $1a $02
    pop de                                        ; $4d6f: $d1
    ld a, [$c400]                                 ; $4d70: $fa $00 $c4
    ld hl, $002d                                  ; $4d73: $21 $2d $00
    add hl, de                                    ; $4d76: $19
    ld [hl], a                                    ; $4d77: $77
    ld hl, $c402                                  ; $4d78: $21 $02 $c4
    ld a, [hl+]                                   ; $4d7b: $2a
    ld b, [hl]                                    ; $4d7c: $46
    ld c, a                                       ; $4d7d: $4f
    ld hl, $0020                                  ; $4d7e: $21 $20 $00
    add hl, de                                    ; $4d81: $19
    ld a, c                                       ; $4d82: $79
    ld [hl+], a                                   ; $4d83: $22
    ld [hl], b                                    ; $4d84: $70
    ld hl, $c404                                  ; $4d85: $21 $04 $c4
    ld a, [hl+]                                   ; $4d88: $2a
    ld b, [hl]                                    ; $4d89: $46
    ld c, a                                       ; $4d8a: $4f
    ld hl, $0022                                  ; $4d8b: $21 $22 $00
    add hl, de                                    ; $4d8e: $19
    ld a, c                                       ; $4d8f: $79
    ld [hl+], a                                   ; $4d90: $22
    ld [hl], b                                    ; $4d91: $70
    ld hl, $002d                                  ; $4d92: $21 $2d $00
    add hl, de                                    ; $4d95: $19
    ld a, [hl]                                    ; $4d96: $7e
    cp $63                                        ; $4d97: $fe $63
    jr nz, jr_004_4dc5                            ; $4d99: $20 $2a

    push de                                       ; $4d9b: $d5
    ld hl, $c406                                  ; $4d9c: $21 $06 $c4
    ld a, [hl+]                                   ; $4d9f: $2a
    ld h, [hl]                                    ; $4da0: $66
    ld l, a                                       ; $4da1: $6f
    ld a, $2b                                     ; $4da2: $3e $2b
    add e                                         ; $4da4: $83
    ld c, a                                       ; $4da5: $4f
    ld b, d                                       ; $4da6: $42
    ld a, [bc]                                    ; $4da7: $0a
    ld de, $c410                                  ; $4da8: $11 $10 $c4
    ld bc, $0008                                  ; $4dab: $01 $08 $00
    call Call_000_0654                            ; $4dae: $cd $54 $06
    pop de                                        ; $4db1: $d1
    ld b, $03                                     ; $4db2: $06 $03
    ld hl, $c289                                  ; $4db4: $21 $89 $c2
    ld a, [hl]                                    ; $4db7: $7e
    inc [hl]                                      ; $4db8: $34
    and a                                         ; $4db9: $a7
    jr z, jr_004_4dbd                             ; $4dba: $28 $01

    dec b                                         ; $4dbc: $05

jr_004_4dbd:
    ld hl, $c410                                  ; $4dbd: $21 $10 $c4
    call Call_004_4e02                            ; $4dc0: $cd $02 $4e
    jr jr_004_4de0                                ; $4dc3: $18 $1b

jr_004_4dc5:
    rst $30                                       ; $4dc5: $f7

    db $a0, $02

    jr z, jr_004_4de0                             ; $4dc8: $28 $16

    ld hl, $002d                                  ; $4dca: $21 $2d $00
    add hl, de                                    ; $4dcd: $19
    ld a, [hl]                                    ; $4dce: $7e
    sub $04                                       ; $4dcf: $d6 $04
    add a                                         ; $4dd1: $87
    add a                                         ; $4dd2: $87
    add a                                         ; $4dd3: $87
    add $0b                                       ; $4dd4: $c6 $0b
    ld l, a                                       ; $4dd6: $6f
    adc $4d                                       ; $4dd7: $ce $4d
    sub l                                         ; $4dd9: $95
    ld h, a                                       ; $4dda: $67
    ld b, $03                                     ; $4ddb: $06 $03
    call Call_004_4e02                            ; $4ddd: $cd $02 $4e

jr_004_4de0:
    ld hl, $0028                                  ; $4de0: $21 $28 $00
    add hl, de                                    ; $4de3: $19
    ld a, $ff                                     ; $4de4: $3e $ff
    ld [hl+], a                                   ; $4de6: $22
    ld [hl+], a                                   ; $4de7: $22
    ld hl, $0035                                  ; $4de8: $21 $35 $00
    add hl, de                                    ; $4deb: $19
    ld a, $01                                     ; $4dec: $3e $01
    ld [hl], a                                    ; $4dee: $77
    ld hl, $0036                                  ; $4def: $21 $36 $00
    add hl, de                                    ; $4df2: $19
    ld a, $04                                     ; $4df3: $3e $04
    ld [hl], a                                    ; $4df5: $77
    ld l, e                                       ; $4df6: $6b
    ld h, d                                       ; $4df7: $62
    ld a, $00                                     ; $4df8: $3e $00
    call Call_004_4e51                            ; $4dfa: $cd $51 $4e
    pop hl                                        ; $4dfd: $e1
    pop de                                        ; $4dfe: $d1
    pop bc                                        ; $4dff: $c1
    pop af                                        ; $4e00: $f1
    ret                                           ; $4e01: $c9


Call_004_4e02:
    push hl                                       ; $4e02: $e5
    ld hl, $002d                                  ; $4e03: $21 $2d $00
    add hl, de                                    ; $4e06: $19
    ld [hl], b                                    ; $4e07: $70
    pop hl                                        ; $4e08: $e1
    push de                                       ; $4e09: $d5
    ld a, b                                       ; $4e0a: $78
    add $08                                       ; $4e0b: $c6 $08
    ld d, a                                       ; $4e0d: $57
    ld e, $01                                     ; $4e0e: $1e $01
    call Call_000_0595                            ; $4e10: $cd $95 $05
    pop de                                        ; $4e13: $d1
    ret                                           ; $4e14: $c9


Call_004_4e15:
    xor a                                         ; $4e15: $af
    inc h                                         ; $4e16: $24
    dec h                                         ; $4e17: $25
    ret z                                         ; $4e18: $c8

    push de                                       ; $4e19: $d5
    push hl                                       ; $4e1a: $e5
    ld a, $04                                     ; $4e1b: $3e $04
    ldh [$96], a                                  ; $4e1d: $e0 $96
    ldh [rSVBK], a                                ; $4e1f: $e0 $70
    ld de, $0031                                  ; $4e21: $11 $31 $00
    add hl, de                                    ; $4e24: $19
    ld a, [hl]                                    ; $4e25: $7e
    cp $00                                        ; $4e26: $fe $00
    jr z, jr_004_4e32                             ; $4e28: $28 $08

    cp $01                                        ; $4e2a: $fe $01
    jr z, jr_004_4e32                             ; $4e2c: $28 $04

    ld a, $01                                     ; $4e2e: $3e $01
    jr jr_004_4e33                                ; $4e30: $18 $01

jr_004_4e32:
    xor a                                         ; $4e32: $af

jr_004_4e33:
    pop hl                                        ; $4e33: $e1
    pop de                                        ; $4e34: $d1
    ret                                           ; $4e35: $c9


    push af                                       ; $4e36: $f5
    push bc                                       ; $4e37: $c5
    ld bc, $00f0                                  ; $4e38: $01 $f0 $00

jr_004_4e3b:
    call Call_004_4e15                            ; $4e3b: $cd $15 $4e
    and a                                         ; $4e3e: $a7
    jr z, jr_004_4e49                             ; $4e3f: $28 $08

    call Call_000_2e3b                            ; $4e41: $cd $3b $2e
    dec bc                                        ; $4e44: $0b
    ld a, b                                       ; $4e45: $78
    or c                                          ; $4e46: $b1
    jr nz, jr_004_4e3b                            ; $4e47: $20 $f2

jr_004_4e49:
    pop bc                                        ; $4e49: $c1
    pop af                                        ; $4e4a: $f1
    ret                                           ; $4e4b: $c9


Call_004_4e4c:
    inc h                                         ; $4e4c: $24
    dec h                                         ; $4e4d: $25
    jr nz, jr_004_4e51                            ; $4e4e: $20 $01

    ret                                           ; $4e50: $c9


Call_004_4e51:
jr_004_4e51:
    push af                                       ; $4e51: $f5
    push bc                                       ; $4e52: $c5
    push de                                       ; $4e53: $d5
    push hl                                       ; $4e54: $e5
    ld e, l                                       ; $4e55: $5d
    ld d, h                                       ; $4e56: $54
    ld c, a                                       ; $4e57: $4f
    ld a, $04                                     ; $4e58: $3e $04
    ldh [$96], a                                  ; $4e5a: $e0 $96
    ldh [rSVBK], a                                ; $4e5c: $e0 $70
    ld hl, $0031                                  ; $4e5e: $21 $31 $00
    add hl, de                                    ; $4e61: $19
    ld [hl], c                                    ; $4e62: $71
    ld b, $00                                     ; $4e63: $06 $00
    ld a, c                                       ; $4e65: $79
    add a                                         ; $4e66: $87
    ld c, a                                       ; $4e67: $4f
    ld hl, $0022                                  ; $4e68: $21 $22 $00
    add hl, de                                    ; $4e6b: $19
    ld a, [hl+]                                   ; $4e6c: $2a
    ld h, [hl]                                    ; $4e6d: $66
    ld l, a                                       ; $4e6e: $6f
    add hl, bc                                    ; $4e6f: $09
    push hl                                       ; $4e70: $e5
    ld hl, $002b                                  ; $4e71: $21 $2b $00
    add hl, de                                    ; $4e74: $19
    ld a, [hl]                                    ; $4e75: $7e
    pop hl                                        ; $4e76: $e1
    call Call_000_0626                            ; $4e77: $cd $26 $06
    ld hl, $0024                                  ; $4e7a: $21 $24 $00
    add hl, de                                    ; $4e7d: $19
    ld a, c                                       ; $4e7e: $79
    ld [hl+], a                                   ; $4e7f: $22
    ld [hl], b                                    ; $4e80: $70
    ld hl, $0026                                  ; $4e81: $21 $26 $00
    add hl, de                                    ; $4e84: $19
    ld a, c                                       ; $4e85: $79
    ld [hl+], a                                   ; $4e86: $22
    ld [hl], b                                    ; $4e87: $70
    ld hl, $002a                                  ; $4e88: $21 $2a $00
    add hl, de                                    ; $4e8b: $19
    ld [hl], $00                                  ; $4e8c: $36 $00
    pop hl                                        ; $4e8e: $e1
    pop de                                        ; $4e8f: $d1
    pop bc                                        ; $4e90: $c1
    pop af                                        ; $4e91: $f1
    ret                                           ; $4e92: $c9


Call_004_4e93:
    inc h                                         ; $4e93: $24
    dec h                                         ; $4e94: $25
    ret z                                         ; $4e95: $c8

    push af                                       ; $4e96: $f5
    push bc                                       ; $4e97: $c5
    push de                                       ; $4e98: $d5
    push hl                                       ; $4e99: $e5
    ld e, l                                       ; $4e9a: $5d
    ld d, h                                       ; $4e9b: $54
    ld c, $03                                     ; $4e9c: $0e $03
    ld a, $04                                     ; $4e9e: $3e $04
    ldh [$96], a                                  ; $4ea0: $e0 $96
    ldh [rSVBK], a                                ; $4ea2: $e0 $70
    ld hl, $0031                                  ; $4ea4: $21 $31 $00
    add hl, de                                    ; $4ea7: $19
    ld [hl], c                                    ; $4ea8: $71
    ld b, $00                                     ; $4ea9: $06 $00
    ld a, c                                       ; $4eab: $79
    add a                                         ; $4eac: $87
    ld c, a                                       ; $4ead: $4f
    ld hl, $0022                                  ; $4eae: $21 $22 $00
    add hl, de                                    ; $4eb1: $19
    ld a, [hl+]                                   ; $4eb2: $2a
    ld h, [hl]                                    ; $4eb3: $66
    ld l, a                                       ; $4eb4: $6f
    add hl, bc                                    ; $4eb5: $09
    push hl                                       ; $4eb6: $e5
    ld hl, $002b                                  ; $4eb7: $21 $2b $00
    add hl, de                                    ; $4eba: $19
    ld a, [hl]                                    ; $4ebb: $7e
    pop hl                                        ; $4ebc: $e1
    call Call_000_0626                            ; $4ebd: $cd $26 $06
    ld hl, $0024                                  ; $4ec0: $21 $24 $00
    add hl, de                                    ; $4ec3: $19
    ld a, c                                       ; $4ec4: $79
    ld [hl+], a                                   ; $4ec5: $22
    ld [hl], b                                    ; $4ec6: $70
    ld hl, $0026                                  ; $4ec7: $21 $26 $00
    add hl, de                                    ; $4eca: $19
    ld a, $08                                     ; $4ecb: $3e $08
    add c                                         ; $4ecd: $81
    ld c, a                                       ; $4ece: $4f
    jr nc, jr_004_4ed2                            ; $4ecf: $30 $01

    inc b                                         ; $4ed1: $04

jr_004_4ed2:
    ld a, c                                       ; $4ed2: $79
    ld [hl+], a                                   ; $4ed3: $22
    ld [hl], b                                    ; $4ed4: $70
    ld hl, $002a                                  ; $4ed5: $21 $2a $00
    add hl, de                                    ; $4ed8: $19
    ld [hl], $00                                  ; $4ed9: $36 $00
    pop hl                                        ; $4edb: $e1
    pop de                                        ; $4edc: $d1
    pop bc                                        ; $4edd: $c1
    pop af                                        ; $4ede: $f1
    ret                                           ; $4edf: $c9


    inc h                                         ; $4ee0: $24
    dec h                                         ; $4ee1: $25
    ret z                                         ; $4ee2: $c8

    push af                                       ; $4ee3: $f5
    ld a, $04                                     ; $4ee4: $3e $04
    ldh [$96], a                                  ; $4ee6: $e0 $96
    ldh [rSVBK], a                                ; $4ee8: $e0 $70
    pop af                                        ; $4eea: $f1
    push de                                       ; $4eeb: $d5
    push hl                                       ; $4eec: $e5
    ld de, $0035                                  ; $4eed: $11 $35 $00
    add hl, de                                    ; $4ef0: $19
    ld [hl], a                                    ; $4ef1: $77
    pop de                                        ; $4ef2: $d1
    pop hl                                        ; $4ef3: $e1
    ret                                           ; $4ef4: $c9


    inc h                                         ; $4ef5: $24
    dec h                                         ; $4ef6: $25
    ret z                                         ; $4ef7: $c8

    push af                                       ; $4ef8: $f5
    ld a, $04                                     ; $4ef9: $3e $04
    ldh [$96], a                                  ; $4efb: $e0 $96
    ldh [rSVBK], a                                ; $4efd: $e0 $70
    pop af                                        ; $4eff: $f1
    push de                                       ; $4f00: $d5
    push hl                                       ; $4f01: $e5
    ld de, $0036                                  ; $4f02: $11 $36 $00
    add hl, de                                    ; $4f05: $19
    ld [hl], a                                    ; $4f06: $77
    pop de                                        ; $4f07: $d1
    pop hl                                        ; $4f08: $e1
    ret                                           ; $4f09: $c9


    push bc                                       ; $4f0a: $c5
    push hl                                       ; $4f0b: $e5
    ld hl, $4f1c                                  ; $4f0c: $21 $1c $4f
    ld c, $ff                                     ; $4f0f: $0e $ff

jr_004_4f11:
    inc c                                         ; $4f11: $0c
    ld a, [hl+]                                   ; $4f12: $2a
    ld b, a                                       ; $4f13: $47
    ld a, [hl+]                                   ; $4f14: $2a
    or b                                          ; $4f15: $b0
    jr nz, jr_004_4f11                            ; $4f16: $20 $f9

    ld a, c                                       ; $4f18: $79
    pop hl                                        ; $4f19: $e1
    pop bc                                        ; $4f1a: $c1
    ret                                           ; $4f1b: $c9


    db $02, $20

    inc b                                         ; $4f1e: $04
    db $20                                        ; $4f1f: $20

    db $06, $20

    ld [$0a20], sp                                ; $4f22: $08 $20 $0a
    jr nz, @+$04                                  ; $4f25: $20 $02

jr_004_4f27:
    ld hl, $2104                                  ; $4f27: $21 $04 $21
    ld b, $21                                     ; $4f2a: $06 $21

    db $08, $21, $0a, $21, $02, $22, $04, $22, $06, $22, $08, $22, $0a, $22, $0c, $22

    ld c, $22                                     ; $4f3c: $0e $22
    ld [bc], a                                    ; $4f3e: $02
    inc hl                                        ; $4f3f: $23
    inc b                                         ; $4f40: $04
    inc hl                                        ; $4f41: $23

    db $06, $23, $08, $23, $0a, $23, $0c, $23, $0e, $23

    ld [bc], a                                    ; $4f4c: $02
    inc h                                         ; $4f4d: $24
    inc b                                         ; $4f4e: $04
    inc h                                         ; $4f4f: $24
    ld b, $24                                     ; $4f50: $06 $24
    ld [$0a24], sp                                ; $4f52: $08 $24 $0a
    inc h                                         ; $4f55: $24

    db $0c, $24, $0e, $24, $10, $24

    ld [bc], a                                    ; $4f5c: $02
    dec h                                         ; $4f5d: $25
    inc b                                         ; $4f5e: $04
    dec h                                         ; $4f5f: $25
    ld b, $25                                     ; $4f60: $06 $25
    ld [$0a25], sp                                ; $4f62: $08 $25 $0a
    dec h                                         ; $4f65: $25
    inc c                                         ; $4f66: $0c
    dec h                                         ; $4f67: $25

    db $0e, $25

    db $10                                        ; $4f6a: $10
    dec h                                         ; $4f6b: $25
    ld [bc], a                                    ; $4f6c: $02
    ld h, $04                                     ; $4f6d: $26 $04
    ld h, $06                                     ; $4f6f: $26 $06
    ld h, $08                                     ; $4f71: $26 $08
    ld h, $0a                                     ; $4f73: $26 $0a
    ld h, $0c                                     ; $4f75: $26 $0c
    ld h, $0e                                     ; $4f77: $26 $0e
    ld h, $10                                     ; $4f79: $26 $10
    ld h, $00                                     ; $4f7b: $26 $00
    nop                                           ; $4f7d: $00

Call_004_4f7e:
    push de                                       ; $4f7e: $d5
    push hl                                       ; $4f7f: $e5
    ld a, $ff                                     ; $4f80: $3e $ff
    inc h                                         ; $4f82: $24
    dec h                                         ; $4f83: $25
    jr z, jr_004_4f8f                             ; $4f84: $28 $09

    ld de, $d000                                  ; $4f86: $11 $00 $d0
    call Call_000_08ac                            ; $4f89: $cd $ac $08
    add hl, hl                                    ; $4f8c: $29
    add hl, hl                                    ; $4f8d: $29
    ld a, h                                       ; $4f8e: $7c

jr_004_4f8f:
    pop hl                                        ; $4f8f: $e1
    pop de                                        ; $4f90: $d1
    ret                                           ; $4f91: $c9


Call_004_4f92:
    inc b                                         ; $4f92: $04
    dec b                                         ; $4f93: $05
    jr nz, jr_004_4f97                            ; $4f94: $20 $01

    ret                                           ; $4f96: $c9


jr_004_4f97:
    push de                                       ; $4f97: $d5
    push hl                                       ; $4f98: $e5
    push hl                                       ; $4f99: $e5
    ld hl, $0006                                  ; $4f9a: $21 $06 $00
    add hl, bc                                    ; $4f9d: $09
    ld a, e                                       ; $4f9e: $7b
    ld [hl+], a                                   ; $4f9f: $22
    ld a, d                                       ; $4fa0: $7a
    ld [hl+], a                                   ; $4fa1: $22
    ld hl, $000c                                  ; $4fa2: $21 $0c $00
    add hl, bc                                    ; $4fa5: $09
    ld a, e                                       ; $4fa6: $7b
    ld [hl+], a                                   ; $4fa7: $22
    ld a, d                                       ; $4fa8: $7a
    ld [hl+], a                                   ; $4fa9: $22
    pop de                                        ; $4faa: $d1
    ld hl, $0004                                  ; $4fab: $21 $04 $00
    add hl, bc                                    ; $4fae: $09
    ld a, e                                       ; $4faf: $7b
    ld [hl+], a                                   ; $4fb0: $22
    ld a, d                                       ; $4fb1: $7a
    ld [hl+], a                                   ; $4fb2: $22
    ld hl, $000a                                  ; $4fb3: $21 $0a $00
    add hl, bc                                    ; $4fb6: $09
    ld a, e                                       ; $4fb7: $7b
    ld [hl+], a                                   ; $4fb8: $22
    ld a, d                                       ; $4fb9: $7a
    ld [hl+], a                                   ; $4fba: $22
    pop hl                                        ; $4fbb: $e1
    pop de                                        ; $4fbc: $d1
    ret                                           ; $4fbd: $c9


Call_004_4fbe:
    bit 7, d                                      ; $4fbe: $cb $7a
    jr nz, jr_004_4fda                            ; $4fc0: $20 $18

    sla e                                         ; $4fc2: $cb $23
    rl d                                          ; $4fc4: $cb $12
    sla e                                         ; $4fc6: $cb $23
    rl d                                          ; $4fc8: $cb $12
    sla e                                         ; $4fca: $cb $23
    rl d                                          ; $4fcc: $cb $12
    sla e                                         ; $4fce: $cb $23
    rl d                                          ; $4fd0: $cb $12
    sla e                                         ; $4fd2: $cb $23
    rl d                                          ; $4fd4: $cb $12
    call Call_000_2d10                            ; $4fd6: $cd $10 $2d
    ret                                           ; $4fd9: $c9


jr_004_4fda:
    sla e                                         ; $4fda: $cb $23
    rl d                                          ; $4fdc: $cb $12
    sla e                                         ; $4fde: $cb $23
    rl d                                          ; $4fe0: $cb $12
    sla e                                         ; $4fe2: $cb $23
    rl d                                          ; $4fe4: $cb $12
    sla e                                         ; $4fe6: $cb $23
    rl d                                          ; $4fe8: $cb $12
    sla e                                         ; $4fea: $cb $23
    rl d                                          ; $4fec: $cb $12
    call Call_000_2d10                            ; $4fee: $cd $10 $2d
    jr z, jr_004_4ff7                             ; $4ff1: $28 $04

    ld d, $01                                     ; $4ff3: $16 $01
    dec d                                         ; $4ff5: $15
    ret                                           ; $4ff6: $c9


jr_004_4ff7:
    ld d, $00                                     ; $4ff7: $16 $00
    dec d                                         ; $4ff9: $15
    ret                                           ; $4ffa: $c9


Call_004_4ffb:
    push af                                       ; $4ffb: $f5
    push bc                                       ; $4ffc: $c5
    push de                                       ; $4ffd: $d5
    ld b, a                                       ; $4ffe: $47
    ld a, $04                                     ; $4fff: $3e $04
    ldh [$96], a                                  ; $5001: $e0 $96
    ldh [rSVBK], a                                ; $5003: $e0 $70
    ld a, [hl+]                                   ; $5005: $2a
    ld e, a                                       ; $5006: $5f
    ld a, [hl+]                                   ; $5007: $2a
    ld d, a                                       ; $5008: $57
    ld a, b                                       ; $5009: $78
    push hl                                       ; $500a: $e5
    rst $18                                       ; $500b: $df

    db $06, $04

    ld c, l                                       ; $500e: $4d
    ld b, h                                       ; $500f: $44
    pop hl                                        ; $5010: $e1
    inc b                                         ; $5011: $04
    dec b                                         ; $5012: $05
    jr z, jr_004_507e                             ; $5013: $28 $69

    ld a, $04                                     ; $5015: $3e $04
    add c                                         ; $5017: $81
    ld e, a                                       ; $5018: $5f
    ld d, b                                       ; $5019: $50
    ld a, [hl+]                                   ; $501a: $2a
    ld [de], a                                    ; $501b: $12
    inc de                                        ; $501c: $13
    ld a, [hl-]                                   ; $501d: $3a
    ld [de], a                                    ; $501e: $12
    ld a, $0a                                     ; $501f: $3e $0a
    add c                                         ; $5021: $81
    ld e, a                                       ; $5022: $5f
    ld d, b                                       ; $5023: $50
    ld a, [hl+]                                   ; $5024: $2a
    ld [de], a                                    ; $5025: $12
    inc de                                        ; $5026: $13
    ld a, [hl+]                                   ; $5027: $2a
    ld [de], a                                    ; $5028: $12
    ld a, $06                                     ; $5029: $3e $06
    add c                                         ; $502b: $81
    ld e, a                                       ; $502c: $5f
    ld d, b                                       ; $502d: $50
    ld a, [hl+]                                   ; $502e: $2a
    ld [de], a                                    ; $502f: $12
    inc de                                        ; $5030: $13
    ld a, [hl-]                                   ; $5031: $3a
    ld [de], a                                    ; $5032: $12
    ld a, $0c                                     ; $5033: $3e $0c
    add c                                         ; $5035: $81
    ld e, a                                       ; $5036: $5f
    ld d, b                                       ; $5037: $50
    ld a, [hl+]                                   ; $5038: $2a
    ld [de], a                                    ; $5039: $12
    inc de                                        ; $503a: $13
    ld a, [hl+]                                   ; $503b: $2a
    ld [de], a                                    ; $503c: $12
    ld a, [hl+]                                   ; $503d: $2a
    ld e, a                                       ; $503e: $5f
    ld a, [hl+]                                   ; $503f: $2a
    ld d, a                                       ; $5040: $57
    ld a, e                                       ; $5041: $7b
    or d                                          ; $5042: $b2
    jr z, jr_004_504c                             ; $5043: $28 $07

    call Call_004_4fbe                            ; $5045: $cd $be $4f
    jr z, jr_004_504c                             ; $5048: $28 $02

    jr jr_004_507e                                ; $504a: $18 $32

jr_004_504c:
    inc hl                                        ; $504c: $23
    ld a, $10                                     ; $504d: $3e $10
    add c                                         ; $504f: $81
    ld e, a                                       ; $5050: $5f
    ld d, b                                       ; $5051: $50
    ld a, [hl+]                                   ; $5052: $2a
    ld [de], a                                    ; $5053: $12
    ld a, [hl+]                                   ; $5054: $2a
    ld e, a                                       ; $5055: $5f
    ld a, [hl+]                                   ; $5056: $2a
    ld l, c                                       ; $5057: $69
    ld h, b                                       ; $5058: $60
    call Call_004_4d42                            ; $5059: $cd $42 $4d
    ld a, e                                       ; $505c: $7b
    call Call_004_4e51                            ; $505d: $cd $51 $4e
    ld hl, $0017                                  ; $5060: $21 $17 $00
    add hl, bc                                    ; $5063: $09
    ld [hl], $01                                  ; $5064: $36 $01
    ld hl, $001e                                  ; $5066: $21 $1e $00
    add hl, bc                                    ; $5069: $09
    ld [hl], $01                                  ; $506a: $36 $01
    ld hl, $0016                                  ; $506c: $21 $16 $00
    add hl, bc                                    ; $506f: $09
    ld [hl], $02                                  ; $5070: $36 $02
    ld hl, $002c                                  ; $5072: $21 $2c $00
    add hl, bc                                    ; $5075: $09
    ld a, [hl]                                    ; $5076: $7e
    and $0f                                       ; $5077: $e6 $0f
    ld hl, $002e                                  ; $5079: $21 $2e $00
    add hl, bc                                    ; $507c: $09
    ld [hl], a                                    ; $507d: $77

jr_004_507e:
    ld l, c                                       ; $507e: $69
    ld h, b                                       ; $507f: $60
    pop de                                        ; $5080: $d1
    pop bc                                        ; $5081: $c1
    pop af                                        ; $5082: $f1
    ret                                           ; $5083: $c9


    push af                                       ; $5084: $f5
    push bc                                       ; $5085: $c5
    push de                                       ; $5086: $d5
    push hl                                       ; $5087: $e5

jr_004_5088:
    push af                                       ; $5088: $f5
    ld de, $c400                                  ; $5089: $11 $00 $c4
    ld bc, $000c                                  ; $508c: $01 $0c $00
    call Call_000_0654                            ; $508f: $cd $54 $06
    ld de, $c408                                  ; $5092: $11 $08 $c4
    ld a, [de]                                    ; $5095: $1a
    inc a                                         ; $5096: $3c
    jr z, jr_004_50a4                             ; $5097: $28 $0b

    pop af                                        ; $5099: $f1
    push hl                                       ; $509a: $e5
    ld hl, $c400                                  ; $509b: $21 $00 $c4
    call Call_004_4ffb                            ; $509e: $cd $fb $4f
    pop hl                                        ; $50a1: $e1
    jr jr_004_5088                                ; $50a2: $18 $e4

jr_004_50a4:
    pop af                                        ; $50a4: $f1
    pop hl                                        ; $50a5: $e1
    pop de                                        ; $50a6: $d1
    pop bc                                        ; $50a7: $c1
    pop af                                        ; $50a8: $f1
    ret                                           ; $50a9: $c9


    db $88, $52, $00, $01, $00, $01, $00, $00

    nop                                           ; $50b2: $00

    db $40, $01, $00

    nop                                           ; $50b6: $00
    nop                                           ; $50b7: $00
    nop                                           ; $50b8: $00
    nop                                           ; $50b9: $00
    nop                                           ; $50ba: $00
    nop                                           ; $50bb: $00
    nop                                           ; $50bc: $00
    nop                                           ; $50bd: $00
    rst $38                                       ; $50be: $ff

    db $88, $52, $00, $01, $00, $01, $00, $00

    nop                                           ; $50c7: $00

    db $40, $01, $02

    nop                                           ; $50cb: $00
    nop                                           ; $50cc: $00
    nop                                           ; $50cd: $00
    nop                                           ; $50ce: $00
    nop                                           ; $50cf: $00
    nop                                           ; $50d0: $00
    nop                                           ; $50d1: $00
    nop                                           ; $50d2: $00
    rst $38                                       ; $50d3: $ff
    adc b                                         ; $50d4: $88
    ld d, d                                       ; $50d5: $52
    nop                                           ; $50d6: $00
    ld bc, $0100                                  ; $50d7: $01 $00 $01
    nop                                           ; $50da: $00
    nop                                           ; $50db: $00
    nop                                           ; $50dc: $00
    ld b, b                                       ; $50dd: $40
    ld bc, $0003                                  ; $50de: $01 $03 $00
    nop                                           ; $50e1: $00
    nop                                           ; $50e2: $00
    nop                                           ; $50e3: $00
    nop                                           ; $50e4: $00
    nop                                           ; $50e5: $00
    nop                                           ; $50e6: $00
    nop                                           ; $50e7: $00
    rst $38                                       ; $50e8: $ff
    adc b                                         ; $50e9: $88
    ld d, d                                       ; $50ea: $52
    nop                                           ; $50eb: $00
    ld bc, $0100                                  ; $50ec: $01 $00 $01
    nop                                           ; $50ef: $00
    nop                                           ; $50f0: $00
    nop                                           ; $50f1: $00
    ld b, b                                       ; $50f2: $40
    ld bc, $0001                                  ; $50f3: $01 $01 $00
    nop                                           ; $50f6: $00
    nop                                           ; $50f7: $00
    nop                                           ; $50f8: $00
    nop                                           ; $50f9: $00
    nop                                           ; $50fa: $00
    nop                                           ; $50fb: $00
    nop                                           ; $50fc: $00
    rst $38                                       ; $50fd: $ff

    db $aa, $50, $bf, $50

    call nc, $e950                                ; $5102: $d4 $50 $e9
    ld d, b                                       ; $5105: $50

    db $0b, $0c, $fe, $ff

    push af                                       ; $510a: $f5
    push bc                                       ; $510b: $c5
    push de                                       ; $510c: $d5
    push hl                                       ; $510d: $e5
    ld a, $04                                     ; $510e: $3e $04
    ldh [$96], a                                  ; $5110: $e0 $96
    ldh [rSVBK], a                                ; $5112: $e0 $70
    push hl                                       ; $5114: $e5
    ld a, [$c810]                                 ; $5115: $fa $10 $c8
    and $03                                       ; $5118: $e6 $03
    add a                                         ; $511a: $87
    ld hl, $50fe                                  ; $511b: $21 $fe $50
    add l                                         ; $511e: $85
    ld l, a                                       ; $511f: $6f
    jr nc, jr_004_5123                            ; $5120: $30 $01

    inc h                                         ; $5122: $24

jr_004_5123:
    ld a, [hl+]                                   ; $5123: $2a
    ld h, [hl]                                    ; $5124: $66
    ld l, a                                       ; $5125: $6f
    ldh a, [$95]                                  ; $5126: $f0 $95
    call Call_004_4ffb                            ; $5128: $cd $fb $4f
    ld a, l                                       ; $512b: $7d
    ld [$c290], a                                 ; $512c: $ea $90 $c2
    ld a, h                                       ; $512f: $7c
    ld [$c291], a                                 ; $5130: $ea $91 $c2
    call Call_004_4f7e                            ; $5133: $cd $7e $4f
    ld [$c296], a                                 ; $5136: $ea $96 $c2
    ld a, c                                       ; $5139: $79
    ld c, l                                       ; $513a: $4d
    ld b, h                                       ; $513b: $44
    ld hl, $0010                                  ; $513c: $21 $10 $00
    add hl, bc                                    ; $513f: $09
    ld [hl], a                                    ; $5140: $77
    ld [$c28a], a                                 ; $5141: $ea $8a $c2
    pop hl                                        ; $5144: $e1
    call Call_004_4f92                            ; $5145: $cd $92 $4f
    push de                                       ; $5148: $d5
    push hl                                       ; $5149: $e5
    ldh a, [$95]                                  ; $514a: $f0 $95
    ld de, $5106                                  ; $514c: $11 $06 $51
    call Call_004_4139                            ; $514f: $cd $39 $41
    ld a, $01                                     ; $5152: $3e $01
    call Call_004_41ea                            ; $5154: $cd $ea $41
    ld bc, $c290                                  ; $5157: $01 $90 $c2
    ld a, [bc]                                    ; $515a: $0a
    ld e, a                                       ; $515b: $5f
    inc bc                                        ; $515c: $03
    ld a, [bc]                                    ; $515d: $0a
    ld d, a                                       ; $515e: $57
    call Call_004_41fc                            ; $515f: $cd $fc $41
    ld c, l                                       ; $5162: $4d
    ld b, h                                       ; $5163: $44
    pop hl                                        ; $5164: $e1
    pop de                                        ; $5165: $d1
    call Call_004_4f92                            ; $5166: $cd $92 $4f
    ld hl, $c292                                  ; $5169: $21 $92 $c2
    ld a, c                                       ; $516c: $79
    ld [hl+], a                                   ; $516d: $22
    ld [hl], b                                    ; $516e: $70
    ld l, c                                       ; $516f: $69
    ld h, b                                       ; $5170: $60
    call Call_004_4f7e                            ; $5171: $cd $7e $4f
    ld [$c297], a                                 ; $5174: $ea $97 $c2
    pop hl                                        ; $5177: $e1
    pop de                                        ; $5178: $d1
    pop bc                                        ; $5179: $c1
    pop af                                        ; $517a: $f1
    ret                                           ; $517b: $c9


    adc b                                         ; $517c: $88
    ld d, d                                       ; $517d: $52
    nop                                           ; $517e: $00
    ld bc, $0100                                  ; $517f: $01 $00 $01
    nop                                           ; $5182: $00
    nop                                           ; $5183: $00
    nop                                           ; $5184: $00
    ld b, b                                       ; $5185: $40
    ld bc, $0004                                  ; $5186: $01 $04 $00
    nop                                           ; $5189: $00
    nop                                           ; $518a: $00
    nop                                           ; $518b: $00
    nop                                           ; $518c: $00
    nop                                           ; $518d: $00
    nop                                           ; $518e: $00
    nop                                           ; $518f: $00
    rst $38                                       ; $5190: $ff
    adc b                                         ; $5191: $88
    ld d, d                                       ; $5192: $52
    nop                                           ; $5193: $00
    ld bc, $0100                                  ; $5194: $01 $00 $01
    nop                                           ; $5197: $00
    nop                                           ; $5198: $00
    nop                                           ; $5199: $00
    ld b, b                                       ; $519a: $40
    ld bc, $0005                                  ; $519b: $01 $05 $00
    nop                                           ; $519e: $00
    nop                                           ; $519f: $00
    nop                                           ; $51a0: $00
    nop                                           ; $51a1: $00
    nop                                           ; $51a2: $00
    nop                                           ; $51a3: $00
    nop                                           ; $51a4: $00
    rst $38                                       ; $51a5: $ff
    adc b                                         ; $51a6: $88
    ld d, d                                       ; $51a7: $52
    nop                                           ; $51a8: $00
    ld bc, $0100                                  ; $51a9: $01 $00 $01
    nop                                           ; $51ac: $00
    nop                                           ; $51ad: $00
    nop                                           ; $51ae: $00
    ld b, b                                       ; $51af: $40
    ld bc, $0006                                  ; $51b0: $01 $06 $00
    nop                                           ; $51b3: $00
    nop                                           ; $51b4: $00
    nop                                           ; $51b5: $00
    nop                                           ; $51b6: $00
    nop                                           ; $51b7: $00
    nop                                           ; $51b8: $00
    nop                                           ; $51b9: $00
    rst $38                                       ; $51ba: $ff
    adc b                                         ; $51bb: $88
    ld d, d                                       ; $51bc: $52
    nop                                           ; $51bd: $00
    ld bc, $0100                                  ; $51be: $01 $00 $01
    nop                                           ; $51c1: $00
    nop                                           ; $51c2: $00
    nop                                           ; $51c3: $00
    ld b, b                                       ; $51c4: $40
    ld bc, $0007                                  ; $51c5: $01 $07 $00
    nop                                           ; $51c8: $00
    nop                                           ; $51c9: $00
    nop                                           ; $51ca: $00
    nop                                           ; $51cb: $00
    nop                                           ; $51cc: $00
    nop                                           ; $51cd: $00
    nop                                           ; $51ce: $00
    rst $38                                       ; $51cf: $ff

    push af                                       ; $51d0: $f5
    push bc                                       ; $51d1: $c5
    push de                                       ; $51d2: $d5
    push hl                                       ; $51d3: $e5
    ld a, $04                                     ; $51d4: $3e $04
    ldh [$96], a                                  ; $51d6: $e0 $96
    ldh [rSVBK], a                                ; $51d8: $e0 $70
    ld a, $ff                                     ; $51da: $3e $ff
    ld [$c298], a                                 ; $51dc: $ea $98 $c2
    ld [$c299], a                                 ; $51df: $ea $99 $c2
    xor a                                         ; $51e2: $af
    ld hl, $c294                                  ; $51e3: $21 $94 $c2
    ld [hl+], a                                   ; $51e6: $22
    ld [hl+], a                                   ; $51e7: $22
    ld hl, $517c                                  ; $51e8: $21 $7c $51
    ld a, $04                                     ; $51eb: $3e $04
    rst $30                                       ; $51ed: $f7

    db $00, $12

    jr nz, jr_004_5212                            ; $51f0: $20 $20

    ld hl, $5191                                  ; $51f2: $21 $91 $51
    ld a, $05                                     ; $51f5: $3e $05
    rst $30                                       ; $51f7: $f7

    db $20, $12

    jr nz, jr_004_5212                            ; $51fa: $20 $16

    ld hl, $51a6                                  ; $51fc: $21 $a6 $51
    ld a, $06                                     ; $51ff: $3e $06
    rst $30                                       ; $5201: $f7

    db $40, $12

    jr nz, jr_004_5212                            ; $5204: $20 $0c

    ld hl, $51bb                                  ; $5206: $21 $bb $51
    ld a, $07                                     ; $5209: $3e $07
    rst $30                                       ; $520b: $f7

    db $60, $12

    jr nz, jr_004_5212                            ; $520e: $20 $02

    jr jr_004_5254                                ; $5210: $18 $42

jr_004_5212:
    ld [$c299], a                                 ; $5212: $ea $99 $c2
    ldh a, [$95]                                  ; $5215: $f0 $95
    call Call_004_4ffb                            ; $5217: $cd $fb $4f
    inc h                                         ; $521a: $24
    dec h                                         ; $521b: $25
    jr z, jr_004_5254                             ; $521c: $28 $36

    ld c, l                                       ; $521e: $4d
    ld b, h                                       ; $521f: $44
    call Call_004_4f7e                            ; $5220: $cd $7e $4f
    ld [$c298], a                                 ; $5223: $ea $98 $c2
    ld hl, $c294                                  ; $5226: $21 $94 $c2
    ld a, c                                       ; $5229: $79
    ld [hl+], a                                   ; $522a: $22
    ld [hl], b                                    ; $522b: $70
    ld hl, $c290                                  ; $522c: $21 $90 $c2
    ld a, [hl+]                                   ; $522f: $2a
    ld d, [hl]                                    ; $5230: $56
    ld e, a                                       ; $5231: $5f
    ld l, c                                       ; $5232: $69
    ld h, b                                       ; $5233: $60
    call Call_004_4525                            ; $5234: $cd $25 $45
    ld hl, $0010                                  ; $5237: $21 $10 $00
    add hl, de                                    ; $523a: $19
    ld a, [hl]                                    ; $523b: $7e
    ld hl, $0010                                  ; $523c: $21 $10 $00
    add hl, bc                                    ; $523f: $09
    ld [hl], a                                    ; $5240: $77
    ld hl, $0004                                  ; $5241: $21 $04 $00
    add hl, de                                    ; $5244: $19
    push hl                                       ; $5245: $e5
    ld hl, $0006                                  ; $5246: $21 $06 $00
    add hl, de                                    ; $5249: $19
    ld a, [hl+]                                   ; $524a: $2a
    ld d, [hl]                                    ; $524b: $56
    ld e, a                                       ; $524c: $5f
    pop hl                                        ; $524d: $e1
    ld a, [hl+]                                   ; $524e: $2a
    ld h, [hl]                                    ; $524f: $66
    ld l, a                                       ; $5250: $6f
    call Call_004_4f92                            ; $5251: $cd $92 $4f

jr_004_5254:
    pop hl                                        ; $5254: $e1
    pop de                                        ; $5255: $d1
    pop bc                                        ; $5256: $c1
    pop af                                        ; $5257: $f1
    ret                                           ; $5258: $c9


    dec b                                         ; $5259: $05
    nop                                           ; $525a: $00
    ld bc, $8100                                  ; $525b: $01 $00 $81
    ld b, b                                       ; $525e: $40
    ld [bc], a                                    ; $525f: $02
    dec b                                         ; $5260: $05
    nop                                           ; $5261: $00
    ld bc, $0100                                  ; $5262: $01 $00 $01
    ld b, b                                       ; $5265: $40
    ld [bc], a                                    ; $5266: $02
    dec b                                         ; $5267: $05
    nop                                           ; $5268: $00
    add c                                         ; $5269: $81
    nop                                           ; $526a: $00
    ld bc, $0240                                  ; $526b: $01 $40 $02
    dec b                                         ; $526e: $05
    nop                                           ; $526f: $00
    add c                                         ; $5270: $81
    nop                                           ; $5271: $00
    add c                                         ; $5272: $81
    ld b, b                                       ; $5273: $40
    ld [bc], a                                    ; $5274: $02
    add hl, bc                                    ; $5275: $09
    ld [bc], a                                    ; $5276: $02
    inc c                                         ; $5277: $0c
    pop hl                                        ; $5278: $e1
    rst $38                                       ; $5279: $ff

    db $12, $8c, $53, $0c, $fc, $ff

    dec bc                                        ; $5280: $0b
    inc c                                         ; $5281: $0c
    cp $ff                                        ; $5282: $fe $ff
    ld a, [bc]                                    ; $5284: $0a
    inc c                                         ; $5285: $0c
    db $fa                                        ; $5286: $fa
    rst $38                                       ; $5287: $ff

    db $00

Call_004_5289:
    push hl                                       ; $5289: $e5
    ld hl, $000c                                  ; $528a: $21 $0c $00
    add hl, bc                                    ; $528d: $09
    ld a, e                                       ; $528e: $7b
    ld [hl+], a                                   ; $528f: $22
    ld [hl], d                                    ; $5290: $72
    pop de                                        ; $5291: $d1
    ld hl, $000a                                  ; $5292: $21 $0a $00
    add hl, bc                                    ; $5295: $09
    ld a, e                                       ; $5296: $7b
    ld [hl+], a                                   ; $5297: $22
    ld [hl], d                                    ; $5298: $72
    ret                                           ; $5299: $c9


    jr nz, jr_004_529d                            ; $529a: $20 $01

    nop                                           ; $529c: $00

jr_004_529d:
    nop                                           ; $529d: $00
    rlc b                                         ; $529e: $cb $00
    rlc b                                         ; $52a0: $cb $00
    nop                                           ; $52a2: $00
    nop                                           ; $52a3: $00
    jr nz, jr_004_52a7                            ; $52a4: $20 $01

    dec [hl]                                      ; $52a6: $35

jr_004_52a7:
    rst $38                                       ; $52a7: $ff
    rlc b                                         ; $52a8: $cb $00
    ldh [$fe], a                                  ; $52aa: $e0 $fe
    nop                                           ; $52ac: $00
    nop                                           ; $52ad: $00
    dec [hl]                                      ; $52ae: $35
    rst $38                                       ; $52af: $ff
    dec [hl]                                      ; $52b0: $35
    rst $38                                       ; $52b1: $ff
    nop                                           ; $52b2: $00
    nop                                           ; $52b3: $00
    ldh [$fe], a                                  ; $52b4: $e0 $fe
    rlc b                                         ; $52b6: $cb $00
    dec [hl]                                      ; $52b8: $35
    rst $38                                       ; $52b9: $ff

    db $20, $01, $00, $00, $cb, $00, $cb, $00, $00, $00, $20, $01, $35, $ff, $cb, $00
    db $e0, $fe, $00, $00, $35, $ff, $35, $ff, $00, $00, $e0, $fe, $cb, $00, $35, $ff

    ld b, b                                       ; $52da: $40
    ld bc, $0000                                  ; $52db: $01 $00 $00
    ld [c], a                                     ; $52de: $e2
    nop                                           ; $52df: $00
    ld [c], a                                     ; $52e0: $e2
    nop                                           ; $52e1: $00
    nop                                           ; $52e2: $00
    nop                                           ; $52e3: $00
    ld b, b                                       ; $52e4: $40
    ld bc, $ff1e                                  ; $52e5: $01 $1e $ff
    ld [c], a                                     ; $52e8: $e2
    nop                                           ; $52e9: $00
    ret nz                                        ; $52ea: $c0

    cp $00                                        ; $52eb: $fe $00
    nop                                           ; $52ed: $00
    ld e, $ff                                     ; $52ee: $1e $ff
    ld e, $ff                                     ; $52f0: $1e $ff
    nop                                           ; $52f2: $00
    nop                                           ; $52f3: $00
    ret nz                                        ; $52f4: $c0

    cp $e2                                        ; $52f5: $fe $e2
    nop                                           ; $52f7: $00
    ld e, $ff                                     ; $52f8: $1e $ff

Call_004_52fa:
    rrca                                          ; $52fa: $0f
    rrca                                          ; $52fb: $0f
    rrca                                          ; $52fc: $0f
    and $1c                                       ; $52fd: $e6 $1c
    ld hl, $52ba                                  ; $52ff: $21 $ba $52
    rst $30                                       ; $5302: $f7

    db $20, $02

    jr z, jr_004_530a                             ; $5305: $28 $03

    ld hl, $52da                                  ; $5307: $21 $da $52

jr_004_530a:
    add l                                         ; $530a: $85
    ld l, a                                       ; $530b: $6f
    jr nc, jr_004_530f                            ; $530c: $30 $01

    inc h                                         ; $530e: $24

jr_004_530f:
    ld a, [hl+]                                   ; $530f: $2a
    ld e, a                                       ; $5310: $5f
    ld a, [hl+]                                   ; $5311: $2a
    ld d, a                                       ; $5312: $57
    push de                                       ; $5313: $d5
    ld a, [hl+]                                   ; $5314: $2a
    ld e, a                                       ; $5315: $5f
    ld a, [hl+]                                   ; $5316: $2a
    ld d, a                                       ; $5317: $57
    pop hl                                        ; $5318: $e1
    push hl                                       ; $5319: $e5
    ld hl, $0006                                  ; $531a: $21 $06 $00
    add hl, bc                                    ; $531d: $09
    ld a, [hl+]                                   ; $531e: $2a
    ld h, [hl]                                    ; $531f: $66
    ld l, a                                       ; $5320: $6f
    add hl, de                                    ; $5321: $19
    ld e, l                                       ; $5322: $5d
    ld d, h                                       ; $5323: $54
    pop hl                                        ; $5324: $e1
    push de                                       ; $5325: $d5
    ld e, l                                       ; $5326: $5d
    ld d, h                                       ; $5327: $54
    ld hl, $0004                                  ; $5328: $21 $04 $00
    add hl, bc                                    ; $532b: $09
    ld a, [hl+]                                   ; $532c: $2a
    ld h, [hl]                                    ; $532d: $66
    ld l, a                                       ; $532e: $6f
    add hl, de                                    ; $532f: $19
    pop de                                        ; $5330: $d1
    ret                                           ; $5331: $c9


Call_004_5332:
    call Call_000_0af2                            ; $5332: $cd $f2 $0a
    push hl                                       ; $5335: $e5
    ld hl, $0006                                  ; $5336: $21 $06 $00
    add hl, bc                                    ; $5339: $09
    ld a, [hl+]                                   ; $533a: $2a
    ld h, [hl]                                    ; $533b: $66
    ld l, a                                       ; $533c: $6f
    add hl, de                                    ; $533d: $19
    ld e, l                                       ; $533e: $5d
    ld d, h                                       ; $533f: $54
    pop hl                                        ; $5340: $e1
    push de                                       ; $5341: $d5
    ld e, l                                       ; $5342: $5d
    ld d, h                                       ; $5343: $54
    ld hl, $0004                                  ; $5344: $21 $04 $00
    add hl, bc                                    ; $5347: $09
    ld a, [hl+]                                   ; $5348: $2a
    ld h, [hl]                                    ; $5349: $66
    ld l, a                                       ; $534a: $6f
    add hl, de                                    ; $534b: $19
    pop de                                        ; $534c: $d1
    ret                                           ; $534d: $c9


Call_004_534e:
    push de                                       ; $534e: $d5
    push hl                                       ; $534f: $e5
    ld l, c                                       ; $5350: $69
    ld h, b                                       ; $5351: $60
    call Call_000_0af2                            ; $5352: $cd $f2 $0a
    pop bc                                        ; $5355: $c1
    add hl, bc                                    ; $5356: $09
    ld c, l                                       ; $5357: $4d
    ld b, h                                       ; $5358: $44
    pop hl                                        ; $5359: $e1
    add hl, de                                    ; $535a: $19
    ld e, l                                       ; $535b: $5d
    ld d, h                                       ; $535c: $54
    ld l, c                                       ; $535d: $69
    ld h, b                                       ; $535e: $60
    ret                                           ; $535f: $c9


Call_004_5360:
    push af                                       ; $5360: $f5
    push de                                       ; $5361: $d5
    ld e, d                                       ; $5362: $5a
    ld d, h                                       ; $5363: $54
    rst $18                                       ; $5364: $df

    db $12, $0b

    ld d, a                                       ; $5367: $57
    and $0f                                       ; $5368: $e6 $0f
    cp $01                                        ; $536a: $fe $01
    jr z, jr_004_5375                             ; $536c: $28 $07

    cp $03                                        ; $536e: $fe $03
    jr z, jr_004_537f                             ; $5370: $28 $0d

    xor a                                         ; $5372: $af
    jr jr_004_5389                                ; $5373: $18 $14

jr_004_5375:
    ld a, d                                       ; $5375: $7a
    swap a                                        ; $5376: $cb $37
    and $0f                                       ; $5378: $e6 $0f
    ld [$c440], a                                 ; $537a: $ea $40 $c4
    jr jr_004_5389                                ; $537d: $18 $0a

jr_004_537f:
    ld a, d                                       ; $537f: $7a
    swap a                                        ; $5380: $cb $37
    and $0f                                       ; $5382: $e6 $0f
    rst $08                                       ; $5384: $cf
    sub d                                         ; $5385: $92
    ld [$c441], a                                 ; $5386: $ea $41 $c4

jr_004_5389:
    pop de                                        ; $5389: $d1
    pop af                                        ; $538a: $f1
    ret                                           ; $538b: $c9


    ld a, $04                                     ; $538c: $3e $04
    ldh [$96], a                                  ; $538e: $e0 $96
    ldh [rSVBK], a                                ; $5390: $e0 $70
    call Call_004_5658                            ; $5392: $cd $58 $56
    ld hl, $ffe0                                  ; $5395: $21 $e0 $ff
    ld a, [hl+]                                   ; $5398: $2a
    ld b, [hl]                                    ; $5399: $46
    ld c, a                                       ; $539a: $4f
    xor a                                         ; $539b: $af
    ld [$c2ab], a                                 ; $539c: $ea $ab $c2
    ldh a, [$94]                                  ; $539f: $f0 $94
    bit 0, a                                      ; $53a1: $cb $47
    jr z, jr_004_53aa                             ; $53a3: $28 $05

    ld hl, $c442                                  ; $53a5: $21 $42 $c4
    ld [hl], $01                                  ; $53a8: $36 $01

jr_004_53aa:
    ldh a, [$94]                                  ; $53aa: $f0 $94
    bit 3, a                                      ; $53ac: $cb $5f
    jr z, jr_004_53b5                             ; $53ae: $28 $05

    ld hl, $c444                                  ; $53b0: $21 $44 $c4
    ld [hl], $01                                  ; $53b3: $36 $01

jr_004_53b5:
    ldh a, [$90]                                  ; $53b5: $f0 $90
    bit 1, a                                      ; $53b7: $cb $4f
    jr z, jr_004_53be                             ; $53b9: $28 $03

    rst $20                                       ; $53bb: $e7
    jr nz, jr_004_53c0                            ; $53bc: $20 $02

jr_004_53be:
    ld d, $01                                     ; $53be: $16 $01

jr_004_53c0:
    ldh a, [$90]                                  ; $53c0: $f0 $90
    and $f0                                       ; $53c2: $e6 $f0
    jr z, jr_004_53c8                             ; $53c4: $28 $02

    ld d, $03                                     ; $53c6: $16 $03

jr_004_53c8:
    ld hl, $0035                                  ; $53c8: $21 $35 $00
    add hl, bc                                    ; $53cb: $09
    ld [hl], d                                    ; $53cc: $72
    ld a, [$c28c]                                 ; $53cd: $fa $8c $c2
    ld [$c28d], a                                 ; $53d0: $ea $8d $c2
    xor a                                         ; $53d3: $af
    ld [$c28c], a                                 ; $53d4: $ea $8c $c2
    ldh a, [$90]                                  ; $53d7: $f0 $90
    and $f0                                       ; $53d9: $e6 $f0
    jr nz, jr_004_53e4                            ; $53db: $20 $07

    xor a                                         ; $53dd: $af
    ld [$c28e], a                                 ; $53de: $ea $8e $c2
    jp Jump_004_54c0                              ; $53e1: $c3 $c0 $54


jr_004_53e4:
    ld hl, $5500                                  ; $53e4: $21 $00 $55
    swap a                                        ; $53e7: $cb $37
    ld d, $00                                     ; $53e9: $16 $00
    ld e, a                                       ; $53eb: $5f
    add hl, de                                    ; $53ec: $19
    ld a, [hl]                                    ; $53ed: $7e
    cp $ff                                        ; $53ee: $fe $ff
    jr nz, jr_004_53f5                            ; $53f0: $20 $03

    jp Jump_004_54c0                              ; $53f2: $c3 $c0 $54


jr_004_53f5:
    push bc                                       ; $53f5: $c5
    ld [$c28a], a                                 ; $53f6: $ea $8a $c2
    ld hl, $ffe0                                  ; $53f9: $21 $e0 $ff
    ld a, [hl+]                                   ; $53fc: $2a
    ld b, [hl]                                    ; $53fd: $46
    ld c, a                                       ; $53fe: $4f
    ld hl, $0032                                  ; $53ff: $21 $32 $00
    add hl, bc                                    ; $5402: $09
    ld a, [$c28a]                                 ; $5403: $fa $8a $c2
    ld [hl], a                                    ; $5406: $77
    ld hl, $0011                                  ; $5407: $21 $11 $00
    add hl, bc                                    ; $540a: $09
    ld [hl], $40                                  ; $540b: $36 $40
    ld hl, $0005                                  ; $540d: $21 $05 $00
    add hl, bc                                    ; $5410: $09
    ld d, [hl]                                    ; $5411: $56
    ld hl, $0007                                  ; $5412: $21 $07 $00
    add hl, bc                                    ; $5415: $09
    ld e, [hl]                                    ; $5416: $5e
    rst $18                                       ; $5417: $df

    db $10, $0b

    and $0f                                       ; $541a: $e6 $0f
    ld de, $0020                                  ; $541c: $11 $20 $00
    cp $0b                                        ; $541f: $fe $0b
    jr nz, jr_004_5426                            ; $5421: $20 $03

    ld de, $0010                                  ; $5423: $11 $10 $00

jr_004_5426:
    rst $30                                       ; $5426: $f7

    db $20, $02

    jr z, jr_004_542e                             ; $5429: $28 $03

    ld de, $0040                                  ; $542b: $11 $40 $00

jr_004_542e:
    ld hl, $000e                                  ; $542e: $21 $0e $00
    add hl, bc                                    ; $5431: $09
    ld a, e                                       ; $5432: $7b
    ld [hl+], a                                   ; $5433: $22
    ld [hl], d                                    ; $5434: $72
    rst $30                                       ; $5435: $f7

    db $00, $02

    ld d, $00                                     ; $5438: $16 $00
    jp nz, Jump_004_548f                          ; $543a: $c2 $8f $54

    ld a, [$c28a]                                 ; $543d: $fa $8a $c2
    call Call_004_52fa                            ; $5440: $cd $fa $52
    call Call_004_5510                            ; $5443: $cd $10 $55
    and a                                         ; $5446: $a7
    jr nz, jr_004_547d                            ; $5447: $20 $34

    ld a, [$c28a]                                 ; $5449: $fa $8a $c2
    add $20                                       ; $544c: $c6 $20
    call Call_004_52fa                            ; $544e: $cd $fa $52
    call Call_004_5510                            ; $5451: $cd $10 $55
    and a                                         ; $5454: $a7
    jr nz, jr_004_546b                            ; $5455: $20 $14

    ld a, [$c28a]                                 ; $5457: $fa $8a $c2
    add $e0                                       ; $545a: $c6 $e0
    call Call_004_52fa                            ; $545c: $cd $fa $52
    call Call_004_5510                            ; $545f: $cd $10 $55
    and a                                         ; $5462: $a7
    ld d, $00                                     ; $5463: $16 $00
    jr z, jr_004_548f                             ; $5465: $28 $28

    ld d, $20                                     ; $5467: $16 $20
    jr jr_004_548f                                ; $5469: $18 $24

jr_004_546b:
    ld a, [$c28a]                                 ; $546b: $fa $8a $c2
    add $e0                                       ; $546e: $c6 $e0
    call Call_004_52fa                            ; $5470: $cd $fa $52
    call Call_004_5510                            ; $5473: $cd $10 $55
    and a                                         ; $5476: $a7
    jr nz, jr_004_5485                            ; $5477: $20 $0c

    ld d, $e0                                     ; $5479: $16 $e0
    jr jr_004_548f                                ; $547b: $18 $12

jr_004_547d:
    ld [$c28c], a                                 ; $547d: $ea $8c $c2
    ld hl, $c443                                  ; $5480: $21 $43 $c4
    ld [hl], $01                                  ; $5483: $36 $01

jr_004_5485:
    ld hl, $0010                                  ; $5485: $21 $10 $00
    add hl, bc                                    ; $5488: $09
    ld a, [$c28a]                                 ; $5489: $fa $8a $c2
    ld [hl], a                                    ; $548c: $77
    jr jr_004_54ae                                ; $548d: $18 $1f

Jump_004_548f:
jr_004_548f:
    ld hl, $000e                                  ; $548f: $21 $0e $00
    add hl, bc                                    ; $5492: $09
    ld a, [hl+]                                   ; $5493: $2a
    ld h, [hl]                                    ; $5494: $66
    ld l, a                                       ; $5495: $6f
    ld a, [$c28a]                                 ; $5496: $fa $8a $c2
    add d                                         ; $5499: $82
    call Call_004_5332                            ; $549a: $cd $32 $53
    call Call_004_5360                            ; $549d: $cd $60 $53
    call Call_004_5289                            ; $54a0: $cd $89 $52
    ld hl, $0012                                  ; $54a3: $21 $12 $00
    add hl, bc                                    ; $54a6: $09
    ld [hl], $01                                  ; $54a7: $36 $01
    ld a, $01                                     ; $54a9: $3e $01
    ld [$c2ab], a                                 ; $54ab: $ea $ab $c2

jr_004_54ae:
    ld hl, $c28e                                  ; $54ae: $21 $8e $c2
    inc [hl]                                      ; $54b1: $34
    ld a, [$c28c]                                 ; $54b2: $fa $8c $c2
    and a                                         ; $54b5: $a7
    jr nz, jr_004_54ba                            ; $54b6: $20 $02

    ld [hl], $00                                  ; $54b8: $36 $00

jr_004_54ba:
    rst $28                                       ; $54ba: $ef

    db $20, $02

    pop bc                                        ; $54bd: $c1
    xor a                                         ; $54be: $af
    ret                                           ; $54bf: $c9


Jump_004_54c0:
    push bc                                       ; $54c0: $c5
    ld hl, $ffe0                                  ; $54c1: $21 $e0 $ff
    ld a, [hl+]                                   ; $54c4: $2a
    ld b, [hl]                                    ; $54c5: $46
    ld c, a                                       ; $54c6: $4f
    ld hl, $0006                                  ; $54c7: $21 $06 $00
    add hl, bc                                    ; $54ca: $09
    ld a, [hl+]                                   ; $54cb: $2a
    ld h, [hl]                                    ; $54cc: $66
    ld l, a                                       ; $54cd: $6f
    ld de, $0010                                  ; $54ce: $11 $10 $00
    add hl, de                                    ; $54d1: $19
    ld a, l                                       ; $54d2: $7d
    and $e0                                       ; $54d3: $e6 $e0
    ld l, a                                       ; $54d5: $6f
    push hl                                       ; $54d6: $e5
    ld hl, $0006                                  ; $54d7: $21 $06 $00
    add hl, bc                                    ; $54da: $09
    pop de                                        ; $54db: $d1
    ld [hl], e                                    ; $54dc: $73
    inc hl                                        ; $54dd: $23
    ld [hl], d                                    ; $54de: $72
    ld hl, $0004                                  ; $54df: $21 $04 $00
    add hl, bc                                    ; $54e2: $09
    ld a, [hl+]                                   ; $54e3: $2a
    ld h, [hl]                                    ; $54e4: $66
    ld l, a                                       ; $54e5: $6f
    ld de, $0010                                  ; $54e6: $11 $10 $00
    add hl, de                                    ; $54e9: $19
    ld a, l                                       ; $54ea: $7d
    and $e0                                       ; $54eb: $e6 $e0
    ld l, a                                       ; $54ed: $6f
    push hl                                       ; $54ee: $e5
    ld hl, $0004                                  ; $54ef: $21 $04 $00
    add hl, bc                                    ; $54f2: $09
    pop de                                        ; $54f3: $d1
    ld [hl], e                                    ; $54f4: $73
    inc hl                                        ; $54f5: $23
    ld [hl], d                                    ; $54f6: $72
    ld hl, $0012                                  ; $54f7: $21 $12 $00
    add hl, bc                                    ; $54fa: $09
    ld [hl], $00                                  ; $54fb: $36 $00
    pop bc                                        ; $54fd: $c1
    xor a                                         ; $54fe: $af
    ret                                           ; $54ff: $c9


    rst $38                                       ; $5500: $ff

    db $00, $80

    rst $38                                       ; $5503: $ff

    db $c0, $e0, $a0

    ret nz                                        ; $5507: $c0

    db $40, $20, $60

    ld b, b                                       ; $550b: $40
    rst $38                                       ; $550c: $ff
    nop                                           ; $550d: $00
    add b                                         ; $550e: $80
    rst $38                                       ; $550f: $ff

Call_004_5510:
    call Call_004_551e                            ; $5510: $cd $1e $55
    and a                                         ; $5513: $a7
    jr nz, jr_004_551b                            ; $5514: $20 $05

    call Call_004_55c4                            ; $5516: $cd $c4 $55
    jr jr_004_551d                                ; $5519: $18 $02

jr_004_551b:
    or $80                                        ; $551b: $f6 $80

jr_004_551d:
    ret                                           ; $551d: $c9


Call_004_551e:
    push de                                       ; $551e: $d5
    ld e, d                                       ; $551f: $5a
    ld d, h                                       ; $5520: $54
    rst $18                                       ; $5521: $df

    db $10, $0b

    and $0f                                       ; $5524: $e6 $0f
    jr z, jr_004_552d                             ; $5526: $28 $05

    cp $0f                                        ; $5528: $fe $0f
    jr z, jr_004_552d                             ; $552a: $28 $01

    xor a                                         ; $552c: $af

jr_004_552d:
    pop de                                        ; $552d: $d1
    ret                                           ; $552e: $c9


Call_004_552f:
    ld a, b                                       ; $552f: $78
    dec a                                         ; $5530: $3d
    sub h                                         ; $5531: $94
    cp d                                          ; $5532: $ba
    jr nc, jr_004_554a                            ; $5533: $30 $15

    ld a, b                                       ; $5535: $78
    dec a                                         ; $5536: $3d
    add h                                         ; $5537: $84
    cp d                                          ; $5538: $ba
    jr c, jr_004_554a                             ; $5539: $38 $0f

    ld a, c                                       ; $553b: $79
    dec a                                         ; $553c: $3d
    sub l                                         ; $553d: $95
    cp e                                          ; $553e: $bb
    jr nc, jr_004_554a                            ; $553f: $30 $09

    ld a, c                                       ; $5541: $79
    dec a                                         ; $5542: $3d
    add l                                         ; $5543: $85
    cp e                                          ; $5544: $bb
    jr c, jr_004_554a                             ; $5545: $38 $03

    xor a                                         ; $5547: $af
    jr jr_004_554c                                ; $5548: $18 $02

jr_004_554a:
    ld a, $ff                                     ; $554a: $3e $ff

jr_004_554c:
    ret                                           ; $554c: $c9


Call_004_554d:
    push bc                                       ; $554d: $c5
    push de                                       ; $554e: $d5
    push hl                                       ; $554f: $e5
    push hl                                       ; $5550: $e5
    ld hl, $c290                                  ; $5551: $21 $90 $c2
    ld a, [hl+]                                   ; $5554: $2a
    ld b, [hl]                                    ; $5555: $46
    ld c, a                                       ; $5556: $4f
    pop hl                                        ; $5557: $e1
    push hl                                       ; $5558: $e5
    ld hl, $000c                                  ; $5559: $21 $0c $00
    add hl, bc                                    ; $555c: $09
    ld a, [hl+]                                   ; $555d: $2a
    ld h, [hl]                                    ; $555e: $66
    ld l, a                                       ; $555f: $6f
    ld a, l                                       ; $5560: $7d
    sub e                                         ; $5561: $93
    ld l, a                                       ; $5562: $6f
    ld a, h                                       ; $5563: $7c
    sbc d                                         ; $5564: $9a
    ld h, a                                       ; $5565: $67
    bit 7, h                                      ; $5566: $cb $7c
    jr z, jr_004_5570                             ; $5568: $28 $06

    xor a                                         ; $556a: $af
    sub l                                         ; $556b: $95
    ld l, a                                       ; $556c: $6f
    sbc a                                         ; $556d: $9f
    sub h                                         ; $556e: $94
    ld h, a                                       ; $556f: $67

jr_004_5570:
    ld a, h                                       ; $5570: $7c
    and $fe                                       ; $5571: $e6 $fe
    jr nz, jr_004_55be                            ; $5573: $20 $49

    add hl, hl                                    ; $5575: $29
    add hl, hl                                    ; $5576: $29
    add hl, hl                                    ; $5577: $29
    ld e, l                                       ; $5578: $5d
    ld d, h                                       ; $5579: $54
    pop hl                                        ; $557a: $e1
    push de                                       ; $557b: $d5
    ld e, l                                       ; $557c: $5d
    ld d, h                                       ; $557d: $54
    ld hl, $000a                                  ; $557e: $21 $0a $00
    add hl, bc                                    ; $5581: $09
    ld a, [hl+]                                   ; $5582: $2a
    ld h, [hl]                                    ; $5583: $66
    ld l, a                                       ; $5584: $6f
    ld a, l                                       ; $5585: $7d
    sub e                                         ; $5586: $93
    ld l, a                                       ; $5587: $6f
    ld a, h                                       ; $5588: $7c
    sbc d                                         ; $5589: $9a
    ld h, a                                       ; $558a: $67
    bit 7, h                                      ; $558b: $cb $7c
    jr z, jr_004_5595                             ; $558d: $28 $06

    xor a                                         ; $558f: $af
    sub l                                         ; $5590: $95
    ld l, a                                       ; $5591: $6f
    sbc a                                         ; $5592: $9f
    sub h                                         ; $5593: $94
    ld h, a                                       ; $5594: $67

jr_004_5595:
    ld a, h                                       ; $5595: $7c
    and $fe                                       ; $5596: $e6 $fe
    jr nz, jr_004_55be                            ; $5598: $20 $24

    add hl, hl                                    ; $559a: $29
    add hl, hl                                    ; $559b: $29
    add hl, hl                                    ; $559c: $29
    pop de                                        ; $559d: $d1
    push hl                                       ; $559e: $e5
    ld l, e                                       ; $559f: $6b
    ld h, d                                       ; $55a0: $62
    call Call_000_0cb5                            ; $55a1: $cd $b5 $0c
    ld e, l                                       ; $55a4: $5d
    ld d, h                                       ; $55a5: $54
    pop hl                                        ; $55a6: $e1
    push de                                       ; $55a7: $d5
    ld e, l                                       ; $55a8: $5d
    ld d, h                                       ; $55a9: $54
    call Call_000_0cb5                            ; $55aa: $cd $b5 $0c
    pop de                                        ; $55ad: $d1
    add hl, de                                    ; $55ae: $19
    ld de, $00c0                                  ; $55af: $11 $c0 $00
    ld a, l                                       ; $55b2: $7d
    sub e                                         ; $55b3: $93
    ld l, a                                       ; $55b4: $6f
    ld a, h                                       ; $55b5: $7c
    sbc d                                         ; $55b6: $9a
    ld h, a                                       ; $55b7: $67
    jr nc, jr_004_55bf                            ; $55b8: $30 $05

    ld a, $01                                     ; $55ba: $3e $01
    jr jr_004_55c0                                ; $55bc: $18 $02

jr_004_55be:
    pop hl                                        ; $55be: $e1

jr_004_55bf:
    xor a                                         ; $55bf: $af

jr_004_55c0:
    pop hl                                        ; $55c0: $e1
    pop de                                        ; $55c1: $d1
    pop bc                                        ; $55c2: $c1
    ret                                           ; $55c3: $c9


Call_004_55c4:
    push bc                                       ; $55c4: $c5
    push de                                       ; $55c5: $d5
    push hl                                       ; $55c6: $e5
    ld c, l                                       ; $55c7: $4d
    ld b, h                                       ; $55c8: $44
    ld hl, $c470                                  ; $55c9: $21 $70 $c4
    ld a, c                                       ; $55cc: $79
    ld [hl+], a                                   ; $55cd: $22
    ld a, b                                       ; $55ce: $78
    ld [hl+], a                                   ; $55cf: $22
    ld a, e                                       ; $55d0: $7b
    ld [hl+], a                                   ; $55d1: $22
    ld a, d                                       ; $55d2: $7a
    ld [hl+], a                                   ; $55d3: $22
    ld hl, $cac0                                  ; $55d4: $21 $c0 $ca

Jump_004_55d7:
    ld a, [hl+]                                   ; $55d7: $2a
    ld c, a                                       ; $55d8: $4f
    ld a, [hl+]                                   ; $55d9: $2a
    ld b, a                                       ; $55da: $47
    and a                                         ; $55db: $a7
    jr z, jr_004_5653                             ; $55dc: $28 $75

    push hl                                       ; $55de: $e5
    ld hl, $c472                                  ; $55df: $21 $72 $c4
    ld a, [hl+]                                   ; $55e2: $2a
    ld d, [hl]                                    ; $55e3: $56
    ld e, a                                       ; $55e4: $5f
    ld hl, $0006                                  ; $55e5: $21 $06 $00
    add hl, bc                                    ; $55e8: $09
    ld a, [hl+]                                   ; $55e9: $2a
    ld h, [hl]                                    ; $55ea: $66
    ld l, a                                       ; $55eb: $6f
    ld a, l                                       ; $55ec: $7d
    sub e                                         ; $55ed: $93
    ld l, a                                       ; $55ee: $6f
    ld a, h                                       ; $55ef: $7c
    sbc d                                         ; $55f0: $9a
    ld h, a                                       ; $55f1: $67
    bit 7, h                                      ; $55f2: $cb $7c
    jr z, jr_004_55fc                             ; $55f4: $28 $06

    xor a                                         ; $55f6: $af
    sub l                                         ; $55f7: $95
    ld l, a                                       ; $55f8: $6f
    sbc a                                         ; $55f9: $9f
    sub h                                         ; $55fa: $94
    ld h, a                                       ; $55fb: $67

jr_004_55fc:
    ld a, h                                       ; $55fc: $7c
    and $fe                                       ; $55fd: $e6 $fe
    jr nz, jr_004_564f                            ; $55ff: $20 $4e

    add hl, hl                                    ; $5601: $29
    add hl, hl                                    ; $5602: $29
    add hl, hl                                    ; $5603: $29
    push hl                                       ; $5604: $e5
    ld hl, $c470                                  ; $5605: $21 $70 $c4
    ld a, [hl+]                                   ; $5608: $2a
    ld d, [hl]                                    ; $5609: $56
    ld e, a                                       ; $560a: $5f
    ld hl, $0004                                  ; $560b: $21 $04 $00
    add hl, bc                                    ; $560e: $09
    ld a, [hl+]                                   ; $560f: $2a
    ld h, [hl]                                    ; $5610: $66
    ld l, a                                       ; $5611: $6f
    ld a, l                                       ; $5612: $7d
    sub e                                         ; $5613: $93
    ld l, a                                       ; $5614: $6f
    ld a, h                                       ; $5615: $7c
    sbc d                                         ; $5616: $9a
    ld h, a                                       ; $5617: $67
    bit 7, h                                      ; $5618: $cb $7c
    jr z, jr_004_5622                             ; $561a: $28 $06

    xor a                                         ; $561c: $af
    sub l                                         ; $561d: $95
    ld l, a                                       ; $561e: $6f
    sbc a                                         ; $561f: $9f
    sub h                                         ; $5620: $94
    ld h, a                                       ; $5621: $67

jr_004_5622:
    pop de                                        ; $5622: $d1
    ld a, h                                       ; $5623: $7c
    and $fe                                       ; $5624: $e6 $fe
    jr nz, jr_004_564f                            ; $5626: $20 $27

    add hl, hl                                    ; $5628: $29
    add hl, hl                                    ; $5629: $29
    add hl, hl                                    ; $562a: $29
    push hl                                       ; $562b: $e5
    ld l, e                                       ; $562c: $6b
    ld h, d                                       ; $562d: $62
    call Call_000_0cb5                            ; $562e: $cd $b5 $0c
    ld e, l                                       ; $5631: $5d
    ld d, h                                       ; $5632: $54
    pop hl                                        ; $5633: $e1
    push de                                       ; $5634: $d5
    ld e, l                                       ; $5635: $5d
    ld d, h                                       ; $5636: $54
    call Call_000_0cb5                            ; $5637: $cd $b5 $0c
    pop de                                        ; $563a: $d1
    add hl, de                                    ; $563b: $19
    ld de, $0050                                  ; $563c: $11 $50 $00
    ld a, l                                       ; $563f: $7d
    sub e                                         ; $5640: $93
    ld l, a                                       ; $5641: $6f
    ld a, h                                       ; $5642: $7c
    sbc d                                         ; $5643: $9a
    ld h, a                                       ; $5644: $67
    jr nc, jr_004_564f                            ; $5645: $30 $08

    pop hl                                        ; $5647: $e1
    ld l, c                                       ; $5648: $69
    ld h, b                                       ; $5649: $60
    call Call_004_4f7e                            ; $564a: $cd $7e $4f
    jr jr_004_5654                                ; $564d: $18 $05

jr_004_564f:
    pop hl                                        ; $564f: $e1
    jp Jump_004_55d7                              ; $5650: $c3 $d7 $55


jr_004_5653:
    xor a                                         ; $5653: $af

jr_004_5654:
    pop hl                                        ; $5654: $e1
    pop de                                        ; $5655: $d1
    pop bc                                        ; $5656: $c1
    ret                                           ; $5657: $c9


Call_004_5658:
    push af                                       ; $5658: $f5
    push bc                                       ; $5659: $c5
    push de                                       ; $565a: $d5
    push hl                                       ; $565b: $e5
    ld hl, $c290                                  ; $565c: $21 $90 $c2
    ld a, [hl+]                                   ; $565f: $2a
    ld h, [hl]                                    ; $5660: $66
    ld l, a                                       ; $5661: $6f
    ld bc, $0004                                  ; $5662: $01 $04 $00
    add hl, bc                                    ; $5665: $09
    ld de, $c470                                  ; $5666: $11 $70 $c4
    ld a, [hl+]                                   ; $5669: $2a
    ld [de], a                                    ; $566a: $12
    inc de                                        ; $566b: $13
    ld a, [hl+]                                   ; $566c: $2a
    ld [de], a                                    ; $566d: $12
    inc de                                        ; $566e: $13
    ld a, [hl+]                                   ; $566f: $2a
    ld [de], a                                    ; $5670: $12
    inc de                                        ; $5671: $13
    ld a, [hl+]                                   ; $5672: $2a
    ld [de], a                                    ; $5673: $12
    inc de                                        ; $5674: $13
    ld a, $18                                     ; $5675: $3e $18
    ld [de], a                                    ; $5677: $12
    ld hl, $cac0                                  ; $5678: $21 $c0 $ca
    ld bc, $d000                                  ; $567b: $01 $00 $d0

Jump_004_567e:
    push hl                                       ; $567e: $e5
    inc c                                         ; $567f: $0c
    ld a, [bc]                                    ; $5680: $0a
    dec c                                         ; $5681: $0d
    or a                                          ; $5682: $b7
    jr z, jr_004_56e7                             ; $5683: $28 $62

    ld hl, $002f                                  ; $5685: $21 $2f $00
    add hl, bc                                    ; $5688: $09
    ld a, [hl]                                    ; $5689: $7e
    and a                                         ; $568a: $a7
    jr z, jr_004_56e7                             ; $568b: $28 $5a

    ld hl, $0017                                  ; $568d: $21 $17 $00
    add hl, bc                                    ; $5690: $09
    ld a, [hl]                                    ; $5691: $7e
    and a                                         ; $5692: $a7
    jr z, jr_004_56e7                             ; $5693: $28 $52

    ld hl, $c472                                  ; $5695: $21 $72 $c4
    ld a, [hl+]                                   ; $5698: $2a
    ld d, [hl]                                    ; $5699: $56
    ld e, a                                       ; $569a: $5f
    ld hl, $0006                                  ; $569b: $21 $06 $00
    add hl, bc                                    ; $569e: $09
    ld a, [hl+]                                   ; $569f: $2a
    ld h, [hl]                                    ; $56a0: $66
    ld l, a                                       ; $56a1: $6f
    ld a, l                                       ; $56a2: $7d
    sub e                                         ; $56a3: $93
    ld l, a                                       ; $56a4: $6f
    ld a, h                                       ; $56a5: $7c
    sbc d                                         ; $56a6: $9a
    ld h, a                                       ; $56a7: $67
    bit 7, h                                      ; $56a8: $cb $7c
    jr z, jr_004_56b2                             ; $56aa: $28 $06

    xor a                                         ; $56ac: $af
    sub l                                         ; $56ad: $95
    ld l, a                                       ; $56ae: $6f
    sbc a                                         ; $56af: $9f
    sub h                                         ; $56b0: $94
    ld h, a                                       ; $56b1: $67

jr_004_56b2:
    ld a, h                                       ; $56b2: $7c
    cp $03                                        ; $56b3: $fe $03
    jr nc, jr_004_56e7                            ; $56b5: $30 $30

    add hl, hl                                    ; $56b7: $29
    add hl, hl                                    ; $56b8: $29
    add hl, hl                                    ; $56b9: $29
    push hl                                       ; $56ba: $e5
    ld hl, $c470                                  ; $56bb: $21 $70 $c4
    ld a, [hl+]                                   ; $56be: $2a
    ld d, [hl]                                    ; $56bf: $56
    ld e, a                                       ; $56c0: $5f
    ld hl, $0004                                  ; $56c1: $21 $04 $00
    add hl, bc                                    ; $56c4: $09
    ld a, [hl+]                                   ; $56c5: $2a
    ld h, [hl]                                    ; $56c6: $66
    ld l, a                                       ; $56c7: $6f
    ld a, l                                       ; $56c8: $7d
    sub e                                         ; $56c9: $93
    ld l, a                                       ; $56ca: $6f
    ld a, h                                       ; $56cb: $7c
    sbc d                                         ; $56cc: $9a
    ld h, a                                       ; $56cd: $67
    bit 7, h                                      ; $56ce: $cb $7c
    jr z, jr_004_56d8                             ; $56d0: $28 $06

    xor a                                         ; $56d2: $af
    sub l                                         ; $56d3: $95
    ld l, a                                       ; $56d4: $6f
    sbc a                                         ; $56d5: $9f
    sub h                                         ; $56d6: $94
    ld h, a                                       ; $56d7: $67

jr_004_56d8:
    pop de                                        ; $56d8: $d1
    ld a, h                                       ; $56d9: $7c
    cp $03                                        ; $56da: $fe $03
    jr nc, jr_004_56e7                            ; $56dc: $30 $09

    add hl, hl                                    ; $56de: $29
    add hl, hl                                    ; $56df: $29
    add hl, hl                                    ; $56e0: $29
    pop hl                                        ; $56e1: $e1
    ld a, c                                       ; $56e2: $79
    ld [hl+], a                                   ; $56e3: $22
    ld a, b                                       ; $56e4: $78
    ld [hl+], a                                   ; $56e5: $22
    push hl                                       ; $56e6: $e5

jr_004_56e7:
    ld hl, $0040                                  ; $56e7: $21 $40 $00
    add hl, bc                                    ; $56ea: $09
    ld c, l                                       ; $56eb: $4d
    ld b, h                                       ; $56ec: $44
    ld hl, $c474                                  ; $56ed: $21 $74 $c4
    dec [hl]                                      ; $56f0: $35
    pop hl                                        ; $56f1: $e1
    jp nz, Jump_004_567e                          ; $56f2: $c2 $7e $56

    xor a                                         ; $56f5: $af
    ld [hl+], a                                   ; $56f6: $22
    ld [hl+], a                                   ; $56f7: $22
    pop hl                                        ; $56f8: $e1
    pop de                                        ; $56f9: $d1
    pop bc                                        ; $56fa: $c1
    pop af                                        ; $56fb: $f1
    ret                                           ; $56fc: $c9


    push af                                       ; $56fd: $f5
    push bc                                       ; $56fe: $c5
    push de                                       ; $56ff: $d5
    push hl                                       ; $5700: $e5
    ld a, $18                                     ; $5701: $3e $18
    ld [$c470], a                                 ; $5703: $ea $70 $c4
    ld hl, $cac0                                  ; $5706: $21 $c0 $ca
    ld bc, $d000                                  ; $5709: $01 $00 $d0

Jump_004_570c:
    push hl                                       ; $570c: $e5
    inc c                                         ; $570d: $0c
    ld a, [bc]                                    ; $570e: $0a
    dec c                                         ; $570f: $0d
    or a                                          ; $5710: $b7
    jr z, jr_004_5729                             ; $5711: $28 $16

    ld hl, $002f                                  ; $5713: $21 $2f $00
    add hl, bc                                    ; $5716: $09
    ld a, [hl]                                    ; $5717: $7e
    and a                                         ; $5718: $a7
    jr z, jr_004_5729                             ; $5719: $28 $0e

    ld hl, $001e                                  ; $571b: $21 $1e $00
    add hl, bc                                    ; $571e: $09
    ld a, [hl]                                    ; $571f: $7e
    and a                                         ; $5720: $a7
    jr z, jr_004_5729                             ; $5721: $28 $06

    pop hl                                        ; $5723: $e1
    ld a, c                                       ; $5724: $79
    ld [hl+], a                                   ; $5725: $22
    ld a, b                                       ; $5726: $78
    ld [hl+], a                                   ; $5727: $22
    push hl                                       ; $5728: $e5

jr_004_5729:
    ld hl, $0040                                  ; $5729: $21 $40 $00
    add hl, bc                                    ; $572c: $09
    ld c, l                                       ; $572d: $4d
    ld b, h                                       ; $572e: $44
    ld hl, $c470                                  ; $572f: $21 $70 $c4
    dec [hl]                                      ; $5732: $35
    pop hl                                        ; $5733: $e1
    jp nz, Jump_004_570c                          ; $5734: $c2 $0c $57

    xor a                                         ; $5737: $af
    ld [hl+], a                                   ; $5738: $22
    ld [hl+], a                                   ; $5739: $22
    pop hl                                        ; $573a: $e1
    pop de                                        ; $573b: $d1
    pop bc                                        ; $573c: $c1
    pop af                                        ; $573d: $f1
    ret                                           ; $573e: $c9


    ld a, $04                                     ; $573f: $3e $04
    ldh [$96], a                                  ; $5741: $e0 $96
    ldh [rSVBK], a                                ; $5743: $e0 $70
    ld de, $d000                                  ; $5745: $11 $00 $d0
    ld hl, $002b                                  ; $5748: $21 $2b $00
    add hl, de                                    ; $574b: $19
    ld a, [hl]                                    ; $574c: $7e
    ld [$c286], a                                 ; $574d: $ea $86 $c2
    call Call_004_4acd                            ; $5750: $cd $cd $4a
    ld hl, $0033                                  ; $5753: $21 $33 $00
    add hl, de                                    ; $5756: $19
    ld a, [hl]                                    ; $5757: $7e
    and a                                         ; $5758: $a7
    jr nz, jr_004_5765                            ; $5759: $20 $0a

    ld hl, $0010                                  ; $575b: $21 $10 $00
    add hl, de                                    ; $575e: $19
    ld a, [hl]                                    ; $575f: $7e
    ld hl, $0032                                  ; $5760: $21 $32 $00
    add hl, de                                    ; $5763: $19
    ld [hl], a                                    ; $5764: $77

jr_004_5765:
    ld hl, $0032                                  ; $5765: $21 $32 $00
    add hl, de                                    ; $5768: $19
    ld a, [hl]                                    ; $5769: $7e
    add $08                                       ; $576a: $c6 $08
    swap a                                        ; $576c: $cb $37
    and $0f                                       ; $576e: $e6 $0f
    ld hl, $4abd                                  ; $5770: $21 $bd $4a
    add l                                         ; $5773: $85
    ld l, a                                       ; $5774: $6f
    jr nc, jr_004_5778                            ; $5775: $30 $01

    inc h                                         ; $5777: $24

jr_004_5778:
    ld b, [hl]                                    ; $5778: $46
    ld hl, $0028                                  ; $5779: $21 $28 $00
    add hl, de                                    ; $577c: $19
    ld a, [hl+]                                   ; $577d: $2a
    cp c                                          ; $577e: $b9
    jr nz, jr_004_5785                            ; $577f: $20 $04

    ld a, [hl]                                    ; $5781: $7e
    cp b                                          ; $5782: $b8
    jr z, jr_004_57a0                             ; $5783: $28 $1b

jr_004_5785:
    ld a, b                                       ; $5785: $78
    ld [hl-], a                                   ; $5786: $32
    ld [hl], c                                    ; $5787: $71
    ld hl, $0020                                  ; $5788: $21 $20 $00
    add hl, de                                    ; $578b: $19
    ld a, [hl+]                                   ; $578c: $2a
    ld h, [hl]                                    ; $578d: $66
    ld l, a                                       ; $578e: $6f
    push de                                       ; $578f: $d5
    push hl                                       ; $5790: $e5
    ld hl, $0038                                  ; $5791: $21 $38 $00
    add hl, de                                    ; $5794: $19
    ld a, [hl+]                                   ; $5795: $2a
    ld d, [hl]                                    ; $5796: $56
    ld e, a                                       ; $5797: $5f
    pop hl                                        ; $5798: $e1
    ld a, [$c286]                                 ; $5799: $fa $86 $c2
    rst $18                                       ; $579c: $df

    db $00, $26

    pop de                                        ; $579f: $d1

jr_004_57a0:
    ret                                           ; $57a0: $c9


    push de                                       ; $57a1: $d5
    ld d, a                                       ; $57a2: $57
    ldh a, [$96]                                  ; $57a3: $f0 $96
    push af                                       ; $57a5: $f5
    ld a, $04                                     ; $57a6: $3e $04
    ldh [$96], a                                  ; $57a8: $e0 $96
    ldh [rSVBK], a                                ; $57aa: $e0 $70
    ld a, d                                       ; $57ac: $7a
    ld hl, $d000                                  ; $57ad: $21 $00 $d0
    call Call_004_4e51                            ; $57b0: $cd $51 $4e
    pop af                                        ; $57b3: $f1
    ldh [$96], a                                  ; $57b4: $e0 $96
    ldh [rSVBK], a                                ; $57b6: $e0 $70
    pop de                                        ; $57b8: $d1
    ret                                           ; $57b9: $c9


    ldh a, [$96]                                  ; $57ba: $f0 $96
    push af                                       ; $57bc: $f5
    ld a, $06                                     ; $57bd: $3e $06
    ldh [$96], a                                  ; $57bf: $e0 $96
    ldh [rSVBK], a                                ; $57c1: $e0 $70
    ld a, [$d332]                                 ; $57c3: $fa $32 $d3
    ld hl, $57f1                                  ; $57c6: $21 $f1 $57
    add l                                         ; $57c9: $85
    ld l, a                                       ; $57ca: $6f
    jr nc, jr_004_57ce                            ; $57cb: $30 $01

    inc h                                         ; $57cd: $24

jr_004_57ce:
    ld d, [hl]                                    ; $57ce: $56
    ld a, $04                                     ; $57cf: $3e $04
    ldh [$96], a                                  ; $57d1: $e0 $96
    ldh [rSVBK], a                                ; $57d3: $e0 $70
    ld bc, $d000                                  ; $57d5: $01 $00 $d0
    ld l, c                                       ; $57d8: $69
    ld h, b                                       ; $57d9: $60
    ld a, d                                       ; $57da: $7a
    call Call_004_4d42                            ; $57db: $cd $42 $4d
    ld a, $02                                     ; $57de: $3e $02
    call Call_004_4e51                            ; $57e0: $cd $51 $4e
    ld a, $01                                     ; $57e3: $3e $01
    ld hl, $573f                                  ; $57e5: $21 $3f $57
    call Call_000_23e8                            ; $57e8: $cd $e8 $23
    pop af                                        ; $57eb: $f1
    ldh [$96], a                                  ; $57ec: $e0 $96
    ldh [rSVBK], a                                ; $57ee: $e0 $70
    ret                                           ; $57f0: $c9


    db $00, $02

    inc bc                                        ; $57f3: $03
    ld bc, $0504                                  ; $57f4: $01 $04 $05
    ld b, $07                                     ; $57f7: $06 $07

    db $08, $09

    jr jr_004_582a                                ; $57fb: $18 $2d

    ld d, $0d                                     ; $57fd: $16 $0d
    dec c                                         ; $57ff: $0d
    db $16                                        ; $5800: $16

    ld hl, $573f                                  ; $5801: $21 $3f $57
    call Call_000_2449                            ; $5804: $cd $49 $24
    ret                                           ; $5807: $c9


    ldh a, [$96]                                  ; $5808: $f0 $96
    push af                                       ; $580a: $f5
    ld a, $04                                     ; $580b: $3e $04
    ldh [$96], a                                  ; $580d: $e0 $96
    ldh [rSVBK], a                                ; $580f: $e0 $70
    ld hl, $d000                                  ; $5811: $21 $00 $d0
    call Call_004_4e93                            ; $5814: $cd $93 $4e
    pop af                                        ; $5817: $f1
    ldh [$96], a                                  ; $5818: $e0 $96
    ldh [rSVBK], a                                ; $581a: $e0 $70
    ret                                           ; $581c: $c9


    rst $38                                       ; $581d: $ff
    rst $38                                       ; $581e: $ff
    rst $38                                       ; $581f: $ff
    rst $38                                       ; $5820: $ff
    rst $38                                       ; $5821: $ff
    rst $38                                       ; $5822: $ff
    rst $38                                       ; $5823: $ff
    rst $38                                       ; $5824: $ff
    rst $38                                       ; $5825: $ff
    rst $38                                       ; $5826: $ff
    rst $38                                       ; $5827: $ff
    rst $38                                       ; $5828: $ff
    rst $38                                       ; $5829: $ff

jr_004_582a:
    rst $38                                       ; $582a: $ff
    rst $38                                       ; $582b: $ff
    rst $38                                       ; $582c: $ff
    rst $38                                       ; $582d: $ff
    rst $38                                       ; $582e: $ff
    rst $38                                       ; $582f: $ff
    rst $38                                       ; $5830: $ff
    rst $38                                       ; $5831: $ff
    rst $38                                       ; $5832: $ff
    rst $38                                       ; $5833: $ff
    rst $38                                       ; $5834: $ff
    rst $38                                       ; $5835: $ff
    rst $38                                       ; $5836: $ff
    rst $38                                       ; $5837: $ff
    rst $38                                       ; $5838: $ff
    rst $38                                       ; $5839: $ff
    rst $38                                       ; $583a: $ff
    rst $38                                       ; $583b: $ff
    rst $38                                       ; $583c: $ff
    rst $38                                       ; $583d: $ff
    rst $38                                       ; $583e: $ff
    rst $38                                       ; $583f: $ff
    rst $38                                       ; $5840: $ff
    rst $38                                       ; $5841: $ff
    rst $38                                       ; $5842: $ff
    rst $38                                       ; $5843: $ff
    rst $38                                       ; $5844: $ff
    rst $38                                       ; $5845: $ff
    rst $38                                       ; $5846: $ff
    rst $38                                       ; $5847: $ff
    rst $38                                       ; $5848: $ff
    rst $38                                       ; $5849: $ff
    rst $38                                       ; $584a: $ff
    rst $38                                       ; $584b: $ff
    rst $38                                       ; $584c: $ff
    rst $38                                       ; $584d: $ff
    rst $38                                       ; $584e: $ff
    rst $38                                       ; $584f: $ff
    rst $38                                       ; $5850: $ff
    rst $38                                       ; $5851: $ff
    rst $38                                       ; $5852: $ff
    rst $38                                       ; $5853: $ff
    rst $38                                       ; $5854: $ff
    rst $38                                       ; $5855: $ff
    rst $38                                       ; $5856: $ff
    rst $38                                       ; $5857: $ff
    rst $38                                       ; $5858: $ff
    rst $38                                       ; $5859: $ff
    rst $38                                       ; $585a: $ff
    rst $38                                       ; $585b: $ff
    rst $38                                       ; $585c: $ff
    rst $38                                       ; $585d: $ff
    rst $38                                       ; $585e: $ff
    rst $38                                       ; $585f: $ff
    rst $38                                       ; $5860: $ff
    rst $38                                       ; $5861: $ff
    rst $38                                       ; $5862: $ff
    rst $38                                       ; $5863: $ff
    rst $38                                       ; $5864: $ff
    rst $38                                       ; $5865: $ff
    rst $38                                       ; $5866: $ff
    rst $38                                       ; $5867: $ff
    rst $38                                       ; $5868: $ff
    rst $38                                       ; $5869: $ff
    rst $38                                       ; $586a: $ff
    rst $38                                       ; $586b: $ff
    rst $38                                       ; $586c: $ff
    rst $38                                       ; $586d: $ff
    rst $38                                       ; $586e: $ff
    rst $38                                       ; $586f: $ff
    rst $38                                       ; $5870: $ff
    rst $38                                       ; $5871: $ff
    rst $38                                       ; $5872: $ff
    rst $38                                       ; $5873: $ff
    rst $38                                       ; $5874: $ff
    rst $38                                       ; $5875: $ff
    rst $38                                       ; $5876: $ff
    rst $38                                       ; $5877: $ff
    rst $38                                       ; $5878: $ff
    rst $38                                       ; $5879: $ff
    rst $38                                       ; $587a: $ff
    rst $38                                       ; $587b: $ff
    rst $38                                       ; $587c: $ff
    rst $38                                       ; $587d: $ff
    rst $38                                       ; $587e: $ff
    rst $38                                       ; $587f: $ff
    rst $38                                       ; $5880: $ff
    rst $38                                       ; $5881: $ff
    rst $38                                       ; $5882: $ff
    rst $38                                       ; $5883: $ff
    rst $38                                       ; $5884: $ff
    rst $38                                       ; $5885: $ff
    rst $38                                       ; $5886: $ff
    rst $38                                       ; $5887: $ff
    rst $38                                       ; $5888: $ff
    rst $38                                       ; $5889: $ff
    rst $38                                       ; $588a: $ff
    rst $38                                       ; $588b: $ff
    rst $38                                       ; $588c: $ff
    rst $38                                       ; $588d: $ff
    rst $38                                       ; $588e: $ff
    rst $38                                       ; $588f: $ff
    rst $38                                       ; $5890: $ff
    rst $38                                       ; $5891: $ff
    rst $38                                       ; $5892: $ff
    rst $38                                       ; $5893: $ff
    rst $38                                       ; $5894: $ff
    rst $38                                       ; $5895: $ff
    rst $38                                       ; $5896: $ff
    rst $38                                       ; $5897: $ff
    rst $38                                       ; $5898: $ff
    rst $38                                       ; $5899: $ff
    rst $38                                       ; $589a: $ff
    rst $38                                       ; $589b: $ff
    rst $38                                       ; $589c: $ff
    rst $38                                       ; $589d: $ff
    rst $38                                       ; $589e: $ff
    rst $38                                       ; $589f: $ff
    rst $38                                       ; $58a0: $ff
    rst $38                                       ; $58a1: $ff
    rst $38                                       ; $58a2: $ff
    rst $38                                       ; $58a3: $ff
    rst $38                                       ; $58a4: $ff
    rst $38                                       ; $58a5: $ff
    rst $38                                       ; $58a6: $ff
    rst $38                                       ; $58a7: $ff
    rst $38                                       ; $58a8: $ff
    rst $38                                       ; $58a9: $ff
    rst $38                                       ; $58aa: $ff
    rst $38                                       ; $58ab: $ff
    rst $38                                       ; $58ac: $ff
    rst $38                                       ; $58ad: $ff
    rst $38                                       ; $58ae: $ff
    rst $38                                       ; $58af: $ff
    rst $38                                       ; $58b0: $ff
    rst $38                                       ; $58b1: $ff
    rst $38                                       ; $58b2: $ff
    rst $38                                       ; $58b3: $ff
    rst $38                                       ; $58b4: $ff
    rst $38                                       ; $58b5: $ff
    rst $38                                       ; $58b6: $ff
    rst $38                                       ; $58b7: $ff
    rst $38                                       ; $58b8: $ff
    rst $38                                       ; $58b9: $ff
    rst $38                                       ; $58ba: $ff
    rst $38                                       ; $58bb: $ff
    rst $38                                       ; $58bc: $ff
    rst $38                                       ; $58bd: $ff
    rst $38                                       ; $58be: $ff
    rst $38                                       ; $58bf: $ff
    rst $38                                       ; $58c0: $ff
    rst $38                                       ; $58c1: $ff
    rst $38                                       ; $58c2: $ff
    rst $38                                       ; $58c3: $ff
    rst $38                                       ; $58c4: $ff
    rst $38                                       ; $58c5: $ff
    rst $38                                       ; $58c6: $ff
    rst $38                                       ; $58c7: $ff
    rst $38                                       ; $58c8: $ff
    rst $38                                       ; $58c9: $ff
    rst $38                                       ; $58ca: $ff
    rst $38                                       ; $58cb: $ff
    rst $38                                       ; $58cc: $ff
    rst $38                                       ; $58cd: $ff
    rst $38                                       ; $58ce: $ff
    rst $38                                       ; $58cf: $ff
    rst $38                                       ; $58d0: $ff
    rst $38                                       ; $58d1: $ff
    rst $38                                       ; $58d2: $ff
    rst $38                                       ; $58d3: $ff
    rst $38                                       ; $58d4: $ff
    rst $38                                       ; $58d5: $ff
    rst $38                                       ; $58d6: $ff
    rst $38                                       ; $58d7: $ff
    rst $38                                       ; $58d8: $ff
    rst $38                                       ; $58d9: $ff
    rst $38                                       ; $58da: $ff
    rst $38                                       ; $58db: $ff
    rst $38                                       ; $58dc: $ff
    rst $38                                       ; $58dd: $ff
    rst $38                                       ; $58de: $ff
    rst $38                                       ; $58df: $ff
    rst $38                                       ; $58e0: $ff
    rst $38                                       ; $58e1: $ff
    rst $38                                       ; $58e2: $ff
    rst $38                                       ; $58e3: $ff
    rst $38                                       ; $58e4: $ff
    rst $38                                       ; $58e5: $ff
    rst $38                                       ; $58e6: $ff
    rst $38                                       ; $58e7: $ff
    rst $38                                       ; $58e8: $ff
    rst $38                                       ; $58e9: $ff
    rst $38                                       ; $58ea: $ff
    rst $38                                       ; $58eb: $ff
    rst $38                                       ; $58ec: $ff
    rst $38                                       ; $58ed: $ff
    rst $38                                       ; $58ee: $ff
    rst $38                                       ; $58ef: $ff
    rst $38                                       ; $58f0: $ff
    rst $38                                       ; $58f1: $ff
    rst $38                                       ; $58f2: $ff
    rst $38                                       ; $58f3: $ff
    rst $38                                       ; $58f4: $ff
    rst $38                                       ; $58f5: $ff
    rst $38                                       ; $58f6: $ff
    rst $38                                       ; $58f7: $ff
    rst $38                                       ; $58f8: $ff
    rst $38                                       ; $58f9: $ff
    rst $38                                       ; $58fa: $ff
    rst $38                                       ; $58fb: $ff
    rst $38                                       ; $58fc: $ff
    rst $38                                       ; $58fd: $ff
    rst $38                                       ; $58fe: $ff
    rst $38                                       ; $58ff: $ff
    rst $38                                       ; $5900: $ff
    rst $38                                       ; $5901: $ff
    rst $38                                       ; $5902: $ff
    rst $38                                       ; $5903: $ff
    rst $38                                       ; $5904: $ff
    rst $38                                       ; $5905: $ff
    rst $38                                       ; $5906: $ff
    rst $38                                       ; $5907: $ff
    rst $38                                       ; $5908: $ff
    rst $38                                       ; $5909: $ff
    rst $38                                       ; $590a: $ff
    rst $38                                       ; $590b: $ff
    rst $38                                       ; $590c: $ff
    rst $38                                       ; $590d: $ff
    rst $38                                       ; $590e: $ff
    rst $38                                       ; $590f: $ff
    rst $38                                       ; $5910: $ff
    rst $38                                       ; $5911: $ff
    rst $38                                       ; $5912: $ff
    rst $38                                       ; $5913: $ff
    rst $38                                       ; $5914: $ff
    rst $38                                       ; $5915: $ff
    rst $38                                       ; $5916: $ff
    rst $38                                       ; $5917: $ff
    rst $38                                       ; $5918: $ff
    rst $38                                       ; $5919: $ff
    rst $38                                       ; $591a: $ff
    rst $38                                       ; $591b: $ff
    rst $38                                       ; $591c: $ff
    rst $38                                       ; $591d: $ff
    rst $38                                       ; $591e: $ff
    rst $38                                       ; $591f: $ff
    rst $38                                       ; $5920: $ff
    rst $38                                       ; $5921: $ff
    rst $38                                       ; $5922: $ff
    rst $38                                       ; $5923: $ff
    rst $38                                       ; $5924: $ff
    rst $38                                       ; $5925: $ff
    rst $38                                       ; $5926: $ff
    rst $38                                       ; $5927: $ff
    rst $38                                       ; $5928: $ff
    rst $38                                       ; $5929: $ff
    rst $38                                       ; $592a: $ff
    rst $38                                       ; $592b: $ff
    rst $38                                       ; $592c: $ff
    rst $38                                       ; $592d: $ff
    rst $38                                       ; $592e: $ff
    rst $38                                       ; $592f: $ff
    rst $38                                       ; $5930: $ff
    rst $38                                       ; $5931: $ff
    rst $38                                       ; $5932: $ff
    rst $38                                       ; $5933: $ff
    rst $38                                       ; $5934: $ff
    rst $38                                       ; $5935: $ff
    rst $38                                       ; $5936: $ff
    rst $38                                       ; $5937: $ff
    rst $38                                       ; $5938: $ff
    rst $38                                       ; $5939: $ff
    rst $38                                       ; $593a: $ff
    rst $38                                       ; $593b: $ff
    rst $38                                       ; $593c: $ff
    rst $38                                       ; $593d: $ff
    rst $38                                       ; $593e: $ff
    rst $38                                       ; $593f: $ff
    rst $38                                       ; $5940: $ff
    rst $38                                       ; $5941: $ff
    rst $38                                       ; $5942: $ff
    rst $38                                       ; $5943: $ff
    rst $38                                       ; $5944: $ff
    rst $38                                       ; $5945: $ff
    rst $38                                       ; $5946: $ff
    rst $38                                       ; $5947: $ff
    rst $38                                       ; $5948: $ff
    rst $38                                       ; $5949: $ff
    rst $38                                       ; $594a: $ff
    rst $38                                       ; $594b: $ff
    rst $38                                       ; $594c: $ff
    rst $38                                       ; $594d: $ff
    rst $38                                       ; $594e: $ff
    rst $38                                       ; $594f: $ff
    rst $38                                       ; $5950: $ff
    rst $38                                       ; $5951: $ff
    rst $38                                       ; $5952: $ff
    rst $38                                       ; $5953: $ff
    rst $38                                       ; $5954: $ff
    rst $38                                       ; $5955: $ff
    rst $38                                       ; $5956: $ff
    rst $38                                       ; $5957: $ff
    rst $38                                       ; $5958: $ff
    rst $38                                       ; $5959: $ff
    rst $38                                       ; $595a: $ff
    rst $38                                       ; $595b: $ff
    rst $38                                       ; $595c: $ff
    rst $38                                       ; $595d: $ff
    rst $38                                       ; $595e: $ff
    rst $38                                       ; $595f: $ff
    rst $38                                       ; $5960: $ff
    rst $38                                       ; $5961: $ff
    rst $38                                       ; $5962: $ff
    rst $38                                       ; $5963: $ff
    rst $38                                       ; $5964: $ff
    rst $38                                       ; $5965: $ff
    rst $38                                       ; $5966: $ff
    rst $38                                       ; $5967: $ff
    rst $38                                       ; $5968: $ff
    rst $38                                       ; $5969: $ff
    rst $38                                       ; $596a: $ff
    rst $38                                       ; $596b: $ff
    rst $38                                       ; $596c: $ff
    rst $38                                       ; $596d: $ff
    rst $38                                       ; $596e: $ff
    rst $38                                       ; $596f: $ff
    rst $38                                       ; $5970: $ff
    rst $38                                       ; $5971: $ff
    rst $38                                       ; $5972: $ff
    rst $38                                       ; $5973: $ff
    rst $38                                       ; $5974: $ff
    rst $38                                       ; $5975: $ff
    rst $38                                       ; $5976: $ff
    rst $38                                       ; $5977: $ff
    rst $38                                       ; $5978: $ff
    rst $38                                       ; $5979: $ff
    rst $38                                       ; $597a: $ff
    rst $38                                       ; $597b: $ff
    rst $38                                       ; $597c: $ff
    rst $38                                       ; $597d: $ff
    rst $38                                       ; $597e: $ff
    rst $38                                       ; $597f: $ff
    rst $38                                       ; $5980: $ff
    rst $38                                       ; $5981: $ff
    rst $38                                       ; $5982: $ff
    rst $38                                       ; $5983: $ff
    rst $38                                       ; $5984: $ff
    rst $38                                       ; $5985: $ff
    rst $38                                       ; $5986: $ff
    rst $38                                       ; $5987: $ff
    rst $38                                       ; $5988: $ff
    rst $38                                       ; $5989: $ff
    rst $38                                       ; $598a: $ff
    rst $38                                       ; $598b: $ff
    rst $38                                       ; $598c: $ff
    rst $38                                       ; $598d: $ff
    rst $38                                       ; $598e: $ff
    rst $38                                       ; $598f: $ff
    rst $38                                       ; $5990: $ff
    rst $38                                       ; $5991: $ff
    rst $38                                       ; $5992: $ff
    rst $38                                       ; $5993: $ff
    rst $38                                       ; $5994: $ff
    rst $38                                       ; $5995: $ff
    rst $38                                       ; $5996: $ff
    rst $38                                       ; $5997: $ff
    rst $38                                       ; $5998: $ff
    rst $38                                       ; $5999: $ff
    rst $38                                       ; $599a: $ff
    rst $38                                       ; $599b: $ff
    rst $38                                       ; $599c: $ff
    rst $38                                       ; $599d: $ff
    rst $38                                       ; $599e: $ff
    rst $38                                       ; $599f: $ff
    rst $38                                       ; $59a0: $ff
    rst $38                                       ; $59a1: $ff
    rst $38                                       ; $59a2: $ff
    rst $38                                       ; $59a3: $ff
    rst $38                                       ; $59a4: $ff
    rst $38                                       ; $59a5: $ff
    rst $38                                       ; $59a6: $ff
    rst $38                                       ; $59a7: $ff
    rst $38                                       ; $59a8: $ff
    rst $38                                       ; $59a9: $ff
    rst $38                                       ; $59aa: $ff
    rst $38                                       ; $59ab: $ff
    rst $38                                       ; $59ac: $ff
    rst $38                                       ; $59ad: $ff
    rst $38                                       ; $59ae: $ff
    rst $38                                       ; $59af: $ff
    rst $38                                       ; $59b0: $ff
    rst $38                                       ; $59b1: $ff
    rst $38                                       ; $59b2: $ff
    rst $38                                       ; $59b3: $ff
    rst $38                                       ; $59b4: $ff
    rst $38                                       ; $59b5: $ff
    rst $38                                       ; $59b6: $ff
    rst $38                                       ; $59b7: $ff
    rst $38                                       ; $59b8: $ff
    rst $38                                       ; $59b9: $ff
    rst $38                                       ; $59ba: $ff
    rst $38                                       ; $59bb: $ff
    rst $38                                       ; $59bc: $ff
    rst $38                                       ; $59bd: $ff
    rst $38                                       ; $59be: $ff
    rst $38                                       ; $59bf: $ff
    rst $38                                       ; $59c0: $ff
    rst $38                                       ; $59c1: $ff
    rst $38                                       ; $59c2: $ff
    rst $38                                       ; $59c3: $ff
    rst $38                                       ; $59c4: $ff
    rst $38                                       ; $59c5: $ff
    rst $38                                       ; $59c6: $ff
    rst $38                                       ; $59c7: $ff
    rst $38                                       ; $59c8: $ff
    rst $38                                       ; $59c9: $ff
    rst $38                                       ; $59ca: $ff
    rst $38                                       ; $59cb: $ff
    rst $38                                       ; $59cc: $ff
    rst $38                                       ; $59cd: $ff
    rst $38                                       ; $59ce: $ff
    rst $38                                       ; $59cf: $ff
    rst $38                                       ; $59d0: $ff
    rst $38                                       ; $59d1: $ff
    rst $38                                       ; $59d2: $ff
    rst $38                                       ; $59d3: $ff
    rst $38                                       ; $59d4: $ff
    rst $38                                       ; $59d5: $ff
    rst $38                                       ; $59d6: $ff
    rst $38                                       ; $59d7: $ff
    rst $38                                       ; $59d8: $ff
    rst $38                                       ; $59d9: $ff
    rst $38                                       ; $59da: $ff
    rst $38                                       ; $59db: $ff
    rst $38                                       ; $59dc: $ff
    rst $38                                       ; $59dd: $ff
    rst $38                                       ; $59de: $ff
    rst $38                                       ; $59df: $ff
    rst $38                                       ; $59e0: $ff
    rst $38                                       ; $59e1: $ff
    rst $38                                       ; $59e2: $ff
    rst $38                                       ; $59e3: $ff
    rst $38                                       ; $59e4: $ff
    rst $38                                       ; $59e5: $ff
    rst $38                                       ; $59e6: $ff
    rst $38                                       ; $59e7: $ff
    rst $38                                       ; $59e8: $ff
    rst $38                                       ; $59e9: $ff
    rst $38                                       ; $59ea: $ff
    rst $38                                       ; $59eb: $ff
    rst $38                                       ; $59ec: $ff
    rst $38                                       ; $59ed: $ff
    rst $38                                       ; $59ee: $ff
    rst $38                                       ; $59ef: $ff
    rst $38                                       ; $59f0: $ff
    rst $38                                       ; $59f1: $ff
    rst $38                                       ; $59f2: $ff
    rst $38                                       ; $59f3: $ff
    rst $38                                       ; $59f4: $ff
    rst $38                                       ; $59f5: $ff
    rst $38                                       ; $59f6: $ff
    rst $38                                       ; $59f7: $ff
    rst $38                                       ; $59f8: $ff
    rst $38                                       ; $59f9: $ff
    rst $38                                       ; $59fa: $ff
    rst $38                                       ; $59fb: $ff
    rst $38                                       ; $59fc: $ff
    rst $38                                       ; $59fd: $ff
    rst $38                                       ; $59fe: $ff
    rst $38                                       ; $59ff: $ff
    rst $38                                       ; $5a00: $ff
    rst $38                                       ; $5a01: $ff
    rst $38                                       ; $5a02: $ff
    rst $38                                       ; $5a03: $ff
    rst $38                                       ; $5a04: $ff
    rst $38                                       ; $5a05: $ff
    rst $38                                       ; $5a06: $ff
    rst $38                                       ; $5a07: $ff
    rst $38                                       ; $5a08: $ff
    rst $38                                       ; $5a09: $ff
    rst $38                                       ; $5a0a: $ff
    rst $38                                       ; $5a0b: $ff
    rst $38                                       ; $5a0c: $ff
    rst $38                                       ; $5a0d: $ff
    rst $38                                       ; $5a0e: $ff
    rst $38                                       ; $5a0f: $ff
    rst $38                                       ; $5a10: $ff
    rst $38                                       ; $5a11: $ff
    rst $38                                       ; $5a12: $ff
    rst $38                                       ; $5a13: $ff
    rst $38                                       ; $5a14: $ff
    rst $38                                       ; $5a15: $ff
    rst $38                                       ; $5a16: $ff
    rst $38                                       ; $5a17: $ff
    rst $38                                       ; $5a18: $ff
    rst $38                                       ; $5a19: $ff
    rst $38                                       ; $5a1a: $ff
    rst $38                                       ; $5a1b: $ff
    rst $38                                       ; $5a1c: $ff
    rst $38                                       ; $5a1d: $ff
    rst $38                                       ; $5a1e: $ff
    rst $38                                       ; $5a1f: $ff
    rst $38                                       ; $5a20: $ff
    rst $38                                       ; $5a21: $ff
    rst $38                                       ; $5a22: $ff
    rst $38                                       ; $5a23: $ff
    rst $38                                       ; $5a24: $ff
    rst $38                                       ; $5a25: $ff
    rst $38                                       ; $5a26: $ff
    rst $38                                       ; $5a27: $ff
    rst $38                                       ; $5a28: $ff
    rst $38                                       ; $5a29: $ff
    rst $38                                       ; $5a2a: $ff
    rst $38                                       ; $5a2b: $ff
    rst $38                                       ; $5a2c: $ff
    rst $38                                       ; $5a2d: $ff
    rst $38                                       ; $5a2e: $ff
    rst $38                                       ; $5a2f: $ff
    rst $38                                       ; $5a30: $ff
    rst $38                                       ; $5a31: $ff
    rst $38                                       ; $5a32: $ff
    rst $38                                       ; $5a33: $ff
    rst $38                                       ; $5a34: $ff
    rst $38                                       ; $5a35: $ff
    rst $38                                       ; $5a36: $ff
    rst $38                                       ; $5a37: $ff
    rst $38                                       ; $5a38: $ff
    rst $38                                       ; $5a39: $ff
    rst $38                                       ; $5a3a: $ff
    rst $38                                       ; $5a3b: $ff
    rst $38                                       ; $5a3c: $ff
    rst $38                                       ; $5a3d: $ff
    rst $38                                       ; $5a3e: $ff
    rst $38                                       ; $5a3f: $ff
    rst $38                                       ; $5a40: $ff
    rst $38                                       ; $5a41: $ff
    rst $38                                       ; $5a42: $ff
    rst $38                                       ; $5a43: $ff
    rst $38                                       ; $5a44: $ff
    rst $38                                       ; $5a45: $ff
    rst $38                                       ; $5a46: $ff
    rst $38                                       ; $5a47: $ff
    rst $38                                       ; $5a48: $ff
    rst $38                                       ; $5a49: $ff
    rst $38                                       ; $5a4a: $ff
    rst $38                                       ; $5a4b: $ff
    rst $38                                       ; $5a4c: $ff
    rst $38                                       ; $5a4d: $ff
    rst $38                                       ; $5a4e: $ff
    rst $38                                       ; $5a4f: $ff
    rst $38                                       ; $5a50: $ff
    rst $38                                       ; $5a51: $ff
    rst $38                                       ; $5a52: $ff
    rst $38                                       ; $5a53: $ff
    rst $38                                       ; $5a54: $ff
    rst $38                                       ; $5a55: $ff
    rst $38                                       ; $5a56: $ff
    rst $38                                       ; $5a57: $ff
    rst $38                                       ; $5a58: $ff
    rst $38                                       ; $5a59: $ff
    rst $38                                       ; $5a5a: $ff
    rst $38                                       ; $5a5b: $ff
    rst $38                                       ; $5a5c: $ff
    rst $38                                       ; $5a5d: $ff
    rst $38                                       ; $5a5e: $ff
    rst $38                                       ; $5a5f: $ff
    rst $38                                       ; $5a60: $ff
    rst $38                                       ; $5a61: $ff
    rst $38                                       ; $5a62: $ff
    rst $38                                       ; $5a63: $ff
    rst $38                                       ; $5a64: $ff
    rst $38                                       ; $5a65: $ff
    rst $38                                       ; $5a66: $ff
    rst $38                                       ; $5a67: $ff
    rst $38                                       ; $5a68: $ff
    rst $38                                       ; $5a69: $ff
    rst $38                                       ; $5a6a: $ff
    rst $38                                       ; $5a6b: $ff
    rst $38                                       ; $5a6c: $ff
    rst $38                                       ; $5a6d: $ff
    rst $38                                       ; $5a6e: $ff
    rst $38                                       ; $5a6f: $ff
    rst $38                                       ; $5a70: $ff
    rst $38                                       ; $5a71: $ff
    rst $38                                       ; $5a72: $ff
    rst $38                                       ; $5a73: $ff
    rst $38                                       ; $5a74: $ff
    rst $38                                       ; $5a75: $ff
    rst $38                                       ; $5a76: $ff
    rst $38                                       ; $5a77: $ff
    rst $38                                       ; $5a78: $ff
    rst $38                                       ; $5a79: $ff
    rst $38                                       ; $5a7a: $ff
    rst $38                                       ; $5a7b: $ff
    rst $38                                       ; $5a7c: $ff
    rst $38                                       ; $5a7d: $ff
    rst $38                                       ; $5a7e: $ff
    rst $38                                       ; $5a7f: $ff
    rst $38                                       ; $5a80: $ff
    rst $38                                       ; $5a81: $ff
    rst $38                                       ; $5a82: $ff
    rst $38                                       ; $5a83: $ff
    rst $38                                       ; $5a84: $ff
    rst $38                                       ; $5a85: $ff
    rst $38                                       ; $5a86: $ff
    rst $38                                       ; $5a87: $ff
    rst $38                                       ; $5a88: $ff
    rst $38                                       ; $5a89: $ff
    rst $38                                       ; $5a8a: $ff
    rst $38                                       ; $5a8b: $ff
    rst $38                                       ; $5a8c: $ff
    rst $38                                       ; $5a8d: $ff
    rst $38                                       ; $5a8e: $ff
    rst $38                                       ; $5a8f: $ff
    rst $38                                       ; $5a90: $ff
    rst $38                                       ; $5a91: $ff
    rst $38                                       ; $5a92: $ff
    rst $38                                       ; $5a93: $ff
    rst $38                                       ; $5a94: $ff
    rst $38                                       ; $5a95: $ff
    rst $38                                       ; $5a96: $ff
    rst $38                                       ; $5a97: $ff
    rst $38                                       ; $5a98: $ff
    rst $38                                       ; $5a99: $ff
    rst $38                                       ; $5a9a: $ff
    rst $38                                       ; $5a9b: $ff
    rst $38                                       ; $5a9c: $ff
    rst $38                                       ; $5a9d: $ff
    rst $38                                       ; $5a9e: $ff
    rst $38                                       ; $5a9f: $ff
    rst $38                                       ; $5aa0: $ff
    rst $38                                       ; $5aa1: $ff
    rst $38                                       ; $5aa2: $ff
    rst $38                                       ; $5aa3: $ff
    rst $38                                       ; $5aa4: $ff
    rst $38                                       ; $5aa5: $ff
    rst $38                                       ; $5aa6: $ff
    rst $38                                       ; $5aa7: $ff
    rst $38                                       ; $5aa8: $ff
    rst $38                                       ; $5aa9: $ff
    rst $38                                       ; $5aaa: $ff
    rst $38                                       ; $5aab: $ff
    rst $38                                       ; $5aac: $ff
    rst $38                                       ; $5aad: $ff
    rst $38                                       ; $5aae: $ff
    rst $38                                       ; $5aaf: $ff
    rst $38                                       ; $5ab0: $ff
    rst $38                                       ; $5ab1: $ff
    rst $38                                       ; $5ab2: $ff
    rst $38                                       ; $5ab3: $ff
    rst $38                                       ; $5ab4: $ff
    rst $38                                       ; $5ab5: $ff
    rst $38                                       ; $5ab6: $ff
    rst $38                                       ; $5ab7: $ff
    rst $38                                       ; $5ab8: $ff
    rst $38                                       ; $5ab9: $ff
    rst $38                                       ; $5aba: $ff
    rst $38                                       ; $5abb: $ff
    rst $38                                       ; $5abc: $ff
    rst $38                                       ; $5abd: $ff
    rst $38                                       ; $5abe: $ff
    rst $38                                       ; $5abf: $ff
    rst $38                                       ; $5ac0: $ff
    rst $38                                       ; $5ac1: $ff
    rst $38                                       ; $5ac2: $ff
    rst $38                                       ; $5ac3: $ff
    rst $38                                       ; $5ac4: $ff
    rst $38                                       ; $5ac5: $ff
    rst $38                                       ; $5ac6: $ff
    rst $38                                       ; $5ac7: $ff
    rst $38                                       ; $5ac8: $ff
    rst $38                                       ; $5ac9: $ff
    rst $38                                       ; $5aca: $ff
    rst $38                                       ; $5acb: $ff
    rst $38                                       ; $5acc: $ff
    rst $38                                       ; $5acd: $ff
    rst $38                                       ; $5ace: $ff
    rst $38                                       ; $5acf: $ff
    rst $38                                       ; $5ad0: $ff
    rst $38                                       ; $5ad1: $ff
    rst $38                                       ; $5ad2: $ff
    rst $38                                       ; $5ad3: $ff
    rst $38                                       ; $5ad4: $ff
    rst $38                                       ; $5ad5: $ff
    rst $38                                       ; $5ad6: $ff
    rst $38                                       ; $5ad7: $ff
    rst $38                                       ; $5ad8: $ff
    rst $38                                       ; $5ad9: $ff
    rst $38                                       ; $5ada: $ff
    rst $38                                       ; $5adb: $ff
    rst $38                                       ; $5adc: $ff
    rst $38                                       ; $5add: $ff
    rst $38                                       ; $5ade: $ff
    rst $38                                       ; $5adf: $ff
    rst $38                                       ; $5ae0: $ff
    rst $38                                       ; $5ae1: $ff
    rst $38                                       ; $5ae2: $ff
    rst $38                                       ; $5ae3: $ff
    rst $38                                       ; $5ae4: $ff
    rst $38                                       ; $5ae5: $ff
    rst $38                                       ; $5ae6: $ff
    rst $38                                       ; $5ae7: $ff
    rst $38                                       ; $5ae8: $ff
    rst $38                                       ; $5ae9: $ff
    rst $38                                       ; $5aea: $ff
    rst $38                                       ; $5aeb: $ff
    rst $38                                       ; $5aec: $ff
    rst $38                                       ; $5aed: $ff
    rst $38                                       ; $5aee: $ff
    rst $38                                       ; $5aef: $ff
    rst $38                                       ; $5af0: $ff
    rst $38                                       ; $5af1: $ff
    rst $38                                       ; $5af2: $ff
    rst $38                                       ; $5af3: $ff
    rst $38                                       ; $5af4: $ff
    rst $38                                       ; $5af5: $ff
    rst $38                                       ; $5af6: $ff
    rst $38                                       ; $5af7: $ff
    rst $38                                       ; $5af8: $ff
    rst $38                                       ; $5af9: $ff
    rst $38                                       ; $5afa: $ff
    rst $38                                       ; $5afb: $ff
    rst $38                                       ; $5afc: $ff
    rst $38                                       ; $5afd: $ff
    rst $38                                       ; $5afe: $ff
    rst $38                                       ; $5aff: $ff
    rst $38                                       ; $5b00: $ff
    rst $38                                       ; $5b01: $ff
    rst $38                                       ; $5b02: $ff
    rst $38                                       ; $5b03: $ff
    rst $38                                       ; $5b04: $ff
    rst $38                                       ; $5b05: $ff
    rst $38                                       ; $5b06: $ff
    rst $38                                       ; $5b07: $ff
    rst $38                                       ; $5b08: $ff
    rst $38                                       ; $5b09: $ff
    rst $38                                       ; $5b0a: $ff
    rst $38                                       ; $5b0b: $ff
    rst $38                                       ; $5b0c: $ff
    rst $38                                       ; $5b0d: $ff
    rst $38                                       ; $5b0e: $ff
    rst $38                                       ; $5b0f: $ff
    rst $38                                       ; $5b10: $ff
    rst $38                                       ; $5b11: $ff
    rst $38                                       ; $5b12: $ff
    rst $38                                       ; $5b13: $ff
    rst $38                                       ; $5b14: $ff
    rst $38                                       ; $5b15: $ff
    rst $38                                       ; $5b16: $ff
    rst $38                                       ; $5b17: $ff
    rst $38                                       ; $5b18: $ff
    rst $38                                       ; $5b19: $ff
    rst $38                                       ; $5b1a: $ff
    rst $38                                       ; $5b1b: $ff
    rst $38                                       ; $5b1c: $ff
    rst $38                                       ; $5b1d: $ff
    rst $38                                       ; $5b1e: $ff
    rst $38                                       ; $5b1f: $ff
    rst $38                                       ; $5b20: $ff
    rst $38                                       ; $5b21: $ff
    rst $38                                       ; $5b22: $ff
    rst $38                                       ; $5b23: $ff
    rst $38                                       ; $5b24: $ff
    rst $38                                       ; $5b25: $ff
    rst $38                                       ; $5b26: $ff
    rst $38                                       ; $5b27: $ff
    rst $38                                       ; $5b28: $ff
    rst $38                                       ; $5b29: $ff
    rst $38                                       ; $5b2a: $ff
    rst $38                                       ; $5b2b: $ff
    rst $38                                       ; $5b2c: $ff
    rst $38                                       ; $5b2d: $ff
    rst $38                                       ; $5b2e: $ff
    rst $38                                       ; $5b2f: $ff
    rst $38                                       ; $5b30: $ff
    rst $38                                       ; $5b31: $ff
    rst $38                                       ; $5b32: $ff
    rst $38                                       ; $5b33: $ff
    rst $38                                       ; $5b34: $ff
    rst $38                                       ; $5b35: $ff
    rst $38                                       ; $5b36: $ff
    rst $38                                       ; $5b37: $ff
    rst $38                                       ; $5b38: $ff
    rst $38                                       ; $5b39: $ff
    rst $38                                       ; $5b3a: $ff
    rst $38                                       ; $5b3b: $ff
    rst $38                                       ; $5b3c: $ff
    rst $38                                       ; $5b3d: $ff
    rst $38                                       ; $5b3e: $ff
    rst $38                                       ; $5b3f: $ff
    rst $38                                       ; $5b40: $ff
    rst $38                                       ; $5b41: $ff
    rst $38                                       ; $5b42: $ff
    rst $38                                       ; $5b43: $ff
    rst $38                                       ; $5b44: $ff
    rst $38                                       ; $5b45: $ff
    rst $38                                       ; $5b46: $ff
    rst $38                                       ; $5b47: $ff
    rst $38                                       ; $5b48: $ff
    rst $38                                       ; $5b49: $ff
    rst $38                                       ; $5b4a: $ff
    rst $38                                       ; $5b4b: $ff
    rst $38                                       ; $5b4c: $ff
    rst $38                                       ; $5b4d: $ff
    rst $38                                       ; $5b4e: $ff
    rst $38                                       ; $5b4f: $ff
    rst $38                                       ; $5b50: $ff
    rst $38                                       ; $5b51: $ff
    rst $38                                       ; $5b52: $ff
    rst $38                                       ; $5b53: $ff
    rst $38                                       ; $5b54: $ff
    rst $38                                       ; $5b55: $ff
    rst $38                                       ; $5b56: $ff
    rst $38                                       ; $5b57: $ff
    rst $38                                       ; $5b58: $ff
    rst $38                                       ; $5b59: $ff
    rst $38                                       ; $5b5a: $ff
    rst $38                                       ; $5b5b: $ff
    rst $38                                       ; $5b5c: $ff
    rst $38                                       ; $5b5d: $ff
    rst $38                                       ; $5b5e: $ff
    rst $38                                       ; $5b5f: $ff
    rst $38                                       ; $5b60: $ff
    rst $38                                       ; $5b61: $ff
    rst $38                                       ; $5b62: $ff
    rst $38                                       ; $5b63: $ff
    rst $38                                       ; $5b64: $ff
    rst $38                                       ; $5b65: $ff
    rst $38                                       ; $5b66: $ff
    rst $38                                       ; $5b67: $ff
    rst $38                                       ; $5b68: $ff
    rst $38                                       ; $5b69: $ff
    rst $38                                       ; $5b6a: $ff
    rst $38                                       ; $5b6b: $ff
    rst $38                                       ; $5b6c: $ff
    rst $38                                       ; $5b6d: $ff
    rst $38                                       ; $5b6e: $ff
    rst $38                                       ; $5b6f: $ff
    rst $38                                       ; $5b70: $ff
    rst $38                                       ; $5b71: $ff
    rst $38                                       ; $5b72: $ff
    rst $38                                       ; $5b73: $ff
    rst $38                                       ; $5b74: $ff
    rst $38                                       ; $5b75: $ff
    rst $38                                       ; $5b76: $ff
    rst $38                                       ; $5b77: $ff
    rst $38                                       ; $5b78: $ff
    rst $38                                       ; $5b79: $ff
    rst $38                                       ; $5b7a: $ff
    rst $38                                       ; $5b7b: $ff
    rst $38                                       ; $5b7c: $ff
    rst $38                                       ; $5b7d: $ff
    rst $38                                       ; $5b7e: $ff
    rst $38                                       ; $5b7f: $ff
    rst $38                                       ; $5b80: $ff
    rst $38                                       ; $5b81: $ff
    rst $38                                       ; $5b82: $ff
    rst $38                                       ; $5b83: $ff
    rst $38                                       ; $5b84: $ff
    rst $38                                       ; $5b85: $ff
    rst $38                                       ; $5b86: $ff
    rst $38                                       ; $5b87: $ff
    rst $38                                       ; $5b88: $ff
    rst $38                                       ; $5b89: $ff
    rst $38                                       ; $5b8a: $ff
    rst $38                                       ; $5b8b: $ff
    rst $38                                       ; $5b8c: $ff
    rst $38                                       ; $5b8d: $ff
    rst $38                                       ; $5b8e: $ff
    rst $38                                       ; $5b8f: $ff
    rst $38                                       ; $5b90: $ff
    rst $38                                       ; $5b91: $ff
    rst $38                                       ; $5b92: $ff
    rst $38                                       ; $5b93: $ff
    rst $38                                       ; $5b94: $ff
    rst $38                                       ; $5b95: $ff
    rst $38                                       ; $5b96: $ff
    rst $38                                       ; $5b97: $ff
    rst $38                                       ; $5b98: $ff
    rst $38                                       ; $5b99: $ff
    rst $38                                       ; $5b9a: $ff
    rst $38                                       ; $5b9b: $ff
    rst $38                                       ; $5b9c: $ff
    rst $38                                       ; $5b9d: $ff
    rst $38                                       ; $5b9e: $ff
    rst $38                                       ; $5b9f: $ff
    rst $38                                       ; $5ba0: $ff
    rst $38                                       ; $5ba1: $ff
    rst $38                                       ; $5ba2: $ff
    rst $38                                       ; $5ba3: $ff
    rst $38                                       ; $5ba4: $ff
    rst $38                                       ; $5ba5: $ff
    rst $38                                       ; $5ba6: $ff
    rst $38                                       ; $5ba7: $ff
    rst $38                                       ; $5ba8: $ff
    rst $38                                       ; $5ba9: $ff
    rst $38                                       ; $5baa: $ff
    rst $38                                       ; $5bab: $ff
    rst $38                                       ; $5bac: $ff
    rst $38                                       ; $5bad: $ff
    rst $38                                       ; $5bae: $ff
    rst $38                                       ; $5baf: $ff
    rst $38                                       ; $5bb0: $ff
    rst $38                                       ; $5bb1: $ff
    rst $38                                       ; $5bb2: $ff
    rst $38                                       ; $5bb3: $ff
    rst $38                                       ; $5bb4: $ff
    rst $38                                       ; $5bb5: $ff
    rst $38                                       ; $5bb6: $ff
    rst $38                                       ; $5bb7: $ff
    rst $38                                       ; $5bb8: $ff
    rst $38                                       ; $5bb9: $ff
    rst $38                                       ; $5bba: $ff
    rst $38                                       ; $5bbb: $ff
    rst $38                                       ; $5bbc: $ff
    rst $38                                       ; $5bbd: $ff
    rst $38                                       ; $5bbe: $ff
    rst $38                                       ; $5bbf: $ff
    rst $38                                       ; $5bc0: $ff
    rst $38                                       ; $5bc1: $ff
    rst $38                                       ; $5bc2: $ff
    rst $38                                       ; $5bc3: $ff
    rst $38                                       ; $5bc4: $ff
    rst $38                                       ; $5bc5: $ff
    rst $38                                       ; $5bc6: $ff
    rst $38                                       ; $5bc7: $ff
    rst $38                                       ; $5bc8: $ff
    rst $38                                       ; $5bc9: $ff
    rst $38                                       ; $5bca: $ff
    rst $38                                       ; $5bcb: $ff
    rst $38                                       ; $5bcc: $ff
    rst $38                                       ; $5bcd: $ff
    rst $38                                       ; $5bce: $ff
    rst $38                                       ; $5bcf: $ff
    rst $38                                       ; $5bd0: $ff
    rst $38                                       ; $5bd1: $ff
    rst $38                                       ; $5bd2: $ff
    rst $38                                       ; $5bd3: $ff
    rst $38                                       ; $5bd4: $ff
    rst $38                                       ; $5bd5: $ff
    rst $38                                       ; $5bd6: $ff
    rst $38                                       ; $5bd7: $ff
    rst $38                                       ; $5bd8: $ff
    rst $38                                       ; $5bd9: $ff
    rst $38                                       ; $5bda: $ff
    rst $38                                       ; $5bdb: $ff
    rst $38                                       ; $5bdc: $ff
    rst $38                                       ; $5bdd: $ff
    rst $38                                       ; $5bde: $ff
    rst $38                                       ; $5bdf: $ff
    rst $38                                       ; $5be0: $ff
    rst $38                                       ; $5be1: $ff
    rst $38                                       ; $5be2: $ff
    rst $38                                       ; $5be3: $ff
    rst $38                                       ; $5be4: $ff
    rst $38                                       ; $5be5: $ff
    rst $38                                       ; $5be6: $ff
    rst $38                                       ; $5be7: $ff
    rst $38                                       ; $5be8: $ff
    rst $38                                       ; $5be9: $ff
    rst $38                                       ; $5bea: $ff
    rst $38                                       ; $5beb: $ff
    rst $38                                       ; $5bec: $ff
    rst $38                                       ; $5bed: $ff
    rst $38                                       ; $5bee: $ff
    rst $38                                       ; $5bef: $ff
    rst $38                                       ; $5bf0: $ff
    rst $38                                       ; $5bf1: $ff
    rst $38                                       ; $5bf2: $ff
    rst $38                                       ; $5bf3: $ff
    rst $38                                       ; $5bf4: $ff
    rst $38                                       ; $5bf5: $ff
    rst $38                                       ; $5bf6: $ff
    rst $38                                       ; $5bf7: $ff
    rst $38                                       ; $5bf8: $ff
    rst $38                                       ; $5bf9: $ff
    rst $38                                       ; $5bfa: $ff
    rst $38                                       ; $5bfb: $ff
    rst $38                                       ; $5bfc: $ff
    rst $38                                       ; $5bfd: $ff
    rst $38                                       ; $5bfe: $ff
    rst $38                                       ; $5bff: $ff
    rst $38                                       ; $5c00: $ff
    rst $38                                       ; $5c01: $ff
    rst $38                                       ; $5c02: $ff
    rst $38                                       ; $5c03: $ff
    rst $38                                       ; $5c04: $ff
    rst $38                                       ; $5c05: $ff
    rst $38                                       ; $5c06: $ff
    rst $38                                       ; $5c07: $ff
    rst $38                                       ; $5c08: $ff
    rst $38                                       ; $5c09: $ff
    rst $38                                       ; $5c0a: $ff
    rst $38                                       ; $5c0b: $ff
    rst $38                                       ; $5c0c: $ff
    rst $38                                       ; $5c0d: $ff
    rst $38                                       ; $5c0e: $ff
    rst $38                                       ; $5c0f: $ff
    rst $38                                       ; $5c10: $ff
    rst $38                                       ; $5c11: $ff
    rst $38                                       ; $5c12: $ff
    rst $38                                       ; $5c13: $ff
    rst $38                                       ; $5c14: $ff
    rst $38                                       ; $5c15: $ff
    rst $38                                       ; $5c16: $ff
    rst $38                                       ; $5c17: $ff
    rst $38                                       ; $5c18: $ff
    rst $38                                       ; $5c19: $ff
    rst $38                                       ; $5c1a: $ff
    rst $38                                       ; $5c1b: $ff
    rst $38                                       ; $5c1c: $ff
    rst $38                                       ; $5c1d: $ff
    rst $38                                       ; $5c1e: $ff
    rst $38                                       ; $5c1f: $ff
    rst $38                                       ; $5c20: $ff
    rst $38                                       ; $5c21: $ff
    rst $38                                       ; $5c22: $ff
    rst $38                                       ; $5c23: $ff
    rst $38                                       ; $5c24: $ff
    rst $38                                       ; $5c25: $ff
    rst $38                                       ; $5c26: $ff
    rst $38                                       ; $5c27: $ff
    rst $38                                       ; $5c28: $ff
    rst $38                                       ; $5c29: $ff
    rst $38                                       ; $5c2a: $ff
    rst $38                                       ; $5c2b: $ff
    rst $38                                       ; $5c2c: $ff
    rst $38                                       ; $5c2d: $ff
    rst $38                                       ; $5c2e: $ff
    rst $38                                       ; $5c2f: $ff
    rst $38                                       ; $5c30: $ff
    rst $38                                       ; $5c31: $ff
    rst $38                                       ; $5c32: $ff
    rst $38                                       ; $5c33: $ff
    rst $38                                       ; $5c34: $ff
    rst $38                                       ; $5c35: $ff
    rst $38                                       ; $5c36: $ff
    rst $38                                       ; $5c37: $ff
    rst $38                                       ; $5c38: $ff
    rst $38                                       ; $5c39: $ff
    rst $38                                       ; $5c3a: $ff
    rst $38                                       ; $5c3b: $ff
    rst $38                                       ; $5c3c: $ff
    rst $38                                       ; $5c3d: $ff
    rst $38                                       ; $5c3e: $ff
    rst $38                                       ; $5c3f: $ff
    rst $38                                       ; $5c40: $ff
    rst $38                                       ; $5c41: $ff
    rst $38                                       ; $5c42: $ff
    rst $38                                       ; $5c43: $ff
    rst $38                                       ; $5c44: $ff
    rst $38                                       ; $5c45: $ff
    rst $38                                       ; $5c46: $ff
    rst $38                                       ; $5c47: $ff
    rst $38                                       ; $5c48: $ff
    rst $38                                       ; $5c49: $ff
    rst $38                                       ; $5c4a: $ff
    rst $38                                       ; $5c4b: $ff
    rst $38                                       ; $5c4c: $ff
    rst $38                                       ; $5c4d: $ff
    rst $38                                       ; $5c4e: $ff
    rst $38                                       ; $5c4f: $ff
    rst $38                                       ; $5c50: $ff
    rst $38                                       ; $5c51: $ff
    rst $38                                       ; $5c52: $ff
    rst $38                                       ; $5c53: $ff
    rst $38                                       ; $5c54: $ff
    rst $38                                       ; $5c55: $ff
    rst $38                                       ; $5c56: $ff
    rst $38                                       ; $5c57: $ff
    rst $38                                       ; $5c58: $ff
    rst $38                                       ; $5c59: $ff
    rst $38                                       ; $5c5a: $ff
    rst $38                                       ; $5c5b: $ff
    rst $38                                       ; $5c5c: $ff
    rst $38                                       ; $5c5d: $ff
    rst $38                                       ; $5c5e: $ff
    rst $38                                       ; $5c5f: $ff
    rst $38                                       ; $5c60: $ff
    rst $38                                       ; $5c61: $ff
    rst $38                                       ; $5c62: $ff
    rst $38                                       ; $5c63: $ff
    rst $38                                       ; $5c64: $ff
    rst $38                                       ; $5c65: $ff
    rst $38                                       ; $5c66: $ff
    rst $38                                       ; $5c67: $ff
    rst $38                                       ; $5c68: $ff
    rst $38                                       ; $5c69: $ff
    rst $38                                       ; $5c6a: $ff
    rst $38                                       ; $5c6b: $ff
    rst $38                                       ; $5c6c: $ff
    rst $38                                       ; $5c6d: $ff
    rst $38                                       ; $5c6e: $ff
    rst $38                                       ; $5c6f: $ff
    rst $38                                       ; $5c70: $ff
    rst $38                                       ; $5c71: $ff
    rst $38                                       ; $5c72: $ff
    rst $38                                       ; $5c73: $ff
    rst $38                                       ; $5c74: $ff
    rst $38                                       ; $5c75: $ff
    rst $38                                       ; $5c76: $ff
    rst $38                                       ; $5c77: $ff
    rst $38                                       ; $5c78: $ff
    rst $38                                       ; $5c79: $ff
    rst $38                                       ; $5c7a: $ff
    rst $38                                       ; $5c7b: $ff
    rst $38                                       ; $5c7c: $ff
    rst $38                                       ; $5c7d: $ff
    rst $38                                       ; $5c7e: $ff
    rst $38                                       ; $5c7f: $ff
    rst $38                                       ; $5c80: $ff
    rst $38                                       ; $5c81: $ff
    rst $38                                       ; $5c82: $ff
    rst $38                                       ; $5c83: $ff
    rst $38                                       ; $5c84: $ff
    rst $38                                       ; $5c85: $ff
    rst $38                                       ; $5c86: $ff
    rst $38                                       ; $5c87: $ff
    rst $38                                       ; $5c88: $ff
    rst $38                                       ; $5c89: $ff
    rst $38                                       ; $5c8a: $ff
    rst $38                                       ; $5c8b: $ff
    rst $38                                       ; $5c8c: $ff
    rst $38                                       ; $5c8d: $ff
    rst $38                                       ; $5c8e: $ff
    rst $38                                       ; $5c8f: $ff
    rst $38                                       ; $5c90: $ff
    rst $38                                       ; $5c91: $ff
    rst $38                                       ; $5c92: $ff
    rst $38                                       ; $5c93: $ff
    rst $38                                       ; $5c94: $ff
    rst $38                                       ; $5c95: $ff
    rst $38                                       ; $5c96: $ff
    rst $38                                       ; $5c97: $ff
    rst $38                                       ; $5c98: $ff
    rst $38                                       ; $5c99: $ff
    rst $38                                       ; $5c9a: $ff
    rst $38                                       ; $5c9b: $ff
    rst $38                                       ; $5c9c: $ff
    rst $38                                       ; $5c9d: $ff
    rst $38                                       ; $5c9e: $ff
    rst $38                                       ; $5c9f: $ff
    rst $38                                       ; $5ca0: $ff
    rst $38                                       ; $5ca1: $ff
    rst $38                                       ; $5ca2: $ff
    rst $38                                       ; $5ca3: $ff
    rst $38                                       ; $5ca4: $ff
    rst $38                                       ; $5ca5: $ff
    rst $38                                       ; $5ca6: $ff
    rst $38                                       ; $5ca7: $ff
    rst $38                                       ; $5ca8: $ff
    rst $38                                       ; $5ca9: $ff
    rst $38                                       ; $5caa: $ff
    rst $38                                       ; $5cab: $ff
    rst $38                                       ; $5cac: $ff
    rst $38                                       ; $5cad: $ff
    rst $38                                       ; $5cae: $ff
    rst $38                                       ; $5caf: $ff
    rst $38                                       ; $5cb0: $ff
    rst $38                                       ; $5cb1: $ff
    rst $38                                       ; $5cb2: $ff
    rst $38                                       ; $5cb3: $ff
    rst $38                                       ; $5cb4: $ff
    rst $38                                       ; $5cb5: $ff
    rst $38                                       ; $5cb6: $ff
    rst $38                                       ; $5cb7: $ff
    rst $38                                       ; $5cb8: $ff
    rst $38                                       ; $5cb9: $ff
    rst $38                                       ; $5cba: $ff
    rst $38                                       ; $5cbb: $ff
    rst $38                                       ; $5cbc: $ff
    rst $38                                       ; $5cbd: $ff
    rst $38                                       ; $5cbe: $ff
    rst $38                                       ; $5cbf: $ff
    rst $38                                       ; $5cc0: $ff
    rst $38                                       ; $5cc1: $ff
    rst $38                                       ; $5cc2: $ff
    rst $38                                       ; $5cc3: $ff
    rst $38                                       ; $5cc4: $ff
    rst $38                                       ; $5cc5: $ff
    rst $38                                       ; $5cc6: $ff
    rst $38                                       ; $5cc7: $ff
    rst $38                                       ; $5cc8: $ff
    rst $38                                       ; $5cc9: $ff
    rst $38                                       ; $5cca: $ff
    rst $38                                       ; $5ccb: $ff
    rst $38                                       ; $5ccc: $ff
    rst $38                                       ; $5ccd: $ff
    rst $38                                       ; $5cce: $ff
    rst $38                                       ; $5ccf: $ff
    rst $38                                       ; $5cd0: $ff
    rst $38                                       ; $5cd1: $ff
    rst $38                                       ; $5cd2: $ff
    rst $38                                       ; $5cd3: $ff
    rst $38                                       ; $5cd4: $ff
    rst $38                                       ; $5cd5: $ff
    rst $38                                       ; $5cd6: $ff
    rst $38                                       ; $5cd7: $ff
    rst $38                                       ; $5cd8: $ff
    rst $38                                       ; $5cd9: $ff
    rst $38                                       ; $5cda: $ff
    rst $38                                       ; $5cdb: $ff
    rst $38                                       ; $5cdc: $ff
    rst $38                                       ; $5cdd: $ff
    rst $38                                       ; $5cde: $ff
    rst $38                                       ; $5cdf: $ff
    rst $38                                       ; $5ce0: $ff
    rst $38                                       ; $5ce1: $ff
    rst $38                                       ; $5ce2: $ff
    rst $38                                       ; $5ce3: $ff
    rst $38                                       ; $5ce4: $ff
    rst $38                                       ; $5ce5: $ff
    rst $38                                       ; $5ce6: $ff
    rst $38                                       ; $5ce7: $ff
    rst $38                                       ; $5ce8: $ff
    rst $38                                       ; $5ce9: $ff
    rst $38                                       ; $5cea: $ff
    rst $38                                       ; $5ceb: $ff
    rst $38                                       ; $5cec: $ff
    rst $38                                       ; $5ced: $ff
    rst $38                                       ; $5cee: $ff
    rst $38                                       ; $5cef: $ff
    rst $38                                       ; $5cf0: $ff
    rst $38                                       ; $5cf1: $ff
    rst $38                                       ; $5cf2: $ff
    rst $38                                       ; $5cf3: $ff
    rst $38                                       ; $5cf4: $ff
    rst $38                                       ; $5cf5: $ff
    rst $38                                       ; $5cf6: $ff
    rst $38                                       ; $5cf7: $ff
    rst $38                                       ; $5cf8: $ff
    rst $38                                       ; $5cf9: $ff
    rst $38                                       ; $5cfa: $ff
    rst $38                                       ; $5cfb: $ff
    rst $38                                       ; $5cfc: $ff
    rst $38                                       ; $5cfd: $ff
    rst $38                                       ; $5cfe: $ff
    rst $38                                       ; $5cff: $ff
    rst $38                                       ; $5d00: $ff
    rst $38                                       ; $5d01: $ff
    rst $38                                       ; $5d02: $ff
    rst $38                                       ; $5d03: $ff
    rst $38                                       ; $5d04: $ff
    rst $38                                       ; $5d05: $ff
    rst $38                                       ; $5d06: $ff
    rst $38                                       ; $5d07: $ff
    rst $38                                       ; $5d08: $ff
    rst $38                                       ; $5d09: $ff
    rst $38                                       ; $5d0a: $ff
    rst $38                                       ; $5d0b: $ff
    rst $38                                       ; $5d0c: $ff
    rst $38                                       ; $5d0d: $ff
    rst $38                                       ; $5d0e: $ff
    rst $38                                       ; $5d0f: $ff
    rst $38                                       ; $5d10: $ff
    rst $38                                       ; $5d11: $ff
    rst $38                                       ; $5d12: $ff
    rst $38                                       ; $5d13: $ff
    rst $38                                       ; $5d14: $ff
    rst $38                                       ; $5d15: $ff
    rst $38                                       ; $5d16: $ff
    rst $38                                       ; $5d17: $ff
    rst $38                                       ; $5d18: $ff
    rst $38                                       ; $5d19: $ff
    rst $38                                       ; $5d1a: $ff
    rst $38                                       ; $5d1b: $ff
    rst $38                                       ; $5d1c: $ff
    rst $38                                       ; $5d1d: $ff
    rst $38                                       ; $5d1e: $ff
    rst $38                                       ; $5d1f: $ff
    rst $38                                       ; $5d20: $ff
    rst $38                                       ; $5d21: $ff
    rst $38                                       ; $5d22: $ff
    rst $38                                       ; $5d23: $ff
    rst $38                                       ; $5d24: $ff
    rst $38                                       ; $5d25: $ff
    rst $38                                       ; $5d26: $ff
    rst $38                                       ; $5d27: $ff
    rst $38                                       ; $5d28: $ff
    rst $38                                       ; $5d29: $ff
    rst $38                                       ; $5d2a: $ff
    rst $38                                       ; $5d2b: $ff
    rst $38                                       ; $5d2c: $ff
    rst $38                                       ; $5d2d: $ff
    rst $38                                       ; $5d2e: $ff
    rst $38                                       ; $5d2f: $ff
    rst $38                                       ; $5d30: $ff
    rst $38                                       ; $5d31: $ff
    rst $38                                       ; $5d32: $ff
    rst $38                                       ; $5d33: $ff
    rst $38                                       ; $5d34: $ff
    rst $38                                       ; $5d35: $ff
    rst $38                                       ; $5d36: $ff
    rst $38                                       ; $5d37: $ff
    rst $38                                       ; $5d38: $ff
    rst $38                                       ; $5d39: $ff
    rst $38                                       ; $5d3a: $ff
    rst $38                                       ; $5d3b: $ff
    rst $38                                       ; $5d3c: $ff
    rst $38                                       ; $5d3d: $ff
    rst $38                                       ; $5d3e: $ff
    rst $38                                       ; $5d3f: $ff
    rst $38                                       ; $5d40: $ff
    rst $38                                       ; $5d41: $ff
    rst $38                                       ; $5d42: $ff
    rst $38                                       ; $5d43: $ff
    rst $38                                       ; $5d44: $ff
    rst $38                                       ; $5d45: $ff
    rst $38                                       ; $5d46: $ff
    rst $38                                       ; $5d47: $ff
    rst $38                                       ; $5d48: $ff
    rst $38                                       ; $5d49: $ff
    rst $38                                       ; $5d4a: $ff
    rst $38                                       ; $5d4b: $ff
    rst $38                                       ; $5d4c: $ff
    rst $38                                       ; $5d4d: $ff
    rst $38                                       ; $5d4e: $ff
    rst $38                                       ; $5d4f: $ff
    rst $38                                       ; $5d50: $ff
    rst $38                                       ; $5d51: $ff
    rst $38                                       ; $5d52: $ff
    rst $38                                       ; $5d53: $ff
    rst $38                                       ; $5d54: $ff
    rst $38                                       ; $5d55: $ff
    rst $38                                       ; $5d56: $ff
    rst $38                                       ; $5d57: $ff
    rst $38                                       ; $5d58: $ff
    rst $38                                       ; $5d59: $ff
    rst $38                                       ; $5d5a: $ff
    rst $38                                       ; $5d5b: $ff
    rst $38                                       ; $5d5c: $ff
    rst $38                                       ; $5d5d: $ff
    rst $38                                       ; $5d5e: $ff
    rst $38                                       ; $5d5f: $ff
    rst $38                                       ; $5d60: $ff
    rst $38                                       ; $5d61: $ff
    rst $38                                       ; $5d62: $ff
    rst $38                                       ; $5d63: $ff
    rst $38                                       ; $5d64: $ff
    rst $38                                       ; $5d65: $ff
    rst $38                                       ; $5d66: $ff
    rst $38                                       ; $5d67: $ff
    rst $38                                       ; $5d68: $ff
    rst $38                                       ; $5d69: $ff
    rst $38                                       ; $5d6a: $ff
    rst $38                                       ; $5d6b: $ff
    rst $38                                       ; $5d6c: $ff
    rst $38                                       ; $5d6d: $ff
    rst $38                                       ; $5d6e: $ff
    rst $38                                       ; $5d6f: $ff
    rst $38                                       ; $5d70: $ff
    rst $38                                       ; $5d71: $ff
    rst $38                                       ; $5d72: $ff
    rst $38                                       ; $5d73: $ff
    rst $38                                       ; $5d74: $ff
    rst $38                                       ; $5d75: $ff
    rst $38                                       ; $5d76: $ff
    rst $38                                       ; $5d77: $ff
    rst $38                                       ; $5d78: $ff
    rst $38                                       ; $5d79: $ff
    rst $38                                       ; $5d7a: $ff
    rst $38                                       ; $5d7b: $ff
    rst $38                                       ; $5d7c: $ff
    rst $38                                       ; $5d7d: $ff
    rst $38                                       ; $5d7e: $ff
    rst $38                                       ; $5d7f: $ff
    rst $38                                       ; $5d80: $ff
    rst $38                                       ; $5d81: $ff
    rst $38                                       ; $5d82: $ff
    rst $38                                       ; $5d83: $ff
    rst $38                                       ; $5d84: $ff
    rst $38                                       ; $5d85: $ff
    rst $38                                       ; $5d86: $ff
    rst $38                                       ; $5d87: $ff
    rst $38                                       ; $5d88: $ff
    rst $38                                       ; $5d89: $ff
    rst $38                                       ; $5d8a: $ff
    rst $38                                       ; $5d8b: $ff
    rst $38                                       ; $5d8c: $ff
    rst $38                                       ; $5d8d: $ff
    rst $38                                       ; $5d8e: $ff
    rst $38                                       ; $5d8f: $ff
    rst $38                                       ; $5d90: $ff
    rst $38                                       ; $5d91: $ff
    rst $38                                       ; $5d92: $ff
    rst $38                                       ; $5d93: $ff
    rst $38                                       ; $5d94: $ff
    rst $38                                       ; $5d95: $ff
    rst $38                                       ; $5d96: $ff
    rst $38                                       ; $5d97: $ff
    rst $38                                       ; $5d98: $ff
    rst $38                                       ; $5d99: $ff
    rst $38                                       ; $5d9a: $ff
    rst $38                                       ; $5d9b: $ff
    rst $38                                       ; $5d9c: $ff
    rst $38                                       ; $5d9d: $ff
    rst $38                                       ; $5d9e: $ff
    rst $38                                       ; $5d9f: $ff
    rst $38                                       ; $5da0: $ff
    rst $38                                       ; $5da1: $ff
    rst $38                                       ; $5da2: $ff
    rst $38                                       ; $5da3: $ff
    rst $38                                       ; $5da4: $ff
    rst $38                                       ; $5da5: $ff
    rst $38                                       ; $5da6: $ff
    rst $38                                       ; $5da7: $ff
    rst $38                                       ; $5da8: $ff
    rst $38                                       ; $5da9: $ff
    rst $38                                       ; $5daa: $ff
    rst $38                                       ; $5dab: $ff
    rst $38                                       ; $5dac: $ff
    rst $38                                       ; $5dad: $ff
    rst $38                                       ; $5dae: $ff
    rst $38                                       ; $5daf: $ff
    rst $38                                       ; $5db0: $ff
    rst $38                                       ; $5db1: $ff
    rst $38                                       ; $5db2: $ff
    rst $38                                       ; $5db3: $ff
    rst $38                                       ; $5db4: $ff
    rst $38                                       ; $5db5: $ff
    rst $38                                       ; $5db6: $ff
    rst $38                                       ; $5db7: $ff
    rst $38                                       ; $5db8: $ff
    rst $38                                       ; $5db9: $ff
    rst $38                                       ; $5dba: $ff
    rst $38                                       ; $5dbb: $ff
    rst $38                                       ; $5dbc: $ff
    rst $38                                       ; $5dbd: $ff
    rst $38                                       ; $5dbe: $ff
    rst $38                                       ; $5dbf: $ff
    rst $38                                       ; $5dc0: $ff
    rst $38                                       ; $5dc1: $ff
    rst $38                                       ; $5dc2: $ff
    rst $38                                       ; $5dc3: $ff
    rst $38                                       ; $5dc4: $ff
    rst $38                                       ; $5dc5: $ff
    rst $38                                       ; $5dc6: $ff
    rst $38                                       ; $5dc7: $ff
    rst $38                                       ; $5dc8: $ff
    rst $38                                       ; $5dc9: $ff
    rst $38                                       ; $5dca: $ff
    rst $38                                       ; $5dcb: $ff
    rst $38                                       ; $5dcc: $ff
    rst $38                                       ; $5dcd: $ff
    rst $38                                       ; $5dce: $ff
    rst $38                                       ; $5dcf: $ff
    rst $38                                       ; $5dd0: $ff
    rst $38                                       ; $5dd1: $ff
    rst $38                                       ; $5dd2: $ff
    rst $38                                       ; $5dd3: $ff
    rst $38                                       ; $5dd4: $ff
    rst $38                                       ; $5dd5: $ff
    rst $38                                       ; $5dd6: $ff
    rst $38                                       ; $5dd7: $ff
    rst $38                                       ; $5dd8: $ff
    rst $38                                       ; $5dd9: $ff
    rst $38                                       ; $5dda: $ff
    rst $38                                       ; $5ddb: $ff
    rst $38                                       ; $5ddc: $ff
    rst $38                                       ; $5ddd: $ff
    rst $38                                       ; $5dde: $ff
    rst $38                                       ; $5ddf: $ff
    rst $38                                       ; $5de0: $ff
    rst $38                                       ; $5de1: $ff
    rst $38                                       ; $5de2: $ff
    rst $38                                       ; $5de3: $ff
    rst $38                                       ; $5de4: $ff
    rst $38                                       ; $5de5: $ff
    rst $38                                       ; $5de6: $ff
    rst $38                                       ; $5de7: $ff
    rst $38                                       ; $5de8: $ff
    rst $38                                       ; $5de9: $ff
    rst $38                                       ; $5dea: $ff
    rst $38                                       ; $5deb: $ff
    rst $38                                       ; $5dec: $ff
    rst $38                                       ; $5ded: $ff
    rst $38                                       ; $5dee: $ff
    rst $38                                       ; $5def: $ff
    rst $38                                       ; $5df0: $ff
    rst $38                                       ; $5df1: $ff
    rst $38                                       ; $5df2: $ff
    rst $38                                       ; $5df3: $ff
    rst $38                                       ; $5df4: $ff
    rst $38                                       ; $5df5: $ff
    rst $38                                       ; $5df6: $ff
    rst $38                                       ; $5df7: $ff
    rst $38                                       ; $5df8: $ff
    rst $38                                       ; $5df9: $ff
    rst $38                                       ; $5dfa: $ff
    rst $38                                       ; $5dfb: $ff
    rst $38                                       ; $5dfc: $ff
    rst $38                                       ; $5dfd: $ff
    rst $38                                       ; $5dfe: $ff
    rst $38                                       ; $5dff: $ff
    rst $38                                       ; $5e00: $ff
    rst $38                                       ; $5e01: $ff
    rst $38                                       ; $5e02: $ff
    rst $38                                       ; $5e03: $ff
    rst $38                                       ; $5e04: $ff
    rst $38                                       ; $5e05: $ff
    rst $38                                       ; $5e06: $ff
    rst $38                                       ; $5e07: $ff
    rst $38                                       ; $5e08: $ff
    rst $38                                       ; $5e09: $ff
    rst $38                                       ; $5e0a: $ff
    rst $38                                       ; $5e0b: $ff
    rst $38                                       ; $5e0c: $ff
    rst $38                                       ; $5e0d: $ff
    rst $38                                       ; $5e0e: $ff
    rst $38                                       ; $5e0f: $ff
    rst $38                                       ; $5e10: $ff
    rst $38                                       ; $5e11: $ff
    rst $38                                       ; $5e12: $ff
    rst $38                                       ; $5e13: $ff
    rst $38                                       ; $5e14: $ff
    rst $38                                       ; $5e15: $ff
    rst $38                                       ; $5e16: $ff
    rst $38                                       ; $5e17: $ff
    rst $38                                       ; $5e18: $ff
    rst $38                                       ; $5e19: $ff
    rst $38                                       ; $5e1a: $ff
    rst $38                                       ; $5e1b: $ff
    rst $38                                       ; $5e1c: $ff
    rst $38                                       ; $5e1d: $ff
    rst $38                                       ; $5e1e: $ff
    rst $38                                       ; $5e1f: $ff
    rst $38                                       ; $5e20: $ff
    rst $38                                       ; $5e21: $ff
    rst $38                                       ; $5e22: $ff
    rst $38                                       ; $5e23: $ff
    rst $38                                       ; $5e24: $ff
    rst $38                                       ; $5e25: $ff
    rst $38                                       ; $5e26: $ff
    rst $38                                       ; $5e27: $ff
    rst $38                                       ; $5e28: $ff
    rst $38                                       ; $5e29: $ff
    rst $38                                       ; $5e2a: $ff
    rst $38                                       ; $5e2b: $ff
    rst $38                                       ; $5e2c: $ff
    rst $38                                       ; $5e2d: $ff
    rst $38                                       ; $5e2e: $ff
    rst $38                                       ; $5e2f: $ff
    rst $38                                       ; $5e30: $ff
    rst $38                                       ; $5e31: $ff
    rst $38                                       ; $5e32: $ff
    rst $38                                       ; $5e33: $ff
    rst $38                                       ; $5e34: $ff
    rst $38                                       ; $5e35: $ff
    rst $38                                       ; $5e36: $ff
    rst $38                                       ; $5e37: $ff
    rst $38                                       ; $5e38: $ff
    rst $38                                       ; $5e39: $ff
    rst $38                                       ; $5e3a: $ff
    rst $38                                       ; $5e3b: $ff
    rst $38                                       ; $5e3c: $ff
    rst $38                                       ; $5e3d: $ff
    rst $38                                       ; $5e3e: $ff
    rst $38                                       ; $5e3f: $ff
    rst $38                                       ; $5e40: $ff
    rst $38                                       ; $5e41: $ff
    rst $38                                       ; $5e42: $ff
    rst $38                                       ; $5e43: $ff
    rst $38                                       ; $5e44: $ff
    rst $38                                       ; $5e45: $ff
    rst $38                                       ; $5e46: $ff
    rst $38                                       ; $5e47: $ff
    rst $38                                       ; $5e48: $ff
    rst $38                                       ; $5e49: $ff
    rst $38                                       ; $5e4a: $ff
    rst $38                                       ; $5e4b: $ff
    rst $38                                       ; $5e4c: $ff
    rst $38                                       ; $5e4d: $ff
    rst $38                                       ; $5e4e: $ff
    rst $38                                       ; $5e4f: $ff
    rst $38                                       ; $5e50: $ff
    rst $38                                       ; $5e51: $ff
    rst $38                                       ; $5e52: $ff
    rst $38                                       ; $5e53: $ff
    rst $38                                       ; $5e54: $ff
    rst $38                                       ; $5e55: $ff
    rst $38                                       ; $5e56: $ff
    rst $38                                       ; $5e57: $ff
    rst $38                                       ; $5e58: $ff
    rst $38                                       ; $5e59: $ff
    rst $38                                       ; $5e5a: $ff
    rst $38                                       ; $5e5b: $ff
    rst $38                                       ; $5e5c: $ff
    rst $38                                       ; $5e5d: $ff
    rst $38                                       ; $5e5e: $ff
    rst $38                                       ; $5e5f: $ff
    rst $38                                       ; $5e60: $ff
    rst $38                                       ; $5e61: $ff
    rst $38                                       ; $5e62: $ff
    rst $38                                       ; $5e63: $ff
    rst $38                                       ; $5e64: $ff
    rst $38                                       ; $5e65: $ff
    rst $38                                       ; $5e66: $ff
    rst $38                                       ; $5e67: $ff
    rst $38                                       ; $5e68: $ff
    rst $38                                       ; $5e69: $ff
    rst $38                                       ; $5e6a: $ff
    rst $38                                       ; $5e6b: $ff
    rst $38                                       ; $5e6c: $ff
    rst $38                                       ; $5e6d: $ff
    rst $38                                       ; $5e6e: $ff
    rst $38                                       ; $5e6f: $ff
    rst $38                                       ; $5e70: $ff
    rst $38                                       ; $5e71: $ff
    rst $38                                       ; $5e72: $ff
    rst $38                                       ; $5e73: $ff
    rst $38                                       ; $5e74: $ff
    rst $38                                       ; $5e75: $ff
    rst $38                                       ; $5e76: $ff
    rst $38                                       ; $5e77: $ff
    rst $38                                       ; $5e78: $ff
    rst $38                                       ; $5e79: $ff
    rst $38                                       ; $5e7a: $ff
    rst $38                                       ; $5e7b: $ff
    rst $38                                       ; $5e7c: $ff
    rst $38                                       ; $5e7d: $ff
    rst $38                                       ; $5e7e: $ff
    rst $38                                       ; $5e7f: $ff
    rst $38                                       ; $5e80: $ff
    rst $38                                       ; $5e81: $ff
    rst $38                                       ; $5e82: $ff
    rst $38                                       ; $5e83: $ff
    rst $38                                       ; $5e84: $ff
    rst $38                                       ; $5e85: $ff
    rst $38                                       ; $5e86: $ff
    rst $38                                       ; $5e87: $ff
    rst $38                                       ; $5e88: $ff
    rst $38                                       ; $5e89: $ff
    rst $38                                       ; $5e8a: $ff
    rst $38                                       ; $5e8b: $ff
    rst $38                                       ; $5e8c: $ff
    rst $38                                       ; $5e8d: $ff
    rst $38                                       ; $5e8e: $ff
    rst $38                                       ; $5e8f: $ff
    rst $38                                       ; $5e90: $ff
    rst $38                                       ; $5e91: $ff
    rst $38                                       ; $5e92: $ff
    rst $38                                       ; $5e93: $ff
    rst $38                                       ; $5e94: $ff
    rst $38                                       ; $5e95: $ff
    rst $38                                       ; $5e96: $ff
    rst $38                                       ; $5e97: $ff
    rst $38                                       ; $5e98: $ff
    rst $38                                       ; $5e99: $ff
    rst $38                                       ; $5e9a: $ff
    rst $38                                       ; $5e9b: $ff
    rst $38                                       ; $5e9c: $ff
    rst $38                                       ; $5e9d: $ff
    rst $38                                       ; $5e9e: $ff
    rst $38                                       ; $5e9f: $ff
    rst $38                                       ; $5ea0: $ff
    rst $38                                       ; $5ea1: $ff
    rst $38                                       ; $5ea2: $ff
    rst $38                                       ; $5ea3: $ff
    rst $38                                       ; $5ea4: $ff
    rst $38                                       ; $5ea5: $ff
    rst $38                                       ; $5ea6: $ff
    rst $38                                       ; $5ea7: $ff
    rst $38                                       ; $5ea8: $ff
    rst $38                                       ; $5ea9: $ff
    rst $38                                       ; $5eaa: $ff
    rst $38                                       ; $5eab: $ff
    rst $38                                       ; $5eac: $ff
    rst $38                                       ; $5ead: $ff
    rst $38                                       ; $5eae: $ff
    rst $38                                       ; $5eaf: $ff
    rst $38                                       ; $5eb0: $ff
    rst $38                                       ; $5eb1: $ff
    rst $38                                       ; $5eb2: $ff
    rst $38                                       ; $5eb3: $ff
    rst $38                                       ; $5eb4: $ff
    rst $38                                       ; $5eb5: $ff
    rst $38                                       ; $5eb6: $ff
    rst $38                                       ; $5eb7: $ff
    rst $38                                       ; $5eb8: $ff
    rst $38                                       ; $5eb9: $ff
    rst $38                                       ; $5eba: $ff
    rst $38                                       ; $5ebb: $ff
    rst $38                                       ; $5ebc: $ff
    rst $38                                       ; $5ebd: $ff
    rst $38                                       ; $5ebe: $ff
    rst $38                                       ; $5ebf: $ff
    rst $38                                       ; $5ec0: $ff
    rst $38                                       ; $5ec1: $ff
    rst $38                                       ; $5ec2: $ff
    rst $38                                       ; $5ec3: $ff
    rst $38                                       ; $5ec4: $ff
    rst $38                                       ; $5ec5: $ff
    rst $38                                       ; $5ec6: $ff
    rst $38                                       ; $5ec7: $ff
    rst $38                                       ; $5ec8: $ff
    rst $38                                       ; $5ec9: $ff
    rst $38                                       ; $5eca: $ff
    rst $38                                       ; $5ecb: $ff
    rst $38                                       ; $5ecc: $ff
    rst $38                                       ; $5ecd: $ff
    rst $38                                       ; $5ece: $ff
    rst $38                                       ; $5ecf: $ff
    rst $38                                       ; $5ed0: $ff
    rst $38                                       ; $5ed1: $ff
    rst $38                                       ; $5ed2: $ff
    rst $38                                       ; $5ed3: $ff
    rst $38                                       ; $5ed4: $ff
    rst $38                                       ; $5ed5: $ff
    rst $38                                       ; $5ed6: $ff
    rst $38                                       ; $5ed7: $ff
    rst $38                                       ; $5ed8: $ff
    rst $38                                       ; $5ed9: $ff
    rst $38                                       ; $5eda: $ff
    rst $38                                       ; $5edb: $ff
    rst $38                                       ; $5edc: $ff
    rst $38                                       ; $5edd: $ff
    rst $38                                       ; $5ede: $ff
    rst $38                                       ; $5edf: $ff
    rst $38                                       ; $5ee0: $ff
    rst $38                                       ; $5ee1: $ff
    rst $38                                       ; $5ee2: $ff
    rst $38                                       ; $5ee3: $ff
    rst $38                                       ; $5ee4: $ff
    rst $38                                       ; $5ee5: $ff
    rst $38                                       ; $5ee6: $ff
    rst $38                                       ; $5ee7: $ff
    rst $38                                       ; $5ee8: $ff
    rst $38                                       ; $5ee9: $ff
    rst $38                                       ; $5eea: $ff
    rst $38                                       ; $5eeb: $ff
    rst $38                                       ; $5eec: $ff
    rst $38                                       ; $5eed: $ff
    rst $38                                       ; $5eee: $ff
    rst $38                                       ; $5eef: $ff
    rst $38                                       ; $5ef0: $ff
    rst $38                                       ; $5ef1: $ff
    rst $38                                       ; $5ef2: $ff
    rst $38                                       ; $5ef3: $ff
    rst $38                                       ; $5ef4: $ff
    rst $38                                       ; $5ef5: $ff
    rst $38                                       ; $5ef6: $ff
    rst $38                                       ; $5ef7: $ff
    rst $38                                       ; $5ef8: $ff
    rst $38                                       ; $5ef9: $ff
    rst $38                                       ; $5efa: $ff
    rst $38                                       ; $5efb: $ff
    rst $38                                       ; $5efc: $ff
    rst $38                                       ; $5efd: $ff
    rst $38                                       ; $5efe: $ff
    rst $38                                       ; $5eff: $ff
    rst $38                                       ; $5f00: $ff
    rst $38                                       ; $5f01: $ff
    rst $38                                       ; $5f02: $ff
    rst $38                                       ; $5f03: $ff
    rst $38                                       ; $5f04: $ff
    rst $38                                       ; $5f05: $ff
    rst $38                                       ; $5f06: $ff
    rst $38                                       ; $5f07: $ff
    rst $38                                       ; $5f08: $ff
    rst $38                                       ; $5f09: $ff
    rst $38                                       ; $5f0a: $ff
    rst $38                                       ; $5f0b: $ff
    rst $38                                       ; $5f0c: $ff
    rst $38                                       ; $5f0d: $ff
    rst $38                                       ; $5f0e: $ff
    rst $38                                       ; $5f0f: $ff
    rst $38                                       ; $5f10: $ff
    rst $38                                       ; $5f11: $ff
    rst $38                                       ; $5f12: $ff
    rst $38                                       ; $5f13: $ff
    rst $38                                       ; $5f14: $ff
    rst $38                                       ; $5f15: $ff
    rst $38                                       ; $5f16: $ff
    rst $38                                       ; $5f17: $ff
    rst $38                                       ; $5f18: $ff
    rst $38                                       ; $5f19: $ff
    rst $38                                       ; $5f1a: $ff
    rst $38                                       ; $5f1b: $ff
    rst $38                                       ; $5f1c: $ff
    rst $38                                       ; $5f1d: $ff
    rst $38                                       ; $5f1e: $ff
    rst $38                                       ; $5f1f: $ff
    rst $38                                       ; $5f20: $ff
    rst $38                                       ; $5f21: $ff
    rst $38                                       ; $5f22: $ff
    rst $38                                       ; $5f23: $ff
    rst $38                                       ; $5f24: $ff
    rst $38                                       ; $5f25: $ff
    rst $38                                       ; $5f26: $ff
    rst $38                                       ; $5f27: $ff
    rst $38                                       ; $5f28: $ff
    rst $38                                       ; $5f29: $ff
    rst $38                                       ; $5f2a: $ff
    rst $38                                       ; $5f2b: $ff
    rst $38                                       ; $5f2c: $ff
    rst $38                                       ; $5f2d: $ff
    rst $38                                       ; $5f2e: $ff
    rst $38                                       ; $5f2f: $ff
    rst $38                                       ; $5f30: $ff
    rst $38                                       ; $5f31: $ff
    rst $38                                       ; $5f32: $ff
    rst $38                                       ; $5f33: $ff
    rst $38                                       ; $5f34: $ff
    rst $38                                       ; $5f35: $ff
    rst $38                                       ; $5f36: $ff
    rst $38                                       ; $5f37: $ff
    rst $38                                       ; $5f38: $ff
    rst $38                                       ; $5f39: $ff
    rst $38                                       ; $5f3a: $ff
    rst $38                                       ; $5f3b: $ff
    rst $38                                       ; $5f3c: $ff
    rst $38                                       ; $5f3d: $ff
    rst $38                                       ; $5f3e: $ff
    rst $38                                       ; $5f3f: $ff
    rst $38                                       ; $5f40: $ff
    rst $38                                       ; $5f41: $ff
    rst $38                                       ; $5f42: $ff
    rst $38                                       ; $5f43: $ff
    rst $38                                       ; $5f44: $ff
    rst $38                                       ; $5f45: $ff
    rst $38                                       ; $5f46: $ff
    rst $38                                       ; $5f47: $ff
    rst $38                                       ; $5f48: $ff
    rst $38                                       ; $5f49: $ff
    rst $38                                       ; $5f4a: $ff
    rst $38                                       ; $5f4b: $ff
    rst $38                                       ; $5f4c: $ff
    rst $38                                       ; $5f4d: $ff
    rst $38                                       ; $5f4e: $ff
    rst $38                                       ; $5f4f: $ff
    rst $38                                       ; $5f50: $ff
    rst $38                                       ; $5f51: $ff
    rst $38                                       ; $5f52: $ff
    rst $38                                       ; $5f53: $ff
    rst $38                                       ; $5f54: $ff
    rst $38                                       ; $5f55: $ff
    rst $38                                       ; $5f56: $ff
    rst $38                                       ; $5f57: $ff
    rst $38                                       ; $5f58: $ff
    rst $38                                       ; $5f59: $ff
    rst $38                                       ; $5f5a: $ff
    rst $38                                       ; $5f5b: $ff
    rst $38                                       ; $5f5c: $ff
    rst $38                                       ; $5f5d: $ff
    rst $38                                       ; $5f5e: $ff
    rst $38                                       ; $5f5f: $ff
    rst $38                                       ; $5f60: $ff
    rst $38                                       ; $5f61: $ff
    rst $38                                       ; $5f62: $ff
    rst $38                                       ; $5f63: $ff
    rst $38                                       ; $5f64: $ff
    rst $38                                       ; $5f65: $ff
    rst $38                                       ; $5f66: $ff
    rst $38                                       ; $5f67: $ff
    rst $38                                       ; $5f68: $ff
    rst $38                                       ; $5f69: $ff
    rst $38                                       ; $5f6a: $ff
    rst $38                                       ; $5f6b: $ff
    rst $38                                       ; $5f6c: $ff
    rst $38                                       ; $5f6d: $ff
    rst $38                                       ; $5f6e: $ff
    rst $38                                       ; $5f6f: $ff
    rst $38                                       ; $5f70: $ff
    rst $38                                       ; $5f71: $ff
    rst $38                                       ; $5f72: $ff
    rst $38                                       ; $5f73: $ff
    rst $38                                       ; $5f74: $ff
    rst $38                                       ; $5f75: $ff
    rst $38                                       ; $5f76: $ff
    rst $38                                       ; $5f77: $ff
    rst $38                                       ; $5f78: $ff
    rst $38                                       ; $5f79: $ff
    rst $38                                       ; $5f7a: $ff
    rst $38                                       ; $5f7b: $ff
    rst $38                                       ; $5f7c: $ff
    rst $38                                       ; $5f7d: $ff
    rst $38                                       ; $5f7e: $ff
    rst $38                                       ; $5f7f: $ff
    rst $38                                       ; $5f80: $ff
    rst $38                                       ; $5f81: $ff
    rst $38                                       ; $5f82: $ff
    rst $38                                       ; $5f83: $ff
    rst $38                                       ; $5f84: $ff
    rst $38                                       ; $5f85: $ff
    rst $38                                       ; $5f86: $ff
    rst $38                                       ; $5f87: $ff
    rst $38                                       ; $5f88: $ff
    rst $38                                       ; $5f89: $ff
    rst $38                                       ; $5f8a: $ff
    rst $38                                       ; $5f8b: $ff
    rst $38                                       ; $5f8c: $ff
    rst $38                                       ; $5f8d: $ff
    rst $38                                       ; $5f8e: $ff
    rst $38                                       ; $5f8f: $ff
    rst $38                                       ; $5f90: $ff
    rst $38                                       ; $5f91: $ff
    rst $38                                       ; $5f92: $ff
    rst $38                                       ; $5f93: $ff
    rst $38                                       ; $5f94: $ff
    rst $38                                       ; $5f95: $ff
    rst $38                                       ; $5f96: $ff
    rst $38                                       ; $5f97: $ff
    rst $38                                       ; $5f98: $ff
    rst $38                                       ; $5f99: $ff
    rst $38                                       ; $5f9a: $ff
    rst $38                                       ; $5f9b: $ff
    rst $38                                       ; $5f9c: $ff
    rst $38                                       ; $5f9d: $ff
    rst $38                                       ; $5f9e: $ff
    rst $38                                       ; $5f9f: $ff
    rst $38                                       ; $5fa0: $ff
    rst $38                                       ; $5fa1: $ff
    rst $38                                       ; $5fa2: $ff
    rst $38                                       ; $5fa3: $ff
    rst $38                                       ; $5fa4: $ff
    rst $38                                       ; $5fa5: $ff
    rst $38                                       ; $5fa6: $ff
    rst $38                                       ; $5fa7: $ff
    rst $38                                       ; $5fa8: $ff
    rst $38                                       ; $5fa9: $ff
    rst $38                                       ; $5faa: $ff
    rst $38                                       ; $5fab: $ff
    rst $38                                       ; $5fac: $ff
    rst $38                                       ; $5fad: $ff
    rst $38                                       ; $5fae: $ff
    rst $38                                       ; $5faf: $ff
    rst $38                                       ; $5fb0: $ff
    rst $38                                       ; $5fb1: $ff
    rst $38                                       ; $5fb2: $ff
    rst $38                                       ; $5fb3: $ff
    rst $38                                       ; $5fb4: $ff
    rst $38                                       ; $5fb5: $ff
    rst $38                                       ; $5fb6: $ff
    rst $38                                       ; $5fb7: $ff
    rst $38                                       ; $5fb8: $ff
    rst $38                                       ; $5fb9: $ff
    rst $38                                       ; $5fba: $ff
    rst $38                                       ; $5fbb: $ff
    rst $38                                       ; $5fbc: $ff
    rst $38                                       ; $5fbd: $ff
    rst $38                                       ; $5fbe: $ff
    rst $38                                       ; $5fbf: $ff
    rst $38                                       ; $5fc0: $ff
    rst $38                                       ; $5fc1: $ff
    rst $38                                       ; $5fc2: $ff
    rst $38                                       ; $5fc3: $ff
    rst $38                                       ; $5fc4: $ff
    rst $38                                       ; $5fc5: $ff
    rst $38                                       ; $5fc6: $ff
    rst $38                                       ; $5fc7: $ff
    rst $38                                       ; $5fc8: $ff
    rst $38                                       ; $5fc9: $ff
    rst $38                                       ; $5fca: $ff
    rst $38                                       ; $5fcb: $ff
    rst $38                                       ; $5fcc: $ff
    rst $38                                       ; $5fcd: $ff
    rst $38                                       ; $5fce: $ff
    rst $38                                       ; $5fcf: $ff
    rst $38                                       ; $5fd0: $ff
    rst $38                                       ; $5fd1: $ff
    rst $38                                       ; $5fd2: $ff
    rst $38                                       ; $5fd3: $ff
    rst $38                                       ; $5fd4: $ff
    rst $38                                       ; $5fd5: $ff
    rst $38                                       ; $5fd6: $ff
    rst $38                                       ; $5fd7: $ff
    rst $38                                       ; $5fd8: $ff
    rst $38                                       ; $5fd9: $ff
    rst $38                                       ; $5fda: $ff
    rst $38                                       ; $5fdb: $ff
    rst $38                                       ; $5fdc: $ff
    rst $38                                       ; $5fdd: $ff
    rst $38                                       ; $5fde: $ff
    rst $38                                       ; $5fdf: $ff
    rst $38                                       ; $5fe0: $ff
    rst $38                                       ; $5fe1: $ff
    rst $38                                       ; $5fe2: $ff
    rst $38                                       ; $5fe3: $ff
    rst $38                                       ; $5fe4: $ff
    rst $38                                       ; $5fe5: $ff
    rst $38                                       ; $5fe6: $ff
    rst $38                                       ; $5fe7: $ff
    rst $38                                       ; $5fe8: $ff
    rst $38                                       ; $5fe9: $ff
    rst $38                                       ; $5fea: $ff
    rst $38                                       ; $5feb: $ff
    rst $38                                       ; $5fec: $ff
    rst $38                                       ; $5fed: $ff
    rst $38                                       ; $5fee: $ff
    rst $38                                       ; $5fef: $ff
    rst $38                                       ; $5ff0: $ff
    rst $38                                       ; $5ff1: $ff
    rst $38                                       ; $5ff2: $ff
    rst $38                                       ; $5ff3: $ff
    rst $38                                       ; $5ff4: $ff
    rst $38                                       ; $5ff5: $ff
    rst $38                                       ; $5ff6: $ff
    rst $38                                       ; $5ff7: $ff
    rst $38                                       ; $5ff8: $ff
    rst $38                                       ; $5ff9: $ff
    rst $38                                       ; $5ffa: $ff
    rst $38                                       ; $5ffb: $ff
    rst $38                                       ; $5ffc: $ff
    rst $38                                       ; $5ffd: $ff
    rst $38                                       ; $5ffe: $ff
    rst $38                                       ; $5fff: $ff
    rst $38                                       ; $6000: $ff
    rst $38                                       ; $6001: $ff
    rst $38                                       ; $6002: $ff
    rst $38                                       ; $6003: $ff
    rst $38                                       ; $6004: $ff
    rst $38                                       ; $6005: $ff
    rst $38                                       ; $6006: $ff
    rst $38                                       ; $6007: $ff
    rst $38                                       ; $6008: $ff
    rst $38                                       ; $6009: $ff
    rst $38                                       ; $600a: $ff
    rst $38                                       ; $600b: $ff
    rst $38                                       ; $600c: $ff
    rst $38                                       ; $600d: $ff
    rst $38                                       ; $600e: $ff
    rst $38                                       ; $600f: $ff
    rst $38                                       ; $6010: $ff
    rst $38                                       ; $6011: $ff
    rst $38                                       ; $6012: $ff
    rst $38                                       ; $6013: $ff
    rst $38                                       ; $6014: $ff
    rst $38                                       ; $6015: $ff
    rst $38                                       ; $6016: $ff
    rst $38                                       ; $6017: $ff
    rst $38                                       ; $6018: $ff
    rst $38                                       ; $6019: $ff
    rst $38                                       ; $601a: $ff
    rst $38                                       ; $601b: $ff
    rst $38                                       ; $601c: $ff
    rst $38                                       ; $601d: $ff
    rst $38                                       ; $601e: $ff
    rst $38                                       ; $601f: $ff
    rst $38                                       ; $6020: $ff
    rst $38                                       ; $6021: $ff
    rst $38                                       ; $6022: $ff
    rst $38                                       ; $6023: $ff
    rst $38                                       ; $6024: $ff
    rst $38                                       ; $6025: $ff
    rst $38                                       ; $6026: $ff
    rst $38                                       ; $6027: $ff
    rst $38                                       ; $6028: $ff
    rst $38                                       ; $6029: $ff
    rst $38                                       ; $602a: $ff
    rst $38                                       ; $602b: $ff
    rst $38                                       ; $602c: $ff
    rst $38                                       ; $602d: $ff
    rst $38                                       ; $602e: $ff
    rst $38                                       ; $602f: $ff
    rst $38                                       ; $6030: $ff
    rst $38                                       ; $6031: $ff
    rst $38                                       ; $6032: $ff
    rst $38                                       ; $6033: $ff
    rst $38                                       ; $6034: $ff
    rst $38                                       ; $6035: $ff
    rst $38                                       ; $6036: $ff
    rst $38                                       ; $6037: $ff
    rst $38                                       ; $6038: $ff
    rst $38                                       ; $6039: $ff
    rst $38                                       ; $603a: $ff
    rst $38                                       ; $603b: $ff
    rst $38                                       ; $603c: $ff
    rst $38                                       ; $603d: $ff
    rst $38                                       ; $603e: $ff
    rst $38                                       ; $603f: $ff
    rst $38                                       ; $6040: $ff
    rst $38                                       ; $6041: $ff
    rst $38                                       ; $6042: $ff
    rst $38                                       ; $6043: $ff
    rst $38                                       ; $6044: $ff
    rst $38                                       ; $6045: $ff
    rst $38                                       ; $6046: $ff
    rst $38                                       ; $6047: $ff
    rst $38                                       ; $6048: $ff
    rst $38                                       ; $6049: $ff
    rst $38                                       ; $604a: $ff
    rst $38                                       ; $604b: $ff
    rst $38                                       ; $604c: $ff
    rst $38                                       ; $604d: $ff
    rst $38                                       ; $604e: $ff
    rst $38                                       ; $604f: $ff
    rst $38                                       ; $6050: $ff
    rst $38                                       ; $6051: $ff
    rst $38                                       ; $6052: $ff
    rst $38                                       ; $6053: $ff
    rst $38                                       ; $6054: $ff
    rst $38                                       ; $6055: $ff
    rst $38                                       ; $6056: $ff
    rst $38                                       ; $6057: $ff
    rst $38                                       ; $6058: $ff
    rst $38                                       ; $6059: $ff
    rst $38                                       ; $605a: $ff
    rst $38                                       ; $605b: $ff
    rst $38                                       ; $605c: $ff
    rst $38                                       ; $605d: $ff
    rst $38                                       ; $605e: $ff
    rst $38                                       ; $605f: $ff
    rst $38                                       ; $6060: $ff
    rst $38                                       ; $6061: $ff
    rst $38                                       ; $6062: $ff
    rst $38                                       ; $6063: $ff
    rst $38                                       ; $6064: $ff
    rst $38                                       ; $6065: $ff
    rst $38                                       ; $6066: $ff
    rst $38                                       ; $6067: $ff
    rst $38                                       ; $6068: $ff
    rst $38                                       ; $6069: $ff
    rst $38                                       ; $606a: $ff
    rst $38                                       ; $606b: $ff
    rst $38                                       ; $606c: $ff
    rst $38                                       ; $606d: $ff
    rst $38                                       ; $606e: $ff
    rst $38                                       ; $606f: $ff
    rst $38                                       ; $6070: $ff
    rst $38                                       ; $6071: $ff
    rst $38                                       ; $6072: $ff
    rst $38                                       ; $6073: $ff
    rst $38                                       ; $6074: $ff
    rst $38                                       ; $6075: $ff
    rst $38                                       ; $6076: $ff
    rst $38                                       ; $6077: $ff
    rst $38                                       ; $6078: $ff
    rst $38                                       ; $6079: $ff
    rst $38                                       ; $607a: $ff
    rst $38                                       ; $607b: $ff
    rst $38                                       ; $607c: $ff
    rst $38                                       ; $607d: $ff
    rst $38                                       ; $607e: $ff
    rst $38                                       ; $607f: $ff
    rst $38                                       ; $6080: $ff
    rst $38                                       ; $6081: $ff
    rst $38                                       ; $6082: $ff
    rst $38                                       ; $6083: $ff
    rst $38                                       ; $6084: $ff
    rst $38                                       ; $6085: $ff
    rst $38                                       ; $6086: $ff
    rst $38                                       ; $6087: $ff
    rst $38                                       ; $6088: $ff
    rst $38                                       ; $6089: $ff
    rst $38                                       ; $608a: $ff
    rst $38                                       ; $608b: $ff
    rst $38                                       ; $608c: $ff
    rst $38                                       ; $608d: $ff
    rst $38                                       ; $608e: $ff
    rst $38                                       ; $608f: $ff
    rst $38                                       ; $6090: $ff
    rst $38                                       ; $6091: $ff
    rst $38                                       ; $6092: $ff
    rst $38                                       ; $6093: $ff
    rst $38                                       ; $6094: $ff
    rst $38                                       ; $6095: $ff
    rst $38                                       ; $6096: $ff
    rst $38                                       ; $6097: $ff
    rst $38                                       ; $6098: $ff
    rst $38                                       ; $6099: $ff
    rst $38                                       ; $609a: $ff
    rst $38                                       ; $609b: $ff
    rst $38                                       ; $609c: $ff
    rst $38                                       ; $609d: $ff
    rst $38                                       ; $609e: $ff
    rst $38                                       ; $609f: $ff
    rst $38                                       ; $60a0: $ff
    rst $38                                       ; $60a1: $ff
    rst $38                                       ; $60a2: $ff
    rst $38                                       ; $60a3: $ff
    rst $38                                       ; $60a4: $ff
    rst $38                                       ; $60a5: $ff
    rst $38                                       ; $60a6: $ff
    rst $38                                       ; $60a7: $ff
    rst $38                                       ; $60a8: $ff
    rst $38                                       ; $60a9: $ff
    rst $38                                       ; $60aa: $ff
    rst $38                                       ; $60ab: $ff
    rst $38                                       ; $60ac: $ff
    rst $38                                       ; $60ad: $ff
    rst $38                                       ; $60ae: $ff
    rst $38                                       ; $60af: $ff
    rst $38                                       ; $60b0: $ff
    rst $38                                       ; $60b1: $ff
    rst $38                                       ; $60b2: $ff
    rst $38                                       ; $60b3: $ff
    rst $38                                       ; $60b4: $ff
    rst $38                                       ; $60b5: $ff
    rst $38                                       ; $60b6: $ff
    rst $38                                       ; $60b7: $ff
    rst $38                                       ; $60b8: $ff
    rst $38                                       ; $60b9: $ff
    rst $38                                       ; $60ba: $ff
    rst $38                                       ; $60bb: $ff
    rst $38                                       ; $60bc: $ff
    rst $38                                       ; $60bd: $ff
    rst $38                                       ; $60be: $ff
    rst $38                                       ; $60bf: $ff
    rst $38                                       ; $60c0: $ff
    rst $38                                       ; $60c1: $ff
    rst $38                                       ; $60c2: $ff
    rst $38                                       ; $60c3: $ff
    rst $38                                       ; $60c4: $ff
    rst $38                                       ; $60c5: $ff
    rst $38                                       ; $60c6: $ff
    rst $38                                       ; $60c7: $ff
    rst $38                                       ; $60c8: $ff
    rst $38                                       ; $60c9: $ff
    rst $38                                       ; $60ca: $ff
    rst $38                                       ; $60cb: $ff
    rst $38                                       ; $60cc: $ff
    rst $38                                       ; $60cd: $ff
    rst $38                                       ; $60ce: $ff
    rst $38                                       ; $60cf: $ff
    rst $38                                       ; $60d0: $ff
    rst $38                                       ; $60d1: $ff
    rst $38                                       ; $60d2: $ff
    rst $38                                       ; $60d3: $ff
    rst $38                                       ; $60d4: $ff
    rst $38                                       ; $60d5: $ff
    rst $38                                       ; $60d6: $ff
    rst $38                                       ; $60d7: $ff
    rst $38                                       ; $60d8: $ff
    rst $38                                       ; $60d9: $ff
    rst $38                                       ; $60da: $ff
    rst $38                                       ; $60db: $ff
    rst $38                                       ; $60dc: $ff
    rst $38                                       ; $60dd: $ff
    rst $38                                       ; $60de: $ff
    rst $38                                       ; $60df: $ff
    rst $38                                       ; $60e0: $ff
    rst $38                                       ; $60e1: $ff
    rst $38                                       ; $60e2: $ff
    rst $38                                       ; $60e3: $ff
    rst $38                                       ; $60e4: $ff
    rst $38                                       ; $60e5: $ff
    rst $38                                       ; $60e6: $ff
    rst $38                                       ; $60e7: $ff
    rst $38                                       ; $60e8: $ff
    rst $38                                       ; $60e9: $ff
    rst $38                                       ; $60ea: $ff
    rst $38                                       ; $60eb: $ff
    rst $38                                       ; $60ec: $ff
    rst $38                                       ; $60ed: $ff
    rst $38                                       ; $60ee: $ff
    rst $38                                       ; $60ef: $ff
    rst $38                                       ; $60f0: $ff
    rst $38                                       ; $60f1: $ff
    rst $38                                       ; $60f2: $ff
    rst $38                                       ; $60f3: $ff
    rst $38                                       ; $60f4: $ff
    rst $38                                       ; $60f5: $ff
    rst $38                                       ; $60f6: $ff
    rst $38                                       ; $60f7: $ff
    rst $38                                       ; $60f8: $ff
    rst $38                                       ; $60f9: $ff
    rst $38                                       ; $60fa: $ff
    rst $38                                       ; $60fb: $ff
    rst $38                                       ; $60fc: $ff
    rst $38                                       ; $60fd: $ff
    rst $38                                       ; $60fe: $ff
    rst $38                                       ; $60ff: $ff
    rst $38                                       ; $6100: $ff
    rst $38                                       ; $6101: $ff
    rst $38                                       ; $6102: $ff
    rst $38                                       ; $6103: $ff
    rst $38                                       ; $6104: $ff
    rst $38                                       ; $6105: $ff
    rst $38                                       ; $6106: $ff
    rst $38                                       ; $6107: $ff
    rst $38                                       ; $6108: $ff
    rst $38                                       ; $6109: $ff
    rst $38                                       ; $610a: $ff
    rst $38                                       ; $610b: $ff
    rst $38                                       ; $610c: $ff
    rst $38                                       ; $610d: $ff
    rst $38                                       ; $610e: $ff
    rst $38                                       ; $610f: $ff
    rst $38                                       ; $6110: $ff
    rst $38                                       ; $6111: $ff
    rst $38                                       ; $6112: $ff
    rst $38                                       ; $6113: $ff
    rst $38                                       ; $6114: $ff
    rst $38                                       ; $6115: $ff
    rst $38                                       ; $6116: $ff
    rst $38                                       ; $6117: $ff
    rst $38                                       ; $6118: $ff
    rst $38                                       ; $6119: $ff
    rst $38                                       ; $611a: $ff
    rst $38                                       ; $611b: $ff
    rst $38                                       ; $611c: $ff
    rst $38                                       ; $611d: $ff
    rst $38                                       ; $611e: $ff
    rst $38                                       ; $611f: $ff
    rst $38                                       ; $6120: $ff
    rst $38                                       ; $6121: $ff
    rst $38                                       ; $6122: $ff
    rst $38                                       ; $6123: $ff
    rst $38                                       ; $6124: $ff
    rst $38                                       ; $6125: $ff
    rst $38                                       ; $6126: $ff
    rst $38                                       ; $6127: $ff
    rst $38                                       ; $6128: $ff
    rst $38                                       ; $6129: $ff
    rst $38                                       ; $612a: $ff
    rst $38                                       ; $612b: $ff
    rst $38                                       ; $612c: $ff
    rst $38                                       ; $612d: $ff
    rst $38                                       ; $612e: $ff
    rst $38                                       ; $612f: $ff
    rst $38                                       ; $6130: $ff
    rst $38                                       ; $6131: $ff
    rst $38                                       ; $6132: $ff
    rst $38                                       ; $6133: $ff
    rst $38                                       ; $6134: $ff
    rst $38                                       ; $6135: $ff
    rst $38                                       ; $6136: $ff
    rst $38                                       ; $6137: $ff
    rst $38                                       ; $6138: $ff
    rst $38                                       ; $6139: $ff
    rst $38                                       ; $613a: $ff
    rst $38                                       ; $613b: $ff
    rst $38                                       ; $613c: $ff
    rst $38                                       ; $613d: $ff
    rst $38                                       ; $613e: $ff
    rst $38                                       ; $613f: $ff
    rst $38                                       ; $6140: $ff
    rst $38                                       ; $6141: $ff
    rst $38                                       ; $6142: $ff
    rst $38                                       ; $6143: $ff
    rst $38                                       ; $6144: $ff
    rst $38                                       ; $6145: $ff
    rst $38                                       ; $6146: $ff
    rst $38                                       ; $6147: $ff
    rst $38                                       ; $6148: $ff
    rst $38                                       ; $6149: $ff
    rst $38                                       ; $614a: $ff
    rst $38                                       ; $614b: $ff
    rst $38                                       ; $614c: $ff
    rst $38                                       ; $614d: $ff
    rst $38                                       ; $614e: $ff
    rst $38                                       ; $614f: $ff
    rst $38                                       ; $6150: $ff
    rst $38                                       ; $6151: $ff
    rst $38                                       ; $6152: $ff
    rst $38                                       ; $6153: $ff
    rst $38                                       ; $6154: $ff
    rst $38                                       ; $6155: $ff
    rst $38                                       ; $6156: $ff
    rst $38                                       ; $6157: $ff
    rst $38                                       ; $6158: $ff
    rst $38                                       ; $6159: $ff
    rst $38                                       ; $615a: $ff
    rst $38                                       ; $615b: $ff
    rst $38                                       ; $615c: $ff
    rst $38                                       ; $615d: $ff
    rst $38                                       ; $615e: $ff
    rst $38                                       ; $615f: $ff
    rst $38                                       ; $6160: $ff
    rst $38                                       ; $6161: $ff
    rst $38                                       ; $6162: $ff
    rst $38                                       ; $6163: $ff
    rst $38                                       ; $6164: $ff
    rst $38                                       ; $6165: $ff
    rst $38                                       ; $6166: $ff
    rst $38                                       ; $6167: $ff
    rst $38                                       ; $6168: $ff
    rst $38                                       ; $6169: $ff
    rst $38                                       ; $616a: $ff
    rst $38                                       ; $616b: $ff
    rst $38                                       ; $616c: $ff
    rst $38                                       ; $616d: $ff
    rst $38                                       ; $616e: $ff
    rst $38                                       ; $616f: $ff
    rst $38                                       ; $6170: $ff
    rst $38                                       ; $6171: $ff
    rst $38                                       ; $6172: $ff
    rst $38                                       ; $6173: $ff
    rst $38                                       ; $6174: $ff
    rst $38                                       ; $6175: $ff
    rst $38                                       ; $6176: $ff
    rst $38                                       ; $6177: $ff
    rst $38                                       ; $6178: $ff
    rst $38                                       ; $6179: $ff
    rst $38                                       ; $617a: $ff
    rst $38                                       ; $617b: $ff
    rst $38                                       ; $617c: $ff
    rst $38                                       ; $617d: $ff
    rst $38                                       ; $617e: $ff
    rst $38                                       ; $617f: $ff
    rst $38                                       ; $6180: $ff
    rst $38                                       ; $6181: $ff
    rst $38                                       ; $6182: $ff
    rst $38                                       ; $6183: $ff
    rst $38                                       ; $6184: $ff
    rst $38                                       ; $6185: $ff
    rst $38                                       ; $6186: $ff
    rst $38                                       ; $6187: $ff
    rst $38                                       ; $6188: $ff
    rst $38                                       ; $6189: $ff
    rst $38                                       ; $618a: $ff
    rst $38                                       ; $618b: $ff
    rst $38                                       ; $618c: $ff
    rst $38                                       ; $618d: $ff
    rst $38                                       ; $618e: $ff
    rst $38                                       ; $618f: $ff
    rst $38                                       ; $6190: $ff
    rst $38                                       ; $6191: $ff
    rst $38                                       ; $6192: $ff
    rst $38                                       ; $6193: $ff
    rst $38                                       ; $6194: $ff
    rst $38                                       ; $6195: $ff
    rst $38                                       ; $6196: $ff
    rst $38                                       ; $6197: $ff
    rst $38                                       ; $6198: $ff
    rst $38                                       ; $6199: $ff
    rst $38                                       ; $619a: $ff
    rst $38                                       ; $619b: $ff
    rst $38                                       ; $619c: $ff
    rst $38                                       ; $619d: $ff
    rst $38                                       ; $619e: $ff
    rst $38                                       ; $619f: $ff
    rst $38                                       ; $61a0: $ff
    rst $38                                       ; $61a1: $ff
    rst $38                                       ; $61a2: $ff
    rst $38                                       ; $61a3: $ff
    rst $38                                       ; $61a4: $ff
    rst $38                                       ; $61a5: $ff
    rst $38                                       ; $61a6: $ff
    rst $38                                       ; $61a7: $ff
    rst $38                                       ; $61a8: $ff
    rst $38                                       ; $61a9: $ff
    rst $38                                       ; $61aa: $ff
    rst $38                                       ; $61ab: $ff
    rst $38                                       ; $61ac: $ff
    rst $38                                       ; $61ad: $ff
    rst $38                                       ; $61ae: $ff
    rst $38                                       ; $61af: $ff
    rst $38                                       ; $61b0: $ff
    rst $38                                       ; $61b1: $ff
    rst $38                                       ; $61b2: $ff
    rst $38                                       ; $61b3: $ff
    rst $38                                       ; $61b4: $ff
    rst $38                                       ; $61b5: $ff
    rst $38                                       ; $61b6: $ff
    rst $38                                       ; $61b7: $ff
    rst $38                                       ; $61b8: $ff
    rst $38                                       ; $61b9: $ff
    rst $38                                       ; $61ba: $ff
    rst $38                                       ; $61bb: $ff
    rst $38                                       ; $61bc: $ff
    rst $38                                       ; $61bd: $ff
    rst $38                                       ; $61be: $ff
    rst $38                                       ; $61bf: $ff
    rst $38                                       ; $61c0: $ff
    rst $38                                       ; $61c1: $ff
    rst $38                                       ; $61c2: $ff
    rst $38                                       ; $61c3: $ff
    rst $38                                       ; $61c4: $ff
    rst $38                                       ; $61c5: $ff
    rst $38                                       ; $61c6: $ff
    rst $38                                       ; $61c7: $ff
    rst $38                                       ; $61c8: $ff
    rst $38                                       ; $61c9: $ff
    rst $38                                       ; $61ca: $ff
    rst $38                                       ; $61cb: $ff
    rst $38                                       ; $61cc: $ff
    rst $38                                       ; $61cd: $ff
    rst $38                                       ; $61ce: $ff
    rst $38                                       ; $61cf: $ff
    rst $38                                       ; $61d0: $ff
    rst $38                                       ; $61d1: $ff
    rst $38                                       ; $61d2: $ff
    rst $38                                       ; $61d3: $ff
    rst $38                                       ; $61d4: $ff
    rst $38                                       ; $61d5: $ff
    rst $38                                       ; $61d6: $ff
    rst $38                                       ; $61d7: $ff
    rst $38                                       ; $61d8: $ff
    rst $38                                       ; $61d9: $ff
    rst $38                                       ; $61da: $ff
    rst $38                                       ; $61db: $ff
    rst $38                                       ; $61dc: $ff
    rst $38                                       ; $61dd: $ff
    rst $38                                       ; $61de: $ff
    rst $38                                       ; $61df: $ff
    rst $38                                       ; $61e0: $ff
    rst $38                                       ; $61e1: $ff
    rst $38                                       ; $61e2: $ff
    rst $38                                       ; $61e3: $ff
    rst $38                                       ; $61e4: $ff
    rst $38                                       ; $61e5: $ff
    rst $38                                       ; $61e6: $ff
    rst $38                                       ; $61e7: $ff
    rst $38                                       ; $61e8: $ff
    rst $38                                       ; $61e9: $ff
    rst $38                                       ; $61ea: $ff
    rst $38                                       ; $61eb: $ff
    rst $38                                       ; $61ec: $ff
    rst $38                                       ; $61ed: $ff
    rst $38                                       ; $61ee: $ff
    rst $38                                       ; $61ef: $ff
    rst $38                                       ; $61f0: $ff
    rst $38                                       ; $61f1: $ff
    rst $38                                       ; $61f2: $ff
    rst $38                                       ; $61f3: $ff
    rst $38                                       ; $61f4: $ff
    rst $38                                       ; $61f5: $ff
    rst $38                                       ; $61f6: $ff
    rst $38                                       ; $61f7: $ff
    rst $38                                       ; $61f8: $ff
    rst $38                                       ; $61f9: $ff
    rst $38                                       ; $61fa: $ff
    rst $38                                       ; $61fb: $ff
    rst $38                                       ; $61fc: $ff
    rst $38                                       ; $61fd: $ff
    rst $38                                       ; $61fe: $ff
    rst $38                                       ; $61ff: $ff
    rst $38                                       ; $6200: $ff
    rst $38                                       ; $6201: $ff
    rst $38                                       ; $6202: $ff
    rst $38                                       ; $6203: $ff
    rst $38                                       ; $6204: $ff
    rst $38                                       ; $6205: $ff
    rst $38                                       ; $6206: $ff
    rst $38                                       ; $6207: $ff
    rst $38                                       ; $6208: $ff
    rst $38                                       ; $6209: $ff
    rst $38                                       ; $620a: $ff
    rst $38                                       ; $620b: $ff
    rst $38                                       ; $620c: $ff
    rst $38                                       ; $620d: $ff
    rst $38                                       ; $620e: $ff
    rst $38                                       ; $620f: $ff
    rst $38                                       ; $6210: $ff
    rst $38                                       ; $6211: $ff
    rst $38                                       ; $6212: $ff
    rst $38                                       ; $6213: $ff
    rst $38                                       ; $6214: $ff
    rst $38                                       ; $6215: $ff
    rst $38                                       ; $6216: $ff
    rst $38                                       ; $6217: $ff
    rst $38                                       ; $6218: $ff
    rst $38                                       ; $6219: $ff
    rst $38                                       ; $621a: $ff
    rst $38                                       ; $621b: $ff
    rst $38                                       ; $621c: $ff
    rst $38                                       ; $621d: $ff
    rst $38                                       ; $621e: $ff
    rst $38                                       ; $621f: $ff
    rst $38                                       ; $6220: $ff
    rst $38                                       ; $6221: $ff
    rst $38                                       ; $6222: $ff
    rst $38                                       ; $6223: $ff
    rst $38                                       ; $6224: $ff
    rst $38                                       ; $6225: $ff
    rst $38                                       ; $6226: $ff
    rst $38                                       ; $6227: $ff
    rst $38                                       ; $6228: $ff
    rst $38                                       ; $6229: $ff
    rst $38                                       ; $622a: $ff
    rst $38                                       ; $622b: $ff
    rst $38                                       ; $622c: $ff
    rst $38                                       ; $622d: $ff
    rst $38                                       ; $622e: $ff
    rst $38                                       ; $622f: $ff
    rst $38                                       ; $6230: $ff
    rst $38                                       ; $6231: $ff
    rst $38                                       ; $6232: $ff
    rst $38                                       ; $6233: $ff
    rst $38                                       ; $6234: $ff
    rst $38                                       ; $6235: $ff
    rst $38                                       ; $6236: $ff
    rst $38                                       ; $6237: $ff
    rst $38                                       ; $6238: $ff
    rst $38                                       ; $6239: $ff
    rst $38                                       ; $623a: $ff
    rst $38                                       ; $623b: $ff
    rst $38                                       ; $623c: $ff
    rst $38                                       ; $623d: $ff
    rst $38                                       ; $623e: $ff
    rst $38                                       ; $623f: $ff
    rst $38                                       ; $6240: $ff
    rst $38                                       ; $6241: $ff
    rst $38                                       ; $6242: $ff
    rst $38                                       ; $6243: $ff
    rst $38                                       ; $6244: $ff
    rst $38                                       ; $6245: $ff
    rst $38                                       ; $6246: $ff
    rst $38                                       ; $6247: $ff
    rst $38                                       ; $6248: $ff
    rst $38                                       ; $6249: $ff
    rst $38                                       ; $624a: $ff
    rst $38                                       ; $624b: $ff
    rst $38                                       ; $624c: $ff
    rst $38                                       ; $624d: $ff
    rst $38                                       ; $624e: $ff
    rst $38                                       ; $624f: $ff
    rst $38                                       ; $6250: $ff
    rst $38                                       ; $6251: $ff
    rst $38                                       ; $6252: $ff
    rst $38                                       ; $6253: $ff
    rst $38                                       ; $6254: $ff
    rst $38                                       ; $6255: $ff
    rst $38                                       ; $6256: $ff
    rst $38                                       ; $6257: $ff
    rst $38                                       ; $6258: $ff
    rst $38                                       ; $6259: $ff
    rst $38                                       ; $625a: $ff
    rst $38                                       ; $625b: $ff
    rst $38                                       ; $625c: $ff
    rst $38                                       ; $625d: $ff
    rst $38                                       ; $625e: $ff
    rst $38                                       ; $625f: $ff
    rst $38                                       ; $6260: $ff
    rst $38                                       ; $6261: $ff
    rst $38                                       ; $6262: $ff
    rst $38                                       ; $6263: $ff
    rst $38                                       ; $6264: $ff
    rst $38                                       ; $6265: $ff
    rst $38                                       ; $6266: $ff
    rst $38                                       ; $6267: $ff
    rst $38                                       ; $6268: $ff
    rst $38                                       ; $6269: $ff
    rst $38                                       ; $626a: $ff
    rst $38                                       ; $626b: $ff
    rst $38                                       ; $626c: $ff
    rst $38                                       ; $626d: $ff
    rst $38                                       ; $626e: $ff
    rst $38                                       ; $626f: $ff
    rst $38                                       ; $6270: $ff
    rst $38                                       ; $6271: $ff
    rst $38                                       ; $6272: $ff
    rst $38                                       ; $6273: $ff
    rst $38                                       ; $6274: $ff
    rst $38                                       ; $6275: $ff
    rst $38                                       ; $6276: $ff
    rst $38                                       ; $6277: $ff
    rst $38                                       ; $6278: $ff
    rst $38                                       ; $6279: $ff
    rst $38                                       ; $627a: $ff
    rst $38                                       ; $627b: $ff
    rst $38                                       ; $627c: $ff
    rst $38                                       ; $627d: $ff
    rst $38                                       ; $627e: $ff
    rst $38                                       ; $627f: $ff
    rst $38                                       ; $6280: $ff
    rst $38                                       ; $6281: $ff
    rst $38                                       ; $6282: $ff
    rst $38                                       ; $6283: $ff
    rst $38                                       ; $6284: $ff
    rst $38                                       ; $6285: $ff
    rst $38                                       ; $6286: $ff
    rst $38                                       ; $6287: $ff
    rst $38                                       ; $6288: $ff
    rst $38                                       ; $6289: $ff
    rst $38                                       ; $628a: $ff
    rst $38                                       ; $628b: $ff
    rst $38                                       ; $628c: $ff
    rst $38                                       ; $628d: $ff
    rst $38                                       ; $628e: $ff
    rst $38                                       ; $628f: $ff
    rst $38                                       ; $6290: $ff
    rst $38                                       ; $6291: $ff
    rst $38                                       ; $6292: $ff
    rst $38                                       ; $6293: $ff
    rst $38                                       ; $6294: $ff
    rst $38                                       ; $6295: $ff
    rst $38                                       ; $6296: $ff
    rst $38                                       ; $6297: $ff
    rst $38                                       ; $6298: $ff
    rst $38                                       ; $6299: $ff
    rst $38                                       ; $629a: $ff
    rst $38                                       ; $629b: $ff
    rst $38                                       ; $629c: $ff
    rst $38                                       ; $629d: $ff
    rst $38                                       ; $629e: $ff
    rst $38                                       ; $629f: $ff
    rst $38                                       ; $62a0: $ff
    rst $38                                       ; $62a1: $ff
    rst $38                                       ; $62a2: $ff
    rst $38                                       ; $62a3: $ff
    rst $38                                       ; $62a4: $ff
    rst $38                                       ; $62a5: $ff
    rst $38                                       ; $62a6: $ff
    rst $38                                       ; $62a7: $ff
    rst $38                                       ; $62a8: $ff
    rst $38                                       ; $62a9: $ff
    rst $38                                       ; $62aa: $ff
    rst $38                                       ; $62ab: $ff
    rst $38                                       ; $62ac: $ff
    rst $38                                       ; $62ad: $ff
    rst $38                                       ; $62ae: $ff
    rst $38                                       ; $62af: $ff
    rst $38                                       ; $62b0: $ff
    rst $38                                       ; $62b1: $ff
    rst $38                                       ; $62b2: $ff
    rst $38                                       ; $62b3: $ff
    rst $38                                       ; $62b4: $ff
    rst $38                                       ; $62b5: $ff
    rst $38                                       ; $62b6: $ff
    rst $38                                       ; $62b7: $ff
    rst $38                                       ; $62b8: $ff
    rst $38                                       ; $62b9: $ff
    rst $38                                       ; $62ba: $ff
    rst $38                                       ; $62bb: $ff
    rst $38                                       ; $62bc: $ff
    rst $38                                       ; $62bd: $ff
    rst $38                                       ; $62be: $ff
    rst $38                                       ; $62bf: $ff
    rst $38                                       ; $62c0: $ff
    rst $38                                       ; $62c1: $ff
    rst $38                                       ; $62c2: $ff
    rst $38                                       ; $62c3: $ff
    rst $38                                       ; $62c4: $ff
    rst $38                                       ; $62c5: $ff
    rst $38                                       ; $62c6: $ff
    rst $38                                       ; $62c7: $ff
    rst $38                                       ; $62c8: $ff
    rst $38                                       ; $62c9: $ff
    rst $38                                       ; $62ca: $ff
    rst $38                                       ; $62cb: $ff
    rst $38                                       ; $62cc: $ff
    rst $38                                       ; $62cd: $ff
    rst $38                                       ; $62ce: $ff
    rst $38                                       ; $62cf: $ff
    rst $38                                       ; $62d0: $ff
    rst $38                                       ; $62d1: $ff
    rst $38                                       ; $62d2: $ff
    rst $38                                       ; $62d3: $ff
    rst $38                                       ; $62d4: $ff
    rst $38                                       ; $62d5: $ff
    rst $38                                       ; $62d6: $ff
    rst $38                                       ; $62d7: $ff
    rst $38                                       ; $62d8: $ff
    rst $38                                       ; $62d9: $ff
    rst $38                                       ; $62da: $ff
    rst $38                                       ; $62db: $ff
    rst $38                                       ; $62dc: $ff
    rst $38                                       ; $62dd: $ff
    rst $38                                       ; $62de: $ff
    rst $38                                       ; $62df: $ff
    rst $38                                       ; $62e0: $ff
    rst $38                                       ; $62e1: $ff
    rst $38                                       ; $62e2: $ff
    rst $38                                       ; $62e3: $ff
    rst $38                                       ; $62e4: $ff
    rst $38                                       ; $62e5: $ff
    rst $38                                       ; $62e6: $ff
    rst $38                                       ; $62e7: $ff
    rst $38                                       ; $62e8: $ff
    rst $38                                       ; $62e9: $ff
    rst $38                                       ; $62ea: $ff
    rst $38                                       ; $62eb: $ff
    rst $38                                       ; $62ec: $ff
    rst $38                                       ; $62ed: $ff
    rst $38                                       ; $62ee: $ff
    rst $38                                       ; $62ef: $ff
    rst $38                                       ; $62f0: $ff
    rst $38                                       ; $62f1: $ff
    rst $38                                       ; $62f2: $ff
    rst $38                                       ; $62f3: $ff
    rst $38                                       ; $62f4: $ff
    rst $38                                       ; $62f5: $ff
    rst $38                                       ; $62f6: $ff
    rst $38                                       ; $62f7: $ff
    rst $38                                       ; $62f8: $ff
    rst $38                                       ; $62f9: $ff
    rst $38                                       ; $62fa: $ff
    rst $38                                       ; $62fb: $ff
    rst $38                                       ; $62fc: $ff
    rst $38                                       ; $62fd: $ff
    rst $38                                       ; $62fe: $ff
    rst $38                                       ; $62ff: $ff
    rst $38                                       ; $6300: $ff
    rst $38                                       ; $6301: $ff
    rst $38                                       ; $6302: $ff
    rst $38                                       ; $6303: $ff
    rst $38                                       ; $6304: $ff
    rst $38                                       ; $6305: $ff
    rst $38                                       ; $6306: $ff
    rst $38                                       ; $6307: $ff
    rst $38                                       ; $6308: $ff
    rst $38                                       ; $6309: $ff
    rst $38                                       ; $630a: $ff
    rst $38                                       ; $630b: $ff
    rst $38                                       ; $630c: $ff
    rst $38                                       ; $630d: $ff
    rst $38                                       ; $630e: $ff
    rst $38                                       ; $630f: $ff
    rst $38                                       ; $6310: $ff
    rst $38                                       ; $6311: $ff
    rst $38                                       ; $6312: $ff
    rst $38                                       ; $6313: $ff
    rst $38                                       ; $6314: $ff
    rst $38                                       ; $6315: $ff
    rst $38                                       ; $6316: $ff
    rst $38                                       ; $6317: $ff
    rst $38                                       ; $6318: $ff
    rst $38                                       ; $6319: $ff
    rst $38                                       ; $631a: $ff
    rst $38                                       ; $631b: $ff
    rst $38                                       ; $631c: $ff
    rst $38                                       ; $631d: $ff
    rst $38                                       ; $631e: $ff
    rst $38                                       ; $631f: $ff
    rst $38                                       ; $6320: $ff
    rst $38                                       ; $6321: $ff
    rst $38                                       ; $6322: $ff
    rst $38                                       ; $6323: $ff
    rst $38                                       ; $6324: $ff
    rst $38                                       ; $6325: $ff
    rst $38                                       ; $6326: $ff
    rst $38                                       ; $6327: $ff
    rst $38                                       ; $6328: $ff
    rst $38                                       ; $6329: $ff
    rst $38                                       ; $632a: $ff
    rst $38                                       ; $632b: $ff
    rst $38                                       ; $632c: $ff
    rst $38                                       ; $632d: $ff
    rst $38                                       ; $632e: $ff
    rst $38                                       ; $632f: $ff
    rst $38                                       ; $6330: $ff
    rst $38                                       ; $6331: $ff
    rst $38                                       ; $6332: $ff
    rst $38                                       ; $6333: $ff
    rst $38                                       ; $6334: $ff
    rst $38                                       ; $6335: $ff
    rst $38                                       ; $6336: $ff
    rst $38                                       ; $6337: $ff
    rst $38                                       ; $6338: $ff
    rst $38                                       ; $6339: $ff
    rst $38                                       ; $633a: $ff
    rst $38                                       ; $633b: $ff
    rst $38                                       ; $633c: $ff
    rst $38                                       ; $633d: $ff
    rst $38                                       ; $633e: $ff
    rst $38                                       ; $633f: $ff
    rst $38                                       ; $6340: $ff
    rst $38                                       ; $6341: $ff
    rst $38                                       ; $6342: $ff
    rst $38                                       ; $6343: $ff
    rst $38                                       ; $6344: $ff
    rst $38                                       ; $6345: $ff
    rst $38                                       ; $6346: $ff
    rst $38                                       ; $6347: $ff
    rst $38                                       ; $6348: $ff
    rst $38                                       ; $6349: $ff
    rst $38                                       ; $634a: $ff
    rst $38                                       ; $634b: $ff
    rst $38                                       ; $634c: $ff
    rst $38                                       ; $634d: $ff
    rst $38                                       ; $634e: $ff
    rst $38                                       ; $634f: $ff
    rst $38                                       ; $6350: $ff
    rst $38                                       ; $6351: $ff
    rst $38                                       ; $6352: $ff
    rst $38                                       ; $6353: $ff
    rst $38                                       ; $6354: $ff
    rst $38                                       ; $6355: $ff
    rst $38                                       ; $6356: $ff
    rst $38                                       ; $6357: $ff
    rst $38                                       ; $6358: $ff
    rst $38                                       ; $6359: $ff
    rst $38                                       ; $635a: $ff
    rst $38                                       ; $635b: $ff
    rst $38                                       ; $635c: $ff
    rst $38                                       ; $635d: $ff
    rst $38                                       ; $635e: $ff
    rst $38                                       ; $635f: $ff
    rst $38                                       ; $6360: $ff
    rst $38                                       ; $6361: $ff
    rst $38                                       ; $6362: $ff
    rst $38                                       ; $6363: $ff
    rst $38                                       ; $6364: $ff
    rst $38                                       ; $6365: $ff
    rst $38                                       ; $6366: $ff
    rst $38                                       ; $6367: $ff
    rst $38                                       ; $6368: $ff
    rst $38                                       ; $6369: $ff
    rst $38                                       ; $636a: $ff
    rst $38                                       ; $636b: $ff
    rst $38                                       ; $636c: $ff
    rst $38                                       ; $636d: $ff
    rst $38                                       ; $636e: $ff
    rst $38                                       ; $636f: $ff
    rst $38                                       ; $6370: $ff
    rst $38                                       ; $6371: $ff
    rst $38                                       ; $6372: $ff
    rst $38                                       ; $6373: $ff
    rst $38                                       ; $6374: $ff
    rst $38                                       ; $6375: $ff
    rst $38                                       ; $6376: $ff
    rst $38                                       ; $6377: $ff
    rst $38                                       ; $6378: $ff
    rst $38                                       ; $6379: $ff
    rst $38                                       ; $637a: $ff
    rst $38                                       ; $637b: $ff
    rst $38                                       ; $637c: $ff
    rst $38                                       ; $637d: $ff
    rst $38                                       ; $637e: $ff
    rst $38                                       ; $637f: $ff
    rst $38                                       ; $6380: $ff
    rst $38                                       ; $6381: $ff
    rst $38                                       ; $6382: $ff
    rst $38                                       ; $6383: $ff
    rst $38                                       ; $6384: $ff
    rst $38                                       ; $6385: $ff
    rst $38                                       ; $6386: $ff
    rst $38                                       ; $6387: $ff
    rst $38                                       ; $6388: $ff
    rst $38                                       ; $6389: $ff
    rst $38                                       ; $638a: $ff
    rst $38                                       ; $638b: $ff
    rst $38                                       ; $638c: $ff
    rst $38                                       ; $638d: $ff
    rst $38                                       ; $638e: $ff
    rst $38                                       ; $638f: $ff
    rst $38                                       ; $6390: $ff
    rst $38                                       ; $6391: $ff
    rst $38                                       ; $6392: $ff
    rst $38                                       ; $6393: $ff
    rst $38                                       ; $6394: $ff
    rst $38                                       ; $6395: $ff
    rst $38                                       ; $6396: $ff
    rst $38                                       ; $6397: $ff
    rst $38                                       ; $6398: $ff
    rst $38                                       ; $6399: $ff
    rst $38                                       ; $639a: $ff
    rst $38                                       ; $639b: $ff
    rst $38                                       ; $639c: $ff
    rst $38                                       ; $639d: $ff
    rst $38                                       ; $639e: $ff
    rst $38                                       ; $639f: $ff
    rst $38                                       ; $63a0: $ff
    rst $38                                       ; $63a1: $ff
    rst $38                                       ; $63a2: $ff
    rst $38                                       ; $63a3: $ff
    rst $38                                       ; $63a4: $ff
    rst $38                                       ; $63a5: $ff
    rst $38                                       ; $63a6: $ff
    rst $38                                       ; $63a7: $ff
    rst $38                                       ; $63a8: $ff
    rst $38                                       ; $63a9: $ff
    rst $38                                       ; $63aa: $ff
    rst $38                                       ; $63ab: $ff
    rst $38                                       ; $63ac: $ff
    rst $38                                       ; $63ad: $ff
    rst $38                                       ; $63ae: $ff
    rst $38                                       ; $63af: $ff
    rst $38                                       ; $63b0: $ff
    rst $38                                       ; $63b1: $ff
    rst $38                                       ; $63b2: $ff
    rst $38                                       ; $63b3: $ff
    rst $38                                       ; $63b4: $ff
    rst $38                                       ; $63b5: $ff
    rst $38                                       ; $63b6: $ff
    rst $38                                       ; $63b7: $ff
    rst $38                                       ; $63b8: $ff
    rst $38                                       ; $63b9: $ff
    rst $38                                       ; $63ba: $ff
    rst $38                                       ; $63bb: $ff
    rst $38                                       ; $63bc: $ff
    rst $38                                       ; $63bd: $ff
    rst $38                                       ; $63be: $ff
    rst $38                                       ; $63bf: $ff
    rst $38                                       ; $63c0: $ff
    rst $38                                       ; $63c1: $ff
    rst $38                                       ; $63c2: $ff
    rst $38                                       ; $63c3: $ff
    rst $38                                       ; $63c4: $ff
    rst $38                                       ; $63c5: $ff
    rst $38                                       ; $63c6: $ff
    rst $38                                       ; $63c7: $ff
    rst $38                                       ; $63c8: $ff
    rst $38                                       ; $63c9: $ff
    rst $38                                       ; $63ca: $ff
    rst $38                                       ; $63cb: $ff
    rst $38                                       ; $63cc: $ff
    rst $38                                       ; $63cd: $ff
    rst $38                                       ; $63ce: $ff
    rst $38                                       ; $63cf: $ff
    rst $38                                       ; $63d0: $ff
    rst $38                                       ; $63d1: $ff
    rst $38                                       ; $63d2: $ff
    rst $38                                       ; $63d3: $ff
    rst $38                                       ; $63d4: $ff
    rst $38                                       ; $63d5: $ff
    rst $38                                       ; $63d6: $ff
    rst $38                                       ; $63d7: $ff
    rst $38                                       ; $63d8: $ff
    rst $38                                       ; $63d9: $ff
    rst $38                                       ; $63da: $ff
    rst $38                                       ; $63db: $ff
    rst $38                                       ; $63dc: $ff
    rst $38                                       ; $63dd: $ff
    rst $38                                       ; $63de: $ff
    rst $38                                       ; $63df: $ff
    rst $38                                       ; $63e0: $ff
    rst $38                                       ; $63e1: $ff
    rst $38                                       ; $63e2: $ff
    rst $38                                       ; $63e3: $ff
    rst $38                                       ; $63e4: $ff
    rst $38                                       ; $63e5: $ff
    rst $38                                       ; $63e6: $ff
    rst $38                                       ; $63e7: $ff
    rst $38                                       ; $63e8: $ff
    rst $38                                       ; $63e9: $ff
    rst $38                                       ; $63ea: $ff
    rst $38                                       ; $63eb: $ff
    rst $38                                       ; $63ec: $ff
    rst $38                                       ; $63ed: $ff
    rst $38                                       ; $63ee: $ff
    rst $38                                       ; $63ef: $ff
    rst $38                                       ; $63f0: $ff
    rst $38                                       ; $63f1: $ff
    rst $38                                       ; $63f2: $ff
    rst $38                                       ; $63f3: $ff
    rst $38                                       ; $63f4: $ff
    rst $38                                       ; $63f5: $ff
    rst $38                                       ; $63f6: $ff
    rst $38                                       ; $63f7: $ff
    rst $38                                       ; $63f8: $ff
    rst $38                                       ; $63f9: $ff
    rst $38                                       ; $63fa: $ff
    rst $38                                       ; $63fb: $ff
    rst $38                                       ; $63fc: $ff
    rst $38                                       ; $63fd: $ff
    rst $38                                       ; $63fe: $ff
    rst $38                                       ; $63ff: $ff
    rst $38                                       ; $6400: $ff
    rst $38                                       ; $6401: $ff
    rst $38                                       ; $6402: $ff
    rst $38                                       ; $6403: $ff
    rst $38                                       ; $6404: $ff
    rst $38                                       ; $6405: $ff
    rst $38                                       ; $6406: $ff
    rst $38                                       ; $6407: $ff
    rst $38                                       ; $6408: $ff
    rst $38                                       ; $6409: $ff
    rst $38                                       ; $640a: $ff
    rst $38                                       ; $640b: $ff
    rst $38                                       ; $640c: $ff
    rst $38                                       ; $640d: $ff
    rst $38                                       ; $640e: $ff
    rst $38                                       ; $640f: $ff
    rst $38                                       ; $6410: $ff
    rst $38                                       ; $6411: $ff
    rst $38                                       ; $6412: $ff
    rst $38                                       ; $6413: $ff
    rst $38                                       ; $6414: $ff
    rst $38                                       ; $6415: $ff
    rst $38                                       ; $6416: $ff
    rst $38                                       ; $6417: $ff
    rst $38                                       ; $6418: $ff
    rst $38                                       ; $6419: $ff
    rst $38                                       ; $641a: $ff
    rst $38                                       ; $641b: $ff
    rst $38                                       ; $641c: $ff
    rst $38                                       ; $641d: $ff
    rst $38                                       ; $641e: $ff
    rst $38                                       ; $641f: $ff
    rst $38                                       ; $6420: $ff
    rst $38                                       ; $6421: $ff
    rst $38                                       ; $6422: $ff
    rst $38                                       ; $6423: $ff
    rst $38                                       ; $6424: $ff
    rst $38                                       ; $6425: $ff
    rst $38                                       ; $6426: $ff
    rst $38                                       ; $6427: $ff
    rst $38                                       ; $6428: $ff
    rst $38                                       ; $6429: $ff
    rst $38                                       ; $642a: $ff
    rst $38                                       ; $642b: $ff
    rst $38                                       ; $642c: $ff
    rst $38                                       ; $642d: $ff
    rst $38                                       ; $642e: $ff
    rst $38                                       ; $642f: $ff
    rst $38                                       ; $6430: $ff
    rst $38                                       ; $6431: $ff
    rst $38                                       ; $6432: $ff
    rst $38                                       ; $6433: $ff
    rst $38                                       ; $6434: $ff
    rst $38                                       ; $6435: $ff
    rst $38                                       ; $6436: $ff
    rst $38                                       ; $6437: $ff
    rst $38                                       ; $6438: $ff
    rst $38                                       ; $6439: $ff
    rst $38                                       ; $643a: $ff
    rst $38                                       ; $643b: $ff
    rst $38                                       ; $643c: $ff
    rst $38                                       ; $643d: $ff
    rst $38                                       ; $643e: $ff
    rst $38                                       ; $643f: $ff
    rst $38                                       ; $6440: $ff
    rst $38                                       ; $6441: $ff
    rst $38                                       ; $6442: $ff
    rst $38                                       ; $6443: $ff
    rst $38                                       ; $6444: $ff
    rst $38                                       ; $6445: $ff
    rst $38                                       ; $6446: $ff
    rst $38                                       ; $6447: $ff
    rst $38                                       ; $6448: $ff
    rst $38                                       ; $6449: $ff
    rst $38                                       ; $644a: $ff
    rst $38                                       ; $644b: $ff
    rst $38                                       ; $644c: $ff
    rst $38                                       ; $644d: $ff
    rst $38                                       ; $644e: $ff
    rst $38                                       ; $644f: $ff
    rst $38                                       ; $6450: $ff
    rst $38                                       ; $6451: $ff
    rst $38                                       ; $6452: $ff
    rst $38                                       ; $6453: $ff
    rst $38                                       ; $6454: $ff
    rst $38                                       ; $6455: $ff
    rst $38                                       ; $6456: $ff
    rst $38                                       ; $6457: $ff
    rst $38                                       ; $6458: $ff
    rst $38                                       ; $6459: $ff
    rst $38                                       ; $645a: $ff
    rst $38                                       ; $645b: $ff
    rst $38                                       ; $645c: $ff
    rst $38                                       ; $645d: $ff
    rst $38                                       ; $645e: $ff
    rst $38                                       ; $645f: $ff
    rst $38                                       ; $6460: $ff
    rst $38                                       ; $6461: $ff
    rst $38                                       ; $6462: $ff
    rst $38                                       ; $6463: $ff
    rst $38                                       ; $6464: $ff
    rst $38                                       ; $6465: $ff
    rst $38                                       ; $6466: $ff
    rst $38                                       ; $6467: $ff
    rst $38                                       ; $6468: $ff
    rst $38                                       ; $6469: $ff
    rst $38                                       ; $646a: $ff
    rst $38                                       ; $646b: $ff
    rst $38                                       ; $646c: $ff
    rst $38                                       ; $646d: $ff
    rst $38                                       ; $646e: $ff
    rst $38                                       ; $646f: $ff
    rst $38                                       ; $6470: $ff
    rst $38                                       ; $6471: $ff
    rst $38                                       ; $6472: $ff
    rst $38                                       ; $6473: $ff
    rst $38                                       ; $6474: $ff
    rst $38                                       ; $6475: $ff
    rst $38                                       ; $6476: $ff
    rst $38                                       ; $6477: $ff
    rst $38                                       ; $6478: $ff
    rst $38                                       ; $6479: $ff
    rst $38                                       ; $647a: $ff
    rst $38                                       ; $647b: $ff
    rst $38                                       ; $647c: $ff
    rst $38                                       ; $647d: $ff
    rst $38                                       ; $647e: $ff
    rst $38                                       ; $647f: $ff
    rst $38                                       ; $6480: $ff
    rst $38                                       ; $6481: $ff
    rst $38                                       ; $6482: $ff
    rst $38                                       ; $6483: $ff
    rst $38                                       ; $6484: $ff
    rst $38                                       ; $6485: $ff
    rst $38                                       ; $6486: $ff
    rst $38                                       ; $6487: $ff
    rst $38                                       ; $6488: $ff
    rst $38                                       ; $6489: $ff
    rst $38                                       ; $648a: $ff
    rst $38                                       ; $648b: $ff
    rst $38                                       ; $648c: $ff
    rst $38                                       ; $648d: $ff
    rst $38                                       ; $648e: $ff
    rst $38                                       ; $648f: $ff
    rst $38                                       ; $6490: $ff
    rst $38                                       ; $6491: $ff
    rst $38                                       ; $6492: $ff
    rst $38                                       ; $6493: $ff
    rst $38                                       ; $6494: $ff
    rst $38                                       ; $6495: $ff
    rst $38                                       ; $6496: $ff
    rst $38                                       ; $6497: $ff
    rst $38                                       ; $6498: $ff
    rst $38                                       ; $6499: $ff
    rst $38                                       ; $649a: $ff
    rst $38                                       ; $649b: $ff
    rst $38                                       ; $649c: $ff
    rst $38                                       ; $649d: $ff
    rst $38                                       ; $649e: $ff
    rst $38                                       ; $649f: $ff
    rst $38                                       ; $64a0: $ff
    rst $38                                       ; $64a1: $ff
    rst $38                                       ; $64a2: $ff
    rst $38                                       ; $64a3: $ff
    rst $38                                       ; $64a4: $ff
    rst $38                                       ; $64a5: $ff
    rst $38                                       ; $64a6: $ff
    rst $38                                       ; $64a7: $ff
    rst $38                                       ; $64a8: $ff
    rst $38                                       ; $64a9: $ff
    rst $38                                       ; $64aa: $ff
    rst $38                                       ; $64ab: $ff
    rst $38                                       ; $64ac: $ff
    rst $38                                       ; $64ad: $ff
    rst $38                                       ; $64ae: $ff
    rst $38                                       ; $64af: $ff
    rst $38                                       ; $64b0: $ff
    rst $38                                       ; $64b1: $ff
    rst $38                                       ; $64b2: $ff
    rst $38                                       ; $64b3: $ff
    rst $38                                       ; $64b4: $ff
    rst $38                                       ; $64b5: $ff
    rst $38                                       ; $64b6: $ff
    rst $38                                       ; $64b7: $ff
    rst $38                                       ; $64b8: $ff
    rst $38                                       ; $64b9: $ff
    rst $38                                       ; $64ba: $ff
    rst $38                                       ; $64bb: $ff
    rst $38                                       ; $64bc: $ff
    rst $38                                       ; $64bd: $ff
    rst $38                                       ; $64be: $ff
    rst $38                                       ; $64bf: $ff
    rst $38                                       ; $64c0: $ff
    rst $38                                       ; $64c1: $ff
    rst $38                                       ; $64c2: $ff
    rst $38                                       ; $64c3: $ff
    rst $38                                       ; $64c4: $ff
    rst $38                                       ; $64c5: $ff
    rst $38                                       ; $64c6: $ff
    rst $38                                       ; $64c7: $ff
    rst $38                                       ; $64c8: $ff
    rst $38                                       ; $64c9: $ff
    rst $38                                       ; $64ca: $ff
    rst $38                                       ; $64cb: $ff
    rst $38                                       ; $64cc: $ff
    rst $38                                       ; $64cd: $ff
    rst $38                                       ; $64ce: $ff
    rst $38                                       ; $64cf: $ff
    rst $38                                       ; $64d0: $ff
    rst $38                                       ; $64d1: $ff
    rst $38                                       ; $64d2: $ff
    rst $38                                       ; $64d3: $ff
    rst $38                                       ; $64d4: $ff
    rst $38                                       ; $64d5: $ff
    rst $38                                       ; $64d6: $ff
    rst $38                                       ; $64d7: $ff
    rst $38                                       ; $64d8: $ff
    rst $38                                       ; $64d9: $ff
    rst $38                                       ; $64da: $ff
    rst $38                                       ; $64db: $ff
    rst $38                                       ; $64dc: $ff
    rst $38                                       ; $64dd: $ff
    rst $38                                       ; $64de: $ff
    rst $38                                       ; $64df: $ff
    rst $38                                       ; $64e0: $ff
    rst $38                                       ; $64e1: $ff
    rst $38                                       ; $64e2: $ff
    rst $38                                       ; $64e3: $ff
    rst $38                                       ; $64e4: $ff
    rst $38                                       ; $64e5: $ff
    rst $38                                       ; $64e6: $ff
    rst $38                                       ; $64e7: $ff
    rst $38                                       ; $64e8: $ff
    rst $38                                       ; $64e9: $ff
    rst $38                                       ; $64ea: $ff
    rst $38                                       ; $64eb: $ff
    rst $38                                       ; $64ec: $ff
    rst $38                                       ; $64ed: $ff
    rst $38                                       ; $64ee: $ff
    rst $38                                       ; $64ef: $ff
    rst $38                                       ; $64f0: $ff
    rst $38                                       ; $64f1: $ff
    rst $38                                       ; $64f2: $ff
    rst $38                                       ; $64f3: $ff
    rst $38                                       ; $64f4: $ff
    rst $38                                       ; $64f5: $ff
    rst $38                                       ; $64f6: $ff
    rst $38                                       ; $64f7: $ff
    rst $38                                       ; $64f8: $ff
    rst $38                                       ; $64f9: $ff
    rst $38                                       ; $64fa: $ff
    rst $38                                       ; $64fb: $ff
    rst $38                                       ; $64fc: $ff
    rst $38                                       ; $64fd: $ff
    rst $38                                       ; $64fe: $ff
    rst $38                                       ; $64ff: $ff
    rst $38                                       ; $6500: $ff
    rst $38                                       ; $6501: $ff
    rst $38                                       ; $6502: $ff
    rst $38                                       ; $6503: $ff
    rst $38                                       ; $6504: $ff
    rst $38                                       ; $6505: $ff
    rst $38                                       ; $6506: $ff
    rst $38                                       ; $6507: $ff
    rst $38                                       ; $6508: $ff
    rst $38                                       ; $6509: $ff
    rst $38                                       ; $650a: $ff
    rst $38                                       ; $650b: $ff
    rst $38                                       ; $650c: $ff
    rst $38                                       ; $650d: $ff
    rst $38                                       ; $650e: $ff
    rst $38                                       ; $650f: $ff
    rst $38                                       ; $6510: $ff
    rst $38                                       ; $6511: $ff
    rst $38                                       ; $6512: $ff
    rst $38                                       ; $6513: $ff
    rst $38                                       ; $6514: $ff
    rst $38                                       ; $6515: $ff
    rst $38                                       ; $6516: $ff
    rst $38                                       ; $6517: $ff
    rst $38                                       ; $6518: $ff
    rst $38                                       ; $6519: $ff
    rst $38                                       ; $651a: $ff
    rst $38                                       ; $651b: $ff
    rst $38                                       ; $651c: $ff
    rst $38                                       ; $651d: $ff
    rst $38                                       ; $651e: $ff
    rst $38                                       ; $651f: $ff
    rst $38                                       ; $6520: $ff
    rst $38                                       ; $6521: $ff
    rst $38                                       ; $6522: $ff
    rst $38                                       ; $6523: $ff
    rst $38                                       ; $6524: $ff
    rst $38                                       ; $6525: $ff
    rst $38                                       ; $6526: $ff
    rst $38                                       ; $6527: $ff
    rst $38                                       ; $6528: $ff
    rst $38                                       ; $6529: $ff
    rst $38                                       ; $652a: $ff
    rst $38                                       ; $652b: $ff
    rst $38                                       ; $652c: $ff
    rst $38                                       ; $652d: $ff
    rst $38                                       ; $652e: $ff
    rst $38                                       ; $652f: $ff
    rst $38                                       ; $6530: $ff
    rst $38                                       ; $6531: $ff
    rst $38                                       ; $6532: $ff
    rst $38                                       ; $6533: $ff
    rst $38                                       ; $6534: $ff
    rst $38                                       ; $6535: $ff
    rst $38                                       ; $6536: $ff
    rst $38                                       ; $6537: $ff
    rst $38                                       ; $6538: $ff
    rst $38                                       ; $6539: $ff
    rst $38                                       ; $653a: $ff
    rst $38                                       ; $653b: $ff
    rst $38                                       ; $653c: $ff
    rst $38                                       ; $653d: $ff
    rst $38                                       ; $653e: $ff
    rst $38                                       ; $653f: $ff
    rst $38                                       ; $6540: $ff
    rst $38                                       ; $6541: $ff
    rst $38                                       ; $6542: $ff
    rst $38                                       ; $6543: $ff
    rst $38                                       ; $6544: $ff
    rst $38                                       ; $6545: $ff
    rst $38                                       ; $6546: $ff
    rst $38                                       ; $6547: $ff
    rst $38                                       ; $6548: $ff
    rst $38                                       ; $6549: $ff
    rst $38                                       ; $654a: $ff
    rst $38                                       ; $654b: $ff
    rst $38                                       ; $654c: $ff
    rst $38                                       ; $654d: $ff
    rst $38                                       ; $654e: $ff
    rst $38                                       ; $654f: $ff
    rst $38                                       ; $6550: $ff
    rst $38                                       ; $6551: $ff
    rst $38                                       ; $6552: $ff
    rst $38                                       ; $6553: $ff
    rst $38                                       ; $6554: $ff
    rst $38                                       ; $6555: $ff
    rst $38                                       ; $6556: $ff
    rst $38                                       ; $6557: $ff
    rst $38                                       ; $6558: $ff
    rst $38                                       ; $6559: $ff
    rst $38                                       ; $655a: $ff
    rst $38                                       ; $655b: $ff
    rst $38                                       ; $655c: $ff
    rst $38                                       ; $655d: $ff
    rst $38                                       ; $655e: $ff
    rst $38                                       ; $655f: $ff
    rst $38                                       ; $6560: $ff
    rst $38                                       ; $6561: $ff
    rst $38                                       ; $6562: $ff
    rst $38                                       ; $6563: $ff
    rst $38                                       ; $6564: $ff
    rst $38                                       ; $6565: $ff
    rst $38                                       ; $6566: $ff
    rst $38                                       ; $6567: $ff
    rst $38                                       ; $6568: $ff
    rst $38                                       ; $6569: $ff
    rst $38                                       ; $656a: $ff
    rst $38                                       ; $656b: $ff
    rst $38                                       ; $656c: $ff
    rst $38                                       ; $656d: $ff
    rst $38                                       ; $656e: $ff
    rst $38                                       ; $656f: $ff
    rst $38                                       ; $6570: $ff
    rst $38                                       ; $6571: $ff
    rst $38                                       ; $6572: $ff
    rst $38                                       ; $6573: $ff
    rst $38                                       ; $6574: $ff
    rst $38                                       ; $6575: $ff
    rst $38                                       ; $6576: $ff
    rst $38                                       ; $6577: $ff
    rst $38                                       ; $6578: $ff
    rst $38                                       ; $6579: $ff
    rst $38                                       ; $657a: $ff
    rst $38                                       ; $657b: $ff
    rst $38                                       ; $657c: $ff
    rst $38                                       ; $657d: $ff
    rst $38                                       ; $657e: $ff
    rst $38                                       ; $657f: $ff
    rst $38                                       ; $6580: $ff
    rst $38                                       ; $6581: $ff
    rst $38                                       ; $6582: $ff
    rst $38                                       ; $6583: $ff
    rst $38                                       ; $6584: $ff
    rst $38                                       ; $6585: $ff
    rst $38                                       ; $6586: $ff
    rst $38                                       ; $6587: $ff
    rst $38                                       ; $6588: $ff
    rst $38                                       ; $6589: $ff
    rst $38                                       ; $658a: $ff
    rst $38                                       ; $658b: $ff
    rst $38                                       ; $658c: $ff
    rst $38                                       ; $658d: $ff
    rst $38                                       ; $658e: $ff
    rst $38                                       ; $658f: $ff
    rst $38                                       ; $6590: $ff
    rst $38                                       ; $6591: $ff
    rst $38                                       ; $6592: $ff
    rst $38                                       ; $6593: $ff
    rst $38                                       ; $6594: $ff
    rst $38                                       ; $6595: $ff
    rst $38                                       ; $6596: $ff
    rst $38                                       ; $6597: $ff
    rst $38                                       ; $6598: $ff
    rst $38                                       ; $6599: $ff
    rst $38                                       ; $659a: $ff
    rst $38                                       ; $659b: $ff
    rst $38                                       ; $659c: $ff
    rst $38                                       ; $659d: $ff
    rst $38                                       ; $659e: $ff
    rst $38                                       ; $659f: $ff
    rst $38                                       ; $65a0: $ff
    rst $38                                       ; $65a1: $ff
    rst $38                                       ; $65a2: $ff
    rst $38                                       ; $65a3: $ff
    rst $38                                       ; $65a4: $ff
    rst $38                                       ; $65a5: $ff
    rst $38                                       ; $65a6: $ff
    rst $38                                       ; $65a7: $ff
    rst $38                                       ; $65a8: $ff
    rst $38                                       ; $65a9: $ff
    rst $38                                       ; $65aa: $ff
    rst $38                                       ; $65ab: $ff
    rst $38                                       ; $65ac: $ff
    rst $38                                       ; $65ad: $ff
    rst $38                                       ; $65ae: $ff
    rst $38                                       ; $65af: $ff
    rst $38                                       ; $65b0: $ff
    rst $38                                       ; $65b1: $ff
    rst $38                                       ; $65b2: $ff
    rst $38                                       ; $65b3: $ff
    rst $38                                       ; $65b4: $ff
    rst $38                                       ; $65b5: $ff
    rst $38                                       ; $65b6: $ff
    rst $38                                       ; $65b7: $ff
    rst $38                                       ; $65b8: $ff
    rst $38                                       ; $65b9: $ff
    rst $38                                       ; $65ba: $ff
    rst $38                                       ; $65bb: $ff
    rst $38                                       ; $65bc: $ff
    rst $38                                       ; $65bd: $ff
    rst $38                                       ; $65be: $ff
    rst $38                                       ; $65bf: $ff
    rst $38                                       ; $65c0: $ff
    rst $38                                       ; $65c1: $ff
    rst $38                                       ; $65c2: $ff
    rst $38                                       ; $65c3: $ff
    rst $38                                       ; $65c4: $ff
    rst $38                                       ; $65c5: $ff
    rst $38                                       ; $65c6: $ff
    rst $38                                       ; $65c7: $ff
    rst $38                                       ; $65c8: $ff
    rst $38                                       ; $65c9: $ff
    rst $38                                       ; $65ca: $ff
    rst $38                                       ; $65cb: $ff
    rst $38                                       ; $65cc: $ff
    rst $38                                       ; $65cd: $ff
    rst $38                                       ; $65ce: $ff
    rst $38                                       ; $65cf: $ff
    rst $38                                       ; $65d0: $ff
    rst $38                                       ; $65d1: $ff
    rst $38                                       ; $65d2: $ff
    rst $38                                       ; $65d3: $ff
    rst $38                                       ; $65d4: $ff
    rst $38                                       ; $65d5: $ff
    rst $38                                       ; $65d6: $ff
    rst $38                                       ; $65d7: $ff
    rst $38                                       ; $65d8: $ff
    rst $38                                       ; $65d9: $ff
    rst $38                                       ; $65da: $ff
    rst $38                                       ; $65db: $ff
    rst $38                                       ; $65dc: $ff
    rst $38                                       ; $65dd: $ff
    rst $38                                       ; $65de: $ff
    rst $38                                       ; $65df: $ff
    rst $38                                       ; $65e0: $ff
    rst $38                                       ; $65e1: $ff
    rst $38                                       ; $65e2: $ff
    rst $38                                       ; $65e3: $ff
    rst $38                                       ; $65e4: $ff
    rst $38                                       ; $65e5: $ff
    rst $38                                       ; $65e6: $ff
    rst $38                                       ; $65e7: $ff
    rst $38                                       ; $65e8: $ff
    rst $38                                       ; $65e9: $ff
    rst $38                                       ; $65ea: $ff
    rst $38                                       ; $65eb: $ff
    rst $38                                       ; $65ec: $ff
    rst $38                                       ; $65ed: $ff
    rst $38                                       ; $65ee: $ff
    rst $38                                       ; $65ef: $ff
    rst $38                                       ; $65f0: $ff
    rst $38                                       ; $65f1: $ff
    rst $38                                       ; $65f2: $ff
    rst $38                                       ; $65f3: $ff
    rst $38                                       ; $65f4: $ff
    rst $38                                       ; $65f5: $ff
    rst $38                                       ; $65f6: $ff
    rst $38                                       ; $65f7: $ff
    rst $38                                       ; $65f8: $ff
    rst $38                                       ; $65f9: $ff
    rst $38                                       ; $65fa: $ff
    rst $38                                       ; $65fb: $ff
    rst $38                                       ; $65fc: $ff
    rst $38                                       ; $65fd: $ff
    rst $38                                       ; $65fe: $ff
    rst $38                                       ; $65ff: $ff
    rst $38                                       ; $6600: $ff
    rst $38                                       ; $6601: $ff
    rst $38                                       ; $6602: $ff
    rst $38                                       ; $6603: $ff
    rst $38                                       ; $6604: $ff
    rst $38                                       ; $6605: $ff
    rst $38                                       ; $6606: $ff
    rst $38                                       ; $6607: $ff
    rst $38                                       ; $6608: $ff
    rst $38                                       ; $6609: $ff
    rst $38                                       ; $660a: $ff
    rst $38                                       ; $660b: $ff
    rst $38                                       ; $660c: $ff
    rst $38                                       ; $660d: $ff
    rst $38                                       ; $660e: $ff
    rst $38                                       ; $660f: $ff
    rst $38                                       ; $6610: $ff
    rst $38                                       ; $6611: $ff
    rst $38                                       ; $6612: $ff
    rst $38                                       ; $6613: $ff
    rst $38                                       ; $6614: $ff
    rst $38                                       ; $6615: $ff
    rst $38                                       ; $6616: $ff
    rst $38                                       ; $6617: $ff
    rst $38                                       ; $6618: $ff
    rst $38                                       ; $6619: $ff
    rst $38                                       ; $661a: $ff
    rst $38                                       ; $661b: $ff
    rst $38                                       ; $661c: $ff
    rst $38                                       ; $661d: $ff
    rst $38                                       ; $661e: $ff
    rst $38                                       ; $661f: $ff
    rst $38                                       ; $6620: $ff
    rst $38                                       ; $6621: $ff
    rst $38                                       ; $6622: $ff
    rst $38                                       ; $6623: $ff
    rst $38                                       ; $6624: $ff
    rst $38                                       ; $6625: $ff
    rst $38                                       ; $6626: $ff
    rst $38                                       ; $6627: $ff
    rst $38                                       ; $6628: $ff
    rst $38                                       ; $6629: $ff
    rst $38                                       ; $662a: $ff
    rst $38                                       ; $662b: $ff
    rst $38                                       ; $662c: $ff
    rst $38                                       ; $662d: $ff
    rst $38                                       ; $662e: $ff
    rst $38                                       ; $662f: $ff
    rst $38                                       ; $6630: $ff
    rst $38                                       ; $6631: $ff
    rst $38                                       ; $6632: $ff
    rst $38                                       ; $6633: $ff
    rst $38                                       ; $6634: $ff
    rst $38                                       ; $6635: $ff
    rst $38                                       ; $6636: $ff
    rst $38                                       ; $6637: $ff
    rst $38                                       ; $6638: $ff
    rst $38                                       ; $6639: $ff
    rst $38                                       ; $663a: $ff
    rst $38                                       ; $663b: $ff
    rst $38                                       ; $663c: $ff
    rst $38                                       ; $663d: $ff
    rst $38                                       ; $663e: $ff
    rst $38                                       ; $663f: $ff
    rst $38                                       ; $6640: $ff
    rst $38                                       ; $6641: $ff
    rst $38                                       ; $6642: $ff
    rst $38                                       ; $6643: $ff
    rst $38                                       ; $6644: $ff
    rst $38                                       ; $6645: $ff
    rst $38                                       ; $6646: $ff
    rst $38                                       ; $6647: $ff
    rst $38                                       ; $6648: $ff
    rst $38                                       ; $6649: $ff
    rst $38                                       ; $664a: $ff
    rst $38                                       ; $664b: $ff
    rst $38                                       ; $664c: $ff
    rst $38                                       ; $664d: $ff
    rst $38                                       ; $664e: $ff
    rst $38                                       ; $664f: $ff
    rst $38                                       ; $6650: $ff
    rst $38                                       ; $6651: $ff
    rst $38                                       ; $6652: $ff
    rst $38                                       ; $6653: $ff
    rst $38                                       ; $6654: $ff
    rst $38                                       ; $6655: $ff
    rst $38                                       ; $6656: $ff
    rst $38                                       ; $6657: $ff
    rst $38                                       ; $6658: $ff
    rst $38                                       ; $6659: $ff
    rst $38                                       ; $665a: $ff
    rst $38                                       ; $665b: $ff
    rst $38                                       ; $665c: $ff
    rst $38                                       ; $665d: $ff
    rst $38                                       ; $665e: $ff
    rst $38                                       ; $665f: $ff
    rst $38                                       ; $6660: $ff
    rst $38                                       ; $6661: $ff
    rst $38                                       ; $6662: $ff
    rst $38                                       ; $6663: $ff
    rst $38                                       ; $6664: $ff
    rst $38                                       ; $6665: $ff
    rst $38                                       ; $6666: $ff
    rst $38                                       ; $6667: $ff
    rst $38                                       ; $6668: $ff
    rst $38                                       ; $6669: $ff
    rst $38                                       ; $666a: $ff
    rst $38                                       ; $666b: $ff
    rst $38                                       ; $666c: $ff
    rst $38                                       ; $666d: $ff
    rst $38                                       ; $666e: $ff
    rst $38                                       ; $666f: $ff
    rst $38                                       ; $6670: $ff
    rst $38                                       ; $6671: $ff
    rst $38                                       ; $6672: $ff
    rst $38                                       ; $6673: $ff
    rst $38                                       ; $6674: $ff
    rst $38                                       ; $6675: $ff
    rst $38                                       ; $6676: $ff
    rst $38                                       ; $6677: $ff
    rst $38                                       ; $6678: $ff
    rst $38                                       ; $6679: $ff
    rst $38                                       ; $667a: $ff
    rst $38                                       ; $667b: $ff
    rst $38                                       ; $667c: $ff
    rst $38                                       ; $667d: $ff
    rst $38                                       ; $667e: $ff
    rst $38                                       ; $667f: $ff
    rst $38                                       ; $6680: $ff
    rst $38                                       ; $6681: $ff
    rst $38                                       ; $6682: $ff
    rst $38                                       ; $6683: $ff
    rst $38                                       ; $6684: $ff
    rst $38                                       ; $6685: $ff
    rst $38                                       ; $6686: $ff
    rst $38                                       ; $6687: $ff
    rst $38                                       ; $6688: $ff
    rst $38                                       ; $6689: $ff
    rst $38                                       ; $668a: $ff
    rst $38                                       ; $668b: $ff
    rst $38                                       ; $668c: $ff
    rst $38                                       ; $668d: $ff
    rst $38                                       ; $668e: $ff
    rst $38                                       ; $668f: $ff
    rst $38                                       ; $6690: $ff
    rst $38                                       ; $6691: $ff
    rst $38                                       ; $6692: $ff
    rst $38                                       ; $6693: $ff
    rst $38                                       ; $6694: $ff
    rst $38                                       ; $6695: $ff
    rst $38                                       ; $6696: $ff
    rst $38                                       ; $6697: $ff
    rst $38                                       ; $6698: $ff
    rst $38                                       ; $6699: $ff
    rst $38                                       ; $669a: $ff
    rst $38                                       ; $669b: $ff
    rst $38                                       ; $669c: $ff
    rst $38                                       ; $669d: $ff
    rst $38                                       ; $669e: $ff
    rst $38                                       ; $669f: $ff
    rst $38                                       ; $66a0: $ff
    rst $38                                       ; $66a1: $ff
    rst $38                                       ; $66a2: $ff
    rst $38                                       ; $66a3: $ff
    rst $38                                       ; $66a4: $ff
    rst $38                                       ; $66a5: $ff
    rst $38                                       ; $66a6: $ff
    rst $38                                       ; $66a7: $ff
    rst $38                                       ; $66a8: $ff
    rst $38                                       ; $66a9: $ff
    rst $38                                       ; $66aa: $ff
    rst $38                                       ; $66ab: $ff
    rst $38                                       ; $66ac: $ff
    rst $38                                       ; $66ad: $ff
    rst $38                                       ; $66ae: $ff
    rst $38                                       ; $66af: $ff
    rst $38                                       ; $66b0: $ff
    rst $38                                       ; $66b1: $ff
    rst $38                                       ; $66b2: $ff
    rst $38                                       ; $66b3: $ff
    rst $38                                       ; $66b4: $ff
    rst $38                                       ; $66b5: $ff
    rst $38                                       ; $66b6: $ff
    rst $38                                       ; $66b7: $ff
    rst $38                                       ; $66b8: $ff
    rst $38                                       ; $66b9: $ff
    rst $38                                       ; $66ba: $ff
    rst $38                                       ; $66bb: $ff
    rst $38                                       ; $66bc: $ff
    rst $38                                       ; $66bd: $ff
    rst $38                                       ; $66be: $ff
    rst $38                                       ; $66bf: $ff
    rst $38                                       ; $66c0: $ff
    rst $38                                       ; $66c1: $ff
    rst $38                                       ; $66c2: $ff
    rst $38                                       ; $66c3: $ff
    rst $38                                       ; $66c4: $ff
    rst $38                                       ; $66c5: $ff
    rst $38                                       ; $66c6: $ff
    rst $38                                       ; $66c7: $ff
    rst $38                                       ; $66c8: $ff
    rst $38                                       ; $66c9: $ff
    rst $38                                       ; $66ca: $ff
    rst $38                                       ; $66cb: $ff
    rst $38                                       ; $66cc: $ff
    rst $38                                       ; $66cd: $ff
    rst $38                                       ; $66ce: $ff
    rst $38                                       ; $66cf: $ff
    rst $38                                       ; $66d0: $ff
    rst $38                                       ; $66d1: $ff
    rst $38                                       ; $66d2: $ff
    rst $38                                       ; $66d3: $ff
    rst $38                                       ; $66d4: $ff
    rst $38                                       ; $66d5: $ff
    rst $38                                       ; $66d6: $ff
    rst $38                                       ; $66d7: $ff
    rst $38                                       ; $66d8: $ff
    rst $38                                       ; $66d9: $ff
    rst $38                                       ; $66da: $ff
    rst $38                                       ; $66db: $ff
    rst $38                                       ; $66dc: $ff
    rst $38                                       ; $66dd: $ff
    rst $38                                       ; $66de: $ff
    rst $38                                       ; $66df: $ff
    rst $38                                       ; $66e0: $ff
    rst $38                                       ; $66e1: $ff
    rst $38                                       ; $66e2: $ff
    rst $38                                       ; $66e3: $ff
    rst $38                                       ; $66e4: $ff
    rst $38                                       ; $66e5: $ff
    rst $38                                       ; $66e6: $ff
    rst $38                                       ; $66e7: $ff
    rst $38                                       ; $66e8: $ff
    rst $38                                       ; $66e9: $ff
    rst $38                                       ; $66ea: $ff
    rst $38                                       ; $66eb: $ff
    rst $38                                       ; $66ec: $ff
    rst $38                                       ; $66ed: $ff
    rst $38                                       ; $66ee: $ff
    rst $38                                       ; $66ef: $ff
    rst $38                                       ; $66f0: $ff
    rst $38                                       ; $66f1: $ff
    rst $38                                       ; $66f2: $ff
    rst $38                                       ; $66f3: $ff
    rst $38                                       ; $66f4: $ff
    rst $38                                       ; $66f5: $ff
    rst $38                                       ; $66f6: $ff
    rst $38                                       ; $66f7: $ff
    rst $38                                       ; $66f8: $ff
    rst $38                                       ; $66f9: $ff
    rst $38                                       ; $66fa: $ff
    rst $38                                       ; $66fb: $ff
    rst $38                                       ; $66fc: $ff
    rst $38                                       ; $66fd: $ff
    rst $38                                       ; $66fe: $ff
    rst $38                                       ; $66ff: $ff
    rst $38                                       ; $6700: $ff
    rst $38                                       ; $6701: $ff
    rst $38                                       ; $6702: $ff
    rst $38                                       ; $6703: $ff
    rst $38                                       ; $6704: $ff
    rst $38                                       ; $6705: $ff
    rst $38                                       ; $6706: $ff
    rst $38                                       ; $6707: $ff
    rst $38                                       ; $6708: $ff
    rst $38                                       ; $6709: $ff
    rst $38                                       ; $670a: $ff
    rst $38                                       ; $670b: $ff
    rst $38                                       ; $670c: $ff
    rst $38                                       ; $670d: $ff
    rst $38                                       ; $670e: $ff
    rst $38                                       ; $670f: $ff
    rst $38                                       ; $6710: $ff
    rst $38                                       ; $6711: $ff
    rst $38                                       ; $6712: $ff
    rst $38                                       ; $6713: $ff
    rst $38                                       ; $6714: $ff
    rst $38                                       ; $6715: $ff
    rst $38                                       ; $6716: $ff
    rst $38                                       ; $6717: $ff
    rst $38                                       ; $6718: $ff
    rst $38                                       ; $6719: $ff
    rst $38                                       ; $671a: $ff
    rst $38                                       ; $671b: $ff
    rst $38                                       ; $671c: $ff
    rst $38                                       ; $671d: $ff
    rst $38                                       ; $671e: $ff
    rst $38                                       ; $671f: $ff
    rst $38                                       ; $6720: $ff
    rst $38                                       ; $6721: $ff
    rst $38                                       ; $6722: $ff
    rst $38                                       ; $6723: $ff
    rst $38                                       ; $6724: $ff
    rst $38                                       ; $6725: $ff
    rst $38                                       ; $6726: $ff
    rst $38                                       ; $6727: $ff
    rst $38                                       ; $6728: $ff
    rst $38                                       ; $6729: $ff
    rst $38                                       ; $672a: $ff
    rst $38                                       ; $672b: $ff
    rst $38                                       ; $672c: $ff
    rst $38                                       ; $672d: $ff
    rst $38                                       ; $672e: $ff
    rst $38                                       ; $672f: $ff
    rst $38                                       ; $6730: $ff
    rst $38                                       ; $6731: $ff
    rst $38                                       ; $6732: $ff
    rst $38                                       ; $6733: $ff
    rst $38                                       ; $6734: $ff
    rst $38                                       ; $6735: $ff
    rst $38                                       ; $6736: $ff
    rst $38                                       ; $6737: $ff
    rst $38                                       ; $6738: $ff
    rst $38                                       ; $6739: $ff
    rst $38                                       ; $673a: $ff
    rst $38                                       ; $673b: $ff
    rst $38                                       ; $673c: $ff
    rst $38                                       ; $673d: $ff
    rst $38                                       ; $673e: $ff
    rst $38                                       ; $673f: $ff
    rst $38                                       ; $6740: $ff
    rst $38                                       ; $6741: $ff
    rst $38                                       ; $6742: $ff
    rst $38                                       ; $6743: $ff
    rst $38                                       ; $6744: $ff
    rst $38                                       ; $6745: $ff
    rst $38                                       ; $6746: $ff
    rst $38                                       ; $6747: $ff
    rst $38                                       ; $6748: $ff
    rst $38                                       ; $6749: $ff
    rst $38                                       ; $674a: $ff
    rst $38                                       ; $674b: $ff
    rst $38                                       ; $674c: $ff
    rst $38                                       ; $674d: $ff
    rst $38                                       ; $674e: $ff
    rst $38                                       ; $674f: $ff
    rst $38                                       ; $6750: $ff
    rst $38                                       ; $6751: $ff
    rst $38                                       ; $6752: $ff
    rst $38                                       ; $6753: $ff
    rst $38                                       ; $6754: $ff
    rst $38                                       ; $6755: $ff
    rst $38                                       ; $6756: $ff
    rst $38                                       ; $6757: $ff
    rst $38                                       ; $6758: $ff
    rst $38                                       ; $6759: $ff
    rst $38                                       ; $675a: $ff
    rst $38                                       ; $675b: $ff
    rst $38                                       ; $675c: $ff
    rst $38                                       ; $675d: $ff
    rst $38                                       ; $675e: $ff
    rst $38                                       ; $675f: $ff
    rst $38                                       ; $6760: $ff
    rst $38                                       ; $6761: $ff
    rst $38                                       ; $6762: $ff
    rst $38                                       ; $6763: $ff
    rst $38                                       ; $6764: $ff
    rst $38                                       ; $6765: $ff
    rst $38                                       ; $6766: $ff
    rst $38                                       ; $6767: $ff
    rst $38                                       ; $6768: $ff
    rst $38                                       ; $6769: $ff
    rst $38                                       ; $676a: $ff
    rst $38                                       ; $676b: $ff
    rst $38                                       ; $676c: $ff
    rst $38                                       ; $676d: $ff
    rst $38                                       ; $676e: $ff
    rst $38                                       ; $676f: $ff
    rst $38                                       ; $6770: $ff
    rst $38                                       ; $6771: $ff
    rst $38                                       ; $6772: $ff
    rst $38                                       ; $6773: $ff
    rst $38                                       ; $6774: $ff
    rst $38                                       ; $6775: $ff
    rst $38                                       ; $6776: $ff
    rst $38                                       ; $6777: $ff
    rst $38                                       ; $6778: $ff
    rst $38                                       ; $6779: $ff
    rst $38                                       ; $677a: $ff
    rst $38                                       ; $677b: $ff
    rst $38                                       ; $677c: $ff
    rst $38                                       ; $677d: $ff
    rst $38                                       ; $677e: $ff
    rst $38                                       ; $677f: $ff
    rst $38                                       ; $6780: $ff
    rst $38                                       ; $6781: $ff
    rst $38                                       ; $6782: $ff
    rst $38                                       ; $6783: $ff
    rst $38                                       ; $6784: $ff
    rst $38                                       ; $6785: $ff
    rst $38                                       ; $6786: $ff
    rst $38                                       ; $6787: $ff
    rst $38                                       ; $6788: $ff
    rst $38                                       ; $6789: $ff
    rst $38                                       ; $678a: $ff
    rst $38                                       ; $678b: $ff
    rst $38                                       ; $678c: $ff
    rst $38                                       ; $678d: $ff
    rst $38                                       ; $678e: $ff
    rst $38                                       ; $678f: $ff
    rst $38                                       ; $6790: $ff
    rst $38                                       ; $6791: $ff
    rst $38                                       ; $6792: $ff
    rst $38                                       ; $6793: $ff
    rst $38                                       ; $6794: $ff
    rst $38                                       ; $6795: $ff
    rst $38                                       ; $6796: $ff
    rst $38                                       ; $6797: $ff
    rst $38                                       ; $6798: $ff
    rst $38                                       ; $6799: $ff
    rst $38                                       ; $679a: $ff
    rst $38                                       ; $679b: $ff
    rst $38                                       ; $679c: $ff
    rst $38                                       ; $679d: $ff
    rst $38                                       ; $679e: $ff
    rst $38                                       ; $679f: $ff
    rst $38                                       ; $67a0: $ff
    rst $38                                       ; $67a1: $ff
    rst $38                                       ; $67a2: $ff
    rst $38                                       ; $67a3: $ff
    rst $38                                       ; $67a4: $ff
    rst $38                                       ; $67a5: $ff
    rst $38                                       ; $67a6: $ff
    rst $38                                       ; $67a7: $ff
    rst $38                                       ; $67a8: $ff
    rst $38                                       ; $67a9: $ff
    rst $38                                       ; $67aa: $ff
    rst $38                                       ; $67ab: $ff
    rst $38                                       ; $67ac: $ff
    rst $38                                       ; $67ad: $ff
    rst $38                                       ; $67ae: $ff
    rst $38                                       ; $67af: $ff
    rst $38                                       ; $67b0: $ff
    rst $38                                       ; $67b1: $ff
    rst $38                                       ; $67b2: $ff
    rst $38                                       ; $67b3: $ff
    rst $38                                       ; $67b4: $ff
    rst $38                                       ; $67b5: $ff
    rst $38                                       ; $67b6: $ff
    rst $38                                       ; $67b7: $ff
    rst $38                                       ; $67b8: $ff
    rst $38                                       ; $67b9: $ff
    rst $38                                       ; $67ba: $ff
    rst $38                                       ; $67bb: $ff
    rst $38                                       ; $67bc: $ff
    rst $38                                       ; $67bd: $ff
    rst $38                                       ; $67be: $ff
    rst $38                                       ; $67bf: $ff
    rst $38                                       ; $67c0: $ff
    rst $38                                       ; $67c1: $ff
    rst $38                                       ; $67c2: $ff
    rst $38                                       ; $67c3: $ff
    rst $38                                       ; $67c4: $ff
    rst $38                                       ; $67c5: $ff
    rst $38                                       ; $67c6: $ff
    rst $38                                       ; $67c7: $ff
    rst $38                                       ; $67c8: $ff
    rst $38                                       ; $67c9: $ff
    rst $38                                       ; $67ca: $ff
    rst $38                                       ; $67cb: $ff
    rst $38                                       ; $67cc: $ff
    rst $38                                       ; $67cd: $ff
    rst $38                                       ; $67ce: $ff
    rst $38                                       ; $67cf: $ff
    rst $38                                       ; $67d0: $ff
    rst $38                                       ; $67d1: $ff
    rst $38                                       ; $67d2: $ff
    rst $38                                       ; $67d3: $ff
    rst $38                                       ; $67d4: $ff
    rst $38                                       ; $67d5: $ff
    rst $38                                       ; $67d6: $ff
    rst $38                                       ; $67d7: $ff
    rst $38                                       ; $67d8: $ff
    rst $38                                       ; $67d9: $ff
    rst $38                                       ; $67da: $ff
    rst $38                                       ; $67db: $ff
    rst $38                                       ; $67dc: $ff
    rst $38                                       ; $67dd: $ff
    rst $38                                       ; $67de: $ff
    rst $38                                       ; $67df: $ff
    rst $38                                       ; $67e0: $ff
    rst $38                                       ; $67e1: $ff
    rst $38                                       ; $67e2: $ff
    rst $38                                       ; $67e3: $ff
    rst $38                                       ; $67e4: $ff
    rst $38                                       ; $67e5: $ff
    rst $38                                       ; $67e6: $ff
    rst $38                                       ; $67e7: $ff
    rst $38                                       ; $67e8: $ff
    rst $38                                       ; $67e9: $ff
    rst $38                                       ; $67ea: $ff
    rst $38                                       ; $67eb: $ff
    rst $38                                       ; $67ec: $ff
    rst $38                                       ; $67ed: $ff
    rst $38                                       ; $67ee: $ff
    rst $38                                       ; $67ef: $ff
    rst $38                                       ; $67f0: $ff
    rst $38                                       ; $67f1: $ff
    rst $38                                       ; $67f2: $ff
    rst $38                                       ; $67f3: $ff
    rst $38                                       ; $67f4: $ff
    rst $38                                       ; $67f5: $ff
    rst $38                                       ; $67f6: $ff
    rst $38                                       ; $67f7: $ff
    rst $38                                       ; $67f8: $ff
    rst $38                                       ; $67f9: $ff
    rst $38                                       ; $67fa: $ff
    rst $38                                       ; $67fb: $ff
    rst $38                                       ; $67fc: $ff
    rst $38                                       ; $67fd: $ff
    rst $38                                       ; $67fe: $ff
    rst $38                                       ; $67ff: $ff
    rst $38                                       ; $6800: $ff
    rst $38                                       ; $6801: $ff
    rst $38                                       ; $6802: $ff
    rst $38                                       ; $6803: $ff
    rst $38                                       ; $6804: $ff
    rst $38                                       ; $6805: $ff
    rst $38                                       ; $6806: $ff
    rst $38                                       ; $6807: $ff
    rst $38                                       ; $6808: $ff
    rst $38                                       ; $6809: $ff
    rst $38                                       ; $680a: $ff
    rst $38                                       ; $680b: $ff
    rst $38                                       ; $680c: $ff
    rst $38                                       ; $680d: $ff
    rst $38                                       ; $680e: $ff
    rst $38                                       ; $680f: $ff
    rst $38                                       ; $6810: $ff
    rst $38                                       ; $6811: $ff
    rst $38                                       ; $6812: $ff
    rst $38                                       ; $6813: $ff
    rst $38                                       ; $6814: $ff
    rst $38                                       ; $6815: $ff
    rst $38                                       ; $6816: $ff
    rst $38                                       ; $6817: $ff
    rst $38                                       ; $6818: $ff
    rst $38                                       ; $6819: $ff
    rst $38                                       ; $681a: $ff
    rst $38                                       ; $681b: $ff
    rst $38                                       ; $681c: $ff
    rst $38                                       ; $681d: $ff
    rst $38                                       ; $681e: $ff
    rst $38                                       ; $681f: $ff
    rst $38                                       ; $6820: $ff
    rst $38                                       ; $6821: $ff
    rst $38                                       ; $6822: $ff
    rst $38                                       ; $6823: $ff
    rst $38                                       ; $6824: $ff
    rst $38                                       ; $6825: $ff
    rst $38                                       ; $6826: $ff
    rst $38                                       ; $6827: $ff
    rst $38                                       ; $6828: $ff
    rst $38                                       ; $6829: $ff
    rst $38                                       ; $682a: $ff
    rst $38                                       ; $682b: $ff
    rst $38                                       ; $682c: $ff
    rst $38                                       ; $682d: $ff
    rst $38                                       ; $682e: $ff
    rst $38                                       ; $682f: $ff
    rst $38                                       ; $6830: $ff
    rst $38                                       ; $6831: $ff
    rst $38                                       ; $6832: $ff
    rst $38                                       ; $6833: $ff
    rst $38                                       ; $6834: $ff
    rst $38                                       ; $6835: $ff
    rst $38                                       ; $6836: $ff
    rst $38                                       ; $6837: $ff
    rst $38                                       ; $6838: $ff
    rst $38                                       ; $6839: $ff
    rst $38                                       ; $683a: $ff
    rst $38                                       ; $683b: $ff
    rst $38                                       ; $683c: $ff
    rst $38                                       ; $683d: $ff
    rst $38                                       ; $683e: $ff
    rst $38                                       ; $683f: $ff
    rst $38                                       ; $6840: $ff
    rst $38                                       ; $6841: $ff
    rst $38                                       ; $6842: $ff
    rst $38                                       ; $6843: $ff
    rst $38                                       ; $6844: $ff
    rst $38                                       ; $6845: $ff
    rst $38                                       ; $6846: $ff
    rst $38                                       ; $6847: $ff
    rst $38                                       ; $6848: $ff
    rst $38                                       ; $6849: $ff
    rst $38                                       ; $684a: $ff
    rst $38                                       ; $684b: $ff
    rst $38                                       ; $684c: $ff
    rst $38                                       ; $684d: $ff
    rst $38                                       ; $684e: $ff
    rst $38                                       ; $684f: $ff
    rst $38                                       ; $6850: $ff
    rst $38                                       ; $6851: $ff
    rst $38                                       ; $6852: $ff
    rst $38                                       ; $6853: $ff
    rst $38                                       ; $6854: $ff
    rst $38                                       ; $6855: $ff
    rst $38                                       ; $6856: $ff
    rst $38                                       ; $6857: $ff
    rst $38                                       ; $6858: $ff
    rst $38                                       ; $6859: $ff
    rst $38                                       ; $685a: $ff
    rst $38                                       ; $685b: $ff
    rst $38                                       ; $685c: $ff
    rst $38                                       ; $685d: $ff
    rst $38                                       ; $685e: $ff
    rst $38                                       ; $685f: $ff
    rst $38                                       ; $6860: $ff
    rst $38                                       ; $6861: $ff
    rst $38                                       ; $6862: $ff
    rst $38                                       ; $6863: $ff
    rst $38                                       ; $6864: $ff
    rst $38                                       ; $6865: $ff
    rst $38                                       ; $6866: $ff
    rst $38                                       ; $6867: $ff
    rst $38                                       ; $6868: $ff
    rst $38                                       ; $6869: $ff
    rst $38                                       ; $686a: $ff
    rst $38                                       ; $686b: $ff
    rst $38                                       ; $686c: $ff
    rst $38                                       ; $686d: $ff
    rst $38                                       ; $686e: $ff
    rst $38                                       ; $686f: $ff
    rst $38                                       ; $6870: $ff
    rst $38                                       ; $6871: $ff
    rst $38                                       ; $6872: $ff
    rst $38                                       ; $6873: $ff
    rst $38                                       ; $6874: $ff
    rst $38                                       ; $6875: $ff
    rst $38                                       ; $6876: $ff
    rst $38                                       ; $6877: $ff
    rst $38                                       ; $6878: $ff
    rst $38                                       ; $6879: $ff
    rst $38                                       ; $687a: $ff
    rst $38                                       ; $687b: $ff
    rst $38                                       ; $687c: $ff
    rst $38                                       ; $687d: $ff
    rst $38                                       ; $687e: $ff
    rst $38                                       ; $687f: $ff
    rst $38                                       ; $6880: $ff
    rst $38                                       ; $6881: $ff
    rst $38                                       ; $6882: $ff
    rst $38                                       ; $6883: $ff
    rst $38                                       ; $6884: $ff
    rst $38                                       ; $6885: $ff
    rst $38                                       ; $6886: $ff
    rst $38                                       ; $6887: $ff
    rst $38                                       ; $6888: $ff
    rst $38                                       ; $6889: $ff
    rst $38                                       ; $688a: $ff
    rst $38                                       ; $688b: $ff
    rst $38                                       ; $688c: $ff
    rst $38                                       ; $688d: $ff
    rst $38                                       ; $688e: $ff
    rst $38                                       ; $688f: $ff
    rst $38                                       ; $6890: $ff
    rst $38                                       ; $6891: $ff
    rst $38                                       ; $6892: $ff
    rst $38                                       ; $6893: $ff
    rst $38                                       ; $6894: $ff
    rst $38                                       ; $6895: $ff
    rst $38                                       ; $6896: $ff
    rst $38                                       ; $6897: $ff
    rst $38                                       ; $6898: $ff
    rst $38                                       ; $6899: $ff
    rst $38                                       ; $689a: $ff
    rst $38                                       ; $689b: $ff
    rst $38                                       ; $689c: $ff
    rst $38                                       ; $689d: $ff
    rst $38                                       ; $689e: $ff
    rst $38                                       ; $689f: $ff
    rst $38                                       ; $68a0: $ff
    rst $38                                       ; $68a1: $ff
    rst $38                                       ; $68a2: $ff
    rst $38                                       ; $68a3: $ff
    rst $38                                       ; $68a4: $ff
    rst $38                                       ; $68a5: $ff
    rst $38                                       ; $68a6: $ff
    rst $38                                       ; $68a7: $ff
    rst $38                                       ; $68a8: $ff
    rst $38                                       ; $68a9: $ff
    rst $38                                       ; $68aa: $ff
    rst $38                                       ; $68ab: $ff
    rst $38                                       ; $68ac: $ff
    rst $38                                       ; $68ad: $ff
    rst $38                                       ; $68ae: $ff
    rst $38                                       ; $68af: $ff
    rst $38                                       ; $68b0: $ff
    rst $38                                       ; $68b1: $ff
    rst $38                                       ; $68b2: $ff
    rst $38                                       ; $68b3: $ff
    rst $38                                       ; $68b4: $ff
    rst $38                                       ; $68b5: $ff
    rst $38                                       ; $68b6: $ff
    rst $38                                       ; $68b7: $ff
    rst $38                                       ; $68b8: $ff
    rst $38                                       ; $68b9: $ff
    rst $38                                       ; $68ba: $ff
    rst $38                                       ; $68bb: $ff
    rst $38                                       ; $68bc: $ff
    rst $38                                       ; $68bd: $ff
    rst $38                                       ; $68be: $ff
    rst $38                                       ; $68bf: $ff
    rst $38                                       ; $68c0: $ff
    rst $38                                       ; $68c1: $ff
    rst $38                                       ; $68c2: $ff
    rst $38                                       ; $68c3: $ff
    rst $38                                       ; $68c4: $ff
    rst $38                                       ; $68c5: $ff
    rst $38                                       ; $68c6: $ff
    rst $38                                       ; $68c7: $ff
    rst $38                                       ; $68c8: $ff
    rst $38                                       ; $68c9: $ff
    rst $38                                       ; $68ca: $ff
    rst $38                                       ; $68cb: $ff
    rst $38                                       ; $68cc: $ff
    rst $38                                       ; $68cd: $ff
    rst $38                                       ; $68ce: $ff
    rst $38                                       ; $68cf: $ff
    rst $38                                       ; $68d0: $ff
    rst $38                                       ; $68d1: $ff
    rst $38                                       ; $68d2: $ff
    rst $38                                       ; $68d3: $ff
    rst $38                                       ; $68d4: $ff
    rst $38                                       ; $68d5: $ff
    rst $38                                       ; $68d6: $ff
    rst $38                                       ; $68d7: $ff
    rst $38                                       ; $68d8: $ff
    rst $38                                       ; $68d9: $ff
    rst $38                                       ; $68da: $ff
    rst $38                                       ; $68db: $ff
    rst $38                                       ; $68dc: $ff
    rst $38                                       ; $68dd: $ff
    rst $38                                       ; $68de: $ff
    rst $38                                       ; $68df: $ff
    rst $38                                       ; $68e0: $ff
    rst $38                                       ; $68e1: $ff
    rst $38                                       ; $68e2: $ff
    rst $38                                       ; $68e3: $ff
    rst $38                                       ; $68e4: $ff
    rst $38                                       ; $68e5: $ff
    rst $38                                       ; $68e6: $ff
    rst $38                                       ; $68e7: $ff
    rst $38                                       ; $68e8: $ff
    rst $38                                       ; $68e9: $ff
    rst $38                                       ; $68ea: $ff
    rst $38                                       ; $68eb: $ff
    rst $38                                       ; $68ec: $ff
    rst $38                                       ; $68ed: $ff
    rst $38                                       ; $68ee: $ff
    rst $38                                       ; $68ef: $ff
    rst $38                                       ; $68f0: $ff
    rst $38                                       ; $68f1: $ff
    rst $38                                       ; $68f2: $ff
    rst $38                                       ; $68f3: $ff
    rst $38                                       ; $68f4: $ff
    rst $38                                       ; $68f5: $ff
    rst $38                                       ; $68f6: $ff
    rst $38                                       ; $68f7: $ff
    rst $38                                       ; $68f8: $ff
    rst $38                                       ; $68f9: $ff
    rst $38                                       ; $68fa: $ff
    rst $38                                       ; $68fb: $ff
    rst $38                                       ; $68fc: $ff
    rst $38                                       ; $68fd: $ff
    rst $38                                       ; $68fe: $ff
    rst $38                                       ; $68ff: $ff
    rst $38                                       ; $6900: $ff
    rst $38                                       ; $6901: $ff
    rst $38                                       ; $6902: $ff
    rst $38                                       ; $6903: $ff
    rst $38                                       ; $6904: $ff
    rst $38                                       ; $6905: $ff
    rst $38                                       ; $6906: $ff
    rst $38                                       ; $6907: $ff
    rst $38                                       ; $6908: $ff
    rst $38                                       ; $6909: $ff
    rst $38                                       ; $690a: $ff
    rst $38                                       ; $690b: $ff
    rst $38                                       ; $690c: $ff
    rst $38                                       ; $690d: $ff
    rst $38                                       ; $690e: $ff
    rst $38                                       ; $690f: $ff
    rst $38                                       ; $6910: $ff
    rst $38                                       ; $6911: $ff
    rst $38                                       ; $6912: $ff
    rst $38                                       ; $6913: $ff
    rst $38                                       ; $6914: $ff
    rst $38                                       ; $6915: $ff
    rst $38                                       ; $6916: $ff
    rst $38                                       ; $6917: $ff
    rst $38                                       ; $6918: $ff
    rst $38                                       ; $6919: $ff
    rst $38                                       ; $691a: $ff
    rst $38                                       ; $691b: $ff
    rst $38                                       ; $691c: $ff
    rst $38                                       ; $691d: $ff
    rst $38                                       ; $691e: $ff
    rst $38                                       ; $691f: $ff
    rst $38                                       ; $6920: $ff
    rst $38                                       ; $6921: $ff
    rst $38                                       ; $6922: $ff
    rst $38                                       ; $6923: $ff
    rst $38                                       ; $6924: $ff
    rst $38                                       ; $6925: $ff
    rst $38                                       ; $6926: $ff
    rst $38                                       ; $6927: $ff
    rst $38                                       ; $6928: $ff
    rst $38                                       ; $6929: $ff
    rst $38                                       ; $692a: $ff
    rst $38                                       ; $692b: $ff
    rst $38                                       ; $692c: $ff
    rst $38                                       ; $692d: $ff
    rst $38                                       ; $692e: $ff
    rst $38                                       ; $692f: $ff
    rst $38                                       ; $6930: $ff
    rst $38                                       ; $6931: $ff
    rst $38                                       ; $6932: $ff
    rst $38                                       ; $6933: $ff
    rst $38                                       ; $6934: $ff
    rst $38                                       ; $6935: $ff
    rst $38                                       ; $6936: $ff
    rst $38                                       ; $6937: $ff
    rst $38                                       ; $6938: $ff
    rst $38                                       ; $6939: $ff
    rst $38                                       ; $693a: $ff
    rst $38                                       ; $693b: $ff
    rst $38                                       ; $693c: $ff
    rst $38                                       ; $693d: $ff
    rst $38                                       ; $693e: $ff
    rst $38                                       ; $693f: $ff
    rst $38                                       ; $6940: $ff
    rst $38                                       ; $6941: $ff
    rst $38                                       ; $6942: $ff
    rst $38                                       ; $6943: $ff
    rst $38                                       ; $6944: $ff
    rst $38                                       ; $6945: $ff
    rst $38                                       ; $6946: $ff
    rst $38                                       ; $6947: $ff
    rst $38                                       ; $6948: $ff
    rst $38                                       ; $6949: $ff
    rst $38                                       ; $694a: $ff
    rst $38                                       ; $694b: $ff
    rst $38                                       ; $694c: $ff
    rst $38                                       ; $694d: $ff
    rst $38                                       ; $694e: $ff
    rst $38                                       ; $694f: $ff
    rst $38                                       ; $6950: $ff
    rst $38                                       ; $6951: $ff
    rst $38                                       ; $6952: $ff
    rst $38                                       ; $6953: $ff
    rst $38                                       ; $6954: $ff
    rst $38                                       ; $6955: $ff
    rst $38                                       ; $6956: $ff
    rst $38                                       ; $6957: $ff
    rst $38                                       ; $6958: $ff
    rst $38                                       ; $6959: $ff
    rst $38                                       ; $695a: $ff
    rst $38                                       ; $695b: $ff
    rst $38                                       ; $695c: $ff
    rst $38                                       ; $695d: $ff
    rst $38                                       ; $695e: $ff
    rst $38                                       ; $695f: $ff
    rst $38                                       ; $6960: $ff
    rst $38                                       ; $6961: $ff
    rst $38                                       ; $6962: $ff
    rst $38                                       ; $6963: $ff
    rst $38                                       ; $6964: $ff
    rst $38                                       ; $6965: $ff
    rst $38                                       ; $6966: $ff
    rst $38                                       ; $6967: $ff
    rst $38                                       ; $6968: $ff
    rst $38                                       ; $6969: $ff
    rst $38                                       ; $696a: $ff
    rst $38                                       ; $696b: $ff
    rst $38                                       ; $696c: $ff
    rst $38                                       ; $696d: $ff
    rst $38                                       ; $696e: $ff
    rst $38                                       ; $696f: $ff
    rst $38                                       ; $6970: $ff
    rst $38                                       ; $6971: $ff
    rst $38                                       ; $6972: $ff
    rst $38                                       ; $6973: $ff
    rst $38                                       ; $6974: $ff
    rst $38                                       ; $6975: $ff
    rst $38                                       ; $6976: $ff
    rst $38                                       ; $6977: $ff
    rst $38                                       ; $6978: $ff
    rst $38                                       ; $6979: $ff
    rst $38                                       ; $697a: $ff
    rst $38                                       ; $697b: $ff
    rst $38                                       ; $697c: $ff
    rst $38                                       ; $697d: $ff
    rst $38                                       ; $697e: $ff
    rst $38                                       ; $697f: $ff
    rst $38                                       ; $6980: $ff
    rst $38                                       ; $6981: $ff
    rst $38                                       ; $6982: $ff
    rst $38                                       ; $6983: $ff
    rst $38                                       ; $6984: $ff
    rst $38                                       ; $6985: $ff
    rst $38                                       ; $6986: $ff
    rst $38                                       ; $6987: $ff
    rst $38                                       ; $6988: $ff
    rst $38                                       ; $6989: $ff
    rst $38                                       ; $698a: $ff
    rst $38                                       ; $698b: $ff
    rst $38                                       ; $698c: $ff
    rst $38                                       ; $698d: $ff
    rst $38                                       ; $698e: $ff
    rst $38                                       ; $698f: $ff
    rst $38                                       ; $6990: $ff
    rst $38                                       ; $6991: $ff
    rst $38                                       ; $6992: $ff
    rst $38                                       ; $6993: $ff
    rst $38                                       ; $6994: $ff
    rst $38                                       ; $6995: $ff
    rst $38                                       ; $6996: $ff
    rst $38                                       ; $6997: $ff
    rst $38                                       ; $6998: $ff
    rst $38                                       ; $6999: $ff
    rst $38                                       ; $699a: $ff
    rst $38                                       ; $699b: $ff
    rst $38                                       ; $699c: $ff
    rst $38                                       ; $699d: $ff
    rst $38                                       ; $699e: $ff
    rst $38                                       ; $699f: $ff
    rst $38                                       ; $69a0: $ff
    rst $38                                       ; $69a1: $ff
    rst $38                                       ; $69a2: $ff
    rst $38                                       ; $69a3: $ff
    rst $38                                       ; $69a4: $ff
    rst $38                                       ; $69a5: $ff
    rst $38                                       ; $69a6: $ff
    rst $38                                       ; $69a7: $ff
    rst $38                                       ; $69a8: $ff
    rst $38                                       ; $69a9: $ff
    rst $38                                       ; $69aa: $ff
    rst $38                                       ; $69ab: $ff
    rst $38                                       ; $69ac: $ff
    rst $38                                       ; $69ad: $ff
    rst $38                                       ; $69ae: $ff
    rst $38                                       ; $69af: $ff
    rst $38                                       ; $69b0: $ff
    rst $38                                       ; $69b1: $ff
    rst $38                                       ; $69b2: $ff
    rst $38                                       ; $69b3: $ff
    rst $38                                       ; $69b4: $ff
    rst $38                                       ; $69b5: $ff
    rst $38                                       ; $69b6: $ff
    rst $38                                       ; $69b7: $ff
    rst $38                                       ; $69b8: $ff
    rst $38                                       ; $69b9: $ff
    rst $38                                       ; $69ba: $ff
    rst $38                                       ; $69bb: $ff
    rst $38                                       ; $69bc: $ff
    rst $38                                       ; $69bd: $ff
    rst $38                                       ; $69be: $ff
    rst $38                                       ; $69bf: $ff
    rst $38                                       ; $69c0: $ff
    rst $38                                       ; $69c1: $ff
    rst $38                                       ; $69c2: $ff
    rst $38                                       ; $69c3: $ff
    rst $38                                       ; $69c4: $ff
    rst $38                                       ; $69c5: $ff
    rst $38                                       ; $69c6: $ff
    rst $38                                       ; $69c7: $ff
    rst $38                                       ; $69c8: $ff
    rst $38                                       ; $69c9: $ff
    rst $38                                       ; $69ca: $ff
    rst $38                                       ; $69cb: $ff
    rst $38                                       ; $69cc: $ff
    rst $38                                       ; $69cd: $ff
    rst $38                                       ; $69ce: $ff
    rst $38                                       ; $69cf: $ff
    rst $38                                       ; $69d0: $ff
    rst $38                                       ; $69d1: $ff
    rst $38                                       ; $69d2: $ff
    rst $38                                       ; $69d3: $ff
    rst $38                                       ; $69d4: $ff
    rst $38                                       ; $69d5: $ff
    rst $38                                       ; $69d6: $ff
    rst $38                                       ; $69d7: $ff
    rst $38                                       ; $69d8: $ff
    rst $38                                       ; $69d9: $ff
    rst $38                                       ; $69da: $ff
    rst $38                                       ; $69db: $ff
    rst $38                                       ; $69dc: $ff
    rst $38                                       ; $69dd: $ff
    rst $38                                       ; $69de: $ff
    rst $38                                       ; $69df: $ff
    rst $38                                       ; $69e0: $ff
    rst $38                                       ; $69e1: $ff
    rst $38                                       ; $69e2: $ff
    rst $38                                       ; $69e3: $ff
    rst $38                                       ; $69e4: $ff
    rst $38                                       ; $69e5: $ff
    rst $38                                       ; $69e6: $ff
    rst $38                                       ; $69e7: $ff
    rst $38                                       ; $69e8: $ff
    rst $38                                       ; $69e9: $ff
    rst $38                                       ; $69ea: $ff
    rst $38                                       ; $69eb: $ff
    rst $38                                       ; $69ec: $ff
    rst $38                                       ; $69ed: $ff
    rst $38                                       ; $69ee: $ff
    rst $38                                       ; $69ef: $ff
    rst $38                                       ; $69f0: $ff
    rst $38                                       ; $69f1: $ff
    rst $38                                       ; $69f2: $ff
    rst $38                                       ; $69f3: $ff
    rst $38                                       ; $69f4: $ff
    rst $38                                       ; $69f5: $ff
    rst $38                                       ; $69f6: $ff
    rst $38                                       ; $69f7: $ff
    rst $38                                       ; $69f8: $ff
    rst $38                                       ; $69f9: $ff
    rst $38                                       ; $69fa: $ff
    rst $38                                       ; $69fb: $ff
    rst $38                                       ; $69fc: $ff
    rst $38                                       ; $69fd: $ff
    rst $38                                       ; $69fe: $ff
    rst $38                                       ; $69ff: $ff
    rst $38                                       ; $6a00: $ff
    rst $38                                       ; $6a01: $ff
    rst $38                                       ; $6a02: $ff
    rst $38                                       ; $6a03: $ff
    rst $38                                       ; $6a04: $ff
    rst $38                                       ; $6a05: $ff
    rst $38                                       ; $6a06: $ff
    rst $38                                       ; $6a07: $ff
    rst $38                                       ; $6a08: $ff
    rst $38                                       ; $6a09: $ff
    rst $38                                       ; $6a0a: $ff
    rst $38                                       ; $6a0b: $ff
    rst $38                                       ; $6a0c: $ff
    rst $38                                       ; $6a0d: $ff
    rst $38                                       ; $6a0e: $ff
    rst $38                                       ; $6a0f: $ff
    rst $38                                       ; $6a10: $ff
    rst $38                                       ; $6a11: $ff
    rst $38                                       ; $6a12: $ff
    rst $38                                       ; $6a13: $ff
    rst $38                                       ; $6a14: $ff
    rst $38                                       ; $6a15: $ff
    rst $38                                       ; $6a16: $ff
    rst $38                                       ; $6a17: $ff
    rst $38                                       ; $6a18: $ff
    rst $38                                       ; $6a19: $ff
    rst $38                                       ; $6a1a: $ff
    rst $38                                       ; $6a1b: $ff
    rst $38                                       ; $6a1c: $ff
    rst $38                                       ; $6a1d: $ff
    rst $38                                       ; $6a1e: $ff
    rst $38                                       ; $6a1f: $ff
    rst $38                                       ; $6a20: $ff
    rst $38                                       ; $6a21: $ff
    rst $38                                       ; $6a22: $ff
    rst $38                                       ; $6a23: $ff
    rst $38                                       ; $6a24: $ff
    rst $38                                       ; $6a25: $ff
    rst $38                                       ; $6a26: $ff
    rst $38                                       ; $6a27: $ff
    rst $38                                       ; $6a28: $ff
    rst $38                                       ; $6a29: $ff
    rst $38                                       ; $6a2a: $ff
    rst $38                                       ; $6a2b: $ff
    rst $38                                       ; $6a2c: $ff
    rst $38                                       ; $6a2d: $ff
    rst $38                                       ; $6a2e: $ff
    rst $38                                       ; $6a2f: $ff
    rst $38                                       ; $6a30: $ff
    rst $38                                       ; $6a31: $ff
    rst $38                                       ; $6a32: $ff
    rst $38                                       ; $6a33: $ff
    rst $38                                       ; $6a34: $ff
    rst $38                                       ; $6a35: $ff
    rst $38                                       ; $6a36: $ff
    rst $38                                       ; $6a37: $ff
    rst $38                                       ; $6a38: $ff
    rst $38                                       ; $6a39: $ff
    rst $38                                       ; $6a3a: $ff
    rst $38                                       ; $6a3b: $ff
    rst $38                                       ; $6a3c: $ff
    rst $38                                       ; $6a3d: $ff
    rst $38                                       ; $6a3e: $ff
    rst $38                                       ; $6a3f: $ff
    rst $38                                       ; $6a40: $ff
    rst $38                                       ; $6a41: $ff
    rst $38                                       ; $6a42: $ff
    rst $38                                       ; $6a43: $ff
    rst $38                                       ; $6a44: $ff
    rst $38                                       ; $6a45: $ff
    rst $38                                       ; $6a46: $ff
    rst $38                                       ; $6a47: $ff
    rst $38                                       ; $6a48: $ff
    rst $38                                       ; $6a49: $ff
    rst $38                                       ; $6a4a: $ff
    rst $38                                       ; $6a4b: $ff
    rst $38                                       ; $6a4c: $ff
    rst $38                                       ; $6a4d: $ff
    rst $38                                       ; $6a4e: $ff
    rst $38                                       ; $6a4f: $ff
    rst $38                                       ; $6a50: $ff
    rst $38                                       ; $6a51: $ff
    rst $38                                       ; $6a52: $ff
    rst $38                                       ; $6a53: $ff
    rst $38                                       ; $6a54: $ff
    rst $38                                       ; $6a55: $ff
    rst $38                                       ; $6a56: $ff
    rst $38                                       ; $6a57: $ff
    rst $38                                       ; $6a58: $ff
    rst $38                                       ; $6a59: $ff
    rst $38                                       ; $6a5a: $ff
    rst $38                                       ; $6a5b: $ff
    rst $38                                       ; $6a5c: $ff
    rst $38                                       ; $6a5d: $ff
    rst $38                                       ; $6a5e: $ff
    rst $38                                       ; $6a5f: $ff
    rst $38                                       ; $6a60: $ff
    rst $38                                       ; $6a61: $ff
    rst $38                                       ; $6a62: $ff
    rst $38                                       ; $6a63: $ff
    rst $38                                       ; $6a64: $ff
    rst $38                                       ; $6a65: $ff
    rst $38                                       ; $6a66: $ff
    rst $38                                       ; $6a67: $ff
    rst $38                                       ; $6a68: $ff
    rst $38                                       ; $6a69: $ff
    rst $38                                       ; $6a6a: $ff
    rst $38                                       ; $6a6b: $ff
    rst $38                                       ; $6a6c: $ff
    rst $38                                       ; $6a6d: $ff
    rst $38                                       ; $6a6e: $ff
    rst $38                                       ; $6a6f: $ff
    rst $38                                       ; $6a70: $ff
    rst $38                                       ; $6a71: $ff
    rst $38                                       ; $6a72: $ff
    rst $38                                       ; $6a73: $ff
    rst $38                                       ; $6a74: $ff
    rst $38                                       ; $6a75: $ff
    rst $38                                       ; $6a76: $ff
    rst $38                                       ; $6a77: $ff
    rst $38                                       ; $6a78: $ff
    rst $38                                       ; $6a79: $ff
    rst $38                                       ; $6a7a: $ff
    rst $38                                       ; $6a7b: $ff
    rst $38                                       ; $6a7c: $ff
    rst $38                                       ; $6a7d: $ff
    rst $38                                       ; $6a7e: $ff
    rst $38                                       ; $6a7f: $ff
    rst $38                                       ; $6a80: $ff
    rst $38                                       ; $6a81: $ff
    rst $38                                       ; $6a82: $ff
    rst $38                                       ; $6a83: $ff
    rst $38                                       ; $6a84: $ff
    rst $38                                       ; $6a85: $ff
    rst $38                                       ; $6a86: $ff
    rst $38                                       ; $6a87: $ff
    rst $38                                       ; $6a88: $ff
    rst $38                                       ; $6a89: $ff
    rst $38                                       ; $6a8a: $ff
    rst $38                                       ; $6a8b: $ff
    rst $38                                       ; $6a8c: $ff
    rst $38                                       ; $6a8d: $ff
    rst $38                                       ; $6a8e: $ff
    rst $38                                       ; $6a8f: $ff
    rst $38                                       ; $6a90: $ff
    rst $38                                       ; $6a91: $ff
    rst $38                                       ; $6a92: $ff
    rst $38                                       ; $6a93: $ff
    rst $38                                       ; $6a94: $ff
    rst $38                                       ; $6a95: $ff
    rst $38                                       ; $6a96: $ff
    rst $38                                       ; $6a97: $ff
    rst $38                                       ; $6a98: $ff
    rst $38                                       ; $6a99: $ff
    rst $38                                       ; $6a9a: $ff
    rst $38                                       ; $6a9b: $ff
    rst $38                                       ; $6a9c: $ff
    rst $38                                       ; $6a9d: $ff
    rst $38                                       ; $6a9e: $ff
    rst $38                                       ; $6a9f: $ff
    rst $38                                       ; $6aa0: $ff
    rst $38                                       ; $6aa1: $ff
    rst $38                                       ; $6aa2: $ff
    rst $38                                       ; $6aa3: $ff
    rst $38                                       ; $6aa4: $ff
    rst $38                                       ; $6aa5: $ff
    rst $38                                       ; $6aa6: $ff
    rst $38                                       ; $6aa7: $ff
    rst $38                                       ; $6aa8: $ff
    rst $38                                       ; $6aa9: $ff
    rst $38                                       ; $6aaa: $ff
    rst $38                                       ; $6aab: $ff
    rst $38                                       ; $6aac: $ff
    rst $38                                       ; $6aad: $ff
    rst $38                                       ; $6aae: $ff
    rst $38                                       ; $6aaf: $ff
    rst $38                                       ; $6ab0: $ff
    rst $38                                       ; $6ab1: $ff
    rst $38                                       ; $6ab2: $ff
    rst $38                                       ; $6ab3: $ff
    rst $38                                       ; $6ab4: $ff
    rst $38                                       ; $6ab5: $ff
    rst $38                                       ; $6ab6: $ff
    rst $38                                       ; $6ab7: $ff
    rst $38                                       ; $6ab8: $ff
    rst $38                                       ; $6ab9: $ff
    rst $38                                       ; $6aba: $ff
    rst $38                                       ; $6abb: $ff
    rst $38                                       ; $6abc: $ff
    rst $38                                       ; $6abd: $ff
    rst $38                                       ; $6abe: $ff
    rst $38                                       ; $6abf: $ff
    rst $38                                       ; $6ac0: $ff
    rst $38                                       ; $6ac1: $ff
    rst $38                                       ; $6ac2: $ff
    rst $38                                       ; $6ac3: $ff
    rst $38                                       ; $6ac4: $ff
    rst $38                                       ; $6ac5: $ff
    rst $38                                       ; $6ac6: $ff
    rst $38                                       ; $6ac7: $ff
    rst $38                                       ; $6ac8: $ff
    rst $38                                       ; $6ac9: $ff
    rst $38                                       ; $6aca: $ff
    rst $38                                       ; $6acb: $ff
    rst $38                                       ; $6acc: $ff
    rst $38                                       ; $6acd: $ff
    rst $38                                       ; $6ace: $ff
    rst $38                                       ; $6acf: $ff
    rst $38                                       ; $6ad0: $ff
    rst $38                                       ; $6ad1: $ff
    rst $38                                       ; $6ad2: $ff
    rst $38                                       ; $6ad3: $ff
    rst $38                                       ; $6ad4: $ff
    rst $38                                       ; $6ad5: $ff
    rst $38                                       ; $6ad6: $ff
    rst $38                                       ; $6ad7: $ff
    rst $38                                       ; $6ad8: $ff
    rst $38                                       ; $6ad9: $ff
    rst $38                                       ; $6ada: $ff
    rst $38                                       ; $6adb: $ff
    rst $38                                       ; $6adc: $ff
    rst $38                                       ; $6add: $ff
    rst $38                                       ; $6ade: $ff
    rst $38                                       ; $6adf: $ff
    rst $38                                       ; $6ae0: $ff
    rst $38                                       ; $6ae1: $ff
    rst $38                                       ; $6ae2: $ff
    rst $38                                       ; $6ae3: $ff
    rst $38                                       ; $6ae4: $ff
    rst $38                                       ; $6ae5: $ff
    rst $38                                       ; $6ae6: $ff
    rst $38                                       ; $6ae7: $ff
    rst $38                                       ; $6ae8: $ff
    rst $38                                       ; $6ae9: $ff
    rst $38                                       ; $6aea: $ff
    rst $38                                       ; $6aeb: $ff
    rst $38                                       ; $6aec: $ff
    rst $38                                       ; $6aed: $ff
    rst $38                                       ; $6aee: $ff
    rst $38                                       ; $6aef: $ff
    rst $38                                       ; $6af0: $ff
    rst $38                                       ; $6af1: $ff
    rst $38                                       ; $6af2: $ff
    rst $38                                       ; $6af3: $ff
    rst $38                                       ; $6af4: $ff
    rst $38                                       ; $6af5: $ff
    rst $38                                       ; $6af6: $ff
    rst $38                                       ; $6af7: $ff
    rst $38                                       ; $6af8: $ff
    rst $38                                       ; $6af9: $ff
    rst $38                                       ; $6afa: $ff
    rst $38                                       ; $6afb: $ff
    rst $38                                       ; $6afc: $ff
    rst $38                                       ; $6afd: $ff
    rst $38                                       ; $6afe: $ff
    rst $38                                       ; $6aff: $ff
    rst $38                                       ; $6b00: $ff
    rst $38                                       ; $6b01: $ff
    rst $38                                       ; $6b02: $ff
    rst $38                                       ; $6b03: $ff
    rst $38                                       ; $6b04: $ff
    rst $38                                       ; $6b05: $ff
    rst $38                                       ; $6b06: $ff
    rst $38                                       ; $6b07: $ff
    rst $38                                       ; $6b08: $ff
    rst $38                                       ; $6b09: $ff
    rst $38                                       ; $6b0a: $ff
    rst $38                                       ; $6b0b: $ff
    rst $38                                       ; $6b0c: $ff
    rst $38                                       ; $6b0d: $ff
    rst $38                                       ; $6b0e: $ff
    rst $38                                       ; $6b0f: $ff
    rst $38                                       ; $6b10: $ff
    rst $38                                       ; $6b11: $ff
    rst $38                                       ; $6b12: $ff
    rst $38                                       ; $6b13: $ff
    rst $38                                       ; $6b14: $ff
    rst $38                                       ; $6b15: $ff
    rst $38                                       ; $6b16: $ff
    rst $38                                       ; $6b17: $ff
    rst $38                                       ; $6b18: $ff
    rst $38                                       ; $6b19: $ff
    rst $38                                       ; $6b1a: $ff
    rst $38                                       ; $6b1b: $ff
    rst $38                                       ; $6b1c: $ff
    rst $38                                       ; $6b1d: $ff
    rst $38                                       ; $6b1e: $ff
    rst $38                                       ; $6b1f: $ff
    rst $38                                       ; $6b20: $ff
    rst $38                                       ; $6b21: $ff
    rst $38                                       ; $6b22: $ff
    rst $38                                       ; $6b23: $ff
    rst $38                                       ; $6b24: $ff
    rst $38                                       ; $6b25: $ff
    rst $38                                       ; $6b26: $ff
    rst $38                                       ; $6b27: $ff
    rst $38                                       ; $6b28: $ff
    rst $38                                       ; $6b29: $ff
    rst $38                                       ; $6b2a: $ff
    rst $38                                       ; $6b2b: $ff
    rst $38                                       ; $6b2c: $ff
    rst $38                                       ; $6b2d: $ff
    rst $38                                       ; $6b2e: $ff
    rst $38                                       ; $6b2f: $ff
    rst $38                                       ; $6b30: $ff
    rst $38                                       ; $6b31: $ff
    rst $38                                       ; $6b32: $ff
    rst $38                                       ; $6b33: $ff
    rst $38                                       ; $6b34: $ff
    rst $38                                       ; $6b35: $ff
    rst $38                                       ; $6b36: $ff
    rst $38                                       ; $6b37: $ff
    rst $38                                       ; $6b38: $ff
    rst $38                                       ; $6b39: $ff
    rst $38                                       ; $6b3a: $ff
    rst $38                                       ; $6b3b: $ff
    rst $38                                       ; $6b3c: $ff
    rst $38                                       ; $6b3d: $ff
    rst $38                                       ; $6b3e: $ff
    rst $38                                       ; $6b3f: $ff
    rst $38                                       ; $6b40: $ff
    rst $38                                       ; $6b41: $ff
    rst $38                                       ; $6b42: $ff
    rst $38                                       ; $6b43: $ff
    rst $38                                       ; $6b44: $ff
    rst $38                                       ; $6b45: $ff
    rst $38                                       ; $6b46: $ff
    rst $38                                       ; $6b47: $ff
    rst $38                                       ; $6b48: $ff
    rst $38                                       ; $6b49: $ff
    rst $38                                       ; $6b4a: $ff
    rst $38                                       ; $6b4b: $ff
    rst $38                                       ; $6b4c: $ff
    rst $38                                       ; $6b4d: $ff
    rst $38                                       ; $6b4e: $ff
    rst $38                                       ; $6b4f: $ff
    rst $38                                       ; $6b50: $ff
    rst $38                                       ; $6b51: $ff
    rst $38                                       ; $6b52: $ff
    rst $38                                       ; $6b53: $ff
    rst $38                                       ; $6b54: $ff
    rst $38                                       ; $6b55: $ff
    rst $38                                       ; $6b56: $ff
    rst $38                                       ; $6b57: $ff
    rst $38                                       ; $6b58: $ff
    rst $38                                       ; $6b59: $ff
    rst $38                                       ; $6b5a: $ff
    rst $38                                       ; $6b5b: $ff
    rst $38                                       ; $6b5c: $ff
    rst $38                                       ; $6b5d: $ff
    rst $38                                       ; $6b5e: $ff
    rst $38                                       ; $6b5f: $ff
    rst $38                                       ; $6b60: $ff
    rst $38                                       ; $6b61: $ff
    rst $38                                       ; $6b62: $ff
    rst $38                                       ; $6b63: $ff
    rst $38                                       ; $6b64: $ff
    rst $38                                       ; $6b65: $ff
    rst $38                                       ; $6b66: $ff
    rst $38                                       ; $6b67: $ff
    rst $38                                       ; $6b68: $ff
    rst $38                                       ; $6b69: $ff
    rst $38                                       ; $6b6a: $ff
    rst $38                                       ; $6b6b: $ff
    rst $38                                       ; $6b6c: $ff
    rst $38                                       ; $6b6d: $ff
    rst $38                                       ; $6b6e: $ff
    rst $38                                       ; $6b6f: $ff
    rst $38                                       ; $6b70: $ff
    rst $38                                       ; $6b71: $ff
    rst $38                                       ; $6b72: $ff
    rst $38                                       ; $6b73: $ff
    rst $38                                       ; $6b74: $ff
    rst $38                                       ; $6b75: $ff
    rst $38                                       ; $6b76: $ff
    rst $38                                       ; $6b77: $ff
    rst $38                                       ; $6b78: $ff
    rst $38                                       ; $6b79: $ff
    rst $38                                       ; $6b7a: $ff
    rst $38                                       ; $6b7b: $ff
    rst $38                                       ; $6b7c: $ff
    rst $38                                       ; $6b7d: $ff
    rst $38                                       ; $6b7e: $ff
    rst $38                                       ; $6b7f: $ff
    rst $38                                       ; $6b80: $ff
    rst $38                                       ; $6b81: $ff
    rst $38                                       ; $6b82: $ff
    rst $38                                       ; $6b83: $ff
    rst $38                                       ; $6b84: $ff
    rst $38                                       ; $6b85: $ff
    rst $38                                       ; $6b86: $ff
    rst $38                                       ; $6b87: $ff
    rst $38                                       ; $6b88: $ff
    rst $38                                       ; $6b89: $ff
    rst $38                                       ; $6b8a: $ff
    rst $38                                       ; $6b8b: $ff
    rst $38                                       ; $6b8c: $ff
    rst $38                                       ; $6b8d: $ff
    rst $38                                       ; $6b8e: $ff
    rst $38                                       ; $6b8f: $ff
    rst $38                                       ; $6b90: $ff
    rst $38                                       ; $6b91: $ff
    rst $38                                       ; $6b92: $ff
    rst $38                                       ; $6b93: $ff
    rst $38                                       ; $6b94: $ff
    rst $38                                       ; $6b95: $ff
    rst $38                                       ; $6b96: $ff
    rst $38                                       ; $6b97: $ff
    rst $38                                       ; $6b98: $ff
    rst $38                                       ; $6b99: $ff
    rst $38                                       ; $6b9a: $ff
    rst $38                                       ; $6b9b: $ff
    rst $38                                       ; $6b9c: $ff
    rst $38                                       ; $6b9d: $ff
    rst $38                                       ; $6b9e: $ff
    rst $38                                       ; $6b9f: $ff
    rst $38                                       ; $6ba0: $ff
    rst $38                                       ; $6ba1: $ff
    rst $38                                       ; $6ba2: $ff
    rst $38                                       ; $6ba3: $ff
    rst $38                                       ; $6ba4: $ff
    rst $38                                       ; $6ba5: $ff
    rst $38                                       ; $6ba6: $ff
    rst $38                                       ; $6ba7: $ff
    rst $38                                       ; $6ba8: $ff
    rst $38                                       ; $6ba9: $ff
    rst $38                                       ; $6baa: $ff
    rst $38                                       ; $6bab: $ff
    rst $38                                       ; $6bac: $ff
    rst $38                                       ; $6bad: $ff
    rst $38                                       ; $6bae: $ff
    rst $38                                       ; $6baf: $ff
    rst $38                                       ; $6bb0: $ff
    rst $38                                       ; $6bb1: $ff
    rst $38                                       ; $6bb2: $ff
    rst $38                                       ; $6bb3: $ff
    rst $38                                       ; $6bb4: $ff
    rst $38                                       ; $6bb5: $ff
    rst $38                                       ; $6bb6: $ff
    rst $38                                       ; $6bb7: $ff
    rst $38                                       ; $6bb8: $ff
    rst $38                                       ; $6bb9: $ff
    rst $38                                       ; $6bba: $ff
    rst $38                                       ; $6bbb: $ff
    rst $38                                       ; $6bbc: $ff
    rst $38                                       ; $6bbd: $ff
    rst $38                                       ; $6bbe: $ff
    rst $38                                       ; $6bbf: $ff
    rst $38                                       ; $6bc0: $ff
    rst $38                                       ; $6bc1: $ff
    rst $38                                       ; $6bc2: $ff
    rst $38                                       ; $6bc3: $ff
    rst $38                                       ; $6bc4: $ff
    rst $38                                       ; $6bc5: $ff
    rst $38                                       ; $6bc6: $ff
    rst $38                                       ; $6bc7: $ff
    rst $38                                       ; $6bc8: $ff
    rst $38                                       ; $6bc9: $ff
    rst $38                                       ; $6bca: $ff
    rst $38                                       ; $6bcb: $ff
    rst $38                                       ; $6bcc: $ff
    rst $38                                       ; $6bcd: $ff
    rst $38                                       ; $6bce: $ff
    rst $38                                       ; $6bcf: $ff
    rst $38                                       ; $6bd0: $ff
    rst $38                                       ; $6bd1: $ff
    rst $38                                       ; $6bd2: $ff
    rst $38                                       ; $6bd3: $ff
    rst $38                                       ; $6bd4: $ff
    rst $38                                       ; $6bd5: $ff
    rst $38                                       ; $6bd6: $ff
    rst $38                                       ; $6bd7: $ff
    rst $38                                       ; $6bd8: $ff
    rst $38                                       ; $6bd9: $ff
    rst $38                                       ; $6bda: $ff
    rst $38                                       ; $6bdb: $ff
    rst $38                                       ; $6bdc: $ff
    rst $38                                       ; $6bdd: $ff
    rst $38                                       ; $6bde: $ff
    rst $38                                       ; $6bdf: $ff
    rst $38                                       ; $6be0: $ff
    rst $38                                       ; $6be1: $ff
    rst $38                                       ; $6be2: $ff
    rst $38                                       ; $6be3: $ff
    rst $38                                       ; $6be4: $ff
    rst $38                                       ; $6be5: $ff
    rst $38                                       ; $6be6: $ff
    rst $38                                       ; $6be7: $ff
    rst $38                                       ; $6be8: $ff
    rst $38                                       ; $6be9: $ff
    rst $38                                       ; $6bea: $ff
    rst $38                                       ; $6beb: $ff
    rst $38                                       ; $6bec: $ff
    rst $38                                       ; $6bed: $ff
    rst $38                                       ; $6bee: $ff
    rst $38                                       ; $6bef: $ff
    rst $38                                       ; $6bf0: $ff
    rst $38                                       ; $6bf1: $ff
    rst $38                                       ; $6bf2: $ff
    rst $38                                       ; $6bf3: $ff
    rst $38                                       ; $6bf4: $ff
    rst $38                                       ; $6bf5: $ff
    rst $38                                       ; $6bf6: $ff
    rst $38                                       ; $6bf7: $ff
    rst $38                                       ; $6bf8: $ff
    rst $38                                       ; $6bf9: $ff
    rst $38                                       ; $6bfa: $ff
    rst $38                                       ; $6bfb: $ff
    rst $38                                       ; $6bfc: $ff
    rst $38                                       ; $6bfd: $ff
    rst $38                                       ; $6bfe: $ff
    rst $38                                       ; $6bff: $ff
    rst $38                                       ; $6c00: $ff
    rst $38                                       ; $6c01: $ff
    rst $38                                       ; $6c02: $ff
    rst $38                                       ; $6c03: $ff
    rst $38                                       ; $6c04: $ff
    rst $38                                       ; $6c05: $ff
    rst $38                                       ; $6c06: $ff
    rst $38                                       ; $6c07: $ff
    rst $38                                       ; $6c08: $ff
    rst $38                                       ; $6c09: $ff
    rst $38                                       ; $6c0a: $ff
    rst $38                                       ; $6c0b: $ff
    rst $38                                       ; $6c0c: $ff
    rst $38                                       ; $6c0d: $ff
    rst $38                                       ; $6c0e: $ff
    rst $38                                       ; $6c0f: $ff
    rst $38                                       ; $6c10: $ff
    rst $38                                       ; $6c11: $ff
    rst $38                                       ; $6c12: $ff
    rst $38                                       ; $6c13: $ff
    rst $38                                       ; $6c14: $ff
    rst $38                                       ; $6c15: $ff
    rst $38                                       ; $6c16: $ff
    rst $38                                       ; $6c17: $ff
    rst $38                                       ; $6c18: $ff
    rst $38                                       ; $6c19: $ff
    rst $38                                       ; $6c1a: $ff
    rst $38                                       ; $6c1b: $ff
    rst $38                                       ; $6c1c: $ff
    rst $38                                       ; $6c1d: $ff
    rst $38                                       ; $6c1e: $ff
    rst $38                                       ; $6c1f: $ff
    rst $38                                       ; $6c20: $ff
    rst $38                                       ; $6c21: $ff
    rst $38                                       ; $6c22: $ff
    rst $38                                       ; $6c23: $ff
    rst $38                                       ; $6c24: $ff
    rst $38                                       ; $6c25: $ff
    rst $38                                       ; $6c26: $ff
    rst $38                                       ; $6c27: $ff
    rst $38                                       ; $6c28: $ff
    rst $38                                       ; $6c29: $ff
    rst $38                                       ; $6c2a: $ff
    rst $38                                       ; $6c2b: $ff
    rst $38                                       ; $6c2c: $ff
    rst $38                                       ; $6c2d: $ff
    rst $38                                       ; $6c2e: $ff
    rst $38                                       ; $6c2f: $ff
    rst $38                                       ; $6c30: $ff
    rst $38                                       ; $6c31: $ff
    rst $38                                       ; $6c32: $ff
    rst $38                                       ; $6c33: $ff
    rst $38                                       ; $6c34: $ff
    rst $38                                       ; $6c35: $ff
    rst $38                                       ; $6c36: $ff
    rst $38                                       ; $6c37: $ff
    rst $38                                       ; $6c38: $ff
    rst $38                                       ; $6c39: $ff
    rst $38                                       ; $6c3a: $ff
    rst $38                                       ; $6c3b: $ff
    rst $38                                       ; $6c3c: $ff
    rst $38                                       ; $6c3d: $ff
    rst $38                                       ; $6c3e: $ff
    rst $38                                       ; $6c3f: $ff
    rst $38                                       ; $6c40: $ff
    rst $38                                       ; $6c41: $ff
    rst $38                                       ; $6c42: $ff
    rst $38                                       ; $6c43: $ff
    rst $38                                       ; $6c44: $ff
    rst $38                                       ; $6c45: $ff
    rst $38                                       ; $6c46: $ff
    rst $38                                       ; $6c47: $ff
    rst $38                                       ; $6c48: $ff
    rst $38                                       ; $6c49: $ff
    rst $38                                       ; $6c4a: $ff
    rst $38                                       ; $6c4b: $ff
    rst $38                                       ; $6c4c: $ff
    rst $38                                       ; $6c4d: $ff
    rst $38                                       ; $6c4e: $ff
    rst $38                                       ; $6c4f: $ff
    rst $38                                       ; $6c50: $ff
    rst $38                                       ; $6c51: $ff
    rst $38                                       ; $6c52: $ff
    rst $38                                       ; $6c53: $ff
    rst $38                                       ; $6c54: $ff
    rst $38                                       ; $6c55: $ff
    rst $38                                       ; $6c56: $ff
    rst $38                                       ; $6c57: $ff
    rst $38                                       ; $6c58: $ff
    rst $38                                       ; $6c59: $ff
    rst $38                                       ; $6c5a: $ff
    rst $38                                       ; $6c5b: $ff
    rst $38                                       ; $6c5c: $ff
    rst $38                                       ; $6c5d: $ff
    rst $38                                       ; $6c5e: $ff
    rst $38                                       ; $6c5f: $ff
    rst $38                                       ; $6c60: $ff
    rst $38                                       ; $6c61: $ff
    rst $38                                       ; $6c62: $ff
    rst $38                                       ; $6c63: $ff
    rst $38                                       ; $6c64: $ff
    rst $38                                       ; $6c65: $ff
    rst $38                                       ; $6c66: $ff
    rst $38                                       ; $6c67: $ff
    rst $38                                       ; $6c68: $ff
    rst $38                                       ; $6c69: $ff
    rst $38                                       ; $6c6a: $ff
    rst $38                                       ; $6c6b: $ff
    rst $38                                       ; $6c6c: $ff
    rst $38                                       ; $6c6d: $ff
    rst $38                                       ; $6c6e: $ff
    rst $38                                       ; $6c6f: $ff
    rst $38                                       ; $6c70: $ff
    rst $38                                       ; $6c71: $ff
    rst $38                                       ; $6c72: $ff
    rst $38                                       ; $6c73: $ff
    rst $38                                       ; $6c74: $ff
    rst $38                                       ; $6c75: $ff
    rst $38                                       ; $6c76: $ff
    rst $38                                       ; $6c77: $ff
    rst $38                                       ; $6c78: $ff
    rst $38                                       ; $6c79: $ff
    rst $38                                       ; $6c7a: $ff
    rst $38                                       ; $6c7b: $ff
    rst $38                                       ; $6c7c: $ff
    rst $38                                       ; $6c7d: $ff
    rst $38                                       ; $6c7e: $ff
    rst $38                                       ; $6c7f: $ff
    rst $38                                       ; $6c80: $ff
    rst $38                                       ; $6c81: $ff
    rst $38                                       ; $6c82: $ff
    rst $38                                       ; $6c83: $ff
    rst $38                                       ; $6c84: $ff
    rst $38                                       ; $6c85: $ff
    rst $38                                       ; $6c86: $ff
    rst $38                                       ; $6c87: $ff
    rst $38                                       ; $6c88: $ff
    rst $38                                       ; $6c89: $ff
    rst $38                                       ; $6c8a: $ff
    rst $38                                       ; $6c8b: $ff
    rst $38                                       ; $6c8c: $ff
    rst $38                                       ; $6c8d: $ff
    rst $38                                       ; $6c8e: $ff
    rst $38                                       ; $6c8f: $ff
    rst $38                                       ; $6c90: $ff
    rst $38                                       ; $6c91: $ff
    rst $38                                       ; $6c92: $ff
    rst $38                                       ; $6c93: $ff
    rst $38                                       ; $6c94: $ff
    rst $38                                       ; $6c95: $ff
    rst $38                                       ; $6c96: $ff
    rst $38                                       ; $6c97: $ff
    rst $38                                       ; $6c98: $ff
    rst $38                                       ; $6c99: $ff
    rst $38                                       ; $6c9a: $ff
    rst $38                                       ; $6c9b: $ff
    rst $38                                       ; $6c9c: $ff
    rst $38                                       ; $6c9d: $ff
    rst $38                                       ; $6c9e: $ff
    rst $38                                       ; $6c9f: $ff
    rst $38                                       ; $6ca0: $ff
    rst $38                                       ; $6ca1: $ff
    rst $38                                       ; $6ca2: $ff
    rst $38                                       ; $6ca3: $ff
    rst $38                                       ; $6ca4: $ff
    rst $38                                       ; $6ca5: $ff
    rst $38                                       ; $6ca6: $ff
    rst $38                                       ; $6ca7: $ff
    rst $38                                       ; $6ca8: $ff
    rst $38                                       ; $6ca9: $ff
    rst $38                                       ; $6caa: $ff
    rst $38                                       ; $6cab: $ff
    rst $38                                       ; $6cac: $ff
    rst $38                                       ; $6cad: $ff
    rst $38                                       ; $6cae: $ff
    rst $38                                       ; $6caf: $ff
    rst $38                                       ; $6cb0: $ff
    rst $38                                       ; $6cb1: $ff
    rst $38                                       ; $6cb2: $ff
    rst $38                                       ; $6cb3: $ff
    rst $38                                       ; $6cb4: $ff
    rst $38                                       ; $6cb5: $ff
    rst $38                                       ; $6cb6: $ff
    rst $38                                       ; $6cb7: $ff
    rst $38                                       ; $6cb8: $ff
    rst $38                                       ; $6cb9: $ff
    rst $38                                       ; $6cba: $ff
    rst $38                                       ; $6cbb: $ff
    rst $38                                       ; $6cbc: $ff
    rst $38                                       ; $6cbd: $ff
    rst $38                                       ; $6cbe: $ff
    rst $38                                       ; $6cbf: $ff
    rst $38                                       ; $6cc0: $ff
    rst $38                                       ; $6cc1: $ff
    rst $38                                       ; $6cc2: $ff
    rst $38                                       ; $6cc3: $ff
    rst $38                                       ; $6cc4: $ff
    rst $38                                       ; $6cc5: $ff
    rst $38                                       ; $6cc6: $ff
    rst $38                                       ; $6cc7: $ff
    rst $38                                       ; $6cc8: $ff
    rst $38                                       ; $6cc9: $ff
    rst $38                                       ; $6cca: $ff
    rst $38                                       ; $6ccb: $ff
    rst $38                                       ; $6ccc: $ff
    rst $38                                       ; $6ccd: $ff
    rst $38                                       ; $6cce: $ff
    rst $38                                       ; $6ccf: $ff
    rst $38                                       ; $6cd0: $ff
    rst $38                                       ; $6cd1: $ff
    rst $38                                       ; $6cd2: $ff
    rst $38                                       ; $6cd3: $ff
    rst $38                                       ; $6cd4: $ff
    rst $38                                       ; $6cd5: $ff
    rst $38                                       ; $6cd6: $ff
    rst $38                                       ; $6cd7: $ff
    rst $38                                       ; $6cd8: $ff
    rst $38                                       ; $6cd9: $ff
    rst $38                                       ; $6cda: $ff
    rst $38                                       ; $6cdb: $ff
    rst $38                                       ; $6cdc: $ff
    rst $38                                       ; $6cdd: $ff
    rst $38                                       ; $6cde: $ff
    rst $38                                       ; $6cdf: $ff
    rst $38                                       ; $6ce0: $ff
    rst $38                                       ; $6ce1: $ff
    rst $38                                       ; $6ce2: $ff
    rst $38                                       ; $6ce3: $ff
    rst $38                                       ; $6ce4: $ff
    rst $38                                       ; $6ce5: $ff
    rst $38                                       ; $6ce6: $ff
    rst $38                                       ; $6ce7: $ff
    rst $38                                       ; $6ce8: $ff
    rst $38                                       ; $6ce9: $ff
    rst $38                                       ; $6cea: $ff
    rst $38                                       ; $6ceb: $ff
    rst $38                                       ; $6cec: $ff
    rst $38                                       ; $6ced: $ff
    rst $38                                       ; $6cee: $ff
    rst $38                                       ; $6cef: $ff
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
