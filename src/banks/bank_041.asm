; Disassembly of "mgolf.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $041", ROMX[$4000], BANK[$41]

    ld a, [hl+]                                   ; $4000: $2a
    ld b, b                                       ; $4001: $40
    db $f4                                        ; $4002: $f4
    ld l, a                                       ; $4003: $6f

    db $7c, $70

    ld c, c                                       ; $4006: $49
    ld l, [hl]                                    ; $4007: $6e
    ld l, [hl]                                    ; $4008: $6e
    ld l, [hl]                                    ; $4009: $6e

    db $96, $6e

    cp e                                          ; $400c: $bb
    ld l, [hl]                                    ; $400d: $6e
    ldh [$6e], a                                  ; $400e: $e0 $6e

    db $08, $6f

    jr nc, jr_041_4083                            ; $4012: $30 $6f

    db $55, $6f

    ld a, d                                       ; $4016: $7a
    ld l, a                                       ; $4017: $6f
    sbc a                                         ; $4018: $9f
    ld l, a                                       ; $4019: $6f
    call nz, $b36f                                ; $401a: $c4 $6f $b3
    ld a, l                                       ; $401d: $7d
    db $f4                                        ; $401e: $f4
    ld a, l                                       ; $401f: $7d
    ld [$0677], a                                 ; $4020: $ea $77 $06
    ld h, l                                       ; $4023: $65

    db $84, $67

    rlca                                          ; $4026: $07
    ld a, [hl]                                    ; $4027: $7e

    db $b4, $7b

    rst $18                                       ; $402a: $df
    inc h                                         ; $402b: $24
    ld [bc], a                                    ; $402c: $02
    ret nz                                        ; $402d: $c0

    call Call_000_23b6                            ; $402e: $cd $b6 $23
    rst $18                                       ; $4031: $df
    ld a, [bc]                                    ; $4032: $0a
    ld bc, $00df                                  ; $4033: $01 $df $00
    dec b                                         ; $4036: $05
    call Call_000_0341                            ; $4037: $cd $41 $03
    xor a                                         ; $403a: $af
    ldh [$8b], a                                  ; $403b: $e0 $8b
    ldh [$8a], a                                  ; $403d: $e0 $8a
    ld [$c320], a                                 ; $403f: $ea $20 $c3
    ld [$c321], a                                 ; $4042: $ea $21 $c3
    ld [$c322], a                                 ; $4045: $ea $22 $c3
    ld [$c323], a                                 ; $4048: $ea $23 $c3
    ld a, $90                                     ; $404b: $3e $90
    ldh [rWY], a                                  ; $404d: $e0 $4a
    call Call_000_2683                            ; $404f: $cd $83 $26
    call Call_041_5669                            ; $4052: $cd $69 $56
    call Call_041_4366                            ; $4055: $cd $66 $43
    call Call_041_48f4                            ; $4058: $cd $f4 $48
    xor a                                         ; $405b: $af
    call Call_041_49ed                            ; $405c: $cd $ed $49
    call Call_041_43c0                            ; $405f: $cd $c0 $43
    call Call_041_446d                            ; $4062: $cd $6d $44
    call Call_041_508c                            ; $4065: $cd $8c $50
    call Call_000_04de                            ; $4068: $cd $de $04
    rst $18                                       ; $406b: $df
    inc b                                         ; $406c: $04
    ld b, d                                       ; $406d: $42
    call Call_000_04de                            ; $406e: $cd $de $04
    xor a                                         ; $4071: $af
    call Call_041_4bab                            ; $4072: $cd $ab $4b
    call Call_041_4cc1                            ; $4075: $cd $c1 $4c
    ld a, [$c82d]                                 ; $4078: $fa $2d $c8
    set 7, a                                      ; $407b: $cb $ff
    ld [$c82d], a                                 ; $407d: $ea $2d $c8
    call Call_041_4c4a                            ; $4080: $cd $4a $4c

jr_041_4083:
    call Call_041_51e4                            ; $4083: $cd $e4 $51
    call Call_000_04de                            ; $4086: $cd $de $04
    call Call_000_0371                            ; $4089: $cd $71 $03
    ld a, $03                                     ; $408c: $3e $03
    ld hl, $4dfc                                  ; $408e: $21 $fc $4d
    call Call_000_23e8                            ; $4091: $cd $e8 $23
    ld a, $04                                     ; $4094: $3e $04
    ld hl, $50b3                                  ; $4096: $21 $b3 $50
    call Call_000_23e8                            ; $4099: $cd $e8 $23
    ld a, $05                                     ; $409c: $3e $05
    ld hl, $5088                                  ; $409e: $21 $88 $50
    call Call_000_23e8                            ; $40a1: $cd $e8 $23
    ld a, $02                                     ; $40a4: $3e $02
    ld hl, $4d2f                                  ; $40a6: $21 $2f $4d
    call Call_000_23e8                            ; $40a9: $cd $e8 $23
    ld a, $01                                     ; $40ac: $3e $01
    ld hl, $4cd1                                  ; $40ae: $21 $d1 $4c
    call Call_000_23e8                            ; $40b1: $cd $e8 $23
    ld a, $01                                     ; $40b4: $3e $01
    ld hl, $4d79                                  ; $40b6: $21 $79 $4d
    call Call_000_23e8                            ; $40b9: $cd $e8 $23
    ld a, $01                                     ; $40bc: $3e $01
    ld hl, $53b8                                  ; $40be: $21 $b8 $53
    call Call_000_23e8                            ; $40c1: $cd $e8 $23
    ld a, $01                                     ; $40c4: $3e $01
    ld hl, $5694                                  ; $40c6: $21 $94 $56
    call Call_000_23e8                            ; $40c9: $cd $e8 $23
    rst $08                                       ; $40cc: $cf
    nop                                           ; $40cd: $00
    rst $08                                       ; $40ce: $cf
    dec de                                        ; $40cf: $1b
    ld c, $10                                     ; $40d0: $0e $10
    call Call_000_258d                            ; $40d2: $cd $8d $25
    call Call_000_2625                            ; $40d5: $cd $25 $26
    jr jr_041_40e0                                ; $40d8: $18 $06

Jump_041_40da:
    call Call_041_508c                            ; $40da: $cd $8c $50
    call Call_041_51e4                            ; $40dd: $cd $e4 $51

Jump_041_40e0:
jr_041_40e0:
    ld a, [$d4a4]                                 ; $40e0: $fa $a4 $d4
    and a                                         ; $40e3: $a7
    jr z, jr_041_412f                             ; $40e4: $28 $49

    call Call_041_42fa                            ; $40e6: $cd $fa $42
    call Call_041_50d2                            ; $40e9: $cd $d2 $50
    call Call_000_2e3b                            ; $40ec: $cd $3b $2e
    ld a, $06                                     ; $40ef: $3e $06
    ldh [$96], a                                  ; $40f1: $e0 $96
    ldh [rSVBK], a                                ; $40f3: $e0 $70
    ld hl, $d4a0                                  ; $40f5: $21 $a0 $d4
    ld a, [hl]                                    ; $40f8: $7e
    cp $00                                        ; $40f9: $fe $00
    jr nz, jr_041_40e0                            ; $40fb: $20 $e3

    ldh a, [$94]                                  ; $40fd: $f0 $94
    and a                                         ; $40ff: $a7
    jr z, jr_041_4105                             ; $4100: $28 $03

    ld [$d633], a                                 ; $4102: $ea $33 $d6

jr_041_4105:
    ld a, [$d551]                                 ; $4105: $fa $51 $d5
    and a                                         ; $4108: $a7
    jr nz, jr_041_40e0                            ; $4109: $20 $d5

    ld a, [$d548]                                 ; $410b: $fa $48 $d5
    and a                                         ; $410e: $a7
    jr nz, jr_041_40e0                            ; $410f: $20 $cf

    ld a, $06                                     ; $4111: $3e $06
    ldh [$96], a                                  ; $4113: $e0 $96
    ldh [rSVBK], a                                ; $4115: $e0 $70
    ld a, [$d633]                                 ; $4117: $fa $33 $d6
    bit 6, a                                      ; $411a: $cb $77
    jr nz, jr_041_4135                            ; $411c: $20 $17

    bit 7, a                                      ; $411e: $cb $7f
    jr nz, jr_041_4171                            ; $4120: $20 $4f

    bit 0, a                                      ; $4122: $cb $47
    jp nz, Jump_041_41ad                          ; $4124: $c2 $ad $41

    bit 1, a                                      ; $4127: $cb $4f
    jp nz, Jump_041_4288                          ; $4129: $c2 $88 $42

    jp Jump_041_40e0                              ; $412c: $c3 $e0 $40


jr_041_412f:
    call Call_000_2e3b                            ; $412f: $cd $3b $2e
    jp Jump_041_40e0                              ; $4132: $c3 $e0 $40


jr_041_4135:
    ld a, $06                                     ; $4135: $3e $06
    ldh [$96], a                                  ; $4137: $e0 $96
    ldh [rSVBK], a                                ; $4139: $e0 $70
    xor a                                         ; $413b: $af
    ld [$d633], a                                 ; $413c: $ea $33 $d6
    ld a, [$d632]                                 ; $413f: $fa $32 $d6
    cp $02                                        ; $4142: $fe $02
    jr z, jr_041_415f                             ; $4144: $28 $19

    cp $01                                        ; $4146: $fe $01
    jr z, jr_041_414d                             ; $4148: $28 $03

    jp Jump_041_40e0                              ; $414a: $c3 $e0 $40


jr_041_414d:
    rst $08                                       ; $414d: $cf
    ld e, e                                       ; $414e: $5b
    ld hl, $d630                                  ; $414f: $21 $30 $d6
    ld a, [hl]                                    ; $4152: $7e
    dec a                                         ; $4153: $3d
    and $03                                       ; $4154: $e6 $03
    ld [hl], a                                    ; $4156: $77
    ld hl, $d631                                  ; $4157: $21 $31 $d6
    ld [hl], $1f                                  ; $415a: $36 $1f
    jp Jump_041_40da                              ; $415c: $c3 $da $40


jr_041_415f:
    rst $08                                       ; $415f: $cf
    ld e, e                                       ; $4160: $5b
    ld hl, $d40a                                  ; $4161: $21 $0a $d4
    ld a, [hl]                                    ; $4164: $7e
    dec a                                         ; $4165: $3d
    and $01                                       ; $4166: $e6 $01
    ld [hl], a                                    ; $4168: $77
    ld hl, $d631                                  ; $4169: $21 $31 $d6
    ld [hl], $1f                                  ; $416c: $36 $1f
    jp Jump_041_40e0                              ; $416e: $c3 $e0 $40


jr_041_4171:
    ld a, $06                                     ; $4171: $3e $06
    ldh [$96], a                                  ; $4173: $e0 $96
    ldh [rSVBK], a                                ; $4175: $e0 $70
    xor a                                         ; $4177: $af
    ld [$d633], a                                 ; $4178: $ea $33 $d6
    ld a, [$d632]                                 ; $417b: $fa $32 $d6
    cp $02                                        ; $417e: $fe $02
    jr z, jr_041_419b                             ; $4180: $28 $19

    cp $01                                        ; $4182: $fe $01
    jr z, jr_041_4189                             ; $4184: $28 $03

    jp Jump_041_40e0                              ; $4186: $c3 $e0 $40


jr_041_4189:
    rst $08                                       ; $4189: $cf
    ld e, e                                       ; $418a: $5b
    ld hl, $d630                                  ; $418b: $21 $30 $d6
    ld a, [hl]                                    ; $418e: $7e
    inc a                                         ; $418f: $3c
    and $03                                       ; $4190: $e6 $03
    ld [hl], a                                    ; $4192: $77
    ld hl, $d631                                  ; $4193: $21 $31 $d6
    ld [hl], $1f                                  ; $4196: $36 $1f
    jp Jump_041_40da                              ; $4198: $c3 $da $40


jr_041_419b:
    rst $08                                       ; $419b: $cf
    ld e, e                                       ; $419c: $5b
    ld hl, $d40a                                  ; $419d: $21 $0a $d4
    ld a, [hl]                                    ; $41a0: $7e
    inc a                                         ; $41a1: $3c
    and $01                                       ; $41a2: $e6 $01
    ld [hl], a                                    ; $41a4: $77
    ld hl, $d631                                  ; $41a5: $21 $31 $d6
    ld [hl], $1f                                  ; $41a8: $36 $1f
    jp Jump_041_40e0                              ; $41aa: $c3 $e0 $40


Jump_041_41ad:
    ld a, $06                                     ; $41ad: $3e $06
    ldh [$96], a                                  ; $41af: $e0 $96
    ldh [rSVBK], a                                ; $41b1: $e0 $70
    xor a                                         ; $41b3: $af
    ld [$d633], a                                 ; $41b4: $ea $33 $d6
    ld a, [$d632]                                 ; $41b7: $fa $32 $d6
    cp $02                                        ; $41ba: $fe $02
    jp z, Jump_041_422e                           ; $41bc: $ca $2e $42

    cp $01                                        ; $41bf: $fe $01
    jr z, jr_041_41cd                             ; $41c1: $28 $0a

    rst $08                                       ; $41c3: $cf
    ld e, h                                       ; $41c4: $5c
    ld a, $01                                     ; $41c5: $3e $01
    ld [$d632], a                                 ; $41c7: $ea $32 $d6
    jp Jump_041_40da                              ; $41ca: $c3 $da $40


jr_041_41cd:
    rst $08                                       ; $41cd: $cf
    ld e, h                                       ; $41ce: $5c
    ld a, [$d630]                                 ; $41cf: $fa $30 $d6
    ld d, a                                       ; $41d2: $57
    rst $18                                       ; $41d3: $df
    jr @+$04                                      ; $41d4: $18 $02

    call Call_041_5383                            ; $41d6: $cd $83 $53
    ld a, $06                                     ; $41d9: $3e $06
    ldh [$96], a                                  ; $41db: $e0 $96
    ldh [rSVBK], a                                ; $41dd: $e0 $70
    ld hl, $d43c                                  ; $41df: $21 $3c $d4
    ld a, [hl]                                    ; $41e2: $7e
    dec a                                         ; $41e3: $3d
    ld [hl], a                                    ; $41e4: $77
    and a                                         ; $41e5: $a7
    jr z, jr_041_4206                             ; $41e6: $28 $1e

    ld a, [$d4d1]                                 ; $41e8: $fa $d1 $d4
    ld hl, $d4d2                                  ; $41eb: $21 $d2 $d4
    add l                                         ; $41ee: $85
    ld l, a                                       ; $41ef: $6f
    jr nc, jr_041_41f3                            ; $41f0: $30 $01

    inc h                                         ; $41f2: $24

jr_041_41f3:
    ld a, [$d630]                                 ; $41f3: $fa $30 $d6
    ld [hl], a                                    ; $41f6: $77
    ld hl, $d4d1                                  ; $41f7: $21 $d1 $d4
    inc [hl]                                      ; $41fa: $34
    xor a                                         ; $41fb: $af
    call Call_041_49ed                            ; $41fc: $cd $ed $49
    xor a                                         ; $41ff: $af
    ld [$d632], a                                 ; $4200: $ea $32 $d6
    jp Jump_041_40da                              ; $4203: $c3 $da $40


jr_041_4206:
    ld a, $02                                     ; $4206: $3e $02
    ld [$d632], a                                 ; $4208: $ea $32 $d6
    ld hl, $4dfc                                  ; $420b: $21 $fc $4d
    call Call_000_2449                            ; $420e: $cd $49 $24
    ld hl, $4d79                                  ; $4211: $21 $79 $4d
    call Call_000_2449                            ; $4214: $cd $49 $24
    ld hl, $53b8                                  ; $4217: $21 $b8 $53
    call Call_000_2449                            ; $421a: $cd $49 $24
    ld hl, $4d2f                                  ; $421d: $21 $2f $4d
    call Call_000_2449                            ; $4220: $cd $49 $24
    ld a, $01                                     ; $4223: $3e $01
    ld hl, $4328                                  ; $4225: $21 $28 $43
    call Call_000_23e8                            ; $4228: $cd $e8 $23
    jp Jump_041_40da                              ; $422b: $c3 $da $40


Jump_041_422e:
    rst $08                                       ; $422e: $cf
    ld e, h                                       ; $422f: $5c
    ld a, [$d40a]                                 ; $4230: $fa $0a $d4
    and a                                         ; $4233: $a7
    jp nz, Jump_041_54ca                          ; $4234: $c2 $ca $54

    ld a, $02                                     ; $4237: $3e $02
    ld hl, $4d2f                                  ; $4239: $21 $2f $4d
    call Call_000_23e8                            ; $423c: $cd $e8 $23
    call Call_000_2e3b                            ; $423f: $cd $3b $2e
    ld a, $03                                     ; $4242: $3e $03
    ld [$d632], a                                 ; $4244: $ea $32 $d6
    call Call_041_51e4                            ; $4247: $cd $e4 $51
    call Call_041_42b4                            ; $424a: $cd $b4 $42
    ld a, [$c82d]                                 ; $424d: $fa $2d $c8
    res 7, a                                      ; $4250: $cb $bf
    ld [$c82d], a                                 ; $4252: $ea $2d $c8
    ld c, $10                                     ; $4255: $0e $10
    call Call_000_25a1                            ; $4257: $cd $a1 $25
    call Call_000_2625                            ; $425a: $cd $25 $26
    ld hl, $50b3                                  ; $425d: $21 $b3 $50
    call Call_000_2449                            ; $4260: $cd $49 $24
    ld hl, $5088                                  ; $4263: $21 $88 $50
    call Call_000_2449                            ; $4266: $cd $49 $24
    ld hl, $4d2f                                  ; $4269: $21 $2f $4d
    call Call_000_2449                            ; $426c: $cd $49 $24
    ld hl, $5694                                  ; $426f: $21 $94 $56
    call Call_000_2449                            ; $4272: $cd $49 $24
    ld hl, $4cd1                                  ; $4275: $21 $d1 $4c
    call Call_000_2449                            ; $4278: $cd $49 $24
    ld hl, $4328                                  ; $427b: $21 $28 $43
    call Call_000_2449                            ; $427e: $cd $49 $24
    rst $18                                       ; $4281: $df
    ld a, [bc]                                    ; $4282: $0a
    ld bc, $3bcd                                  ; $4283: $01 $cd $3b
    ld l, $c9                                     ; $4286: $2e $c9

Jump_041_4288:
    ld a, $06                                     ; $4288: $3e $06
    ldh [$96], a                                  ; $428a: $e0 $96
    ldh [rSVBK], a                                ; $428c: $e0 $70
    xor a                                         ; $428e: $af
    ld [$d633], a                                 ; $428f: $ea $33 $d6
    ld a, [$d632]                                 ; $4292: $fa $32 $d6
    cp $02                                        ; $4295: $fe $02
    jr z, jr_041_42af                             ; $4297: $28 $16

    cp $01                                        ; $4299: $fe $01
    jr z, jr_041_42a3                             ; $429b: $28 $06

    call Call_041_550c                            ; $429d: $cd $0c $55
    jp Jump_041_40da                              ; $42a0: $c3 $da $40


jr_041_42a3:
    rst $08                                       ; $42a3: $cf
    ld e, l                                       ; $42a4: $5d
    xor a                                         ; $42a5: $af
    ld [$d632], a                                 ; $42a6: $ea $32 $d6
    call Call_041_5383                            ; $42a9: $cd $83 $53
    jp Jump_041_40da                              ; $42ac: $c3 $da $40


jr_041_42af:
    rst $08                                       ; $42af: $cf
    ld e, l                                       ; $42b0: $5d
    jp Jump_041_54ca                              ; $42b1: $c3 $ca $54


Call_041_42b4:
    ld a, $06                                     ; $42b4: $3e $06
    ldh [$96], a                                  ; $42b6: $e0 $96
    ldh [rSVBK], a                                ; $42b8: $e0 $70
    ld a, $00                                     ; $42ba: $3e $00
    ld [$d5a4], a                                 ; $42bc: $ea $a4 $d5
    ld a, $01                                     ; $42bf: $3e $01
    ld [$d54b], a                                 ; $42c1: $ea $4b $d5

jr_041_42c4:
    call Call_000_2e3b                            ; $42c4: $cd $3b $2e
    ldh a, [$94]                                  ; $42c7: $f0 $94
    bit 0, a                                      ; $42c9: $cb $47
    jr nz, jr_041_42d8                            ; $42cb: $20 $0b

    ld a, [$d5a4]                                 ; $42cd: $fa $a4 $d5
    dec a                                         ; $42d0: $3d
    ld [$d5a4], a                                 ; $42d1: $ea $a4 $d5
    jr z, jr_041_42d8                             ; $42d4: $28 $02

    jr jr_041_42c4                                ; $42d6: $18 $ec

jr_041_42d8:
    ret                                           ; $42d8: $c9


    push af                                       ; $42d9: $f5
    push hl                                       ; $42da: $e5
    ld b, a                                       ; $42db: $47
    ld a, $05                                     ; $42dc: $3e $05
    ldh [$96], a                                  ; $42de: $e0 $96
    ldh [rSVBK], a                                ; $42e0: $e0 $70
    ld a, [$d852]                                 ; $42e2: $fa $52 $d8
    ld l, a                                       ; $42e5: $6f
    ld a, [$d853]                                 ; $42e6: $fa $53 $d8
    ld h, a                                       ; $42e9: $67
    ld a, b                                       ; $42ea: $78
    rst $18                                       ; $42eb: $df
    ld c, b                                       ; $42ec: $48
    dec b                                         ; $42ed: $05
    inc hl                                        ; $42ee: $23
    ld a, l                                       ; $42ef: $7d
    ld [$d852], a                                 ; $42f0: $ea $52 $d8
    ld a, h                                       ; $42f3: $7c
    ld [$d853], a                                 ; $42f4: $ea $53 $d8
    pop hl                                        ; $42f7: $e1
    pop af                                        ; $42f8: $f1
    ret                                           ; $42f9: $c9


Call_041_42fa:
    ld a, $06                                     ; $42fa: $3e $06
    ldh [$96], a                                  ; $42fc: $e0 $96
    ldh [rSVBK], a                                ; $42fe: $e0 $70
    ld a, [$d632]                                 ; $4300: $fa $32 $d6
    dec a                                         ; $4303: $3d
    ret nz                                        ; $4304: $c0

    ld a, [$d631]                                 ; $4305: $fa $31 $d6
    sub $10                                       ; $4308: $d6 $10
    jr c, jr_041_4324                             ; $430a: $38 $18

    ld hl, $d630                                  ; $430c: $21 $30 $d6
    ld a, [hl]                                    ; $430f: $7e
    inc a                                         ; $4310: $3c
    ld de, $d400                                  ; $4311: $11 $00 $d4

jr_041_4314:
    inc de                                        ; $4314: $13
    dec a                                         ; $4315: $3d
    jr nz, jr_041_4314                            ; $4316: $20 $fc

    dec de                                        ; $4318: $1b
    ld h, d                                       ; $4319: $62
    ld l, e                                       ; $431a: $6b
    ld d, $28                                     ; $431b: $16 $28
    ld e, [hl]                                    ; $431d: $5e
    ld bc, $0430                                  ; $431e: $01 $30 $04
    call Call_000_2798                            ; $4321: $cd $98 $27

jr_041_4324:
    call Call_041_4357                            ; $4324: $cd $57 $43
    ret                                           ; $4327: $c9


    ld a, $06                                     ; $4328: $3e $06
    ldh [$96], a                                  ; $432a: $e0 $96
    ldh [rSVBK], a                                ; $432c: $e0 $70
    ld a, [$d632]                                 ; $432e: $fa $32 $d6
    cp $02                                        ; $4331: $fe $02
    ret nz                                        ; $4333: $c0

    ld a, [$d631]                                 ; $4334: $fa $31 $d6
    sub $10                                       ; $4337: $d6 $10
    jr c, jr_041_4353                             ; $4339: $38 $18

    ld hl, $d40a                                  ; $433b: $21 $0a $d4
    ld a, [hl]                                    ; $433e: $7e
    inc a                                         ; $433f: $3c
    ld de, $d408                                  ; $4340: $11 $08 $d4

jr_041_4343:
    inc de                                        ; $4343: $13
    dec a                                         ; $4344: $3d
    jr nz, jr_041_4343                            ; $4345: $20 $fc

    dec de                                        ; $4347: $1b
    ld h, d                                       ; $4348: $62
    ld l, e                                       ; $4349: $6b
    ld d, $0a                                     ; $434a: $16 $0a
    ld e, [hl]                                    ; $434c: $5e
    ld bc, $0230                                  ; $434d: $01 $30 $02
    call Call_000_2798                            ; $4350: $cd $98 $27

jr_041_4353:
    call Call_041_4357                            ; $4353: $cd $57 $43
    ret                                           ; $4356: $c9


Call_041_4357:
    ld a, $06                                     ; $4357: $3e $06
    ldh [$96], a                                  ; $4359: $e0 $96
    ldh [rSVBK], a                                ; $435b: $e0 $70
    ld hl, $d631                                  ; $435d: $21 $31 $d6
    ld a, [hl]                                    ; $4360: $7e
    dec a                                         ; $4361: $3d
    and $1f                                       ; $4362: $e6 $1f
    ld [hl], a                                    ; $4364: $77
    ret                                           ; $4365: $c9


Call_041_4366:
    ld a, $06                                     ; $4366: $3e $06
    ldh [$96], a                                  ; $4368: $e0 $96
    ldh [rSVBK], a                                ; $436a: $e0 $70
    ld hl, $d400                                  ; $436c: $21 $00 $d4
    ld [hl], $1b                                  ; $436f: $36 $1b
    inc hl                                        ; $4371: $23
    ld [hl], $2b                                  ; $4372: $36 $2b
    inc hl                                        ; $4374: $23
    ld [hl], $43                                  ; $4375: $36 $43
    inc hl                                        ; $4377: $23
    ld [hl], $5d                                  ; $4378: $36 $5d
    inc hl                                        ; $437a: $23
    ld [hl], $00                                  ; $437b: $36 $00
    inc hl                                        ; $437d: $23
    ld [hl], $00                                  ; $437e: $36 $00
    inc hl                                        ; $4380: $23
    ld [hl], $00                                  ; $4381: $36 $00
    inc hl                                        ; $4383: $23
    ld [hl], $00                                  ; $4384: $36 $00
    inc hl                                        ; $4386: $23
    ld [hl], $24                                  ; $4387: $36 $24
    inc hl                                        ; $4389: $23
    ld [hl], $34                                  ; $438a: $36 $34
    inc hl                                        ; $438c: $23
    ld [hl], $00                                  ; $438d: $36 $00
    ld hl, $d4a0                                  ; $438f: $21 $a0 $d4
    ld [hl], $01                                  ; $4392: $36 $01
    inc hl                                        ; $4394: $23
    ld [hl], $28                                  ; $4395: $36 $28
    inc hl                                        ; $4397: $23
    ld hl, $d4a4                                  ; $4398: $21 $a4 $d4
    ld [hl], $00                                  ; $439b: $36 $00
    inc hl                                        ; $439d: $23
    ld [hl], $1e                                  ; $439e: $36 $1e
    inc hl                                        ; $43a0: $23
    ld a, [$6463]                                 ; $43a1: $fa $63 $64
    ld [hl], a                                    ; $43a4: $77
    inc hl                                        ; $43a5: $23
    ld [hl], $00                                  ; $43a6: $36 $00
    ld hl, $d630                                  ; $43a8: $21 $30 $d6
    ld [hl], $00                                  ; $43ab: $36 $00
    inc hl                                        ; $43ad: $23
    ld [hl], $1f                                  ; $43ae: $36 $1f
    inc hl                                        ; $43b0: $23
    ld [hl], $00                                  ; $43b1: $36 $00
    ld hl, $d4a2                                  ; $43b3: $21 $a2 $d4
    ld [hl], $38                                  ; $43b6: $36 $38
    inc hl                                        ; $43b8: $23
    ld [hl], $40                                  ; $43b9: $36 $40
    xor a                                         ; $43bb: $af
    ld [$d5ae], a                                 ; $43bc: $ea $ae $d5
    ret                                           ; $43bf: $c9


Call_041_43c0:
    ld a, $01                                     ; $43c0: $3e $01
    ldh [$96], a                                  ; $43c2: $e0 $96
    ldh [rSVBK], a                                ; $43c4: $e0 $70
    ld hl, $5943                                  ; $43c6: $21 $43 $59
    ld de, $0901                                  ; $43c9: $11 $01 $09
    call Call_000_0595                            ; $43cc: $cd $95 $05
    ld hl, $5950                                  ; $43cf: $21 $50 $59
    ld de, $d000                                  ; $43d2: $11 $00 $d0
    call Call_000_1f2f                            ; $43d5: $cd $2f $1f
    ld hl, $d000                                  ; $43d8: $21 $00 $d0
    ld de, $8300                                  ; $43db: $11 $00 $83
    ld c, $16                                     ; $43de: $0e $16
    call Call_000_04db                            ; $43e0: $cd $db $04
    ld hl, $5b1a                                  ; $43e3: $21 $1a $5b
    ld de, $0f01                                  ; $43e6: $11 $01 $0f
    call Call_000_0595                            ; $43e9: $cd $95 $05
    ld hl, $5a08                                  ; $43ec: $21 $08 $5a
    ld de, $0d01                                  ; $43ef: $11 $01 $0d
    call Call_000_0595                            ; $43f2: $cd $95 $05
    ld hl, $5a10                                  ; $43f5: $21 $10 $5a
    ld de, $d000                                  ; $43f8: $11 $00 $d0
    call Call_000_1f2f                            ; $43fb: $cd $2f $1f
    ld hl, $d000                                  ; $43fe: $21 $00 $d0
    ld de, $8460                                  ; $4401: $11 $60 $84
    ld c, $14                                     ; $4404: $0e $14
    call Call_000_04db                            ; $4406: $cd $db $04
    ld hl, $5aa7                                  ; $4409: $21 $a7 $5a
    ld de, $d000                                  ; $440c: $11 $00 $d0
    call Call_000_1f2f                            ; $440f: $cd $2f $1f
    ld hl, $d000                                  ; $4412: $21 $00 $d0
    ld de, $85a0                                  ; $4415: $11 $a0 $85
    ld c, $04                                     ; $4418: $0e $04
    call Call_000_04db                            ; $441a: $cd $db $04
    ld hl, $5acb                                  ; $441d: $21 $cb $5a
    ld de, $d000                                  ; $4420: $11 $00 $d0
    call Call_000_1f2f                            ; $4423: $cd $2f $1f
    ld hl, $d000                                  ; $4426: $21 $00 $d0
    ld de, $82c0                                  ; $4429: $11 $c0 $82
    ld c, $04                                     ; $442c: $0e $04
    call Call_000_04db                            ; $442e: $cd $db $04
    ld a, $06                                     ; $4431: $3e $06
    ldh [$96], a                                  ; $4433: $e0 $96
    ldh [rSVBK], a                                ; $4435: $e0 $70
    ld hl, $d442                                  ; $4437: $21 $42 $d4
    ld [hl], $1c                                  ; $443a: $36 $1c
    inc hl                                        ; $443c: $23
    ld [hl], $2f                                  ; $443d: $36 $2f
    inc hl                                        ; $443f: $23
    ld [hl], $23                                  ; $4440: $36 $23
    inc hl                                        ; $4442: $23
    ld [hl], $31                                  ; $4443: $36 $31
    inc hl                                        ; $4445: $23
    ld [hl], $23                                  ; $4446: $36 $23
    inc hl                                        ; $4448: $23
    ld [hl], $46                                  ; $4449: $36 $46
    inc hl                                        ; $444b: $23
    ld [hl], $1c                                  ; $444c: $36 $1c
    inc hl                                        ; $444e: $23
    ld [hl], $48                                  ; $444f: $36 $48
    inc hl                                        ; $4451: $23
    ld [hl], $0d                                  ; $4452: $36 $0d
    inc hl                                        ; $4454: $23
    ld [hl], $48                                  ; $4455: $36 $48
    inc hl                                        ; $4457: $23
    ld [hl], $07                                  ; $4458: $36 $07
    inc hl                                        ; $445a: $23
    ld [hl], $46                                  ; $445b: $36 $46
    inc hl                                        ; $445d: $23
    ld [hl], $07                                  ; $445e: $36 $07
    inc hl                                        ; $4460: $23
    ld [hl], $31                                  ; $4461: $36 $31
    inc hl                                        ; $4463: $23
    ld [hl], $0d                                  ; $4464: $36 $0d
    inc hl                                        ; $4466: $23
    ld [hl], $2f                                  ; $4467: $36 $2f
    inc hl                                        ; $4469: $23
    ld [hl], $00                                  ; $446a: $36 $00
    ret                                           ; $446c: $c9


Call_041_446d:
    ld a, $01                                     ; $446d: $3e $01
    ldh [$96], a                                  ; $446f: $e0 $96
    ldh [rSVBK], a                                ; $4471: $e0 $70
    ld hl, $5d80                                  ; $4473: $21 $80 $5d
    ld de, $d000                                  ; $4476: $11 $00 $d0
    call Call_000_1f2f                            ; $4479: $cd $2f $1f
    ld hl, $621a                                  ; $447c: $21 $1a $62
    ld de, $d1e0                                  ; $447f: $11 $e0 $d1
    call Call_000_1f2f                            ; $4482: $cd $2f $1f
    ld hl, $6190                                  ; $4485: $21 $90 $61
    ld de, $d2a0                                  ; $4488: $11 $a0 $d2
    call Call_000_1f2f                            ; $448b: $cd $2f $1f
    ld hl, $61d5                                  ; $448e: $21 $d5 $61
    ld de, $d300                                  ; $4491: $11 $00 $d3
    call Call_000_1f2f                            ; $4494: $cd $2f $1f
    ld hl, $625d                                  ; $4497: $21 $5d $62
    ld de, $d3c0                                  ; $449a: $11 $c0 $d3
    call Call_000_1f2f                            ; $449d: $cd $2f $1f
    ld hl, $6339                                  ; $44a0: $21 $39 $63
    ld de, $d420                                  ; $44a3: $11 $20 $d4
    call Call_000_1f2f                            ; $44a6: $cd $2f $1f
    ld hl, $5d00                                  ; $44a9: $21 $00 $5d
    ld de, $d4c0                                  ; $44ac: $11 $c0 $d4
    call Call_000_1f2f                            ; $44af: $cd $2f $1f
    ld hl, $5d15                                  ; $44b2: $21 $15 $5d
    ld de, $d590                                  ; $44b5: $11 $90 $d5
    call Call_000_1f2f                            ; $44b8: $cd $2f $1f
    ld hl, $d000                                  ; $44bb: $21 $00 $d0
    ld de, $b000                                  ; $44be: $11 $00 $b0
    ld c, $63                                     ; $44c1: $0e $63
    call Call_000_04db                            ; $44c3: $cd $db $04
    ld hl, $62a0                                  ; $44c6: $21 $a0 $62
    ld de, $d000                                  ; $44c9: $11 $00 $d0
    call Call_000_1f2f                            ; $44cc: $cd $2f $1f
    ld hl, $62f8                                  ; $44cf: $21 $f8 $62
    ld de, $d080                                  ; $44d2: $11 $80 $d0
    call Call_000_1f2f                            ; $44d5: $cd $2f $1f
    ld hl, $d000                                  ; $44d8: $21 $00 $d0
    ld de, $b630                                  ; $44db: $11 $30 $b6
    ld c, $0e                                     ; $44de: $0e $0e
    call Call_000_04db                            ; $44e0: $cd $db $04
    ld hl, $5eb0                                  ; $44e3: $21 $b0 $5e
    ld de, $d4d0                                  ; $44e6: $11 $d0 $d4
    call Call_000_1f2f                            ; $44e9: $cd $2f $1f
    ld hl, $d4d0                                  ; $44ec: $21 $d0 $d4
    ld de, $a800                                  ; $44ef: $11 $00 $a8
    ld c, $38                                     ; $44f2: $0e $38
    call Call_000_04db                            ; $44f4: $cd $db $04
    ld hl, $637d                                  ; $44f7: $21 $7d $63
    ld de, $d000                                  ; $44fa: $11 $00 $d0
    call Call_000_1f2f                            ; $44fd: $cd $2f $1f
    ld hl, $d000                                  ; $4500: $21 $00 $d0
    ld de, $8000                                  ; $4503: $11 $00 $80
    ld c, $06                                     ; $4506: $0e $06
    call Call_000_04db                            ; $4508: $cd $db $04
    ld a, $02                                     ; $450b: $3e $02
    ldh [$96], a                                  ; $450d: $e0 $96
    ldh [rSVBK], a                                ; $450f: $e0 $70
    ld bc, $1000                                  ; $4511: $01 $00 $10
    ld d, $01                                     ; $4514: $16 $01
    ld hl, $d000                                  ; $4516: $21 $00 $d0
    call Call_041_48e5                            ; $4519: $cd $e5 $48
    ld hl, $d0d0                                  ; $451c: $21 $d0 $d0
    ld d, $09                                     ; $451f: $16 $09
    ld bc, $0003                                  ; $4521: $01 $03 $00
    call Call_041_48e5                            ; $4524: $cd $e5 $48
    ld hl, $d0f0                                  ; $4527: $21 $f0 $d0
    ld bc, $0003                                  ; $452a: $01 $03 $00
    call Call_041_48e5                            ; $452d: $cd $e5 $48
    ld hl, $d127                                  ; $4530: $21 $27 $d1
    ld bc, $0003                                  ; $4533: $01 $03 $00
    call Call_041_48e5                            ; $4536: $cd $e5 $48
    ld hl, $d147                                  ; $4539: $21 $47 $d1
    ld bc, $0003                                  ; $453c: $01 $03 $00
    call Call_041_48e5                            ; $453f: $cd $e5 $48
    ld hl, $d130                                  ; $4542: $21 $30 $d1
    ld bc, $0003                                  ; $4545: $01 $03 $00
    call Call_041_48e5                            ; $4548: $cd $e5 $48
    ld hl, $d150                                  ; $454b: $21 $50 $d1
    ld bc, $0003                                  ; $454e: $01 $03 $00
    call Call_041_48e5                            ; $4551: $cd $e5 $48
    ld hl, $d1a6                                  ; $4554: $21 $a6 $d1
    ld bc, $0004                                  ; $4557: $01 $04 $00
    call Call_041_48e5                            ; $455a: $cd $e5 $48
    ld hl, $d1c6                                  ; $455d: $21 $c6 $d1
    ld bc, $0004                                  ; $4560: $01 $04 $00
    call Call_041_48e5                            ; $4563: $cd $e5 $48
    ld hl, $d1b0                                  ; $4566: $21 $b0 $d1
    ld bc, $0003                                  ; $4569: $01 $03 $00
    call Call_041_48e5                            ; $456c: $cd $e5 $48
    ld hl, $d1d0                                  ; $456f: $21 $d0 $d1
    ld bc, $0003                                  ; $4572: $01 $03 $00
    call Call_041_48e5                            ; $4575: $cd $e5 $48
    ld hl, $d1e7                                  ; $4578: $21 $e7 $d1
    ld bc, $0003                                  ; $457b: $01 $03 $00
    call Call_041_48e5                            ; $457e: $cd $e5 $48
    ld hl, $d207                                  ; $4581: $21 $07 $d2
    ld bc, $0003                                  ; $4584: $01 $03 $00
    call Call_041_48e5                            ; $4587: $cd $e5 $48
    ld hl, $d1f0                                  ; $458a: $21 $f0 $d1
    ld bc, $0003                                  ; $458d: $01 $03 $00
    call Call_041_48e5                            ; $4590: $cd $e5 $48
    ld hl, $d210                                  ; $4593: $21 $10 $d2
    ld bc, $0003                                  ; $4596: $01 $03 $00
    call Call_041_48e5                            ; $4599: $cd $e5 $48
    ld hl, $d0ca                                  ; $459c: $21 $ca $d0
    ld d, $0b                                     ; $459f: $16 $0b
    ld bc, $0006                                  ; $45a1: $01 $06 $00
    call Call_041_48e5                            ; $45a4: $cd $e5 $48
    ld hl, $d0ea                                  ; $45a7: $21 $ea $d0
    ld bc, $0006                                  ; $45aa: $01 $06 $00
    call Call_041_48e5                            ; $45ad: $cd $e5 $48
    ld hl, $d12a                                  ; $45b0: $21 $2a $d1
    ld d, $0c                                     ; $45b3: $16 $0c
    ld bc, $0006                                  ; $45b5: $01 $06 $00
    call Call_041_48e5                            ; $45b8: $cd $e5 $48
    ld hl, $d14a                                  ; $45bb: $21 $4a $d1
    ld bc, $0006                                  ; $45be: $01 $06 $00
    call Call_041_48e5                            ; $45c1: $cd $e5 $48
    ld hl, $d1aa                                  ; $45c4: $21 $aa $d1
    ld d, $0d                                     ; $45c7: $16 $0d
    ld bc, $0006                                  ; $45c9: $01 $06 $00
    call Call_041_48e5                            ; $45cc: $cd $e5 $48
    ld hl, $d1ca                                  ; $45cf: $21 $ca $d1
    ld bc, $0006                                  ; $45d2: $01 $06 $00
    call Call_041_48e5                            ; $45d5: $cd $e5 $48
    ld hl, $d1ea                                  ; $45d8: $21 $ea $d1
    ld bc, $0006                                  ; $45db: $01 $06 $00
    call Call_041_48e5                            ; $45de: $cd $e5 $48
    ld hl, $d20a                                  ; $45e1: $21 $0a $d2
    ld bc, $0006                                  ; $45e4: $01 $06 $00
    call Call_041_48e5                            ; $45e7: $cd $e5 $48
    ld hl, $d460                                  ; $45ea: $21 $60 $d4
    ld d, $8e                                     ; $45ed: $16 $8e
    ld bc, $000c                                  ; $45ef: $01 $0c $00
    call Call_041_48e5                            ; $45f2: $cd $e5 $48
    ld hl, $d480                                  ; $45f5: $21 $80 $d4
    ld bc, $000c                                  ; $45f8: $01 $0c $00
    call Call_041_48e5                            ; $45fb: $cd $e5 $48
    ld hl, $d4a0                                  ; $45fe: $21 $a0 $d4
    ld bc, $000c                                  ; $4601: $01 $0c $00
    call Call_041_48e5                            ; $4604: $cd $e5 $48
    ld hl, $d4c0                                  ; $4607: $21 $c0 $d4
    ld bc, $000c                                  ; $460a: $01 $0c $00
    call Call_041_48e5                            ; $460d: $cd $e5 $48
    ld hl, $d460                                  ; $4610: $21 $60 $d4
    ld d, $8f                                     ; $4613: $16 $8f
    ld bc, $000b                                  ; $4615: $01 $0b $00
    call Call_041_48e5                            ; $4618: $cd $e5 $48
    ld a, $09                                     ; $461b: $3e $09
    ld [$d000], a                                 ; $461d: $ea $00 $d0
    ld [$d013], a                                 ; $4620: $ea $13 $d0
    ld [$d220], a                                 ; $4623: $ea $20 $d2
    ld [$d233], a                                 ; $4626: $ea $33 $d2
    ld bc, $0012                                  ; $4629: $01 $12 $00
    ld d, $09                                     ; $462c: $16 $09
    ld hl, $d001                                  ; $462e: $21 $01 $d0
    call Call_041_48e5                            ; $4631: $cd $e5 $48
    ld bc, $0012                                  ; $4634: $01 $12 $00
    ld hl, $d221                                  ; $4637: $21 $21 $d2
    call Call_041_48e5                            ; $463a: $cd $e5 $48
    ld b, $10                                     ; $463d: $06 $10
    ld a, $09                                     ; $463f: $3e $09
    ld hl, $d020                                  ; $4641: $21 $20 $d0
    ld de, $0020                                  ; $4644: $11 $20 $00

jr_041_4647:
    ld [hl], a                                    ; $4647: $77
    add hl, de                                    ; $4648: $19
    dec b                                         ; $4649: $05
    jr nz, jr_041_4647                            ; $464a: $20 $fb

    ld b, $10                                     ; $464c: $06 $10
    ld a, $09                                     ; $464e: $3e $09
    ld hl, $d033                                  ; $4650: $21 $33 $d0

jr_041_4653:
    ld [hl], a                                    ; $4653: $77
    add hl, de                                    ; $4654: $19
    dec b                                         ; $4655: $05
    jr nz, jr_041_4653                            ; $4656: $20 $fb

    ld a, $09                                     ; $4658: $3e $09
    ld [$d240], a                                 ; $465a: $ea $40 $d2
    ld [$d253], a                                 ; $465d: $ea $53 $d2
    ld bc, $0012                                  ; $4660: $01 $12 $00
    ld d, $09                                     ; $4663: $16 $09
    ld hl, $d241                                  ; $4665: $21 $41 $d2
    call Call_041_48e5                            ; $4668: $cd $e5 $48
    ld a, $09                                     ; $466b: $3e $09
    ld [$d260], a                                 ; $466d: $ea $60 $d2
    ld [$d273], a                                 ; $4670: $ea $73 $d2
    ld [$d280], a                                 ; $4673: $ea $80 $d2
    ld [$d293], a                                 ; $4676: $ea $93 $d2
    ld bc, $0012                                  ; $4679: $01 $12 $00
    ld d, $09                                     ; $467c: $16 $09
    ld hl, $d281                                  ; $467e: $21 $81 $d2
    call Call_041_48e5                            ; $4681: $cd $e5 $48
    ld a, $09                                     ; $4684: $3e $09
    ld [$d2a0], a                                 ; $4686: $ea $a0 $d2
    ld [$d2b3], a                                 ; $4689: $ea $b3 $d2
    ld bc, $0100                                  ; $468c: $01 $00 $01
    ld d, $00                                     ; $468f: $16 $00
    ld hl, $d2c0                                  ; $4691: $21 $c0 $d2
    call Call_041_48e5                            ; $4694: $cd $e5 $48
    ld a, $03                                     ; $4697: $3e $03
    ldh [$96], a                                  ; $4699: $e0 $96
    ldh [rSVBK], a                                ; $469b: $e0 $70
    ld bc, $1000                                  ; $469d: $01 $00 $10
    ld d, $20                                     ; $46a0: $16 $20
    ld hl, $d000                                  ; $46a2: $21 $00 $d0
    call Call_041_48e5                            ; $46a5: $cd $e5 $48
    ld hl, $d000                                  ; $46a8: $21 $00 $d0
    ld [hl], $59                                  ; $46ab: $36 $59
    ld hl, $d013                                  ; $46ad: $21 $13 $d0
    ld [hl], $5a                                  ; $46b0: $36 $5a
    ld hl, $d220                                  ; $46b2: $21 $20 $d2
    ld [hl], $5b                                  ; $46b5: $36 $5b
    ld hl, $d233                                  ; $46b7: $21 $33 $d2
    ld [hl], $5c                                  ; $46ba: $36 $5c
    ld bc, $0012                                  ; $46bc: $01 $12 $00
    ld d, $5d                                     ; $46bf: $16 $5d
    ld hl, $d001                                  ; $46c1: $21 $01 $d0
    call Call_041_48e5                            ; $46c4: $cd $e5 $48
    ld bc, $0012                                  ; $46c7: $01 $12 $00
    ld d, $5e                                     ; $46ca: $16 $5e
    ld hl, $d221                                  ; $46cc: $21 $21 $d2
    call Call_041_48e5                            ; $46cf: $cd $e5 $48
    ld b, $10                                     ; $46d2: $06 $10
    ld a, $5f                                     ; $46d4: $3e $5f
    ld hl, $d020                                  ; $46d6: $21 $20 $d0
    ld de, $0020                                  ; $46d9: $11 $20 $00

jr_041_46dc:
    ld [hl], a                                    ; $46dc: $77
    add hl, de                                    ; $46dd: $19
    dec b                                         ; $46de: $05
    jr nz, jr_041_46dc                            ; $46df: $20 $fb

    ld b, $10                                     ; $46e1: $06 $10
    ld a, $60                                     ; $46e3: $3e $60
    ld hl, $d033                                  ; $46e5: $21 $33 $d0

jr_041_46e8:
    ld [hl], a                                    ; $46e8: $77
    add hl, de                                    ; $46e9: $19
    dec b                                         ; $46ea: $05
    jr nz, jr_041_46e8                            ; $46eb: $20 $fb

    ld hl, $d240                                  ; $46ed: $21 $40 $d2
    ld [hl], $59                                  ; $46f0: $36 $59
    ld hl, $d253                                  ; $46f2: $21 $53 $d2
    ld [hl], $5a                                  ; $46f5: $36 $5a
    ld bc, $0012                                  ; $46f7: $01 $12 $00
    ld d, $5d                                     ; $46fa: $16 $5d
    ld hl, $d241                                  ; $46fc: $21 $41 $d2
    call Call_041_48e5                            ; $46ff: $cd $e5 $48
    ld hl, $d260                                  ; $4702: $21 $60 $d2
    ld [hl], $5f                                  ; $4705: $36 $5f
    ld hl, $d273                                  ; $4707: $21 $73 $d2
    ld [hl], $60                                  ; $470a: $36 $60
    ld hl, $d280                                  ; $470c: $21 $80 $d2
    ld [hl], $59                                  ; $470f: $36 $59
    ld hl, $d293                                  ; $4711: $21 $93 $d2
    ld [hl], $5a                                  ; $4714: $36 $5a
    ld bc, $0012                                  ; $4716: $01 $12 $00
    ld d, $5d                                     ; $4719: $16 $5d
    ld hl, $d281                                  ; $471b: $21 $81 $d2
    call Call_041_48e5                            ; $471e: $cd $e5 $48
    ld hl, $d2a0                                  ; $4721: $21 $a0 $d2
    ld [hl], $5f                                  ; $4724: $36 $5f
    ld hl, $d2b3                                  ; $4726: $21 $b3 $d2
    ld [hl], $60                                  ; $4729: $36 $60
    ld hl, $d2c0                                  ; $472b: $21 $c0 $d2
    ld [hl], $02                                  ; $472e: $36 $02
    ld hl, $d2d3                                  ; $4730: $21 $d3 $d2
    ld [hl], $04                                  ; $4733: $36 $04
    ld hl, $d300                                  ; $4735: $21 $00 $d3
    ld [hl], $07                                  ; $4738: $36 $07
    ld hl, $d313                                  ; $473a: $21 $13 $d3
    ld [hl], $09                                  ; $473d: $36 $09
    ld bc, $0012                                  ; $473f: $01 $12 $00
    ld d, $03                                     ; $4742: $16 $03
    ld hl, $d2c1                                  ; $4744: $21 $c1 $d2
    call Call_041_48e5                            ; $4747: $cd $e5 $48
    ld bc, $0012                                  ; $474a: $01 $12 $00
    ld d, $08                                     ; $474d: $16 $08
    ld hl, $d301                                  ; $474f: $21 $01 $d3
    call Call_041_48e5                            ; $4752: $cd $e5 $48
    ld hl, $d2e0                                  ; $4755: $21 $e0 $d2
    ld [hl], $05                                  ; $4758: $36 $05
    ld hl, $d2f3                                  ; $475a: $21 $f3 $d2
    ld [hl], $06                                  ; $475d: $36 $06
    ld hl, $d320                                  ; $475f: $21 $20 $d3
    ld [hl], $02                                  ; $4762: $36 $02
    ld hl, $d325                                  ; $4764: $21 $25 $d3
    ld [hl], $04                                  ; $4767: $36 $04
    ld hl, $d3a0                                  ; $4769: $21 $a0 $d3
    ld [hl], $07                                  ; $476c: $36 $07
    ld hl, $d3a5                                  ; $476e: $21 $a5 $d3
    ld [hl], $09                                  ; $4771: $36 $09
    ld a, $05                                     ; $4773: $3e $05
    ld [$d340], a                                 ; $4775: $ea $40 $d3
    ld [$d360], a                                 ; $4778: $ea $60 $d3
    ld [$d380], a                                 ; $477b: $ea $80 $d3
    ld a, $06                                     ; $477e: $3e $06
    ld [$d345], a                                 ; $4780: $ea $45 $d3
    ld [$d365], a                                 ; $4783: $ea $65 $d3
    ld [$d385], a                                 ; $4786: $ea $85 $d3
    ld bc, $0004                                  ; $4789: $01 $04 $00
    ld d, $03                                     ; $478c: $16 $03
    ld hl, $d321                                  ; $478e: $21 $21 $d3
    call Call_041_48e5                            ; $4791: $cd $e5 $48
    ld bc, $0004                                  ; $4794: $01 $04 $00
    ld d, $08                                     ; $4797: $16 $08
    ld hl, $d3a1                                  ; $4799: $21 $a1 $d3
    call Call_041_48e5                            ; $479c: $cd $e5 $48
    ld hl, $d090                                  ; $479f: $21 $90 $d0
    ld [hl], $59                                  ; $47a2: $36 $59
    ld hl, $d0d0                                  ; $47a4: $21 $d0 $d0
    ld a, $1e                                     ; $47a7: $3e $1e
    ld b, $03                                     ; $47a9: $06 $03
    call Call_041_48ed                            ; $47ab: $cd $ed $48
    ld hl, $d0f0                                  ; $47ae: $21 $f0 $d0
    ld b, $03                                     ; $47b1: $06 $03
    call Call_041_48ed                            ; $47b3: $cd $ed $48
    ld hl, $d127                                  ; $47b6: $21 $27 $d1
    ld a, $2a                                     ; $47b9: $3e $2a
    ld b, $03                                     ; $47bb: $06 $03
    call Call_041_48ed                            ; $47bd: $cd $ed $48
    ld hl, $d147                                  ; $47c0: $21 $47 $d1
    ld b, $03                                     ; $47c3: $06 $03
    call Call_041_48ed                            ; $47c5: $cd $ed $48
    ld hl, $d130                                  ; $47c8: $21 $30 $d1
    ld a, $30                                     ; $47cb: $3e $30
    ld b, $03                                     ; $47cd: $06 $03
    call Call_041_48ed                            ; $47cf: $cd $ed $48
    ld hl, $d150                                  ; $47d2: $21 $50 $d1
    ld b, $03                                     ; $47d5: $06 $03
    call Call_041_48ed                            ; $47d7: $cd $ed $48
    ld hl, $d1a6                                  ; $47da: $21 $a6 $d1
    ld a, $63                                     ; $47dd: $3e $63
    ld b, $04                                     ; $47df: $06 $04
    call Call_041_48ed                            ; $47e1: $cd $ed $48
    ld hl, $d1c6                                  ; $47e4: $21 $c6 $d1
    ld b, $04                                     ; $47e7: $06 $04
    call Call_041_48ed                            ; $47e9: $cd $ed $48
    ld hl, $d1b0                                  ; $47ec: $21 $b0 $d1
    ld a, $3c                                     ; $47ef: $3e $3c
    ld b, $03                                     ; $47f1: $06 $03
    call Call_041_48ed                            ; $47f3: $cd $ed $48
    ld hl, $d1d0                                  ; $47f6: $21 $d0 $d1
    ld b, $03                                     ; $47f9: $06 $03
    call Call_041_48ed                            ; $47fb: $cd $ed $48
    ld hl, $d1e7                                  ; $47fe: $21 $e7 $d1
    ld a, $42                                     ; $4801: $3e $42
    ld b, $03                                     ; $4803: $06 $03
    call Call_041_48ed                            ; $4805: $cd $ed $48
    ld hl, $d207                                  ; $4808: $21 $07 $d2
    ld b, $03                                     ; $480b: $06 $03
    call Call_041_48ed                            ; $480d: $cd $ed $48
    ld hl, $d1f0                                  ; $4810: $21 $f0 $d1
    ld a, $6b                                     ; $4813: $3e $6b
    ld b, $03                                     ; $4815: $06 $03
    call Call_041_48ed                            ; $4817: $cd $ed $48
    ld hl, $d210                                  ; $481a: $21 $10 $d2
    ld b, $03                                     ; $481d: $06 $03
    call Call_041_48ed                            ; $481f: $cd $ed $48
    ld hl, $d460                                  ; $4822: $21 $60 $d4
    ld a, $80                                     ; $4825: $3e $80
    ld b, $0c                                     ; $4827: $06 $0c
    call Call_041_48ed                            ; $4829: $cd $ed $48
    ld hl, $d480                                  ; $482c: $21 $80 $d4
    ld a, $8c                                     ; $482f: $3e $8c
    ld b, $0c                                     ; $4831: $06 $0c
    call Call_041_48ed                            ; $4833: $cd $ed $48
    ld hl, $d4a0                                  ; $4836: $21 $a0 $d4
    ld a, $98                                     ; $4839: $3e $98
    ld b, $0c                                     ; $483b: $06 $0c
    call Call_041_48ed                            ; $483d: $cd $ed $48
    ld hl, $d4c0                                  ; $4840: $21 $c0 $d4
    ld a, $a4                                     ; $4843: $3e $a4
    ld b, $0c                                     ; $4845: $06 $0c
    call Call_041_48ed                            ; $4847: $cd $ed $48
    ld hl, $5afa                                  ; $484a: $21 $fa $5a
    ld de, $0c01                                  ; $484d: $11 $01 $0c
    call Call_000_0595                            ; $4850: $cd $95 $05
    ld hl, $5d71                                  ; $4853: $21 $71 $5d
    ld de, $0301                                  ; $4856: $11 $01 $03
    call Call_000_0595                            ; $4859: $cd $95 $05
    ld hl, $5d71                                  ; $485c: $21 $71 $5d
    ld de, $0401                                  ; $485f: $11 $01 $04
    call Call_000_0595                            ; $4862: $cd $95 $05
    ld hl, $5d71                                  ; $4865: $21 $71 $5d
    ld de, $0501                                  ; $4868: $11 $01 $05
    call Call_000_0595                            ; $486b: $cd $95 $05
    ld hl, $5e92                                  ; $486e: $21 $92 $5e
    ld de, $0601                                  ; $4871: $11 $01 $06
    call Call_000_0595                            ; $4874: $cd $95 $05
    ld hl, $5e9a                                  ; $4877: $21 $9a $5e
    ld de, $0701                                  ; $487a: $11 $01 $07
    call Call_000_0595                            ; $487d: $cd $95 $05
    ld a, $06                                     ; $4880: $3e $06
    ldh [$96], a                                  ; $4882: $e0 $96
    ldh [rSVBK], a                                ; $4884: $e0 $70
    ld hl, $5d71                                  ; $4886: $21 $71 $5d
    ld a, [hl+]                                   ; $4889: $2a
    ld d, [hl]                                    ; $488a: $56
    ld e, a                                       ; $488b: $5f
    ld hl, $d428                                  ; $488c: $21 $28 $d4
    ld a, e                                       ; $488f: $7b
    ld [hl+], a                                   ; $4890: $22
    ld [hl], d                                    ; $4891: $72
    ld hl, $5d73                                  ; $4892: $21 $73 $5d
    ld a, [hl+]                                   ; $4895: $2a
    ld d, [hl]                                    ; $4896: $56
    ld e, a                                       ; $4897: $5f
    ld hl, $d42a                                  ; $4898: $21 $2a $d4
    ld a, e                                       ; $489b: $7b
    ld [hl+], a                                   ; $489c: $22
    ld [hl], d                                    ; $489d: $72
    ld hl, $5d75                                  ; $489e: $21 $75 $5d
    ld a, [hl+]                                   ; $48a1: $2a
    ld d, [hl]                                    ; $48a2: $56
    ld e, a                                       ; $48a3: $5f
    ld hl, $d42c                                  ; $48a4: $21 $2c $d4
    ld a, e                                       ; $48a7: $7b
    ld [hl+], a                                   ; $48a8: $22
    ld [hl], d                                    ; $48a9: $72
    ld hl, $5d77                                  ; $48aa: $21 $77 $5d
    ld a, [hl+]                                   ; $48ad: $2a
    ld d, [hl]                                    ; $48ae: $56
    ld e, a                                       ; $48af: $5f
    ld hl, $d42e                                  ; $48b0: $21 $2e $d4
    ld a, e                                       ; $48b3: $7b
    ld [hl+], a                                   ; $48b4: $22
    ld [hl], d                                    ; $48b5: $72
    xor a                                         ; $48b6: $af
    ld hl, $d432                                  ; $48b7: $21 $32 $d4
    ld [hl+], a                                   ; $48ba: $22
    ld [hl+], a                                   ; $48bb: $22
    ld [hl+], a                                   ; $48bc: $22
    ld [$d428], a                                 ; $48bd: $ea $28 $d4
    ld hl, $5ced                                  ; $48c0: $21 $ed $5c
    ld de, $0101                                  ; $48c3: $11 $01 $01
    call Call_000_0595                            ; $48c6: $cd $95 $05
    ld hl, $5ced                                  ; $48c9: $21 $ed $5c
    ld de, $0a01                                  ; $48cc: $11 $01 $0a
    call Call_000_0595                            ; $48cf: $cd $95 $05
    ld hl, $5ce5                                  ; $48d2: $21 $e5 $5c
    ld de, $0001                                  ; $48d5: $11 $01 $00
    call Call_000_0595                            ; $48d8: $cd $95 $05
    ld hl, $5ce5                                  ; $48db: $21 $e5 $5c
    ld de, $0801                                  ; $48de: $11 $01 $08
    call Call_000_0595                            ; $48e1: $cd $95 $05
    ret                                           ; $48e4: $c9


Call_041_48e5:
jr_041_48e5:
    ld [hl], d                                    ; $48e5: $72
    inc hl                                        ; $48e6: $23
    dec bc                                        ; $48e7: $0b
    ld a, b                                       ; $48e8: $78
    or c                                          ; $48e9: $b1
    jr nz, jr_041_48e5                            ; $48ea: $20 $f9

    ret                                           ; $48ec: $c9


Call_041_48ed:
jr_041_48ed:
    ld [hl], a                                    ; $48ed: $77
    inc hl                                        ; $48ee: $23
    inc a                                         ; $48ef: $3c
    dec b                                         ; $48f0: $05
    jr nz, jr_041_48ed                            ; $48f1: $20 $fa

    ret                                           ; $48f3: $c9


Call_041_48f4:
    ld a, $06                                     ; $48f4: $3e $06
    ldh [$96], a                                  ; $48f6: $e0 $96
    ldh [rSVBK], a                                ; $48f8: $e0 $70
    xor a                                         ; $48fa: $af
    ld [$d435], a                                 ; $48fb: $ea $35 $d4
    ld hl, $c800                                  ; $48fe: $21 $00 $c8
    ld a, l                                       ; $4901: $7d
    add $12                                       ; $4902: $c6 $12
    ld l, a                                       ; $4904: $6f
    ld a, h                                       ; $4905: $7c
    adc $00                                       ; $4906: $ce $00
    ld h, a                                       ; $4908: $67
    ld a, [hl]                                    ; $4909: $7e
    ld [$d436], a                                 ; $490a: $ea $36 $d4
    ld hl, $c800                                  ; $490d: $21 $00 $c8
    ld a, l                                       ; $4910: $7d
    add $20                                       ; $4911: $c6 $20
    ld l, a                                       ; $4913: $6f
    ld a, h                                       ; $4914: $7c
    adc $00                                       ; $4915: $ce $00
    ld h, a                                       ; $4917: $67
    ld a, [hl]                                    ; $4918: $7e
    ld [$d437], a                                 ; $4919: $ea $37 $d4
    ld hl, $c800                                  ; $491c: $21 $00 $c8
    ld a, l                                       ; $491f: $7d
    add $21                                       ; $4920: $c6 $21
    ld l, a                                       ; $4922: $6f
    ld a, h                                       ; $4923: $7c
    adc $00                                       ; $4924: $ce $00
    ld h, a                                       ; $4926: $67
    ld a, [hl]                                    ; $4927: $7e
    ld [$d438], a                                 ; $4928: $ea $38 $d4
    ld hl, $c800                                  ; $492b: $21 $00 $c8
    ld a, l                                       ; $492e: $7d
    add $22                                       ; $492f: $c6 $22
    ld l, a                                       ; $4931: $6f
    ld a, h                                       ; $4932: $7c
    adc $00                                       ; $4933: $ce $00
    ld h, a                                       ; $4935: $67
    ld a, [hl]                                    ; $4936: $7e
    ld [$d439], a                                 ; $4937: $ea $39 $d4
    ld hl, $c800                                  ; $493a: $21 $00 $c8
    ld a, l                                       ; $493d: $7d
    add $23                                       ; $493e: $c6 $23
    ld l, a                                       ; $4940: $6f
    ld a, h                                       ; $4941: $7c
    adc $00                                       ; $4942: $ce $00
    ld h, a                                       ; $4944: $67
    ld a, [hl]                                    ; $4945: $7e
    ld [$d43a], a                                 ; $4946: $ea $3a $d4
    ld hl, $c800                                  ; $4949: $21 $00 $c8
    ld a, l                                       ; $494c: $7d
    add $24                                       ; $494d: $c6 $24
    ld l, a                                       ; $494f: $6f
    ld a, h                                       ; $4950: $7c
    adc $00                                       ; $4951: $ce $00
    ld h, a                                       ; $4953: $67
    ld a, [hl]                                    ; $4954: $7e
    ld [$d43b], a                                 ; $4955: $ea $3b $d4
    xor a                                         ; $4958: $af
    ld [$d43c], a                                 ; $4959: $ea $3c $d4

jr_041_495c:
    rst $18                                       ; $495c: $df
    inc h                                         ; $495d: $24
    ld [bc], a                                    ; $495e: $02
    jr nz, jr_041_496c                            ; $495f: $20 $0b

    ld d, $00                                     ; $4961: $16 $00
    rst $18                                       ; $4963: $df
    jr @+$04                                      ; $4964: $18 $02

    ld hl, $d435                                  ; $4966: $21 $35 $d4
    inc [hl]                                      ; $4969: $34
    jr jr_041_495c                                ; $496a: $18 $f0

jr_041_496c:
    call Call_041_4970                            ; $496c: $cd $70 $49
    ret                                           ; $496f: $c9


Call_041_4970:
    ld a, $06                                     ; $4970: $3e $06
    ldh [$96], a                                  ; $4972: $e0 $96
    ldh [rSVBK], a                                ; $4974: $e0 $70
    ld a, [$d435]                                 ; $4976: $fa $35 $d4
    ld [$d43c], a                                 ; $4979: $ea $3c $d4
    ld hl, $c800                                  ; $497c: $21 $00 $c8
    ld a, l                                       ; $497f: $7d
    add $12                                       ; $4980: $c6 $12
    ld l, a                                       ; $4982: $6f
    ld a, h                                       ; $4983: $7c
    adc $00                                       ; $4984: $ce $00
    ld h, a                                       ; $4986: $67
    ld a, [$d436]                                 ; $4987: $fa $36 $d4
    ld [hl], a                                    ; $498a: $77
    ld hl, $c800                                  ; $498b: $21 $00 $c8
    ld a, l                                       ; $498e: $7d
    add $20                                       ; $498f: $c6 $20
    ld l, a                                       ; $4991: $6f
    ld a, h                                       ; $4992: $7c
    adc $00                                       ; $4993: $ce $00
    ld h, a                                       ; $4995: $67
    ld a, [$d437]                                 ; $4996: $fa $37 $d4
    ld [hl], a                                    ; $4999: $77
    ld hl, $c800                                  ; $499a: $21 $00 $c8
    ld a, l                                       ; $499d: $7d
    add $21                                       ; $499e: $c6 $21
    ld l, a                                       ; $49a0: $6f
    ld a, h                                       ; $49a1: $7c
    adc $00                                       ; $49a2: $ce $00
    ld h, a                                       ; $49a4: $67
    ld a, [$d438]                                 ; $49a5: $fa $38 $d4
    ld [hl], a                                    ; $49a8: $77
    ld hl, $c800                                  ; $49a9: $21 $00 $c8
    ld a, l                                       ; $49ac: $7d
    add $22                                       ; $49ad: $c6 $22
    ld l, a                                       ; $49af: $6f
    ld a, h                                       ; $49b0: $7c
    adc $00                                       ; $49b1: $ce $00
    ld h, a                                       ; $49b3: $67
    ld a, [$d439]                                 ; $49b4: $fa $39 $d4
    ld [hl], a                                    ; $49b7: $77
    ld hl, $c800                                  ; $49b8: $21 $00 $c8
    ld a, l                                       ; $49bb: $7d
    add $23                                       ; $49bc: $c6 $23
    ld l, a                                       ; $49be: $6f
    ld a, h                                       ; $49bf: $7c
    adc $00                                       ; $49c0: $ce $00
    ld h, a                                       ; $49c2: $67
    ld a, [$d43a]                                 ; $49c3: $fa $3a $d4
    ld [hl], a                                    ; $49c6: $77
    ld hl, $c800                                  ; $49c7: $21 $00 $c8
    ld a, l                                       ; $49ca: $7d
    add $24                                       ; $49cb: $c6 $24
    ld l, a                                       ; $49cd: $6f
    ld a, h                                       ; $49ce: $7c
    adc $00                                       ; $49cf: $ce $00
    ld h, a                                       ; $49d1: $67
    ld a, [$d43b]                                 ; $49d2: $fa $3b $d4
    ld [hl], a                                    ; $49d5: $77
    xor a                                         ; $49d6: $af
    ld b, $64                                     ; $49d7: $06 $64
    ld hl, $d4d2                                  ; $49d9: $21 $d2 $d4

jr_041_49dc:
    ld [hl+], a                                   ; $49dc: $22
    dec b                                         ; $49dd: $05
    jr nz, jr_041_49dc                            ; $49de: $20 $fc

    ld hl, $d4d1                                  ; $49e0: $21 $d1 $d4
    ld [hl], a                                    ; $49e3: $77
    xor a                                         ; $49e4: $af
    ld hl, $d43f                                  ; $49e5: $21 $3f $d4
    ld [hl+], a                                   ; $49e8: $22
    rst $18                                       ; $49e9: $df
    inc e                                         ; $49ea: $1c
    ld [bc], a                                    ; $49eb: $02
    ret                                           ; $49ec: $c9


Call_041_49ed:
    and a                                         ; $49ed: $a7
    jp nz, Jump_041_4ac5                          ; $49ee: $c2 $c5 $4a

    ld a, $06                                     ; $49f1: $3e $06
    ldh [$96], a                                  ; $49f3: $e0 $96
    ldh [rSVBK], a                                ; $49f5: $e0 $70
    ld hl, $c800                                  ; $49f7: $21 $00 $c8
    ld a, l                                       ; $49fa: $7d
    add $12                                       ; $49fb: $c6 $12
    ld l, a                                       ; $49fd: $6f
    ld a, h                                       ; $49fe: $7c
    adc $00                                       ; $49ff: $ce $00
    ld h, a                                       ; $4a01: $67
    ld a, [hl+]                                   ; $4a02: $2a
    ld b, [hl]                                    ; $4a03: $46
    ld c, a                                       ; $4a04: $4f
    ld hl, $d63c                                  ; $4a05: $21 $3c $d6
    ld a, c                                       ; $4a08: $79
    ld [hl+], a                                   ; $4a09: $22
    ld [hl], b                                    ; $4a0a: $70
    ld hl, $c800                                  ; $4a0b: $21 $00 $c8
    ld a, l                                       ; $4a0e: $7d
    add $1a                                       ; $4a0f: $c6 $1a
    ld l, a                                       ; $4a11: $6f
    ld a, h                                       ; $4a12: $7c
    adc $00                                       ; $4a13: $ce $00
    ld h, a                                       ; $4a15: $67
    ld a, [hl+]                                   ; $4a16: $2a
    ld b, [hl]                                    ; $4a17: $46
    ld c, a                                       ; $4a18: $4f
    ld hl, $d63e                                  ; $4a19: $21 $3e $d6
    ld a, c                                       ; $4a1c: $79
    ld [hl+], a                                   ; $4a1d: $22
    ld [hl], b                                    ; $4a1e: $70
    ld hl, $c800                                  ; $4a1f: $21 $00 $c8
    ld a, l                                       ; $4a22: $7d
    add $1c                                       ; $4a23: $c6 $1c
    ld l, a                                       ; $4a25: $6f
    ld a, h                                       ; $4a26: $7c
    adc $00                                       ; $4a27: $ce $00
    ld h, a                                       ; $4a29: $67
    ld b, $00                                     ; $4a2a: $06 $00
    ld c, [hl]                                    ; $4a2c: $4e
    ld hl, $d640                                  ; $4a2d: $21 $40 $d6
    ld a, c                                       ; $4a30: $79
    ld [hl+], a                                   ; $4a31: $22
    ld [hl], b                                    ; $4a32: $70
    ld hl, $c800                                  ; $4a33: $21 $00 $c8
    ld a, l                                       ; $4a36: $7d
    add $1d                                       ; $4a37: $c6 $1d
    ld l, a                                       ; $4a39: $6f
    ld a, h                                       ; $4a3a: $7c
    adc $00                                       ; $4a3b: $ce $00
    ld h, a                                       ; $4a3d: $67
    ld b, $00                                     ; $4a3e: $06 $00
    ld c, [hl]                                    ; $4a40: $4e
    ld hl, $d642                                  ; $4a41: $21 $42 $d6
    ld a, c                                       ; $4a44: $79
    ld [hl+], a                                   ; $4a45: $22
    ld [hl], b                                    ; $4a46: $70
    ld hl, $c800                                  ; $4a47: $21 $00 $c8
    ld a, l                                       ; $4a4a: $7d
    add $1e                                       ; $4a4b: $c6 $1e
    ld l, a                                       ; $4a4d: $6f
    ld a, h                                       ; $4a4e: $7c
    adc $00                                       ; $4a4f: $ce $00
    ld h, a                                       ; $4a51: $67
    ld b, $00                                     ; $4a52: $06 $00
    ld c, [hl]                                    ; $4a54: $4e
    ld hl, $d644                                  ; $4a55: $21 $44 $d6
    ld a, c                                       ; $4a58: $79
    ld [hl+], a                                   ; $4a59: $22
    ld [hl], b                                    ; $4a5a: $70
    ld hl, $c800                                  ; $4a5b: $21 $00 $c8
    ld a, l                                       ; $4a5e: $7d
    add $1f                                       ; $4a5f: $c6 $1f
    ld l, a                                       ; $4a61: $6f
    ld a, h                                       ; $4a62: $7c
    adc $00                                       ; $4a63: $ce $00
    ld h, a                                       ; $4a65: $67
    ld b, $00                                     ; $4a66: $06 $00
    ld c, [hl]                                    ; $4a68: $4e
    ld hl, $d646                                  ; $4a69: $21 $46 $d6
    ld a, c                                       ; $4a6c: $79
    ld [hl+], a                                   ; $4a6d: $22
    ld [hl], b                                    ; $4a6e: $70
    ld hl, $c800                                  ; $4a6f: $21 $00 $c8
    ld a, l                                       ; $4a72: $7d
    add $20                                       ; $4a73: $c6 $20
    ld l, a                                       ; $4a75: $6f
    ld a, h                                       ; $4a76: $7c
    adc $00                                       ; $4a77: $ce $00
    ld h, a                                       ; $4a79: $67
    ld a, [hl]                                    ; $4a7a: $7e
    ld [$d453], a                                 ; $4a7b: $ea $53 $d4
    ld hl, $c800                                  ; $4a7e: $21 $00 $c8
    ld a, l                                       ; $4a81: $7d
    add $21                                       ; $4a82: $c6 $21
    ld l, a                                       ; $4a84: $6f
    ld a, h                                       ; $4a85: $7c
    adc $00                                       ; $4a86: $ce $00
    ld h, a                                       ; $4a88: $67
    ld a, [hl]                                    ; $4a89: $7e
    ld [$d454], a                                 ; $4a8a: $ea $54 $d4
    ld hl, $c800                                  ; $4a8d: $21 $00 $c8
    ld a, l                                       ; $4a90: $7d
    add $22                                       ; $4a91: $c6 $22
    ld l, a                                       ; $4a93: $6f
    ld a, h                                       ; $4a94: $7c
    adc $00                                       ; $4a95: $ce $00
    ld h, a                                       ; $4a97: $67
    ld a, [hl]                                    ; $4a98: $7e
    ld [$d455], a                                 ; $4a99: $ea $55 $d4
    ld hl, $c800                                  ; $4a9c: $21 $00 $c8
    ld a, l                                       ; $4a9f: $7d
    add $24                                       ; $4aa0: $c6 $24
    ld l, a                                       ; $4aa2: $6f
    ld a, h                                       ; $4aa3: $7c
    adc $00                                       ; $4aa4: $ce $00
    ld h, a                                       ; $4aa6: $67
    ld a, [hl]                                    ; $4aa7: $7e
    ld [$d456], a                                 ; $4aa8: $ea $56 $d4
    ld a, $06                                     ; $4aab: $3e $06
    ldh [$96], a                                  ; $4aad: $e0 $96
    ldh [rSVBK], a                                ; $4aaf: $e0 $70
    ld hl, $d63c                                  ; $4ab1: $21 $3c $d6
    inc [hl]                                      ; $4ab4: $34
    ld bc, $d406                                  ; $4ab5: $01 $06 $d4
    call Call_041_546a                            ; $4ab8: $cd $6a $54
    ld hl, $d43c                                  ; $4abb: $21 $3c $d4
    ld bc, $d43d                                  ; $4abe: $01 $3d $d4
    call Call_041_546a                            ; $4ac1: $cd $6a $54
    ret                                           ; $4ac4: $c9


Jump_041_4ac5:
    ld a, $06                                     ; $4ac5: $3e $06
    ldh [$96], a                                  ; $4ac7: $e0 $96
    ldh [rSVBK], a                                ; $4ac9: $e0 $70
    xor a                                         ; $4acb: $af
    ld [$d632], a                                 ; $4acc: $ea $32 $d6
    ld [$d648], a                                 ; $4acf: $ea $48 $d6
    ld [$d649], a                                 ; $4ad2: $ea $49 $d6
    ld [$d64a], a                                 ; $4ad5: $ea $4a $d6
    ld [$d64b], a                                 ; $4ad8: $ea $4b $d6
    ld [$d64c], a                                 ; $4adb: $ea $4c $d6
    ld hl, $c800                                  ; $4ade: $21 $00 $c8
    ld a, l                                       ; $4ae1: $7d
    add $12                                       ; $4ae2: $c6 $12
    ld l, a                                       ; $4ae4: $6f
    ld a, h                                       ; $4ae5: $7c
    adc $00                                       ; $4ae6: $ce $00
    ld h, a                                       ; $4ae8: $67
    ld a, [hl+]                                   ; $4ae9: $2a
    ld b, [hl]                                    ; $4aea: $46
    ld c, a                                       ; $4aeb: $4f
    ld hl, $d63c                                  ; $4aec: $21 $3c $d6
    ld a, c                                       ; $4aef: $79
    ld [hl+], a                                   ; $4af0: $22
    ld [hl], b                                    ; $4af1: $70
    ld hl, $c800                                  ; $4af2: $21 $00 $c8
    ld a, l                                       ; $4af5: $7d
    add $1a                                       ; $4af6: $c6 $1a
    ld l, a                                       ; $4af8: $6f
    ld a, h                                       ; $4af9: $7c
    adc $00                                       ; $4afa: $ce $00
    ld h, a                                       ; $4afc: $67
    ld a, [hl+]                                   ; $4afd: $2a
    ld b, [hl]                                    ; $4afe: $46
    ld c, a                                       ; $4aff: $4f
    ld hl, $d63e                                  ; $4b00: $21 $3e $d6
    ld a, c                                       ; $4b03: $79
    ld [hl+], a                                   ; $4b04: $22
    ld [hl], b                                    ; $4b05: $70
    ld hl, $c800                                  ; $4b06: $21 $00 $c8
    ld a, l                                       ; $4b09: $7d
    add $1c                                       ; $4b0a: $c6 $1c
    ld l, a                                       ; $4b0c: $6f
    ld a, h                                       ; $4b0d: $7c
    adc $00                                       ; $4b0e: $ce $00
    ld h, a                                       ; $4b10: $67
    ld b, $00                                     ; $4b11: $06 $00
    ld c, [hl]                                    ; $4b13: $4e
    ld hl, $d640                                  ; $4b14: $21 $40 $d6
    ld a, c                                       ; $4b17: $79
    ld [hl+], a                                   ; $4b18: $22
    ld [hl], b                                    ; $4b19: $70
    ld hl, $c800                                  ; $4b1a: $21 $00 $c8
    ld a, l                                       ; $4b1d: $7d
    add $1d                                       ; $4b1e: $c6 $1d
    ld l, a                                       ; $4b20: $6f
    ld a, h                                       ; $4b21: $7c
    adc $00                                       ; $4b22: $ce $00
    ld h, a                                       ; $4b24: $67
    ld b, $00                                     ; $4b25: $06 $00
    ld c, [hl]                                    ; $4b27: $4e
    ld hl, $d642                                  ; $4b28: $21 $42 $d6
    ld a, c                                       ; $4b2b: $79
    ld [hl+], a                                   ; $4b2c: $22
    ld [hl], b                                    ; $4b2d: $70
    ld hl, $c800                                  ; $4b2e: $21 $00 $c8
    ld a, l                                       ; $4b31: $7d
    add $1e                                       ; $4b32: $c6 $1e
    ld l, a                                       ; $4b34: $6f
    ld a, h                                       ; $4b35: $7c
    adc $00                                       ; $4b36: $ce $00
    ld h, a                                       ; $4b38: $67
    ld b, $00                                     ; $4b39: $06 $00
    ld c, [hl]                                    ; $4b3b: $4e
    ld hl, $d644                                  ; $4b3c: $21 $44 $d6
    ld a, c                                       ; $4b3f: $79
    ld [hl+], a                                   ; $4b40: $22
    ld [hl], b                                    ; $4b41: $70
    ld hl, $c800                                  ; $4b42: $21 $00 $c8
    ld a, l                                       ; $4b45: $7d
    add $1f                                       ; $4b46: $c6 $1f
    ld l, a                                       ; $4b48: $6f
    ld a, h                                       ; $4b49: $7c
    adc $00                                       ; $4b4a: $ce $00
    ld h, a                                       ; $4b4c: $67
    ld b, $00                                     ; $4b4d: $06 $00
    ld c, [hl]                                    ; $4b4f: $4e
    ld hl, $d646                                  ; $4b50: $21 $46 $d6
    ld a, c                                       ; $4b53: $79
    ld [hl+], a                                   ; $4b54: $22
    ld [hl], b                                    ; $4b55: $70
    ld hl, $c800                                  ; $4b56: $21 $00 $c8
    ld a, l                                       ; $4b59: $7d
    add $20                                       ; $4b5a: $c6 $20
    ld l, a                                       ; $4b5c: $6f
    ld a, h                                       ; $4b5d: $7c
    adc $00                                       ; $4b5e: $ce $00
    ld h, a                                       ; $4b60: $67
    ld a, [hl]                                    ; $4b61: $7e
    ld [$d453], a                                 ; $4b62: $ea $53 $d4
    ld hl, $c800                                  ; $4b65: $21 $00 $c8
    ld a, l                                       ; $4b68: $7d
    add $21                                       ; $4b69: $c6 $21
    ld l, a                                       ; $4b6b: $6f
    ld a, h                                       ; $4b6c: $7c
    adc $00                                       ; $4b6d: $ce $00
    ld h, a                                       ; $4b6f: $67
    ld a, [hl]                                    ; $4b70: $7e
    ld [$d454], a                                 ; $4b71: $ea $54 $d4
    ld hl, $c800                                  ; $4b74: $21 $00 $c8
    ld a, l                                       ; $4b77: $7d
    add $22                                       ; $4b78: $c6 $22
    ld l, a                                       ; $4b7a: $6f
    ld a, h                                       ; $4b7b: $7c
    adc $00                                       ; $4b7c: $ce $00
    ld h, a                                       ; $4b7e: $67
    ld a, [hl]                                    ; $4b7f: $7e
    ld [$d455], a                                 ; $4b80: $ea $55 $d4
    ld hl, $c800                                  ; $4b83: $21 $00 $c8
    ld a, l                                       ; $4b86: $7d
    add $24                                       ; $4b87: $c6 $24
    ld l, a                                       ; $4b89: $6f
    ld a, h                                       ; $4b8a: $7c
    adc $00                                       ; $4b8b: $ce $00
    ld h, a                                       ; $4b8d: $67
    ld a, [hl]                                    ; $4b8e: $7e
    ld [$d456], a                                 ; $4b8f: $ea $56 $d4
    ld a, $06                                     ; $4b92: $3e $06
    ldh [$96], a                                  ; $4b94: $e0 $96
    ldh [rSVBK], a                                ; $4b96: $e0 $70
    ld hl, $d63c                                  ; $4b98: $21 $3c $d6
    ld bc, $d406                                  ; $4b9b: $01 $06 $d4
    call Call_041_546a                            ; $4b9e: $cd $6a $54
    ld hl, $d43c                                  ; $4ba1: $21 $3c $d4
    ld bc, $d43d                                  ; $4ba4: $01 $3d $d4
    call Call_041_546a                            ; $4ba7: $cd $6a $54
    ret                                           ; $4baa: $c9


Call_041_4bab:
    rst $18                                       ; $4bab: $df
    ld a, [de]                                    ; $4bac: $1a
    inc bc                                        ; $4bad: $03
    and a                                         ; $4bae: $a7
    jr nz, jr_041_4bc4                            ; $4baf: $20 $13

    ld a, $03                                     ; $4bb1: $3e $03
    ldh [$96], a                                  ; $4bb3: $e0 $96
    ldh [rSVBK], a                                ; $4bb5: $e0 $70
    ld de, $d021                                  ; $4bb7: $11 $21 $d0
    ld hl, $10df                                  ; $4bba: $21 $df $10
    ld c, $20                                     ; $4bbd: $0e $20
    rst $18                                       ; $4bbf: $df
    ld [hl+], a                                   ; $4bc0: $22
    dec b                                         ; $4bc1: $05
    jr jr_041_4bc7                                ; $4bc2: $18 $03

jr_041_4bc4:
    call Call_041_5598                            ; $4bc4: $cd $98 $55

jr_041_4bc7:
    ld a, $03                                     ; $4bc7: $3e $03
    ldh [$96], a                                  ; $4bc9: $e0 $96
    ldh [rSVBK], a                                ; $4bcb: $e0 $70
    ld de, $d061                                  ; $4bcd: $11 $61 $d0
    ld hl, $10e0                                  ; $4bd0: $21 $e0 $10
    ld c, $20                                     ; $4bd3: $0e $20
    rst $18                                       ; $4bd5: $df
    ld [hl+], a                                   ; $4bd6: $22
    dec b                                         ; $4bd7: $05
    ld de, $d066                                  ; $4bd8: $11 $66 $d0
    ld hl, $10e1                                  ; $4bdb: $21 $e1 $10
    ld c, $20                                     ; $4bde: $0e $20
    rst $18                                       ; $4be0: $df
    ld [hl+], a                                   ; $4be1: $22
    dec b                                         ; $4be2: $05
    ld de, $d0a6                                  ; $4be3: $11 $a6 $d0
    ld hl, $10e3                                  ; $4be6: $21 $e3 $10
    ld c, $20                                     ; $4be9: $0e $20
    rst $18                                       ; $4beb: $df
    ld [hl+], a                                   ; $4bec: $22
    dec b                                         ; $4bed: $05
    ld de, $d106                                  ; $4bee: $11 $06 $d1
    ld hl, $10e2                                  ; $4bf1: $21 $e2 $10
    ld c, $20                                     ; $4bf4: $0e $20
    rst $18                                       ; $4bf6: $df
    ld [hl+], a                                   ; $4bf7: $22
    dec b                                         ; $4bf8: $05
    ld de, $d166                                  ; $4bf9: $11 $66 $d1
    ld hl, $10e4                                  ; $4bfc: $21 $e4 $10
    ld c, $20                                     ; $4bff: $0e $20
    rst $18                                       ; $4c01: $df
    ld [hl+], a                                   ; $4c02: $22
    dec b                                         ; $4c03: $05
    ld de, $d187                                  ; $4c04: $11 $87 $d1
    ld hl, $10e5                                  ; $4c07: $21 $e5 $10
    ld c, $20                                     ; $4c0a: $0e $20
    rst $18                                       ; $4c0c: $df
    ld [hl+], a                                   ; $4c0d: $22
    dec b                                         ; $4c0e: $05
    ld de, $d261                                  ; $4c0f: $11 $61 $d2
    ld hl, $10e7                                  ; $4c12: $21 $e7 $10
    ld c, $20                                     ; $4c15: $0e $20
    rst $18                                       ; $4c17: $df
    ld [hl+], a                                   ; $4c18: $22
    dec b                                         ; $4c19: $05
    ld de, $d2a1                                  ; $4c1a: $11 $a1 $d2
    ld hl, $10e8                                  ; $4c1d: $21 $e8 $10
    ld c, $20                                     ; $4c20: $0e $20
    rst $18                                       ; $4c22: $df
    ld [hl+], a                                   ; $4c23: $22
    dec b                                         ; $4c24: $05
    ld de, $d2e1                                  ; $4c25: $11 $e1 $d2
    ld hl, $10e6                                  ; $4c28: $21 $e6 $10
    ld c, $20                                     ; $4c2b: $0e $20
    rst $18                                       ; $4c2d: $df
    ld [hl+], a                                   ; $4c2e: $22
    dec b                                         ; $4c2f: $05
    ld de, $d342                                  ; $4c30: $11 $42 $d3
    ld hl, $10e9                                  ; $4c33: $21 $e9 $10
    ld c, $20                                     ; $4c36: $0e $20
    rst $18                                       ; $4c38: $df
    ld [hl+], a                                   ; $4c39: $22
    dec b                                         ; $4c3a: $05
    ld de, $d382                                  ; $4c3b: $11 $82 $d3
    ld hl, $10ea                                  ; $4c3e: $21 $ea $10
    ld c, $20                                     ; $4c41: $0e $20
    rst $18                                       ; $4c43: $df
    ld [hl+], a                                   ; $4c44: $22
    dec b                                         ; $4c45: $05
    rst $18                                       ; $4c46: $df
    inc h                                         ; $4c47: $24
    inc bc                                        ; $4c48: $03
    ret                                           ; $4c49: $c9


Call_041_4c4a:
    ld a, $03                                     ; $4c4a: $3e $03
    ldh [$96], a                                  ; $4c4c: $e0 $96
    ldh [rSVBK], a                                ; $4c4e: $e0 $70
    ld hl, $d000                                  ; $4c50: $21 $00 $d0
    ld de, $9800                                  ; $4c53: $11 $00 $98
    ld a, $12                                     ; $4c56: $3e $12

jr_041_4c58:
    push af                                       ; $4c58: $f5
    push hl                                       ; $4c59: $e5
    push de                                       ; $4c5a: $d5
    ld c, $02                                     ; $4c5b: $0e $02
    call Call_000_04db                            ; $4c5d: $cd $db $04
    pop de                                        ; $4c60: $d1
    pop hl                                        ; $4c61: $e1
    ld bc, $0020                                  ; $4c62: $01 $20 $00
    add hl, bc                                    ; $4c65: $09
    ld b, h                                       ; $4c66: $44
    ld c, l                                       ; $4c67: $4d
    ld hl, $0020                                  ; $4c68: $21 $20 $00
    add hl, de                                    ; $4c6b: $19
    ld d, h                                       ; $4c6c: $54
    ld e, l                                       ; $4c6d: $5d
    ld h, b                                       ; $4c6e: $60
    ld l, c                                       ; $4c6f: $69
    pop af                                        ; $4c70: $f1
    dec a                                         ; $4c71: $3d
    jr nz, jr_041_4c58                            ; $4c72: $20 $e4

    ld a, $02                                     ; $4c74: $3e $02
    ldh [$96], a                                  ; $4c76: $e0 $96
    ldh [rSVBK], a                                ; $4c78: $e0 $70
    ld hl, $d000                                  ; $4c7a: $21 $00 $d0
    ld de, $b800                                  ; $4c7d: $11 $00 $b8
    ld a, $12                                     ; $4c80: $3e $12

jr_041_4c82:
    push af                                       ; $4c82: $f5
    push hl                                       ; $4c83: $e5
    push de                                       ; $4c84: $d5
    ld c, $02                                     ; $4c85: $0e $02
    call Call_000_04db                            ; $4c87: $cd $db $04
    pop de                                        ; $4c8a: $d1
    pop hl                                        ; $4c8b: $e1
    ld bc, $0020                                  ; $4c8c: $01 $20 $00
    add hl, bc                                    ; $4c8f: $09
    ld b, h                                       ; $4c90: $44
    ld c, l                                       ; $4c91: $4d
    ld hl, $0020                                  ; $4c92: $21 $20 $00
    add hl, de                                    ; $4c95: $19
    ld d, h                                       ; $4c96: $54
    ld e, l                                       ; $4c97: $5d
    ld h, b                                       ; $4c98: $60
    ld l, c                                       ; $4c99: $69
    pop af                                        ; $4c9a: $f1
    dec a                                         ; $4c9b: $3d
    jr nz, jr_041_4c82                            ; $4c9c: $20 $e4

    ld a, $03                                     ; $4c9e: $3e $03
    ldh [$96], a                                  ; $4ca0: $e0 $96
    ldh [rSVBK], a                                ; $4ca2: $e0 $70
    ld hl, $d000                                  ; $4ca4: $21 $00 $d0
    ld de, $9800                                  ; $4ca7: $11 $00 $98
    ld c, $02                                     ; $4caa: $0e $02
    call Call_000_04db                            ; $4cac: $cd $db $04
    ld a, $02                                     ; $4caf: $3e $02
    ldh [$96], a                                  ; $4cb1: $e0 $96
    ldh [rSVBK], a                                ; $4cb3: $e0 $70
    ld hl, $d000                                  ; $4cb5: $21 $00 $d0
    ld de, $b800                                  ; $4cb8: $11 $00 $b8
    ld c, $02                                     ; $4cbb: $0e $02
    call Call_000_04db                            ; $4cbd: $cd $db $04
    ret                                           ; $4cc0: $c9


Call_041_4cc1:
    ld a, $06                                     ; $4cc1: $3e $06
    ldh [$96], a                                  ; $4cc3: $e0 $96
    ldh [rSVBK], a                                ; $4cc5: $e0 $70
    ld hl, $d63c                                  ; $4cc7: $21 $3c $d6
    ld bc, $d406                                  ; $4cca: $01 $06 $d4
    call Call_041_546a                            ; $4ccd: $cd $6a $54
    ret                                           ; $4cd0: $c9


    ld a, $06                                     ; $4cd1: $3e $06
    ldh [$96], a                                  ; $4cd3: $e0 $96
    ldh [rSVBK], a                                ; $4cd5: $e0 $70
    ld hl, $d63e                                  ; $4cd7: $21 $3e $d6
    ld a, [hl+]                                   ; $4cda: $2a
    ld h, [hl]                                    ; $4cdb: $66
    ld l, a                                       ; $4cdc: $6f
    ld a, [$d632]                                 ; $4cdd: $fa $32 $d6
    and a                                         ; $4ce0: $a7
    jr z, jr_041_4ced                             ; $4ce1: $28 $0a

    ld d, h                                       ; $4ce3: $54
    ld e, l                                       ; $4ce4: $5d
    ld hl, $d648                                  ; $4ce5: $21 $48 $d6
    ld a, [hl]                                    ; $4ce8: $7e
    call Call_041_4d2a                            ; $4ce9: $cd $2a $4d
    add hl, de                                    ; $4cec: $19

jr_041_4ced:
    ld a, $03                                     ; $4ced: $3e $03
    ld de, $d64e                                  ; $4cef: $11 $4e $d6
    call Call_000_21f0                            ; $4cf2: $cd $f0 $21
    ld bc, $d434                                  ; $4cf5: $01 $34 $d4
    ld hl, $d64e                                  ; $4cf8: $21 $4e $d6
    ld de, $6b1e                                  ; $4cfb: $11 $1e $6b
    ld a, $03                                     ; $4cfe: $3e $03
    call Call_041_4d04                            ; $4d00: $cd $04 $4d
    ret                                           ; $4d03: $c9


Call_041_4d04:
jr_041_4d04:
    push af                                       ; $4d04: $f5
    push de                                       ; $4d05: $d5
    push hl                                       ; $4d06: $e5
    ld h, b                                       ; $4d07: $60
    ld l, c                                       ; $4d08: $69
    ld a, [hl]                                    ; $4d09: $7e
    add e                                         ; $4d0a: $83
    ld e, a                                       ; $4d0b: $5f
    pop hl                                        ; $4d0c: $e1
    push hl                                       ; $4d0d: $e5
    push bc                                       ; $4d0e: $c5
    ld a, [hl]                                    ; $4d0f: $7e
    sub $30                                       ; $4d10: $d6 $30
    inc a                                         ; $4d12: $3c
    add a                                         ; $4d13: $87
    add $30                                       ; $4d14: $c6 $30
    ld c, a                                       ; $4d16: $4f
    ld b, $01                                     ; $4d17: $06 $01
    call Call_000_2798                            ; $4d19: $cd $98 $27
    pop bc                                        ; $4d1c: $c1
    pop hl                                        ; $4d1d: $e1
    pop de                                        ; $4d1e: $d1
    dec bc                                        ; $4d1f: $0b
    inc hl                                        ; $4d20: $23
    ld a, d                                       ; $4d21: $7a
    add $08                                       ; $4d22: $c6 $08
    ld d, a                                       ; $4d24: $57
    pop af                                        ; $4d25: $f1
    dec a                                         ; $4d26: $3d
    jr nz, jr_041_4d04                            ; $4d27: $20 $db

    ret                                           ; $4d29: $c9


Call_041_4d2a:
    ld l, a                                       ; $4d2a: $6f
    rlca                                          ; $4d2b: $07
    sbc a                                         ; $4d2c: $9f
    ld h, a                                       ; $4d2d: $67
    ret                                           ; $4d2e: $c9


    ld b, $01                                     ; $4d2f: $06 $01
    ld a, $06                                     ; $4d31: $3e $06
    ldh [$96], a                                  ; $4d33: $e0 $96
    ldh [rSVBK], a                                ; $4d35: $e0 $70
    ld hl, $d406                                  ; $4d37: $21 $06 $d4
    ld a, [hl]                                    ; $4d3a: $7e
    bit 7, a                                      ; $4d3b: $cb $7f
    jr nz, jr_041_4d5e                            ; $4d3d: $20 $1f

    ld de, $1026                                  ; $4d3f: $11 $26 $10
    inc a                                         ; $4d42: $3c
    add a                                         ; $4d43: $87
    add $30                                       ; $4d44: $c6 $30
    ld c, a                                       ; $4d46: $4f
    push hl                                       ; $4d47: $e5
    push de                                       ; $4d48: $d5
    push af                                       ; $4d49: $f5
    call Call_000_2798                            ; $4d4a: $cd $98 $27
    pop af                                        ; $4d4d: $f1
    pop de                                        ; $4d4e: $d1
    pop hl                                        ; $4d4f: $e1
    inc hl                                        ; $4d50: $23
    ld a, [hl]                                    ; $4d51: $7e
    ld d, $18                                     ; $4d52: $16 $18
    inc a                                         ; $4d54: $3c
    add a                                         ; $4d55: $87
    add $30                                       ; $4d56: $c6 $30
    ld c, a                                       ; $4d58: $4f
    call Call_000_2798                            ; $4d59: $cd $98 $27
    jr jr_041_4d6b                                ; $4d5c: $18 $0d

jr_041_4d5e:
    ld de, $1426                                  ; $4d5e: $11 $26 $14
    inc hl                                        ; $4d61: $23
    ld a, [hl]                                    ; $4d62: $7e
    inc a                                         ; $4d63: $3c
    add a                                         ; $4d64: $87
    add $30                                       ; $4d65: $c6 $30
    ld c, a                                       ; $4d67: $4f
    call Call_000_2798                            ; $4d68: $cd $98 $27

jr_041_4d6b:
    ld bc, $0200                                  ; $4d6b: $01 $00 $02
    ld d, $38                                     ; $4d6e: $16 $38
    ld e, $30                                     ; $4d70: $1e $30
    ld hl, $63be                                  ; $4d72: $21 $be $63
    call Call_000_26ea                            ; $4d75: $cd $ea $26
    ret                                           ; $4d78: $c9


    ld a, $06                                     ; $4d79: $3e $06
    ldh [$96], a                                  ; $4d7b: $e0 $96
    ldh [rSVBK], a                                ; $4d7d: $e0 $70
    ld a, [$d4a4]                                 ; $4d7f: $fa $a4 $d4
    and a                                         ; $4d82: $a7
    ret z                                         ; $4d83: $c8

    ld a, [$d632]                                 ; $4d84: $fa $32 $d6
    and a                                         ; $4d87: $a7
    jr z, jr_041_4d8e                             ; $4d88: $28 $04

    xor a                                         ; $4d8a: $af
    ld [$d43f], a                                 ; $4d8b: $ea $3f $d4

jr_041_4d8e:
    ld b, $05                                     ; $4d8e: $06 $05
    ld hl, $d43d                                  ; $4d90: $21 $3d $d4
    ld a, [hl]                                    ; $4d93: $7e
    bit 7, a                                      ; $4d94: $cb $7f
    jr nz, jr_041_4dba                            ; $4d96: $20 $22

    ld de, $0840                                  ; $4d98: $11 $40 $08
    add a                                         ; $4d9b: $87
    add $46                                       ; $4d9c: $c6 $46
    ld c, a                                       ; $4d9e: $4f
    ld a, [$d43f]                                 ; $4d9f: $fa $3f $d4
    add e                                         ; $4da2: $83
    ld e, a                                       ; $4da3: $5f
    push hl                                       ; $4da4: $e5
    push de                                       ; $4da5: $d5
    push af                                       ; $4da6: $f5
    call Call_000_2798                            ; $4da7: $cd $98 $27
    pop af                                        ; $4daa: $f1
    pop de                                        ; $4dab: $d1
    pop hl                                        ; $4dac: $e1
    inc hl                                        ; $4dad: $23
    ld a, [hl]                                    ; $4dae: $7e
    ld d, $10                                     ; $4daf: $16 $10
    add a                                         ; $4db1: $87
    add $46                                       ; $4db2: $c6 $46
    ld c, a                                       ; $4db4: $4f
    call Call_000_2798                            ; $4db5: $cd $98 $27
    jr jr_041_4dcb                                ; $4db8: $18 $11

jr_041_4dba:
    ld de, $0c40                                  ; $4dba: $11 $40 $0c
    ld a, [$d43f]                                 ; $4dbd: $fa $3f $d4
    add e                                         ; $4dc0: $83
    ld e, a                                       ; $4dc1: $5f
    inc hl                                        ; $4dc2: $23
    ld a, [hl]                                    ; $4dc3: $7e
    add a                                         ; $4dc4: $87
    add $46                                       ; $4dc5: $c6 $46
    ld c, a                                       ; $4dc7: $4f
    call Call_000_2798                            ; $4dc8: $cd $98 $27

jr_041_4dcb:
    ld c, $5a                                     ; $4dcb: $0e $5a
    ld de, $1940                                  ; $4dcd: $11 $40 $19
    ld a, [$d43f]                                 ; $4dd0: $fa $3f $d4
    add e                                         ; $4dd3: $83
    ld e, a                                       ; $4dd4: $5f
    call Call_000_2798                            ; $4dd5: $cd $98 $27
    ld c, $5c                                     ; $4dd8: $0e $5c
    ld de, $2140                                  ; $4dda: $11 $40 $21
    ld a, [$d43f]                                 ; $4ddd: $fa $3f $d4
    add e                                         ; $4de0: $83
    ld e, a                                       ; $4de1: $5f
    call Call_000_2798                            ; $4de2: $cd $98 $27
    ld a, [$c4b2]                                 ; $4de5: $fa $b2 $c4
    and $1f                                       ; $4de8: $e6 $1f
    cp $0f                                        ; $4dea: $fe $0f
    jr nz, jr_041_4df5                            ; $4dec: $20 $07

    ld a, $fd                                     ; $4dee: $3e $fd
    ld [$d43f], a                                 ; $4df0: $ea $3f $d4
    jr jr_041_4dfb                                ; $4df3: $18 $06

jr_041_4df5:
    ld hl, $d43f                                  ; $4df5: $21 $3f $d4
    call Call_041_51de                            ; $4df8: $cd $de $51

jr_041_4dfb:
    ret                                           ; $4dfb: $c9


    ld a, $06                                     ; $4dfc: $3e $06
    ldh [$96], a                                  ; $4dfe: $e0 $96
    ldh [rSVBK], a                                ; $4e00: $e0 $70
    ld a, [$d4a4]                                 ; $4e02: $fa $a4 $d4
    and a                                         ; $4e05: $a7
    ret z                                         ; $4e06: $c8

    ld a, [$d632]                                 ; $4e07: $fa $32 $d6
    and a                                         ; $4e0a: $a7
    ret nz                                        ; $4e0b: $c0

    ld a, [$d548]                                 ; $4e0c: $fa $48 $d5
    and a                                         ; $4e0f: $a7
    ret nz                                        ; $4e10: $c0

    ld hl, $d452                                  ; $4e11: $21 $52 $d4
    ld a, [hl]                                    ; $4e14: $7e
    inc a                                         ; $4e15: $3c
    and $3f                                       ; $4e16: $e6 $3f
    ld [hl], a                                    ; $4e18: $77
    sub $14                                       ; $4e19: $d6 $14
    ret c                                         ; $4e1b: $d8

    cp $05                                        ; $4e1c: $fe $05
    ret z                                         ; $4e1e: $c8

    cp $06                                        ; $4e1f: $fe $06
    ret z                                         ; $4e21: $c8

    cp $07                                        ; $4e22: $fe $07
    ret z                                         ; $4e24: $c8

    cp $08                                        ; $4e25: $fe $08
    ret z                                         ; $4e27: $c8

    cp $09                                        ; $4e28: $fe $09
    ret z                                         ; $4e2a: $c8

    ld hl, $d442                                  ; $4e2b: $21 $42 $d4
    ld d, [hl]                                    ; $4e2e: $56
    inc hl                                        ; $4e2f: $23
    ld e, [hl]                                    ; $4e30: $5e
    inc hl                                        ; $4e31: $23
    ld bc, $072c                                  ; $4e32: $01 $2c $07
    call Call_000_2798                            ; $4e35: $cd $98 $27
    ld hl, $d444                                  ; $4e38: $21 $44 $d4
    ld d, [hl]                                    ; $4e3b: $56
    inc hl                                        ; $4e3c: $23
    ld e, [hl]                                    ; $4e3d: $5e
    inc hl                                        ; $4e3e: $23
    ld bc, $072c                                  ; $4e3f: $01 $2c $07
    call Call_000_2798                            ; $4e42: $cd $98 $27
    ld hl, $d446                                  ; $4e45: $21 $46 $d4
    ld d, [hl]                                    ; $4e48: $56
    inc hl                                        ; $4e49: $23
    ld e, [hl]                                    ; $4e4a: $5e
    inc hl                                        ; $4e4b: $23
    ld bc, $072e                                  ; $4e4c: $01 $2e $07
    call Call_000_2798                            ; $4e4f: $cd $98 $27
    ld hl, $d448                                  ; $4e52: $21 $48 $d4
    ld d, [hl]                                    ; $4e55: $56
    inc hl                                        ; $4e56: $23
    ld e, [hl]                                    ; $4e57: $5e
    inc hl                                        ; $4e58: $23
    ld bc, $072e                                  ; $4e59: $01 $2e $07
    call Call_000_2798                            ; $4e5c: $cd $98 $27
    ld hl, $d44a                                  ; $4e5f: $21 $4a $d4
    ld d, [hl]                                    ; $4e62: $56
    inc hl                                        ; $4e63: $23
    ld e, [hl]                                    ; $4e64: $5e
    inc hl                                        ; $4e65: $23
    ld bc, $072c                                  ; $4e66: $01 $2c $07
    call Call_000_2798                            ; $4e69: $cd $98 $27
    ld hl, $d44c                                  ; $4e6c: $21 $4c $d4
    ld d, [hl]                                    ; $4e6f: $56
    inc hl                                        ; $4e70: $23
    ld e, [hl]                                    ; $4e71: $5e
    inc hl                                        ; $4e72: $23
    ld bc, $072c                                  ; $4e73: $01 $2c $07
    call Call_000_2798                            ; $4e76: $cd $98 $27
    ld hl, $d44e                                  ; $4e79: $21 $4e $d4
    ld d, [hl]                                    ; $4e7c: $56
    inc hl                                        ; $4e7d: $23
    ld e, [hl]                                    ; $4e7e: $5e
    inc hl                                        ; $4e7f: $23
    ld bc, $072e                                  ; $4e80: $01 $2e $07
    call Call_000_2798                            ; $4e83: $cd $98 $27
    ld hl, $d450                                  ; $4e86: $21 $50 $d4
    ld d, [hl]                                    ; $4e89: $56
    inc hl                                        ; $4e8a: $23
    ld e, [hl]                                    ; $4e8b: $5e
    inc hl                                        ; $4e8c: $23
    ld bc, $072e                                  ; $4e8d: $01 $2e $07
    call Call_000_2798                            ; $4e90: $cd $98 $27
    ret                                           ; $4e93: $c9


Call_041_4e94:
    ld a, $06                                     ; $4e94: $3e $06
    ldh [$96], a                                  ; $4e96: $e0 $96
    ldh [rSVBK], a                                ; $4e98: $e0 $70
    ld hl, $d642                                  ; $4e9a: $21 $42 $d6
    ld a, [hl+]                                   ; $4e9d: $2a
    ld h, [hl]                                    ; $4e9e: $66
    ld l, a                                       ; $4e9f: $6f
    ld a, [$d632]                                 ; $4ea0: $fa $32 $d6
    and a                                         ; $4ea3: $a7
    jr z, jr_041_4eb0                             ; $4ea4: $28 $0a

    ld d, h                                       ; $4ea6: $54
    ld e, l                                       ; $4ea7: $5d
    ld hl, $d64a                                  ; $4ea8: $21 $4a $d6
    ld a, [hl]                                    ; $4eab: $7e
    call Call_041_4d2a                            ; $4eac: $cd $2a $4d
    add hl, de                                    ; $4eaf: $19

jr_041_4eb0:
    ld a, $03                                     ; $4eb0: $3e $03
    ldh [$96], a                                  ; $4eb2: $e0 $96
    ldh [rSVBK], a                                ; $4eb4: $e0 $70
    ld de, $0060                                  ; $4eb6: $11 $60 $00
    call Call_041_4f71                            ; $4eb9: $cd $71 $4f
    ld hl, $d120                                  ; $4ebc: $21 $20 $d1
    ld de, $9920                                  ; $4ebf: $11 $20 $99
    ld c, $04                                     ; $4ec2: $0e $04
    call Call_000_0468                            ; $4ec4: $cd $68 $04
    ld a, $06                                     ; $4ec7: $3e $06
    ldh [$96], a                                  ; $4ec9: $e0 $96
    ldh [rSVBK], a                                ; $4ecb: $e0 $70
    ret                                           ; $4ecd: $c9


Call_041_4ece:
    ld a, $06                                     ; $4ece: $3e $06
    ldh [$96], a                                  ; $4ed0: $e0 $96
    ldh [rSVBK], a                                ; $4ed2: $e0 $70
    ld hl, $d640                                  ; $4ed4: $21 $40 $d6
    ld a, [hl+]                                   ; $4ed7: $2a
    ld h, [hl]                                    ; $4ed8: $66
    ld l, a                                       ; $4ed9: $6f
    ld a, [$d632]                                 ; $4eda: $fa $32 $d6
    and a                                         ; $4edd: $a7
    jr z, jr_041_4eea                             ; $4ede: $28 $0a

    ld d, h                                       ; $4ee0: $54
    ld e, l                                       ; $4ee1: $5d
    ld hl, $d649                                  ; $4ee2: $21 $49 $d6
    ld a, [hl]                                    ; $4ee5: $7e
    call Call_041_4d2a                            ; $4ee6: $cd $2a $4d
    add hl, de                                    ; $4ee9: $19

jr_041_4eea:
    ld a, $03                                     ; $4eea: $3e $03
    ldh [$96], a                                  ; $4eec: $e0 $96
    ldh [rSVBK], a                                ; $4eee: $e0 $70
    ld de, $0000                                  ; $4ef0: $11 $00 $00
    call Call_041_4f71                            ; $4ef3: $cd $71 $4f
    ld hl, $d0c0                                  ; $4ef6: $21 $c0 $d0
    ld de, $98c0                                  ; $4ef9: $11 $c0 $98
    ld c, $04                                     ; $4efc: $0e $04
    call Call_000_0468                            ; $4efe: $cd $68 $04
    ld a, $06                                     ; $4f01: $3e $06
    ldh [$96], a                                  ; $4f03: $e0 $96
    ldh [rSVBK], a                                ; $4f05: $e0 $70
    ret                                           ; $4f07: $c9


Call_041_4f08:
    ld a, $06                                     ; $4f08: $3e $06
    ldh [$96], a                                  ; $4f0a: $e0 $96
    ldh [rSVBK], a                                ; $4f0c: $e0 $70
    ld hl, $d644                                  ; $4f0e: $21 $44 $d6
    ld a, [hl+]                                   ; $4f11: $2a
    ld h, [hl]                                    ; $4f12: $66
    ld l, a                                       ; $4f13: $6f
    ld a, [$d632]                                 ; $4f14: $fa $32 $d6
    and a                                         ; $4f17: $a7
    jr z, jr_041_4f24                             ; $4f18: $28 $0a

    ld d, h                                       ; $4f1a: $54
    ld e, l                                       ; $4f1b: $5d
    ld hl, $d64b                                  ; $4f1c: $21 $4b $d6
    ld a, [hl]                                    ; $4f1f: $7e
    call Call_041_4d2a                            ; $4f20: $cd $2a $4d
    add hl, de                                    ; $4f23: $19

jr_041_4f24:
    ld a, $03                                     ; $4f24: $3e $03
    ldh [$96], a                                  ; $4f26: $e0 $96
    ldh [rSVBK], a                                ; $4f28: $e0 $70
    ld de, $00e0                                  ; $4f2a: $11 $e0 $00
    call Call_041_4f71                            ; $4f2d: $cd $71 $4f
    ld hl, $d1a2                                  ; $4f30: $21 $a2 $d1
    ld de, $99a2                                  ; $4f33: $11 $a2 $99
    ld c, $08                                     ; $4f36: $0e $08
    call Call_000_0468                            ; $4f38: $cd $68 $04
    ld a, $06                                     ; $4f3b: $3e $06
    ldh [$96], a                                  ; $4f3d: $e0 $96
    ldh [rSVBK], a                                ; $4f3f: $e0 $70
    ret                                           ; $4f41: $c9


Call_041_4f42:
    ld a, $06                                     ; $4f42: $3e $06
    ldh [$96], a                                  ; $4f44: $e0 $96
    ldh [rSVBK], a                                ; $4f46: $e0 $70
    ld hl, $d646                                  ; $4f48: $21 $46 $d6
    ld a, [hl+]                                   ; $4f4b: $2a
    ld h, [hl]                                    ; $4f4c: $66
    ld l, a                                       ; $4f4d: $6f
    ld a, [$d632]                                 ; $4f4e: $fa $32 $d6
    and a                                         ; $4f51: $a7
    jr z, jr_041_4f5e                             ; $4f52: $28 $0a

    ld d, h                                       ; $4f54: $54
    ld e, l                                       ; $4f55: $5d
    ld hl, $d64c                                  ; $4f56: $21 $4c $d6
    ld a, [hl]                                    ; $4f59: $7e
    call Call_041_4d2a                            ; $4f5a: $cd $2a $4d
    add hl, de                                    ; $4f5d: $19

jr_041_4f5e:
    ld a, $03                                     ; $4f5e: $3e $03
    ldh [$96], a                                  ; $4f60: $e0 $96
    ldh [rSVBK], a                                ; $4f62: $e0 $70
    ld de, $0120                                  ; $4f64: $11 $20 $01
    call Call_041_4f71                            ; $4f67: $cd $71 $4f
    ld a, $06                                     ; $4f6a: $3e $06
    ldh [$96], a                                  ; $4f6c: $e0 $96
    ldh [rSVBK], a                                ; $4f6e: $e0 $70
    ret                                           ; $4f70: $c9


Call_041_4f71:
    call Call_041_506f                            ; $4f71: $cd $6f $50
    ld c, $00                                     ; $4f74: $0e $00
    ld a, l                                       ; $4f76: $7d
    bit 7, a                                      ; $4f77: $cb $7f
    jp nz, Jump_041_5006                          ; $4f79: $c2 $06 $50

    cp $04                                        ; $4f7c: $fe $04
    jr z, jr_041_4f8f                             ; $4f7e: $28 $0f

    cp $03                                        ; $4f80: $fe $03
    jr z, jr_041_4fa7                             ; $4f82: $28 $23

    cp $02                                        ; $4f84: $fe $02
    jr z, jr_041_4fd8                             ; $4f86: $28 $50

    cp $01                                        ; $4f88: $fe $01
    jr z, jr_041_4fee                             ; $4f8a: $28 $62

    jp Jump_041_506e                              ; $4f8c: $c3 $6e $50


jr_041_4f8f:
    ld c, $01                                     ; $4f8f: $0e $01
    ld b, $01                                     ; $4f91: $06 $01
    ld hl, $d0cf                                  ; $4f93: $21 $cf $d0
    add hl, de                                    ; $4f96: $19
    ld a, $0a                                     ; $4f97: $3e $0a
    call Call_041_48ed                            ; $4f99: $cd $ed $48
    ld b, $01                                     ; $4f9c: $06 $01
    ld hl, $d0ef                                  ; $4f9e: $21 $ef $d0
    add hl, de                                    ; $4fa1: $19
    ld a, $19                                     ; $4fa2: $3e $19
    call Call_041_48ed                            ; $4fa4: $cd $ed $48

jr_041_4fa7:
    dec c                                         ; $4fa7: $0d
    jr z, jr_041_4fc0                             ; $4fa8: $28 $16

    ld b, $01                                     ; $4faa: $06 $01
    ld hl, $d0cf                                  ; $4fac: $21 $cf $d0
    add hl, de                                    ; $4faf: $19
    ld a, $09                                     ; $4fb0: $3e $09
    call Call_041_48ed                            ; $4fb2: $cd $ed $48
    ld b, $01                                     ; $4fb5: $06 $01
    ld hl, $d0ef                                  ; $4fb7: $21 $ef $d0
    add hl, de                                    ; $4fba: $19
    ld a, $18                                     ; $4fbb: $3e $18
    call Call_041_48ed                            ; $4fbd: $cd $ed $48

jr_041_4fc0:
    ld b, $01                                     ; $4fc0: $06 $01
    ld hl, $d0ce                                  ; $4fc2: $21 $ce $d0
    add hl, de                                    ; $4fc5: $19
    ld a, $08                                     ; $4fc6: $3e $08
    call Call_041_48ed                            ; $4fc8: $cd $ed $48
    ld b, $01                                     ; $4fcb: $06 $01
    ld hl, $d0ee                                  ; $4fcd: $21 $ee $d0
    add hl, de                                    ; $4fd0: $19
    ld a, $17                                     ; $4fd1: $3e $17
    call Call_041_48ed                            ; $4fd3: $cd $ed $48
    jr jr_041_4fee                                ; $4fd6: $18 $16

jr_041_4fd8:
    ld b, $01                                     ; $4fd8: $06 $01
    ld hl, $d0ce                                  ; $4fda: $21 $ce $d0
    add hl, de                                    ; $4fdd: $19
    ld a, $07                                     ; $4fde: $3e $07
    call Call_041_48ed                            ; $4fe0: $cd $ed $48
    ld b, $01                                     ; $4fe3: $06 $01
    ld hl, $d0ee                                  ; $4fe5: $21 $ee $d0
    add hl, de                                    ; $4fe8: $19
    ld a, $16                                     ; $4fe9: $3e $16
    call Call_041_48ed                            ; $4feb: $cd $ed $48

jr_041_4fee:
    ld b, $01                                     ; $4fee: $06 $01
    ld hl, $d0cd                                  ; $4ff0: $21 $cd $d0
    add hl, de                                    ; $4ff3: $19
    ld a, $06                                     ; $4ff4: $3e $06
    call Call_041_48ed                            ; $4ff6: $cd $ed $48
    ld b, $01                                     ; $4ff9: $06 $01
    ld hl, $d0ed                                  ; $4ffb: $21 $ed $d0
    add hl, de                                    ; $4ffe: $19
    ld a, $15                                     ; $4fff: $3e $15
    call Call_041_48ed                            ; $5001: $cd $ed $48
    jr jr_041_506e                                ; $5004: $18 $68

Jump_041_5006:
    cp $fc                                        ; $5006: $fe $fc
    jr z, jr_041_5014                             ; $5008: $28 $0a

    cp $fd                                        ; $500a: $fe $fd
    jr z, jr_041_502a                             ; $500c: $28 $1c

    cp $fe                                        ; $500e: $fe $fe
    jr z, jr_041_5042                             ; $5010: $28 $30

    jr jr_041_5058                                ; $5012: $18 $44

jr_041_5014:
    ld b, $01                                     ; $5014: $06 $01
    ld hl, $d0ca                                  ; $5016: $21 $ca $d0
    add hl, de                                    ; $5019: $19
    ld a, $0e                                     ; $501a: $3e $0e
    call Call_041_48ed                            ; $501c: $cd $ed $48
    ld b, $01                                     ; $501f: $06 $01
    ld hl, $d0ea                                  ; $5021: $21 $ea $d0
    add hl, de                                    ; $5024: $19
    ld a, $1d                                     ; $5025: $3e $1d
    call Call_041_48ed                            ; $5027: $cd $ed $48

jr_041_502a:
    ld b, $01                                     ; $502a: $06 $01
    ld hl, $d0cb                                  ; $502c: $21 $cb $d0
    add hl, de                                    ; $502f: $19
    ld a, $0d                                     ; $5030: $3e $0d
    call Call_041_48ed                            ; $5032: $cd $ed $48
    ld b, $01                                     ; $5035: $06 $01
    ld hl, $d0eb                                  ; $5037: $21 $eb $d0
    add hl, de                                    ; $503a: $19
    ld a, $1c                                     ; $503b: $3e $1c
    call Call_041_48ed                            ; $503d: $cd $ed $48
    jr jr_041_5058                                ; $5040: $18 $16

jr_041_5042:
    ld b, $01                                     ; $5042: $06 $01
    ld hl, $d0cb                                  ; $5044: $21 $cb $d0
    add hl, de                                    ; $5047: $19
    ld a, $0c                                     ; $5048: $3e $0c
    call Call_041_48ed                            ; $504a: $cd $ed $48
    ld b, $01                                     ; $504d: $06 $01
    ld hl, $d0eb                                  ; $504f: $21 $eb $d0
    add hl, de                                    ; $5052: $19
    ld a, $1b                                     ; $5053: $3e $1b
    call Call_041_48ed                            ; $5055: $cd $ed $48

jr_041_5058:
    ld b, $01                                     ; $5058: $06 $01
    ld hl, $d0cc                                  ; $505a: $21 $cc $d0
    add hl, de                                    ; $505d: $19
    ld a, $0b                                     ; $505e: $3e $0b
    call Call_041_48ed                            ; $5060: $cd $ed $48
    ld b, $01                                     ; $5063: $06 $01
    ld hl, $d0ec                                  ; $5065: $21 $ec $d0
    add hl, de                                    ; $5068: $19
    ld a, $1a                                     ; $5069: $3e $1a
    call Call_041_48ed                            ; $506b: $cd $ed $48

Jump_041_506e:
jr_041_506e:
    ret                                           ; $506e: $c9


Call_041_506f:
    push hl                                       ; $506f: $e5
    ld b, $06                                     ; $5070: $06 $06
    ld hl, $d0ca                                  ; $5072: $21 $ca $d0
    add hl, de                                    ; $5075: $19
    ld a, $00                                     ; $5076: $3e $00
    call Call_041_48ed                            ; $5078: $cd $ed $48
    ld b, $06                                     ; $507b: $06 $06
    ld hl, $d0ea                                  ; $507d: $21 $ea $d0
    add hl, de                                    ; $5080: $19
    ld a, $0f                                     ; $5081: $3e $0f
    call Call_041_48ed                            ; $5083: $cd $ed $48
    pop hl                                        ; $5086: $e1
    ret                                           ; $5087: $c9


    rst $18                                       ; $5088: $df

    db $06, $42

    ret                                           ; $508b: $c9


Call_041_508c:
    ld a, $06                                     ; $508c: $3e $06
    ldh [$96], a                                  ; $508e: $e0 $96
    ldh [rSVBK], a                                ; $5090: $e0 $70
    ld a, [$d632]                                 ; $5092: $fa $32 $d6
    and a                                         ; $5095: $a7
    jr z, jr_041_50a6                             ; $5096: $28 $0e

    cp $02                                        ; $5098: $fe $02
    jr z, jr_041_50a6                             ; $509a: $28 $0a

    ld hl, $d630                                  ; $509c: $21 $30 $d6
    ld d, [hl]                                    ; $509f: $56
    ld hl, $d648                                  ; $50a0: $21 $48 $d6
    rst $18                                       ; $50a3: $df
    ld a, [de]                                    ; $50a4: $1a
    ld [bc], a                                    ; $50a5: $02

jr_041_50a6:
    call Call_041_4e94                            ; $50a6: $cd $94 $4e
    call Call_041_4ece                            ; $50a9: $cd $ce $4e
    call Call_041_4f08                            ; $50ac: $cd $08 $4f
    call Call_041_4f42                            ; $50af: $cd $42 $4f
    ret                                           ; $50b2: $c9


    ld a, $06                                     ; $50b3: $3e $06
    ldh [$96], a                                  ; $50b5: $e0 $96
    ldh [rSVBK], a                                ; $50b7: $e0 $70
    ld hl, $d4a0                                  ; $50b9: $21 $a0 $d4
    ld a, [hl]                                    ; $50bc: $7e
    cp $00                                        ; $50bd: $fe $00
    ret z                                         ; $50bf: $c8

    ld hl, $d4a1                                  ; $50c0: $21 $a1 $d4
    ld b, [hl]                                    ; $50c3: $46
    push hl                                       ; $50c4: $e5
    push bc                                       ; $50c5: $c5
    pop bc                                        ; $50c6: $c1
    dec b                                         ; $50c7: $05
    jr nz, jr_041_50cf                            ; $50c8: $20 $05

    ld hl, $d4a0                                  ; $50ca: $21 $a0 $d4
    ld [hl], $00                                  ; $50cd: $36 $00

jr_041_50cf:
    pop hl                                        ; $50cf: $e1
    ld [hl], b                                    ; $50d0: $70
    ret                                           ; $50d1: $c9


Call_041_50d2:
    ld a, $06                                     ; $50d2: $3e $06
    ldh [$96], a                                  ; $50d4: $e0 $96
    ldh [rSVBK], a                                ; $50d6: $e0 $70
    ld a, [$d632]                                 ; $50d8: $fa $32 $d6
    dec a                                         ; $50db: $3d
    ret nz                                        ; $50dc: $c0

    ld a, [$d430]                                 ; $50dd: $fa $30 $d4
    ld hl, $6486                                  ; $50e0: $21 $86 $64
    add a                                         ; $50e3: $87
    add l                                         ; $50e4: $85
    ld l, a                                       ; $50e5: $6f
    jr nc, jr_041_50e9                            ; $50e6: $30 $01

    inc h                                         ; $50e8: $24

jr_041_50e9:
    ld a, [hl+]                                   ; $50e9: $2a
    ld d, [hl]                                    ; $50ea: $56
    ld e, a                                       ; $50eb: $5f
    ld hl, $d42e                                  ; $50ec: $21 $2e $d4
    ld a, e                                       ; $50ef: $7b
    ld [hl+], a                                   ; $50f0: $22
    ld [hl], d                                    ; $50f1: $72
    ld hl, $d430                                  ; $50f2: $21 $30 $d4
    ld a, [hl]                                    ; $50f5: $7e
    inc a                                         ; $50f6: $3c
    and $3f                                       ; $50f7: $e6 $3f
    ld [hl], a                                    ; $50f9: $77
    ld hl, $d428                                  ; $50fa: $21 $28 $d4
    ld a, $c7                                     ; $50fd: $3e $c7
    ld [hl+], a                                   ; $50ff: $22
    ld a, $02                                     ; $5100: $3e $02
    ld [hl], a                                    ; $5102: $77
    ld hl, $d42a                                  ; $5103: $21 $2a $d4
    ld a, $ff                                     ; $5106: $3e $ff
    ld [hl+], a                                   ; $5108: $22
    ld a, $7f                                     ; $5109: $3e $7f
    ld [hl], a                                    ; $510b: $77
    ld hl, $d42c                                  ; $510c: $21 $2c $d4
    ld a, $3f                                     ; $510f: $3e $3f
    ld [hl+], a                                   ; $5111: $22
    ld a, $00                                     ; $5112: $3e $00
    ld [hl], a                                    ; $5114: $77
    ld a, [$d630]                                 ; $5115: $fa $30 $d6
    cp $03                                        ; $5118: $fe $03
    jr z, jr_041_5126                             ; $511a: $28 $0a

    cp $02                                        ; $511c: $fe $02
    jr z, jr_041_514b                             ; $511e: $28 $2b

    cp $01                                        ; $5120: $fe $01
    jr z, jr_041_5168                             ; $5122: $28 $44

    jr jr_041_518c                                ; $5124: $18 $66

jr_041_5126:
    xor a                                         ; $5126: $af
    ld hl, $d432                                  ; $5127: $21 $32 $d4
    ld [hl+], a                                   ; $512a: $22
    ld [hl+], a                                   ; $512b: $22
    ld [hl+], a                                   ; $512c: $22
    ld hl, $5d71                                  ; $512d: $21 $71 $5d
    ld de, $0301                                  ; $5130: $11 $01 $03
    call Call_000_056c                            ; $5133: $cd $6c $05
    ld hl, $5d71                                  ; $5136: $21 $71 $5d
    ld de, $0401                                  ; $5139: $11 $01 $04
    call Call_000_056c                            ; $513c: $cd $6c $05
    ld hl, $d428                                  ; $513f: $21 $28 $d4
    ld de, $0501                                  ; $5142: $11 $01 $05
    call Call_000_056c                            ; $5145: $cd $6c $05
    jp Jump_041_51dd                              ; $5148: $c3 $dd $51


jr_041_514b:
    ld hl, $5d71                                  ; $514b: $21 $71 $5d
    ld de, $0301                                  ; $514e: $11 $01 $03
    call Call_000_056c                            ; $5151: $cd $6c $05
    ld hl, $5d71                                  ; $5154: $21 $71 $5d
    ld de, $0501                                  ; $5157: $11 $01 $05
    call Call_000_056c                            ; $515a: $cd $6c $05
    ld hl, $d428                                  ; $515d: $21 $28 $d4
    ld de, $0401                                  ; $5160: $11 $01 $04
    call Call_000_056c                            ; $5163: $cd $6c $05
    jr jr_041_51dd                                ; $5166: $18 $75

jr_041_5168:
    xor a                                         ; $5168: $af
    ld hl, $d432                                  ; $5169: $21 $32 $d4
    ld [hl+], a                                   ; $516c: $22
    ld [hl+], a                                   ; $516d: $22
    ld [hl+], a                                   ; $516e: $22
    ld hl, $5d71                                  ; $516f: $21 $71 $5d
    ld de, $0401                                  ; $5172: $11 $01 $04
    call Call_000_056c                            ; $5175: $cd $6c $05
    ld hl, $5d71                                  ; $5178: $21 $71 $5d
    ld de, $0501                                  ; $517b: $11 $01 $05
    call Call_000_056c                            ; $517e: $cd $6c $05
    ld hl, $d428                                  ; $5181: $21 $28 $d4
    ld de, $0301                                  ; $5184: $11 $01 $03
    call Call_000_056c                            ; $5187: $cd $6c $05
    jr jr_041_51dd                                ; $518a: $18 $51

jr_041_518c:
    ld hl, $5d71                                  ; $518c: $21 $71 $5d
    ld de, $0301                                  ; $518f: $11 $01 $03
    call Call_000_056c                            ; $5192: $cd $6c $05
    ld hl, $5d71                                  ; $5195: $21 $71 $5d
    ld de, $0401                                  ; $5198: $11 $01 $04
    call Call_000_056c                            ; $519b: $cd $6c $05
    ld hl, $5d71                                  ; $519e: $21 $71 $5d
    ld de, $0501                                  ; $51a1: $11 $01 $05
    call Call_000_056c                            ; $51a4: $cd $6c $05
    ld a, [$c4b2]                                 ; $51a7: $fa $b2 $c4
    and $1f                                       ; $51aa: $e6 $1f
    cp $0f                                        ; $51ac: $fe $0f
    jr z, jr_041_51ba                             ; $51ae: $28 $0a

    cp $0a                                        ; $51b0: $fe $0a
    jr z, jr_041_51c1                             ; $51b2: $28 $0d

    cp $05                                        ; $51b4: $fe $05
    jr z, jr_041_51c8                             ; $51b6: $28 $10

    jr jr_041_51cf                                ; $51b8: $18 $15

jr_041_51ba:
    ld a, $fc                                     ; $51ba: $3e $fc
    ld [$d432], a                                 ; $51bc: $ea $32 $d4
    jr jr_041_51dd                                ; $51bf: $18 $1c

jr_041_51c1:
    ld a, $fc                                     ; $51c1: $3e $fc
    ld [$d433], a                                 ; $51c3: $ea $33 $d4
    jr jr_041_51dd                                ; $51c6: $18 $15

jr_041_51c8:
    ld a, $fc                                     ; $51c8: $3e $fc
    ld [$d434], a                                 ; $51ca: $ea $34 $d4
    jr jr_041_51dd                                ; $51cd: $18 $0e

jr_041_51cf:
    ld hl, $d432                                  ; $51cf: $21 $32 $d4
    call Call_041_51de                            ; $51d2: $cd $de $51
    inc hl                                        ; $51d5: $23
    call Call_041_51de                            ; $51d6: $cd $de $51
    inc hl                                        ; $51d9: $23
    call Call_041_51de                            ; $51da: $cd $de $51

Jump_041_51dd:
jr_041_51dd:
    ret                                           ; $51dd: $c9


Call_041_51de:
    ld a, [hl]                                    ; $51de: $7e
    and a                                         ; $51df: $a7
    ret z                                         ; $51e0: $c8

    inc a                                         ; $51e1: $3c
    ld [hl], a                                    ; $51e2: $77
    ret                                           ; $51e3: $c9


Call_041_51e4:
    ld a, $06                                     ; $51e4: $3e $06
    ldh [$96], a                                  ; $51e6: $e0 $96
    ldh [rSVBK], a                                ; $51e8: $e0 $70
    ld a, [$d632]                                 ; $51ea: $fa $32 $d6
    cp $04                                        ; $51ed: $fe $04
    jr z, jr_041_5202                             ; $51ef: $28 $11

    cp $03                                        ; $51f1: $fe $03
    jr z, jr_041_5255                             ; $51f3: $28 $60

    cp $02                                        ; $51f5: $fe $02
    jp z, Jump_041_52a4                           ; $51f7: $ca $a4 $52

    cp $01                                        ; $51fa: $fe $01
    jp z, Jump_041_5335                           ; $51fc: $ca $35 $53

    jp Jump_041_5358                              ; $51ff: $c3 $58 $53


jr_041_5202:
    xor a                                         ; $5202: $af
    ld [$d632], a                                 ; $5203: $ea $32 $d6
    ld a, $02                                     ; $5206: $3e $02
    ldh [$96], a                                  ; $5208: $e0 $96
    ldh [rSVBK], a                                ; $520a: $e0 $70
    ld b, $c0                                     ; $520c: $06 $c0
    ld hl, $d040                                  ; $520e: $21 $40 $d0
    ld de, $d400                                  ; $5211: $11 $00 $d4
    call Call_041_537b                            ; $5214: $cd $7b $53
    ld hl, $d240                                  ; $5217: $21 $40 $d2
    ld de, $d3c0                                  ; $521a: $11 $c0 $d3
    ld b, $40                                     ; $521d: $06 $40
    call Call_041_537b                            ; $521f: $cd $7b $53
    ld hl, $d3c0                                  ; $5222: $21 $c0 $d3
    ld de, $b800                                  ; $5225: $11 $00 $b8
    ld c, $10                                     ; $5228: $0e $10
    call Call_000_0468                            ; $522a: $cd $68 $04
    ld a, $03                                     ; $522d: $3e $03
    ldh [$96], a                                  ; $522f: $e0 $96
    ldh [rSVBK], a                                ; $5231: $e0 $70
    ld b, $c0                                     ; $5233: $06 $c0
    ld hl, $d040                                  ; $5235: $21 $40 $d0
    ld de, $d400                                  ; $5238: $11 $00 $d4
    call Call_041_537b                            ; $523b: $cd $7b $53
    ld hl, $d240                                  ; $523e: $21 $40 $d2
    ld de, $d3c0                                  ; $5241: $11 $c0 $d3
    ld b, $40                                     ; $5244: $06 $40
    call Call_041_537b                            ; $5246: $cd $7b $53
    ld hl, $d3c0                                  ; $5249: $21 $c0 $d3
    ld de, $9800                                  ; $524c: $11 $00 $98
    ld c, $10                                     ; $524f: $0e $10
    call Call_000_0468                            ; $5251: $cd $68 $04
    ret                                           ; $5254: $c9


jr_041_5255:
    ld a, $02                                     ; $5255: $3e $02
    ldh [$96], a                                  ; $5257: $e0 $96
    ldh [rSVBK], a                                ; $5259: $e0 $70
    ld b, $c0                                     ; $525b: $06 $c0
    ld hl, $d040                                  ; $525d: $21 $40 $d0
    ld de, $d400                                  ; $5260: $11 $00 $d4
    call Call_041_537b                            ; $5263: $cd $7b $53
    ld hl, $d280                                  ; $5266: $21 $80 $d2
    ld de, $d3c0                                  ; $5269: $11 $c0 $d3
    ld b, $40                                     ; $526c: $06 $40
    call Call_041_537b                            ; $526e: $cd $7b $53
    ld hl, $d3c0                                  ; $5271: $21 $c0 $d3
    ld de, $b800                                  ; $5274: $11 $00 $b8
    ld c, $10                                     ; $5277: $0e $10
    call Call_000_0468                            ; $5279: $cd $68 $04
    ld a, $03                                     ; $527c: $3e $03
    ldh [$96], a                                  ; $527e: $e0 $96
    ldh [rSVBK], a                                ; $5280: $e0 $70
    ld b, $c0                                     ; $5282: $06 $c0
    ld hl, $d040                                  ; $5284: $21 $40 $d0
    ld de, $d400                                  ; $5287: $11 $00 $d4
    call Call_041_537b                            ; $528a: $cd $7b $53
    ld hl, $d280                                  ; $528d: $21 $80 $d2
    ld de, $d3c0                                  ; $5290: $11 $c0 $d3
    ld b, $40                                     ; $5293: $06 $40
    call Call_041_537b                            ; $5295: $cd $7b $53
    ld hl, $d3c0                                  ; $5298: $21 $c0 $d3
    ld de, $9800                                  ; $529b: $11 $00 $98
    ld c, $10                                     ; $529e: $0e $10
    call Call_000_0468                            ; $52a0: $cd $68 $04
    ret                                           ; $52a3: $c9


Jump_041_52a4:
    ld a, $03                                     ; $52a4: $3e $03
    ldh [$96], a                                  ; $52a6: $e0 $96
    ldh [rSVBK], a                                ; $52a8: $e0 $70
    ld b, $0f                                     ; $52aa: $06 $0f
    ld hl, $d066                                  ; $52ac: $21 $66 $d0
    ld de, $d326                                  ; $52af: $11 $26 $d3
    call Call_041_537b                            ; $52b2: $cd $7b $53
    ld b, $0f                                     ; $52b5: $06 $0f
    ld hl, $d086                                  ; $52b7: $21 $86 $d0
    ld de, $d346                                  ; $52ba: $11 $46 $d3
    call Call_041_537b                            ; $52bd: $cd $7b $53
    ld b, $0f                                     ; $52c0: $06 $0f
    ld hl, $d0a6                                  ; $52c2: $21 $a6 $d0
    ld de, $d366                                  ; $52c5: $11 $66 $d3
    call Call_041_537b                            ; $52c8: $cd $7b $53
    ld b, $0f                                     ; $52cb: $06 $0f
    ld hl, $d0c6                                  ; $52cd: $21 $c6 $d0
    ld de, $d386                                  ; $52d0: $11 $86 $d3
    call Call_041_537b                            ; $52d3: $cd $7b $53
    ld b, $0f                                     ; $52d6: $06 $0f
    ld hl, $d0e6                                  ; $52d8: $21 $e6 $d0
    ld de, $d3a6                                  ; $52db: $11 $a6 $d3
    call Call_041_537b                            ; $52de: $cd $7b $53
    ld hl, $d2c0                                  ; $52e1: $21 $c0 $d2
    ld de, $9800                                  ; $52e4: $11 $00 $98
    ld c, $10                                     ; $52e7: $0e $10
    call Call_000_0468                            ; $52e9: $cd $68 $04
    ld a, $02                                     ; $52ec: $3e $02
    ldh [$96], a                                  ; $52ee: $e0 $96
    ldh [rSVBK], a                                ; $52f0: $e0 $70
    ld b, $0f                                     ; $52f2: $06 $0f
    ld hl, $d066                                  ; $52f4: $21 $66 $d0
    ld de, $d326                                  ; $52f7: $11 $26 $d3
    call Call_041_537b                            ; $52fa: $cd $7b $53
    ld b, $0f                                     ; $52fd: $06 $0f
    ld hl, $d086                                  ; $52ff: $21 $86 $d0
    ld de, $d346                                  ; $5302: $11 $46 $d3
    call Call_041_537b                            ; $5305: $cd $7b $53
    ld b, $0f                                     ; $5308: $06 $0f
    ld hl, $d0a6                                  ; $530a: $21 $a6 $d0
    ld de, $d366                                  ; $530d: $11 $66 $d3
    call Call_041_537b                            ; $5310: $cd $7b $53
    ld b, $0f                                     ; $5313: $06 $0f
    ld hl, $d0c6                                  ; $5315: $21 $c6 $d0
    ld de, $d386                                  ; $5318: $11 $86 $d3
    call Call_041_537b                            ; $531b: $cd $7b $53
    ld b, $0f                                     ; $531e: $06 $0f
    ld hl, $d0e6                                  ; $5320: $21 $e6 $d0
    ld de, $d3a6                                  ; $5323: $11 $a6 $d3
    call Call_041_537b                            ; $5326: $cd $7b $53
    ld hl, $d2c0                                  ; $5329: $21 $c0 $d2
    ld de, $b800                                  ; $532c: $11 $00 $b8
    ld c, $10                                     ; $532f: $0e $10
    call Call_000_0468                            ; $5331: $cd $68 $04
    ret                                           ; $5334: $c9


Jump_041_5335:
    ld a, $02                                     ; $5335: $3e $02
    ldh [$96], a                                  ; $5337: $e0 $96
    ldh [rSVBK], a                                ; $5339: $e0 $70
    ld hl, $d000                                  ; $533b: $21 $00 $d0
    ld de, $b800                                  ; $533e: $11 $00 $b8
    ld c, $04                                     ; $5341: $0e $04
    call Call_000_0468                            ; $5343: $cd $68 $04
    ld a, $03                                     ; $5346: $3e $03
    ldh [$96], a                                  ; $5348: $e0 $96
    ldh [rSVBK], a                                ; $534a: $e0 $70
    ld hl, $d000                                  ; $534c: $21 $00 $d0
    ld de, $9800                                  ; $534f: $11 $00 $98
    ld c, $04                                     ; $5352: $0e $04
    call Call_000_0468                            ; $5354: $cd $68 $04
    ret                                           ; $5357: $c9


Jump_041_5358:
    ld a, $02                                     ; $5358: $3e $02
    ldh [$96], a                                  ; $535a: $e0 $96
    ldh [rSVBK], a                                ; $535c: $e0 $70
    ld hl, $d240                                  ; $535e: $21 $40 $d2
    ld de, $b800                                  ; $5361: $11 $00 $b8
    ld c, $04                                     ; $5364: $0e $04
    call Call_000_0468                            ; $5366: $cd $68 $04
    ld a, $03                                     ; $5369: $3e $03
    ldh [$96], a                                  ; $536b: $e0 $96
    ldh [rSVBK], a                                ; $536d: $e0 $70
    ld hl, $d240                                  ; $536f: $21 $40 $d2
    ld de, $9800                                  ; $5372: $11 $00 $98
    ld c, $04                                     ; $5375: $0e $04
    call Call_000_0468                            ; $5377: $cd $68 $04
    ret                                           ; $537a: $c9


Call_041_537b:
jr_041_537b:
    ld a, [hl]                                    ; $537b: $7e
    ld [de], a                                    ; $537c: $12
    inc hl                                        ; $537d: $23
    inc de                                        ; $537e: $13
    dec b                                         ; $537f: $05
    jr nz, jr_041_537b                            ; $5380: $20 $f9

    ret                                           ; $5382: $c9


Call_041_5383:
    ld a, $06                                     ; $5383: $3e $06
    ldh [$96], a                                  ; $5385: $e0 $96
    ldh [rSVBK], a                                ; $5387: $e0 $70
    ld hl, $5d71                                  ; $5389: $21 $71 $5d
    ld a, [$d630]                                 ; $538c: $fa $30 $d6
    cp $01                                        ; $538f: $fe $01
    jr z, jr_041_53a3                             ; $5391: $28 $10

    cp $02                                        ; $5393: $fe $02
    jr z, jr_041_53aa                             ; $5395: $28 $13

    cp $03                                        ; $5397: $fe $03
    jr z, jr_041_53b1                             ; $5399: $28 $16

    xor a                                         ; $539b: $af
    ld hl, $d432                                  ; $539c: $21 $32 $d4
    ld [hl+], a                                   ; $539f: $22
    ld [hl+], a                                   ; $53a0: $22
    ld [hl+], a                                   ; $53a1: $22
    ret                                           ; $53a2: $c9


jr_041_53a3:
    ld de, $0301                                  ; $53a3: $11 $01 $03
    call Call_000_056c                            ; $53a6: $cd $6c $05
    ret                                           ; $53a9: $c9


jr_041_53aa:
    ld de, $0401                                  ; $53aa: $11 $01 $04
    call Call_000_056c                            ; $53ad: $cd $6c $05
    ret                                           ; $53b0: $c9


jr_041_53b1:
    ld de, $0501                                  ; $53b1: $11 $01 $05
    call Call_000_056c                            ; $53b4: $cd $6c $05
    ret                                           ; $53b7: $c9


    ld a, $06                                     ; $53b8: $3e $06
    ldh [$96], a                                  ; $53ba: $e0 $96
    ldh [rSVBK], a                                ; $53bc: $e0 $70
    ld a, [$d632]                                 ; $53be: $fa $32 $d6
    and a                                         ; $53c1: $a7
    ret z                                         ; $53c2: $c8

    ld b, $00                                     ; $53c3: $06 $00
    ld a, [$d630]                                 ; $53c5: $fa $30 $d6
    and a                                         ; $53c8: $a7
    jr nz, jr_041_53d4                            ; $53c9: $20 $09

    ld a, [$d631]                                 ; $53cb: $fa $31 $d6
    sub $10                                       ; $53ce: $d6 $10
    jr c, jr_041_53ec                             ; $53d0: $38 $1a

    ld b, $01                                     ; $53d2: $06 $01

jr_041_53d4:
    ld hl, $d453                                  ; $53d4: $21 $53 $d4
    ld a, [hl]                                    ; $53d7: $7e
    push af                                       ; $53d8: $f5
    push hl                                       ; $53d9: $e5
    add b                                         ; $53da: $80
    ld [hl], a                                    ; $53db: $77
    ld bc, $d457                                  ; $53dc: $01 $57 $d4
    call Call_041_546a                            ; $53df: $cd $6a $54
    ld d, $8c                                     ; $53e2: $16 $8c
    ld e, $1c                                     ; $53e4: $1e $1c
    call Call_041_5497                            ; $53e6: $cd $97 $54
    pop hl                                        ; $53e9: $e1
    pop af                                        ; $53ea: $f1
    ld [hl], a                                    ; $53eb: $77

jr_041_53ec:
    ld b, $00                                     ; $53ec: $06 $00
    ld a, [$d630]                                 ; $53ee: $fa $30 $d6
    dec a                                         ; $53f1: $3d
    jr nz, jr_041_53fd                            ; $53f2: $20 $09

    ld a, [$d631]                                 ; $53f4: $fa $31 $d6
    sub $10                                       ; $53f7: $d6 $10
    jr c, jr_041_5415                             ; $53f9: $38 $1a

    ld b, $01                                     ; $53fb: $06 $01

jr_041_53fd:
    ld hl, $d454                                  ; $53fd: $21 $54 $d4
    ld a, [hl]                                    ; $5400: $7e
    push af                                       ; $5401: $f5
    push hl                                       ; $5402: $e5
    add b                                         ; $5403: $80
    ld [hl], a                                    ; $5404: $77
    ld bc, $d459                                  ; $5405: $01 $59 $d4
    call Call_041_546a                            ; $5408: $cd $6a $54
    ld d, $8c                                     ; $540b: $16 $8c
    ld e, $2e                                     ; $540d: $1e $2e
    call Call_041_5497                            ; $540f: $cd $97 $54
    pop hl                                        ; $5412: $e1
    pop af                                        ; $5413: $f1
    ld [hl], a                                    ; $5414: $77

jr_041_5415:
    ld b, $00                                     ; $5415: $06 $00
    ld a, [$d630]                                 ; $5417: $fa $30 $d6
    cp $02                                        ; $541a: $fe $02
    jr nz, jr_041_5427                            ; $541c: $20 $09

    ld a, [$d631]                                 ; $541e: $fa $31 $d6
    sub $10                                       ; $5421: $d6 $10
    jr c, jr_041_543f                             ; $5423: $38 $1a

    ld b, $01                                     ; $5425: $06 $01

jr_041_5427:
    ld hl, $d455                                  ; $5427: $21 $55 $d4
    ld a, [hl]                                    ; $542a: $7e
    push af                                       ; $542b: $f5
    push hl                                       ; $542c: $e5
    add b                                         ; $542d: $80
    ld [hl], a                                    ; $542e: $77
    ld bc, $d45b                                  ; $542f: $01 $5b $d4
    call Call_041_546a                            ; $5432: $cd $6a $54
    ld d, $8c                                     ; $5435: $16 $8c
    ld e, $46                                     ; $5437: $1e $46
    call Call_041_5497                            ; $5439: $cd $97 $54
    pop hl                                        ; $543c: $e1
    pop af                                        ; $543d: $f1
    ld [hl], a                                    ; $543e: $77

jr_041_543f:
    ld b, $00                                     ; $543f: $06 $00
    ld a, [$d630]                                 ; $5441: $fa $30 $d6
    cp $03                                        ; $5444: $fe $03
    jr nz, jr_041_5451                            ; $5446: $20 $09

    ld a, [$d631]                                 ; $5448: $fa $31 $d6
    sub $10                                       ; $544b: $d6 $10
    jr c, jr_041_5469                             ; $544d: $38 $1a

    ld b, $01                                     ; $544f: $06 $01

jr_041_5451:
    ld hl, $d456                                  ; $5451: $21 $56 $d4
    ld a, [hl]                                    ; $5454: $7e
    push af                                       ; $5455: $f5
    push hl                                       ; $5456: $e5
    add b                                         ; $5457: $80
    ld [hl], a                                    ; $5458: $77
    ld bc, $d45d                                  ; $5459: $01 $5d $d4
    call Call_041_546a                            ; $545c: $cd $6a $54
    ld d, $8c                                     ; $545f: $16 $8c
    ld e, $60                                     ; $5461: $1e $60
    call Call_041_5497                            ; $5463: $cd $97 $54
    pop hl                                        ; $5466: $e1
    pop af                                        ; $5467: $f1
    ld [hl], a                                    ; $5468: $77

jr_041_5469:
    ret                                           ; $5469: $c9


Call_041_546a:
    ld a, $06                                     ; $546a: $3e $06
    ldh [$96], a                                  ; $546c: $e0 $96
    ldh [rSVBK], a                                ; $546e: $e0 $70
    ld a, [hl]                                    ; $5470: $7e
    ld h, $00                                     ; $5471: $26 $00
    ld l, a                                       ; $5473: $6f
    ld a, $02                                     ; $5474: $3e $02
    ld de, $d64e                                  ; $5476: $11 $4e $d6
    call Call_000_21f0                            ; $5479: $cd $f0 $21
    ld hl, $d64e                                  ; $547c: $21 $4e $d6
    ld d, h                                       ; $547f: $54
    ld e, l                                       ; $5480: $5d
    ld a, [hl]                                    ; $5481: $7e
    ld h, b                                       ; $5482: $60
    ld l, c                                       ; $5483: $69
    sub $20                                       ; $5484: $d6 $20
    jr nz, jr_041_548c                            ; $5486: $20 $04

    ld [hl], $ff                                  ; $5488: $36 $ff
    jr jr_041_5490                                ; $548a: $18 $04

jr_041_548c:
    ld a, [de]                                    ; $548c: $1a
    sub $30                                       ; $548d: $d6 $30
    ld [hl], a                                    ; $548f: $77

jr_041_5490:
    inc de                                        ; $5490: $13
    inc hl                                        ; $5491: $23
    ld a, [de]                                    ; $5492: $1a
    sub $30                                       ; $5493: $d6 $30
    ld [hl], a                                    ; $5495: $77
    ret                                           ; $5496: $c9


Call_041_5497:
    ld h, b                                       ; $5497: $60
    ld l, c                                       ; $5498: $69
    ld b, $05                                     ; $5499: $06 $05
    ld a, [hl]                                    ; $549b: $7e
    bit 7, a                                      ; $549c: $cb $7f
    jr nz, jr_041_54bc                            ; $549e: $20 $1c

    add a                                         ; $54a0: $87
    add $46                                       ; $54a1: $c6 $46
    ld c, a                                       ; $54a3: $4f
    push hl                                       ; $54a4: $e5
    push de                                       ; $54a5: $d5
    push af                                       ; $54a6: $f5
    call Call_000_2798                            ; $54a7: $cd $98 $27
    pop af                                        ; $54aa: $f1
    pop de                                        ; $54ab: $d1
    pop hl                                        ; $54ac: $e1
    inc hl                                        ; $54ad: $23
    ld a, $08                                     ; $54ae: $3e $08
    add d                                         ; $54b0: $82
    ld d, a                                       ; $54b1: $57
    ld a, [hl]                                    ; $54b2: $7e
    add a                                         ; $54b3: $87
    add $46                                       ; $54b4: $c6 $46
    ld c, a                                       ; $54b6: $4f
    call Call_000_2798                            ; $54b7: $cd $98 $27
    jr jr_041_54c9                                ; $54ba: $18 $0d

jr_041_54bc:
    ld a, $08                                     ; $54bc: $3e $08
    add d                                         ; $54be: $82
    ld d, a                                       ; $54bf: $57
    inc hl                                        ; $54c0: $23
    ld a, [hl]                                    ; $54c1: $7e
    add a                                         ; $54c2: $87
    add $46                                       ; $54c3: $c6 $46
    ld c, a                                       ; $54c5: $4f
    call Call_000_2798                            ; $54c6: $cd $98 $27

jr_041_54c9:
    ret                                           ; $54c9: $c9


Jump_041_54ca:
    ld a, $06                                     ; $54ca: $3e $06
    ldh [$96], a                                  ; $54cc: $e0 $96
    ldh [rSVBK], a                                ; $54ce: $e0 $70
    xor a                                         ; $54d0: $af
    ld [$d630], a                                 ; $54d1: $ea $30 $d6
    ld [$d40a], a                                 ; $54d4: $ea $0a $d4
    ld a, $04                                     ; $54d7: $3e $04
    ld [$d632], a                                 ; $54d9: $ea $32 $d6
    ld a, $03                                     ; $54dc: $3e $03
    ld hl, $4dfc                                  ; $54de: $21 $fc $4d
    call Call_000_23e8                            ; $54e1: $cd $e8 $23
    ld a, $01                                     ; $54e4: $3e $01
    ld hl, $4d79                                  ; $54e6: $21 $79 $4d
    call Call_000_23e8                            ; $54e9: $cd $e8 $23
    ld a, $01                                     ; $54ec: $3e $01
    ld hl, $53b8                                  ; $54ee: $21 $b8 $53
    call Call_000_23e8                            ; $54f1: $cd $e8 $23
    ld a, $02                                     ; $54f4: $3e $02
    ld hl, $4d2f                                  ; $54f6: $21 $2f $4d
    call Call_000_23e8                            ; $54f9: $cd $e8 $23
    ld hl, $4328                                  ; $54fc: $21 $28 $43
    call Call_000_2449                            ; $54ff: $cd $49 $24
    call Call_041_4970                            ; $5502: $cd $70 $49
    xor a                                         ; $5505: $af
    call Call_041_49ed                            ; $5506: $cd $ed $49
    jp Jump_041_40da                              ; $5509: $c3 $da $40


Call_041_550c:
    ld a, $06                                     ; $550c: $3e $06
    ldh [$96], a                                  ; $550e: $e0 $96
    ldh [rSVBK], a                                ; $5510: $e0 $70
    ld a, [$d4d1]                                 ; $5512: $fa $d1 $d4
    and a                                         ; $5515: $a7
    jr nz, jr_041_551b                            ; $5516: $20 $03

    rst $08                                       ; $5518: $cf
    ld e, l                                       ; $5519: $5d
    ret                                           ; $551a: $c9


jr_041_551b:
    rst $08                                       ; $551b: $cf
    ld e, e                                       ; $551c: $5b
    ld hl, $d43c                                  ; $551d: $21 $3c $d4
    inc [hl]                                      ; $5520: $34
    ld hl, $c800                                  ; $5521: $21 $00 $c8
    ld a, l                                       ; $5524: $7d
    add $12                                       ; $5525: $c6 $12
    ld l, a                                       ; $5527: $6f
    ld a, h                                       ; $5528: $7c
    adc $00                                       ; $5529: $ce $00
    ld h, a                                       ; $552b: $67
    dec [hl]                                      ; $552c: $35
    ld a, [$d4d1]                                 ; $552d: $fa $d1 $d4
    dec a                                         ; $5530: $3d
    ld hl, $d4d1                                  ; $5531: $21 $d1 $d4
    dec [hl]                                      ; $5534: $35
    ld hl, $d4d2                                  ; $5535: $21 $d2 $d4
    add l                                         ; $5538: $85
    ld l, a                                       ; $5539: $6f
    jr nc, jr_041_553d                            ; $553a: $30 $01

    inc h                                         ; $553c: $24

jr_041_553d:
    ld a, [hl]                                    ; $553d: $7e
    cp $03                                        ; $553e: $fe $03
    jr z, jr_041_5580                             ; $5540: $28 $3e

    cp $02                                        ; $5542: $fe $02
    jr z, jr_041_556e                             ; $5544: $28 $28

    cp $01                                        ; $5546: $fe $01
    jr z, jr_041_555c                             ; $5548: $28 $12

    ld hl, $c800                                  ; $554a: $21 $00 $c8
    ld a, l                                       ; $554d: $7d
    add $20                                       ; $554e: $c6 $20
    ld l, a                                       ; $5550: $6f
    ld a, h                                       ; $5551: $7c
    adc $00                                       ; $5552: $ce $00
    ld h, a                                       ; $5554: $67
    dec [hl]                                      ; $5555: $35
    ld hl, $d453                                  ; $5556: $21 $53 $d4
    dec [hl]                                      ; $5559: $35
    jr jr_041_5590                                ; $555a: $18 $34

jr_041_555c:
    ld hl, $c800                                  ; $555c: $21 $00 $c8
    ld a, l                                       ; $555f: $7d
    add $21                                       ; $5560: $c6 $21
    ld l, a                                       ; $5562: $6f
    ld a, h                                       ; $5563: $7c
    adc $00                                       ; $5564: $ce $00
    ld h, a                                       ; $5566: $67
    dec [hl]                                      ; $5567: $35
    ld hl, $d454                                  ; $5568: $21 $54 $d4
    dec [hl]                                      ; $556b: $35
    jr jr_041_5590                                ; $556c: $18 $22

jr_041_556e:
    ld hl, $c800                                  ; $556e: $21 $00 $c8
    ld a, l                                       ; $5571: $7d
    add $22                                       ; $5572: $c6 $22
    ld l, a                                       ; $5574: $6f
    ld a, h                                       ; $5575: $7c
    adc $00                                       ; $5576: $ce $00
    ld h, a                                       ; $5578: $67
    dec [hl]                                      ; $5579: $35
    ld hl, $d455                                  ; $557a: $21 $55 $d4
    dec [hl]                                      ; $557d: $35
    jr jr_041_5590                                ; $557e: $18 $10

jr_041_5580:
    ld hl, $c800                                  ; $5580: $21 $00 $c8
    ld a, l                                       ; $5583: $7d
    add $24                                       ; $5584: $c6 $24
    ld l, a                                       ; $5586: $6f
    ld a, h                                       ; $5587: $7c
    adc $00                                       ; $5588: $ce $00
    ld h, a                                       ; $558a: $67
    dec [hl]                                      ; $558b: $35
    ld hl, $d456                                  ; $558c: $21 $56 $d4
    dec [hl]                                      ; $558f: $35

jr_041_5590:
    rst $18                                       ; $5590: $df
    inc e                                         ; $5591: $1c
    ld [bc], a                                    ; $5592: $02
    xor a                                         ; $5593: $af
    call Call_041_49ed                            ; $5594: $cd $ed $49
    ret                                           ; $5597: $c9


Call_041_5598:
    ld a, $06                                     ; $5598: $3e $06
    ldh [$96], a                                  ; $559a: $e0 $96
    ldh [rSVBK], a                                ; $559c: $e0 $70
    ld hl, $c800                                  ; $559e: $21 $00 $c8
    push hl                                       ; $55a1: $e5
    ld de, $d021                                  ; $55a2: $11 $21 $d0
    call Call_041_5765                            ; $55a5: $cd $65 $57
    pop hl                                        ; $55a8: $e1
    ld de, $c600                                  ; $55a9: $11 $00 $c6
    ld c, $0a                                     ; $55ac: $0e $0a

jr_041_55ae:
    ld a, $06                                     ; $55ae: $3e $06
    ldh [$96], a                                  ; $55b0: $e0 $96
    ldh [rSVBK], a                                ; $55b2: $e0 $70
    ld a, c                                       ; $55b4: $79
    and c                                         ; $55b5: $a1
    jr z, jr_041_55c9                             ; $55b6: $28 $11

    ld a, [hl+]                                   ; $55b8: $2a
    and a                                         ; $55b9: $a7
    jr z, jr_041_55c9                             ; $55ba: $28 $0d

    ld b, a                                       ; $55bc: $47
    ld a, $05                                     ; $55bd: $3e $05
    ldh [$96], a                                  ; $55bf: $e0 $96
    ldh [rSVBK], a                                ; $55c1: $e0 $70
    ld a, b                                       ; $55c3: $78
    ld [de], a                                    ; $55c4: $12
    inc de                                        ; $55c5: $13
    dec c                                         ; $55c6: $0d
    jr jr_041_55ae                                ; $55c7: $18 $e5

jr_041_55c9:
    xor a                                         ; $55c9: $af
    ld [de], a                                    ; $55ca: $12
    ld hl, $5a08                                  ; $55cb: $21 $08 $5a
    ld de, $0701                                  ; $55ce: $11 $01 $07
    call Call_000_0595                            ; $55d1: $cd $95 $05
    ld a, $01                                     ; $55d4: $3e $01
    ldh [$96], a                                  ; $55d6: $e0 $96
    ldh [rSVBK], a                                ; $55d8: $e0 $70
    ld hl, $63cb                                  ; $55da: $21 $cb $63
    ld de, $d000                                  ; $55dd: $11 $00 $d0
    call Call_000_1f2f                            ; $55e0: $cd $2f $1f
    ld hl, $d000                                  ; $55e3: $21 $00 $d0
    ld de, $b710                                  ; $55e6: $11 $10 $b7
    ld c, $06                                     ; $55e9: $0e $06
    call Call_000_04db                            ; $55eb: $cd $db $04
    ld hl, $6428                                  ; $55ee: $21 $28 $64
    ld de, $d000                                  ; $55f1: $11 $00 $d0
    call Call_000_1f2f                            ; $55f4: $cd $2f $1f
    ld hl, $d000                                  ; $55f7: $21 $00 $d0
    ld de, $b770                                  ; $55fa: $11 $70 $b7
    ld c, $04                                     ; $55fd: $0e $04
    call Call_000_04db                            ; $55ff: $cd $db $04
    ld a, $02                                     ; $5602: $3e $02
    ldh [$96], a                                  ; $5604: $e0 $96
    ldh [rSVBK], a                                ; $5606: $e0 $70
    ld hl, $d028                                  ; $5608: $21 $28 $d0
    ld d, $0f                                     ; $560b: $16 $0f
    ld bc, $0006                                  ; $560d: $01 $06 $00
    call Call_041_48e5                            ; $5610: $cd $e5 $48
    ld hl, $d048                                  ; $5613: $21 $48 $d0
    ld bc, $0004                                  ; $5616: $01 $04 $00
    call Call_041_48e5                            ; $5619: $cd $e5 $48
    ld a, $03                                     ; $561c: $3e $03
    ldh [$96], a                                  ; $561e: $e0 $96
    ldh [rSVBK], a                                ; $5620: $e0 $70
    ld hl, $d028                                  ; $5622: $21 $28 $d0
    ld a, $71                                     ; $5625: $3e $71
    ld b, $06                                     ; $5627: $06 $06
    call Call_041_48ed                            ; $5629: $cd $ed $48
    ld hl, $d048                                  ; $562c: $21 $48 $d0
    ld a, $77                                     ; $562f: $3e $77
    ld b, $04                                     ; $5631: $06 $04
    call Call_041_48ed                            ; $5633: $cd $ed $48
    ld a, $06                                     ; $5636: $3e $06
    ldh [$96], a                                  ; $5638: $e0 $96
    ldh [rSVBK], a                                ; $563a: $e0 $70
    ld hl, $c800                                  ; $563c: $21 $00 $c8
    ld a, l                                       ; $563f: $7d
    add $26                                       ; $5640: $c6 $26
    ld l, a                                       ; $5642: $6f
    ld a, h                                       ; $5643: $7c
    adc $00                                       ; $5644: $ce $00
    ld h, a                                       ; $5646: $67
    call Call_041_57a9                            ; $5647: $cd $a9 $57
    ld hl, $d64f                                  ; $564a: $21 $4f $d6
    ld de, $d02e                                  ; $564d: $11 $2e $d0
    call Call_041_5765                            ; $5650: $cd $65 $57
    ld hl, $d64f                                  ; $5653: $21 $4f $d6
    ld de, $d02e                                  ; $5656: $11 $2e $d0
    call Call_041_5867                            ; $5659: $cd $67 $58
    xor a                                         ; $565c: $af
    ld [$d553], a                                 ; $565d: $ea $53 $d5
    ld a, $01                                     ; $5660: $3e $01
    ld hl, $587c                                  ; $5662: $21 $7c $58
    call Call_000_23e8                            ; $5665: $cd $e8 $23
    ret                                           ; $5668: $c9


Call_041_5669:
    ld bc, $0800                                  ; $5669: $01 $00 $08
    ld hl, $d000                                  ; $566c: $21 $00 $d0
    ld a, $00                                     ; $566f: $3e $00
    ld a, $02                                     ; $5671: $3e $02
    ldh [$96], a                                  ; $5673: $e0 $96
    ldh [rSVBK], a                                ; $5675: $e0 $70

jr_041_5677:
    xor a                                         ; $5677: $af
    ld [hl+], a                                   ; $5678: $22
    dec bc                                        ; $5679: $0b
    ld a, b                                       ; $567a: $78
    or c                                          ; $567b: $b1
    jr nz, jr_041_5677                            ; $567c: $20 $f9

    ld bc, $0800                                  ; $567e: $01 $00 $08
    ld hl, $d000                                  ; $5681: $21 $00 $d0
    ld a, $00                                     ; $5684: $3e $00
    ld a, $03                                     ; $5686: $3e $03
    ldh [$96], a                                  ; $5688: $e0 $96
    ldh [rSVBK], a                                ; $568a: $e0 $70

jr_041_568c:
    xor a                                         ; $568c: $af
    ld [hl+], a                                   ; $568d: $22
    dec bc                                        ; $568e: $0b
    ld a, b                                       ; $568f: $78
    or c                                          ; $5690: $b1
    jr nz, jr_041_568c                            ; $5691: $20 $f9

    ret                                           ; $5693: $c9


    ld a, [$d4a4]                                 ; $5694: $fa $a4 $d4
    and a                                         ; $5697: $a7
    ret nz                                        ; $5698: $c0

    ld hl, $d4a5                                  ; $5699: $21 $a5 $d4
    ld a, [hl]                                    ; $569c: $7e
    dec a                                         ; $569d: $3d
    ld [hl], a                                    ; $569e: $77
    ret nz                                        ; $569f: $c0

    ld b, $14                                     ; $56a0: $06 $14
    ld hl, $d0e0                                  ; $56a2: $21 $e0 $d0
    ld de, $d4e0                                  ; $56a5: $11 $e0 $d4
    call Call_041_5726                            ; $56a8: $cd $26 $57
    ld a, [$d4a6]                                 ; $56ab: $fa $a6 $d4
    ld c, a                                       ; $56ae: $4f
    bit 7, a                                      ; $56af: $cb $7f
    jr nz, jr_041_56ce                            ; $56b1: $20 $1b

    ld a, [$d4a7]                                 ; $56b3: $fa $a7 $d4
    ld b, a                                       ; $56b6: $47
    ld a, $f4                                     ; $56b7: $3e $f4
    add b                                         ; $56b9: $80
    bit 7, a                                      ; $56ba: $cb $7f
    jr nz, jr_041_56c0                            ; $56bc: $20 $02

    ld b, $0c                                     ; $56be: $06 $0c

jr_041_56c0:
    ld hl, $d460                                  ; $56c0: $21 $60 $d4
    ld de, $d4e1                                  ; $56c3: $11 $e1 $d4
    ld a, c                                       ; $56c6: $79
    add e                                         ; $56c7: $83
    ld e, a                                       ; $56c8: $5f
    call Call_041_5726                            ; $56c9: $cd $26 $57
    jr jr_041_56e5                                ; $56cc: $18 $17

jr_041_56ce:
    cpl                                           ; $56ce: $2f
    inc a                                         ; $56cf: $3c
    ld c, a                                       ; $56d0: $4f
    ld b, a                                       ; $56d1: $47
    ld a, $0c                                     ; $56d2: $3e $0c
    sub b                                         ; $56d4: $90
    ld b, a                                       ; $56d5: $47
    and a                                         ; $56d6: $a7
    jr z, jr_041_56fc                             ; $56d7: $28 $23

    ld hl, $d461                                  ; $56d9: $21 $61 $d4
    ld a, c                                       ; $56dc: $79
    add l                                         ; $56dd: $85
    ld l, a                                       ; $56de: $6f
    ld de, $d4e0                                  ; $56df: $11 $e0 $d4
    call Call_041_5726                            ; $56e2: $cd $26 $57

jr_041_56e5:
    ld hl, $d4a6                                  ; $56e5: $21 $a6 $d4
    dec [hl]                                      ; $56e8: $35
    ld hl, $d4a7                                  ; $56e9: $21 $a7 $d4
    inc [hl]                                      ; $56ec: $34
    ld a, [hl]                                    ; $56ed: $7e
    ld de, $6463                                  ; $56ee: $11 $63 $64
    add e                                         ; $56f1: $83
    ld e, a                                       ; $56f2: $5f
    jr nc, jr_041_56f6                            ; $56f3: $30 $01

    inc d                                         ; $56f5: $14

jr_041_56f6:
    ld a, [de]                                    ; $56f6: $1a
    ld [$d4a5], a                                 ; $56f7: $ea $a5 $d4
    jr jr_041_5703                                ; $56fa: $18 $07

jr_041_56fc:
    ld a, $01                                     ; $56fc: $3e $01
    ld [$d4a4], a                                 ; $56fe: $ea $a4 $d4
    jr jr_041_5703                                ; $5701: $18 $00

jr_041_5703:
    ld a, $03                                     ; $5703: $3e $03
    ldh [$96], a                                  ; $5705: $e0 $96
    ldh [rSVBK], a                                ; $5707: $e0 $70
    ld hl, $d4e0                                  ; $5709: $21 $e0 $d4
    ld de, $98e0                                  ; $570c: $11 $e0 $98
    ld c, $08                                     ; $570f: $0e $08
    call Call_000_0468                            ; $5711: $cd $68 $04
    ld a, $02                                     ; $5714: $3e $02
    ldh [$96], a                                  ; $5716: $e0 $96
    ldh [rSVBK], a                                ; $5718: $e0 $70
    ld hl, $d4e0                                  ; $571a: $21 $e0 $d4
    ld de, $b8e0                                  ; $571d: $11 $e0 $b8
    ld c, $08                                     ; $5720: $0e $08
    call Call_000_0468                            ; $5722: $cd $68 $04
    ret                                           ; $5725: $c9


Call_041_5726:
    ld a, b                                       ; $5726: $78
    and a                                         ; $5727: $a7
    ret z                                         ; $5728: $c8

    ld c, $04                                     ; $5729: $0e $04

jr_041_572b:
    push bc                                       ; $572b: $c5
    push de                                       ; $572c: $d5
    push hl                                       ; $572d: $e5
    ld a, $02                                     ; $572e: $3e $02
    ldh [$96], a                                  ; $5730: $e0 $96
    ldh [rSVBK], a                                ; $5732: $e0 $70

jr_041_5734:
    ld a, [hl]                                    ; $5734: $7e
    ld [de], a                                    ; $5735: $12
    inc hl                                        ; $5736: $23
    inc de                                        ; $5737: $13
    dec b                                         ; $5738: $05
    jr nz, jr_041_5734                            ; $5739: $20 $f9

    ld a, $03                                     ; $573b: $3e $03
    ldh [$96], a                                  ; $573d: $e0 $96
    ldh [rSVBK], a                                ; $573f: $e0 $70
    pop hl                                        ; $5741: $e1
    pop de                                        ; $5742: $d1
    pop bc                                        ; $5743: $c1
    push bc                                       ; $5744: $c5
    push hl                                       ; $5745: $e5
    push de                                       ; $5746: $d5

jr_041_5747:
    ld a, [hl]                                    ; $5747: $7e
    ld [de], a                                    ; $5748: $12
    inc hl                                        ; $5749: $23
    inc de                                        ; $574a: $13
    dec b                                         ; $574b: $05
    jr nz, jr_041_5747                            ; $574c: $20 $f9

    pop de                                        ; $574e: $d1
    ld hl, $0020                                  ; $574f: $21 $20 $00
    add hl, de                                    ; $5752: $19
    ld d, h                                       ; $5753: $54
    ld e, l                                       ; $5754: $5d
    pop hl                                        ; $5755: $e1
    ld bc, $0020                                  ; $5756: $01 $20 $00
    add hl, bc                                    ; $5759: $09
    pop bc                                        ; $575a: $c1
    dec c                                         ; $575b: $0d
    jr nz, jr_041_572b                            ; $575c: $20 $cd

    ld a, $06                                     ; $575e: $3e $06
    ldh [$96], a                                  ; $5760: $e0 $96
    ldh [rSVBK], a                                ; $5762: $e0 $70
    ret                                           ; $5764: $c9


Call_041_5765:
jr_041_5765:
    ld a, $06                                     ; $5765: $3e $06
    ldh [$96], a                                  ; $5767: $e0 $96
    ldh [rSVBK], a                                ; $5769: $e0 $70
    ld a, [hl]                                    ; $576b: $7e
    and a                                         ; $576c: $a7
    ret z                                         ; $576d: $c8

    cp $de                                        ; $576e: $fe $de
    jr z, jr_041_5783                             ; $5770: $28 $11

    cp $df                                        ; $5772: $fe $df
    jr z, jr_041_5796                             ; $5774: $28 $20

    ld b, a                                       ; $5776: $47
    ld a, $03                                     ; $5777: $3e $03
    ldh [$96], a                                  ; $5779: $e0 $96
    ldh [rSVBK], a                                ; $577b: $e0 $70
    ld a, b                                       ; $577d: $78
    ld [de], a                                    ; $577e: $12
    inc hl                                        ; $577f: $23
    inc de                                        ; $5780: $13
    jr jr_041_5765                                ; $5781: $18 $e2

jr_041_5783:
    push de                                       ; $5783: $d5
    push hl                                       ; $5784: $e5
    ld hl, $ffdf                                  ; $5785: $21 $df $ff
    add hl, de                                    ; $5788: $19
    ld a, $03                                     ; $5789: $3e $03
    ldh [$96], a                                  ; $578b: $e0 $96
    ldh [rSVBK], a                                ; $578d: $e0 $70
    ld [hl], $0e                                  ; $578f: $36 $0e
    pop hl                                        ; $5791: $e1
    pop de                                        ; $5792: $d1
    inc hl                                        ; $5793: $23
    jr jr_041_5765                                ; $5794: $18 $cf

jr_041_5796:
    push de                                       ; $5796: $d5
    push hl                                       ; $5797: $e5
    ld hl, $ffdf                                  ; $5798: $21 $df $ff
    add hl, de                                    ; $579b: $19
    ld a, $03                                     ; $579c: $3e $03
    ldh [$96], a                                  ; $579e: $e0 $96
    ldh [rSVBK], a                                ; $57a0: $e0 $70
    ld [hl], $0f                                  ; $57a2: $36 $0f
    pop hl                                        ; $57a4: $e1
    pop de                                        ; $57a5: $d1
    inc hl                                        ; $57a6: $23
    jr jr_041_5765                                ; $57a7: $18 $bc

Call_041_57a9:
    ld a, $06                                     ; $57a9: $3e $06
    ldh [$96], a                                  ; $57ab: $e0 $96
    ldh [rSVBK], a                                ; $57ad: $e0 $70
    ld a, [hl+]                                   ; $57af: $2a
    ld b, [hl]                                    ; $57b0: $46
    ld c, a                                       ; $57b1: $4f
    inc hl                                        ; $57b2: $23
    ld a, [hl]                                    ; $57b3: $7e
    ld [$d64e], a                                 ; $57b4: $ea $4e $d6
    ld h, b                                       ; $57b7: $60
    ld l, c                                       ; $57b8: $69
    ld de, $d64f                                  ; $57b9: $11 $4f $d6
    ld a, $05                                     ; $57bc: $3e $05
    call Call_000_2326                            ; $57be: $cd $26 $23
    ld hl, $d64e                                  ; $57c1: $21 $4e $d6
    ld a, [hl]                                    ; $57c4: $7e
    and a                                         ; $57c5: $a7
    ret z                                         ; $57c6: $c8

    ld c, a                                       ; $57c7: $4f

Jump_041_57c8:
    xor a                                         ; $57c8: $af
    ld hl, $d657                                  ; $57c9: $21 $57 $d6
    ld [hl], a                                    ; $57cc: $77
    ld de, $d653                                  ; $57cd: $11 $53 $d6
    ld a, [de]                                    ; $57d0: $1a
    sub $20                                       ; $57d1: $d6 $20
    jr z, jr_041_57d7                             ; $57d3: $28 $02

    sub $10                                       ; $57d5: $d6 $10

jr_041_57d7:
    add $06                                       ; $57d7: $c6 $06
    cp $0a                                        ; $57d9: $fe $0a
    jr c, jr_041_57e4                             ; $57db: $38 $07

    sub $0a                                       ; $57dd: $d6 $0a
    ld b, a                                       ; $57df: $47
    ld a, $01                                     ; $57e0: $3e $01
    ld [hl], a                                    ; $57e2: $77
    ld a, b                                       ; $57e3: $78

jr_041_57e4:
    add $30                                       ; $57e4: $c6 $30
    ld [de], a                                    ; $57e6: $12
    ld de, $d652                                  ; $57e7: $11 $52 $d6
    ld a, [de]                                    ; $57ea: $1a
    add [hl]                                      ; $57eb: $86
    ld b, a                                       ; $57ec: $47
    xor a                                         ; $57ed: $af
    ld [hl], a                                    ; $57ee: $77
    ld a, b                                       ; $57ef: $78
    sub $20                                       ; $57f0: $d6 $20
    jr z, jr_041_57f6                             ; $57f2: $28 $02

    sub $10                                       ; $57f4: $d6 $10

jr_041_57f6:
    add $03                                       ; $57f6: $c6 $03
    cp $0a                                        ; $57f8: $fe $0a
    jr c, jr_041_5803                             ; $57fa: $38 $07

    sub $0a                                       ; $57fc: $d6 $0a
    ld b, a                                       ; $57fe: $47
    ld a, $01                                     ; $57ff: $3e $01
    ld [hl], a                                    ; $5801: $77
    ld a, b                                       ; $5802: $78

jr_041_5803:
    add $30                                       ; $5803: $c6 $30
    ld [de], a                                    ; $5805: $12
    ld de, $d651                                  ; $5806: $11 $51 $d6
    ld a, [de]                                    ; $5809: $1a
    add [hl]                                      ; $580a: $86
    ld b, a                                       ; $580b: $47
    xor a                                         ; $580c: $af
    ld [hl], a                                    ; $580d: $77
    ld a, b                                       ; $580e: $78
    sub $20                                       ; $580f: $d6 $20
    jr z, jr_041_5815                             ; $5811: $28 $02

    sub $10                                       ; $5813: $d6 $10

jr_041_5815:
    add $05                                       ; $5815: $c6 $05
    cp $0a                                        ; $5817: $fe $0a
    jr c, jr_041_5822                             ; $5819: $38 $07

    sub $0a                                       ; $581b: $d6 $0a
    ld b, a                                       ; $581d: $47
    ld a, $01                                     ; $581e: $3e $01
    ld [hl], a                                    ; $5820: $77
    ld a, b                                       ; $5821: $78

jr_041_5822:
    add $30                                       ; $5822: $c6 $30
    ld [de], a                                    ; $5824: $12
    ld de, $d650                                  ; $5825: $11 $50 $d6
    ld a, [de]                                    ; $5828: $1a
    add [hl]                                      ; $5829: $86
    ld b, a                                       ; $582a: $47
    xor a                                         ; $582b: $af
    ld [hl], a                                    ; $582c: $77
    ld a, b                                       ; $582d: $78
    sub $20                                       ; $582e: $d6 $20
    jr z, jr_041_5834                             ; $5830: $28 $02

    sub $10                                       ; $5832: $d6 $10

jr_041_5834:
    add $05                                       ; $5834: $c6 $05
    cp $0a                                        ; $5836: $fe $0a
    jr c, jr_041_5841                             ; $5838: $38 $07

    sub $0a                                       ; $583a: $d6 $0a
    ld b, a                                       ; $583c: $47
    ld a, $01                                     ; $583d: $3e $01
    ld [hl], a                                    ; $583f: $77
    ld a, b                                       ; $5840: $78

jr_041_5841:
    add $30                                       ; $5841: $c6 $30
    ld [de], a                                    ; $5843: $12
    ld de, $d64f                                  ; $5844: $11 $4f $d6
    ld a, [de]                                    ; $5847: $1a
    add [hl]                                      ; $5848: $86
    ld b, a                                       ; $5849: $47
    xor a                                         ; $584a: $af
    ld [hl], a                                    ; $584b: $77
    ld a, b                                       ; $584c: $78
    sub $20                                       ; $584d: $d6 $20
    jr z, jr_041_5853                             ; $584f: $28 $02

    sub $10                                       ; $5851: $d6 $10

jr_041_5853:
    add $05                                       ; $5853: $c6 $05
    ld hl, $d64e                                  ; $5855: $21 $4e $d6
    add [hl]                                      ; $5858: $86
    cp $0a                                        ; $5859: $fe $0a
    jr c, jr_041_585f                             ; $585b: $38 $02

    ld a, $09                                     ; $585d: $3e $09

jr_041_585f:
    add $30                                       ; $585f: $c6 $30
    ld [de], a                                    ; $5861: $12
    dec c                                         ; $5862: $0d
    jp nz, Jump_041_57c8                          ; $5863: $c2 $c8 $57

    ret                                           ; $5866: $c9


Call_041_5867:
jr_041_5867:
    ld a, $06                                     ; $5867: $3e $06
    ldh [$96], a                                  ; $5869: $e0 $96
    ldh [rSVBK], a                                ; $586b: $e0 $70
    ld a, [hl+]                                   ; $586d: $2a
    and a                                         ; $586e: $a7
    ret z                                         ; $586f: $c8

    ld a, $02                                     ; $5870: $3e $02
    ldh [$96], a                                  ; $5872: $e0 $96
    ldh [rSVBK], a                                ; $5874: $e0 $70
    ld a, $06                                     ; $5876: $3e $06
    ld [de], a                                    ; $5878: $12
    inc de                                        ; $5879: $13
    jr jr_041_5867                                ; $587a: $18 $eb

    ld a, $06                                     ; $587c: $3e $06
    ldh [$96], a                                  ; $587e: $e0 $96
    ldh [rSVBK], a                                ; $5880: $e0 $70
    ld a, [$d4d0]                                 ; $5882: $fa $d0 $d4
    push af                                       ; $5885: $f5
    ld h, $00                                     ; $5886: $26 $00
    and a                                         ; $5888: $a7
    jr nz, jr_041_5890                            ; $5889: $20 $05

    ld a, [$c0f3]                                 ; $588b: $fa $f3 $c0
    jr jr_041_5893                                ; $588e: $18 $03

jr_041_5890:
    ld a, [$c831]                                 ; $5890: $fa $31 $c8

jr_041_5893:
    ld l, a                                       ; $5893: $6f
    ld a, $02                                     ; $5894: $3e $02
    ld de, $d554                                  ; $5896: $11 $54 $d5
    call Call_000_21f0                            ; $5899: $cd $f0 $21
    ld hl, $d554                                  ; $589c: $21 $54 $d5
    ld de, $d04e                                  ; $589f: $11 $4e $d0
    call Call_041_5765                            ; $58a2: $cd $65 $57
    ld a, $06                                     ; $58a5: $3e $06
    ldh [$96], a                                  ; $58a7: $e0 $96
    ldh [rSVBK], a                                ; $58a9: $e0 $70
    ld h, $00                                     ; $58ab: $26 $00
    pop af                                        ; $58ad: $f1
    and a                                         ; $58ae: $a7
    jr nz, jr_041_58b6                            ; $58af: $20 $05

    ld a, [$c0f2]                                 ; $58b1: $fa $f2 $c0
    jr jr_041_58b9                                ; $58b4: $18 $03

jr_041_58b6:
    ld a, [$c830]                                 ; $58b6: $fa $30 $c8

jr_041_58b9:
    ld l, a                                       ; $58b9: $6f
    ld a, $02                                     ; $58ba: $3e $02
    ld de, $d554                                  ; $58bc: $11 $54 $d5
    call Call_000_21f0                            ; $58bf: $cd $f0 $21
    ld hl, $d554                                  ; $58c2: $21 $54 $d5
    ld a, [hl]                                    ; $58c5: $7e
    sub $20                                       ; $58c6: $d6 $20
    jr nz, jr_041_58cd                            ; $58c8: $20 $03

    ld a, $30                                     ; $58ca: $3e $30
    ld [hl], a                                    ; $58cc: $77

jr_041_58cd:
    ld de, $d051                                  ; $58cd: $11 $51 $d0
    call Call_041_5765                            ; $58d0: $cd $65 $57
    ld a, $03                                     ; $58d3: $3e $03
    ldh [$96], a                                  ; $58d5: $e0 $96
    ldh [rSVBK], a                                ; $58d7: $e0 $70
    ld a, $20                                     ; $58d9: $3e $20
    ld [$d050], a                                 ; $58db: $ea $50 $d0
    ld a, $06                                     ; $58de: $3e $06
    ldh [$96], a                                  ; $58e0: $e0 $96
    ldh [rSVBK], a                                ; $58e2: $e0 $70
    ld hl, $d553                                  ; $58e4: $21 $53 $d5
    ld a, [hl]                                    ; $58e7: $7e
    sub $1e                                       ; $58e8: $d6 $1e
    jr c, jr_041_58f7                             ; $58ea: $38 $0b

    ld a, $03                                     ; $58ec: $3e $03
    ldh [$96], a                                  ; $58ee: $e0 $96
    ldh [rSVBK], a                                ; $58f0: $e0 $70
    ld a, $3a                                     ; $58f2: $3e $3a
    ld [$d050], a                                 ; $58f4: $ea $50 $d0

jr_041_58f7:
    ld a, $06                                     ; $58f7: $3e $06
    ldh [$96], a                                  ; $58f9: $e0 $96
    ldh [rSVBK], a                                ; $58fb: $e0 $70
    ld a, [hl]                                    ; $58fd: $7e
    sub $3c                                       ; $58fe: $d6 $3c
    jr nz, jr_041_5905                            ; $5900: $20 $03

    ld a, $ff                                     ; $5902: $3e $ff
    ld [hl], a                                    ; $5904: $77

jr_041_5905:
    inc [hl]                                      ; $5905: $34
    ld hl, $d554                                  ; $5906: $21 $54 $d5
    ld a, [hl]                                    ; $5909: $7e
    sub $20                                       ; $590a: $d6 $20
    jr z, jr_041_5919                             ; $590c: $28 $0b

    ld a, $02                                     ; $590e: $3e $02
    ldh [$96], a                                  ; $5910: $e0 $96
    ldh [rSVBK], a                                ; $5912: $e0 $70
    ld a, $06                                     ; $5914: $3e $06
    ld [$d04e], a                                 ; $5916: $ea $4e $d0

jr_041_5919:
    ld hl, $d04f                                  ; $5919: $21 $4f $d0
    ld [hl+], a                                   ; $591c: $22
    ld [hl+], a                                   ; $591d: $22
    ld [hl+], a                                   ; $591e: $22
    ld [hl+], a                                   ; $591f: $22
    ld a, $03                                     ; $5920: $3e $03
    ldh [$96], a                                  ; $5922: $e0 $96
    ldh [rSVBK], a                                ; $5924: $e0 $70
    ld hl, $d040                                  ; $5926: $21 $40 $d0
    ld de, $9840                                  ; $5929: $11 $40 $98
    ld c, $02                                     ; $592c: $0e $02
    call Call_000_0468                            ; $592e: $cd $68 $04
    ld a, $02                                     ; $5931: $3e $02
    ldh [$96], a                                  ; $5933: $e0 $96
    ldh [rSVBK], a                                ; $5935: $e0 $70
    ld hl, $d040                                  ; $5937: $21 $40 $d0
    ld de, $b840                                  ; $593a: $11 $40 $b8
    ld c, $02                                     ; $593d: $0e $02
    call Call_000_0468                            ; $593f: $cd $68 $04
    ret                                           ; $5942: $c9


    db $e6, $02, $60, $01, $9f, $03, $d9, $00

    nop                                           ; $594b: $00
    nop                                           ; $594c: $00
    nop                                           ; $594d: $00
    nop                                           ; $594e: $00
    nop                                           ; $594f: $00

    db $ff, $00, $70, $30, $78, $28, $7c, $24, $7e, $ff, $2c, $7a, $38, $74, $30, $48
    db $00, $70, $fd, $00, $ff, $f0, $04, $7c, $03, $fe, $33, $fe, $fb, $33, $ee, $fe
    db $e7, $03, $fe, $87, $fe, $7f, $fb, $7c, $3e, $e0, $e5, $1c, $06, $3c, $06, $3c
    db $ef, $26, $3c, $06, $1c, $fe, $e9, $1e, $1c, $0e, $fa, $c0, $e6, $02, $c0, $e0
    db $f3, $ee, $73, $0e, $07, $ff, $1c, $0e, $38, $1c, $70, $18, $70, $02, $bf, $fe
    db $03, $fe, $ff, $fe, $7f, $e0, $ec, $63, $ff, $1e, $07, $3e, $13, $1e, $03, $0e
    db $23, $9e, $a0, $f1, $7c, $06, $fc, $26, $fe, $e0, $c6, $e1, $e7, $73, $fe, $67
    db $a0, $ea, $b2, $e1, $3f, $fe, $07, $e4, $e0, $cf, $f3, $fe, $33, $0e, $c0, $f0
    db $c4, $e0, $3e, $fc, $87, $3e, $e0, $04, $c2, $e0, $38, $e3, $40, $eb, $72, $e1
    db $33, $ff, $fe, $e3, $fe, $47, $3e, $0f, $3c, $0e, $3b, $38, $0c, $fe, $e4, $3c
    db $38, $1c, $40, $ea, $0a, $e1, $f3, $07, $7c, $c0, $f1, $e0, $e7, $83, $fe, $73
    db $7e, $01, $33, $40, $ea, $00, $00

    nop                                           ; $5a07: $00

    db $e6, $02, $ff, $03, $80, $01, $ff, $7f, $bf, $7c, $7c, $c6, $fe, $c6, $e7, $fe
    db $e3, $7c, $ef, $7e, $00, $3c, $00, $ff, $ec, $18, $18, $38, $b7, $3c, $18, $1c
    db $fe, $e5, $00, $0c, $e0, $ed, $7c, $ff, $7c, $ce, $fe, $0c, $6f, $38, $3e, $60
    db $7f, $7c, $c0, $f0, $fe, $fe, $00, $7f, $e0, $ef, $ff, $c6, $fe, $06, $67, $1c
    db $1f, $06, $0e, $bf, $c6, $c7, $7c, $7f, $00, $3e, $a0, $ed, $1c, $ff, $1c, $3c
    db $3e, $6c, $7e, $cc, $fe, $fe, $7f, $fe, $0c, $7f, $0c, $0e, $00, $06, $80, $ed
    db $ff, $fe, $fe, $c0, $ff, $fc, $fc, $06, $7e, $fb, $06, $06, $c0, $f3, $7c, $7c
    db $c0, $fe, $c0, $e7, $e0, $fc, $fc, $3a, $e1, $a0, $f1, $fe, $fe, $c6, $ff, $ff
    db $0c, $6f, $18, $1e, $30, $3c, $30, $1f, $38, $30, $38, $00, $18, $60, $f1, $c6
    db $e1, $c0, $f5, $1e, $e0, $c3, $7e, $7f, $06, $3f, $40, $f3, $00, $00

    nop                                           ; $5aa6: $00

    db $ef, $c6, $00, $c6, $21, $fe, $e5, $7c, $03, $00, $7b, $3e, $00, $ff, $ec, $fc
    db $00, $c6, $38, $de, $e1, $ff, $fc, $03, $c0, $3e, $c0, $20, $00, $60, $00, $e0
    db $ed, $00, $00

    nop                                           ; $5aca: $00

    db $fd, $00, $ff, $e4, $04, $04, $0c, $08, $1c, $14, $ff, $14, $08, $28, $10, $38
    db $28, $30, $10, $73, $20, $20, $e8, $e5, $e0, $e5, $20, $20, $30, $e6, $e0, $f7
    db $28, $10, $14, $da, $e0, $0c, $08, $04, $04, $00, $e0, $e5, $00, $00

    nop                                           ; $5af9: $00

    db $6d, $00, $1f, $12, $d6, $00, $ff, $27

    nop                                           ; $5b02: $00
    nop                                           ; $5b03: $00
    nop                                           ; $5b04: $00
    nop                                           ; $5b05: $00
    nop                                           ; $5b06: $00
    nop                                           ; $5b07: $00
    nop                                           ; $5b08: $00
    nop                                           ; $5b09: $00
    nop                                           ; $5b0a: $00
    nop                                           ; $5b0b: $00
    nop                                           ; $5b0c: $00
    nop                                           ; $5b0d: $00
    nop                                           ; $5b0e: $00
    nop                                           ; $5b0f: $00
    inc bc                                        ; $5b10: $03
    rst $38                                       ; $5b11: $ff
    nop                                           ; $5b12: $00
    cp $ff                                        ; $5b13: $fe $ff
    ld a, [$00f9]                                 ; $5b15: $fa $f9 $00
    nop                                           ; $5b18: $00
    nop                                           ; $5b19: $00

    db $1f, $1b, $c0, $47, $fa, $43, $20, $36

    nop                                           ; $5b22: $00
    nop                                           ; $5b23: $00
    nop                                           ; $5b24: $00
    nop                                           ; $5b25: $00
    nop                                           ; $5b26: $00
    nop                                           ; $5b27: $00
    nop                                           ; $5b28: $00
    nop                                           ; $5b29: $00
    nop                                           ; $5b2a: $00
    nop                                           ; $5b2b: $00
    nop                                           ; $5b2c: $00
    nop                                           ; $5b2d: $00
    nop                                           ; $5b2e: $00
    nop                                           ; $5b2f: $00
    rst $38                                       ; $5b30: $ff
    nop                                           ; $5b31: $00
    nop                                           ; $5b32: $00
    inc a                                         ; $5b33: $3c
    inc a                                         ; $5b34: $3c
    dec h                                         ; $5b35: $25
    dec a                                         ; $5b36: $3d
    ld h, l                                       ; $5b37: $65
    ld a, l                                       ; $5b38: $7d
    rst $38                                       ; $5b39: $ff
    ld c, a                                       ; $5b3a: $4f
    ld a, a                                       ; $5b3b: $7f
    ld c, e                                       ; $5b3c: $4b
    ld a, d                                       ; $5b3d: $7a
    db $db                                        ; $5b3e: $db
    ld a, [$f2d3]                                 ; $5b3f: $fa $d3 $f2
    db $fd                                        ; $5b42: $fd
    sub e                                         ; $5b43: $93
    cp $e0                                        ; $5b44: $fe $e0
    sbc e                                         ; $5b46: $9b
    ld a, [$ff8f]                                 ; $5b47: $fa $8f $ff
    jp $dfff                                      ; $5b4a: $c3 $ff $df


    ld h, d                                       ; $5b4d: $62
    ld a, [hl]                                    ; $5b4e: $7e
    ld a, $3e                                     ; $5b4f: $3e $3e
    nop                                           ; $5b51: $00
    rst $38                                       ; $5b52: $ff
    ldh [rIE], a                                  ; $5b53: $e0 $ff
    rst $38                                       ; $5b55: $ff
    cp a                                          ; $5b56: $bf
    di                                            ; $5b57: $f3
    sbc a                                         ; $5b58: $9f
    di                                            ; $5b59: $f3
    rra                                           ; $5b5a: $1f
    di                                            ; $5b5b: $f3
    ld a, a                                       ; $5b5c: $7f
    cp $e0                                        ; $5b5d: $fe $e0
    rra                                           ; $5b5f: $1f
    db $fd                                        ; $5b60: $fd
    ldh a, [$fe]                                  ; $5b61: $f0 $fe
    pop hl                                        ; $5b63: $e1
    ld a, a                                       ; $5b64: $7f
    ld hl, sp+$3f                                 ; $5b65: $f8 $3f
    db $fc                                        ; $5b67: $fc
    rrca                                          ; $5b68: $0f
    db $fd                                        ; $5b69: $fd
    rst $30                                       ; $5b6a: $f7
    adc a                                         ; $5b6b: $8f
    rst $30                                       ; $5b6c: $f7
    rst $30                                       ; $5b6d: $f7
    ld [c], a                                     ; $5b6e: $e2
    pop hl                                        ; $5b6f: $e1
    nop                                           ; $5b70: $00
    nop                                           ; $5b71: $00
    rst $28                                       ; $5b72: $ef
    rst $28                                       ; $5b73: $ef
    rst $38                                       ; $5b74: $ff
    cpl                                           ; $5b75: $2f
    add sp, $3f                                   ; $5b76: $e8 $3f
    ld hl, sp+$3f                                 ; $5b78: $f8 $3f
    di                                            ; $5b7a: $f3
    ccf                                           ; $5b7b: $3f
    rst $20                                       ; $5b7c: $e7
    cp $fe                                        ; $5b7d: $fe $fe
    ldh [$e0], a                                  ; $5b7f: $e0 $e0
    ccf                                           ; $5b81: $3f
    ldh [$7f], a                                  ; $5b82: $e0 $7f
    rst $20                                       ; $5b84: $e7
    ld a, a                                       ; $5b85: $7f
    di                                            ; $5b86: $f3
    rst $38                                       ; $5b87: $ff
    rst $18                                       ; $5b88: $df
    ret c                                         ; $5b89: $d8

    adc a                                         ; $5b8a: $8f
    adc b                                         ; $5b8b: $88
    rrca                                          ; $5b8c: $0f
    inc c                                         ; $5b8d: $0c
    rlca                                          ; $5b8e: $07
    rlca                                          ; $5b8f: $07
    cp $c0                                        ; $5b90: $fe $c0
    pop hl                                        ; $5b92: $e1
    cp b                                          ; $5b93: $b8
    cp b                                          ; $5b94: $b8
    add sp, -$08                                  ; $5b95: $e8 $f8
    ret z                                         ; $5b97: $c8

    ld hl, sp-$68                                 ; $5b98: $f8 $98
    rst $30                                       ; $5b9a: $f7
    ld hl, sp-$70                                 ; $5b9b: $f8 $90
    ldh a, [$fe]                                  ; $5b9d: $f0 $fe
    push hl                                       ; $5b9f: $e5
    sbc h                                         ; $5ba0: $9c
    db $fc                                        ; $5ba1: $fc
    add [hl]                                      ; $5ba2: $86
    cp $bf                                        ; $5ba3: $fe $bf
    add d                                         ; $5ba5: $82
    cp $c6                                        ; $5ba6: $fe $c6
    cp $fc                                        ; $5ba8: $fe $fc
    db $fc                                        ; $5baa: $fc
    and b                                         ; $5bab: $a0
    pop hl                                        ; $5bac: $e1
    ld a, e                                       ; $5bad: $7b
    ld a, a                                       ; $5bae: $7f
    ld a, e                                       ; $5baf: $7b
    ld a, e                                       ; $5bb0: $7b
    ld c, d                                       ; $5bb1: $4a
    ld a, a                                       ; $5bb2: $7f
    ld c, [hl]                                    ; $5bb3: $4e
    ld a, a                                       ; $5bb4: $7f

jr_041_5bb5:
    ld c, h                                       ; $5bb5: $4c
    cp $e8                                        ; $5bb6: $fe $e8
    rst $10                                       ; $5bb8: $d7
    ld c, c                                       ; $5bb9: $49
    ld a, a                                       ; $5bba: $7f
    ld b, c                                       ; $5bbb: $41
    cp $e0                                        ; $5bbc: $fe $e0
    ld h, e                                       ; $5bbe: $63
    add b                                         ; $5bbf: $80
    db $e3                                        ; $5bc0: $e3
    db $fc                                        ; $5bc1: $fc
    db $fc                                        ; $5bc2: $fc
    ld a, a                                       ; $5bc3: $7f
    add $fe                                       ; $5bc4: $c6 $fe
    jp $81ff                                      ; $5bc6: $c3 $ff $81


    rst $38                                       ; $5bc9: $ff
    sbc c                                         ; $5bca: $99
    cp $e0                                        ; $5bcb: $fe $e0
    rst $38                                       ; $5bcd: $ff
    add c                                         ; $5bce: $81
    rst $38                                       ; $5bcf: $ff
    add e                                         ; $5bd0: $83
    rst $38                                       ; $5bd1: $ff
    add d                                         ; $5bd2: $82
    cp $9e                                        ; $5bd3: $fe $9e
    cp $3f                                        ; $5bd5: $fe $3f
    sub b                                         ; $5bd7: $90

jr_041_5bd8:
    ldh a, [$d0]                                  ; $5bd8: $f0 $d0
    ldh a, [rSVBK]                                ; $5bda: $f0 $70
    ld [hl], b                                    ; $5bdc: $70
    add b                                         ; $5bdd: $80
    pop hl                                        ; $5bde: $e1
    nop                                           ; $5bdf: $00
    nop                                           ; $5be0: $00
    nop                                           ; $5be1: $00
    db $10                                        ; $5be2: $10
    ld [$0000], sp                                ; $5be3: $08 $00 $00
    db $10                                        ; $5be6: $10
    db $10                                        ; $5be7: $10
    ld [bc], a                                    ; $5be8: $02
    nop                                           ; $5be9: $00
    db $10                                        ; $5bea: $10
    jr jr_041_5bf1                                ; $5beb: $18 $04

    nop                                           ; $5bed: $00
    db $10                                        ; $5bee: $10
    jr nz, jr_041_5bf7                            ; $5bef: $20 $06

jr_041_5bf1:
    nop                                           ; $5bf1: $00
    db $10                                        ; $5bf2: $10
    jr z, jr_041_5bfd                             ; $5bf3: $28 $08

    nop                                           ; $5bf5: $00
    db $10                                        ; $5bf6: $10

jr_041_5bf7:
    jr nc, jr_041_5c03                            ; $5bf7: $30 $0a

    nop                                           ; $5bf9: $00
    add b                                         ; $5bfa: $80
    nop                                           ; $5bfb: $00
    nop                                           ; $5bfc: $00

jr_041_5bfd:
    nop                                           ; $5bfd: $00
    nop                                           ; $5bfe: $00

jr_041_5bff:
    nop                                           ; $5bff: $00
    rst $38                                       ; $5c00: $ff
    ld b, l                                       ; $5c01: $45
    add e                                         ; $5c02: $83

jr_041_5c03:
    adc d                                         ; $5c03: $8a
    rlca                                          ; $5c04: $07
    dec d                                         ; $5c05: $15
    ld c, $2a                                     ; $5c06: $0e $2a
    inc e                                         ; $5c08: $1c
    rst $38                                       ; $5c09: $ff
    ld d, h                                       ; $5c0a: $54
    jr c, jr_041_5bb5                             ; $5c0b: $38 $a8

    ld [hl], b                                    ; $5c0d: $70
    ld d, c                                       ; $5c0e: $51
    ldh [$a2], a                                  ; $5c0f: $e0 $a2
    pop bc                                        ; $5c11: $c1
    ld bc, $ff00                                  ; $5c12: $01 $00 $ff
    db $fc                                        ; $5c15: $fc
    call nc, $c4e9                                ; $5c16: $d4 $e9 $c4
    pop hl                                        ; $5c19: $e1
    ret nc                                        ; $5c1a: $d0

    db $fd                                        ; $5c1b: $fd
    nop                                           ; $5c1c: $00
    nop                                           ; $5c1d: $00
    nop                                           ; $5c1e: $00
    rst $38                                       ; $5c1f: $ff
    ld d, c                                       ; $5c20: $51
    ldh [$a2], a                                  ; $5c21: $e0 $a2
    pop bc                                        ; $5c23: $c1
    ld b, l                                       ; $5c24: $45
    add e                                         ; $5c25: $83
    adc d                                         ; $5c26: $8a
    rlca                                          ; $5c27: $07
    rst $38                                       ; $5c28: $ff
    dec d                                         ; $5c29: $15
    ld c, $2a                                     ; $5c2a: $0e $2a
    inc e                                         ; $5c2c: $1c
    ld d, h                                       ; $5c2d: $54
    jr c, jr_041_5bd8                             ; $5c2e: $38 $a8

    ld [hl], b                                    ; $5c30: $70
    pop hl                                        ; $5c31: $e1
    nop                                           ; $5c32: $00
    rst $38                                       ; $5c33: $ff
    db $fc                                        ; $5c34: $fc
    call nc, $c4e9                                ; $5c35: $d4 $e9 $c4
    pop hl                                        ; $5c38: $e1
    ret nc                                        ; $5c39: $d0

    di                                            ; $5c3a: $f3
    ld b, $06                                     ; $5c3b: $06 $06
    ccf                                           ; $5c3d: $3f
    ld a, a                                       ; $5c3e: $7f
    ccf                                           ; $5c3f: $3f
    ld l, a                                       ; $5c40: $6f
    ld a, a                                       ; $5c41: $7f
    ld c, a                                       ; $5c42: $4f
    ld a, a                                       ; $5c43: $7f
    inc c                                         ; $5c44: $0c
    ccf                                           ; $5c45: $3f
    call nc, Call_000_04e9                        ; $5c46: $d4 $e9 $04
    sbc b                                         ; $5c49: $98
    pop hl                                        ; $5c4a: $e1
    and b                                         ; $5c4b: $a0
    ld hl, sp-$80                                 ; $5c4c: $f8 $80
    cp $e1                                        ; $5c4e: $fe $e1
    nop                                           ; $5c50: $00
    nop                                           ; $5c51: $00
    nop                                           ; $5c52: $00
    rst $38                                       ; $5c53: $ff
    ld d, h                                       ; $5c54: $54
    jr c, jr_041_5bff                             ; $5c55: $38 $a8

    ld [hl], b                                    ; $5c57: $70
    ld d, c                                       ; $5c58: $51
    ldh [$a2], a                                  ; $5c59: $e0 $a2
    pop bc                                        ; $5c5b: $c1
    rst $38                                       ; $5c5c: $ff
    ld b, l                                       ; $5c5d: $45
    add e                                         ; $5c5e: $83
    adc d                                         ; $5c5f: $8a
    rlca                                          ; $5c60: $07
    dec d                                         ; $5c61: $15
    ld c, $2a                                     ; $5c62: $0e $2a
    inc e                                         ; $5c64: $1c
    ld bc, $ff00                                  ; $5c65: $01 $00 $ff
    db $fc                                        ; $5c68: $fc
    call nc, $c4e9                                ; $5c69: $d4 $e9 $c4
    pop hl                                        ; $5c6c: $e1
    ret nc                                        ; $5c6d: $d0

    db $fd                                        ; $5c6e: $fd
    rst $38                                       ; $5c6f: $ff
    rst $38                                       ; $5c70: $ff
    rst $38                                       ; $5c71: $ff
    db $eb                                        ; $5c72: $eb
    nop                                           ; $5c73: $00
    nop                                           ; $5c74: $00
    nop                                           ; $5c75: $00
    ld bc, $ff00                                  ; $5c76: $01 $00 $ff
    rst $38                                       ; $5c79: $ff
    rst $38                                       ; $5c7a: $ff
    rst $38                                       ; $5c7b: $ff
    rst $38                                       ; $5c7c: $ff
    rst $38                                       ; $5c7d: $ff
    rst $38                                       ; $5c7e: $ff
    rst $38                                       ; $5c7f: $ff
    rst $38                                       ; $5c80: $ff
    db $e4                                        ; $5c81: $e4
    nop                                           ; $5c82: $00
    nop                                           ; $5c83: $00
    nop                                           ; $5c84: $00
    ld bc, $ff00                                  ; $5c85: $01 $00 $ff
    rst $38                                       ; $5c88: $ff
    rst $38                                       ; $5c89: $ff
    rst $38                                       ; $5c8a: $ff
    rst $38                                       ; $5c8b: $ff
    ld hl, sp+$00                                 ; $5c8c: $f8 $00
    nop                                           ; $5c8e: $00
    nop                                           ; $5c8f: $00
    ld bc, $ff00                                  ; $5c90: $01 $00 $ff
    rst $38                                       ; $5c93: $ff
    rst $38                                       ; $5c94: $ff
    rst $38                                       ; $5c95: $ff
    rst $38                                       ; $5c96: $ff
    rst $38                                       ; $5c97: $ff
    rst $38                                       ; $5c98: $ff
    rst $38                                       ; $5c99: $ff
    rst $38                                       ; $5c9a: $ff
    db $e4                                        ; $5c9b: $e4
    nop                                           ; $5c9c: $00
    nop                                           ; $5c9d: $00
    nop                                           ; $5c9e: $00
    db $10                                        ; $5c9f: $10
    ld [$0000], sp                                ; $5ca0: $08 $00 $00
    db $10                                        ; $5ca3: $10
    db $10                                        ; $5ca4: $10
    ld [bc], a                                    ; $5ca5: $02
    nop                                           ; $5ca6: $00
    add b                                         ; $5ca7: $80
    db $10                                        ; $5ca8: $10
    ld [$0000], sp                                ; $5ca9: $08 $00 $00
    db $10                                        ; $5cac: $10
    db $10                                        ; $5cad: $10
    ld [bc], a                                    ; $5cae: $02
    nop                                           ; $5caf: $00
    db $10                                        ; $5cb0: $10
    jr @+$06                                      ; $5cb1: $18 $04

    nop                                           ; $5cb3: $00
    add b                                         ; $5cb4: $80
    db $10                                        ; $5cb5: $10
    ld [$0000], sp                                ; $5cb6: $08 $00 $00
    db $10                                        ; $5cb9: $10
    db $10                                        ; $5cba: $10
    ld [bc], a                                    ; $5cbb: $02
    nop                                           ; $5cbc: $00
    db $10                                        ; $5cbd: $10
    jr @+$06                                      ; $5cbe: $18 $04

    nop                                           ; $5cc0: $00
    add b                                         ; $5cc1: $80
    db $10                                        ; $5cc2: $10
    ld [$0000], sp                                ; $5cc3: $08 $00 $00
    db $10                                        ; $5cc6: $10
    db $10                                        ; $5cc7: $10
    ld [bc], a                                    ; $5cc8: $02
    nop                                           ; $5cc9: $00
    db $10                                        ; $5cca: $10
    jr @+$06                                      ; $5ccb: $18 $04

    nop                                           ; $5ccd: $00
    add b                                         ; $5cce: $80
    db $10                                        ; $5ccf: $10
    ld [$0000], sp                                ; $5cd0: $08 $00 $00
    db $10                                        ; $5cd3: $10
    db $10                                        ; $5cd4: $10
    ld [bc], a                                    ; $5cd5: $02
    nop                                           ; $5cd6: $00
    add b                                         ; $5cd7: $80
    db $10                                        ; $5cd8: $10
    ld [$0000], sp                                ; $5cd9: $08 $00 $00
    db $10                                        ; $5cdc: $10
    db $10                                        ; $5cdd: $10
    ld [bc], a                                    ; $5cde: $02
    nop                                           ; $5cdf: $00
    db $10                                        ; $5ce0: $10
    jr @+$06                                      ; $5ce1: $18 $04

    nop                                           ; $5ce3: $00
    add b                                         ; $5ce4: $80

    db $ff, $7f, $ff, $6b, $58, $1e, $00, $00, $00, $00, $e6, $02, $00, $01, $ff, $03

    nop                                           ; $5cf5: $00
    nop                                           ; $5cf6: $00
    nop                                           ; $5cf7: $00
    nop                                           ; $5cf8: $00
    nop                                           ; $5cf9: $00
    nop                                           ; $5cfa: $00
    nop                                           ; $5cfb: $00
    nop                                           ; $5cfc: $00
    nop                                           ; $5cfd: $00
    nop                                           ; $5cfe: $00
    nop                                           ; $5cff: $00

    db $ff, $45, $83, $8a, $07, $15, $0e, $2a, $1c, $ff, $54, $38, $a8, $70, $51, $e0
    db $a2, $c1, $00, $00, $00, $ff, $00, $00, $3f, $10, $60, $00, $40, $0f, $ef, $47
    db $18, $4f, $10, $fe, $e1, $00, $00, $f8, $ff, $00, $0c, $00, $04, $f0, $e4, $10
    db $f4, $f9, $00, $fe, $e1, $ea, $e3, $47, $18, $60, $00, $3f, $39, $00, $ff, $e1
    db $ea, $e3, $e4, $10, $0c, $d8, $e0, $ff, $e3, $05, $ff, $fb, $e2, $ff, $f8, $e0
    db $fc, $e9, $e8, $e4, $c0, $e4, $fa, $e7, $f8, $aa, $e3, $fa, $e7, $c0, $e8, $0a
    db $fa, $0f, $fa, $05, $fe, $b0, $e6, $04, $ff, $0a, $fe, $05, $fd, $02, $00, $00
    db $00, $e6, $02, $ff, $7f, $3f, $00, $60, $01

    nop                                           ; $5d79: $00
    nop                                           ; $5d7a: $00
    nop                                           ; $5d7b: $00
    nop                                           ; $5d7c: $00
    nop                                           ; $5d7d: $00
    nop                                           ; $5d7e: $00
    nop                                           ; $5d7f: $00

    db $fd, $00, $ff, $e2, $18, $18, $3d, $25, $7d, $45, $ef, $7d, $45, $fd, $85, $f0
    db $e3, $c6, $c6, $ef, $fd, $29, $fe, $e3, $00, $00, $01, $01, $02, $03, $ef, $32
    db $33, $7a, $4b, $fe, $e3, $00, $00, $80, $7f, $80, $40, $c0, $4c, $cc, $5e, $d2
    db $fe, $e3, $9e, $c0, $e3, $63, $63, $f7, $94, $fe, $e3, $b0, $e5, $bc, $7f, $a4
    db $be, $a2, $be, $a2, $bf, $a1, $d0, $e1, $cf, $4c, $cc, $52, $de, $fe, $e5, $90
    db $e1, $60, $60, $0f, $93, $f3, $97, $f4, $fe, $e3, $c2, $e3, $c3, $e4, $bb, $e0
    db $66, $70, $e3, $98, $98, $c0, $e7, $62, $e1, $a4, $bc, $b3, $e0, $df, $be, $a1
    db $bf, $a1, $bf, $70, $e1, $32, $33, $f3, $4a, $7b, $fe, $e5, $40, $e1, $06, $06
    db $c9, $cf, $83, $e9, $2f, $fe, $e3, $42, $e3, $43, $e4, $3b, $e0, $22, $e3, $25
    db $fd, $3d, $23, $e0, $7d, $85, $fd, $85, $fd, $fd, $3d, $85, $18, $e1, $3d, $25
    db $18, $18, $06, $e3, $18, $e5, $f3, $c6, $c6, $f6, $c3, $18, $e5, $32, $33, $02
    db $03, $ef, $01, $01, $00, $00, $18, $e5, $4c, $cc, $40, $df, $c0, $80, $80, $00
    db $00, $18, $e5, $63, $63, $36, $c6, $c3, $bf, $a1, $18, $e1, $bc, $a4, $b0, $e5
    db $16, $e7, $f3, $4c, $cc, $d0, $e1, $18, $e5, $93, $f3, $60, $60, $30, $94, $c1
    db $16, $e7, $be, $e3, $c0, $e5, $98, $98, $76, $c3, $1c, $e1, $66, $14, $e1, $a4
    db $bc, $5e, $e3, $16, $e7, $32, $33, $70, $e1, $1e, $18, $e5, $c9, $cf, $06, $06
    db $44, $c1, $16, $e7, $3e, $e3, $0c, $1c, $e1, $14, $e1, $25, $3d, $1e, $e3, $00
    db $00

    nop                                           ; $5e91: $00
    ld l, l                                       ; $5e92: $6d
    nop                                           ; $5e93: $00
    rra                                           ; $5e94: $1f
    ld [de], a                                    ; $5e95: $12
    sub $00                                       ; $5e96: $d6 $00
    rst $38                                       ; $5e98: $ff
    daa                                           ; $5e99: $27
    and $02                                       ; $5e9a: $e6 $02
    rra                                           ; $5e9c: $1f
    ld [de], a                                    ; $5e9d: $12
    sub $00                                       ; $5e9e: $d6 $00
    rst $38                                       ; $5ea0: $ff
    daa                                           ; $5ea1: $27
    nop                                           ; $5ea2: $00
    nop                                           ; $5ea3: $00
    nop                                           ; $5ea4: $00
    nop                                           ; $5ea5: $00
    nop                                           ; $5ea6: $00
    nop                                           ; $5ea7: $00
    nop                                           ; $5ea8: $00
    nop                                           ; $5ea9: $00
    nop                                           ; $5eaa: $00
    nop                                           ; $5eab: $00
    nop                                           ; $5eac: $00
    nop                                           ; $5ead: $00
    nop                                           ; $5eae: $00
    nop                                           ; $5eaf: $00
    rst $38                                       ; $5eb0: $ff
    nop                                           ; $5eb1: $00
    nop                                           ; $5eb2: $00
    rlca                                          ; $5eb3: $07
    rlca                                          ; $5eb4: $07
    rra                                           ; $5eb5: $1f
    jr jr_041_5ef7                                ; $5eb6: $18 $3f

    jr nz, @+$01                                  ; $5eb8: $20 $ff

    jr c, jr_041_5ee3                             ; $5eba: $38 $27

    ld [hl], a                                    ; $5ebc: $77
    ld c, b                                       ; $5ebd: $48
    ld a, h                                       ; $5ebe: $7c
    ld b, e                                       ; $5ebf: $43
    ld h, e                                       ; $5ec0: $63

jr_041_5ec1:
    ld e, h                                       ; $5ec1: $5c
    rst $38                                       ; $5ec2: $ff

jr_041_5ec3:
    rst $38                                       ; $5ec3: $ff
    rst $38                                       ; $5ec4: $ff

jr_041_5ec5:
    rst $38                                       ; $5ec5: $ff
    nop                                           ; $5ec6: $00
    rst $00                                       ; $5ec7: $c7
    jr c, jr_041_5ec3                             ; $5ec8: $38 $f9

    ld b, $ff                                     ; $5eca: $06 $ff
    ld c, $f1                                     ; $5ecc: $0e $f1
    or $09                                        ; $5ece: $f6 $09
    add hl, de                                    ; $5ed0: $19
    and $e7                                       ; $5ed1: $e6 $e7

jr_041_5ed3:
    jr jr_041_5ed3                                ; $5ed3: $18 $fe

jr_041_5ed5:
    ldh a, [$e1]                                  ; $5ed5: $f0 $e1
    ld h, [hl]                                    ; $5ed7: $66
    sbc c                                         ; $5ed8: $99
    cp c                                          ; $5ed9: $b9
    ld b, [hl]                                    ; $5eda: $46
    rst $08                                       ; $5edb: $cf
    jr nc, jr_041_5ed5                            ; $5edc: $30 $f7

    rst $18                                       ; $5ede: $df
    ld [$c738], sp                                ; $5edf: $08 $38 $c7
    rst $08                                       ; $5ee2: $cf

jr_041_5ee3:
    jr nc, jr_041_5ec5                            ; $5ee3: $30 $e0

    pop hl                                        ; $5ee5: $e1
    rst $08                                       ; $5ee6: $cf
    jr nc, @+$01                                  ; $5ee7: $30 $ff

    ld [hl], b                                    ; $5ee9: $70
    adc a                                         ; $5eea: $8f
    sbc a                                         ; $5eeb: $9f
    ld h, b                                       ; $5eec: $60
    db $ec                                        ; $5eed: $ec
    inc de                                        ; $5eee: $13
    ld [hl], e                                    ; $5eef: $73
    adc h                                         ; $5ef0: $8c
    ei                                            ; $5ef1: $fb
    sbc a                                         ; $5ef2: $9f
    ld h, b                                       ; $5ef3: $60
    ret nc                                        ; $5ef4: $d0

    pop hl                                        ; $5ef5: $e1
    sbc [hl]                                      ; $5ef6: $9e

jr_041_5ef7:
    ld h, c                                       ; $5ef7: $61
    ld h, e                                       ; $5ef8: $63
    sbc h                                         ; $5ef9: $9c
    db $fc                                        ; $5efa: $fc
    ld a, a                                       ; $5efb: $7f
    inc bc                                        ; $5efc: $03
    rlca                                          ; $5efd: $07
    ld hl, sp-$08                                 ; $5efe: $f8 $f8
    rlca                                          ; $5f00: $07
    rra                                           ; $5f01: $1f
    ldh [$c0], a                                  ; $5f02: $e0 $c0
    pop hl                                        ; $5f04: $e1
    rst $38                                       ; $5f05: $ff
    db $ed                                        ; $5f06: $ed
    ld [de], a                                    ; $5f07: $12
    sbc e                                         ; $5f08: $9b
    ld h, h                                       ; $5f09: $64
    halt                                          ; $5f0a: $76
    adc c                                         ; $5f0b: $89
    db $ed                                        ; $5f0c: $ed
    ld [de], a                                    ; $5f0d: $12
    rst $28                                       ; $5f0e: $ef
    inc sp                                        ; $5f0f: $33
    call z, Call_000_11ee                         ; $5f10: $cc $ee $11
    or b                                          ; $5f13: $b0
    pop hl                                        ; $5f14: $e1
    ld hl, sp+$07                                 ; $5f15: $f8 $07
    scf                                           ; $5f17: $37
    ld a, a                                       ; $5f18: $7f
    ret z                                         ; $5f19: $c8

    ret c                                         ; $5f1a: $d8

    daa                                           ; $5f1b: $27
    adc a                                         ; $5f1c: $8f

jr_041_5f1d:
    ld [hl], b                                    ; $5f1d: $70
    ldh a, [rIF]                                  ; $5f1e: $f0 $0f
    ldh [$e3], a                                  ; $5f20: $e0 $e3
    rst $38                                       ; $5f22: $ff
    db $e3                                        ; $5f23: $e3
    inc e                                         ; $5f24: $1c
    rra                                           ; $5f25: $1f
    ldh [$f0], a                                  ; $5f26: $e0 $f0
    rrca                                          ; $5f28: $0f
    adc a                                         ; $5f29: $8f
    ld [hl], b                                    ; $5f2a: $70
    rst $28                                       ; $5f2b: $ef
    ld a, b                                       ; $5f2c: $78
    add a                                         ; $5f2d: $87
    rst $00                                       ; $5f2e: $c7
    jr c, jr_041_5ec1                             ; $5f2f: $38 $90

    pop hl                                        ; $5f31: $e1
    adc [hl]                                      ; $5f32: $8e
    ld [hl], c                                    ; $5f33: $71
    di                                            ; $5f34: $f3
    ld a, a                                       ; $5f35: $7f
    inc c                                         ; $5f36: $0c
    dec e                                         ; $5f37: $1d
    ld [c], a                                     ; $5f38: $e2

jr_041_5f39:
    db $ed                                        ; $5f39: $ed
    ld [de], a                                    ; $5f3a: $12
    ld [hl-], a                                   ; $5f3b: $32
    call $ffa0                                    ; $5f3c: $cd $a0 $ff
    rst $38                                       ; $5f3f: $ff
    cp $ff                                        ; $5f40: $fe $ff
    db $fc                                        ; $5f42: $fc
    ld [bc], a                                    ; $5f43: $02
    db $ec                                        ; $5f44: $ec
    ld [de], a                                    ; $5f45: $12
    sbc b                                         ; $5f46: $98
    ld h, [hl]                                    ; $5f47: $66
    rst $38                                       ; $5f48: $ff
    ld [hl], h                                    ; $5f49: $74
    adc d                                         ; $5f4a: $8a
    db $ec                                        ; $5f4b: $ec
    ld [de], a                                    ; $5f4c: $12
    jr nc, jr_041_5f1d                            ; $5f4d: $30 $ce

    db $ec                                        ; $5f4f: $ec
    ld [de], a                                    ; $5f50: $12
    rst $38                                       ; $5f51: $ff
    ldh a, [$80]                                  ; $5f52: $f0 $80
    rst $20                                       ; $5f54: $e7
    sub [hl]                                      ; $5f55: $96
    rst $10                                       ; $5f56: $d7
    and [hl]                                      ; $5f57: $a6
    rst $30                                       ; $5f58: $f7
    add [hl]                                      ; $5f59: $86
    ei                                            ; $5f5a: $fb
    rst $00                                       ; $5f5b: $c7
    or [hl]                                       ; $5f5c: $b6
    db $fc                                        ; $5f5d: $fc
    pop hl                                        ; $5f5e: $e1
    add a                                         ; $5f5f: $87
    halt                                          ; $5f60: $76
    ld h, b                                       ; $5f61: $60
    jr jr_041_5fdf                                ; $5f62: $18 $7b

    rst $30                                       ; $5f64: $f7
    inc bc                                        ; $5f65: $03
    inc bc                                        ; $5f66: $03
    ld a, e                                       ; $5f67: $7b
    db $fc                                        ; $5f68: $fc
    push hl                                       ; $5f69: $e5
    inc bc                                        ; $5f6a: $03
    ld a, e                                       ; $5f6b: $7b
    nop                                           ; $5f6c: $00
    nop                                           ; $5f6d: $00
    ei                                            ; $5f6e: $fb
    db $fd                                        ; $5f6f: $fd
    ld sp, hl                                     ; $5f70: $f9
    cp $e0                                        ; $5f71: $fe $e0
    add c                                         ; $5f73: $81
    adc l                                         ; $5f74: $8d
    ld bc, $0181                                  ; $5f75: $01 $81 $01
    rst $38                                       ; $5f78: $ff
    pop hl                                        ; $5f79: $e1
    ret nz                                        ; $5f7a: $c0

    ldh [$8c], a                                  ; $5f7b: $e0 $8c
    inc h                                         ; $5f7d: $24
    jr jr_041_5f39                                ; $5f7e: $18 $b9

    inc b                                         ; $5f80: $04
    rst $38                                       ; $5f81: $ff
    add c                                         ; $5f82: $81
    dec a                                         ; $5f83: $3d
    sbc c                                         ; $5f84: $99
    ld bc, $99c3                                  ; $5f85: $01 $c3 $99
    res 2, e                                      ; $5f88: $cb $93
    rst $38                                       ; $5f8a: $ff
    rst $20                                       ; $5f8b: $e7
    jp $c6e7                                      ; $5f8c: $c3 $e7 $c6


    nop                                           ; $5f8f: $00
    nop                                           ; $5f90: $00
    rst $28                                       ; $5f91: $ef
    rst $08                                       ; $5f92: $cf
    rst $38                                       ; $5f93: $ff
    rst $28                                       ; $5f94: $ef
    rst $08                                       ; $5f95: $cf

jr_041_5f96:
    rst $08                                       ; $5f96: $cf
    adc h                                         ; $5f97: $8c
    call c, $9c88                                 ; $5f98: $dc $88 $9c
    jr @+$01                                      ; $5f9b: $18 $ff

    sbc a                                         ; $5f9d: $9f
    ld e, $1f                                     ; $5f9e: $1e $1f
    inc e                                         ; $5fa0: $1c
    ld bc, $ec00                                  ; $5fa1: $01 $00 $ec
    ret                                           ; $5fa4: $c9


    rst $38                                       ; $5fa5: $ff
    db $ed                                        ; $5fa6: $ed
    ret z                                         ; $5fa7: $c8

    db $ec                                        ; $5fa8: $ec
    ld c, c                                       ; $5fa9: $49
    ld l, l                                       ; $5faa: $6d
    ld [$080d], sp                                ; $5fab: $08 $0d $08
    rst $38                                       ; $5fae: $ff
    inc e                                         ; $5faf: $1c
    add hl, de                                    ; $5fb0: $19
    inc e                                         ; $5fb1: $1c
    ld e, c                                       ; $5fb2: $59
    db $e4                                        ; $5fb3: $e4
    jr jr_041_602f                                ; $5fb4: $18 $79

    add l                                         ; $5fb6: $85
    rst $38                                       ; $5fb7: $ff
    adc l                                         ; $5fb8: $8d
    ld [hl], c                                    ; $5fb9: $71
    pop af                                        ; $5fba: $f1
    dec c                                         ; $5fbb: $0d
    dec e                                         ; $5fbc: $1d
    pop hl                                        ; $5fbd: $e1
    push hl                                       ; $5fbe: $e5
    add hl, de                                    ; $5fbf: $19
    rst $38                                       ; $5fc0: $ff
    add hl, sp                                    ; $5fc1: $39
    push bc                                       ; $5fc2: $c5
    ld bc, $1cfd                                  ; $5fc3: $01 $fd $1c
    inc bc                                        ; $5fc6: $03
    jp $ff9c                                      ; $5fc7: $c3 $9c $ff


    sbc $81                                       ; $5fca: $de $81
    pop bc                                        ; $5fcc: $c1
    sbc [hl]                                      ; $5fcd: $9e
    rst $18                                       ; $5fce: $df
    add b                                         ; $5fcf: $80
    ret nz                                        ; $5fd0: $c0

    sbc a                                         ; $5fd1: $9f
    rst $38                                       ; $5fd2: $ff
    rst $08                                       ; $5fd3: $cf
    add b                                         ; $5fd4: $80
    ldh [$cf], a                                  ; $5fd5: $e0 $cf
    nop                                           ; $5fd7: $00
    add d                                         ; $5fd8: $82
    cp d                                          ; $5fd9: $ba
    jr nc, @+$01                                  ; $5fda: $30 $ff

    ld a, [hl-]                                   ; $5fdc: $3a
    or b                                          ; $5fdd: $b0
    cp b                                          ; $5fde: $b8

jr_041_5fdf:
    ld [hl-], a                                   ; $5fdf: $32
    ld a, [hl-]                                   ; $5fe0: $3a
    or b                                          ; $5fe1: $b0
    jr c, jr_041_5f96                             ; $5fe2: $38 $b2

    rst $38                                       ; $5fe4: $ff
    ld a, [hl-]                                   ; $5fe5: $3a
    jr nc, @+$7a                                  ; $5fe6: $30 $78

    ld [hl+], a                                   ; $5fe8: $22
    nop                                           ; $5fe9: $00
    ld bc, $78fc                                  ; $5fea: $01 $fc $78
    rst $38                                       ; $5fed: $ff
    rst $38                                       ; $5fee: $ff
    cp $ff                                        ; $5fef: $fe $ff
    rst $38                                       ; $5ff1: $ff
    rst $28                                       ; $5ff2: $ef
    rst $00                                       ; $5ff3: $c7
    db $e3                                        ; $5ff4: $e3
    jp $e3ff                                      ; $5ff5: $c3 $ff $e3


    jp $c3e7                                      ; $5ff8: $c3 $e7 $c3


    ldh a, [$0e]                                  ; $5ffb: $f0 $0e
    ld [$ff74], sp                                ; $5ffd: $08 $74 $ff
    add hl, de                                    ; $6000: $19
    jr nz, @-$7b                                  ; $6001: $20 $83

    add hl, de                                    ; $6003: $19
    db $d3                                        ; $6004: $d3
    add e                                         ; $6005: $83
    rst $00                                       ; $6006: $c7
    sub e                                         ; $6007: $93
    rst $38                                       ; $6008: $ff
    rst $00                                       ; $6009: $c7
    sub a                                         ; $600a: $97
    rst $00                                       ; $600b: $c7
    ld b, $00                                     ; $600c: $06 $00
    ld c, $e4                                     ; $600e: $0e $e4
    ld b, d                                       ; $6010: $42
    rst $38                                       ; $6011: $ff
    db $f4                                        ; $6012: $f4
    ld [c], a                                     ; $6013: $e2
    ldh a, [$e6]                                  ; $6014: $f0 $e6
    db $e4                                        ; $6016: $e4
    jp nz, $8ec0                                  ; $6017: $c2 $c0 $8e

    rst $38                                       ; $601a: $ff
    adc h                                         ; $601b: $8c
    ld [de], a                                    ; $601c: $12
    nop                                           ; $601d: $00
    nop                                           ; $601e: $00
    rst $30                                       ; $601f: $f7
    add $d7                                       ; $6020: $c6 $d7
    and [hl]                                      ; $6022: $a6
    cp $3e                                        ; $6023: $fe $3e
    ldh [$a7], a                                  ; $6025: $e0 $a7
    rst $20                                       ; $6027: $e7
    sub a                                         ; $6028: $97
    rst $10                                       ; $6029: $d7
    and b                                         ; $602a: $a0
    ldh a, [$80]                                  ; $602b: $f0 $80
    rst $38                                       ; $602d: $ff
    ret nz                                        ; $602e: $c0

jr_041_602f:
    cp b                                          ; $602f: $b8
    ld a, e                                       ; $6030: $7b
    inc bc                                        ; $6031: $03
    dec sp                                        ; $6032: $3b
    ld b, e                                       ; $6033: $43
    ld bc, $f601                                  ; $6034: $01 $01 $f6
    ld c, h                                       ; $6037: $4c
    pop hl                                        ; $6038: $e1
    db $fc                                        ; $6039: $fc
    nop                                           ; $603a: $00
    rst $38                                       ; $603b: $ff
    ldh [rSC], a                                  ; $603c: $e0 $02
    adc h                                         ; $603e: $8c
    ld [bc], a                                    ; $603f: $02
    add b                                         ; $6040: $80
    rst $38                                       ; $6041: $ff
    ld e, $c2                                     ; $6042: $1e $c2
    add c                                         ; $6044: $81
    ei                                            ; $6045: $fb
    ldh a, [$f8]                                  ; $6046: $f0 $f8
    di                                            ; $6048: $f3
    ei                                            ; $6049: $fb
    rst $38                                       ; $604a: $ff
    nop                                           ; $604b: $00
    nop                                           ; $604c: $00
    inc bc                                        ; $604d: $03
    inc bc                                        ; $604e: $03
    inc b                                         ; $604f: $04
    rst $38                                       ; $6050: $ff
    ld a, [hl]                                    ; $6051: $7e
    ld a, [hl]                                    ; $6052: $7e
    rst $38                                       ; $6053: $ff

jr_041_6054:
    ld a, h                                       ; $6054: $7c
    ld a, [hl]                                    ; $6055: $7e
    inc a                                         ; $6056: $3c
    inc a                                         ; $6057: $3c
    jr c, jr_041_6096                             ; $6058: $38 $3c

    sbc c                                         ; $605a: $99

jr_041_605b:
    sbc c                                         ; $605b: $99
    rst $38                                       ; $605c: $ff
    nop                                           ; $605d: $00
    ld bc, $c2c2                                  ; $605e: $01 $c2 $c2
    dec h                                         ; $6061: $25
    inc e                                         ; $6062: $1c
    ld e, b                                       ; $6063: $58
    inc e                                         ; $6064: $1c
    rst $38                                       ; $6065: $ff
    jr jr_041_60a6                                ; $6066: $18 $3e

    sbc h                                         ; $6068: $9c
    ccf                                           ; $6069: $3f
    cp a                                          ; $606a: $bf
    sbc a                                         ; $606b: $9f
    rrca                                          ; $606c: $0f
    add a                                         ; $606d: $87
    rst $38                                       ; $606e: $ff
    ld b, b                                       ; $606f: $40
    ret nz                                        ; $6070: $c0

    jr nz, jr_041_6083                            ; $6071: $20 $10

    add sp, $5d                                   ; $6073: $e8 $5d
    jr jr_041_6093                                ; $6075: $18 $1c

    sbc a                                         ; $6077: $9f
    reti                                          ; $6078: $d9


    inc e                                         ; $6079: $1c
    jr jr_041_605b                                ; $607a: $18 $df

    sbc a                                         ; $607c: $9f
    cp $e0                                        ; $607d: $fe $e0
    ret nz                                        ; $607f: $c0

    pop hl                                        ; $6080: $e1
    jr nz, @+$01                                  ; $6081: $20 $ff

jr_041_6083:
    db $fd                                        ; $6083: $fd
    nop                                           ; $6084: $00
    ld a, b                                       ; $6085: $78
    add h                                         ; $6086: $84
    inc b                                         ; $6087: $04
    ld [bc], a                                    ; $6088: $02
    ld a, [c]                                     ; $6089: $f2
    db $e4                                        ; $608a: $e4
    rst $38                                       ; $608b: $ff
    db $f4                                        ; $608c: $f4
    db $e3                                        ; $608d: $e3
    push af                                       ; $608e: $f5
    ld [bc], a                                    ; $608f: $02
    ld [bc], a                                    ; $6090: $02
    dec b                                         ; $6091: $05
    rlca                                          ; $6092: $07

jr_041_6093:
    ld [$e6ff], sp                                ; $6093: $08 $ff $e6

jr_041_6096:
    ret z                                         ; $6096: $c8

    ldh [$c4], a                                  ; $6097: $e0 $c4
    pop af                                        ; $6099: $f1
    ld h, b                                       ; $609a: $60
    ld a, a                                       ; $609b: $7f
    ld a, a                                       ; $609c: $7f
    rst $38                                       ; $609d: $ff
    ld a, a                                       ; $609e: $7f
    ccf                                           ; $609f: $3f
    ccf                                           ; $60a0: $3f
    nop                                           ; $60a1: $00
    nop                                           ; $60a2: $00
    add b                                         ; $60a3: $80
    add b                                         ; $60a4: $80
    ld b, b                                       ; $60a5: $40

jr_041_60a6:
    rst $38                                       ; $60a6: $ff
    ld [hl], d                                    ; $60a7: $72
    ld h, b                                       ; $60a8: $60
    ldh a, [$66]                                  ; $60a9: $f0 $66
    ldh a, [$c4]                                  ; $60ab: $f0 $c4
    pop hl                                        ; $60ad: $e1
    add h                                         ; $60ae: $84
    rst $38                                       ; $60af: $ff
    push bc                                       ; $60b0: $c5
    add hl, bc                                    ; $60b1: $09
    add l                                         ; $60b2: $85
    jr jr_041_60cd                                ; $60b3: $18 $18

    inc h                                         ; $60b5: $24
    inc e                                         ; $60b6: $1c
    ld h, d                                       ; $60b7: $62
    rst $38                                       ; $60b8: $ff
    rst $38                                       ; $60b9: $ff
    db $fc                                        ; $60ba: $fc
    db $fc                                        ; $60bb: $fc
    ldh [$e0], a                                  ; $60bc: $e0 $e0
    ret nz                                        ; $60be: $c0

    pop hl                                        ; $60bf: $e1
    jp nz, $e7ff                                  ; $60c0: $c2 $ff $e7

    ret z                                         ; $60c3: $c8

    call $0202                                    ; $60c4: $cd $02 $02
    dec e                                         ; $60c7: $1d
    rrca                                          ; $60c8: $0f
    jr nc, @+$01                                  ; $60c9: $30 $ff

    ld c, $04                                     ; $60cb: $0e $04

jr_041_60cd:
    inc c                                         ; $60cd: $0c
    ld [$810c], sp                                ; $60ce: $08 $0c $81
    jr nc, jr_041_6054                            ; $60d1: $30 $81

    rst $38                                       ; $60d3: $ff
    cp c                                          ; $60d4: $b9
    ld [hl-], a                                   ; $60d5: $32
    cp b                                          ; $60d6: $b8
    inc de                                        ; $60d7: $13
    inc bc                                        ; $60d8: $03
    add b                                         ; $60d9: $80
    add d                                         ; $60da: $82
    ld b, l                                       ; $60db: $45
    rst $38                                       ; $60dc: $ff
    ld a, h                                       ; $60dd: $7c
    ld [bc], a                                    ; $60de: $02
    ld [hl], h                                    ; $60df: $74
    adc d                                         ; $60e0: $8a
    ret z                                         ; $60e1: $c8

    ld [hl], $34                                  ; $60e2: $36 $34
    jp z, $ccff                                   ; $60e4: $ca $ff $cc

    ld [hl-], a                                   ; $60e7: $32
    ld [hl], b                                    ; $60e8: $70
    adc [hl]                                      ; $60e9: $8e
    adc h                                         ; $60ea: $8c
    ld [hl], d                                    ; $60eb: $72
    ldh a, [$0e]                                  ; $60ec: $f0 $0e
    rst $38                                       ; $60ee: $ff
    db $f4                                        ; $60ef: $f4
    adc e                                         ; $60f0: $8b
    db $eb                                        ; $60f1: $eb
    sub h                                         ; $60f2: $94
    sub $a9                                       ; $60f3: $d6 $a9
    db $fd                                        ; $60f5: $fd
    add d                                         ; $60f6: $82
    rst $38                                       ; $60f7: $ff
    jp nz, $ffbd                                  ; $60f8: $c2 $bd $ff

    add b                                         ; $60fb: $80
    ret nz                                        ; $60fc: $c0

    cp a                                          ; $60fd: $bf
    add b                                         ; $60fe: $80
    ld b, b                                       ; $60ff: $40
    rst $38                                       ; $6100: $ff
    ld h, h                                       ; $6101: $64
    sbc e                                         ; $6102: $9b
    ei                                            ; $6103: $fb
    inc b                                         ; $6104: $04
    rlca                                          ; $6105: $07
    ld hl, sp-$04                                 ; $6106: $f8 $fc
    inc bc                                        ; $6108: $03
    rst $38                                       ; $6109: $ff
    inc bc                                        ; $610a: $03
    db $fc                                        ; $610b: $fc
    cp $01                                        ; $610c: $fe $01
    nop                                           ; $610e: $00
    rst $38                                       ; $610f: $ff
    nop                                           ; $6110: $00
    nop                                           ; $6111: $00
    rst $38                                       ; $6112: $ff
    di                                            ; $6113: $f3
    inc c                                         ; $6114: $0c
    adc h                                         ; $6115: $8c
    ld [hl], e                                    ; $6116: $73
    ld a, a                                       ; $6117: $7f
    add b                                         ; $6118: $80
    ret nz                                        ; $6119: $c0

    ccf                                           ; $611a: $3f
    rst $28                                       ; $611b: $ef
    ccf                                           ; $611c: $3f
    ret nz                                        ; $611d: $c0

    pop hl                                        ; $611e: $e1
    ld e, $f0                                     ; $611f: $1e $f0
    pop hl                                        ; $6121: $e1
    sbc c                                         ; $6122: $99
    ld h, [hl]                                    ; $6123: $66
    halt                                          ; $6124: $76
    db $ed                                        ; $6125: $ed
    adc c                                         ; $6126: $89
    or $a3                                        ; $6127: $f6 $a3
    pop af                                        ; $6129: $f1
    ld c, $e0                                     ; $612a: $0e $e0
    pop hl                                        ; $612c: $e1
    and $19                                       ; $612d: $e6 $19
    ld a, c                                       ; $612f: $79
    db $ed                                        ; $6130: $ed
    add [hl]                                      ; $6131: $86
    and $a3                                       ; $6132: $e6 $a3
    rst $20                                       ; $6134: $e7
    jr @-$2e                                      ; $6135: $18 $d0

    pop hl                                        ; $6137: $e1
    inc a                                         ; $6138: $3c
    jp $ffc3                                      ; $6139: $c3 $c3 $ff


    inc a                                         ; $613c: $3c
    ld a, $c1                                     ; $613d: $3e $c1
    pop bc                                        ; $613f: $c1
    ld a, $bf                                     ; $6140: $3e $bf
    ld b, b                                       ; $6142: $40
    ld h, b                                       ; $6143: $60
    db $fd                                        ; $6144: $fd
    sbc a                                         ; $6145: $9f
    ldh a, [$e3]                                  ; $6146: $f0 $e3
    rst $20                                       ; $6148: $e7
    jr jr_041_6169                                ; $6149: $18 $1e

    pop hl                                        ; $614b: $e1
    pop af                                        ; $614c: $f1
    ld c, $cf                                     ; $614d: $0e $cf
    ld c, $f1                                     ; $614f: $0e $f1
    ld sp, hl                                     ; $6151: $f9
    ld b, $b0                                     ; $6152: $06 $b0
    pop hl                                        ; $6154: $e1
    and b                                         ; $6155: $a0
    db $fd                                        ; $6156: $fd
    sbc b                                         ; $6157: $98
    ld h, a                                       ; $6158: $67
    ccf                                           ; $6159: $3f
    ld [hl], a                                    ; $615a: $77
    adc b                                         ; $615b: $88
    adc [hl]                                      ; $615c: $8e
    ld [hl], c                                    ; $615d: $71
    pop af                                        ; $615e: $f1
    ld c, $cc                                     ; $615f: $0e $cc
    pop hl                                        ; $6161: $e1
    add b                                         ; $6162: $80
    pop hl                                        ; $6163: $e1
    rst $38                                       ; $6164: $ff
    ld h, l                                       ; $6165: $65
    sbc d                                         ; $6166: $9a
    ei                                            ; $6167: $fb
    inc b                                         ; $6168: $04

jr_041_6169:
    ld b, $f9                                     ; $6169: $06 $f9
    db $fd                                        ; $616b: $fd
    ld [bc], a                                    ; $616c: $02
    di                                            ; $616d: $f3
    ld [bc], a                                    ; $616e: $02
    db $fd                                        ; $616f: $fd
    ld [hl], e                                    ; $6170: $73
    ldh [rSVBK], a                                ; $6171: $e0 $70
    ldh [$0c], a                                  ; $6173: $e0 $0c
    ld a, [c]                                     ; $6175: $f2
    db $fc                                        ; $6176: $fc
    ld [bc], a                                    ; $6177: $02
    ei                                            ; $6178: $fb
    db $10                                        ; $6179: $10
    xor $c4                                       ; $617a: $ee $c4
    and c                                         ; $617c: $a1
    call z, $0032                                 ; $617d: $cc $32 $00
    cp $00                                        ; $6180: $fe $00
    ld bc, $0000                                  ; $6182: $01 $00 $00
    nop                                           ; $6185: $00
    nop                                           ; $6186: $00
    nop                                           ; $6187: $00
    nop                                           ; $6188: $00
    nop                                           ; $6189: $00
    nop                                           ; $618a: $00
    nop                                           ; $618b: $00
    nop                                           ; $618c: $00
    nop                                           ; $618d: $00
    nop                                           ; $618e: $00
    nop                                           ; $618f: $00

    db $fb, $ff, $00, $fe, $e5, $fb, $7c, $c3, $7d, $de, $fd, $63, $f0, $e7, $ff, $00
    db $be, $cf, $59, $ef, $fe, $f0, $e9, $fb, $3c, $63, $bc, $f7, $7b, $c6, $bf, $7b
    db $de, $63, $de, $63, $9c, $d6, $e4, $db, $ff, $ed, $5b, $ed, $db, $6d, $de, $6f
    db $90, $fd, $6f, $b6, $e3, $7b, $bc, $63, $bc, $6f, $b0, $0f, $7b, $bc, $c3, $3c
    db $a6, $e3, $00, $00

    nop                                           ; $61d4: $00

    db $fb, $ff, $00, $fe, $e5, $fb, $7c, $cd, $7f, $d5, $fd, $6f, $f0, $e7, $ff, $00
    db $de, $e7, $29, $ff, $7e, $f0, $e9, $dd, $66, $5d, $e6, $dd, $67, $fe, $e0, $df
    db $6f, $f9, $7f, $82, $7d, $c6, $e3, $6f, $bf, $ff, $c9, $ff, $2b, $fd, $6b, $bd
    db $42, $bd, $fe, $b6, $e3, $55, $fe, $7d, $fe, $6d, $fe, $45, $07, $fe, $19, $e6
    db $a6, $e3, $00, $00

    nop                                           ; $6219: $00

    db $fb, $ff, $00, $fe, $e5, $bb, $cc, $da, $ff, $da, $fd, $ff, $f0, $e7, $ff, $00
    db $ef, $f0, $97, $f8, $fe, $e0, $e7, $b7, $d8, $b6, $db, $b6, $db, $aa, $ff, $ff
    db $8a, $ff, $ba, $cf, $ba, $cf, $30, $fd, $cf, $ea, $e6, $df, $b0, $df, $e7, $f8
    db $0f, $bd, $f0, $b6, $e3, $f6, $fb, $96, $fb, $d8, $e1, $24, $01, $db, $a6, $e3
    db $00, $00

    nop                                           ; $625c: $00

    db $fb, $ff, $00, $fe, $e5, $ee, $33, $ee, $33, $ea, $fd, $3f, $f0, $e7, $ff, $00
    db $de, $6f, $d9, $6f, $fe, $f0, $e9, $fb, $3c, $63, $bc, $fe, $3f, $f6, $7f, $3f
    db $e2, $3f, $ee, $33, $cc, $33, $c6, $e3, $bb, $db, $6d, $fe, $e1, $de, $6f, $90
    db $d6, $e4, $7b, $ff, $bc, $63, $bc, $6f, $b0, $7b, $bc, $c3, $01, $3c, $a6, $e3
    db $00, $00

    nop                                           ; $629f: $00

    db $fb, $ff, $00, $fe, $e5, $bb, $cc, $db, $ed, $ea, $7d, $ff, $f0, $e7, $ff, $00
    db $bd, $de, $52, $f0, $ea, $f7, $ef, $f3, $94, $e0, $ea, $6e, $b3, $ae, $f3, $ff
    db $bb, $ff, $9a, $ff, $aa, $df, $ba, $cf, $fb, $30, $cf, $b6, $e3, $d6, $fb, $5c
    db $ff, $d2, $df, $7f, $d6, $7b, $84, $7b, $a6, $e3, $b5, $de, $ff, $e5, $fe, $95
    db $fe, $b3, $df, $24, $db, $fe, $96, $e3, $ae, $f3, $aa, $ff, $aa, $ff, $14, $07
    db $ff, $61, $9e, $86, $e3, $00, $00

    nop                                           ; $62f7: $00

    db $fb, $ff, $00, $fe, $e5, $fd, $1e, $f2, $3f, $e4, $fd, $3b, $f0, $e7, $ff, $00
    db $ef, $73, $94, $ff, $fe, $f0, $e9, $7b, $bc, $a5, $fe, $ef, $30, $ee, $7f, $37
    db $f2, $3f, $dc, $3f, $e1, $1e, $c6, $e3, $7b, $b5, $de, $fe, $e1, $63, $ff, $8c
    db $73, $b6, $e3, $7b, $ad, $f6, $fe, $e1, $39, $fe, $43, $bc, $a6, $e3, $00, $00
    db $00, $fb, $ff, $00, $fe, $e5, $fb, $3c, $e5, $3e, $ed, $fd, $37, $f0, $e7, $ff
    db $00, $de, $e7, $29, $ff, $fe, $f0, $e9, $f7, $78, $4b, $fc, $ed, $37, $f9, $7f
    db $3f, $e3, $3d, $ee, $31, $cf, $30, $c6, $e3, $7b, $6b, $bd, $fe, $e1, $c6, $ff
    db $18, $e7, $b6, $e3, $ff, $5b, $ec, $73, $fc, $4b, $fc, $5b, $ec, $03, $93, $6c
    db $a6, $e3, $00, $00

    nop                                           ; $637c: $00

    db $fd, $00, $ff, $e6, $88, $cc, $da, $ff, $da, $ff, $ff, $aa, $ff, $8a, $ff, $8a
    db $cf, $8a, $cf, $f3, $00, $cf, $e6, $e7, $dc, $e5, $e0, $f0, $90, $f8, $ff, $90
    db $d8, $96, $df, $90, $df, $e0, $f8, $fb, $00, $f0, $e0, $ed, $80, $c0, $8c, $ce
    db $92, $f7, $df, $92, $db, $fe, $e1, $ec, $ff, $00, $fe, $00, $c0, $e3, $00, $00

    nop                                           ; $63bd: $00

    db $10, $08, $00, $00, $10, $10, $02, $00, $10, $18, $04, $00, $80

    cp a                                          ; $63cb: $bf
    rlca                                          ; $63cc: $07
    rlca                                          ; $63cd: $07
    inc b                                         ; $63ce: $04
    rlca                                          ; $63cf: $07
    inc b                                         ; $63d0: $04
    ld b, $fa                                     ; $63d1: $06 $fa
    push hl                                       ; $63d3: $e5
    nop                                           ; $63d4: $00
    rst $38                                       ; $63d5: $ff
    inc bc                                        ; $63d6: $03
    pop de                                        ; $63d7: $d1
    pop de                                        ; $63d8: $d1
    ld de, $0af9                                  ; $63d9: $11 $f9 $0a
    ld a, [bc]                                    ; $63dc: $0a
    add h                                         ; $63dd: $84
    rst $38                                       ; $63de: $ff
    add l                                         ; $63df: $85
    ld a, [bc]                                    ; $63e0: $0a
    jp z, Jump_000_1511                           ; $63e1: $ca $11 $15

    pop de                                        ; $63e4: $d1
    reti                                          ; $63e5: $d9


    nop                                           ; $63e6: $00
    rst $38                                       ; $63e7: $ff
    add sp, $78                                   ; $63e8: $e8 $78
    ld a, b                                       ; $63ea: $78
    ld b, h                                       ; $63eb: $44
    db $fc                                        ; $63ec: $fc
    ld b, h                                       ; $63ed: $44
    and $78                                       ; $63ee: $e6 $78
    rst $38                                       ; $63f0: $ff
    ld a, d                                       ; $63f1: $7a
    ld b, b                                       ; $63f2: $40
    ld a, h                                       ; $63f3: $7c
    ld b, b                                       ; $63f4: $40
    ld h, b                                       ; $63f5: $60
    ld b, b                                       ; $63f6: $40
    ldh [rP1], a                                  ; $63f7: $e0 $00
    db $dd                                        ; $63f9: $dd
    and b                                         ; $63fa: $a0
    ldh a, [$e0]                                  ; $63fb: $f0 $e0
    ld a, h                                       ; $63fd: $7c
    ld b, l                                       ; $63fe: $45
    ld h, a                                       ; $63ff: $67
    ldh a, [$e4]                                  ; $6400: $f0 $e4
    ld h, b                                       ; $6402: $60
    nop                                           ; $6403: $00
    rst $38                                       ; $6404: $ff
    jr nz, jr_041_6447                            ; $6405: $20 $40

    ld b, b                                       ; $6407: $40
    ld b, b                                       ; $6408: $40
    ld h, b                                       ; $6409: $60
    rst $30                                       ; $640a: $f7
    rst $30                                       ; $640b: $f7
    ld c, b                                       ; $640c: $48
    rst $38                                       ; $640d: $ff
    ei                                            ; $640e: $fb
    ld b, a                                       ; $640f: $47
    ld h, a                                       ; $6410: $67
    ld b, b                                       ; $6411: $40
    ld h, e                                       ; $6412: $63
    ld c, a                                       ; $6413: $4f
    ld l, a                                       ; $6414: $6f
    nop                                           ; $6415: $00
    ld a, e                                       ; $6416: $7b
    daa                                           ; $6417: $27
    nop                                           ; $6418: $00
    rst $38                                       ; $6419: $ff
    ldh [$80], a                                  ; $641a: $e0 $80
    add b                                         ; $641c: $80
    nop                                           ; $641d: $00
    ret nz                                        ; $641e: $c0

    ld a, [$07e2]                                 ; $641f: $fa $e2 $07
    ld b, b                                       ; $6422: $40
    nop                                           ; $6423: $00
    add b                                         ; $6424: $80
    nop                                           ; $6425: $00
    nop                                           ; $6426: $00
    nop                                           ; $6427: $00
    rst $18                                       ; $6428: $df
    rlca                                          ; $6429: $07
    rlca                                          ; $642a: $07
    ld bc, $0103                                  ; $642b: $01 $03 $01
    rst $38                                       ; $642e: $ff
    and $00                                       ; $642f: $e6 $00
    nop                                           ; $6431: $00
    rst $38                                       ; $6432: $ff
    ret z                                         ; $6433: $c8

    ret z                                         ; $6434: $c8

    nop                                           ; $6435: $00
    db $e4                                        ; $6436: $e4
    add hl, bc                                    ; $6437: $09
    adc c                                         ; $6438: $89
    add hl, bc                                    ; $6439: $09
    adc l                                         ; $643a: $8d
    xor $fe                                       ; $643b: $ee $fe
    db $e3                                        ; $643d: $e3
    nop                                           ; $643e: $00
    add h                                         ; $643f: $84
    nop                                           ; $6440: $00
    rst $38                                       ; $6441: $ff
    ldh [rBCPS], a                                ; $6442: $e0 $68
    ld l, b                                       ; $6444: $68
    or l                                          ; $6445: $b5
    rst $38                                       ; $6446: $ff

jr_041_6447:
    or l                                          ; $6447: $b5
    dec h                                         ; $6448: $25
    rst $38                                       ; $6449: $ff
    dec h                                         ; $644a: $25
    or a                                          ; $644b: $b7
    inc h                                         ; $644c: $24
    or [hl]                                       ; $644d: $b6
    nop                                           ; $644e: $00
    db $fd                                        ; $644f: $fd
    sub d                                         ; $6450: $92
    ldh a, [$e1]                                  ; $6451: $f0 $e1
    ldh [$e0], a                                  ; $6453: $e0 $e0
    db $10                                        ; $6455: $10
    ld [hl], b                                    ; $6456: $70
    ldh [$e8], a                                  ; $6457: $e0 $e8
    ccf                                           ; $6459: $3f
    nop                                           ; $645a: $00
    ldh a, [$f0]                                  ; $645b: $f0 $f0
    ldh a, [rP1]                                  ; $645d: $f0 $00
    ld a, b                                       ; $645f: $78
    nop                                           ; $6460: $00
    nop                                           ; $6461: $00
    nop                                           ; $6462: $00

    db $14

    ld bc, $0101                                  ; $6464: $01 $01 $01
    ld bc, $0101                                  ; $6467: $01 $01 $01
    ld bc, $0101                                  ; $646a: $01 $01 $01
    ld bc, $0101                                  ; $646d: $01 $01 $01
    ld bc, $0101                                  ; $6470: $01 $01 $01
    ld bc, $2801                                  ; $6473: $01 $01 $28
    ld bc, $0101                                  ; $6476: $01 $01 $01
    ld bc, $0101                                  ; $6479: $01 $01 $01
    ld bc, $0101                                  ; $647c: $01 $01 $01
    ld bc, $0101                                  ; $647f: $01 $01 $01
    ld bc, $0101                                  ; $6482: $01 $01 $01
    ld bc, $0180                                  ; $6485: $01 $80 $01
    add c                                         ; $6488: $81
    ld bc, $0182                                  ; $6489: $01 $82 $01
    add e                                         ; $648c: $83
    ld bc, $0184                                  ; $648d: $01 $84 $01
    add l                                         ; $6490: $85
    dec b                                         ; $6491: $05
    add [hl]                                      ; $6492: $86
    ld bc, $0187                                  ; $6493: $01 $87 $01
    adc b                                         ; $6496: $88
    ld bc, $0189                                  ; $6497: $01 $89 $01
    adc d                                         ; $649a: $8a
    add hl, bc                                    ; $649b: $09
    adc e                                         ; $649c: $8b
    ld bc, $018c                                  ; $649d: $01 $8c $01
    adc l                                         ; $64a0: $8d
    ld bc, $018e                                  ; $64a1: $01 $8e $01
    xor a                                         ; $64a4: $af
    dec c                                         ; $64a5: $0d
    or b                                          ; $64a6: $b0
    ld bc, $01b1                                  ; $64a7: $01 $b1 $01
    or d                                          ; $64aa: $b2
    ld bc, $01b3                                  ; $64ab: $01 $b3 $01
    or h                                          ; $64ae: $b4
    ld de, $01b5                                  ; $64af: $11 $b5 $01
    or [hl]                                       ; $64b2: $b6
    ld bc, $01b7                                  ; $64b3: $01 $b7 $01
    cp b                                          ; $64b6: $b8
    ld bc, $15b9                                  ; $64b7: $01 $b9 $15
    cp d                                          ; $64ba: $ba
    ld bc, $01bb                                  ; $64bb: $01 $bb $01
    cp h                                          ; $64be: $bc
    ld bc, $01bd                                  ; $64bf: $01 $bd $01
    cp [hl]                                       ; $64c2: $be
    add hl, de                                    ; $64c3: $19
    cp a                                          ; $64c4: $bf
    ld bc, $01bf                                  ; $64c5: $01 $bf $01
    cp [hl]                                       ; $64c8: $be
    add hl, de                                    ; $64c9: $19
    cp l                                          ; $64ca: $bd
    ld bc, $01bc                                  ; $64cb: $01 $bc $01
    cp e                                          ; $64ce: $bb
    ld bc, $01ba                                  ; $64cf: $01 $ba $01
    cp c                                          ; $64d2: $b9
    dec d                                         ; $64d3: $15
    cp b                                          ; $64d4: $b8
    ld bc, $01b7                                  ; $64d5: $01 $b7 $01
    or [hl]                                       ; $64d8: $b6
    ld bc, $01b5                                  ; $64d9: $01 $b5 $01
    or h                                          ; $64dc: $b4
    ld de, $01b3                                  ; $64dd: $11 $b3 $01
    or d                                          ; $64e0: $b2
    ld bc, $01b1                                  ; $64e1: $01 $b1 $01
    or b                                          ; $64e4: $b0
    ld bc, $0daf                                  ; $64e5: $01 $af $0d
    adc [hl]                                      ; $64e8: $8e
    ld bc, $018d                                  ; $64e9: $01 $8d $01
    adc h                                         ; $64ec: $8c
    ld bc, $018b                                  ; $64ed: $01 $8b $01
    adc d                                         ; $64f0: $8a
    add hl, bc                                    ; $64f1: $09
    adc c                                         ; $64f2: $89
    ld bc, $0188                                  ; $64f3: $01 $88 $01
    add a                                         ; $64f6: $87
    ld bc, $0186                                  ; $64f7: $01 $86 $01
    add l                                         ; $64fa: $85
    dec b                                         ; $64fb: $05
    add h                                         ; $64fc: $84
    ld bc, $0183                                  ; $64fd: $01 $83 $01
    add d                                         ; $6500: $82
    ld bc, $0181                                  ; $6501: $01 $81 $01
    add b                                         ; $6504: $80
    ld bc, $a7c5                                  ; $6505: $01 $c5 $a7
    jr nz, jr_041_6512                            ; $6508: $20 $08

    ld c, $10                                     ; $650a: $0e $10
    call Call_000_258a                            ; $650c: $cd $8a $25
    call Call_000_2625                            ; $650f: $cd $25 $26

jr_041_6512:
    call Call_000_23b6                            ; $6512: $cd $b6 $23
    rst $18                                       ; $6515: $df
    ld a, [bc]                                    ; $6516: $0a
    ld bc, $00df                                  ; $6517: $01 $df $00
    dec b                                         ; $651a: $05
    call Call_000_0341                            ; $651b: $cd $41 $03
    xor a                                         ; $651e: $af
    ldh [$8b], a                                  ; $651f: $e0 $8b
    ldh [$8a], a                                  ; $6521: $e0 $8a
    ld [$c320], a                                 ; $6523: $ea $20 $c3
    ld [$c321], a                                 ; $6526: $ea $21 $c3
    ld [$c322], a                                 ; $6529: $ea $22 $c3
    ld [$c323], a                                 ; $652c: $ea $23 $c3
    ld a, $90                                     ; $652f: $3e $90
    ldh [rWY], a                                  ; $6531: $e0 $4a
    call Call_000_2683                            ; $6533: $cd $83 $26
    call Call_041_5669                            ; $6536: $cd $69 $56
    call Call_041_4366                            ; $6539: $cd $66 $43
    call Call_041_43c0                            ; $653c: $cd $c0 $43
    call Call_041_446d                            ; $653f: $cd $6d $44
    call Call_041_665e                            ; $6542: $cd $5e $66
    pop bc                                        ; $6545: $c1
    ld a, $06                                     ; $6546: $3e $06
    ldh [$96], a                                  ; $6548: $e0 $96
    ldh [rSVBK], a                                ; $654a: $e0 $70
    ld a, b                                       ; $654c: $78
    ld [$d4d0], a                                 ; $654d: $ea $d0 $d4
    ld a, $01                                     ; $6550: $3e $01
    call Call_041_49ed                            ; $6552: $cd $ed $49
    call Call_041_508c                            ; $6555: $cd $8c $50
    rst $18                                       ; $6558: $df
    inc b                                         ; $6559: $04
    ld b, d                                       ; $655a: $42
    ld a, $01                                     ; $655b: $3e $01
    call Call_041_4bab                            ; $655d: $cd $ab $4b
    call Call_041_4cc1                            ; $6560: $cd $c1 $4c
    call Call_041_65d1                            ; $6563: $cd $d1 $65
    call Call_041_4c4a                            ; $6566: $cd $4a $4c
    call Call_000_04de                            ; $6569: $cd $de $04
    call Call_000_0371                            ; $656c: $cd $71 $03
    ld a, $03                                     ; $656f: $3e $03
    ld hl, $5088                                  ; $6571: $21 $88 $50
    call Call_000_23e8                            ; $6574: $cd $e8 $23
    ld a, $02                                     ; $6577: $3e $02
    ld hl, $4d2f                                  ; $6579: $21 $2f $4d
    call Call_000_23e8                            ; $657c: $cd $e8 $23
    ld a, $01                                     ; $657f: $3e $01
    ld hl, $4cd1                                  ; $6581: $21 $d1 $4c
    call Call_000_23e8                            ; $6584: $cd $e8 $23
    ld c, $10                                     ; $6587: $0e $10
    call Call_000_258d                            ; $6589: $cd $8d $25
    call Call_000_2625                            ; $658c: $cd $25 $26
    jr jr_041_6591                                ; $658f: $18 $00

jr_041_6591:
    call Call_000_2e3b                            ; $6591: $cd $3b $2e
    ldh a, [$91]                                  ; $6594: $f0 $91
    bit 0, a                                      ; $6596: $cb $47
    jr z, jr_041_659e                             ; $6598: $28 $04

    rst $08                                       ; $659a: $cf
    ld e, h                                       ; $659b: $5c
    jr jr_041_65aa                                ; $659c: $18 $0c

jr_041_659e:
    ldh a, [$91]                                  ; $659e: $f0 $91
    bit 1, a                                      ; $65a0: $cb $4f
    jr z, jr_041_65a8                             ; $65a2: $28 $04

    rst $08                                       ; $65a4: $cf
    ld e, l                                       ; $65a5: $5d
    jr jr_041_65aa                                ; $65a6: $18 $02

jr_041_65a8:
    jr jr_041_6591                                ; $65a8: $18 $e7

jr_041_65aa:
    ld c, $10                                     ; $65aa: $0e $10
    call Call_000_25a1                            ; $65ac: $cd $a1 $25
    call Call_000_2625                            ; $65af: $cd $25 $26
    ld hl, $5088                                  ; $65b2: $21 $88 $50
    call Call_000_2449                            ; $65b5: $cd $49 $24
    ld hl, $4d2f                                  ; $65b8: $21 $2f $4d
    call Call_000_2449                            ; $65bb: $cd $49 $24
    ld hl, $4cd1                                  ; $65be: $21 $d1 $4c
    call Call_000_2449                            ; $65c1: $cd $49 $24
    rst $18                                       ; $65c4: $df
    ld a, [bc]                                    ; $65c5: $0a
    ld bc, $7c21                                  ; $65c6: $01 $21 $7c
    ld e, b                                       ; $65c9: $58
    call Call_000_2449                            ; $65ca: $cd $49 $24
    call Call_000_2e3b                            ; $65cd: $cd $3b $2e
    ret                                           ; $65d0: $c9


Call_041_65d1:
    rst $18                                       ; $65d1: $df
    ld l, h                                       ; $65d2: $6c
    ld [bc], a                                    ; $65d3: $02
    push af                                       ; $65d4: $f5
    push bc                                       ; $65d5: $c5
    push de                                       ; $65d6: $d5
    push hl                                       ; $65d7: $e5
    ld de, $030f                                  ; $65d8: $11 $0f $03
    call Call_000_22d2                            ; $65db: $cd $d2 $22
    pop hl                                        ; $65de: $e1
    pop de                                        ; $65df: $d1
    pop bc                                        ; $65e0: $c1
    pop af                                        ; $65e1: $f1
    and a                                         ; $65e2: $a7
    ret z                                         ; $65e3: $c8

    dec a                                         ; $65e4: $3d
    jr z, jr_041_65fb                             ; $65e5: $28 $14

    ld hl, $6668                                  ; $65e7: $21 $68 $66
    ld de, $0201                                  ; $65ea: $11 $01 $02
    call Call_000_0595                            ; $65ed: $cd $95 $05
    ld a, $01                                     ; $65f0: $3e $01
    ldh [$96], a                                  ; $65f2: $e0 $96
    ldh [rSVBK], a                                ; $65f4: $e0 $70
    ld hl, $6670                                  ; $65f6: $21 $70 $66
    jr jr_041_660d                                ; $65f9: $18 $12

jr_041_65fb:
    ld hl, $66cc                                  ; $65fb: $21 $cc $66
    ld de, $0201                                  ; $65fe: $11 $01 $02
    call Call_000_0595                            ; $6601: $cd $95 $05
    ld a, $01                                     ; $6604: $3e $01
    ldh [$96], a                                  ; $6606: $e0 $96
    ldh [rSVBK], a                                ; $6608: $e0 $70
    ld hl, $66d4                                  ; $660a: $21 $d4 $66

jr_041_660d:
    ld de, $d000                                  ; $660d: $11 $00 $d0
    call Call_000_1f2f                            ; $6610: $cd $2f $1f
    ld hl, $d000                                  ; $6613: $21 $00 $d0
    ld de, $b4e0                                  ; $6616: $11 $e0 $b4
    ld c, $06                                     ; $6619: $0e $06
    call Call_000_04db                            ; $661b: $cd $db $04
    ld a, $02                                     ; $661e: $3e $02
    ldh [$96], a                                  ; $6620: $e0 $96
    ldh [rSVBK], a                                ; $6622: $e0 $70
    ld bc, $0003                                  ; $6624: $01 $03 $00
    ld hl, $d1e4                                  ; $6627: $21 $e4 $d1
    ld d, $0a                                     ; $662a: $16 $0a
    call Call_041_48e5                            ; $662c: $cd $e5 $48
    ld bc, $0003                                  ; $662f: $01 $03 $00
    ld hl, $d204                                  ; $6632: $21 $04 $d2
    call Call_041_48e5                            ; $6635: $cd $e5 $48
    ld a, $03                                     ; $6638: $3e $03
    ldh [$96], a                                  ; $663a: $e0 $96
    ldh [rSVBK], a                                ; $663c: $e0 $70
    ld hl, $d1e4                                  ; $663e: $21 $e4 $d1
    ld b, $03                                     ; $6641: $06 $03
    ld a, $4e                                     ; $6643: $3e $4e
    call Call_041_48ed                            ; $6645: $cd $ed $48
    ld hl, $d204                                  ; $6648: $21 $04 $d2
    ld b, $03                                     ; $664b: $06 $03
    ld a, $51                                     ; $664d: $3e $51
    call Call_041_48ed                            ; $664f: $cd $ed $48
    ld a, $06                                     ; $6652: $3e $06
    ldh [$96], a                                  ; $6654: $e0 $96
    ldh [rSVBK], a                                ; $6656: $e0 $70
    ld a, $05                                     ; $6658: $3e $05
    ld [$d54c], a                                 ; $665a: $ea $4c $d5
    ret                                           ; $665d: $c9


Call_041_665e:
    ld hl, $677c                                  ; $665e: $21 $7c $67
    ld de, $0601                                  ; $6661: $11 $01 $06
    call Call_000_0595                            ; $6664: $cd $95 $05
    ret                                           ; $6667: $c9


    and $02                                       ; $6668: $e6 $02
    ld h, b                                       ; $666a: $60
    ld a, l                                       ; $666b: $7d
    ei                                            ; $666c: $fb
    ld a, a                                       ; $666d: $7f
    nop                                           ; $666e: $00
    ld c, h                                       ; $666f: $4c
    cp l                                          ; $6670: $bd
    nop                                           ; $6671: $00
    rst $38                                       ; $6672: $ff
    ldh [rSB], a                                  ; $6673: $e0 $01
    ld bc, $0203                                  ; $6675: $01 $03 $02
    cp $e1                                        ; $6678: $fe $e1
    ld bc, $01ff                                  ; $667a: $01 $ff $01
    nop                                           ; $667d: $00
    nop                                           ; $667e: $00
    ld a, b                                       ; $667f: $78
    ld a, b                                       ; $6680: $78
    cp $ce                                        ; $6681: $fe $ce
    rst $18                                       ; $6683: $df
    rst $38                                       ; $6684: $ff
    ccf                                           ; $6685: $3f
    cp a                                          ; $6686: $bf
    ld e, a                                       ; $6687: $5f
    ccf                                           ; $6688: $3f
    rst $18                                       ; $6689: $df
    rra                                           ; $668a: $1f
    rst $28                                       ; $668b: $ef
    adc a                                         ; $668c: $8f
    rst $30                                       ; $668d: $f7
    ld [hl], d                                    ; $668e: $72
    db $e3                                        ; $668f: $e3
    sbc h                                         ; $6690: $9c
    ldh [$e1], a                                  ; $6691: $e0 $e1
    add b                                         ; $6693: $80
    add b                                         ; $6694: $80
    ldh [$e0], a                                  ; $6695: $e0 $e0
    rst $38                                       ; $6697: $ff
    ldh a, [$f0]                                  ; $6698: $f0 $f0
    ld hl, sp-$08                                 ; $669a: $f8 $f8
    ld hl, sp-$48                                 ; $669c: $f8 $b8
    ld hl, sp+$78                                 ; $669e: $f8 $78
    sbc e                                         ; $66a0: $9b
    nop                                           ; $66a1: $00
    inc bc                                        ; $66a2: $03
    rst $08                                       ; $66a3: $cf
    pop hl                                        ; $66a4: $e1
    nop                                           ; $66a5: $00
    ld [bc], a                                    ; $66a6: $02
    ret z                                         ; $66a7: $c8

    pop hl                                        ; $66a8: $e1
    call nz, Call_041_7fe1                        ; $66a9: $c4 $e1 $7f
    rst $38                                       ; $66ac: $ff
    pop hl                                        ; $66ad: $e1
    rra                                           ; $66ae: $1f
    rst $38                                       ; $66af: $ff
    inc bc                                        ; $66b0: $03
    ld d, e                                       ; $66b1: $53
    ld bc, HeaderRAMSize                          ; $66b2: $01 $49 $01
    rst $28                                       ; $66b5: $ef
    ld b, h                                       ; $66b6: $44
    ld bc, $0140                                  ; $66b7: $01 $40 $01
    rst $20                                       ; $66ba: $e7
    ldh [$f8], a                                  ; $66bb: $e0 $f8
    ld hl, sp-$10                                 ; $66bd: $f8 $f0
    ld a, a                                       ; $66bf: $7f
    ldh a, [$e0]                                  ; $66c0: $f0 $e0
    ld h, b                                       ; $66c2: $60
    ldh [$e0], a                                  ; $66c3: $e0 $e0
    ld b, b                                       ; $66c5: $40
    ret nz                                        ; $66c6: $c0

    cp $e3                                        ; $66c7: $fe $e3
    nop                                           ; $66c9: $00
    nop                                           ; $66ca: $00
    nop                                           ; $66cb: $00
    and $02                                       ; $66cc: $e6 $02
    ccf                                           ; $66ce: $3f
    ld bc, $13ff                                  ; $66cf: $01 $ff $13
    inc de                                        ; $66d2: $13
    nop                                           ; $66d3: $00
    rst $38                                       ; $66d4: $ff
    nop                                           ; $66d5: $00
    nop                                           ; $66d6: $00
    ld bc, $0301                                  ; $66d7: $01 $01 $03
    inc bc                                        ; $66da: $03
    inc bc                                        ; $66db: $03
    ld [bc], a                                    ; $66dc: $02
    cp $fe                                        ; $66dd: $fe $fe
    ld [c], a                                     ; $66df: $e2
    inc bc                                        ; $66e0: $03
    ld bc, $7f01                                  ; $66e1: $01 $01 $7f
    ld a, a                                       ; $66e4: $7f
    rst $38                                       ; $66e5: $ff
    rst $08                                       ; $66e6: $cf
    rst $38                                       ; $66e7: $ff
    rst $38                                       ; $66e8: $ff
    rra                                           ; $66e9: $1f
    cp a                                          ; $66ea: $bf
    ld e, a                                       ; $66eb: $5f
    ld a, a                                       ; $66ec: $7f
    sbc a                                         ; $66ed: $9f
    ccf                                           ; $66ee: $3f
    jp z, $8fff                                   ; $66ef: $ca $ff $8f

    ld [hl], c                                    ; $66f2: $71
    pop bc                                        ; $66f3: $c1
    cp [hl]                                       ; $66f4: $be
    add b                                         ; $66f5: $80
    add b                                         ; $66f6: $80
    ldh [$e0], a                                  ; $66f7: $e0 $e0
    ld [hl], a                                    ; $66f9: $77
    ldh a, [$f0]                                  ; $66fa: $f0 $f0
    ld hl, sp-$01                                 ; $66fc: $f8 $ff
    db $e3                                        ; $66fe: $e3
    ld e, b                                       ; $66ff: $58
    ld hl, sp+$38                                 ; $6700: $f8 $38
    ret nc                                        ; $6702: $d0

    ldh [$fd], a                                  ; $6703: $e0 $fd
    nop                                           ; $6705: $00
    rst $38                                       ; $6706: $ff
    db $e3                                        ; $6707: $e3
    ld bc, $0300                                  ; $6708: $01 $00 $03
    nop                                           ; $670b: $00
    ld [bc], a                                    ; $670c: $02
    ld bc, $7fff                                  ; $670d: $01 $ff $7f
    ld h, b                                       ; $6710: $60
    rra                                           ; $6711: $1f
    rra                                           ; $6712: $1f
    dec bc                                        ; $6713: $0b
    inc bc                                        ; $6714: $03
    add c                                         ; $6715: $81
    ld bc, $c9ff                                  ; $6716: $01 $ff $c9
    ld bc, $01d9                                  ; $6719: $01 $d9 $01
    ld a, e                                       ; $671c: $7b
    add c                                         ; $671d: $81
    ld l, a                                       ; $671e: $6f
    sub c                                         ; $671f: $91
    rst $38                                       ; $6720: $ff
    ldh a, [$f0]                                  ; $6721: $f0 $f0
    ldh [$e0], a                                  ; $6723: $e0 $e0
    ldh [$60], a                                  ; $6725: $e0 $60
    add sp, $60                                   ; $6727: $e8 $60
    rst $38                                       ; $6729: $ff
    ret z                                         ; $672a: $c8

    ret nz                                        ; $672b: $c0

    ld e, h                                       ; $672c: $5c
    ret nz                                        ; $672d: $c0

    ld [hl], h                                    ; $672e: $74
    ret z                                         ; $672f: $c8

    ld h, h                                       ; $6730: $64
    ret c                                         ; $6731: $d8

    nop                                           ; $6732: $00
    nop                                           ; $6733: $00
    nop                                           ; $6734: $00
    ei                                            ; $6735: $fb
    rst $38                                       ; $6736: $ff
    nop                                           ; $6737: $00
    cp $e1                                        ; $6738: $fe $e1
    ld hl, sp+$00                                 ; $673a: $f8 $00
    rst $30                                       ; $673c: $f7
    ld [bc], a                                    ; $673d: $02
    db $ec                                        ; $673e: $ec
    rst $18                                       ; $673f: $df
    nop                                           ; $6740: $00
    add sp, $01                                   ; $6741: $e8 $01
    add sp, $03                                   ; $6743: $e8 $03
    ldh a, [$e3]                                  ; $6745: $f0 $e3
    ccf                                           ; $6747: $3f
    nop                                           ; $6748: $00
    rst $38                                       ; $6749: $ff
    rst $18                                       ; $674a: $df
    nop                                           ; $674b: $00
    ld l, a                                       ; $674c: $6f
    nop                                           ; $674d: $00
    cpl                                           ; $674e: $2f
    add b                                         ; $674f: $80
    xor a                                         ; $6750: $af
    nop                                           ; $6751: $00
    and l                                         ; $6752: $a5
    jp hl                                         ; $6753: $e9


    add sp, -$20                                  ; $6754: $e8 $e0
    rst $30                                       ; $6756: $f7
    ldh [$e0], a                                  ; $6757: $e0 $e0
    ret c                                         ; $6759: $d8

    db $e3                                        ; $675a: $e3
    rst $38                                       ; $675b: $ff
    db $ec                                        ; $675c: $ec
    ldh [$6f], a                                  ; $675d: $e0 $6f
    jp nc, $e0e4                                  ; $675f: $d2 $e4 $e0

    ccf                                           ; $6762: $3f
    ldh a, [$e6]                                  ; $6763: $f0 $e6
    ret nz                                        ; $6765: $c0

    db $e3                                        ; $6766: $e3
    nop                                           ; $6767: $00
    db $fc                                        ; $6768: $fc
    ld [c], a                                     ; $6769: $e2
    nop                                           ; $676a: $00
    rst $38                                       ; $676b: $ff
    ld l, h                                       ; $676c: $6c
    db $f4                                        ; $676d: $f4
    rst $20                                       ; $676e: $e7
    ret nc                                        ; $676f: $d0

    push hl                                       ; $6770: $e5
    jp hl                                         ; $6771: $e9


    ld [bc], a                                    ; $6772: $02
    cp $eb                                        ; $6773: $fe $eb
    xor a                                         ; $6775: $af
    nop                                           ; $6776: $00
    cp $eb                                        ; $6777: $fe $eb
    nop                                           ; $6779: $00
    nop                                           ; $677a: $00
    nop                                           ; $677b: $00
    and $02                                       ; $677c: $e6 $02
    and $02                                       ; $677e: $e6 $02
    add b                                         ; $6780: $80
    ld bc, $7fff                                  ; $6781: $01 $ff $7f

    ld b, a                                       ; $6784: $47
    ldh a, [$96]                                  ; $6785: $f0 $96
    push af                                       ; $6787: $f5
    ld a, b                                       ; $6788: $78
    push af                                       ; $6789: $f5
    push bc                                       ; $678a: $c5
    call Call_000_0341                            ; $678b: $cd $41 $03
    call Call_041_6d4e                            ; $678e: $cd $4e $6d
    call Call_041_4366                            ; $6791: $cd $66 $43
    ld a, $01                                     ; $6794: $3e $01
    call Call_041_49ed                            ; $6796: $cd $ed $49
    call Call_041_43c0                            ; $6799: $cd $c0 $43
    call Call_041_68ad                            ; $679c: $cd $ad $68
    call Call_041_508c                            ; $679f: $cd $8c $50
    call Call_000_04de                            ; $67a2: $cd $de $04
    rst $18                                       ; $67a5: $df

    db $04, $42

    call Call_000_04de                            ; $67a8: $cd $de $04
    pop bc                                        ; $67ab: $c1
    ld a, $06                                     ; $67ac: $3e $06
    ldh [$96], a                                  ; $67ae: $e0 $96
    ldh [rSVBK], a                                ; $67b0: $e0 $70
    ld a, c                                       ; $67b2: $79
    and $01                                       ; $67b3: $e6 $01
    ld [$d40a], a                                 ; $67b5: $ea $0a $d4
    pop af                                        ; $67b8: $f1
    call Call_041_6c30                            ; $67b9: $cd $30 $6c
    ld a, [$c82d]                                 ; $67bc: $fa $2d $c8
    set 7, a                                      ; $67bf: $cb $ff
    ld [$c82d], a                                 ; $67c1: $ea $2d $c8
    call Call_041_4c4a                            ; $67c4: $cd $4a $4c
    call Call_000_04de                            ; $67c7: $cd $de $04
    call Call_000_0371                            ; $67ca: $cd $71 $03
    ld a, $05                                     ; $67cd: $3e $05
    ld hl, $5088                                  ; $67cf: $21 $88 $50
    call Call_000_23e8                            ; $67d2: $cd $e8 $23
    ld a, $01                                     ; $67d5: $3e $01
    ld hl, $4cd1                                  ; $67d7: $21 $d1 $4c
    call Call_000_23e8                            ; $67da: $cd $e8 $23
    ld a, $01                                     ; $67dd: $3e $01
    ld hl, $4328                                  ; $67df: $21 $28 $43
    call Call_000_23e8                            ; $67e2: $cd $e8 $23
    ld a, $01                                     ; $67e5: $3e $01
    ld hl, $6e3b                                  ; $67e7: $21 $3b $6e
    call Call_000_23e8                            ; $67ea: $cd $e8 $23
    ld a, $06                                     ; $67ed: $3e $06
    ldh [$96], a                                  ; $67ef: $e0 $96
    ldh [rSVBK], a                                ; $67f1: $e0 $70
    ld a, $02                                     ; $67f3: $3e $02
    ld [$d632], a                                 ; $67f5: $ea $32 $d6
    ld c, $10                                     ; $67f8: $0e $10
    call Call_000_258d                            ; $67fa: $cd $8d $25
    call Call_000_2625                            ; $67fd: $cd $25 $26

jr_041_6800:
    call Call_000_2e3b                            ; $6800: $cd $3b $2e
    ldh a, [$94]                                  ; $6803: $f0 $94
    bit 0, a                                      ; $6805: $cb $47
    jr z, jr_041_6826                             ; $6807: $28 $1d

    ld a, $06                                     ; $6809: $3e $06
    ldh [$96], a                                  ; $680b: $e0 $96
    ldh [rSVBK], a                                ; $680d: $e0 $70
    ld a, [$d40a]                                 ; $680f: $fa $0a $d4
    and a                                         ; $6812: $a7
    jr nz, jr_041_681e                            ; $6813: $20 $09

    rst $08                                       ; $6815: $cf

    db $5c

    ld a, $01                                     ; $6817: $3e $01
    ld [$d4a0], a                                 ; $6819: $ea $a0 $d4
    jr jr_041_686a                                ; $681c: $18 $4c

jr_041_681e:
    rst $08                                       ; $681e: $cf
    ld e, l                                       ; $681f: $5d
    xor a                                         ; $6820: $af
    ld [$d4a0], a                                 ; $6821: $ea $a0 $d4
    jr jr_041_686a                                ; $6824: $18 $44

jr_041_6826:
    bit 1, a                                      ; $6826: $cb $4f
    jr z, jr_041_6832                             ; $6828: $28 $08

    rst $08                                       ; $682a: $cf
    ld e, l                                       ; $682b: $5d
    xor a                                         ; $682c: $af
    ld [$d4a0], a                                 ; $682d: $ea $a0 $d4
    jr jr_041_686a                                ; $6830: $18 $38

jr_041_6832:
    bit 6, a                                      ; $6832: $cb $77
    jr z, jr_041_684d                             ; $6834: $28 $17

    rst $08                                       ; $6836: $cf
    ld e, e                                       ; $6837: $5b
    ld a, $06                                     ; $6838: $3e $06
    ldh [$96], a                                  ; $683a: $e0 $96
    ldh [rSVBK], a                                ; $683c: $e0 $70
    ld hl, $d40a                                  ; $683e: $21 $0a $d4
    ld a, [hl]                                    ; $6841: $7e
    dec a                                         ; $6842: $3d
    and $01                                       ; $6843: $e6 $01
    ld [hl], a                                    ; $6845: $77
    ld a, $1f                                     ; $6846: $3e $1f
    ld [$d631], a                                 ; $6848: $ea $31 $d6
    jr jr_041_6800                                ; $684b: $18 $b3

jr_041_684d:
    bit 7, a                                      ; $684d: $cb $7f
    jr z, jr_041_6868                             ; $684f: $28 $17

    rst $08                                       ; $6851: $cf
    ld e, e                                       ; $6852: $5b
    ld a, $06                                     ; $6853: $3e $06
    ldh [$96], a                                  ; $6855: $e0 $96
    ldh [rSVBK], a                                ; $6857: $e0 $70
    ld hl, $d40a                                  ; $6859: $21 $0a $d4
    ld a, [hl]                                    ; $685c: $7e
    inc a                                         ; $685d: $3c
    and $01                                       ; $685e: $e6 $01
    ld [hl], a                                    ; $6860: $77
    ld a, $1f                                     ; $6861: $3e $1f
    ld [$d631], a                                 ; $6863: $ea $31 $d6
    jr jr_041_6800                                ; $6866: $18 $98

jr_041_6868:
    jr jr_041_6800                                ; $6868: $18 $96

jr_041_686a:
    ld c, $10                                     ; $686a: $0e $10
    call Call_000_25a1                            ; $686c: $cd $a1 $25
    call Call_000_2625                            ; $686f: $cd $25 $26
    ld hl, $5088                                  ; $6872: $21 $88 $50
    call Call_000_2449                            ; $6875: $cd $49 $24
    ld hl, $4cd1                                  ; $6878: $21 $d1 $4c
    call Call_000_2449                            ; $687b: $cd $49 $24
    ld hl, $4328                                  ; $687e: $21 $28 $43
    call Call_000_2449                            ; $6881: $cd $49 $24
    ld hl, $6e3b                                  ; $6884: $21 $3b $6e
    call Call_000_2449                            ; $6887: $cd $49 $24
    call Call_000_2e3b                            ; $688a: $cd $3b $2e
    call Call_000_0341                            ; $688d: $cd $41 $03
    call Call_041_6dc7                            ; $6890: $cd $c7 $6d
    call Call_000_04de                            ; $6893: $cd $de $04
    call Call_000_0371                            ; $6896: $cd $71 $03
    ld a, $06                                     ; $6899: $3e $06
    ldh [$96], a                                  ; $689b: $e0 $96
    ldh [rSVBK], a                                ; $689d: $e0 $70
    ld a, [$d4a0]                                 ; $689f: $fa $a0 $d4
    ld b, a                                       ; $68a2: $47
    call Call_000_2e3b                            ; $68a3: $cd $3b $2e
    pop af                                        ; $68a6: $f1
    ldh [$96], a                                  ; $68a7: $e0 $96
    ldh [rSVBK], a                                ; $68a9: $e0 $70
    ld a, b                                       ; $68ab: $78
    ret                                           ; $68ac: $c9


Call_041_68ad:
    ld a, $01                                     ; $68ad: $3e $01
    ldh [$96], a                                  ; $68af: $e0 $96
    ldh [rSVBK], a                                ; $68b1: $e0 $70
    ld hl, $5d80                                  ; $68b3: $21 $80 $5d
    ld de, $d000                                  ; $68b6: $11 $00 $d0
    call Call_000_1f2f                            ; $68b9: $cd $2f $1f
    ld hl, $621a                                  ; $68bc: $21 $1a $62
    ld de, $d1e0                                  ; $68bf: $11 $e0 $d1
    call Call_000_1f2f                            ; $68c2: $cd $2f $1f
    ld hl, $6190                                  ; $68c5: $21 $90 $61
    ld de, $d2a0                                  ; $68c8: $11 $a0 $d2
    call Call_000_1f2f                            ; $68cb: $cd $2f $1f
    ld hl, $61d5                                  ; $68ce: $21 $d5 $61
    ld de, $d300                                  ; $68d1: $11 $00 $d3
    call Call_000_1f2f                            ; $68d4: $cd $2f $1f
    ld hl, $625d                                  ; $68d7: $21 $5d $62
    ld de, $d3c0                                  ; $68da: $11 $c0 $d3
    call Call_000_1f2f                            ; $68dd: $cd $2f $1f
    ld hl, $6339                                  ; $68e0: $21 $39 $63
    ld de, $d420                                  ; $68e3: $11 $20 $d4
    call Call_000_1f2f                            ; $68e6: $cd $2f $1f
    ld hl, $5d00                                  ; $68e9: $21 $00 $5d
    ld de, $d4c0                                  ; $68ec: $11 $c0 $d4
    call Call_000_1f2f                            ; $68ef: $cd $2f $1f
    ld hl, $5d15                                  ; $68f2: $21 $15 $5d
    ld de, $d590                                  ; $68f5: $11 $90 $d5
    call Call_000_1f2f                            ; $68f8: $cd $2f $1f
    ld hl, $d000                                  ; $68fb: $21 $00 $d0
    ld de, $b000                                  ; $68fe: $11 $00 $b0
    ld c, $63                                     ; $6901: $0e $63
    call Call_000_04db                            ; $6903: $cd $db $04
    ld hl, $62a0                                  ; $6906: $21 $a0 $62
    ld de, $d000                                  ; $6909: $11 $00 $d0
    call Call_000_1f2f                            ; $690c: $cd $2f $1f
    ld hl, $62f8                                  ; $690f: $21 $f8 $62
    ld de, $d080                                  ; $6912: $11 $80 $d0
    call Call_000_1f2f                            ; $6915: $cd $2f $1f
    ld hl, $d000                                  ; $6918: $21 $00 $d0
    ld de, $b630                                  ; $691b: $11 $30 $b6
    ld c, $0e                                     ; $691e: $0e $0e
    call Call_000_04db                            ; $6920: $cd $db $04
    ld hl, $637d                                  ; $6923: $21 $7d $63
    ld de, $d000                                  ; $6926: $11 $00 $d0
    call Call_000_1f2f                            ; $6929: $cd $2f $1f
    ld hl, $d000                                  ; $692c: $21 $00 $d0
    ld de, $8000                                  ; $692f: $11 $00 $80
    ld c, $06                                     ; $6932: $0e $06
    call Call_000_04db                            ; $6934: $cd $db $04
    ld a, $02                                     ; $6937: $3e $02
    ldh [$96], a                                  ; $6939: $e0 $96
    ldh [rSVBK], a                                ; $693b: $e0 $70
    ld bc, $0240                                  ; $693d: $01 $40 $02
    ld d, $01                                     ; $6940: $16 $01
    ld hl, $d000                                  ; $6942: $21 $00 $d0
    call Call_041_48e5                            ; $6945: $cd $e5 $48
    ld hl, $d0d0                                  ; $6948: $21 $d0 $d0
    ld d, $09                                     ; $694b: $16 $09
    ld bc, $0003                                  ; $694d: $01 $03 $00
    call Call_041_48e5                            ; $6950: $cd $e5 $48
    ld hl, $d0f0                                  ; $6953: $21 $f0 $d0
    ld bc, $0003                                  ; $6956: $01 $03 $00
    call Call_041_48e5                            ; $6959: $cd $e5 $48
    ld hl, $d127                                  ; $695c: $21 $27 $d1
    ld bc, $0003                                  ; $695f: $01 $03 $00
    call Call_041_48e5                            ; $6962: $cd $e5 $48
    ld hl, $d147                                  ; $6965: $21 $47 $d1
    ld bc, $0003                                  ; $6968: $01 $03 $00
    call Call_041_48e5                            ; $696b: $cd $e5 $48
    ld hl, $d130                                  ; $696e: $21 $30 $d1
    ld bc, $0003                                  ; $6971: $01 $03 $00
    call Call_041_48e5                            ; $6974: $cd $e5 $48
    ld hl, $d150                                  ; $6977: $21 $50 $d1
    ld bc, $0003                                  ; $697a: $01 $03 $00
    call Call_041_48e5                            ; $697d: $cd $e5 $48
    ld hl, $d1a6                                  ; $6980: $21 $a6 $d1
    ld bc, $0004                                  ; $6983: $01 $04 $00
    call Call_041_48e5                            ; $6986: $cd $e5 $48
    ld hl, $d1c6                                  ; $6989: $21 $c6 $d1
    ld bc, $0004                                  ; $698c: $01 $04 $00
    call Call_041_48e5                            ; $698f: $cd $e5 $48
    ld hl, $d1b0                                  ; $6992: $21 $b0 $d1
    ld bc, $0003                                  ; $6995: $01 $03 $00
    call Call_041_48e5                            ; $6998: $cd $e5 $48
    ld hl, $d1d0                                  ; $699b: $21 $d0 $d1
    ld bc, $0003                                  ; $699e: $01 $03 $00
    call Call_041_48e5                            ; $69a1: $cd $e5 $48
    ld hl, $d1e7                                  ; $69a4: $21 $e7 $d1
    ld bc, $0003                                  ; $69a7: $01 $03 $00
    call Call_041_48e5                            ; $69aa: $cd $e5 $48
    ld hl, $d207                                  ; $69ad: $21 $07 $d2
    ld bc, $0003                                  ; $69b0: $01 $03 $00
    call Call_041_48e5                            ; $69b3: $cd $e5 $48
    ld hl, $d1f0                                  ; $69b6: $21 $f0 $d1
    ld bc, $0003                                  ; $69b9: $01 $03 $00
    call Call_041_48e5                            ; $69bc: $cd $e5 $48
    ld hl, $d210                                  ; $69bf: $21 $10 $d2
    ld bc, $0003                                  ; $69c2: $01 $03 $00
    call Call_041_48e5                            ; $69c5: $cd $e5 $48
    ld hl, $d0ca                                  ; $69c8: $21 $ca $d0
    ld d, $0b                                     ; $69cb: $16 $0b
    ld bc, $0006                                  ; $69cd: $01 $06 $00
    call Call_041_48e5                            ; $69d0: $cd $e5 $48
    ld hl, $d0ea                                  ; $69d3: $21 $ea $d0
    ld bc, $0006                                  ; $69d6: $01 $06 $00
    call Call_041_48e5                            ; $69d9: $cd $e5 $48
    ld hl, $d12a                                  ; $69dc: $21 $2a $d1
    ld d, $0c                                     ; $69df: $16 $0c
    ld bc, $0006                                  ; $69e1: $01 $06 $00
    call Call_041_48e5                            ; $69e4: $cd $e5 $48
    ld hl, $d14a                                  ; $69e7: $21 $4a $d1
    ld bc, $0006                                  ; $69ea: $01 $06 $00
    call Call_041_48e5                            ; $69ed: $cd $e5 $48
    ld hl, $d1aa                                  ; $69f0: $21 $aa $d1
    ld d, $0d                                     ; $69f3: $16 $0d
    ld bc, $0006                                  ; $69f5: $01 $06 $00
    call Call_041_48e5                            ; $69f8: $cd $e5 $48
    ld hl, $d1ca                                  ; $69fb: $21 $ca $d1
    ld bc, $0006                                  ; $69fe: $01 $06 $00
    call Call_041_48e5                            ; $6a01: $cd $e5 $48
    ld hl, $d1ea                                  ; $6a04: $21 $ea $d1
    ld bc, $0006                                  ; $6a07: $01 $06 $00
    call Call_041_48e5                            ; $6a0a: $cd $e5 $48
    ld hl, $d20a                                  ; $6a0d: $21 $0a $d2
    ld bc, $0006                                  ; $6a10: $01 $06 $00
    call Call_041_48e5                            ; $6a13: $cd $e5 $48
    ld a, $09                                     ; $6a16: $3e $09
    ld [$d000], a                                 ; $6a18: $ea $00 $d0
    ld [$d013], a                                 ; $6a1b: $ea $13 $d0
    ld [$d220], a                                 ; $6a1e: $ea $20 $d2
    ld [$d233], a                                 ; $6a21: $ea $33 $d2
    ld bc, $0012                                  ; $6a24: $01 $12 $00
    ld d, $09                                     ; $6a27: $16 $09
    ld hl, $d001                                  ; $6a29: $21 $01 $d0
    call Call_041_48e5                            ; $6a2c: $cd $e5 $48
    ld bc, $0012                                  ; $6a2f: $01 $12 $00
    ld d, $09                                     ; $6a32: $16 $09
    ld hl, $d221                                  ; $6a34: $21 $21 $d2
    call Call_041_48e5                            ; $6a37: $cd $e5 $48
    ld b, $10                                     ; $6a3a: $06 $10
    ld a, $09                                     ; $6a3c: $3e $09
    ld hl, $d020                                  ; $6a3e: $21 $20 $d0
    ld de, $0020                                  ; $6a41: $11 $20 $00

jr_041_6a44:
    ld [hl], a                                    ; $6a44: $77
    add hl, de                                    ; $6a45: $19
    dec b                                         ; $6a46: $05
    jr nz, jr_041_6a44                            ; $6a47: $20 $fb

    ld b, $10                                     ; $6a49: $06 $10
    ld a, $09                                     ; $6a4b: $3e $09
    ld hl, $d033                                  ; $6a4d: $21 $33 $d0

jr_041_6a50:
    ld [hl], a                                    ; $6a50: $77
    add hl, de                                    ; $6a51: $19
    dec b                                         ; $6a52: $05
    jr nz, jr_041_6a50                            ; $6a53: $20 $fb

    ld bc, $0060                                  ; $6a55: $01 $60 $00
    ld d, $00                                     ; $6a58: $16 $00
    ld hl, $d000                                  ; $6a5a: $21 $00 $d0
    call Call_041_48e5                            ; $6a5d: $cd $e5 $48
    ld bc, $0006                                  ; $6a60: $01 $06 $00
    ld hl, $d060                                  ; $6a63: $21 $60 $d0
    call Call_041_48e5                            ; $6a66: $cd $e5 $48
    ld bc, $0006                                  ; $6a69: $01 $06 $00
    ld hl, $d080                                  ; $6a6c: $21 $80 $d0
    call Call_041_48e5                            ; $6a6f: $cd $e5 $48
    ld bc, $0006                                  ; $6a72: $01 $06 $00
    ld hl, $d0a0                                  ; $6a75: $21 $a0 $d0
    call Call_041_48e5                            ; $6a78: $cd $e5 $48
    ld bc, $0006                                  ; $6a7b: $01 $06 $00
    ld hl, $d0c0                                  ; $6a7e: $21 $c0 $d0
    call Call_041_48e5                            ; $6a81: $cd $e5 $48
    ld bc, $0006                                  ; $6a84: $01 $06 $00
    ld hl, $d0e0                                  ; $6a87: $21 $e0 $d0
    call Call_041_48e5                            ; $6a8a: $cd $e5 $48
    ld a, $03                                     ; $6a8d: $3e $03
    ldh [$96], a                                  ; $6a8f: $e0 $96
    ldh [rSVBK], a                                ; $6a91: $e0 $70
    ld bc, $0240                                  ; $6a93: $01 $40 $02
    ld d, $20                                     ; $6a96: $16 $20
    ld hl, $d000                                  ; $6a98: $21 $00 $d0
    call Call_041_48e5                            ; $6a9b: $cd $e5 $48
    ld hl, $d000                                  ; $6a9e: $21 $00 $d0
    ld [hl], $59                                  ; $6aa1: $36 $59
    ld hl, $d013                                  ; $6aa3: $21 $13 $d0
    ld [hl], $5a                                  ; $6aa6: $36 $5a
    ld hl, $d220                                  ; $6aa8: $21 $20 $d2
    ld [hl], $5b                                  ; $6aab: $36 $5b
    ld hl, $d233                                  ; $6aad: $21 $33 $d2
    ld [hl], $5c                                  ; $6ab0: $36 $5c
    ld bc, $0012                                  ; $6ab2: $01 $12 $00
    ld d, $5d                                     ; $6ab5: $16 $5d
    ld hl, $d001                                  ; $6ab7: $21 $01 $d0
    call Call_041_48e5                            ; $6aba: $cd $e5 $48
    ld bc, $0012                                  ; $6abd: $01 $12 $00
    ld d, $5e                                     ; $6ac0: $16 $5e
    ld hl, $d221                                  ; $6ac2: $21 $21 $d2
    call Call_041_48e5                            ; $6ac5: $cd $e5 $48
    ld b, $10                                     ; $6ac8: $06 $10
    ld a, $5f                                     ; $6aca: $3e $5f
    ld hl, $d020                                  ; $6acc: $21 $20 $d0
    ld de, $0020                                  ; $6acf: $11 $20 $00

jr_041_6ad2:
    ld [hl], a                                    ; $6ad2: $77
    add hl, de                                    ; $6ad3: $19
    dec b                                         ; $6ad4: $05
    jr nz, jr_041_6ad2                            ; $6ad5: $20 $fb

    ld b, $10                                     ; $6ad7: $06 $10
    ld a, $60                                     ; $6ad9: $3e $60
    ld hl, $d033                                  ; $6adb: $21 $33 $d0

jr_041_6ade:
    ld [hl], a                                    ; $6ade: $77
    add hl, de                                    ; $6adf: $19
    dec b                                         ; $6ae0: $05
    jr nz, jr_041_6ade                            ; $6ae1: $20 $fb

    ld hl, $d000                                  ; $6ae3: $21 $00 $d0
    ld [hl], $02                                  ; $6ae6: $36 $02
    ld hl, $d013                                  ; $6ae8: $21 $13 $d0
    ld [hl], $04                                  ; $6aeb: $36 $04
    ld hl, $d040                                  ; $6aed: $21 $40 $d0
    ld [hl], $07                                  ; $6af0: $36 $07
    ld hl, $d053                                  ; $6af2: $21 $53 $d0
    ld [hl], $09                                  ; $6af5: $36 $09
    ld bc, $0012                                  ; $6af7: $01 $12 $00
    ld d, $03                                     ; $6afa: $16 $03
    ld hl, $d001                                  ; $6afc: $21 $01 $d0
    call Call_041_48e5                            ; $6aff: $cd $e5 $48
    ld bc, $0012                                  ; $6b02: $01 $12 $00
    ld d, $08                                     ; $6b05: $16 $08
    ld hl, $d041                                  ; $6b07: $21 $41 $d0
    call Call_041_48e5                            ; $6b0a: $cd $e5 $48
    ld hl, $d020                                  ; $6b0d: $21 $20 $d0
    ld [hl], $05                                  ; $6b10: $36 $05
    ld hl, $d033                                  ; $6b12: $21 $33 $d0
    ld [hl], $06                                  ; $6b15: $36 $06
    ld hl, $d060                                  ; $6b17: $21 $60 $d0
    ld [hl], $02                                  ; $6b1a: $36 $02
    ld hl, $d065                                  ; $6b1c: $21 $65 $d0
    ld [hl], $04                                  ; $6b1f: $36 $04
    ld hl, $d0e0                                  ; $6b21: $21 $e0 $d0
    ld [hl], $07                                  ; $6b24: $36 $07
    ld hl, $d0e5                                  ; $6b26: $21 $e5 $d0
    ld [hl], $09                                  ; $6b29: $36 $09
    ld a, $05                                     ; $6b2b: $3e $05
    ld [$d080], a                                 ; $6b2d: $ea $80 $d0
    ld [$d0a0], a                                 ; $6b30: $ea $a0 $d0
    ld [$d0c0], a                                 ; $6b33: $ea $c0 $d0
    ld a, $06                                     ; $6b36: $3e $06
    ld [$d085], a                                 ; $6b38: $ea $85 $d0
    ld [$d0a5], a                                 ; $6b3b: $ea $a5 $d0
    ld [$d0c5], a                                 ; $6b3e: $ea $c5 $d0
    ld bc, $0004                                  ; $6b41: $01 $04 $00
    ld d, $03                                     ; $6b44: $16 $03
    ld hl, $d061                                  ; $6b46: $21 $61 $d0
    call Call_041_48e5                            ; $6b49: $cd $e5 $48
    ld bc, $0004                                  ; $6b4c: $01 $04 $00
    ld d, $08                                     ; $6b4f: $16 $08
    ld hl, $d0e1                                  ; $6b51: $21 $e1 $d0
    call Call_041_48e5                            ; $6b54: $cd $e5 $48
    ld hl, $d090                                  ; $6b57: $21 $90 $d0
    ld [hl], $59                                  ; $6b5a: $36 $59
    ld hl, $d0d0                                  ; $6b5c: $21 $d0 $d0
    ld a, $1e                                     ; $6b5f: $3e $1e
    ld b, $03                                     ; $6b61: $06 $03
    call Call_041_48ed                            ; $6b63: $cd $ed $48
    ld hl, $d0f0                                  ; $6b66: $21 $f0 $d0
    ld b, $03                                     ; $6b69: $06 $03
    call Call_041_48ed                            ; $6b6b: $cd $ed $48
    ld hl, $d127                                  ; $6b6e: $21 $27 $d1
    ld a, $2a                                     ; $6b71: $3e $2a
    ld b, $03                                     ; $6b73: $06 $03
    call Call_041_48ed                            ; $6b75: $cd $ed $48
    ld hl, $d147                                  ; $6b78: $21 $47 $d1
    ld b, $03                                     ; $6b7b: $06 $03
    call Call_041_48ed                            ; $6b7d: $cd $ed $48
    ld hl, $d130                                  ; $6b80: $21 $30 $d1
    ld a, $30                                     ; $6b83: $3e $30
    ld b, $03                                     ; $6b85: $06 $03
    call Call_041_48ed                            ; $6b87: $cd $ed $48
    ld hl, $d150                                  ; $6b8a: $21 $50 $d1
    ld b, $03                                     ; $6b8d: $06 $03
    call Call_041_48ed                            ; $6b8f: $cd $ed $48
    ld hl, $d1a6                                  ; $6b92: $21 $a6 $d1
    ld a, $63                                     ; $6b95: $3e $63
    ld b, $04                                     ; $6b97: $06 $04
    call Call_041_48ed                            ; $6b99: $cd $ed $48
    ld hl, $d1c6                                  ; $6b9c: $21 $c6 $d1
    ld b, $04                                     ; $6b9f: $06 $04
    call Call_041_48ed                            ; $6ba1: $cd $ed $48
    ld hl, $d1b0                                  ; $6ba4: $21 $b0 $d1
    ld a, $3c                                     ; $6ba7: $3e $3c
    ld b, $03                                     ; $6ba9: $06 $03
    call Call_041_48ed                            ; $6bab: $cd $ed $48
    ld hl, $d1d0                                  ; $6bae: $21 $d0 $d1
    ld b, $03                                     ; $6bb1: $06 $03
    call Call_041_48ed                            ; $6bb3: $cd $ed $48
    ld hl, $d1e7                                  ; $6bb6: $21 $e7 $d1
    ld a, $42                                     ; $6bb9: $3e $42
    ld b, $03                                     ; $6bbb: $06 $03
    call Call_041_48ed                            ; $6bbd: $cd $ed $48
    ld hl, $d207                                  ; $6bc0: $21 $07 $d2
    ld b, $03                                     ; $6bc3: $06 $03
    call Call_041_48ed                            ; $6bc5: $cd $ed $48
    ld hl, $d1f0                                  ; $6bc8: $21 $f0 $d1
    ld a, $6b                                     ; $6bcb: $3e $6b
    ld b, $03                                     ; $6bcd: $06 $03
    call Call_041_48ed                            ; $6bcf: $cd $ed $48
    ld hl, $d210                                  ; $6bd2: $21 $10 $d2
    ld b, $03                                     ; $6bd5: $06 $03
    call Call_041_48ed                            ; $6bd7: $cd $ed $48
    ld hl, $5afa                                  ; $6bda: $21 $fa $5a
    ld de, $0c01                                  ; $6bdd: $11 $01 $0c
    call Call_000_0595                            ; $6be0: $cd $95 $05
    ld hl, $5d71                                  ; $6be3: $21 $71 $5d
    ld de, $0301                                  ; $6be6: $11 $01 $03
    call Call_000_0595                            ; $6be9: $cd $95 $05
    ld hl, $5d71                                  ; $6bec: $21 $71 $5d
    ld de, $0401                                  ; $6bef: $11 $01 $04
    call Call_000_0595                            ; $6bf2: $cd $95 $05
    ld hl, $5d71                                  ; $6bf5: $21 $71 $5d
    ld de, $0501                                  ; $6bf8: $11 $01 $05
    call Call_000_0595                            ; $6bfb: $cd $95 $05
    ld a, $06                                     ; $6bfe: $3e $06
    ldh [$96], a                                  ; $6c00: $e0 $96
    ldh [rSVBK], a                                ; $6c02: $e0 $70
    xor a                                         ; $6c04: $af
    ld hl, $d432                                  ; $6c05: $21 $32 $d4
    ld [hl+], a                                   ; $6c08: $22
    ld [hl+], a                                   ; $6c09: $22
    ld [hl+], a                                   ; $6c0a: $22
    ld hl, $5ced                                  ; $6c0b: $21 $ed $5c
    ld de, $0101                                  ; $6c0e: $11 $01 $01
    call Call_000_0595                            ; $6c11: $cd $95 $05
    ld hl, $5ced                                  ; $6c14: $21 $ed $5c
    ld de, $0a01                                  ; $6c17: $11 $01 $0a
    call Call_000_0595                            ; $6c1a: $cd $95 $05
    ld hl, $5ce5                                  ; $6c1d: $21 $e5 $5c
    ld de, $0001                                  ; $6c20: $11 $01 $00
    call Call_000_0595                            ; $6c23: $cd $95 $05
    ld hl, $5ce5                                  ; $6c26: $21 $e5 $5c
    ld de, $0801                                  ; $6c29: $11 $01 $08
    call Call_000_0595                            ; $6c2c: $cd $95 $05
    ret                                           ; $6c2f: $c9


Call_041_6c30:
    rst $18                                       ; $6c30: $df

    db $1a, $03

    push af                                       ; $6c33: $f5
    ld b, a                                       ; $6c34: $47
    ld a, $03                                     ; $6c35: $3e $03
    ldh [$96], a                                  ; $6c37: $e0 $96
    ldh [rSVBK], a                                ; $6c39: $e0 $70
    ld de, $d021                                  ; $6c3b: $11 $21 $d0
    ld a, b                                       ; $6c3e: $78
    and a                                         ; $6c3f: $a7
    jr z, jr_041_6c4a                             ; $6c40: $28 $08

    dec a                                         ; $6c42: $3d
    jr z, jr_041_6c54                             ; $6c43: $28 $0f

    dec a                                         ; $6c45: $3d
    jr z, jr_041_6c6c                             ; $6c46: $28 $24

    jr jr_041_6c84                                ; $6c48: $18 $3a

jr_041_6c4a:
    ld hl, $10eb                                  ; $6c4a: $21 $eb $10
    ld c, $20                                     ; $6c4d: $0e $20
    rst $18                                       ; $6c4f: $df

    db $22, $05

    jr jr_041_6c84                                ; $6c52: $18 $30

jr_041_6c54:
    ld hl, $10ec                                  ; $6c54: $21 $ec $10
    ld c, $20                                     ; $6c57: $0e $20
    rst $18                                       ; $6c59: $df
    ld [hl+], a                                   ; $6c5a: $22
    dec b                                         ; $6c5b: $05
    ld de, $d025                                  ; $6c5c: $11 $25 $d0
    call Call_041_6d25                            ; $6c5f: $cd $25 $6d
    ld hl, $10ee                                  ; $6c62: $21 $ee $10
    ld c, $20                                     ; $6c65: $0e $20
    rst $18                                       ; $6c67: $df
    ld [hl+], a                                   ; $6c68: $22
    dec b                                         ; $6c69: $05
    jr jr_041_6c84                                ; $6c6a: $18 $18

jr_041_6c6c:
    ld hl, $10ed                                  ; $6c6c: $21 $ed $10
    ld c, $20                                     ; $6c6f: $0e $20
    rst $18                                       ; $6c71: $df
    ld [hl+], a                                   ; $6c72: $22
    dec b                                         ; $6c73: $05
    ld de, $d026                                  ; $6c74: $11 $26 $d0
    call Call_041_6d25                            ; $6c77: $cd $25 $6d
    ld hl, $10ee                                  ; $6c7a: $21 $ee $10
    ld c, $20                                     ; $6c7d: $0e $20
    rst $18                                       ; $6c7f: $df
    ld [hl+], a                                   ; $6c80: $22
    dec b                                         ; $6c81: $05
    jr jr_041_6c84                                ; $6c82: $18 $00

jr_041_6c84:
    ld de, $d082                                  ; $6c84: $11 $82 $d0
    ld hl, $10e9                                  ; $6c87: $21 $e9 $10
    ld c, $20                                     ; $6c8a: $0e $20
    rst $18                                       ; $6c8c: $df

    db $22, $05

    ld de, $d0c2                                  ; $6c8f: $11 $c2 $d0
    ld hl, $10ea                                  ; $6c92: $21 $ea $10
    ld c, $20                                     ; $6c95: $0e $20
    rst $18                                       ; $6c97: $df

    db $22, $05

    ld de, $d121                                  ; $6c9a: $11 $21 $d1
    ld hl, $1ca8                                  ; $6c9d: $21 $a8 $1c
    ld c, $20                                     ; $6ca0: $0e $20
    rst $18                                       ; $6ca2: $df

    db $22, $05

    ld a, $06                                     ; $6ca5: $3e $06
    ldh [$96], a                                  ; $6ca7: $e0 $96
    ldh [rSVBK], a                                ; $6ca9: $e0 $70
    ld a, [$d63c]                                 ; $6cab: $fa $3c $d6
    ld h, $00                                     ; $6cae: $26 $00
    ld l, a                                       ; $6cb0: $6f
    pop af                                        ; $6cb1: $f1
    and a                                         ; $6cb2: $a7
    jr nz, jr_041_6cb7                            ; $6cb3: $20 $02

    ld l, $01                                     ; $6cb5: $2e $01

jr_041_6cb7:
    ld a, $02                                     ; $6cb7: $3e $02
    ld de, $d64e                                  ; $6cb9: $11 $4e $d6
    call Call_000_21f0                            ; $6cbc: $cd $f0 $21
    ld hl, $d64e                                  ; $6cbf: $21 $4e $d6
    ld de, $d123                                  ; $6cc2: $11 $23 $d1
    ld a, [hl+]                                   ; $6cc5: $2a
    ld b, a                                       ; $6cc6: $47
    ld a, $03                                     ; $6cc7: $3e $03
    ldh [$96], a                                  ; $6cc9: $e0 $96
    ldh [rSVBK], a                                ; $6ccb: $e0 $70
    ld a, b                                       ; $6ccd: $78
    ld [de], a                                    ; $6cce: $12
    sub $20                                       ; $6ccf: $d6 $20
    jr z, jr_041_6cd4                             ; $6cd1: $28 $01

    inc de                                        ; $6cd3: $13

jr_041_6cd4:
    ld a, $06                                     ; $6cd4: $3e $06
    ldh [$96], a                                  ; $6cd6: $e0 $96
    ldh [rSVBK], a                                ; $6cd8: $e0 $70
    ld a, [hl]                                    ; $6cda: $7e
    ld b, a                                       ; $6cdb: $47
    ld a, $03                                     ; $6cdc: $3e $03
    ldh [$96], a                                  ; $6cde: $e0 $96
    ldh [rSVBK], a                                ; $6ce0: $e0 $70
    ld a, b                                       ; $6ce2: $78
    ld [de], a                                    ; $6ce3: $12
    ld a, $03                                     ; $6ce4: $3e $03
    ldh [$96], a                                  ; $6ce6: $e0 $96
    ldh [rSVBK], a                                ; $6ce8: $e0 $70
    ld de, $d066                                  ; $6cea: $11 $66 $d0
    ld hl, $10e1                                  ; $6ced: $21 $e1 $10
    ld c, $20                                     ; $6cf0: $0e $20
    rst $18                                       ; $6cf2: $df

    db $22, $05

    ld de, $d0a6                                  ; $6cf5: $11 $a6 $d0
    ld hl, $10e3                                  ; $6cf8: $21 $e3 $10
    ld c, $20                                     ; $6cfb: $0e $20
    rst $18                                       ; $6cfd: $df

    db $22, $05

    ld de, $d106                                  ; $6d00: $11 $06 $d1
    ld hl, $10e2                                  ; $6d03: $21 $e2 $10
    ld c, $20                                     ; $6d06: $0e $20
    rst $18                                       ; $6d08: $df

    db $22, $05

    ld de, $d166                                  ; $6d0b: $11 $66 $d1
    ld hl, $10e4                                  ; $6d0e: $21 $e4 $10
    ld c, $20                                     ; $6d11: $0e $20
    rst $18                                       ; $6d13: $df

    db $22, $05

    ld de, $d187                                  ; $6d16: $11 $87 $d1
    ld hl, $10e5                                  ; $6d19: $21 $e5 $10
    ld c, $20                                     ; $6d1c: $0e $20
    rst $18                                       ; $6d1e: $df

    db $22, $05

    rst $18                                       ; $6d21: $df

    db $24, $03

    ret                                           ; $6d24: $c9


Call_041_6d25:
    push de                                       ; $6d25: $d5
    ld a, $06                                     ; $6d26: $3e $06
    ldh [$96], a                                  ; $6d28: $e0 $96
    ldh [rSVBK], a                                ; $6d2a: $e0 $70
    ld hl, $c800                                  ; $6d2c: $21 $00 $c8
    pop de                                        ; $6d2f: $d1

jr_041_6d30:
    ld a, $06                                     ; $6d30: $3e $06
    ldh [$96], a                                  ; $6d32: $e0 $96
    ldh [rSVBK], a                                ; $6d34: $e0 $70
    ld a, [hl+]                                   ; $6d36: $2a
    and a                                         ; $6d37: $a7
    jr z, jr_041_6d46                             ; $6d38: $28 $0c

    ld b, a                                       ; $6d3a: $47
    ld a, $03                                     ; $6d3b: $3e $03
    ldh [$96], a                                  ; $6d3d: $e0 $96
    ldh [rSVBK], a                                ; $6d3f: $e0 $70
    ld a, b                                       ; $6d41: $78
    ld [de], a                                    ; $6d42: $12
    inc de                                        ; $6d43: $13
    jr jr_041_6d30                                ; $6d44: $18 $ea

jr_041_6d46:
    ld a, $03                                     ; $6d46: $3e $03
    ldh [$96], a                                  ; $6d48: $e0 $96
    ldh [rSVBK], a                                ; $6d4a: $e0 $70
    inc de                                        ; $6d4c: $13
    ret                                           ; $6d4d: $c9


Call_041_6d4e:
    ld a, $06                                     ; $6d4e: $3e $06
    ldh [$96], a                                  ; $6d50: $e0 $96
    ldh [rSVBK], a                                ; $6d52: $e0 $70
    ld hl, $c200                                  ; $6d54: $21 $00 $c2
    ld de, $d554                                  ; $6d57: $11 $54 $d5
    ld b, $40                                     ; $6d5a: $06 $40

jr_041_6d5c:
    ld a, [hl+]                                   ; $6d5c: $2a
    ld [de], a                                    ; $6d5d: $12
    inc de                                        ; $6d5e: $13
    dec b                                         ; $6d5f: $05
    jr nz, jr_041_6d5c                            ; $6d60: $20 $fa

    ld a, $02                                     ; $6d62: $3e $02
    ldh [$96], a                                  ; $6d64: $e0 $96
    ldh [rSVBK], a                                ; $6d66: $e0 $70
    ld hl, $d000                                  ; $6d68: $21 $00 $d0
    ld de, $d800                                  ; $6d6b: $11 $00 $d8
    ld bc, $0800                                  ; $6d6e: $01 $00 $08

jr_041_6d71:
    ld a, [hl+]                                   ; $6d71: $2a
    ld [de], a                                    ; $6d72: $12
    inc de                                        ; $6d73: $13
    dec bc                                        ; $6d74: $0b
    ld a, b                                       ; $6d75: $78
    or c                                          ; $6d76: $b1
    jr nz, jr_041_6d71                            ; $6d77: $20 $f8

    ld a, $03                                     ; $6d79: $3e $03
    ldh [$96], a                                  ; $6d7b: $e0 $96
    ldh [rSVBK], a                                ; $6d7d: $e0 $70
    ld hl, $d000                                  ; $6d7f: $21 $00 $d0
    ld de, $d800                                  ; $6d82: $11 $00 $d8
    ld bc, $0800                                  ; $6d85: $01 $00 $08

jr_041_6d88:
    ld a, [hl+]                                   ; $6d88: $2a
    ld [de], a                                    ; $6d89: $12
    inc de                                        ; $6d8a: $13
    dec bc                                        ; $6d8b: $0b
    ld a, b                                       ; $6d8c: $78
    or c                                          ; $6d8d: $b1
    jr nz, jr_041_6d88                            ; $6d8e: $20 $f8

    ld a, $01                                     ; $6d90: $3e $01
    ldh [rVBK], a                                 ; $6d92: $e0 $4f
    ld a, $01                                     ; $6d94: $3e $01
    ldh [$96], a                                  ; $6d96: $e0 $96
    ldh [rSVBK], a                                ; $6d98: $e0 $70
    ld hl, $9000                                  ; $6d9a: $21 $00 $90
    ld de, $d800                                  ; $6d9d: $11 $00 $d8
    ld bc, $0800                                  ; $6da0: $01 $00 $08

jr_041_6da3:
    ld a, [hl+]                                   ; $6da3: $2a
    ld [de], a                                    ; $6da4: $12
    inc de                                        ; $6da5: $13
    dec bc                                        ; $6da6: $0b
    ld a, b                                       ; $6da7: $78
    or c                                          ; $6da8: $b1
    jr nz, jr_041_6da3                            ; $6da9: $20 $f8

    ld a, $00                                     ; $6dab: $3e $00
    ldh [rVBK], a                                 ; $6dad: $e0 $4f
    ld a, $05                                     ; $6daf: $3e $05
    ldh [$96], a                                  ; $6db1: $e0 $96
    ldh [rSVBK], a                                ; $6db3: $e0 $70
    ld hl, $8400                                  ; $6db5: $21 $00 $84
    ld de, $dc00                                  ; $6db8: $11 $00 $dc
    ld bc, $0400                                  ; $6dbb: $01 $00 $04

jr_041_6dbe:
    ld a, [hl+]                                   ; $6dbe: $2a
    ld [de], a                                    ; $6dbf: $12
    inc de                                        ; $6dc0: $13
    dec bc                                        ; $6dc1: $0b
    ld a, b                                       ; $6dc2: $78
    or c                                          ; $6dc3: $b1
    jr nz, jr_041_6dbe                            ; $6dc4: $20 $f8

    ret                                           ; $6dc6: $c9


Call_041_6dc7:
    ld a, $06                                     ; $6dc7: $3e $06
    ldh [$96], a                                  ; $6dc9: $e0 $96
    ldh [rSVBK], a                                ; $6dcb: $e0 $70
    ld hl, $d554                                  ; $6dcd: $21 $54 $d5
    ld de, $0007                                  ; $6dd0: $11 $07 $00
    call Call_000_0595                            ; $6dd3: $cd $95 $05
    ld a, $02                                     ; $6dd6: $3e $02
    ldh [$96], a                                  ; $6dd8: $e0 $96
    ldh [rSVBK], a                                ; $6dda: $e0 $70
    ld hl, $d800                                  ; $6ddc: $21 $00 $d8
    ld de, $d000                                  ; $6ddf: $11 $00 $d0
    ld bc, $0800                                  ; $6de2: $01 $00 $08

jr_041_6de5:
    ld a, [hl+]                                   ; $6de5: $2a
    ld [de], a                                    ; $6de6: $12
    inc de                                        ; $6de7: $13
    dec bc                                        ; $6de8: $0b
    ld a, b                                       ; $6de9: $78
    or c                                          ; $6dea: $b1
    jr nz, jr_041_6de5                            ; $6deb: $20 $f8

    ld a, $03                                     ; $6ded: $3e $03
    ldh [$96], a                                  ; $6def: $e0 $96
    ldh [rSVBK], a                                ; $6df1: $e0 $70
    ld hl, $d800                                  ; $6df3: $21 $00 $d8
    ld de, $d000                                  ; $6df6: $11 $00 $d0
    ld bc, $0800                                  ; $6df9: $01 $00 $08

jr_041_6dfc:
    ld a, [hl+]                                   ; $6dfc: $2a
    ld [de], a                                    ; $6dfd: $12
    inc de                                        ; $6dfe: $13
    dec bc                                        ; $6dff: $0b
    ld a, b                                       ; $6e00: $78
    or c                                          ; $6e01: $b1
    jr nz, jr_041_6dfc                            ; $6e02: $20 $f8

    ld a, $01                                     ; $6e04: $3e $01
    ldh [rVBK], a                                 ; $6e06: $e0 $4f
    ld a, $01                                     ; $6e08: $3e $01
    ldh [$96], a                                  ; $6e0a: $e0 $96
    ldh [rSVBK], a                                ; $6e0c: $e0 $70
    ld hl, $d800                                  ; $6e0e: $21 $00 $d8
    ld de, $9000                                  ; $6e11: $11 $00 $90
    ld bc, $0800                                  ; $6e14: $01 $00 $08

jr_041_6e17:
    ld a, [hl+]                                   ; $6e17: $2a
    ld [de], a                                    ; $6e18: $12
    inc de                                        ; $6e19: $13
    dec bc                                        ; $6e1a: $0b
    ld a, b                                       ; $6e1b: $78
    or c                                          ; $6e1c: $b1
    jr nz, jr_041_6e17                            ; $6e1d: $20 $f8

    ld a, $00                                     ; $6e1f: $3e $00
    ldh [rVBK], a                                 ; $6e21: $e0 $4f
    ld a, $05                                     ; $6e23: $3e $05
    ldh [$96], a                                  ; $6e25: $e0 $96
    ldh [rSVBK], a                                ; $6e27: $e0 $70
    ld hl, $dc00                                  ; $6e29: $21 $00 $dc
    ld de, $8400                                  ; $6e2c: $11 $00 $84
    ld bc, $0400                                  ; $6e2f: $01 $00 $04

jr_041_6e32:
    ld a, [hl+]                                   ; $6e32: $2a
    ld [de], a                                    ; $6e33: $12
    inc de                                        ; $6e34: $13
    dec bc                                        ; $6e35: $0b
    ld a, b                                       ; $6e36: $78
    or c                                          ; $6e37: $b1
    jr nz, jr_041_6e32                            ; $6e38: $20 $f8

    ret                                           ; $6e3a: $c9


    ld bc, $0200                                  ; $6e3b: $01 $00 $02
    ld d, $38                                     ; $6e3e: $16 $38
    ld e, $30                                     ; $6e40: $1e $30
    ld hl, $63be                                  ; $6e42: $21 $be $63
    call Call_000_26ea                            ; $6e45: $cd $ea $26
    ret                                           ; $6e48: $c9


    rst $18                                       ; $6e49: $df
    inc b                                         ; $6e4a: $04
    ld bc, $96f0                                  ; $6e4b: $01 $f0 $96
    push af                                       ; $6e4e: $f5
    ld a, [$c82d]                                 ; $6e4f: $fa $2d $c8
    set 7, a                                      ; $6e52: $cb $ff
    ld [$c82d], a                                 ; $6e54: $ea $2d $c8
    call Call_041_7a53                            ; $6e57: $cd $53 $7a
    call Call_041_6ff4                            ; $6e5a: $cd $f4 $6f
    ld a, [$c82d]                                 ; $6e5d: $fa $2d $c8
    res 7, a                                      ; $6e60: $cb $bf
    ld [$c82d], a                                 ; $6e62: $ea $2d $c8
    pop af                                        ; $6e65: $f1
    ldh [$96], a                                  ; $6e66: $e0 $96
    ldh [rSVBK], a                                ; $6e68: $e0 $70
    ld a, [$c3fd]                                 ; $6e6a: $fa $fd $c3
    ret                                           ; $6e6d: $c9


    ldh a, [$96]                                  ; $6e6e: $f0 $96
    push af                                       ; $6e70: $f5
    ld a, [$c82d]                                 ; $6e71: $fa $2d $c8
    set 7, a                                      ; $6e74: $cb $ff
    ld [$c82d], a                                 ; $6e76: $ea $2d $c8
    call Call_041_7a65                            ; $6e79: $cd $65 $7a
    call Call_041_6ff4                            ; $6e7c: $cd $f4 $6f
    ld a, [$c82d]                                 ; $6e7f: $fa $2d $c8
    res 7, a                                      ; $6e82: $cb $bf
    ld [$c82d], a                                 ; $6e84: $ea $2d $c8
    pop af                                        ; $6e87: $f1
    ldh [$96], a                                  ; $6e88: $e0 $96
    ldh [rSVBK], a                                ; $6e8a: $e0 $70
    rst $28                                       ; $6e8c: $ef
    jr nz, jr_041_6e95                            ; $6e8d: $20 $06

    rst $28                                       ; $6e8f: $ef
    ld b, b                                       ; $6e90: $40
    ld b, $fa                                     ; $6e91: $06 $fa
    db $fd                                        ; $6e93: $fd
    db $c3                                        ; $6e94: $c3

jr_041_6e95:
    ret                                           ; $6e95: $c9


    rst $18                                       ; $6e96: $df

    db $04, $01

    ldh a, [$96]                                  ; $6e99: $f0 $96
    push af                                       ; $6e9b: $f5
    ld a, [$c82d]                                 ; $6e9c: $fa $2d $c8
    set 7, a                                      ; $6e9f: $cb $ff
    ld [$c82d], a                                 ; $6ea1: $ea $2d $c8
    call Call_041_7aef                            ; $6ea4: $cd $ef $7a
    call Call_041_6ff4                            ; $6ea7: $cd $f4 $6f
    ld a, [$c82d]                                 ; $6eaa: $fa $2d $c8
    res 7, a                                      ; $6ead: $cb $bf
    ld [$c82d], a                                 ; $6eaf: $ea $2d $c8
    pop af                                        ; $6eb2: $f1
    ldh [$96], a                                  ; $6eb3: $e0 $96
    ldh [rSVBK], a                                ; $6eb5: $e0 $70
    ld a, [$c3fd]                                 ; $6eb7: $fa $fd $c3
    ret                                           ; $6eba: $c9


    rst $18                                       ; $6ebb: $df
    inc b                                         ; $6ebc: $04
    ld bc, $96f0                                  ; $6ebd: $01 $f0 $96
    push af                                       ; $6ec0: $f5
    ld a, [$c82d]                                 ; $6ec1: $fa $2d $c8
    set 7, a                                      ; $6ec4: $cb $ff
    ld [$c82d], a                                 ; $6ec6: $ea $2d $c8
    call Call_041_7b1c                            ; $6ec9: $cd $1c $7b
    call Call_041_6ff4                            ; $6ecc: $cd $f4 $6f
    ld a, [$c82d]                                 ; $6ecf: $fa $2d $c8
    res 7, a                                      ; $6ed2: $cb $bf
    ld [$c82d], a                                 ; $6ed4: $ea $2d $c8
    pop af                                        ; $6ed7: $f1
    ldh [$96], a                                  ; $6ed8: $e0 $96
    ldh [rSVBK], a                                ; $6eda: $e0 $70
    ld a, [$c3fd]                                 ; $6edc: $fa $fd $c3
    ret                                           ; $6edf: $c9


    rst $18                                       ; $6ee0: $df
    inc b                                         ; $6ee1: $04
    ld bc, $96f0                                  ; $6ee2: $01 $f0 $96
    push af                                       ; $6ee5: $f5
    ld a, [$c82d]                                 ; $6ee6: $fa $2d $c8
    set 7, a                                      ; $6ee9: $cb $ff
    ld [$c82d], a                                 ; $6eeb: $ea $2d $c8
    call Call_041_7b2e                            ; $6eee: $cd $2e $7b
    call Call_041_6ff4                            ; $6ef1: $cd $f4 $6f
    ld a, [$c82d]                                 ; $6ef4: $fa $2d $c8
    res 7, a                                      ; $6ef7: $cb $bf
    ld [$c82d], a                                 ; $6ef9: $ea $2d $c8
    pop af                                        ; $6efc: $f1
    ldh [$96], a                                  ; $6efd: $e0 $96
    ldh [rSVBK], a                                ; $6eff: $e0 $70
    rst $28                                       ; $6f01: $ef
    ld h, b                                       ; $6f02: $60
    ld b, $fa                                     ; $6f03: $06 $fa
    db $fd                                        ; $6f05: $fd
    db $c3                                        ; $6f06: $c3
    ret                                           ; $6f07: $c9


    rst $18                                       ; $6f08: $df

    db $04, $01

    ldh a, [$96]                                  ; $6f0b: $f0 $96
    push af                                       ; $6f0d: $f5
    ld a, [$c82d]                                 ; $6f0e: $fa $2d $c8
    set 7, a                                      ; $6f11: $cb $ff
    ld [$c82d], a                                 ; $6f13: $ea $2d $c8
    call Call_041_7b4d                            ; $6f16: $cd $4d $7b
    call Call_041_6ff4                            ; $6f19: $cd $f4 $6f
    ld a, [$c82d]                                 ; $6f1c: $fa $2d $c8
    res 7, a                                      ; $6f1f: $cb $bf
    ld [$c82d], a                                 ; $6f21: $ea $2d $c8
    pop af                                        ; $6f24: $f1
    ldh [$96], a                                  ; $6f25: $e0 $96
    ldh [rSVBK], a                                ; $6f27: $e0 $70
    rst $28                                       ; $6f29: $ef

    db $80, $06

    ld a, [$c3fd]                                 ; $6f2c: $fa $fd $c3
    ret                                           ; $6f2f: $c9


    rst $18                                       ; $6f30: $df
    inc b                                         ; $6f31: $04
    ld bc, $96f0                                  ; $6f32: $01 $f0 $96
    push af                                       ; $6f35: $f5
    ld a, [$c82d]                                 ; $6f36: $fa $2d $c8
    set 7, a                                      ; $6f39: $cb $ff
    ld [$c82d], a                                 ; $6f3b: $ea $2d $c8
    call Call_041_7b6c                            ; $6f3e: $cd $6c $7b
    call Call_041_6ff4                            ; $6f41: $cd $f4 $6f
    ld a, [$c82d]                                 ; $6f44: $fa $2d $c8
    res 7, a                                      ; $6f47: $cb $bf
    ld [$c82d], a                                 ; $6f49: $ea $2d $c8
    pop af                                        ; $6f4c: $f1
    ldh [$96], a                                  ; $6f4d: $e0 $96
    ldh [rSVBK], a                                ; $6f4f: $e0 $70
    ld a, [$c3fd]                                 ; $6f51: $fa $fd $c3
    ret                                           ; $6f54: $c9


    rst $18                                       ; $6f55: $df

    db $04, $01

    ldh a, [$96]                                  ; $6f58: $f0 $96
    push af                                       ; $6f5a: $f5
    ld a, [$c82d]                                 ; $6f5b: $fa $2d $c8
    set 7, a                                      ; $6f5e: $cb $ff
    ld [$c82d], a                                 ; $6f60: $ea $2d $c8
    call Call_041_7b7e                            ; $6f63: $cd $7e $7b
    call Call_041_6ff4                            ; $6f66: $cd $f4 $6f
    ld a, [$c82d]                                 ; $6f69: $fa $2d $c8
    res 7, a                                      ; $6f6c: $cb $bf
    ld [$c82d], a                                 ; $6f6e: $ea $2d $c8
    pop af                                        ; $6f71: $f1
    ldh [$96], a                                  ; $6f72: $e0 $96
    ldh [rSVBK], a                                ; $6f74: $e0 $70
    ld a, [$c3fd]                                 ; $6f76: $fa $fd $c3
    ret                                           ; $6f79: $c9


    rst $18                                       ; $6f7a: $df
    inc b                                         ; $6f7b: $04
    ld bc, $96f0                                  ; $6f7c: $01 $f0 $96
    push af                                       ; $6f7f: $f5
    ld a, [$c82d]                                 ; $6f80: $fa $2d $c8
    set 7, a                                      ; $6f83: $cb $ff
    ld [$c82d], a                                 ; $6f85: $ea $2d $c8
    call Call_041_7b90                            ; $6f88: $cd $90 $7b
    call Call_041_6ff4                            ; $6f8b: $cd $f4 $6f
    ld a, [$c82d]                                 ; $6f8e: $fa $2d $c8
    res 7, a                                      ; $6f91: $cb $bf
    ld [$c82d], a                                 ; $6f93: $ea $2d $c8
    pop af                                        ; $6f96: $f1
    ldh [$96], a                                  ; $6f97: $e0 $96
    ldh [rSVBK], a                                ; $6f99: $e0 $70
    ld a, [$c3fd]                                 ; $6f9b: $fa $fd $c3
    ret                                           ; $6f9e: $c9


    rst $18                                       ; $6f9f: $df
    inc b                                         ; $6fa0: $04
    ld bc, $96f0                                  ; $6fa1: $01 $f0 $96
    push af                                       ; $6fa4: $f5
    ld a, [$c82d]                                 ; $6fa5: $fa $2d $c8
    set 7, a                                      ; $6fa8: $cb $ff
    ld [$c82d], a                                 ; $6faa: $ea $2d $c8
    call Call_041_7ba2                            ; $6fad: $cd $a2 $7b
    call Call_041_6ff4                            ; $6fb0: $cd $f4 $6f
    ld a, [$c82d]                                 ; $6fb3: $fa $2d $c8
    res 7, a                                      ; $6fb6: $cb $bf
    ld [$c82d], a                                 ; $6fb8: $ea $2d $c8
    pop af                                        ; $6fbb: $f1
    ldh [$96], a                                  ; $6fbc: $e0 $96
    ldh [rSVBK], a                                ; $6fbe: $e0 $70
    ld a, [$c3fd]                                 ; $6fc0: $fa $fd $c3
    ret                                           ; $6fc3: $c9


    call Call_041_707c                            ; $6fc4: $cd $7c $70
    ld hl, $c3fc                                  ; $6fc7: $21 $fc $c3
    set 7, [hl]                                   ; $6fca: $cb $fe
    ldh a, [$96]                                  ; $6fcc: $f0 $96
    push af                                       ; $6fce: $f5
    ld a, [$c82d]                                 ; $6fcf: $fa $2d $c8
    set 7, a                                      ; $6fd2: $cb $ff
    ld [$c82d], a                                 ; $6fd4: $ea $2d $c8
    ld hl, $1480                                  ; $6fd7: $21 $80 $14
    ld bc, $73dc                                  ; $6fda: $01 $dc $73
    ld de, $0404                                  ; $6fdd: $11 $04 $04
    call Call_041_6ff4                            ; $6fe0: $cd $f4 $6f
    ld a, [$c82d]                                 ; $6fe3: $fa $2d $c8
    res 7, a                                      ; $6fe6: $cb $bf
    ld [$c82d], a                                 ; $6fe8: $ea $2d $c8
    pop af                                        ; $6feb: $f1
    ldh [$96], a                                  ; $6fec: $e0 $96
    ldh [rSVBK], a                                ; $6fee: $e0 $70
    ld a, [$c3fd]                                 ; $6ff0: $fa $fd $c3
    ret                                           ; $6ff3: $c9


Call_041_6ff4:
Jump_041_6ff4:
    xor a                                         ; $6ff4: $af
    ld [$c3fd], a                                 ; $6ff5: $ea $fd $c3
    ld a, $05                                     ; $6ff8: $3e $05
    ldh [$96], a                                  ; $6ffa: $e0 $96
    ldh [rSVBK], a                                ; $6ffc: $e0 $70
    push hl                                       ; $6ffe: $e5
    call Call_000_2e3b                            ; $6fff: $cd $3b $2e
    call Call_000_0684                            ; $7002: $cd $84 $06
    call Call_000_2e3b                            ; $7005: $cd $3b $2e
    pop hl                                        ; $7008: $e1
    rst $18                                       ; $7009: $df

    db $0a, $05

    rst $20                                       ; $700c: $e7

    db $00, $03

    ld [$c3f8], a                                 ; $700f: $ea $f8 $c3
    call Call_000_2e3b                            ; $7012: $cd $3b $2e
    rst $18                                       ; $7015: $df

    db $1c, $05

    rst $18                                       ; $7018: $df

    db $14, $05

    call Call_000_2e3b                            ; $701b: $cd $3b $2e

Jump_041_701e:
    call Call_041_708a                            ; $701e: $cd $8a $70
    push hl                                       ; $7021: $e5
    call Call_000_2e3b                            ; $7022: $cd $3b $2e
    call Call_000_068a                            ; $7025: $cd $8a $06
    call Call_000_2e3b                            ; $7028: $cd $3b $2e
    pop hl                                        ; $702b: $e1
    ld a, [$c3f8]                                 ; $702c: $fa $f8 $c3
    rst $18                                       ; $702f: $df

    db $4e, $05

    push af                                       ; $7032: $f5
    push bc                                       ; $7033: $c5
    cp $ff                                        ; $7034: $fe $ff
    jr z, jr_041_7051                             ; $7036: $28 $19

    ld a, [$c3fb]                                 ; $7038: $fa $fb $c3
    bit 7, a                                      ; $703b: $cb $7f
    jr z, jr_041_7051                             ; $703d: $28 $12

    and $7f                                       ; $703f: $e6 $7f
    ld b, a                                       ; $7041: $47
    ld a, [$d830]                                 ; $7042: $fa $30 $d8
    inc a                                         ; $7045: $3c

jr_041_7046:
    rrc b                                         ; $7046: $cb $08
    dec a                                         ; $7048: $3d
    jr nz, jr_041_7046                            ; $7049: $20 $fb

    rlc b                                         ; $704b: $cb $00
    bit 0, b                                      ; $704d: $cb $40
    jr nz, jr_041_7066                            ; $704f: $20 $15

jr_041_7051:
    call Call_000_0684                            ; $7051: $cd $84 $06
    ld a, [$c3f8]                                 ; $7054: $fa $f8 $c3
    rst $18                                       ; $7057: $df

    db $0c, $05

    rst $18                                       ; $705a: $df

    db $1c, $05

    rst $18                                       ; $705d: $df

    db $14, $05

    call Call_000_2e3b                            ; $7060: $cd $3b $2e
    call Call_000_068a                            ; $7063: $cd $8a $06

jr_041_7066:
    pop bc                                        ; $7066: $c1
    pop af                                        ; $7067: $f1
    cp $ff                                        ; $7068: $fe $ff
    jr z, jr_041_7078                             ; $706a: $28 $0c

    add a                                         ; $706c: $87
    add c                                         ; $706d: $81
    ld c, a                                       ; $706e: $4f
    jr nc, jr_041_7072                            ; $706f: $30 $01

    inc b                                         ; $7071: $04

jr_041_7072:
    ld h, b                                       ; $7072: $60
    ld l, c                                       ; $7073: $69
    ld a, [hl+]                                   ; $7074: $2a
    ld h, [hl]                                    ; $7075: $66
    ld l, a                                       ; $7076: $6f
    jp hl                                         ; $7077: $e9


Jump_041_7078:
jr_041_7078:
    call Call_041_707c                            ; $7078: $cd $7c $70
    ret                                           ; $707b: $c9


Call_041_707c:
    xor a                                         ; $707c: $af
    ld [$c3f9], a                                 ; $707d: $ea $f9 $c3
    ld [$c3fa], a                                 ; $7080: $ea $fa $c3
    ld [$c3fc], a                                 ; $7083: $ea $fc $c3
    ld [$c3fb], a                                 ; $7086: $ea $fb $c3
    ret                                           ; $7089: $c9


Call_041_708a:
    push af                                       ; $708a: $f5
    push bc                                       ; $708b: $c5
    push de                                       ; $708c: $d5
    push hl                                       ; $708d: $e5
    ld a, [$c3fc]                                 ; $708e: $fa $fc $c3
    bit 4, a                                      ; $7091: $cb $67
    jp nz, Jump_041_71d6                          ; $7093: $c2 $d6 $71

    bit 5, a                                      ; $7096: $cb $6f
    jp nz, Jump_041_7141                          ; $7098: $c2 $41 $71

    bit 6, a                                      ; $709b: $cb $77
    jr nz, jr_041_70a7                            ; $709d: $20 $08

    pop hl                                        ; $709f: $e1
    pop de                                        ; $70a0: $d1
    pop bc                                        ; $70a1: $c1
    pop af                                        ; $70a2: $f1
    ret                                           ; $70a3: $c9


    call Call_000_0684                            ; $70a4: $cd $84 $06

jr_041_70a7:
    ld a, [$c818]                                 ; $70a7: $fa $18 $c8
    bit 0, a                                      ; $70aa: $cb $47
    jp z, Jump_041_70cf                           ; $70ac: $ca $cf $70

    ld l, $dd                                     ; $70af: $2e $dd
    ld de, $0a01                                  ; $70b1: $11 $01 $0a
    call Call_041_7bb4                            ; $70b4: $cd $b4 $7b
    call Call_000_2e3b                            ; $70b7: $cd $3b $2e
    ld l, $de                                     ; $70ba: $2e $de
    ld de, $0b01                                  ; $70bc: $11 $01 $0b
    call Call_041_7bb4                            ; $70bf: $cd $b4 $7b
    call Call_000_2e3b                            ; $70c2: $cd $3b $2e
    ld l, $df                                     ; $70c5: $2e $df
    ld de, $0c01                                  ; $70c7: $11 $01 $0c
    call Call_041_7bb4                            ; $70ca: $cd $b4 $7b
    jr jr_041_70ed                                ; $70cd: $18 $1e

Jump_041_70cf:
    ld l, $da                                     ; $70cf: $2e $da
    ld de, $0a01                                  ; $70d1: $11 $01 $0a
    call Call_041_7bb4                            ; $70d4: $cd $b4 $7b
    call Call_000_2e3b                            ; $70d7: $cd $3b $2e
    ld l, $db                                     ; $70da: $2e $db
    ld de, $0b01                                  ; $70dc: $11 $01 $0b
    call Call_041_7bb4                            ; $70df: $cd $b4 $7b
    call Call_000_2e3b                            ; $70e2: $cd $3b $2e
    ld l, $dc                                     ; $70e5: $2e $dc
    ld de, $0c01                                  ; $70e7: $11 $01 $0c
    call Call_041_7bb4                            ; $70ea: $cd $b4 $7b

jr_041_70ed:
    call Call_000_2e3b                            ; $70ed: $cd $3b $2e
    ld a, [$c818]                                 ; $70f0: $fa $18 $c8
    bit 1, a                                      ; $70f3: $cb $4f
    jp z, Jump_041_7118                           ; $70f5: $ca $18 $71

    ld l, $dd                                     ; $70f8: $2e $dd
    ld de, $0a03                                  ; $70fa: $11 $03 $0a
    call Call_041_7bb4                            ; $70fd: $cd $b4 $7b
    call Call_000_2e3b                            ; $7100: $cd $3b $2e
    ld l, $de                                     ; $7103: $2e $de
    ld de, $0b03                                  ; $7105: $11 $03 $0b
    call Call_041_7bb4                            ; $7108: $cd $b4 $7b
    call Call_000_2e3b                            ; $710b: $cd $3b $2e
    ld l, $df                                     ; $710e: $2e $df
    ld de, $0c03                                  ; $7110: $11 $03 $0c
    call Call_041_7bb4                            ; $7113: $cd $b4 $7b
    jr jr_041_7136                                ; $7116: $18 $1e

Jump_041_7118:
    ld l, $da                                     ; $7118: $2e $da
    ld de, $0a03                                  ; $711a: $11 $03 $0a
    call Call_041_7bb4                            ; $711d: $cd $b4 $7b
    call Call_000_2e3b                            ; $7120: $cd $3b $2e
    ld l, $db                                     ; $7123: $2e $db
    ld de, $0b03                                  ; $7125: $11 $03 $0b
    call Call_041_7bb4                            ; $7128: $cd $b4 $7b
    call Call_000_2e3b                            ; $712b: $cd $3b $2e
    ld l, $dc                                     ; $712e: $2e $dc
    ld de, $0c03                                  ; $7130: $11 $03 $0c
    call Call_041_7bb4                            ; $7133: $cd $b4 $7b

jr_041_7136:
    call Call_000_2e3b                            ; $7136: $cd $3b $2e
    call Call_000_068a                            ; $7139: $cd $8a $06
    pop hl                                        ; $713c: $e1
    pop de                                        ; $713d: $d1
    pop bc                                        ; $713e: $c1
    pop af                                        ; $713f: $f1
    ret                                           ; $7140: $c9


Jump_041_7141:
    ld a, [$c82d]                                 ; $7141: $fa $2d $c8
    and $7f                                       ; $7144: $e6 $7f
    and a                                         ; $7146: $a7
    jr z, jr_041_714f                             ; $7147: $28 $06

    dec a                                         ; $7149: $3d
    jr z, jr_041_717c                             ; $714a: $28 $30

    jp Jump_041_71a9                              ; $714c: $c3 $a9 $71


jr_041_714f:
    ld l, $db                                     ; $714f: $2e $db
    ld de, $0905                                  ; $7151: $11 $05 $09
    call Call_041_7bb4                            ; $7154: $cd $b4 $7b
    ld l, $dc                                     ; $7157: $2e $dc
    ld de, $0a05                                  ; $7159: $11 $05 $0a
    call Call_041_7bb4                            ; $715c: $cd $b4 $7b
    ld l, $dd                                     ; $715f: $2e $dd
    ld de, $0b05                                  ; $7161: $11 $05 $0b
    call Call_041_7bb4                            ; $7164: $cd $b4 $7b
    ld l, $de                                     ; $7167: $2e $de
    ld de, $0c05                                  ; $7169: $11 $05 $0c
    call Call_041_7bb4                            ; $716c: $cd $b4 $7b
    ld l, $df                                     ; $716f: $2e $df
    ld de, $0d05                                  ; $7171: $11 $05 $0d
    call Call_041_7bb4                            ; $7174: $cd $b4 $7b
    pop hl                                        ; $7177: $e1
    pop de                                        ; $7178: $d1
    pop bc                                        ; $7179: $c1
    pop af                                        ; $717a: $f1
    ret                                           ; $717b: $c9


jr_041_717c:
    ld l, $d6                                     ; $717c: $2e $d6
    ld de, $0905                                  ; $717e: $11 $05 $09
    call Call_041_7bb4                            ; $7181: $cd $b4 $7b
    ld l, $d7                                     ; $7184: $2e $d7
    ld de, $0a05                                  ; $7186: $11 $05 $0a
    call Call_041_7bb4                            ; $7189: $cd $b4 $7b
    ld l, $d8                                     ; $718c: $2e $d8
    ld de, $0b05                                  ; $718e: $11 $05 $0b
    call Call_041_7bb4                            ; $7191: $cd $b4 $7b
    ld l, $d9                                     ; $7194: $2e $d9
    ld de, $0c05                                  ; $7196: $11 $05 $0c
    call Call_041_7bb4                            ; $7199: $cd $b4 $7b
    ld l, $da                                     ; $719c: $2e $da
    ld de, $0d05                                  ; $719e: $11 $05 $0d
    call Call_041_7bb4                            ; $71a1: $cd $b4 $7b
    pop hl                                        ; $71a4: $e1
    pop de                                        ; $71a5: $d1
    pop bc                                        ; $71a6: $c1
    pop af                                        ; $71a7: $f1
    ret                                           ; $71a8: $c9


Jump_041_71a9:
    ld l, $d1                                     ; $71a9: $2e $d1
    ld de, $0905                                  ; $71ab: $11 $05 $09
    call Call_041_7bb4                            ; $71ae: $cd $b4 $7b
    ld l, $d2                                     ; $71b1: $2e $d2
    ld de, $0a05                                  ; $71b3: $11 $05 $0a
    call Call_041_7bb4                            ; $71b6: $cd $b4 $7b
    ld l, $d3                                     ; $71b9: $2e $d3
    ld de, $0b05                                  ; $71bb: $11 $05 $0b
    call Call_041_7bb4                            ; $71be: $cd $b4 $7b
    ld l, $d4                                     ; $71c1: $2e $d4
    ld de, $0c05                                  ; $71c3: $11 $05 $0c
    call Call_041_7bb4                            ; $71c6: $cd $b4 $7b
    ld l, $d5                                     ; $71c9: $2e $d5
    ld de, $0d05                                  ; $71cb: $11 $05 $0d
    call Call_041_7bb4                            ; $71ce: $cd $b4 $7b
    pop hl                                        ; $71d1: $e1
    pop de                                        ; $71d2: $d1
    pop bc                                        ; $71d3: $c1
    pop af                                        ; $71d4: $f1
    ret                                           ; $71d5: $c9


Jump_041_71d6:
    ld a, [$c82d]                                 ; $71d6: $fa $2d $c8
    and $7f                                       ; $71d9: $e6 $7f
    and a                                         ; $71db: $a7
    jp z, Jump_041_71e5                           ; $71dc: $ca $e5 $71

    dec a                                         ; $71df: $3d
    jr z, jr_041_7212                             ; $71e0: $28 $30

    jp Jump_041_723f                              ; $71e2: $c3 $3f $72


Jump_041_71e5:
    ld l, $db                                     ; $71e5: $2e $db
    ld de, $0907                                  ; $71e7: $11 $07 $09
    call Call_041_7bb4                            ; $71ea: $cd $b4 $7b
    ld l, $dc                                     ; $71ed: $2e $dc
    ld de, $0a07                                  ; $71ef: $11 $07 $0a
    call Call_041_7bb4                            ; $71f2: $cd $b4 $7b
    ld l, $dd                                     ; $71f5: $2e $dd
    ld de, $0b07                                  ; $71f7: $11 $07 $0b
    call Call_041_7bb4                            ; $71fa: $cd $b4 $7b
    ld l, $de                                     ; $71fd: $2e $de
    ld de, $0c07                                  ; $71ff: $11 $07 $0c
    call Call_041_7bb4                            ; $7202: $cd $b4 $7b
    ld l, $df                                     ; $7205: $2e $df
    ld de, $0d07                                  ; $7207: $11 $07 $0d
    call Call_041_7bb4                            ; $720a: $cd $b4 $7b
    pop hl                                        ; $720d: $e1
    pop de                                        ; $720e: $d1
    pop bc                                        ; $720f: $c1
    pop af                                        ; $7210: $f1
    ret                                           ; $7211: $c9


jr_041_7212:
    ld l, $d6                                     ; $7212: $2e $d6
    ld de, $0907                                  ; $7214: $11 $07 $09
    call Call_041_7bb4                            ; $7217: $cd $b4 $7b
    ld l, $d7                                     ; $721a: $2e $d7
    ld de, $0a07                                  ; $721c: $11 $07 $0a
    call Call_041_7bb4                            ; $721f: $cd $b4 $7b
    ld l, $d8                                     ; $7222: $2e $d8
    ld de, $0b07                                  ; $7224: $11 $07 $0b
    call Call_041_7bb4                            ; $7227: $cd $b4 $7b
    ld l, $d9                                     ; $722a: $2e $d9
    ld de, $0c07                                  ; $722c: $11 $07 $0c
    call Call_041_7bb4                            ; $722f: $cd $b4 $7b
    ld l, $da                                     ; $7232: $2e $da
    ld de, $0d07                                  ; $7234: $11 $07 $0d
    call Call_041_7bb4                            ; $7237: $cd $b4 $7b
    pop hl                                        ; $723a: $e1
    pop de                                        ; $723b: $d1
    pop bc                                        ; $723c: $c1
    pop af                                        ; $723d: $f1
    ret                                           ; $723e: $c9


Jump_041_723f:
    ld l, $d1                                     ; $723f: $2e $d1
    ld de, $0907                                  ; $7241: $11 $07 $09
    call Call_041_7bb4                            ; $7244: $cd $b4 $7b
    ld l, $d2                                     ; $7247: $2e $d2
    ld de, $0a07                                  ; $7249: $11 $07 $0a
    call Call_041_7bb4                            ; $724c: $cd $b4 $7b
    ld l, $d3                                     ; $724f: $2e $d3
    ld de, $0b07                                  ; $7251: $11 $07 $0b
    call Call_041_7bb4                            ; $7254: $cd $b4 $7b
    ld l, $d4                                     ; $7257: $2e $d4
    ld de, $0c07                                  ; $7259: $11 $07 $0c
    call Call_041_7bb4                            ; $725c: $cd $b4 $7b
    ld l, $d5                                     ; $725f: $2e $d5
    ld de, $0d07                                  ; $7261: $11 $07 $0d
    call Call_041_7bb4                            ; $7264: $cd $b4 $7b
    pop hl                                        ; $7267: $e1
    pop de                                        ; $7268: $d1
    pop bc                                        ; $7269: $c1
    pop af                                        ; $726a: $f1
    ret                                           ; $726b: $c9


Call_041_726c:
    push af                                       ; $726c: $f5
    push bc                                       ; $726d: $c5
    push hl                                       ; $726e: $e5
    push de                                       ; $726f: $d5
    ld a, [$c3f8]                                 ; $7270: $fa $f8 $c3
    sla a                                         ; $7273: $cb $27
    sla a                                         ; $7275: $cb $27
    ld b, $00                                     ; $7277: $06 $00
    ld c, a                                       ; $7279: $4f
    ld hl, $d800                                  ; $727a: $21 $00 $d8
    add hl, bc                                    ; $727d: $09
    ld c, [hl]                                    ; $727e: $4e
    inc hl                                        ; $727f: $23
    ld b, [hl]                                    ; $7280: $46
    ld h, b                                       ; $7281: $60
    ld l, c                                       ; $7282: $69
    inc hl                                        ; $7283: $23
    ld d, [hl]                                    ; $7284: $56
    inc hl                                        ; $7285: $23
    ld e, [hl]                                    ; $7286: $5e
    pop hl                                        ; $7287: $e1
    ld a, h                                       ; $7288: $7c
    add d                                         ; $7289: $82
    ld d, a                                       ; $728a: $57
    ld a, l                                       ; $728b: $7d
    add e                                         ; $728c: $83
    ld e, a                                       ; $728d: $5f
    rst $18                                       ; $728e: $df

    db $66, $05

    ld h, d                                       ; $7291: $62
    ld l, e                                       ; $7292: $6b
    ld de, $3000                                  ; $7293: $11 $00 $30
    add hl, de                                    ; $7296: $19
    ld de, $9800                                  ; $7297: $11 $00 $98
    add hl, de                                    ; $729a: $19
    ld d, h                                       ; $729b: $54
    ld e, l                                       ; $729c: $5d
    pop hl                                        ; $729d: $e1
    pop bc                                        ; $729e: $c1
    pop af                                        ; $729f: $f1
    ret                                           ; $72a0: $c9


Call_041_72a1:
    ld a, $06                                     ; $72a1: $3e $06
    ldh [$96], a                                  ; $72a3: $e0 $96
    ldh [rSVBK], a                                ; $72a5: $e0 $70
    ld a, [$c3fc]                                 ; $72a7: $fa $fc $c3
    and $0f                                       ; $72aa: $e6 $0f
    cp $01                                        ; $72ac: $fe $01
    jr z, jr_041_72b6                             ; $72ae: $28 $06

    cp $02                                        ; $72b0: $fe $02
    jr z, jr_041_72c3                             ; $72b2: $28 $0f

    jr jr_041_72ce                                ; $72b4: $18 $18

jr_041_72b6:
    rst $08                                       ; $72b6: $cf
    adc e                                         ; $72b7: $8b
    ld a, [$c816]                                 ; $72b8: $fa $16 $c8
    ld b, $10                                     ; $72bb: $06 $10
    sub b                                         ; $72bd: $90
    ld [$c816], a                                 ; $72be: $ea $16 $c8
    jr jr_041_72ce                                ; $72c1: $18 $0b

jr_041_72c3:
    rst $08                                       ; $72c3: $cf
    adc e                                         ; $72c4: $8b
    ld a, [$c816]                                 ; $72c5: $fa $16 $c8
    ld b, $10                                     ; $72c8: $06 $10
    add b                                         ; $72ca: $80
    ld [$c816], a                                 ; $72cb: $ea $16 $c8

jr_041_72ce:
    rst $18                                       ; $72ce: $df
    inc c                                         ; $72cf: $0c
    ld [de], a                                    ; $72d0: $12
    ld a, $05                                     ; $72d1: $3e $05
    ldh [$96], a                                  ; $72d3: $e0 $96
    ldh [rSVBK], a                                ; $72d5: $e0 $70
    ret                                           ; $72d7: $c9


Call_041_72d8:
    ld a, $06                                     ; $72d8: $3e $06
    ldh [$96], a                                  ; $72da: $e0 $96
    ldh [rSVBK], a                                ; $72dc: $e0 $70
    ld a, [$c3fc]                                 ; $72de: $fa $fc $c3
    and $0f                                       ; $72e1: $e6 $0f
    cp $01                                        ; $72e3: $fe $01
    jr z, jr_041_72ed                             ; $72e5: $28 $06

    cp $02                                        ; $72e7: $fe $02
    jr z, jr_041_72fd                             ; $72e9: $28 $12

    jr jr_041_730d                                ; $72eb: $18 $20

jr_041_72ed:
    ld a, [$c815]                                 ; $72ed: $fa $15 $c8
    and a                                         ; $72f0: $a7
    jr z, jr_041_72fb                             ; $72f1: $28 $08

    rst $08                                       ; $72f3: $cf
    adc e                                         ; $72f4: $8b
    dec a                                         ; $72f5: $3d
    ld [$c815], a                                 ; $72f6: $ea $15 $c8
    jr jr_041_730d                                ; $72f9: $18 $12

jr_041_72fb:
    jr jr_041_730d                                ; $72fb: $18 $10

jr_041_72fd:
    ld a, [$c815]                                 ; $72fd: $fa $15 $c8
    cp $13                                        ; $7300: $fe $13
    jr z, jr_041_730d                             ; $7302: $28 $09

    rst $08                                       ; $7304: $cf
    adc e                                         ; $7305: $8b
    inc a                                         ; $7306: $3c
    ld [$c815], a                                 ; $7307: $ea $15 $c8
    jp Jump_041_730d                              ; $730a: $c3 $0d $73


Jump_041_730d:
jr_041_730d:
    rst $18                                       ; $730d: $df
    inc c                                         ; $730e: $0c
    ld [de], a                                    ; $730f: $12
    ld a, $05                                     ; $7310: $3e $05
    ldh [$96], a                                  ; $7312: $e0 $96
    ldh [rSVBK], a                                ; $7314: $e0 $70
    ret                                           ; $7316: $c9


    inc hl                                        ; $7317: $23
    ld [hl], e                                    ; $7318: $73
    add hl, hl                                    ; $7319: $29
    ld [hl], e                                    ; $731a: $73
    cpl                                           ; $731b: $2f
    ld [hl], e                                    ; $731c: $73
    dec [hl]                                      ; $731d: $35
    ld [hl], e                                    ; $731e: $73
    ld c, c                                       ; $731f: $49
    ld [hl], e                                    ; $7320: $73
    sbc d                                         ; $7321: $9a
    ld [hl], e                                    ; $7322: $73
    call Call_041_7879                            ; $7323: $cd $79 $78
    jp Jump_041_7078                              ; $7326: $c3 $78 $70


    call Call_041_7882                            ; $7329: $cd $82 $78
    jp Jump_041_7078                              ; $732c: $c3 $78 $70


    call Call_041_78a5                            ; $732f: $cd $a5 $78
    jp Jump_041_7078                              ; $7332: $c3 $78 $70


    call Call_041_78c6                            ; $7335: $cd $c6 $78
    ld a, $03                                     ; $7338: $3e $03
    ld [$c3f9], a                                 ; $733a: $ea $f9 $c3
    ld hl, $147f                                  ; $733d: $21 $7f $14
    ld bc, $7317                                  ; $7340: $01 $17 $73
    ld de, $0502                                  ; $7343: $11 $02 $05
    jp Jump_041_6ff4                              ; $7346: $c3 $f4 $6f


    ld a, $20                                     ; $7349: $3e $20
    rst $18                                       ; $734b: $df
    inc d                                         ; $734c: $14
    db $10                                        ; $734d: $10
    ld a, [hl]                                    ; $734e: $7e
    cp $00                                        ; $734f: $fe $00
    jr z, jr_041_737b                             ; $7351: $28 $28

    ld hl, $1490                                  ; $7353: $21 $90 $14
    rst $18                                       ; $7356: $df
    ld c, $0a                                     ; $7357: $0e $0a
    ld a, $80                                     ; $7359: $3e $80
    rst $18                                       ; $735b: $df
    ld a, [bc]                                    ; $735c: $0a
    ld a, [bc]                                    ; $735d: $0a
    ld a, $01                                     ; $735e: $3e $01
    ld [$c3f9], a                                 ; $7360: $ea $f9 $c3
    rst $18                                       ; $7363: $df
    ld [de], a                                    ; $7364: $12
    ld a, [bc]                                    ; $7365: $0a
    rst $18                                       ; $7366: $df
    inc c                                         ; $7367: $0c
    ld a, [bc]                                    ; $7368: $0a
    push af                                       ; $7369: $f5
    ld a, $05                                     ; $736a: $3e $05
    rst $18                                       ; $736c: $df
    inc b                                         ; $736d: $04
    ld a, [bc]                                    ; $736e: $0a
    pop af                                        ; $736f: $f1
    and a                                         ; $7370: $a7
    jr nz, jr_041_7381                            ; $7371: $20 $0e

    ld a, $81                                     ; $7373: $3e $81
    ld [$c3fd], a                                 ; $7375: $ea $fd $c3
    jp Jump_041_7078                              ; $7378: $c3 $78 $70


jr_041_737b:
    call Call_041_7935                            ; $737b: $cd $35 $79
    jp Jump_041_7078                              ; $737e: $c3 $78 $70


jr_041_7381:
    call Call_041_707c                            ; $7381: $cd $7c $70
    ld hl, $c3fc                                  ; $7384: $21 $fc $c3
    set 7, [hl]                                   ; $7387: $cb $fe
    ld a, $04                                     ; $7389: $3e $04
    ld [$c3f9], a                                 ; $738b: $ea $f9 $c3
    ld hl, $147f                                  ; $738e: $21 $7f $14
    ld bc, $7317                                  ; $7391: $01 $17 $73
    ld de, $0502                                  ; $7394: $11 $02 $05
    jp Jump_041_6ff4                              ; $7397: $c3 $f4 $6f


    ld a, [$c834]                                 ; $739a: $fa $34 $c8
    cp $02                                        ; $739d: $fe $02
    jr z, jr_041_73a9                             ; $739f: $28 $08

    ld hl, $148c                                  ; $73a1: $21 $8c $14
    rst $18                                       ; $73a4: $df
    ld c, $0a                                     ; $73a5: $0e $0a
    jr jr_041_73af                                ; $73a7: $18 $06

jr_041_73a9:
    ld hl, $148f                                  ; $73a9: $21 $8f $14
    rst $18                                       ; $73ac: $df
    ld c, $0a                                     ; $73ad: $0e $0a

jr_041_73af:
    ld a, $80                                     ; $73af: $3e $80
    rst $18                                       ; $73b1: $df
    ld a, [bc]                                    ; $73b2: $0a
    ld a, [bc]                                    ; $73b3: $0a
    ld a, $01                                     ; $73b4: $3e $01
    ld [$c3f9], a                                 ; $73b6: $ea $f9 $c3
    rst $18                                       ; $73b9: $df
    ld [de], a                                    ; $73ba: $12
    ld a, [bc]                                    ; $73bb: $0a
    rst $18                                       ; $73bc: $df
    inc c                                         ; $73bd: $0c
    ld a, [bc]                                    ; $73be: $0a
    push af                                       ; $73bf: $f5
    ld a, $05                                     ; $73c0: $3e $05
    rst $18                                       ; $73c2: $df
    inc b                                         ; $73c3: $04
    ld a, [bc]                                    ; $73c4: $0a
    pop af                                        ; $73c5: $f1
    and a                                         ; $73c6: $a7
    jr nz, jr_041_73d1                            ; $73c7: $20 $08

    ld a, $80                                     ; $73c9: $3e $80
    ld [$c3fd], a                                 ; $73cb: $ea $fd $c3
    jp Jump_041_7078                              ; $73ce: $c3 $78 $70


jr_041_73d1:
    call Call_041_7a53                            ; $73d1: $cd $53 $7a
    ld a, $05                                     ; $73d4: $3e $05
    ld [$c3f9], a                                 ; $73d6: $ea $f9 $c3
    jp Jump_041_6ff4                              ; $73d9: $c3 $f4 $6f


    db $e4                                        ; $73dc: $e4
    ld [hl], e                                    ; $73dd: $73
    ld [$f073], a                                 ; $73de: $ea $73 $f0
    ld [hl], e                                    ; $73e1: $73
    ld [bc], a                                    ; $73e2: $02
    ld [hl], h                                    ; $73e3: $74
    call Call_041_7943                            ; $73e4: $cd $43 $79
    jp Jump_041_7078                              ; $73e7: $c3 $78 $70


    call Call_041_7965                            ; $73ea: $cd $65 $79
    jp Jump_041_7078                              ; $73ed: $c3 $78 $70


    call Call_041_7969                            ; $73f0: $cd $69 $79
    ld a, [$d830]                                 ; $73f3: $fa $30 $d8
    ld [$c3f9], a                                 ; $73f6: $ea $f9 $c3
    ld bc, $73dc                                  ; $73f9: $01 $dc $73
    ld a, [$c3f8]                                 ; $73fc: $fa $f8 $c3
    jp Jump_041_701e                              ; $73ff: $c3 $1e $70


    xor a                                         ; $7402: $af
    ld [$c4b8], a                                 ; $7403: $ea $b8 $c4
    jp Jump_041_79a7                              ; $7406: $c3 $a7 $79


    inc de                                        ; $7409: $13
    ld [hl], h                                    ; $740a: $74
    add hl, de                                    ; $740b: $19
    ld [hl], h                                    ; $740c: $74
    rra                                           ; $740d: $1f
    ld [hl], h                                    ; $740e: $74
    dec h                                         ; $740f: $25
    ld [hl], h                                    ; $7410: $74
    scf                                           ; $7411: $37
    ld [hl], h                                    ; $7412: $74
    rst $18                                       ; $7413: $df
    ld e, d                                       ; $7414: $5a
    ld a, [bc]                                    ; $7415: $0a
    jp Jump_041_7078                              ; $7416: $c3 $78 $70


    call Call_041_7943                            ; $7419: $cd $43 $79
    jp Jump_041_7078                              ; $741c: $c3 $78 $70


    call Call_041_7965                            ; $741f: $cd $65 $79
    jp Jump_041_7078                              ; $7422: $c3 $78 $70


    call Call_041_7969                            ; $7425: $cd $69 $79
    ld a, [$d830]                                 ; $7428: $fa $30 $d8
    ld [$c3f9], a                                 ; $742b: $ea $f9 $c3
    ld bc, $7409                                  ; $742e: $01 $09 $74
    ld a, [$c3f8]                                 ; $7431: $fa $f8 $c3
    jp Jump_041_701e                              ; $7434: $c3 $1e $70


    ld a, $01                                     ; $7437: $3e $01
    ld [$c4b8], a                                 ; $7439: $ea $b8 $c4
    jp Jump_041_79a7                              ; $743c: $c3 $a7 $79


    ld c, e                                       ; $743f: $4b
    ld [hl], h                                    ; $7440: $74
    ld d, c                                       ; $7441: $51
    ld [hl], h                                    ; $7442: $74
    ld d, a                                       ; $7443: $57
    ld [hl], h                                    ; $7444: $74
    ld e, l                                       ; $7445: $5d
    ld [hl], h                                    ; $7446: $74
    ld l, e                                       ; $7447: $6b
    ld [hl], h                                    ; $7448: $74

    db $ae, $74

    call Call_041_7879                            ; $744b: $cd $79 $78
    jp Jump_041_7078                              ; $744e: $c3 $78 $70


    call Call_041_7882                            ; $7451: $cd $82 $78
    jp Jump_041_7078                              ; $7454: $c3 $78 $70


    call Call_041_788b                            ; $7457: $cd $8b $78
    jp Jump_041_7078                              ; $745a: $c3 $78 $70


    call Call_041_78c6                            ; $745d: $cd $c6 $78
    call Call_041_7aef                            ; $7460: $cd $ef $7a
    ld a, $03                                     ; $7463: $3e $03
    ld [$c3f9], a                                 ; $7465: $ea $f9 $c3
    jp Jump_041_6ff4                              ; $7468: $c3 $f4 $6f


    ld a, $20                                     ; $746b: $3e $20
    rst $18                                       ; $746d: $df
    inc d                                         ; $746e: $14
    db $10                                        ; $746f: $10
    ld a, [hl]                                    ; $7470: $7e
    cp $00                                        ; $7471: $fe $00
    jr z, jr_041_749d                             ; $7473: $28 $28

    ld hl, $1490                                  ; $7475: $21 $90 $14
    rst $18                                       ; $7478: $df
    ld c, $0a                                     ; $7479: $0e $0a
    ld a, $80                                     ; $747b: $3e $80
    rst $18                                       ; $747d: $df
    ld a, [bc]                                    ; $747e: $0a
    ld a, [bc]                                    ; $747f: $0a
    ld a, $01                                     ; $7480: $3e $01
    ld [$c3f9], a                                 ; $7482: $ea $f9 $c3
    rst $18                                       ; $7485: $df
    ld [de], a                                    ; $7486: $12
    ld a, [bc]                                    ; $7487: $0a
    rst $18                                       ; $7488: $df
    inc c                                         ; $7489: $0c
    ld a, [bc]                                    ; $748a: $0a
    push af                                       ; $748b: $f5
    ld a, $05                                     ; $748c: $3e $05
    rst $18                                       ; $748e: $df
    inc b                                         ; $748f: $04
    ld a, [bc]                                    ; $7490: $0a
    pop af                                        ; $7491: $f1
    and a                                         ; $7492: $a7
    jr nz, jr_041_74a3                            ; $7493: $20 $0e

    ld a, $81                                     ; $7495: $3e $81
    ld [$c3fd], a                                 ; $7497: $ea $fd $c3
    jp Jump_041_7078                              ; $749a: $c3 $78 $70


jr_041_749d:
    call Call_041_7935                            ; $749d: $cd $35 $79
    jp Jump_041_7078                              ; $74a0: $c3 $78 $70


jr_041_74a3:
    call Call_041_7aef                            ; $74a3: $cd $ef $7a
    ld a, $04                                     ; $74a6: $3e $04
    ld [$c3f9], a                                 ; $74a8: $ea $f9 $c3
    jp Jump_041_6ff4                              ; $74ab: $c3 $f4 $6f


    ld a, [$c2a5]                                 ; $74ae: $fa $a5 $c2
    and $0f                                       ; $74b1: $e6 $0f
    cp $0f                                        ; $74b3: $fe $0f
    jr nz, jr_041_74ea                            ; $74b5: $20 $33

    ld hl, $148c                                  ; $74b7: $21 $8c $14
    rst $18                                       ; $74ba: $df

    db $0e, $0a

    ld a, $80                                     ; $74bd: $3e $80
    rst $18                                       ; $74bf: $df

    db $0a, $0a

    ld a, $01                                     ; $74c2: $3e $01
    ld [$c3f9], a                                 ; $74c4: $ea $f9 $c3
    rst $18                                       ; $74c7: $df

    db $12, $0a

    rst $18                                       ; $74ca: $df

    db $0c, $0a

    push af                                       ; $74cd: $f5
    ld a, $05                                     ; $74ce: $3e $05
    rst $18                                       ; $74d0: $df

    db $04, $0a

    pop af                                        ; $74d3: $f1
    and a                                         ; $74d4: $a7
    jr nz, jr_041_74df                            ; $74d5: $20 $08

    ld a, $80                                     ; $74d7: $3e $80
    ld [$c3fd], a                                 ; $74d9: $ea $fd $c3
    jp Jump_041_7078                              ; $74dc: $c3 $78 $70


jr_041_74df:
    call Call_041_7aef                            ; $74df: $cd $ef $7a
    ld a, $05                                     ; $74e2: $3e $05
    ld [$c3f9], a                                 ; $74e4: $ea $f9 $c3
    jp Jump_041_6ff4                              ; $74e7: $c3 $f4 $6f


jr_041_74ea:
    ld hl, $148b                                  ; $74ea: $21 $8b $14
    rst $18                                       ; $74ed: $df
    ld c, $0a                                     ; $74ee: $0e $0a
    ld a, $80                                     ; $74f0: $3e $80
    rst $18                                       ; $74f2: $df
    ld a, [bc]                                    ; $74f3: $0a
    ld a, [bc]                                    ; $74f4: $0a
    rst $18                                       ; $74f5: $df
    ld [de], a                                    ; $74f6: $12
    ld a, [bc]                                    ; $74f7: $0a
    rst $18                                       ; $74f8: $df
    inc c                                         ; $74f9: $0c
    ld a, [bc]                                    ; $74fa: $0a
    push af                                       ; $74fb: $f5
    ld a, $05                                     ; $74fc: $3e $05
    rst $18                                       ; $74fe: $df
    inc b                                         ; $74ff: $04
    ld a, [bc]                                    ; $7500: $0a
    pop af                                        ; $7501: $f1
    and a                                         ; $7502: $a7
    jr nz, jr_041_751e                            ; $7503: $20 $19

    ld hl, $c814                                  ; $7505: $21 $14 $c8
    ld a, [hl]                                    ; $7508: $7e
    cp $ff                                        ; $7509: $fe $ff
    jr z, jr_041_750e                             ; $750b: $28 $01

    inc [hl]                                      ; $750d: $34

jr_041_750e:
    rst $18                                       ; $750e: $df
    inc [hl]                                      ; $750f: $34
    ld [bc], a                                    ; $7510: $02
    ld a, $80                                     ; $7511: $3e $80
    ld [$c3fd], a                                 ; $7513: $ea $fd $c3
    ld a, $01                                     ; $7516: $3e $01
    ld [$c2a6], a                                 ; $7518: $ea $a6 $c2
    jp Jump_041_7078                              ; $751b: $c3 $78 $70


jr_041_751e:
    cp $ff                                        ; $751e: $fe $ff
    jr nz, jr_041_752d                            ; $7520: $20 $0b

    call Call_041_7aef                            ; $7522: $cd $ef $7a
    ld a, $05                                     ; $7525: $3e $05
    ld [$c3f9], a                                 ; $7527: $ea $f9 $c3
    jp Jump_041_6ff4                              ; $752a: $c3 $f4 $6f


jr_041_752d:
    ld a, [$c834]                                 ; $752d: $fa $34 $c8
    cp $03                                        ; $7530: $fe $03
    jr z, jr_041_753c                             ; $7532: $28 $08

    ld hl, $148e                                  ; $7534: $21 $8e $14
    rst $18                                       ; $7537: $df
    ld c, $0a                                     ; $7538: $0e $0a
    jr jr_041_7542                                ; $753a: $18 $06

jr_041_753c:
    ld hl, $148c                                  ; $753c: $21 $8c $14
    rst $18                                       ; $753f: $df
    ld c, $0a                                     ; $7540: $0e $0a

jr_041_7542:
    ld a, $80                                     ; $7542: $3e $80
    rst $18                                       ; $7544: $df
    ld a, [bc]                                    ; $7545: $0a
    ld a, [bc]                                    ; $7546: $0a
    ld a, $01                                     ; $7547: $3e $01
    ld [$c3f9], a                                 ; $7549: $ea $f9 $c3
    rst $18                                       ; $754c: $df
    ld [de], a                                    ; $754d: $12
    ld a, [bc]                                    ; $754e: $0a
    rst $18                                       ; $754f: $df
    inc c                                         ; $7550: $0c
    ld a, [bc]                                    ; $7551: $0a
    push af                                       ; $7552: $f5
    ld a, $05                                     ; $7553: $3e $05
    rst $18                                       ; $7555: $df
    inc b                                         ; $7556: $04
    ld a, [bc]                                    ; $7557: $0a
    pop af                                        ; $7558: $f1
    and a                                         ; $7559: $a7
    jr nz, jr_041_7564                            ; $755a: $20 $08

    ld a, $80                                     ; $755c: $3e $80
    ld [$c3fd], a                                 ; $755e: $ea $fd $c3
    jp Jump_041_7078                              ; $7561: $c3 $78 $70


jr_041_7564:
    call Call_041_7aef                            ; $7564: $cd $ef $7a
    ld a, $05                                     ; $7567: $3e $05
    ld [$c3f9], a                                 ; $7569: $ea $f9 $c3
    jp Jump_041_6ff4                              ; $756c: $c3 $f4 $6f


    ld a, e                                       ; $756f: $7b
    ld [hl], l                                    ; $7570: $75
    add c                                         ; $7571: $81
    ld [hl], l                                    ; $7572: $75
    add a                                         ; $7573: $87
    ld [hl], l                                    ; $7574: $75
    adc l                                         ; $7575: $8d
    ld [hl], l                                    ; $7576: $75
    sbc e                                         ; $7577: $9b
    ld [hl], l                                    ; $7578: $75
    sbc $75                                       ; $7579: $de $75
    call Call_041_7879                            ; $757b: $cd $79 $78
    jp Jump_041_7078                              ; $757e: $c3 $78 $70


    call Call_041_7882                            ; $7581: $cd $82 $78
    jp Jump_041_7078                              ; $7584: $c3 $78 $70


    call Call_041_7898                            ; $7587: $cd $98 $78
    jp Jump_041_7078                              ; $758a: $c3 $78 $70


    call Call_041_78c6                            ; $758d: $cd $c6 $78
    call Call_041_7aef                            ; $7590: $cd $ef $7a
    ld a, $03                                     ; $7593: $3e $03
    ld [$c3f9], a                                 ; $7595: $ea $f9 $c3
    jp Jump_041_6ff4                              ; $7598: $c3 $f4 $6f


    ld a, $20                                     ; $759b: $3e $20
    rst $18                                       ; $759d: $df
    inc d                                         ; $759e: $14
    db $10                                        ; $759f: $10
    ld a, [hl]                                    ; $75a0: $7e
    cp $00                                        ; $75a1: $fe $00
    jr z, jr_041_75cd                             ; $75a3: $28 $28

    ld hl, $1490                                  ; $75a5: $21 $90 $14
    rst $18                                       ; $75a8: $df
    ld c, $0a                                     ; $75a9: $0e $0a
    ld a, $80                                     ; $75ab: $3e $80
    rst $18                                       ; $75ad: $df
    ld a, [bc]                                    ; $75ae: $0a
    ld a, [bc]                                    ; $75af: $0a
    ld a, $01                                     ; $75b0: $3e $01
    ld [$c3f9], a                                 ; $75b2: $ea $f9 $c3
    rst $18                                       ; $75b5: $df
    ld [de], a                                    ; $75b6: $12
    ld a, [bc]                                    ; $75b7: $0a
    rst $18                                       ; $75b8: $df
    inc c                                         ; $75b9: $0c
    ld a, [bc]                                    ; $75ba: $0a
    push af                                       ; $75bb: $f5
    ld a, $05                                     ; $75bc: $3e $05
    rst $18                                       ; $75be: $df
    inc b                                         ; $75bf: $04
    ld a, [bc]                                    ; $75c0: $0a
    pop af                                        ; $75c1: $f1
    and a                                         ; $75c2: $a7
    jr nz, jr_041_75d3                            ; $75c3: $20 $0e

    ld a, $81                                     ; $75c5: $3e $81
    ld [$c3fd], a                                 ; $75c7: $ea $fd $c3
    jp Jump_041_7078                              ; $75ca: $c3 $78 $70


jr_041_75cd:
    call Call_041_7935                            ; $75cd: $cd $35 $79
    jp Jump_041_7078                              ; $75d0: $c3 $78 $70


jr_041_75d3:
    call Call_041_7b1c                            ; $75d3: $cd $1c $7b
    ld a, $04                                     ; $75d6: $3e $04
    ld [$c3f9], a                                 ; $75d8: $ea $f9 $c3
    jp Jump_041_6ff4                              ; $75db: $c3 $f4 $6f


    ld hl, $148b                                  ; $75de: $21 $8b $14
    rst $18                                       ; $75e1: $df
    ld c, $0a                                     ; $75e2: $0e $0a
    ld a, $80                                     ; $75e4: $3e $80
    rst $18                                       ; $75e6: $df
    ld a, [bc]                                    ; $75e7: $0a
    ld a, [bc]                                    ; $75e8: $0a
    rst $18                                       ; $75e9: $df
    ld [de], a                                    ; $75ea: $12
    ld a, [bc]                                    ; $75eb: $0a
    rst $18                                       ; $75ec: $df
    inc c                                         ; $75ed: $0c
    ld a, [bc]                                    ; $75ee: $0a
    push af                                       ; $75ef: $f5
    ld a, $05                                     ; $75f0: $3e $05
    rst $18                                       ; $75f2: $df
    inc b                                         ; $75f3: $04
    ld a, [bc]                                    ; $75f4: $0a
    pop af                                        ; $75f5: $f1
    and a                                         ; $75f6: $a7
    jr nz, jr_041_7612                            ; $75f7: $20 $19

    ld hl, $c814                                  ; $75f9: $21 $14 $c8
    ld a, [hl]                                    ; $75fc: $7e
    cp $ff                                        ; $75fd: $fe $ff
    jr z, jr_041_7602                             ; $75ff: $28 $01

    inc [hl]                                      ; $7601: $34

jr_041_7602:
    rst $18                                       ; $7602: $df
    inc [hl]                                      ; $7603: $34
    ld [bc], a                                    ; $7604: $02
    ld a, $80                                     ; $7605: $3e $80
    ld [$c3fd], a                                 ; $7607: $ea $fd $c3
    ld a, $01                                     ; $760a: $3e $01
    ld [$c2a6], a                                 ; $760c: $ea $a6 $c2
    jp Jump_041_7078                              ; $760f: $c3 $78 $70


jr_041_7612:
    cp $ff                                        ; $7612: $fe $ff
    jr nz, jr_041_7621                            ; $7614: $20 $0b

    call Call_041_7b1c                            ; $7616: $cd $1c $7b
    ld a, $05                                     ; $7619: $3e $05
    ld [$c3f9], a                                 ; $761b: $ea $f9 $c3
    jp Jump_041_6ff4                              ; $761e: $c3 $f4 $6f


jr_041_7621:
    ld hl, $148f                                  ; $7621: $21 $8f $14
    rst $18                                       ; $7624: $df
    ld c, $0a                                     ; $7625: $0e $0a
    ld a, $80                                     ; $7627: $3e $80
    rst $18                                       ; $7629: $df
    ld a, [bc]                                    ; $762a: $0a
    ld a, [bc]                                    ; $762b: $0a
    ld a, $01                                     ; $762c: $3e $01
    ld [$c3f9], a                                 ; $762e: $ea $f9 $c3
    rst $18                                       ; $7631: $df
    ld [de], a                                    ; $7632: $12
    ld a, [bc]                                    ; $7633: $0a
    rst $18                                       ; $7634: $df
    inc c                                         ; $7635: $0c
    ld a, [bc]                                    ; $7636: $0a
    push af                                       ; $7637: $f5
    ld a, $05                                     ; $7638: $3e $05
    rst $18                                       ; $763a: $df
    inc b                                         ; $763b: $04
    ld a, [bc]                                    ; $763c: $0a
    pop af                                        ; $763d: $f1
    and a                                         ; $763e: $a7
    jr nz, jr_041_7649                            ; $763f: $20 $08

    ld a, $80                                     ; $7641: $3e $80
    ld [$c3fd], a                                 ; $7643: $ea $fd $c3
    jp Jump_041_7078                              ; $7646: $c3 $78 $70


jr_041_7649:
    call Call_041_7b1c                            ; $7649: $cd $1c $7b
    ld a, $05                                     ; $764c: $3e $05
    ld [$c3f9], a                                 ; $764e: $ea $f9 $c3
    jp Jump_041_6ff4                              ; $7651: $c3 $f4 $6f


    ld h, d                                       ; $7654: $62
    halt                                          ; $7655: $76
    ld l, b                                       ; $7656: $68
    halt                                          ; $7657: $76
    ld l, [hl]                                    ; $7658: $6e
    halt                                          ; $7659: $76
    ld a, d                                       ; $765a: $7a
    halt                                          ; $765b: $76
    adc h                                         ; $765c: $8c
    halt                                          ; $765d: $76
    sbc [hl]                                      ; $765e: $9e
    halt                                          ; $765f: $76
    xor h                                         ; $7660: $ac
    halt                                          ; $7661: $76
    call Call_041_7879                            ; $7662: $cd $79 $78
    jp Jump_041_7078                              ; $7665: $c3 $78 $70


    call Call_041_7882                            ; $7668: $cd $82 $78
    jp Jump_041_7078                              ; $766b: $c3 $78 $70


    ld a, $80                                     ; $766e: $3e $80
    ld [$c3fd], a                                 ; $7670: $ea $fd $c3
    xor a                                         ; $7673: $af
    ld [$c96c], a                                 ; $7674: $ea $6c $c9
    jp Jump_041_7078                              ; $7677: $c3 $78 $70


    call Call_041_72a1                            ; $767a: $cd $a1 $72
    ld a, [$d830]                                 ; $767d: $fa $30 $d8
    ld [$c3f9], a                                 ; $7680: $ea $f9 $c3
    ld bc, $7654                                  ; $7683: $01 $54 $76
    ld a, [$c3f8]                                 ; $7686: $fa $f8 $c3
    jp Jump_041_701e                              ; $7689: $c3 $1e $70


    call Call_041_72d8                            ; $768c: $cd $d8 $72
    ld a, [$d830]                                 ; $768f: $fa $30 $d8
    ld [$c3f9], a                                 ; $7692: $ea $f9 $c3
    ld bc, $7654                                  ; $7695: $01 $54 $76
    ld a, [$c3f8]                                 ; $7698: $fa $f8 $c3
    jp Jump_041_701e                              ; $769b: $c3 $1e $70


    call Call_041_78c6                            ; $769e: $cd $c6 $78
    call Call_041_7b2e                            ; $76a1: $cd $2e $7b
    ld a, $05                                     ; $76a4: $3e $05
    ld [$c3f9], a                                 ; $76a6: $ea $f9 $c3
    jp Jump_041_6ff4                              ; $76a9: $c3 $f4 $6f


    ld a, $80                                     ; $76ac: $3e $80
    ld [$c3fd], a                                 ; $76ae: $ea $fd $c3
    ld a, $01                                     ; $76b1: $3e $01
    ld [$c96c], a                                 ; $76b3: $ea $6c $c9
    jp Jump_041_7078                              ; $76b6: $c3 $78 $70


    cp a                                          ; $76b9: $bf
    halt                                          ; $76ba: $76

    db $c7, $76

    rst $08                                       ; $76bd: $cf
    halt                                          ; $76be: $76
    ld a, $00                                     ; $76bf: $3e $00
    ld [$c3fd], a                                 ; $76c1: $ea $fd $c3
    jp Jump_041_7078                              ; $76c4: $c3 $78 $70


    ld a, $02                                     ; $76c7: $3e $02
    ld [$c3fd], a                                 ; $76c9: $ea $fd $c3
    jp Jump_041_7078                              ; $76cc: $c3 $78 $70


    ld a, $05                                     ; $76cf: $3e $05
    ld [$c3fd], a                                 ; $76d1: $ea $fd $c3
    jp Jump_041_7078                              ; $76d4: $c3 $78 $70


    rst $18                                       ; $76d7: $df
    halt                                          ; $76d8: $76
    rst $20                                       ; $76d9: $e7
    halt                                          ; $76da: $76
    rst $28                                       ; $76db: $ef
    halt                                          ; $76dc: $76
    rst $30                                       ; $76dd: $f7
    halt                                          ; $76de: $76
    ld a, $00                                     ; $76df: $3e $00
    ld [$c3fd], a                                 ; $76e1: $ea $fd $c3
    jp Jump_041_7078                              ; $76e4: $c3 $78 $70


    ld a, $02                                     ; $76e7: $3e $02
    ld [$c3fd], a                                 ; $76e9: $ea $fd $c3
    jp Jump_041_7078                              ; $76ec: $c3 $78 $70


    ld a, $03                                     ; $76ef: $3e $03
    ld [$c3fd], a                                 ; $76f1: $ea $fd $c3
    jp Jump_041_7078                              ; $76f4: $c3 $78 $70


    ld a, $04                                     ; $76f7: $3e $04
    ld [$c3fd], a                                 ; $76f9: $ea $fd $c3
    jp Jump_041_7078                              ; $76fc: $c3 $78 $70


    db $07, $77

    rrca                                          ; $7701: $0f
    ld [hl], a                                    ; $7702: $77
    ld hl, $3377                                  ; $7703: $21 $77 $33
    ld [hl], a                                    ; $7706: $77

    ld a, $82                                     ; $7707: $3e $82
    ld [$c3fd], a                                 ; $7709: $ea $fd $c3
    jp Jump_041_7078                              ; $770c: $c3 $78 $70


    call Call_041_72a1                            ; $770f: $cd $a1 $72
    ld a, [$d830]                                 ; $7712: $fa $30 $d8
    ld [$c3f9], a                                 ; $7715: $ea $f9 $c3
    ld bc, $76ff                                  ; $7718: $01 $ff $76
    ld a, [$c3f8]                                 ; $771b: $fa $f8 $c3
    jp Jump_041_701e                              ; $771e: $c3 $1e $70


    call Call_041_72d8                            ; $7721: $cd $d8 $72
    ld a, [$d830]                                 ; $7724: $fa $30 $d8
    ld [$c3f9], a                                 ; $7727: $ea $f9 $c3
    ld bc, $76ff                                  ; $772a: $01 $ff $76
    ld a, [$c3f8]                                 ; $772d: $fa $f8 $c3
    jp Jump_041_701e                              ; $7730: $c3 $1e $70


    call Call_041_78c6                            ; $7733: $cd $c6 $78
    call Call_041_7b4d                            ; $7736: $cd $4d $7b
    ld a, $03                                     ; $7739: $3e $03
    ld [$c3f9], a                                 ; $773b: $ea $f9 $c3
    jp Jump_041_6ff4                              ; $773e: $c3 $f4 $6f


    ld b, l                                       ; $7741: $45
    ld [hl], a                                    ; $7742: $77
    ld c, l                                       ; $7743: $4d
    ld [hl], a                                    ; $7744: $77
    ld a, $82                                     ; $7745: $3e $82
    ld [$c3fd], a                                 ; $7747: $ea $fd $c3
    jp Jump_041_7078                              ; $774a: $c3 $78 $70


    call Call_041_78c6                            ; $774d: $cd $c6 $78
    call Call_041_7b6c                            ; $7750: $cd $6c $7b
    ld a, $01                                     ; $7753: $3e $01
    ld [$c3f9], a                                 ; $7755: $ea $f9 $c3
    jp Jump_041_6ff4                              ; $7758: $c3 $f4 $6f


    ld e, a                                       ; $775b: $5f
    ld [hl], a                                    ; $775c: $77
    ld h, a                                       ; $775d: $67
    ld [hl], a                                    ; $775e: $77
    ld a, $82                                     ; $775f: $3e $82
    ld [$c3fd], a                                 ; $7761: $ea $fd $c3
    jp Jump_041_7078                              ; $7764: $c3 $78 $70


    call Call_041_78c6                            ; $7767: $cd $c6 $78
    call Call_041_7ba2                            ; $776a: $cd $a2 $7b
    ld a, $01                                     ; $776d: $3e $01
    ld [$c3f9], a                                 ; $776f: $ea $f9 $c3
    jp Jump_041_6ff4                              ; $7772: $c3 $f4 $6f


    ld a, c                                       ; $7775: $79
    ld [hl], a                                    ; $7776: $77
    or e                                          ; $7777: $b3
    ld [hl], a                                    ; $7778: $77
    ld a, [$c3fc]                                 ; $7779: $fa $fc $c3
    and $0f                                       ; $777c: $e6 $0f
    jr z, jr_041_7799                             ; $777e: $28 $19

    cp $03                                        ; $7780: $fe $03
    jr z, jr_041_7799                             ; $7782: $28 $15

    rst $08                                       ; $7784: $cf
    adc e                                         ; $7785: $8b
    ld a, [$c818]                                 ; $7786: $fa $18 $c8
    bit 0, a                                      ; $7789: $cb $47
    jr z, jr_041_7794                             ; $778b: $28 $07

    res 0, a                                      ; $778d: $cb $87
    ld [$c818], a                                 ; $778f: $ea $18 $c8
    jr jr_041_7799                                ; $7792: $18 $05

jr_041_7794:
    set 0, a                                      ; $7794: $cb $c7
    ld [$c818], a                                 ; $7796: $ea $18 $c8

jr_041_7799:
    call Call_000_2b98                            ; $7799: $cd $98 $2b
    ld a, [$c3fc]                                 ; $779c: $fa $fc $c3
    or $c0                                        ; $779f: $f6 $c0
    ld [$c3fc], a                                 ; $77a1: $ea $fc $c3
    ld a, [$d830]                                 ; $77a4: $fa $30 $d8
    ld [$c3f9], a                                 ; $77a7: $ea $f9 $c3
    ld bc, $7775                                  ; $77aa: $01 $75 $77
    ld a, [$c3f8]                                 ; $77ad: $fa $f8 $c3
    jp Jump_041_701e                              ; $77b0: $c3 $1e $70


    ld a, [$c3fc]                                 ; $77b3: $fa $fc $c3
    and $0f                                       ; $77b6: $e6 $0f
    jr z, jr_041_77d3                             ; $77b8: $28 $19

    cp $03                                        ; $77ba: $fe $03
    jr z, jr_041_77d3                             ; $77bc: $28 $15

    rst $08                                       ; $77be: $cf
    adc e                                         ; $77bf: $8b
    ld a, [$c818]                                 ; $77c0: $fa $18 $c8
    bit 1, a                                      ; $77c3: $cb $4f
    jr z, jr_041_77ce                             ; $77c5: $28 $07

    res 1, a                                      ; $77c7: $cb $8f
    ld [$c818], a                                 ; $77c9: $ea $18 $c8
    jr jr_041_77d3                                ; $77cc: $18 $05

jr_041_77ce:
    set 1, a                                      ; $77ce: $cb $cf
    ld [$c818], a                                 ; $77d0: $ea $18 $c8

jr_041_77d3:
    ld a, [$c3fc]                                 ; $77d3: $fa $fc $c3
    or $c0                                        ; $77d6: $f6 $c0
    ld [$c3fc], a                                 ; $77d8: $ea $fc $c3
    ld a, [$d830]                                 ; $77db: $fa $30 $d8
    ld [$c3f9], a                                 ; $77de: $ea $f9 $c3
    ld bc, $7775                                  ; $77e1: $01 $75 $77
    ld a, [$c3f8]                                 ; $77e4: $fa $f8 $c3
    jp Jump_041_701e                              ; $77e7: $c3 $1e $70


    ldh a, [$96]                                  ; $77ea: $f0 $96
    push af                                       ; $77ec: $f5
    ld a, $05                                     ; $77ed: $3e $05
    ldh [$96], a                                  ; $77ef: $e0 $96
    ldh [rSVBK], a                                ; $77f1: $e0 $70
    ld de, $0000                                  ; $77f3: $11 $00 $00
    ld bc, $1406                                  ; $77f6: $01 $06 $14
    rst $18                                       ; $77f9: $df
    inc b                                         ; $77fa: $04
    dec b                                         ; $77fb: $05
    ld [$c3f8], a                                 ; $77fc: $ea $f8 $c3
    rst $18                                       ; $77ff: $df
    inc e                                         ; $7800: $1c
    dec b                                         ; $7801: $05
    rst $18                                       ; $7802: $df
    inc d                                         ; $7803: $14
    dec b                                         ; $7804: $05

jr_041_7805:
    ld hl, $c83c                                  ; $7805: $21 $3c $c8
    ld a, [hl+]                                   ; $7808: $2a
    ld h, [hl]                                    ; $7809: $66
    ld l, a                                       ; $780a: $6f
    ld a, $04                                     ; $780b: $3e $04
    ld de, $d000                                  ; $780d: $11 $00 $d0
    call Call_000_21f0                            ; $7810: $cd $f0 $21
    ld hl, $d000                                  ; $7813: $21 $00 $d0
    ld de, $0602                                  ; $7816: $11 $02 $06
    ld a, [$c3f8]                                 ; $7819: $fa $f8 $c3
    rst $18                                       ; $781c: $df
    ld h, h                                       ; $781d: $64
    dec b                                         ; $781e: $05
    rst $18                                       ; $781f: $df
    inc e                                         ; $7820: $1c
    dec b                                         ; $7821: $05
    rst $18                                       ; $7822: $df
    inc d                                         ; $7823: $14
    dec b                                         ; $7824: $05
    call Call_000_2e3b                            ; $7825: $cd $3b $2e
    ldh a, [$90]                                  ; $7828: $f0 $90
    and $01                                       ; $782a: $e6 $01
    jr z, jr_041_7838                             ; $782c: $28 $0a

    rst $08                                       ; $782e: $cf
    ld e, h                                       ; $782f: $5c
    ld de, $0064                                  ; $7830: $11 $64 $00
    rst $18                                       ; $7833: $df
    ld d, [hl]                                    ; $7834: $56
    ld [bc], a                                    ; $7835: $02
    jr jr_041_7805                                ; $7836: $18 $cd

jr_041_7838:
    ldh a, [$90]                                  ; $7838: $f0 $90
    and $10                                       ; $783a: $e6 $10
    jr z, jr_041_7848                             ; $783c: $28 $0a

    rst $08                                       ; $783e: $cf
    ld e, e                                       ; $783f: $5b
    ld de, $000a                                  ; $7840: $11 $0a $00
    rst $18                                       ; $7843: $df
    ld d, [hl]                                    ; $7844: $56
    ld [bc], a                                    ; $7845: $02
    jr jr_041_7805                                ; $7846: $18 $bd

jr_041_7848:
    ldh a, [$90]                                  ; $7848: $f0 $90
    and $20                                       ; $784a: $e6 $20
    jr z, jr_041_7858                             ; $784c: $28 $0a

    rst $08                                       ; $784e: $cf
    ld e, e                                       ; $784f: $5b
    ld de, $fff6                                  ; $7850: $11 $f6 $ff
    rst $18                                       ; $7853: $df
    ld d, [hl]                                    ; $7854: $56
    ld [bc], a                                    ; $7855: $02
    jr jr_041_7805                                ; $7856: $18 $ad

jr_041_7858:
    ldh a, [$90]                                  ; $7858: $f0 $90
    and $02                                       ; $785a: $e6 $02
    jr z, jr_041_7805                             ; $785c: $28 $a7

    ld a, [$c3f8]                                 ; $785e: $fa $f8 $c3
    rst $18                                       ; $7861: $df
    inc c                                         ; $7862: $0c
    dec b                                         ; $7863: $05
    rst $18                                       ; $7864: $df
    inc e                                         ; $7865: $1c
    dec b                                         ; $7866: $05
    rst $18                                       ; $7867: $df
    inc d                                         ; $7868: $14
    dec b                                         ; $7869: $05
    ld hl, $c83c                                  ; $786a: $21 $3c $c8
    ld a, [hl+]                                   ; $786d: $2a
    ld d, [hl]                                    ; $786e: $56
    ld e, a                                       ; $786f: $5f
    rst $18                                       ; $7870: $df
    ld [$f148], sp                                ; $7871: $08 $48 $f1
    ldh [$96], a                                  ; $7874: $e0 $96
    ldh [rSVBK], a                                ; $7876: $e0 $70
    ret                                           ; $7878: $c9


Call_041_7879:
    rst $18                                       ; $7879: $df
    ld b, d                                       ; $787a: $42
    ld [de], a                                    ; $787b: $12
    ld a, $ff                                     ; $787c: $3e $ff
    ld [$c3fd], a                                 ; $787e: $ea $fd $c3
    ret                                           ; $7881: $c9


Call_041_7882:
    rst $18                                       ; $7882: $df
    nop                                           ; $7883: $00
    rla                                           ; $7884: $17
    ld a, $ff                                     ; $7885: $3e $ff
    ld [$c3fd], a                                 ; $7887: $ea $fd $c3
    ret                                           ; $788a: $c9


Call_041_788b:
    xor a                                         ; $788b: $af
    ld [$c4bd], a                                 ; $788c: $ea $bd $c4
    rst $18                                       ; $788f: $df
    nop                                           ; $7890: $00
    ld c, $3e                                     ; $7891: $0e $3e
    rst $38                                       ; $7893: $ff
    ld [$c3fd], a                                 ; $7894: $ea $fd $c3
    ret                                           ; $7897: $c9


Call_041_7898:
    xor a                                         ; $7898: $af
    ld [$c4bd], a                                 ; $7899: $ea $bd $c4
    rst $18                                       ; $789c: $df
    inc b                                         ; $789d: $04
    ld a, $3e                                     ; $789e: $3e $3e
    rst $38                                       ; $78a0: $ff
    ld [$c3fd], a                                 ; $78a1: $ea $fd $c3
    ret                                           ; $78a4: $c9


Call_041_78a5:
    ld a, [$c834]                                 ; $78a5: $fa $34 $c8
    cp $02                                        ; $78a8: $fe $02
    jr z, jr_041_78b9                             ; $78aa: $28 $0d

    xor a                                         ; $78ac: $af
    ld [$c4bd], a                                 ; $78ad: $ea $bd $c4
    rst $18                                       ; $78b0: $df
    nop                                           ; $78b1: $00
    ld c, $3e                                     ; $78b2: $0e $3e
    rst $38                                       ; $78b4: $ff
    ld [$c3fd], a                                 ; $78b5: $ea $fd $c3
    ret                                           ; $78b8: $c9


jr_041_78b9:
    xor a                                         ; $78b9: $af
    ld [$c4bd], a                                 ; $78ba: $ea $bd $c4
    rst $18                                       ; $78bd: $df
    inc b                                         ; $78be: $04
    ld a, $3e                                     ; $78bf: $3e $3e
    rst $38                                       ; $78c1: $ff
    ld [$c3fd], a                                 ; $78c2: $ea $fd $c3
    ret                                           ; $78c5: $c9


Call_041_78c6:
    push af                                       ; $78c6: $f5
    push bc                                       ; $78c7: $c5
    push de                                       ; $78c8: $d5
    push hl                                       ; $78c9: $e5
    ldh a, [$96]                                  ; $78ca: $f0 $96
    push af                                       ; $78cc: $f5
    call Call_000_0684                            ; $78cd: $cd $84 $06
    rst $18                                       ; $78d0: $df
    ld a, [de]                                    ; $78d1: $1a
    inc bc                                        ; $78d2: $03
    call Call_000_2e3b                            ; $78d3: $cd $3b $2e
    ld hl, $1495                                  ; $78d6: $21 $95 $14
    call Call_041_7bbd                            ; $78d9: $cd $bd $7b
    ld de, $da00                                  ; $78dc: $11 $00 $da
    rst $18                                       ; $78df: $df
    ld h, $03                                     ; $78e0: $26 $03
    ld hl, $1496                                  ; $78e2: $21 $96 $14
    call Call_041_7bbd                            ; $78e5: $cd $bd $7b
    ld de, $da30                                  ; $78e8: $11 $30 $da
    rst $18                                       ; $78eb: $df
    ld h, $03                                     ; $78ec: $26 $03
    ld hl, $da00                                  ; $78ee: $21 $00 $da
    ld de, $8da0                                  ; $78f1: $11 $a0 $8d
    ld c, $06                                     ; $78f4: $0e $06
    call Call_000_0468                            ; $78f6: $cd $68 $04
    call Call_000_2e3b                            ; $78f9: $cd $3b $2e
    call Call_000_068a                            ; $78fc: $cd $8a $06
    pop af                                        ; $78ff: $f1
    ldh [$96], a                                  ; $7900: $e0 $96
    ldh [rSVBK], a                                ; $7902: $e0 $70
    pop hl                                        ; $7904: $e1
    pop de                                        ; $7905: $d1
    pop bc                                        ; $7906: $c1
    pop af                                        ; $7907: $f1
    call Call_041_707c                            ; $7908: $cd $7c $70
    ld a, $c0                                     ; $790b: $3e $c0
    ld [$c3fc], a                                 ; $790d: $ea $fc $c3
    ld hl, $c3fa                                  ; $7910: $21 $fa $c3
    ld [hl], $83                                  ; $7913: $36 $83
    ld hl, $c3fb                                  ; $7915: $21 $fb $c3
    ld [hl], $83                                  ; $7918: $36 $83
    ld hl, $1487                                  ; $791a: $21 $87 $14
    ld bc, $7775                                  ; $791d: $01 $75 $77
    ld de, $0205                                  ; $7920: $11 $05 $02
    rst $20                                       ; $7923: $e7
    nop                                           ; $7924: $00
    ld b, $cd                                     ; $7925: $06 $cd
    db $f4                                        ; $7927: $f4
    ld l, a                                       ; $7928: $6f
    call Call_041_707c                            ; $7929: $cd $7c $70
    ld hl, $c3fc                                  ; $792c: $21 $fc $c3
    set 7, [hl]                                   ; $792f: $cb $fe
    rst $28                                       ; $7931: $ef
    nop                                           ; $7932: $00
    ld b, $c9                                     ; $7933: $06 $c9

Call_041_7935:
    rst $08                                       ; $7935: $cf
    ld e, l                                       ; $7936: $5d
    ld hl, $1491                                  ; $7937: $21 $91 $14
    rst $18                                       ; $793a: $df
    ld c, $0a                                     ; $793b: $0e $0a
    ld a, $80                                     ; $793d: $3e $80
    rst $18                                       ; $793f: $df
    ld [$c90a], sp                                ; $7940: $08 $0a $c9

Call_041_7943:
    xor a                                         ; $7943: $af
    ld b, a                                       ; $7944: $47
    rst $18                                       ; $7945: $df
    ld [hl+], a                                   ; $7946: $22
    ld b, c                                       ; $7947: $41
    ld a, $fa                                     ; $7948: $3e $fa
    ld [$c441], a                                 ; $794a: $ea $41 $c4
    ld a, $fa                                     ; $794d: $3e $fa
    ld [$c46a], a                                 ; $794f: $ea $6a $c4
    ld hl, $c2a0                                  ; $7952: $21 $a0 $c2
    ld de, $c466                                  ; $7955: $11 $66 $c4
    ld bc, $0004                                  ; $7958: $01 $04 $00
    call Call_000_03d3                            ; $795b: $cd $d3 $03
    ld a, [$c2a4]                                 ; $795e: $fa $a4 $c2
    ld [$c465], a                                 ; $7961: $ea $65 $c4
    ret                                           ; $7964: $c9


Call_041_7965:
    rst $18                                       ; $7965: $df
    ld e, b                                       ; $7966: $58
    ld a, [bc]                                    ; $7967: $0a
    ret                                           ; $7968: $c9


Call_041_7969:
    ld a, [$c3fc]                                 ; $7969: $fa $fc $c3
    and $0f                                       ; $796c: $e6 $0f
    cp $02                                        ; $796e: $fe $02
    jr z, jr_041_7991                             ; $7970: $28 $1f

    cp $01                                        ; $7972: $fe $01
    jr z, jr_041_7978                             ; $7974: $28 $02

    jr jr_041_79a6                                ; $7976: $18 $2e

jr_041_7978:
    rst $08                                       ; $7978: $cf
    adc e                                         ; $7979: $8b
    ld hl, $c82d                                  ; $797a: $21 $2d $c8
    ld a, [hl]                                    ; $797d: $7e
    and $7f                                       ; $797e: $e6 $7f
    inc a                                         ; $7980: $3c
    ld b, a                                       ; $7981: $47
    sub $03                                       ; $7982: $d6 $03
    jr z, jr_041_798c                             ; $7984: $28 $06

    ld a, b                                       ; $7986: $78
    or $80                                        ; $7987: $f6 $80
    ld [hl], a                                    ; $7989: $77
    jr jr_041_79a6                                ; $798a: $18 $1a

jr_041_798c:
    ld a, $80                                     ; $798c: $3e $80
    ld [hl], a                                    ; $798e: $77
    jr jr_041_79a6                                ; $798f: $18 $15

jr_041_7991:
    rst $08                                       ; $7991: $cf
    adc e                                         ; $7992: $8b
    ld hl, $c82d                                  ; $7993: $21 $2d $c8
    ld a, [hl]                                    ; $7996: $7e
    and $7f                                       ; $7997: $e6 $7f
    dec a                                         ; $7999: $3d
    bit 7, a                                      ; $799a: $cb $7f
    jr nz, jr_041_79a3                            ; $799c: $20 $05

    or $80                                        ; $799e: $f6 $80
    ld [hl], a                                    ; $79a0: $77
    jr jr_041_79a6                                ; $79a1: $18 $03

jr_041_79a3:
    ld a, $82                                     ; $79a3: $3e $82
    ld [hl], a                                    ; $79a5: $77

jr_041_79a6:
    ret                                           ; $79a6: $c9


Jump_041_79a7:
    rst $28                                       ; $79a7: $ef
    jr nz, jr_041_79b0                            ; $79a8: $20 $06

    rst $28                                       ; $79aa: $ef
    ld b, b                                       ; $79ab: $40
    ld b, $21                                     ; $79ac: $06 $21
    adc e                                         ; $79ae: $8b
    inc d                                         ; $79af: $14

jr_041_79b0:
    rst $18                                       ; $79b0: $df
    ld c, $0a                                     ; $79b1: $0e $0a
    ld a, $80                                     ; $79b3: $3e $80
    rst $18                                       ; $79b5: $df
    ld a, [bc]                                    ; $79b6: $0a
    ld a, [bc]                                    ; $79b7: $0a
    rst $18                                       ; $79b8: $df
    ld [de], a                                    ; $79b9: $12
    ld a, [bc]                                    ; $79ba: $0a
    rst $18                                       ; $79bb: $df
    inc c                                         ; $79bc: $0c
    ld a, [bc]                                    ; $79bd: $0a
    push af                                       ; $79be: $f5
    ld a, $05                                     ; $79bf: $3e $05
    rst $18                                       ; $79c1: $df
    inc b                                         ; $79c2: $04
    ld a, [bc]                                    ; $79c3: $0a
    pop af                                        ; $79c4: $f1
    and a                                         ; $79c5: $a7
    jr nz, jr_041_79eb                            ; $79c6: $20 $23

    ld a, [$c82d]                                 ; $79c8: $fa $2d $c8
    res 7, a                                      ; $79cb: $cb $bf
    ld [$c82d], a                                 ; $79cd: $ea $2d $c8
    ld bc, $ffff                                  ; $79d0: $01 $ff $ff
    rst $18                                       ; $79d3: $df
    ld c, [hl]                                    ; $79d4: $4e
    ld a, [bc]                                    ; $79d5: $0a
    rst $18                                       ; $79d6: $df
    inc [hl]                                      ; $79d7: $34
    ld [bc], a                                    ; $79d8: $02
    ld a, $00                                     ; $79d9: $3e $00
    ld [$c450], a                                 ; $79db: $ea $50 $c4
    ld a, $01                                     ; $79de: $3e $01
    ld [$c46a], a                                 ; $79e0: $ea $6a $c4
    ld a, $fa                                     ; $79e3: $3e $fa
    ld [$c441], a                                 ; $79e5: $ea $41 $c4
    jp Jump_041_7078                              ; $79e8: $c3 $78 $70


jr_041_79eb:
    cp $ff                                        ; $79eb: $fe $ff
    jr nz, jr_041_7a08                            ; $79ed: $20 $19

    call Call_041_7a65                            ; $79ef: $cd $65 $7a
    ld a, $03                                     ; $79f2: $3e $03
    ld [$c3f9], a                                 ; $79f4: $ea $f9 $c3
    ld a, [$c4b8]                                 ; $79f7: $fa $b8 $c4
    and a                                         ; $79fa: $a7
    jr nz, jr_041_7a02                            ; $79fb: $20 $05

    rst $20                                       ; $79fd: $e7
    jr nz, jr_041_7a06                            ; $79fe: $20 $06

    jr @+$05                                      ; $7a00: $18 $03

jr_041_7a02:
    rst $20                                       ; $7a02: $e7
    ld b, b                                       ; $7a03: $40
    ld b, $c3                                     ; $7a04: $06 $c3

jr_041_7a06:
    db $f4                                        ; $7a06: $f4
    ld l, a                                       ; $7a07: $6f

jr_041_7a08:
    ld hl, $148d                                  ; $7a08: $21 $8d $14
    rst $18                                       ; $7a0b: $df
    ld c, $0a                                     ; $7a0c: $0e $0a
    ld a, $80                                     ; $7a0e: $3e $80
    rst $18                                       ; $7a10: $df
    ld a, [bc]                                    ; $7a11: $0a
    ld a, [bc]                                    ; $7a12: $0a
    ld a, $01                                     ; $7a13: $3e $01
    ld [$c3f9], a                                 ; $7a15: $ea $f9 $c3
    rst $18                                       ; $7a18: $df
    ld [de], a                                    ; $7a19: $12
    ld a, [bc]                                    ; $7a1a: $0a
    rst $18                                       ; $7a1b: $df
    inc c                                         ; $7a1c: $0c
    ld a, [bc]                                    ; $7a1d: $0a
    push af                                       ; $7a1e: $f5
    ld a, $05                                     ; $7a1f: $3e $05
    rst $18                                       ; $7a21: $df
    inc b                                         ; $7a22: $04
    ld a, [bc]                                    ; $7a23: $0a
    pop af                                        ; $7a24: $f1
    and a                                         ; $7a25: $a7
    jr nz, jr_041_7a3a                            ; $7a26: $20 $12

    ld a, $00                                     ; $7a28: $3e $00
    ld [$c450], a                                 ; $7a2a: $ea $50 $c4
    ld a, $02                                     ; $7a2d: $3e $02
    ld [$c46a], a                                 ; $7a2f: $ea $6a $c4
    ld a, $fa                                     ; $7a32: $3e $fa
    ld [$c441], a                                 ; $7a34: $ea $41 $c4
    jp Jump_041_7078                              ; $7a37: $c3 $78 $70


jr_041_7a3a:
    call Call_041_7a65                            ; $7a3a: $cd $65 $7a
    ld a, $03                                     ; $7a3d: $3e $03
    ld [$c3f9], a                                 ; $7a3f: $ea $f9 $c3
    ld a, [$c4b8]                                 ; $7a42: $fa $b8 $c4
    and a                                         ; $7a45: $a7
    jr nz, jr_041_7a4d                            ; $7a46: $20 $05

    rst $20                                       ; $7a48: $e7
    jr nz, jr_041_7a51                            ; $7a49: $20 $06

    jr @+$05                                      ; $7a4b: $18 $03

jr_041_7a4d:
    rst $20                                       ; $7a4d: $e7
    ld b, b                                       ; $7a4e: $40
    ld b, $c3                                     ; $7a4f: $06 $c3

jr_041_7a51:
    db $f4                                        ; $7a51: $f4
    ld l, a                                       ; $7a52: $6f

Call_041_7a53:
    call Call_041_707c                            ; $7a53: $cd $7c $70
    ld hl, $c3fc                                  ; $7a56: $21 $fc $c3
    set 7, [hl]                                   ; $7a59: $cb $fe
    ld hl, $147f                                  ; $7a5b: $21 $7f $14
    ld bc, $7317                                  ; $7a5e: $01 $17 $73
    ld de, $0502                                  ; $7a61: $11 $02 $05
    ret                                           ; $7a64: $c9


Call_041_7a65:
    ldh a, [$96]                                  ; $7a65: $f0 $96
    push af                                       ; $7a67: $f5
    rst $18                                       ; $7a68: $df
    ld a, [de]                                    ; $7a69: $1a
    inc bc                                        ; $7a6a: $03
    call Call_000_0684                            ; $7a6b: $cd $84 $06
    ld a, $01                                     ; $7a6e: $3e $01
    ldh [$96], a                                  ; $7a70: $e0 $96
    ldh [rSVBK], a                                ; $7a72: $e0 $70
    ld hl, $1492                                  ; $7a74: $21 $92 $14
    call Call_041_7bbd                            ; $7a77: $cd $bd $7b
    ld de, $da00                                  ; $7a7a: $11 $00 $da
    rst $18                                       ; $7a7d: $df
    ld h, $03                                     ; $7a7e: $26 $03
    ld hl, $1493                                  ; $7a80: $21 $93 $14
    call Call_041_7bbd                            ; $7a83: $cd $bd $7b
    ld de, $da50                                  ; $7a86: $11 $50 $da
    rst $18                                       ; $7a89: $df
    ld h, $03                                     ; $7a8a: $26 $03
    ld hl, $1494                                  ; $7a8c: $21 $94 $14
    call Call_041_7bbd                            ; $7a8f: $cd $bd $7b
    ld de, $daa0                                  ; $7a92: $11 $a0 $da
    rst $18                                       ; $7a95: $df
    ld h, $03                                     ; $7a96: $26 $03
    ld hl, $da00                                  ; $7a98: $21 $00 $da
    ld de, $8d10                                  ; $7a9b: $11 $10 $8d
    ld c, $0f                                     ; $7a9e: $0e $0f
    call Call_000_0468                            ; $7aa0: $cd $68 $04
    call Call_000_2e3b                            ; $7aa3: $cd $3b $2e
    call Call_000_068a                            ; $7aa6: $cd $8a $06
    pop af                                        ; $7aa9: $f1
    ldh [$96], a                                  ; $7aaa: $e0 $96
    ldh [rSVBK], a                                ; $7aac: $e0 $70
    ld a, [$c450]                                 ; $7aae: $fa $50 $c4
    cp $02                                        ; $7ab1: $fe $02
    jr z, jr_041_7ad2                             ; $7ab3: $28 $1d

    call Call_041_707c                            ; $7ab5: $cd $7c $70
    ld a, $a0                                     ; $7ab8: $3e $a0
    ld [$c3fc], a                                 ; $7aba: $ea $fc $c3
    ld a, $84                                     ; $7abd: $3e $84
    ld [$c3fa], a                                 ; $7abf: $ea $fa $c3
    ld [$c3fb], a                                 ; $7ac2: $ea $fb $c3
    ld hl, $1480                                  ; $7ac5: $21 $80 $14
    ld bc, $73dc                                  ; $7ac8: $01 $dc $73
    ld de, $0204                                  ; $7acb: $11 $04 $02
    rst $20                                       ; $7ace: $e7
    jr nz, jr_041_7ad7                            ; $7acf: $20 $06

    ret                                           ; $7ad1: $c9


jr_041_7ad2:
    call Call_041_707c                            ; $7ad2: $cd $7c $70
    ld a, $90                                     ; $7ad5: $3e $90

jr_041_7ad7:
    ld [$c3fc], a                                 ; $7ad7: $ea $fc $c3
    ld a, $88                                     ; $7ada: $3e $88
    ld [$c3fa], a                                 ; $7adc: $ea $fa $c3
    ld [$c3fb], a                                 ; $7adf: $ea $fb $c3
    ld hl, $1481                                  ; $7ae2: $21 $81 $14
    ld bc, $7409                                  ; $7ae5: $01 $09 $74
    ld de, $0203                                  ; $7ae8: $11 $03 $02
    rst $20                                       ; $7aeb: $e7
    ld b, b                                       ; $7aec: $40
    ld b, $c9                                     ; $7aed: $06 $c9

Call_041_7aef:
    ld a, [$c2a5]                                 ; $7aef: $fa $a5 $c2
    and $0f                                       ; $7af2: $e6 $0f
    cp $0f                                        ; $7af4: $fe $0f
    jr nz, jr_041_7b0a                            ; $7af6: $20 $12

    call Call_041_707c                            ; $7af8: $cd $7c $70
    ld hl, $c3fc                                  ; $7afb: $21 $fc $c3
    set 7, [hl]                                   ; $7afe: $cb $fe
    ld hl, $1483                                  ; $7b00: $21 $83 $14
    ld bc, $743f                                  ; $7b03: $01 $3f $74
    ld de, $0402                                  ; $7b06: $11 $02 $04
    ret                                           ; $7b09: $c9


jr_041_7b0a:
    call Call_041_707c                            ; $7b0a: $cd $7c $70
    ld hl, $c3fc                                  ; $7b0d: $21 $fc $c3
    set 7, [hl]                                   ; $7b10: $cb $fe
    ld hl, $1482                                  ; $7b12: $21 $82 $14
    ld bc, $743f                                  ; $7b15: $01 $3f $74
    ld de, $0402                                  ; $7b18: $11 $02 $04
    ret                                           ; $7b1b: $c9


Call_041_7b1c:
    call Call_041_707c                            ; $7b1c: $cd $7c $70
    ld hl, $c3fc                                  ; $7b1f: $21 $fc $c3
    set 7, [hl]                                   ; $7b22: $cb $fe
    ld hl, $1482                                  ; $7b24: $21 $82 $14
    ld bc, $756f                                  ; $7b27: $01 $6f $75
    ld de, $0402                                  ; $7b2a: $11 $02 $04
    ret                                           ; $7b2d: $c9


Call_041_7b2e:
    call Call_041_707c                            ; $7b2e: $cd $7c $70
    ld hl, $c3fc                                  ; $7b31: $21 $fc $c3
    set 7, [hl]                                   ; $7b34: $cb $fe
    ld hl, $c3fa                                  ; $7b36: $21 $fa $c3
    ld [hl], $98                                  ; $7b39: $36 $98
    ld hl, $c3fb                                  ; $7b3b: $21 $fb $c3
    ld [hl], $98                                  ; $7b3e: $36 $98
    ld hl, $1484                                  ; $7b40: $21 $84 $14
    ld bc, $7654                                  ; $7b43: $01 $54 $76
    ld de, $0300                                  ; $7b46: $11 $00 $03
    rst $20                                       ; $7b49: $e7
    ld h, b                                       ; $7b4a: $60
    ld b, $c9                                     ; $7b4b: $06 $c9

Call_041_7b4d:
    call Call_041_707c                            ; $7b4d: $cd $7c $70
    ld hl, $c3fc                                  ; $7b50: $21 $fc $c3
    set 7, [hl]                                   ; $7b53: $cb $fe
    ld hl, $c3fa                                  ; $7b55: $21 $fa $c3
    ld [hl], $86                                  ; $7b58: $36 $86
    ld hl, $c3fb                                  ; $7b5a: $21 $fb $c3
    ld [hl], $86                                  ; $7b5d: $36 $86
    ld hl, $1485                                  ; $7b5f: $21 $85 $14
    ld bc, $76ff                                  ; $7b62: $01 $ff $76
    ld de, $0303                                  ; $7b65: $11 $03 $03
    rst $20                                       ; $7b68: $e7

    db $80, $06

    ret                                           ; $7b6b: $c9


Call_041_7b6c:
    call Call_041_707c                            ; $7b6c: $cd $7c $70
    ld hl, $c3fc                                  ; $7b6f: $21 $fc $c3
    set 7, [hl]                                   ; $7b72: $cb $fe
    ld hl, $1486                                  ; $7b74: $21 $86 $14
    ld bc, $7741                                  ; $7b77: $01 $41 $77
    ld de, $0305                                  ; $7b7a: $11 $05 $03
    ret                                           ; $7b7d: $c9


Call_041_7b7e:
    call Call_041_707c                            ; $7b7e: $cd $7c $70
    ld hl, $c3fc                                  ; $7b81: $21 $fc $c3
    set 7, [hl]                                   ; $7b84: $cb $fe
    ld hl, $1488                                  ; $7b86: $21 $88 $14
    ld bc, $76b9                                  ; $7b89: $01 $b9 $76
    ld de, $0504                                  ; $7b8c: $11 $04 $05
    ret                                           ; $7b8f: $c9


Call_041_7b90:
    call Call_041_707c                            ; $7b90: $cd $7c $70
    ld hl, $c3fc                                  ; $7b93: $21 $fc $c3
    set 7, [hl]                                   ; $7b96: $cb $fe
    ld hl, $1489                                  ; $7b98: $21 $89 $14
    ld bc, $76d7                                  ; $7b9b: $01 $d7 $76
    ld de, $0204                                  ; $7b9e: $11 $04 $02
    ret                                           ; $7ba1: $c9


Call_041_7ba2:
    call Call_041_707c                            ; $7ba2: $cd $7c $70
    ld hl, $c3fc                                  ; $7ba5: $21 $fc $c3
    set 7, [hl]                                   ; $7ba8: $cb $fe
    ld hl, $148a                                  ; $7baa: $21 $8a $14
    ld bc, $775b                                  ; $7bad: $01 $5b $77
    ld de, $0305                                  ; $7bb0: $11 $05 $03
    ret                                           ; $7bb3: $c9


Call_041_7bb4:
    ld h, $80                                     ; $7bb4: $26 $80
    call Call_041_726c                            ; $7bb6: $cd $6c $72
    call Call_000_04b4                            ; $7bb9: $cd $b4 $04
    ret                                           ; $7bbc: $c9


Call_041_7bbd:
    ld a, $07                                     ; $7bbd: $3e $07
    ldh [$96], a                                  ; $7bbf: $e0 $96
    ldh [rSVBK], a                                ; $7bc1: $e0 $70
    ld de, $dc00                                  ; $7bc3: $11 $00 $dc
    ld b, $10                                     ; $7bc6: $06 $10
    xor a                                         ; $7bc8: $af

jr_041_7bc9:
    ld [de], a                                    ; $7bc9: $12
    inc de                                        ; $7bca: $13
    dec b                                         ; $7bcb: $05
    jr nz, jr_041_7bc9                            ; $7bcc: $20 $fb

    ld a, $05                                     ; $7bce: $3e $05
    ldh [$96], a                                  ; $7bd0: $e0 $96
    ldh [rSVBK], a                                ; $7bd2: $e0 $70
    rst $18                                       ; $7bd4: $df
    inc h                                         ; $7bd5: $24
    dec b                                         ; $7bd6: $05
    ld hl, $c600                                  ; $7bd7: $21 $00 $c6
    ld de, $dc00                                  ; $7bda: $11 $00 $dc

jr_041_7bdd:
    ld a, $05                                     ; $7bdd: $3e $05
    ldh [$96], a                                  ; $7bdf: $e0 $96
    ldh [rSVBK], a                                ; $7be1: $e0 $70
    ld a, [hl+]                                   ; $7be3: $2a
    ld b, a                                       ; $7be4: $47
    and a                                         ; $7be5: $a7
    jr z, jr_041_7bf3                             ; $7be6: $28 $0b

    ld a, $07                                     ; $7be8: $3e $07
    ldh [$96], a                                  ; $7bea: $e0 $96
    ldh [rSVBK], a                                ; $7bec: $e0 $70
    ld a, b                                       ; $7bee: $78
    ld [de], a                                    ; $7bef: $12
    inc de                                        ; $7bf0: $13
    jr jr_041_7bdd                                ; $7bf1: $18 $ea

jr_041_7bf3:
    ld a, $07                                     ; $7bf3: $3e $07
    ldh [$96], a                                  ; $7bf5: $e0 $96
    ldh [rSVBK], a                                ; $7bf7: $e0 $70
    ld hl, $dc00                                  ; $7bf9: $21 $00 $dc
    ret                                           ; $7bfc: $c9


    ld [bc], a                                    ; $7bfd: $02
    inc bc                                        ; $7bfe: $03
    inc bc                                        ; $7bff: $03
    inc bc                                        ; $7c00: $03
    inc bc                                        ; $7c01: $03
    inc bc                                        ; $7c02: $03
    inc bc                                        ; $7c03: $03
    inc bc                                        ; $7c04: $03
    inc bc                                        ; $7c05: $03
    inc bc                                        ; $7c06: $03
    inc bc                                        ; $7c07: $03
    inc bc                                        ; $7c08: $03
    inc bc                                        ; $7c09: $03
    inc bc                                        ; $7c0a: $03
    inc bc                                        ; $7c0b: $03
    inc bc                                        ; $7c0c: $03
    inc bc                                        ; $7c0d: $03
    inc bc                                        ; $7c0e: $03
    inc bc                                        ; $7c0f: $03
    inc b                                         ; $7c10: $04
    nop                                           ; $7c11: $00
    nop                                           ; $7c12: $00
    nop                                           ; $7c13: $00
    nop                                           ; $7c14: $00
    nop                                           ; $7c15: $00
    nop                                           ; $7c16: $00
    nop                                           ; $7c17: $00
    nop                                           ; $7c18: $00
    nop                                           ; $7c19: $00
    nop                                           ; $7c1a: $00
    nop                                           ; $7c1b: $00
    nop                                           ; $7c1c: $00
    dec b                                         ; $7c1d: $05
    jr nz, @+$22                                  ; $7c1e: $20 $20

    jr nz, @+$22                                  ; $7c20: $20 $20

    jr nz, jr_041_7c44                            ; $7c22: $20 $20

    jr nz, @+$22                                  ; $7c24: $20 $20

    jr nz, @+$22                                  ; $7c26: $20 $20

    jr nz, jr_041_7c4a                            ; $7c28: $20 $20

    jr nz, @+$22                                  ; $7c2a: $20 $20

    jr nz, @+$22                                  ; $7c2c: $20 $20

    jr nz, jr_041_7c50                            ; $7c2e: $20 $20

    ld b, $00                                     ; $7c30: $06 $00
    nop                                           ; $7c32: $00
    nop                                           ; $7c33: $00
    nop                                           ; $7c34: $00
    nop                                           ; $7c35: $00
    nop                                           ; $7c36: $00
    nop                                           ; $7c37: $00
    nop                                           ; $7c38: $00
    nop                                           ; $7c39: $00
    nop                                           ; $7c3a: $00
    nop                                           ; $7c3b: $00
    nop                                           ; $7c3c: $00
    rlca                                          ; $7c3d: $07
    ld [$0808], sp                                ; $7c3e: $08 $08 $08
    ld [$0808], sp                                ; $7c41: $08 $08 $08

jr_041_7c44:
    ld [$0808], sp                                ; $7c44: $08 $08 $08
    ld [$0808], sp                                ; $7c47: $08 $08 $08

jr_041_7c4a:
    ld [$0808], sp                                ; $7c4a: $08 $08 $08
    ld [$0808], sp                                ; $7c4d: $08 $08 $08

jr_041_7c50:
    add hl, bc                                    ; $7c50: $09
    nop                                           ; $7c51: $00
    nop                                           ; $7c52: $00
    nop                                           ; $7c53: $00
    nop                                           ; $7c54: $00
    nop                                           ; $7c55: $00
    nop                                           ; $7c56: $00
    nop                                           ; $7c57: $00
    nop                                           ; $7c58: $00
    nop                                           ; $7c59: $00
    nop                                           ; $7c5a: $00
    nop                                           ; $7c5b: $00
    nop                                           ; $7c5c: $00
    nop                                           ; $7c5d: $00
    nop                                           ; $7c5e: $00
    nop                                           ; $7c5f: $00
    nop                                           ; $7c60: $00
    nop                                           ; $7c61: $00
    nop                                           ; $7c62: $00
    nop                                           ; $7c63: $00
    nop                                           ; $7c64: $00
    nop                                           ; $7c65: $00
    nop                                           ; $7c66: $00
    nop                                           ; $7c67: $00
    nop                                           ; $7c68: $00
    nop                                           ; $7c69: $00
    nop                                           ; $7c6a: $00
    nop                                           ; $7c6b: $00
    nop                                           ; $7c6c: $00
    nop                                           ; $7c6d: $00
    nop                                           ; $7c6e: $00
    nop                                           ; $7c6f: $00
    nop                                           ; $7c70: $00
    nop                                           ; $7c71: $00
    nop                                           ; $7c72: $00
    nop                                           ; $7c73: $00
    nop                                           ; $7c74: $00
    nop                                           ; $7c75: $00
    nop                                           ; $7c76: $00
    nop                                           ; $7c77: $00
    nop                                           ; $7c78: $00
    nop                                           ; $7c79: $00
    nop                                           ; $7c7a: $00
    nop                                           ; $7c7b: $00
    nop                                           ; $7c7c: $00

Call_041_7c7d:
    push af                                       ; $7c7d: $f5
    push bc                                       ; $7c7e: $c5
    push de                                       ; $7c7f: $d5
    push hl                                       ; $7c80: $e5
    ldh a, [$96]                                  ; $7c81: $f0 $96
    push af                                       ; $7c83: $f5
    ld a, $01                                     ; $7c84: $3e $01
    ldh [$96], a                                  ; $7c86: $e0 $96
    ldh [rSVBK], a                                ; $7c88: $e0 $70
    ld hl, $7bfd                                  ; $7c8a: $21 $fd $7b
    ld de, $d400                                  ; $7c8d: $11 $00 $d4
    ld c, $02                                     ; $7c90: $0e $02
    call Call_000_03eb                            ; $7c92: $cd $eb $03
    xor a                                         ; $7c95: $af

jr_041_7c96:
    cp $10                                        ; $7c96: $fe $10
    jr z, jr_041_7cb3                             ; $7c98: $28 $19

    push af                                       ; $7c9a: $f5
    ld hl, $0020                                  ; $7c9b: $21 $20 $00
    call Call_000_08b9                            ; $7c9e: $cd $b9 $08
    ld de, $d420                                  ; $7ca1: $11 $20 $d4
    add hl, de                                    ; $7ca4: $19
    push hl                                       ; $7ca5: $e5
    pop de                                        ; $7ca6: $d1
    ld hl, $7c1d                                  ; $7ca7: $21 $1d $7c
    ld c, $02                                     ; $7caa: $0e $02
    call Call_000_03eb                            ; $7cac: $cd $eb $03
    pop af                                        ; $7caf: $f1
    inc a                                         ; $7cb0: $3c
    jr jr_041_7c96                                ; $7cb1: $18 $e3

jr_041_7cb3:
    ld hl, $7c3d                                  ; $7cb3: $21 $3d $7c
    ld de, $d620                                  ; $7cb6: $11 $20 $d6
    ld c, $02                                     ; $7cb9: $0e $02
    call Call_000_03eb                            ; $7cbb: $cd $eb $03
    xor a                                         ; $7cbe: $af

jr_041_7cbf:
    cp $12                                        ; $7cbf: $fe $12
    jr z, jr_041_7cdc                             ; $7cc1: $28 $19

    push af                                       ; $7cc3: $f5
    ld hl, $0020                                  ; $7cc4: $21 $20 $00
    call Call_000_08b9                            ; $7cc7: $cd $b9 $08
    ld de, $d000                                  ; $7cca: $11 $00 $d0
    add hl, de                                    ; $7ccd: $19
    push hl                                       ; $7cce: $e5
    pop de                                        ; $7ccf: $d1
    ld hl, $7c5d                                  ; $7cd0: $21 $5d $7c
    ld c, $02                                     ; $7cd3: $0e $02
    call Call_000_03eb                            ; $7cd5: $cd $eb $03
    pop af                                        ; $7cd8: $f1
    inc a                                         ; $7cd9: $3c
    jr jr_041_7cbf                                ; $7cda: $18 $e3

jr_041_7cdc:
    ld de, $d4c7                                  ; $7cdc: $11 $c7 $d4
    ld hl, $149b                                  ; $7cdf: $21 $9b $14
    ld c, $20                                     ; $7ce2: $0e $20
    rst $18                                       ; $7ce4: $df
    ld [hl+], a                                   ; $7ce5: $22
    dec b                                         ; $7ce6: $05
    ld hl, $c800                                  ; $7ce7: $21 $00 $c8
    ld a, l                                       ; $7cea: $7d
    add $12                                       ; $7ceb: $c6 $12
    ld l, a                                       ; $7ced: $6f
    ld a, h                                       ; $7cee: $7c
    adc $00                                       ; $7cef: $ce $00
    ld h, a                                       ; $7cf1: $67
    ld a, [hl]                                    ; $7cf2: $7e
    ld l, a                                       ; $7cf3: $6f
    ld h, $00                                     ; $7cf4: $26 $00
    rst $18                                       ; $7cf6: $df
    ld d, [hl]                                    ; $7cf7: $56
    dec b                                         ; $7cf8: $05
    ld de, $d507                                  ; $7cf9: $11 $07 $d5
    ld hl, $149c                                  ; $7cfc: $21 $9c $14
    ld c, $20                                     ; $7cff: $0e $20
    rst $18                                       ; $7d01: $df
    ld [hl+], a                                   ; $7d02: $22
    dec b                                         ; $7d03: $05
    ld hl, $c800                                  ; $7d04: $21 $00 $c8
    ld a, l                                       ; $7d07: $7d
    add $1a                                       ; $7d08: $c6 $1a
    ld l, a                                       ; $7d0a: $6f
    ld a, h                                       ; $7d0b: $7c
    adc $00                                       ; $7d0c: $ce $00
    ld h, a                                       ; $7d0e: $67
    ld a, [hl+]                                   ; $7d0f: $2a
    ld h, [hl]                                    ; $7d10: $66
    ld l, a                                       ; $7d11: $6f
    rst $18                                       ; $7d12: $df
    ld d, [hl]                                    ; $7d13: $56
    dec b                                         ; $7d14: $05
    ld de, $d547                                  ; $7d15: $11 $47 $d5
    ld hl, $149d                                  ; $7d18: $21 $9d $14
    ld c, $20                                     ; $7d1b: $0e $20
    rst $18                                       ; $7d1d: $df
    ld [hl+], a                                   ; $7d1e: $22
    dec b                                         ; $7d1f: $05
    ld hl, $c800                                  ; $7d20: $21 $00 $c8
    ld a, l                                       ; $7d23: $7d
    add $34                                       ; $7d24: $c6 $34
    ld l, a                                       ; $7d26: $6f
    ld a, h                                       ; $7d27: $7c
    adc $00                                       ; $7d28: $ce $00
    ld h, a                                       ; $7d2a: $67
    ld a, [hl]                                    ; $7d2b: $7e
    cp $09                                        ; $7d2c: $fe $09
    jr z, jr_041_7d7a                             ; $7d2e: $28 $4a

    ld hl, $14a8                                  ; $7d30: $21 $a8 $14
    dec a                                         ; $7d33: $3d
    ld d, $00                                     ; $7d34: $16 $00
    ld e, a                                       ; $7d36: $5f
    add hl, de                                    ; $7d37: $19
    ld de, $d587                                  ; $7d38: $11 $87 $d5
    ld c, $20                                     ; $7d3b: $0e $20
    rst $18                                       ; $7d3d: $df
    ld [hl+], a                                   ; $7d3e: $22
    dec b                                         ; $7d3f: $05
    ld hl, $c800                                  ; $7d40: $21 $00 $c8
    ld a, l                                       ; $7d43: $7d
    add $36                                       ; $7d44: $c6 $36
    ld l, a                                       ; $7d46: $6f
    ld a, h                                       ; $7d47: $7c
    adc $00                                       ; $7d48: $ce $00
    ld h, a                                       ; $7d4a: $67
    ld a, [hl]                                    ; $7d4b: $7e
    ld d, $00                                     ; $7d4c: $16 $00
    ld e, a                                       ; $7d4e: $5f
    ld hl, $0021                                  ; $7d4f: $21 $21 $00
    add hl, de                                    ; $7d52: $19
    ld de, $d5c7                                  ; $7d53: $11 $c7 $d5
    ld c, $20                                     ; $7d56: $0e $20
    rst $18                                       ; $7d58: $df
    ld [hl+], a                                   ; $7d59: $22
    dec b                                         ; $7d5a: $05
    ld hl, $c800                                  ; $7d5b: $21 $00 $c8
    ld a, l                                       ; $7d5e: $7d
    add $37                                       ; $7d5f: $c6 $37
    ld l, a                                       ; $7d61: $6f
    ld a, h                                       ; $7d62: $7c
    adc $00                                       ; $7d63: $ce $00
    ld h, a                                       ; $7d65: $67
    ld a, [hl]                                    ; $7d66: $7e
    ld l, a                                       ; $7d67: $6f
    ld h, $00                                     ; $7d68: $26 $00
    rst $18                                       ; $7d6a: $df
    ld d, [hl]                                    ; $7d6b: $56
    dec b                                         ; $7d6c: $05
    ld de, $d607                                  ; $7d6d: $11 $07 $d6
    ld hl, $14a0                                  ; $7d70: $21 $a0 $14
    ld c, $20                                     ; $7d73: $0e $20
    rst $18                                       ; $7d75: $df
    ld [hl+], a                                   ; $7d76: $22
    dec b                                         ; $7d77: $05
    jr jr_041_7d90                                ; $7d78: $18 $16

jr_041_7d7a:
    ld hl, $c960                                  ; $7d7a: $21 $60 $c9
    ld a, [hl]                                    ; $7d7d: $7e
    rst $18                                       ; $7d7e: $df
    ld d, [hl]                                    ; $7d7f: $56
    ld a, [bc]                                    ; $7d80: $0a
    ld hl, $012c                                  ; $7d81: $21 $2c $01
    ld d, $00                                     ; $7d84: $16 $00
    ld e, a                                       ; $7d86: $5f
    add hl, de                                    ; $7d87: $19
    ld de, $d587                                  ; $7d88: $11 $87 $d5
    ld c, $20                                     ; $7d8b: $0e $20
    rst $18                                       ; $7d8d: $df
    ld [hl+], a                                   ; $7d8e: $22
    dec b                                         ; $7d8f: $05

jr_041_7d90:
    ld hl, $d000                                  ; $7d90: $21 $00 $d0
    ld de, $b800                                  ; $7d93: $11 $00 $b8
    ld c, $24                                     ; $7d96: $0e $24
    call Call_000_0468                            ; $7d98: $cd $68 $04
    ld hl, $d400                                  ; $7d9b: $21 $00 $d4
    ld de, $9800                                  ; $7d9e: $11 $00 $98
    ld c, $24                                     ; $7da1: $0e $24
    call Call_000_04db                            ; $7da3: $cd $db $04
    call Call_000_0804                            ; $7da6: $cd $04 $08
    pop af                                        ; $7da9: $f1
    ldh [$96], a                                  ; $7daa: $e0 $96
    ldh [rSVBK], a                                ; $7dac: $e0 $70
    pop hl                                        ; $7dae: $e1
    pop de                                        ; $7daf: $d1
    pop bc                                        ; $7db0: $c1
    pop af                                        ; $7db1: $f1
    ret                                           ; $7db2: $c9


    ldh a, [$96]                                  ; $7db3: $f0 $96
    push af                                       ; $7db5: $f5
    call Call_000_23b6                            ; $7db6: $cd $b6 $23
    rst $18                                       ; $7db9: $df
    nop                                           ; $7dba: $00
    dec b                                         ; $7dbb: $05
    rst $18                                       ; $7dbc: $df
    ld a, [bc]                                    ; $7dbd: $0a
    ld bc, $41cd                                  ; $7dbe: $01 $cd $41
    inc bc                                        ; $7dc1: $03
    call Call_041_7c7d                            ; $7dc2: $cd $7d $7c
    ld a, $90                                     ; $7dc5: $3e $90
    ldh [rWY], a                                  ; $7dc7: $e0 $4a
    call Call_000_2683                            ; $7dc9: $cd $83 $26
    ld a, $06                                     ; $7dcc: $3e $06
    ldh [$96], a                                  ; $7dce: $e0 $96
    ldh [rSVBK], a                                ; $7dd0: $e0 $70
    ld hl, $d504                                  ; $7dd2: $21 $04 $d5
    ld [hl], $00                                  ; $7dd5: $36 $00
    rst $18                                       ; $7dd7: $df
    inc b                                         ; $7dd8: $04
    ld b, d                                       ; $7dd9: $42
    ld a, $06                                     ; $7dda: $3e $06
    ldh [$96], a                                  ; $7ddc: $e0 $96
    ldh [rSVBK], a                                ; $7dde: $e0 $70
    call Call_000_0371                            ; $7de0: $cd $71 $03
    ld a, $03                                     ; $7de3: $3e $03
    ld hl, $7e03                                  ; $7de5: $21 $03 $7e
    call Call_000_23e8                            ; $7de8: $cd $e8 $23
    call Call_000_2e3b                            ; $7deb: $cd $3b $2e
    pop af                                        ; $7dee: $f1
    ldh [$96], a                                  ; $7def: $e0 $96
    ldh [rSVBK], a                                ; $7df1: $e0 $70
    ret                                           ; $7df3: $c9


    push af                                       ; $7df4: $f5
    push bc                                       ; $7df5: $c5
    push de                                       ; $7df6: $d5
    push hl                                       ; $7df7: $e5
    ld hl, $7e03                                  ; $7df8: $21 $03 $7e
    call Call_000_2449                            ; $7dfb: $cd $49 $24
    pop hl                                        ; $7dfe: $e1
    pop de                                        ; $7dff: $d1
    pop bc                                        ; $7e00: $c1
    pop af                                        ; $7e01: $f1
    ret                                           ; $7e02: $c9


    rst $18                                       ; $7e03: $df
    ld b, $42                                     ; $7e04: $06 $42
    ret                                           ; $7e06: $c9


    call Call_000_23b6                            ; $7e07: $cd $b6 $23
    rst $18                                       ; $7e0a: $df
    ld a, [bc]                                    ; $7e0b: $0a
    ld bc, $41cd                                  ; $7e0c: $01 $cd $41
    inc bc                                        ; $7e0f: $03
    xor a                                         ; $7e10: $af
    ldh [$8b], a                                  ; $7e11: $e0 $8b
    ldh [$8a], a                                  ; $7e13: $e0 $8a
    ld [$c320], a                                 ; $7e15: $ea $20 $c3
    ld [$c321], a                                 ; $7e18: $ea $21 $c3
    ld [$c322], a                                 ; $7e1b: $ea $22 $c3
    ld [$c323], a                                 ; $7e1e: $ea $23 $c3
    ld a, $90                                     ; $7e21: $3e $90
    ldh [rWY], a                                  ; $7e23: $e0 $4a
    call Call_000_2683                            ; $7e25: $cd $83 $26
    ld hl, $7f91                                  ; $7e28: $21 $91 $7f
    ld de, $0001                                  ; $7e2b: $11 $01 $00
    call Call_000_0595                            ; $7e2e: $cd $95 $05
    call Call_041_7ef1                            ; $7e31: $cd $f1 $7e
    call Call_000_0371                            ; $7e34: $cd $71 $03
    rst $08                                       ; $7e37: $cf
    nop                                           ; $7e38: $00
    rst $08                                       ; $7e39: $cf
    inc bc                                        ; $7e3a: $03
    ld c, $08                                     ; $7e3b: $0e $08
    call Call_000_258d                            ; $7e3d: $cd $8d $25
    call Call_000_2625                            ; $7e40: $cd $25 $26

Jump_041_7e43:
    ld a, $06                                     ; $7e43: $3e $06
    ldh [$96], a                                  ; $7e45: $e0 $96
    ldh [rSVBK], a                                ; $7e47: $e0 $70
    ld a, [$d630]                                 ; $7e49: $fa $30 $d6
    dec a                                         ; $7e4c: $3d
    ld [$d630], a                                 ; $7e4d: $ea $30 $d6
    jr nz, jr_041_7ec3                            ; $7e50: $20 $71

    ld a, $02                                     ; $7e52: $3e $02
    ld [$d630], a                                 ; $7e54: $ea $30 $d6
    ld a, [$d634]                                 ; $7e57: $fa $34 $d6
    and a                                         ; $7e5a: $a7
    jr nz, jr_041_7ec3                            ; $7e5b: $20 $66

    ldh a, [$8a]                                  ; $7e5d: $f0 $8a
    inc a                                         ; $7e5f: $3c
    ldh [$8a], a                                  ; $7e60: $e0 $8a
    and $0f                                       ; $7e62: $e6 $0f
    jr nz, jr_041_7ec3                            ; $7e64: $20 $5d

    ld hl, $d632                                  ; $7e66: $21 $32 $d6
    ld a, [hl+]                                   ; $7e69: $2a
    ld h, [hl]                                    ; $7e6a: $66
    ld l, a                                       ; $7e6b: $6f
    ld a, $03                                     ; $7e6c: $3e $03
    ldh [$96], a                                  ; $7e6e: $e0 $96
    ldh [rSVBK], a                                ; $7e70: $e0 $70
    ld de, $d020                                  ; $7e72: $11 $20 $d0
    call Call_041_7f60                            ; $7e75: $cd $60 $7f
    call Call_041_7f5a                            ; $7e78: $cd $5a $7f
    and a                                         ; $7e7b: $a7
    jr nz, jr_041_7e8b                            ; $7e7c: $20 $0d

    ld a, $06                                     ; $7e7e: $3e $06
    ldh [$96], a                                  ; $7e80: $e0 $96
    ldh [rSVBK], a                                ; $7e82: $e0 $70
    ld a, $01                                     ; $7e84: $3e $01
    ld [$d634], a                                 ; $7e86: $ea $34 $d6
    jr jr_041_7ec3                                ; $7e89: $18 $38

jr_041_7e8b:
    ld de, $0090                                  ; $7e8b: $11 $90 $00
    call Call_041_7f41                            ; $7e8e: $cd $41 $7f
    push de                                       ; $7e91: $d5
    ld a, $03                                     ; $7e92: $3e $03
    ldh [$96], a                                  ; $7e94: $e0 $96
    ldh [rSVBK], a                                ; $7e96: $e0 $70
    ld hl, $d000                                  ; $7e98: $21 $00 $d0
    ld c, $02                                     ; $7e9b: $0e $02
    call Call_000_0468                            ; $7e9d: $cd $68 $04
    pop de                                        ; $7ea0: $d1
    ld hl, $0020                                  ; $7ea1: $21 $20 $00
    add hl, de                                    ; $7ea4: $19
    ld d, h                                       ; $7ea5: $54
    ld e, l                                       ; $7ea6: $5d
    ld hl, $d020                                  ; $7ea7: $21 $20 $d0
    ld c, $02                                     ; $7eaa: $0e $02
    call Call_000_0468                            ; $7eac: $cd $68 $04
    ld a, $06                                     ; $7eaf: $3e $06
    ldh [$96], a                                  ; $7eb1: $e0 $96
    ldh [rSVBK], a                                ; $7eb3: $e0 $70
    ld hl, $d632                                  ; $7eb5: $21 $32 $d6
    ld b, h                                       ; $7eb8: $44
    ld c, l                                       ; $7eb9: $4d
    ld a, [hl+]                                   ; $7eba: $2a
    ld d, [hl]                                    ; $7ebb: $56
    ld e, a                                       ; $7ebc: $5f
    inc de                                        ; $7ebd: $13
    ld h, b                                       ; $7ebe: $60
    ld l, c                                       ; $7ebf: $69
    ld a, e                                       ; $7ec0: $7b
    ld [hl+], a                                   ; $7ec1: $22
    ld [hl], d                                    ; $7ec2: $72

jr_041_7ec3:
    ld a, [$d634]                                 ; $7ec3: $fa $34 $d6
    and a                                         ; $7ec6: $a7
    jr z, jr_041_7ecf                             ; $7ec7: $28 $06

    ldh a, [$90]                                  ; $7ec9: $f0 $90
    and $0b                                       ; $7ecb: $e6 $0b
    jr nz, jr_041_7ee5                            ; $7ecd: $20 $16

jr_041_7ecf:
    call Call_000_2e3b                            ; $7ecf: $cd $3b $2e
    ld a, $03                                     ; $7ed2: $3e $03
    ldh [$96], a                                  ; $7ed4: $e0 $96
    ldh [rSVBK], a                                ; $7ed6: $e0 $70
    xor a                                         ; $7ed8: $af
    ld b, $40                                     ; $7ed9: $06 $40
    ld hl, $d000                                  ; $7edb: $21 $00 $d0

jr_041_7ede:
    ld [hl+], a                                   ; $7ede: $22
    inc b                                         ; $7edf: $04
    jr nz, jr_041_7ede                            ; $7ee0: $20 $fc

    jp Jump_041_7e43                              ; $7ee2: $c3 $43 $7e


jr_041_7ee5:
    ld c, $01                                     ; $7ee5: $0e $01
    call Call_000_25a1                            ; $7ee7: $cd $a1 $25
    call Call_000_2625                            ; $7eea: $cd $25 $26
    rst $18                                       ; $7eed: $df
    ld [$c901], sp                                ; $7eee: $08 $01 $c9

Call_041_7ef1:
    ld a, $06                                     ; $7ef1: $3e $06
    ldh [$96], a                                  ; $7ef3: $e0 $96
    ldh [rSVBK], a                                ; $7ef5: $e0 $70
    ld hl, $d630                                  ; $7ef7: $21 $30 $d6
    ld a, $02                                     ; $7efa: $3e $02
    ld [hl+], a                                   ; $7efc: $22
    ld [hl+], a                                   ; $7efd: $22
    ld de, $181c                                  ; $7efe: $11 $1c $18
    ld a, e                                       ; $7f01: $7b
    ld [hl+], a                                   ; $7f02: $22
    ld [hl], d                                    ; $7f03: $72
    xor a                                         ; $7f04: $af
    ld [$d634], a                                 ; $7f05: $ea $34 $d6
    ld a, $02                                     ; $7f08: $3e $02
    ldh [$96], a                                  ; $7f0a: $e0 $96
    ldh [rSVBK], a                                ; $7f0c: $e0 $70
    ld bc, $0400                                  ; $7f0e: $01 $00 $04
    ld d, $00                                     ; $7f11: $16 $00
    ld hl, $d000                                  ; $7f13: $21 $00 $d0
    call Call_041_48e5                            ; $7f16: $cd $e5 $48
    ld hl, $d000                                  ; $7f19: $21 $00 $d0
    ld de, $b800                                  ; $7f1c: $11 $00 $b8
    ld c, $40                                     ; $7f1f: $0e $40
    call Call_000_04db                            ; $7f21: $cd $db $04
    ld a, $03                                     ; $7f24: $3e $03
    ldh [$96], a                                  ; $7f26: $e0 $96
    ldh [rSVBK], a                                ; $7f28: $e0 $70
    ld bc, $0400                                  ; $7f2a: $01 $00 $04
    ld d, $20                                     ; $7f2d: $16 $20
    ld hl, $d000                                  ; $7f2f: $21 $00 $d0
    call Call_041_48e5                            ; $7f32: $cd $e5 $48
    ld hl, $d000                                  ; $7f35: $21 $00 $d0
    ld de, $9800                                  ; $7f38: $11 $00 $98
    ld c, $40                                     ; $7f3b: $0e $40
    call Call_000_04db                            ; $7f3d: $cd $db $04
    ret                                           ; $7f40: $c9


Call_041_7f41:
    ldh a, [$8a]                                  ; $7f41: $f0 $8a
    ld h, $00                                     ; $7f43: $26 $00
    ld l, a                                       ; $7f45: $6f
    add hl, de                                    ; $7f46: $19
    sla l                                         ; $7f47: $cb $25
    rl h                                          ; $7f49: $cb $14
    sla l                                         ; $7f4b: $cb $25
    rl h                                          ; $7f4d: $cb $14
    ld a, h                                       ; $7f4f: $7c
    and $03                                       ; $7f50: $e6 $03
    ld h, a                                       ; $7f52: $67
    ld de, $9800                                  ; $7f53: $11 $00 $98
    add hl, de                                    ; $7f56: $19
    ld d, h                                       ; $7f57: $54
    ld e, l                                       ; $7f58: $5d
    ret                                           ; $7f59: $c9


Call_041_7f5a:
    ld a, [$d020]                                 ; $7f5a: $fa $20 $d0
    sub $23                                       ; $7f5d: $d6 $23
    ret                                           ; $7f5f: $c9


Call_041_7f60:
    ld a, $05                                     ; $7f60: $3e $05
    ldh [$96], a                                  ; $7f62: $e0 $96
    ldh [rSVBK], a                                ; $7f64: $e0 $70
    rst $18                                       ; $7f66: $df
    inc h                                         ; $7f67: $24
    dec b                                         ; $7f68: $05
    ld hl, $c600                                  ; $7f69: $21 $00 $c6

jr_041_7f6c:
    ld a, $05                                     ; $7f6c: $3e $05
    ldh [$96], a                                  ; $7f6e: $e0 $96
    ldh [rSVBK], a                                ; $7f70: $e0 $70
    ld a, [hl+]                                   ; $7f72: $2a
    and a                                         ; $7f73: $a7
    jr z, jr_041_7f8a                             ; $7f74: $28 $14

    ld b, a                                       ; $7f76: $47
    sub $60                                       ; $7f77: $d6 $60
    jr c, jr_041_7f7f                             ; $7f79: $38 $04

    ld a, b                                       ; $7f7b: $78
    sub $20                                       ; $7f7c: $d6 $20
    ld b, a                                       ; $7f7e: $47

jr_041_7f7f:
    ld a, $03                                     ; $7f7f: $3e $03
    ldh [$96], a                                  ; $7f81: $e0 $96
    ldh [rSVBK], a                                ; $7f83: $e0 $70
    ld a, b                                       ; $7f85: $78
    ld [de], a                                    ; $7f86: $12
    inc de                                        ; $7f87: $13
    jr jr_041_7f6c                                ; $7f88: $18 $e2

jr_041_7f8a:
    ld a, $03                                     ; $7f8a: $3e $03
    ldh [$96], a                                  ; $7f8c: $e0 $96
    ldh [rSVBK], a                                ; $7f8e: $e0 $70
    ret                                           ; $7f90: $c9


    add b                                         ; $7f91: $80
    jr @-$7e                                      ; $7f92: $18 $80

    jr @-$10                                      ; $7f94: $18 $ee

    db $10                                        ; $7f96: $10
    rst $38                                       ; $7f97: $ff
    ld a, a                                       ; $7f98: $7f
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

Call_041_7fe1:
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
