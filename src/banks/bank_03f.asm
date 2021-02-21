; Disassembly of "mgolf.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $03f", ROMX[$4000], BANK[$3f]

    db $02, $40

    push af                                       ; $4002: $f5
    ld a, $06                                     ; $4003: $3e $06
    ldh [$96], a                                  ; $4005: $e0 $96
    ldh [rSVBK], a                                ; $4007: $e0 $70
    pop af                                        ; $4009: $f1
    ld [$d610], a                                 ; $400a: $ea $10 $d6
    cp $00                                        ; $400d: $fe $00
    jr z, jr_03f_4029                             ; $400f: $28 $18

    cp $01                                        ; $4011: $fe $01
    jr z, jr_03f_402d                             ; $4013: $28 $18

    cp $02                                        ; $4015: $fe $02
    jr z, jr_03f_4031                             ; $4017: $28 $18

    cp $03                                        ; $4019: $fe $03
    jr z, jr_03f_4035                             ; $401b: $28 $18

    cp $04                                        ; $401d: $fe $04
    jr z, jr_03f_4039                             ; $401f: $28 $18

    cp $05                                        ; $4021: $fe $05
    jr z, jr_03f_403d                             ; $4023: $28 $18

    ld a, $1f                                     ; $4025: $3e $1f
    jr jr_03f_4046                                ; $4027: $18 $1d

jr_03f_4029:
    ld a, $01                                     ; $4029: $3e $01
    jr jr_03f_4046                                ; $402b: $18 $19

jr_03f_402d:
    ld a, $02                                     ; $402d: $3e $02
    jr jr_03f_4046                                ; $402f: $18 $15

jr_03f_4031:
    ld a, $04                                     ; $4031: $3e $04
    jr jr_03f_4046                                ; $4033: $18 $11

jr_03f_4035:
    ld a, $08                                     ; $4035: $3e $08
    jr jr_03f_4046                                ; $4037: $18 $0d

jr_03f_4039:
    ld a, $10                                     ; $4039: $3e $10
    jr jr_03f_4046                                ; $403b: $18 $09

jr_03f_403d:
    ld a, $01                                     ; $403d: $3e $01
    ld [$d60f], a                                 ; $403f: $ea $0f $d6
    ld a, $1f                                     ; $4042: $3e $1f
    jr jr_03f_4046                                ; $4044: $18 $00

jr_03f_4046:
    ld [$d60e], a                                 ; $4046: $ea $0e $d6
    xor a                                         ; $4049: $af
    ld [$d616], a                                 ; $404a: $ea $16 $d6
    ld [$d613], a                                 ; $404d: $ea $13 $d6
    ld [$d609], a                                 ; $4050: $ea $09 $d6
    ld [$d60a], a                                 ; $4053: $ea $0a $d6
    ld [$d61a], a                                 ; $4056: $ea $1a $d6
    ld a, $08                                     ; $4059: $3e $08
    ld [$d615], a                                 ; $405b: $ea $15 $d6
    ld a, $00                                     ; $405e: $3e $00
    ld [$d614], a                                 ; $4060: $ea $14 $d6
    ld a, $b4                                     ; $4063: $3e $b4
    ld [$d619], a                                 ; $4065: $ea $19 $d6
    call Call_03f_433c                            ; $4068: $cd $3c $43
    ld a, $06                                     ; $406b: $3e $06
    ldh [$96], a                                  ; $406d: $e0 $96
    ldh [rSVBK], a                                ; $406f: $e0 $70
    xor a                                         ; $4071: $af
    ld [$d60f], a                                 ; $4072: $ea $0f $d6
    ld a, [$d610]                                 ; $4075: $fa $10 $d6
    cp $06                                        ; $4078: $fe $06
    jr z, jr_03f_408e                             ; $407a: $28 $12

    call Call_000_2e3b                            ; $407c: $cd $3b $2e
    call Call_03f_5d0a                            ; $407f: $cd $0a $5d
    ld a, [$d610]                                 ; $4082: $fa $10 $d6
    cp $05                                        ; $4085: $fe $05
    jr nz, jr_03f_408e                            ; $4087: $20 $05

    ld a, $01                                     ; $4089: $3e $01
    ld [$d60f], a                                 ; $408b: $ea $0f $d6

jr_03f_408e:
    rst $08                                       ; $408e: $cf

    db $16

    call Call_000_2e3b                            ; $4090: $cd $3b $2e
    ld c, $10                                     ; $4093: $0e $10
    call Call_000_25af                            ; $4095: $cd $af $25
    call Call_000_2625                            ; $4098: $cd $25 $26
    ld a, $1d                                     ; $409b: $3e $1d
    ld hl, $58dd                                  ; $409d: $21 $dd $58
    call Call_000_23e8                            ; $40a0: $cd $e8 $23
    ld a, $06                                     ; $40a3: $3e $06
    ldh [$96], a                                  ; $40a5: $e0 $96
    ldh [rSVBK], a                                ; $40a7: $e0 $70
    ld a, [$d610]                                 ; $40a9: $fa $10 $d6
    cp $06                                        ; $40ac: $fe $06
    jr nz, jr_03f_40f6                            ; $40ae: $20 $46

    ld a, [$d613]                                 ; $40b0: $fa $13 $d6
    set 0, a                                      ; $40b3: $cb $c7
    ld [$d613], a                                 ; $40b5: $ea $13 $d6
    rst $18                                       ; $40b8: $df
    ld l, d                                       ; $40b9: $6a
    dec b                                         ; $40ba: $05
    ld d, $00                                     ; $40bb: $16 $00
    ld e, $06                                     ; $40bd: $1e $06
    ld b, $14                                     ; $40bf: $06 $14
    ld c, $05                                     ; $40c1: $0e $05
    ld hl, $1a23                                  ; $40c3: $21 $23 $1a
    rst $18                                       ; $40c6: $df
    ld b, $05                                     ; $40c7: $06 $05
    xor a                                         ; $40c9: $af
    rst $18                                       ; $40ca: $df
    ld d, d                                       ; $40cb: $52
    dec b                                         ; $40cc: $05
    ld b, $00                                     ; $40cd: $06 $00
    rst $18                                       ; $40cf: $df
    ld [de], a                                    ; $40d0: $12
    dec b                                         ; $40d1: $05
    xor a                                         ; $40d2: $af
    rst $18                                       ; $40d3: $df
    ld l, [hl]                                    ; $40d4: $6e
    dec b                                         ; $40d5: $05
    xor a                                         ; $40d6: $af
    rst $18                                       ; $40d7: $df
    halt                                          ; $40d8: $76
    dec b                                         ; $40d9: $05
    rst $18                                       ; $40da: $df
    ld [hl], d                                    ; $40db: $72
    dec b                                         ; $40dc: $05
    ld a, $06                                     ; $40dd: $3e $06
    ldh [$96], a                                  ; $40df: $e0 $96
    ldh [rSVBK], a                                ; $40e1: $e0 $70
    ld a, [$d613]                                 ; $40e3: $fa $13 $d6
    res 0, a                                      ; $40e6: $cb $87
    ld [$d613], a                                 ; $40e8: $ea $13 $d6
    call Call_03f_58b9                            ; $40eb: $cd $b9 $58
    call Call_000_2ed5                            ; $40ee: $cd $d5 $2e
    ld bc, $023e                                  ; $40f1: $01 $3e $02
    jr jr_03f_4100                                ; $40f4: $18 $0a

jr_03f_40f6:
    ld a, [$d613]                                 ; $40f6: $fa $13 $d6
    set 1, a                                      ; $40f9: $cb $cf
    ld [$d613], a                                 ; $40fb: $ea $13 $d6
    ld a, $08                                     ; $40fe: $3e $08

Jump_03f_4100:
jr_03f_4100:
    call Call_000_2e3b                            ; $4100: $cd $3b $2e
    cp $04                                        ; $4103: $fe $04
    jp z, Jump_03f_411c                           ; $4105: $ca $1c $41

    cp $10                                        ; $4108: $fe $10
    jp z, Jump_03f_4121                           ; $410a: $ca $21 $41

    cp $08                                        ; $410d: $fe $08
    jp z, Jump_03f_4117                           ; $410f: $ca $17 $41

    call Call_03f_5f73                            ; $4112: $cd $73 $5f
    jr jr_03f_4124                                ; $4115: $18 $0d

Jump_03f_4117:
    call Call_03f_6017                            ; $4117: $cd $17 $60
    jr jr_03f_4124                                ; $411a: $18 $08

Jump_03f_411c:
    call Call_03f_4140                            ; $411c: $cd $40 $41
    jr jr_03f_4124                                ; $411f: $18 $03

Jump_03f_4121:
    call Call_03f_418c                            ; $4121: $cd $8c $41

jr_03f_4124:
    call Call_000_05dd                            ; $4124: $cd $dd $05
    cp $01                                        ; $4127: $fe $01
    jp nz, Jump_03f_4100                          ; $4129: $c2 $00 $41

    push af                                       ; $412c: $f5
    ld c, $10                                     ; $412d: $0e $10
    call Call_000_25a1                            ; $412f: $cd $a1 $25
    call Call_000_2625                            ; $4132: $cd $25 $26
    pop af                                        ; $4135: $f1
    call Call_03f_41f6                            ; $4136: $cd $f6 $41
    ld hl, $58dd                                  ; $4139: $21 $dd $58
    call Call_000_2449                            ; $413c: $cd $49 $24
    ret                                           ; $413f: $c9


Call_03f_4140:
    ld c, $10                                     ; $4140: $0e $10
    call Call_000_25a1                            ; $4142: $cd $a1 $25
    call Call_000_2625                            ; $4145: $cd $25 $26
    ld a, $0d                                     ; $4148: $3e $0d
    ld [$c321], a                                 ; $414a: $ea $21 $c3
    xor a                                         ; $414d: $af
    ld [$c320], a                                 ; $414e: $ea $20 $c3
    ld a, $06                                     ; $4151: $3e $06
    ldh [$96], a                                  ; $4153: $e0 $96
    ldh [rSVBK], a                                ; $4155: $e0 $70
    ld a, [$d60a]                                 ; $4157: $fa $0a $d6
    ld b, a                                       ; $415a: $47
    xor a                                         ; $415b: $af
    call Call_03f_5f4c                            ; $415c: $cd $4c $5f
    rst $18                                       ; $415f: $df
    inc a                                         ; $4160: $3c
    inc b                                         ; $4161: $04
    call Call_000_2e3b                            ; $4162: $cd $3b $2e
    call Call_000_0341                            ; $4165: $cd $41 $03
    call Call_03f_4216                            ; $4168: $cd $16 $42
    ld a, $01                                     ; $416b: $3e $01
    rst $18                                       ; $416d: $df
    inc b                                         ; $416e: $04
    dec bc                                        ; $416f: $0b
    call Call_000_0371                            ; $4170: $cd $71 $03
    call Call_03f_5ed2                            ; $4173: $cd $d2 $5e
    call Call_03f_5d0a                            ; $4176: $cd $0a $5d
    ld a, [$d613]                                 ; $4179: $fa $13 $d6
    set 1, a                                      ; $417c: $cb $cf
    ld [$d613], a                                 ; $417e: $ea $13 $d6
    ld c, $10                                     ; $4181: $0e $10
    call Call_000_25af                            ; $4183: $cd $af $25
    call Call_000_2625                            ; $4186: $cd $25 $26
    ld a, $08                                     ; $4189: $3e $08
    ret                                           ; $418b: $c9


Call_03f_418c:
    ld c, $10                                     ; $418c: $0e $10
    call Call_000_25a1                            ; $418e: $cd $a1 $25
    call Call_000_2625                            ; $4191: $cd $25 $26
    ld a, $21                                     ; $4194: $3e $21
    ld [$c321], a                                 ; $4196: $ea $21 $c3
    xor a                                         ; $4199: $af
    ld [$c320], a                                 ; $419a: $ea $20 $c3
    call Call_03f_5f16                            ; $419d: $cd $16 $5f
    rst $18                                       ; $41a0: $df
    inc a                                         ; $41a1: $3c
    inc b                                         ; $41a2: $04
    call Call_000_2e3b                            ; $41a3: $cd $3b $2e
    call Call_000_0341                            ; $41a6: $cd $41 $03
    call Call_03f_42a9                            ; $41a9: $cd $a9 $42
    ld a, $06                                     ; $41ac: $3e $06
    ldh [$96], a                                  ; $41ae: $e0 $96
    ldh [rSVBK], a                                ; $41b0: $e0 $70
    ld a, [$d60a]                                 ; $41b2: $fa $0a $d6
    ld b, a                                       ; $41b5: $47
    ld a, $01                                     ; $41b6: $3e $01
    call Call_03f_5f4c                            ; $41b8: $cd $4c $5f
    ld a, $01                                     ; $41bb: $3e $01
    rst $18                                       ; $41bd: $df
    inc b                                         ; $41be: $04
    dec bc                                        ; $41bf: $0b
    call Call_000_0371                            ; $41c0: $cd $71 $03
    ld a, $06                                     ; $41c3: $3e $06
    ldh [$96], a                                  ; $41c5: $e0 $96
    ldh [rSVBK], a                                ; $41c7: $e0 $70
    ld a, [$d613]                                 ; $41c9: $fa $13 $d6
    res 1, a                                      ; $41cc: $cb $8f
    ld [$d613], a                                 ; $41ce: $ea $13 $d6
    ld c, $10                                     ; $41d1: $0e $10
    call Call_000_25af                            ; $41d3: $cd $af $25
    call Call_000_2625                            ; $41d6: $cd $25 $26
    ld a, $02                                     ; $41d9: $3e $02
    ret                                           ; $41db: $c9


    add hl, de                                    ; $41dc: $19
    ld a, h                                       ; $41dd: $7c
    cp b                                          ; $41de: $b8
    jr nc, jr_03f_41eb                            ; $41df: $30 $0a

    ld a, l                                       ; $41e1: $7d
    ld [$c320], a                                 ; $41e2: $ea $20 $c3
    ld a, h                                       ; $41e5: $7c
    ld [$c321], a                                 ; $41e6: $ea $21 $c3
    jr jr_03f_41f1                                ; $41e9: $18 $06

jr_03f_41eb:
    rst $18                                       ; $41eb: $df
    inc a                                         ; $41ec: $3c
    inc b                                         ; $41ed: $04
    ld a, $01                                     ; $41ee: $3e $01
    ret                                           ; $41f0: $c9


jr_03f_41f1:
    rst $18                                       ; $41f1: $df
    inc a                                         ; $41f2: $3c
    inc b                                         ; $41f3: $04
    xor a                                         ; $41f4: $af
    ret                                           ; $41f5: $c9


Call_03f_41f6:
    ld a, $06                                     ; $41f6: $3e $06
    ldh [$96], a                                  ; $41f8: $e0 $96
    ldh [rSVBK], a                                ; $41fa: $e0 $70
    xor a                                         ; $41fc: $af
    ldh [$8b], a                                  ; $41fd: $e0 $8b
    ld [$c321], a                                 ; $41ff: $ea $21 $c3
    ld [$c320], a                                 ; $4202: $ea $20 $c3
    ldh [$8a], a                                  ; $4205: $e0 $8a
    ld hl, $c322                                  ; $4207: $21 $22 $c3
    ld [hl+], a                                   ; $420a: $22
    ld [hl+], a                                   ; $420b: $22
    ldh [$b9], a                                  ; $420c: $e0 $b9
    ldh [$b8], a                                  ; $420e: $e0 $b8
    ld hl, $c82d                                  ; $4210: $21 $2d $c8
    res 7, [hl]                                   ; $4213: $cb $be
    ret                                           ; $4215: $c9


Call_03f_4216:
    ld a, $01                                     ; $4216: $3e $01
    ldh [$96], a                                  ; $4218: $e0 $96
    ldh [rSVBK], a                                ; $421a: $e0 $70
    ld hl, $4e04                                  ; $421c: $21 $04 $4e
    ld de, $d000                                  ; $421f: $11 $00 $d0
    call Call_000_0234                            ; $4222: $cd $34 $02
    ld hl, $d000                                  ; $4225: $21 $00 $d0
    ld de, $b000                                  ; $4228: $11 $00 $b0
    ld c, $80                                     ; $422b: $0e $80
    call Call_000_04db                            ; $422d: $cd $db $04
    ld a, $06                                     ; $4230: $3e $06
    ldh [$96], a                                  ; $4232: $e0 $96
    ldh [rSVBK], a                                ; $4234: $e0 $70
    ld a, [$d610]                                 ; $4236: $fa $10 $d6
    push af                                       ; $4239: $f5
    ld a, $01                                     ; $423a: $3e $01
    ldh [$96], a                                  ; $423c: $e0 $96
    ldh [rSVBK], a                                ; $423e: $e0 $70
    ld hl, $4889                                  ; $4240: $21 $89 $48
    ld de, $d000                                  ; $4243: $11 $00 $d0
    call Call_000_1f2f                            ; $4246: $cd $2f $1f
    ld hl, $d000                                  ; $4249: $21 $00 $d0
    pop af                                        ; $424c: $f1
    add a                                         ; $424d: $87
    add $d0                                       ; $424e: $c6 $d0
    ld h, a                                       ; $4250: $67
    ld de, $b400                                  ; $4251: $11 $00 $b4
    ld c, $20                                     ; $4254: $0e $20
    call Call_000_04db                            ; $4256: $cd $db $04
    ld hl, $4841                                  ; $4259: $21 $41 $48
    ld de, $0008                                  ; $425c: $11 $08 $00
    call Call_000_0595                            ; $425f: $cd $95 $05
    ld a, $02                                     ; $4262: $3e $02
    ldh [$96], a                                  ; $4264: $e0 $96
    ldh [rSVBK], a                                ; $4266: $e0 $70
    ld hl, $44f5                                  ; $4268: $21 $f5 $44
    ld de, $d000                                  ; $426b: $11 $00 $d0
    call Call_000_1f2f                            ; $426e: $cd $2f $1f
    ld de, $b800                                  ; $4271: $11 $00 $b8
    ld hl, $d000                                  ; $4274: $21 $00 $d0
    ld c, $48                                     ; $4277: $0e $48
    call Call_000_04db                            ; $4279: $cd $db $04
    call Call_03f_431c                            ; $427c: $cd $1c $43
    ld a, $01                                     ; $427f: $3e $01
    ldh [$96], a                                  ; $4281: $e0 $96
    ldh [rSVBK], a                                ; $4283: $e0 $70
    ld hl, $4f54                                  ; $4285: $21 $54 $4f
    ld de, $d000                                  ; $4288: $11 $00 $d0
    call Call_000_1f2f                            ; $428b: $cd $2f $1f
    ld hl, $5036                                  ; $428e: $21 $36 $50
    ld de, $d200                                  ; $4291: $11 $00 $d2
    call Call_000_1f2f                            ; $4294: $cd $2f $1f
    ld hl, $d000                                  ; $4297: $21 $00 $d0
    ld de, $a600                                  ; $429a: $11 $00 $a6
    ld c, $20                                     ; $429d: $0e $20
    call Call_000_04db                            ; $429f: $cd $db $04
    ld a, $02                                     ; $42a2: $3e $02
    ldh [$96], a                                  ; $42a4: $e0 $96
    ldh [rSVBK], a                                ; $42a6: $e0 $70
    ret                                           ; $42a8: $c9


Call_03f_42a9:
    ld a, $01                                     ; $42a9: $3e $01
    ldh [$96], a                                  ; $42ab: $e0 $96
    ldh [rSVBK], a                                ; $42ad: $e0 $70
    ld hl, $4e02                                  ; $42af: $21 $02 $4e
    ld de, $d000                                  ; $42b2: $11 $00 $d0
    call Call_000_0234                            ; $42b5: $cd $34 $02
    ld hl, $d000                                  ; $42b8: $21 $00 $d0
    ld de, $b000                                  ; $42bb: $11 $00 $b0
    ld c, $80                                     ; $42be: $0e $80
    call Call_000_04db                            ; $42c0: $cd $db $04
    ld hl, $d800                                  ; $42c3: $21 $00 $d8
    ld de, $a800                                  ; $42c6: $11 $00 $a8
    ld c, $80                                     ; $42c9: $0e $80
    call Call_000_04db                            ; $42cb: $cd $db $04
    ld hl, $47f9                                  ; $42ce: $21 $f9 $47
    ld de, $0008                                  ; $42d1: $11 $08 $00
    call Call_000_0595                            ; $42d4: $cd $95 $05
    ld a, $02                                     ; $42d7: $3e $02
    ldh [$96], a                                  ; $42d9: $e0 $96
    ldh [rSVBK], a                                ; $42db: $e0 $70
    ld hl, $4485                                  ; $42dd: $21 $85 $44
    ld de, $d000                                  ; $42e0: $11 $00 $d0
    call Call_000_1f2f                            ; $42e3: $cd $2f $1f
    ld a, $01                                     ; $42e6: $3e $01
    ldh [$96], a                                  ; $42e8: $e0 $96
    ldh [rSVBK], a                                ; $42ea: $e0 $70
    ld hl, $4e06                                  ; $42ec: $21 $06 $4e
    ld de, $d000                                  ; $42ef: $11 $00 $d0
    call Call_000_0234                            ; $42f2: $cd $34 $02
    ld hl, $4e08                                  ; $42f5: $21 $08 $4e
    ld de, $d200                                  ; $42f8: $11 $00 $d2
    call Call_000_0234                            ; $42fb: $cd $34 $02
    ld hl, $4e0a                                  ; $42fe: $21 $0a $4e
    ld de, $d400                                  ; $4301: $11 $00 $d4
    call Call_000_0234                            ; $4304: $cd $34 $02
    ld hl, $4e0c                                  ; $4307: $21 $0c $4e
    ld de, $d600                                  ; $430a: $11 $00 $d6
    call Call_000_0234                            ; $430d: $cd $34 $02
    ld hl, $d000                                  ; $4310: $21 $00 $d0
    ld de, $a600                                  ; $4313: $11 $00 $a6
    ld c, $20                                     ; $4316: $0e $20
    call Call_000_04db                            ; $4318: $cd $db $04
    ret                                           ; $431b: $c9


Call_03f_431c:
    ld a, $02                                     ; $431c: $3e $02
    ldh [$96], a                                  ; $431e: $e0 $96
    ldh [rSVBK], a                                ; $4320: $e0 $70
    ld c, $0e                                     ; $4322: $0e $0e
    ld hl, $444d                                  ; $4324: $21 $4d $44

jr_03f_4327:
    push bc                                       ; $4327: $c5
    ld a, [hl+]                                   ; $4328: $2a
    ld e, a                                       ; $4329: $5f
    ld a, [hl+]                                   ; $432a: $2a
    ld d, a                                       ; $432b: $57
    ld a, [hl+]                                   ; $432c: $2a
    ld c, a                                       ; $432d: $4f
    ld a, [hl+]                                   ; $432e: $2a
    ld b, a                                       ; $432f: $47
    push hl                                       ; $4330: $e5
    ld h, d                                       ; $4331: $62
    ld l, e                                       ; $4332: $6b
    call Call_000_039f                            ; $4333: $cd $9f $03
    pop hl                                        ; $4336: $e1
    pop bc                                        ; $4337: $c1
    dec c                                         ; $4338: $0d
    jr nz, jr_03f_4327                            ; $4339: $20 $ec

    ret                                           ; $433b: $c9


Call_03f_433c:
    ld a, $06                                     ; $433c: $3e $06
    ldh [$96], a                                  ; $433e: $e0 $96
    ldh [rSVBK], a                                ; $4340: $e0 $70
    ld a, [$d610]                                 ; $4342: $fa $10 $d6
    cp $06                                        ; $4345: $fe $06
    jr nz, jr_03f_434d                            ; $4347: $20 $04

    ld a, $21                                     ; $4349: $3e $21
    jr jr_03f_434f                                ; $434b: $18 $02

jr_03f_434d:
    ld a, $0d                                     ; $434d: $3e $0d

jr_03f_434f:
    ldh [$8b], a                                  ; $434f: $e0 $8b
    ld [$c321], a                                 ; $4351: $ea $21 $c3
    xor a                                         ; $4354: $af
    ld [$c320], a                                 ; $4355: $ea $20 $c3
    ldh [$8a], a                                  ; $4358: $e0 $8a
    ld hl, $c322                                  ; $435a: $21 $22 $c3
    ld [hl+], a                                   ; $435d: $22
    ld [hl+], a                                   ; $435e: $22
    ldh [$b9], a                                  ; $435f: $e0 $b9
    ldh [$b8], a                                  ; $4361: $e0 $b8
    call Call_000_0341                            ; $4363: $cd $41 $03
    call Call_000_23b6                            ; $4366: $cd $b6 $23
    call Call_03f_5b9f                            ; $4369: $cd $9f $5b
    call Call_03f_5bc2                            ; $436c: $cd $c2 $5b
    ld a, $01                                     ; $436f: $3e $01
    ldh [$96], a                                  ; $4371: $e0 $96
    ldh [rSVBK], a                                ; $4373: $e0 $70
    ld hl, $5119                                  ; $4375: $21 $19 $51
    ld de, $d000                                  ; $4378: $11 $00 $d0
    call Call_000_1f2f                            ; $437b: $cd $2f $1f
    ld hl, $d000                                  ; $437e: $21 $00 $d0
    ld de, $8000                                  ; $4381: $11 $00 $80
    ld c, $20                                     ; $4384: $0e $20
    call Call_000_04db                            ; $4386: $cd $db $04
    ld hl, $525a                                  ; $4389: $21 $5a $52
    ld de, $d000                                  ; $438c: $11 $00 $d0
    call Call_000_1f2f                            ; $438f: $cd $2f $1f
    ld hl, $d000                                  ; $4392: $21 $00 $d0
    ld de, $8200                                  ; $4395: $11 $00 $82
    ld c, $20                                     ; $4398: $0e $20
    call Call_000_04db                            ; $439a: $cd $db $04
    ld hl, $53d2                                  ; $439d: $21 $d2 $53
    ld de, $d000                                  ; $43a0: $11 $00 $d0
    call Call_000_1f2f                            ; $43a3: $cd $2f $1f
    ld hl, $d000                                  ; $43a6: $21 $00 $d0
    ld de, $8400                                  ; $43a9: $11 $00 $84
    ld c, $20                                     ; $43ac: $0e $20
    call Call_000_04db                            ; $43ae: $cd $db $04
    ld hl, $5530                                  ; $43b1: $21 $30 $55
    ld de, $d000                                  ; $43b4: $11 $00 $d0
    call Call_000_1f2f                            ; $43b7: $cd $2f $1f
    ld hl, $d000                                  ; $43ba: $21 $00 $d0
    ld de, $a000                                  ; $43bd: $11 $00 $a0
    ld c, $20                                     ; $43c0: $0e $20
    call Call_000_04db                            ; $43c2: $cd $db $04
    ld hl, $5609                                  ; $43c5: $21 $09 $56
    ld de, $d000                                  ; $43c8: $11 $00 $d0
    call Call_000_1f2f                            ; $43cb: $cd $2f $1f
    ld hl, $d000                                  ; $43ce: $21 $00 $d0
    ld de, $a200                                  ; $43d1: $11 $00 $a2
    ld c, $20                                     ; $43d4: $0e $20
    call Call_000_04db                            ; $43d6: $cd $db $04
    ld hl, $5756                                  ; $43d9: $21 $56 $57
    ld de, $d000                                  ; $43dc: $11 $00 $d0
    call Call_000_1f2f                            ; $43df: $cd $2f $1f
    ld hl, $d000                                  ; $43e2: $21 $00 $d0
    ld de, $a400                                  ; $43e5: $11 $00 $a4
    ld c, $20                                     ; $43e8: $0e $20
    call Call_000_04db                            ; $43ea: $cd $db $04
    ld a, $01                                     ; $43ed: $3e $01
    ldh [$96], a                                  ; $43ef: $e0 $96
    ldh [rSVBK], a                                ; $43f1: $e0 $70
    ld hl, $5811                                  ; $43f3: $21 $11 $58
    ld de, $0808                                  ; $43f6: $11 $08 $08
    call Call_000_0595                            ; $43f9: $cd $95 $05
    ld a, $06                                     ; $43fc: $3e $06
    ldh [$96], a                                  ; $43fe: $e0 $96
    ldh [rSVBK], a                                ; $4400: $e0 $70
    ld a, [$d610]                                 ; $4402: $fa $10 $d6
    cp $06                                        ; $4405: $fe $06
    jr nz, jr_03f_440e                            ; $4407: $20 $05

    call Call_03f_42a9                            ; $4409: $cd $a9 $42
    jr jr_03f_4411                                ; $440c: $18 $03

jr_03f_440e:
    call Call_03f_4216                            ; $440e: $cd $16 $42

jr_03f_4411:
    ld a, $03                                     ; $4411: $3e $03
    ldh [$96], a                                  ; $4413: $e0 $96
    ldh [rSVBK], a                                ; $4415: $e0 $70
    ld hl, $4565                                  ; $4417: $21 $65 $45
    ld de, $d000                                  ; $441a: $11 $00 $d0
    call Call_000_1f2f                            ; $441d: $cd $2f $1f
    ld a, $06                                     ; $4420: $3e $06
    ldh [$96], a                                  ; $4422: $e0 $96
    ldh [rSVBK], a                                ; $4424: $e0 $70
    call Call_000_0371                            ; $4426: $cd $71 $03
    ld a, $06                                     ; $4429: $3e $06
    ldh [$96], a                                  ; $442b: $e0 $96
    ldh [rSVBK], a                                ; $442d: $e0 $70
    rst $18                                       ; $442f: $df

    db $3c, $04

    call Call_000_0341                            ; $4432: $cd $41 $03
    ld a, $03                                     ; $4435: $3e $03
    ldh [$96], a                                  ; $4437: $e0 $96
    ldh [rSVBK], a                                ; $4439: $e0 $70
    ld a, $01                                     ; $443b: $3e $01
    rst $18                                       ; $443d: $df

    db $04, $0b

    call Call_000_0371                            ; $4440: $cd $71 $03
    ld hl, $c82d                                  ; $4443: $21 $2d $c8
    set 7, [hl]                                   ; $4446: $cb $fe
    xor a                                         ; $4448: $af
    ld [$c372], a                                 ; $4449: $ea $72 $c3
    ret                                           ; $444c: $c9


    db $10, $d1, $0f, $00, $50, $d1, $10, $00, $90, $d1, $0f, $00, $d0, $d1, $10, $00
    db $10, $d2, $0f, $00, $50, $d2, $10, $00, $90, $d2, $0f, $00, $d0, $d2, $10, $00
    db $10, $d3, $0f, $00, $50, $d3, $10, $00, $90, $d3, $0f, $00, $d0, $d3, $10, $00
    db $50, $d0, $01, $00, $5e, $d0, $01, $00

    sub l                                         ; $4485: $95
    dec bc                                        ; $4486: $0b
    rst $38                                       ; $4487: $ff
    db $fd                                        ; $4488: $fd
    inc c                                         ; $4489: $0c
    rst $38                                       ; $448a: $ff
    ldh a, [$08]                                  ; $448b: $f0 $08
    rst $38                                       ; $448d: $ff
    rst $20                                       ; $448e: $e7
    ret nz                                        ; $448f: $c0

    rst $38                                       ; $4490: $ff
    dec c                                         ; $4491: $0d
    ret nz                                        ; $4492: $c0

    rst $38                                       ; $4493: $ff
    ld [$ffc0], a                                 ; $4494: $ea $c0 $ff
    adc h                                         ; $4497: $8c
    pop hl                                        ; $4498: $e1
    db $fc                                        ; $4499: $fc
    db $e4                                        ; $449a: $e4
    ret nz                                        ; $449b: $c0

    rst $38                                       ; $449c: $ff
    add b                                         ; $449d: $80
    rst $38                                       ; $449e: $ff
    inc c                                         ; $449f: $0c
    ld c, l                                       ; $44a0: $4d
    nop                                           ; $44a1: $00
    rst $38                                       ; $44a2: $ff
    pop hl                                        ; $44a3: $e1
    cp e                                          ; $44a4: $bb
    ld [c], a                                     ; $44a5: $e2
    or $e1                                        ; $44a6: $f6 $e1
    ret nz                                        ; $44a8: $c0

    rst $38                                       ; $44a9: $ff
    ld b, b                                       ; $44aa: $40
    rst $38                                       ; $44ab: $ff
    ret nz                                        ; $44ac: $c0

    rst $38                                       ; $44ad: $ff
    ret nz                                        ; $44ae: $c0

    rst $38                                       ; $44af: $ff
    ret nz                                        ; $44b0: $c0

    rst $38                                       ; $44b1: $ff
    nop                                           ; $44b2: $00
    ret nz                                        ; $44b3: $c0

    and $dd                                       ; $44b4: $e6 $dd
    pop hl                                        ; $44b6: $e1
    dec sp                                        ; $44b7: $3b
    ld [c], a                                     ; $44b8: $e2
    ld [hl], c                                    ; $44b9: $71
    add $c0                                       ; $44ba: $c6 $c0
    rst $38                                       ; $44bc: $ff
    or h                                          ; $44bd: $b4
    swap c                                        ; $44be: $cb $31
    call $ffc0                                    ; $44c0: $cd $c0 $ff
    nop                                           ; $44c3: $00
    ret nz                                        ; $44c4: $c0

    rst $38                                       ; $44c5: $ff
    ret nz                                        ; $44c6: $c0

    rst $38                                       ; $44c7: $ff
    ret nz                                        ; $44c8: $c0

    rst $38                                       ; $44c9: $ff
    ret nz                                        ; $44ca: $c0

    rst $38                                       ; $44cb: $ff
    ret nz                                        ; $44cc: $c0

    rst $38                                       ; $44cd: $ff
    nop                                           ; $44ce: $00
    rst $18                                       ; $44cf: $df
    rst $38                                       ; $44d0: $ff
    add sp, -$40                                  ; $44d1: $e8 $c0
    rst $38                                       ; $44d3: $ff
    nop                                           ; $44d4: $00
    ld b, b                                       ; $44d5: $40
    rst $18                                       ; $44d6: $df
    ret nz                                        ; $44d7: $c0

    rst $38                                       ; $44d8: $ff
    ret nz                                        ; $44d9: $c0

    rst $38                                       ; $44da: $ff
    ret nz                                        ; $44db: $c0

    rst $38                                       ; $44dc: $ff
    ret nz                                        ; $44dd: $c0

    jp hl                                         ; $44de: $e9


    call c, $c0e7                                 ; $44df: $dc $e7 $c0
    rst $38                                       ; $44e2: $ff
    add b                                         ; $44e3: $80
    rst $38                                       ; $44e4: $ff
    nop                                           ; $44e5: $00
    ret nz                                        ; $44e6: $c0

    rst $38                                       ; $44e7: $ff
    add b                                         ; $44e8: $80
    rst $08                                       ; $44e9: $cf
    ld a, l                                       ; $44ea: $7d
    rst $20                                       ; $44eb: $e7
    ret nz                                        ; $44ec: $c0

    rst $38                                       ; $44ed: $ff
    ret nz                                        ; $44ee: $c0

    ld a, a                                       ; $44ef: $7f
    ret nz                                        ; $44f0: $c0

    jp hl                                         ; $44f1: $e9


    nop                                           ; $44f2: $00
    nop                                           ; $44f3: $00
    nop                                           ; $44f4: $00

    db $85, $08, $ff, $e9, $0c, $ff, $f0, $df, $ea, $fd, $fc, $c0, $e2, $0a, $02, $ff
    db $e7, $0c, $ae, $e0, $ca, $ff, $c0, $f8, $80, $ff, $40, $ec, $ad, $ef, $00, $ca
    db $ff, $c0, $eb, $cf, $ec, $c0, $ff, $c0, $ff, $a7, $c8, $c0, $ff, $80, $f7, $00
    db $b2, $c0, $80, $ff, $80, $fa, $40, $ff, $c0, $d3, $fb, $c4, $40, $ff, $80, $d3
    db $00, $83, $e4, $e7, $a2, $c0, $ff, $80, $d1, $ac, $a3, $80, $df, $00, $d6, $bf
    db $ff, $00, $c0, $b8, $48, $e2, $82, $ff, $80, $bf, $c0, $ff, $c0, $ff, $c0, $ff
    db $c0, $ff, $00, $c0, $ff, $c0, $ff, $40, $96, $c0, $7f, $cc, $e9, $00, $00

    nop                                           ; $4564: $00

    db $fd, $6a, $ff, $e9, $1b, $1c, $18, $19, $1a, $1d, $7e, $ff, $e7, $15, $16, $17
    db $1e, $70, $71, $ff, $ea, $3f, $72, $76, $8e, $ae, $84, $00, $ff, $e7, $c0, $ea
    db $ff, $2b, $2c, $28, $20, $2a, $40, $41, $42, $ff, $43, $44, $45, $46, $47, $48
    db $49, $4a, $ff, $25, $20, $27, $2e, $80, $66, $66, $73, $ff, $a0, $a1, $a2, $a3
    db $a4, $a5, $a6, $a7, $7f, $75, $66, $66, $82, $77, $8f, $af, $c0, $f8, $ff, $38
    db $39, $3a, $50, $51, $52, $53, $54, $ff, $55, $56, $57, $58, $59, $5a, $35, $36
    db $fd, $37, $c0, $e1, $93, $b0, $b1, $b2, $b3, $b4, $ef, $b5, $b6, $b7, $95, $c0
    db $e0, $78, $96, $b8, $e2, $80, $f8, $20, $ff, $ed, $80, $e1, $fe, $e9, $82, $79
    db $97, $39, $b9, $c0, $ff, $c0, $f8, $7a, $98, $ba, $c0, $ff, $80, $f8, $07, $7b
    db $99, $bb, $c0, $ff, $40, $ea, $5d, $c1, $3b, $e2, $54, $c1, $cf, $82, $7c, $9a
    db $bc, $c0, $ff, $00, $e9, $10, $11, $e7, $12, $13, $14, $36, $c0, $25, $c0, $1b
    db $1c, $1d, $cf, $82, $7d, $9b, $bd, $c0, $ff, $c0, $c9, $20, $21, $ff, $22, $23
    db $24, $25, $26, $27, $28, $29, $ff, $2a, $2b, $2c, $2d, $82, $7e, $9c, $be, $7c
    db $c0, $ff, $80, $c9, $30, $31, $32, $33, $34, $36, $c0, $fe, $25, $c0, $3b, $3c
    db $3d, $82, $7f, $9d, $bf, $f8, $c0, $ff, $40, $c9, $b0, $a8, $4b, $4c, $4d, $82
    db $86, $f3, $9e, $c8, $c0, $ff, $00, $d5, $5c, $5d, $82, $87, $73, $9f, $c9, $c0
    db $ff, $c0, $b8, $88, $a8, $ca, $c0, $ff, $0e, $80, $b8, $89, $a9, $cb, $c0, $ff
    db $40, $ab, $5c, $87, $c0, $80, $e7, $8a, $aa, $cc, $c0, $ff, $00, $b8, $8b, $ab
    db $cd, $f0, $c0, $ff, $c0, $89, $81, $a2, $d9, $66, $82, $8c, $ac, $ce, $b8, $00
    db $96, $20, $c0, $ff, $ed, $3e, $90, $91, $ff, $ea, $92, $07, $8d, $ad, $cf, $c0
    db $69, $00, $00

    nop                                           ; $46a8: $00
    db $fd                                        ; $46a9: $fd
    ld l, d                                       ; $46aa: $6a
    rst $38                                       ; $46ab: $ff
    jp hl                                         ; $46ac: $e9


    dec de                                        ; $46ad: $1b
    inc e                                         ; $46ae: $1c
    jr jr_03f_46ca                                ; $46af: $18 $19

    ld a, [de]                                    ; $46b1: $1a
    dec e                                         ; $46b2: $1d
    ld a, [hl]                                    ; $46b3: $7e
    rst $38                                       ; $46b4: $ff
    rst $20                                       ; $46b5: $e7
    dec d                                         ; $46b6: $15
    ld d, $17                                     ; $46b7: $16 $17
    ld e, $70                                     ; $46b9: $1e $70
    ld [hl], c                                    ; $46bb: $71
    rst $38                                       ; $46bc: $ff
    db $ec                                        ; $46bd: $ec
    rst $08                                       ; $46be: $cf
    ld [hl], d                                    ; $46bf: $72
    halt                                          ; $46c0: $76
    ld [hl], a                                    ; $46c1: $77
    nop                                           ; $46c2: $00
    rst $38                                       ; $46c3: $ff
    rst $20                                       ; $46c4: $e7
    ret nz                                        ; $46c5: $c0

    ld [$2c2b], a                                 ; $46c6: $ea $2b $2c
    rst $38                                       ; $46c9: $ff

jr_03f_46ca:
    jr z, @+$2b                                   ; $46ca: $28 $29

    ld a, [hl+]                                   ; $46cc: $2a
    ld b, b                                       ; $46cd: $40
    ld b, c                                       ; $46ce: $41
    ld b, d                                       ; $46cf: $42
    ld b, e                                       ; $46d0: $43
    ld b, h                                       ; $46d1: $44
    rst $38                                       ; $46d2: $ff
    ld b, l                                       ; $46d3: $45
    ld b, [hl]                                    ; $46d4: $46
    ld b, a                                       ; $46d5: $47
    ld c, b                                       ; $46d6: $48
    ld c, c                                       ; $46d7: $49
    ld c, d                                       ; $46d8: $4a
    dec h                                         ; $46d9: $25
    ld h, $f7                                     ; $46da: $26 $f7
    daa                                           ; $46dc: $27
    ld l, $80                                     ; $46dd: $2e $80
    sbc [hl]                                      ; $46df: $9e
    ldh [$73], a                                  ; $46e0: $e0 $73
    and b                                         ; $46e2: $a0
    and c                                         ; $46e3: $a1
    and d                                         ; $46e4: $a2
    cp a                                          ; $46e5: $bf
    and e                                         ; $46e6: $a3
    and h                                         ; $46e7: $a4
    and l                                         ; $46e8: $a5
    and [hl]                                      ; $46e9: $a6
    and a                                         ; $46ea: $a7
    ld [hl], l                                    ; $46eb: $75
    sub c                                         ; $46ec: $91
    ldh [$82], a                                  ; $46ed: $e0 $82
    ei                                            ; $46ef: $fb
    add [hl]                                      ; $46f0: $86
    add a                                         ; $46f1: $87
    ret nz                                        ; $46f2: $c0

    rst $30                                       ; $46f3: $f7
    jr c, @+$3b                                   ; $46f4: $38 $39

    ld a, [hl-]                                   ; $46f6: $3a
    ld d, b                                       ; $46f7: $50
    ld d, c                                       ; $46f8: $51
    rst $38                                       ; $46f9: $ff
    ld d, d                                       ; $46fa: $52
    ld d, e                                       ; $46fb: $53
    ld d, h                                       ; $46fc: $54
    ld d, l                                       ; $46fd: $55
    ld d, [hl]                                    ; $46fe: $56
    ld d, a                                       ; $46ff: $57
    ld e, b                                       ; $4700: $58
    ld e, c                                       ; $4701: $59
    rst $28                                       ; $4702: $ef
    ld e, d                                       ; $4703: $5a
    dec [hl]                                      ; $4704: $35
    ld [hl], $37                                  ; $4705: $36 $37
    ret nz                                        ; $4707: $c0

    ldh [$73], a                                  ; $4708: $e0 $73
    ld [hl], h                                    ; $470a: $74
    sub e                                         ; $470b: $93
    rst $38                                       ; $470c: $ff
    or b                                          ; $470d: $b0
    or c                                          ; $470e: $b1
    or d                                          ; $470f: $b2
    or e                                          ; $4710: $b3
    or h                                          ; $4711: $b4
    or l                                          ; $4712: $b5
    or [hl]                                       ; $4713: $b6
    or a                                          ; $4714: $b7
    ld a, a                                       ; $4715: $7f
    sub l                                         ; $4716: $95
    ld [hl], h                                    ; $4717: $74
    ld [hl], l                                    ; $4718: $75
    ld l, d                                       ; $4719: $6a
    add d                                         ; $471a: $82
    sbc b                                         ; $471b: $98
    add h                                         ; $471c: $84
    add b                                         ; $471d: $80
    rst $30                                       ; $471e: $f7
    jp hl                                         ; $471f: $e9


    jr nz, @+$01                                  ; $4720: $20 $ff

    db $ed                                        ; $4722: $ed
    add b                                         ; $4723: $80
    ldh [$83], a                                  ; $4724: $e0 $83
    inc e                                         ; $4726: $1c
    jp hl                                         ; $4727: $e9


    add l                                         ; $4728: $85
    ld l, d                                       ; $4729: $6a
    add d                                         ; $472a: $82
    push af                                       ; $472b: $f5
    sbc c                                         ; $472c: $99
    ret nz                                        ; $472d: $c0

    ld a, [$c029]                                 ; $472e: $fa $29 $c0
    di                                            ; $4731: $f3
    db $10                                        ; $4732: $10
    ld de, $1312                                  ; $4733: $11 $12 $13
    sub d                                         ; $4736: $92
    ret nz                                        ; $4737: $c0

    db $e4                                        ; $4738: $e4
    sbc d                                         ; $4739: $9a
    ret nz                                        ; $473a: $c0

    rst $38                                       ; $473b: $ff
    add b                                         ; $473c: $80
    db $ec                                        ; $473d: $ec
    inc d                                         ; $473e: $14
    or a                                          ; $473f: $b7
    ret nz                                        ; $4740: $c0

    and [hl]                                      ; $4741: $a6
    ret nz                                        ; $4742: $c0

    dec de                                        ; $4743: $1b
    rr h                                          ; $4744: $cb $1c
    dec e                                         ; $4746: $1d
    add b                                         ; $4747: $80
    pop hl                                        ; $4748: $e1
    sbc e                                         ; $4749: $9b
    ret nz                                        ; $474a: $c0

    rst $38                                       ; $474b: $ff
    ld b, b                                       ; $474c: $40
    db $ed                                        ; $474d: $ed
    jr nz, jr_03f_4771                            ; $474e: $20 $21

    daa                                           ; $4750: $27
    ld [hl+], a                                   ; $4751: $22
    inc hl                                        ; $4752: $23
    inc h                                         ; $4753: $24
    or d                                          ; $4754: $b2
    ret nz                                        ; $4755: $c0

    ld b, b                                       ; $4756: $40
    ld [c], a                                     ; $4757: $e2
    sbc h                                         ; $4758: $9c
    ret nz                                        ; $4759: $c0

    rst $38                                       ; $475a: $ff
    nop                                           ; $475b: $00
    db $ed                                        ; $475c: $ed
    cp [hl]                                       ; $475d: $be
    ld l, c                                       ; $475e: $69
    ret nz                                        ; $475f: $c0

    dec hl                                        ; $4760: $2b
    inc l                                         ; $4761: $2c
    dec l                                         ; $4762: $2d
    ld l, $2f                                     ; $4763: $2e $2f
    nop                                           ; $4765: $00
    ld [c], a                                     ; $4766: $e2
    sbc l                                         ; $4767: $9d
    db $fc                                        ; $4768: $fc
    ret nz                                        ; $4769: $c0

    rst $18                                       ; $476a: $df
    ret nz                                        ; $476b: $c0

    call z, $1f1e                                 ; $476c: $cc $1e $1f
    jr nc, jr_03f_47a2                            ; $476f: $30 $31

jr_03f_4771:
    ld [hl-], a                                   ; $4771: $32
    inc sp                                        ; $4772: $33
    ret                                           ; $4773: $c9


    inc [hl]                                      ; $4774: $34
    ld [hl], c                                    ; $4775: $71
    ret nz                                        ; $4776: $c0

    ret nz                                        ; $4777: $c0

    pop bc                                        ; $4778: $c1
    sbc [hl]                                      ; $4779: $9e
    ret nz                                        ; $477a: $c0

    rst $38                                       ; $477b: $ff
    add b                                         ; $477c: $80
    srl c                                         ; $477d: $cb $39
    ld a, [hl-]                                   ; $477f: $3a
    sbc a                                         ; $4780: $9f
    dec sp                                        ; $4781: $3b
    inc a                                         ; $4782: $3c
    dec a                                         ; $4783: $3d
    ld a, $3f                                     ; $4784: $3e $3f
    rst $20                                       ; $4786: $e7
    and d                                         ; $4787: $a2
    add b                                         ; $4788: $80
    ret nz                                        ; $4789: $c0

    sbc a                                         ; $478a: $9f
    ld e, b                                       ; $478b: $58
    ret nz                                        ; $478c: $c0

    rst $38                                       ; $478d: $ff
    ld b, b                                       ; $478e: $40
    call $a3b1                                    ; $478f: $cd $b1 $a3
    ld c, e                                       ; $4792: $4b
    ld c, h                                       ; $4793: $4c
    ld b, b                                       ; $4794: $40
    jp nz, $c0c8                                  ; $4795: $c2 $c8 $c0

    rst $38                                       ; $4798: $ff
    xor $00                                       ; $4799: $ee $00
    bit 1, l                                      ; $479b: $cb $4d
    ld c, [hl]                                    ; $479d: $4e
    ld c, a                                       ; $479e: $4f
    xor e                                         ; $479f: $ab
    and e                                         ; $47a0: $a3
    ld h, b                                       ; $47a1: $60

jr_03f_47a2:
    ld h, c                                       ; $47a2: $61
    ld h, d                                       ; $47a3: $62
    ld [c], a                                     ; $47a4: $e2
    nop                                           ; $47a5: $00
    ret nz                                        ; $47a6: $c0

    ret                                           ; $47a7: $c9


    ret nz                                        ; $47a8: $c0

    rst $38                                       ; $47a9: $ff
    ret nz                                        ; $47aa: $c0

    xor e                                         ; $47ab: $ab
    ld [hl], h                                    ; $47ac: $74
    and c                                         ; $47ad: $a1
    ld l, d                                       ; $47ae: $6a
    ld e, d                                       ; $47af: $5a
    ld e, e                                       ; $47b0: $5b
    ld e, a                                       ; $47b1: $5f
    ld l, d                                       ; $47b2: $6a
    ld e, h                                       ; $47b3: $5c
    ld e, l                                       ; $47b4: $5d
    ld e, [hl]                                    ; $47b5: $5e
    ld e, a                                       ; $47b6: $5f
    ret nz                                        ; $47b7: $c0

    and b                                         ; $47b8: $a0
    jp z, $ffc0                                   ; $47b9: $ca $c0 $ff

    ld a, [c]                                     ; $47bc: $f2
    add b                                         ; $47bd: $80
    cp d                                          ; $47be: $ba
    set 0, b                                      ; $47bf: $cb $c0
    rst $38                                       ; $47c1: $ff
    ld b, b                                       ; $47c2: $40
    xor l                                         ; $47c3: $ad
    ret nz                                        ; $47c4: $c0

    pop bc                                        ; $47c5: $c1
    jp nz, Jump_000_2fc3                          ; $47c6: $c2 $c3 $2f

    call nz, $c6c5                                ; $47c9: $c4 $c5 $c6
    rst $00                                       ; $47cc: $c7
    ld b, b                                       ; $47cd: $40
    and d                                         ; $47ce: $a2
    call z, $ffc0                                 ; $47cf: $cc $c0 $ff
    nop                                           ; $47d2: $00
    xor d                                         ; $47d3: $aa
    ld a, e                                       ; $47d4: $7b
    sub e                                         ; $47d5: $93
    sub h                                         ; $47d6: $94
    rst $38                                       ; $47d7: $ff
    add sp, -$6b                                  ; $47d8: $e8 $95
    ld l, d                                       ; $47da: $6a
    add d                                         ; $47db: $82
    call $ffc0                                    ; $47dc: $cd $c0 $ff
    adc h                                         ; $47df: $8c
    ret nz                                        ; $47e0: $c0

    adc d                                         ; $47e1: $8a
    rst $38                                       ; $47e2: $ff
    db $ec                                        ; $47e3: $ec
    add d                                         ; $47e4: $82
    adc $c0                                       ; $47e5: $ce $c0
    or $19                                        ; $47e7: $f6 $19
    ret nz                                        ; $47e9: $c0

    rst $38                                       ; $47ea: $ff
    db $ed                                        ; $47eb: $ed
    ld a, $1b                                     ; $47ec: $3e $1b
    sub b                                         ; $47ee: $90
    sub c                                         ; $47ef: $91
    rst $38                                       ; $47f0: $ff
    db $ec                                        ; $47f1: $ec
    sub d                                         ; $47f2: $92
    rst $08                                       ; $47f3: $cf
    add b                                         ; $47f4: $80
    jp hl                                         ; $47f5: $e9


    nop                                           ; $47f6: $00
    nop                                           ; $47f7: $00
    nop                                           ; $47f8: $00
    ldh [$7f], a                                  ; $47f9: $e0 $7f
    rst $38                                       ; $47fb: $ff
    ld l, e                                       ; $47fc: $6b
    ld e, a                                       ; $47fd: $5f
    ld d, $00                                     ; $47fe: $16 $00
    nop                                           ; $4800: $00
    ldh [$7f], a                                  ; $4801: $e0 $7f
    rst $38                                       ; $4803: $ff
    ld l, e                                       ; $4804: $6b
    ld e, a                                       ; $4805: $5f
    ld d, $00                                     ; $4806: $16 $00
    nop                                           ; $4808: $00
    di                                            ; $4809: $f3
    inc bc                                        ; $480a: $03
    ld b, $00                                     ; $480b: $06 $00
    ld d, h                                       ; $480d: $54
    ld bc, $2a1f                                  ; $480e: $01 $1f $2a
    nop                                           ; $4811: $00
    ld bc, $0fc9                                  ; $4812: $01 $c9 $0f
    ld e, a                                       ; $4815: $5f
    ld d, $66                                     ; $4816: $16 $66
    ld a, [bc]                                    ; $4818: $0a
    ld e, a                                       ; $4819: $5f
    ld d, $ff                                     ; $481a: $16 $ff
    ld l, e                                       ; $481c: $6b
    ld d, h                                       ; $481d: $54
    ld bc, $0000                                  ; $481e: $01 $00 $00
    ld e, a                                       ; $4821: $5f
    ld d, $ff                                     ; $4822: $16 $ff
    inc bc                                        ; $4824: $03
    ld d, h                                       ; $4825: $54
    ld bc, $0000                                  ; $4826: $01 $00 $00
    rra                                           ; $4829: $1f
    nop                                           ; $482a: $00
    nop                                           ; $482b: $00
    ld b, b                                       ; $482c: $40
    di                                            ; $482d: $f3
    inc bc                                        ; $482e: $03
    ld b, $00                                     ; $482f: $06 $00
    rra                                           ; $4831: $1f
    nop                                           ; $4832: $00
    ld b, $00                                     ; $4833: $06 $00
    rra                                           ; $4835: $1f
    ld a, [hl+]                                   ; $4836: $2a
    di                                            ; $4837: $f3
    inc bc                                        ; $4838: $03
    ld b, h                                       ; $4839: $44
    ld de, $0006                                  ; $483a: $11 $06 $00
    rra                                           ; $483d: $1f
    ld a, [hl+]                                   ; $483e: $2a
    di                                            ; $483f: $f3
    inc bc                                        ; $4840: $03

    db $e0, $7f, $ff, $6b, $5f, $16, $00, $00, $e0, $7f, $ff, $6b, $5f, $16, $00, $00
    db $5f, $16, $ff, $6b, $ff, $03, $00, $00, $73, $11, $c9, $0d, $5f, $16, $14, $0a
    db $5f, $16, $ff, $6b, $54, $01, $00, $00, $5f, $16, $ff, $03, $54, $01, $00, $00
    db $1f, $00, $00, $40, $f3, $03, $06, $00, $1f, $00, $06, $00, $1f, $2a, $f3, $03

    ld e, a                                       ; $4881: $5f
    ld d, $06                                     ; $4882: $16 $06
    nop                                           ; $4884: $00
    rra                                           ; $4885: $1f
    ld a, [hl+]                                   ; $4886: $2a
    di                                            ; $4887: $f3
    inc bc                                        ; $4888: $03

    db $ff, $6f, $60, $9f, $d0, $9f, $f0, $9e, $f0, $ff, $9f, $f1, $9e, $f0, $97, $f1
    db $8f, $ef, $ff, $ff, $00, $ff, $00, $fe, $0e, $d1, $d5, $ff, $20, $af, $e3, $ef
    db $31, $b5, $38, $fe, $ff, $b7, $30, $cf, $58, $4b, $78, $86, $bc, $ff, $85, $fd
    db $4a, $7a, $4e, $7b, $ce, $fb, $ff, $fd, $01, $fa, $02, $fc, $05, $e4, $e7, $ff
    db $18, $5b, $08, $ef, $6c, $ff, $6c, $ff, $ff, $b7, $87, $68, $cb, $50, $d7, $a3
    db $ab, $ff, $65, $fc, $66, $fc, $a5, $bd, $e3, $bb, $ff, $df, $c0, $3f, $a0, $3f
    db $e0, $ce, $ce, $ff, $d1, $15, $e0, $ee, $26, $ff, $26, $ff, $ff, $6b, $63, $94
    db $b5, $98, $fb, $99, $ff, $df, $90, $f7, $90, $ff, $99, $fe, $e0, $7e, $7e, $ff
    db $81, $bd, $81, $ff, $66, $7e, $a5, $bd, $bf, $e6, $be, $66, $3f, $e6, $3f, $90
    db $e1, $ff, $ff, $00, $e6, $e6, $19, $5d, $68, $ef, $09, $f7, $ef, $79, $ff, $f0
    db $e3, $de, $de, $21, $fd, $df, $20, $be, $e0, $f5, $6a, $e0, $e2, $dd, $1c, $ff
    db $a2, $2a, $41, $5f, $c6, $de, $62, $6a, $c7, $71, $fd, $00, $ff, $ff, $ff, $ff
    db $e9, $e8, $81, $bf, $cf, $41, $5d, $be, $3e, $7a, $e3, $04, $e1, $20, $ee, $ef
    db $21, $fd, $de, $de, $f0, $e7, $ce, $fa, $4d, $f7, $69, $b6, $30, $e0, $e7, $0c
    db $ef, $14, $56, $fb, $eb, $e3, $d0, $e7, $e0, $af, $d0, $97, $6f, $3d, $0f, $c0
    db $e9, $31, $b5, $ce, $ce, $b0, $e7, $0c, $e0, $f7, $dd, $66, $66, $a0, $e7, $e6
    db $3e, $e5, $35, $fb, $da, $18, $90, $e7, $09, $ef, $19, $5f, $e6, $fd, $e6, $80
    db $e7, $ea, $3f, $ea, $3b, $d5, $15, $7e, $70, $e7, $41, $dd, $42, $7a, $bd, $bc
    db $60, $e7, $e0, $ff, $ff, $ff, $ff, $ea, $e9, $00, $df, $00, $db, $bb, $83, $74
    db $ff, $c5, $68, $cb, $b1, $95, $72, $de, $73, $ff, $de, $b2, $9e, $f1, $9d, $ef
    db $e0, $1f, $ff, $d0, $1f, $f0, $e7, $e7, $e8, $0a, $70, $ff, $77, $93, $ff, $93
    db $ff, $b5, $31, $ca, $ff, $5a, $cc, $7d, $4c, $7f, $c8, $fb, $48, $ff, $7f, $4c
    db $ff, $4c, $ff, $af, $8f, $70, $ff, $d7, $70, $df, $b3, $9f, $73, $df, $70, $ff
    db $df, $b0, $9f, $f2, $9e, $bf, $80, $5f, $ff, $40, $3f, $a0, $3b, $fb, $24, $f7
    db $64, $df, $ff, $24, $bf, $24, $ff, $70, $e0, $b0, $9f, $bf, $f0, $97, $f7, $98
    db $fa, $93, $ce, $a0, $93, $fe, $f0, $a2, $dd, $1c, $22, $2a, $c1, $df, $46, $0f
    db $5e, $62, $6a, $f1, $00, $df, $ff, $ff, $00, $df, $00, $df, $7e, $d0, $e6, $f0
    db $97, $e8, $8b, $77, $07, $c0, $e7, $bf, $10, $f7, $18, $da, $e7, $e7, $b0, $e7
    db $4c, $df, $7f, $cc, $ee, $33, $33, $a0, $e7, $f3, $9f, $ef, $f3, $97, $6c, $0c
    db $90, $e8, $ef, $30, $76, $fb, $cf, $cf, $80, $e7, $90, $f7, $98, $da, $67, $7d
    db $67, $00, $c8, $5d, $c2, $fa, $3d, $3c, $00, $df, $fc, $ff, $ff, $f4, $f3, $df
    db $1f, $a0, $2e, $40, $5f, $ff, $8f, $af, $97, $f0, $9b, $f3, $94, $f7, $ff, $8c
    db $ef, $7d, $01, $fe, $82, $fe, $83, $ff, $3a, $3b, $46, $57, $82, $bb, $9a, $ff
    db $ff, $9a, $ff, $ac, $8c, $53, $d7, $63, $ef, $ff, $65, $fd, $43, $df, $43, $ff
    db $65, $fd, $ff, $67, $fd, $f7, $f0, $0f, $7f, $08, $eb, $ff, $30, $f7, $13, $ff
    db $13, $df, $30, $f7, $ff, $38, $fb, $ff, $00, $bf, $80, $7f, $40, $7f, $6f, $ef
    db $52, $ff, $53, $ff, $52, $fe, $e0, $ff, $ff, $00, $bd, $3c, $c2, $5a, $c1, $fd
    db $7f, $59, $7f, $d9, $ff, $41, $7d, $43, $e0, $e0, $fe, $ae, $a1, $f5, $f1, $0a
    db $eb, $05, $f7, $04, $fb, $af, $54, $20, $82, $fe, $00, $9d, $9d, $63, $ff, $fb
    db $a1, $bf, $24, $fe, $e4, $ff, $66, $ff, $66, $99, $bd, $99, $ff, $09, $7f, $09
    db $f6, $e2, $62, $98, $fe, $f0, $62, $01, $da, $1a, $e4, $ff, $35, $dc, $1d, $66
    db $36, $e7, $ff, $ed, $ff, $0c, $f3, $16, $92, $9e, $61, $6f, $21, $7f, $ff, $d2
    db $de, $53, $5e, $33, $be, $2e, $ff, $7c, $ff, $ff, $ea, $e9, $80, $bf, $40, $5e
    db $bf, $7a, $64, $7e, $04, $a1, $82, $bb, $c6, $d7, $39, $39, $f0, $a7, $bf, $67
    db $fd, $66, $74, $9b, $98, $e0, $a7, $0e, $df, $7f, $8a, $ab, $75, $71, $d0, $a7
    db $42, $df, $ef, $62, $fb, $9d, $9d, $c0, $a7, $4d, $fd, $4f, $f7, $f9, $b7, $b1
    db $b0, $a7, $54, $fd, $56, $de, $fb, $ad, $ad, $a0, $a7, $24, $bf, $64, $76, $9b
    db $fd, $9b, $90, $a7, $98, $fb, $94, $d5, $6b, $63, $be, $e0, $e8, $fd, $24, $bf
    db $db, $db, $70, $a7, $33, $1f, $be, $53, $5a, $ad, $8c, $00, $df, $ff, $ff, $f4
    db $f3, $ff, $de, $1e, $a1, $2d, $41, $5f, $8e, $ae, $fe, $02, $80, $f7, $99, $ff
    db $89, $ef, $fb, $03, $ff, $fc, $05, $fc, $07, $74, $77, $8c, $af, $ff, $04, $77
    db $34, $ff, $34, $ff, $5b, $1b, $ff, $a4, $ad, $c4, $df, $ca, $fb, $86, $bf, $bf
    db $86, $ff, $ca, $fb, $ce, $fb, $20, $83, $7a, $ff, $f8, $65, $fd, $5a, $fa, $42
    db $ff, $4e, $fe, $60, $c1, $1a, $f3, $1e, $f3, $ff, $10, $7e, $df, $10, $df, $72
    db $ff, $72, $40, $44, $3d, $39, $cf, $c6, $f7, $43, $7b, $f0, $a3, $9e, $e1, $c1
    db $df, $7f, $4d, $7f, $cd, $ff, $41, $5f, $61, $a0, $62, $ff, $ff, $00, $bb, $bb
    db $4c, $5f, $4b, $ff, $ff, $48, $ff, $49, $ff, $fd, $01, $fe, $03, $ff, $da, $1b
    db $26, $27, $c2, $df, $4e, $5f, $ef, $66, $e7, $f2, $fb, $b2, $a1, $7f, $c0, $6d
    db $ff, $cd, $72, $da, $6e, $ce, $53, $db, $73, $fe, $00, $c2, $d2, $de, $21, $2f
    db $21, $ff, $72, $1f, $fe, $33, $3e, $93, $de, $2e, $ff, $ff, $ff, $00, $99, $bf
    db $04, $77, $8c, $ae, $73, $73, $00, $88, $fb, $ef, $ce, $eb, $35, $31, $10, $c8
    db $da, $65, $65, $fd, $9a, $f0, $a8, $12, $df, $12, $7b, $ed, $ed, $f4, $c0, $67
    db $fc, $80, $7b, $10, $c9, $59, $df, $69, $cf, $7b, $b6, $86, $a0, $67, $08, $7b
    db $8c, $ac, $a0, $e9, $bf, $42, $5a, $c5, $f5, $3a, $38, $b0, $e8, $fe, $fb, $12
    db $7f, $b0, $e9, $13, $de, $33, $ba, $cd, $c1, $cc, $00, $df, $ff, $ff, $f4, $f3
    db $06, $67, $76, $03, $f7, $07, $ff, $e8, $0b, $d0, $17, $e3, $2b, $e5, $3c, $bf
    db $e6, $3c, $e5, $3d, $e3, $3b, $30, $03, $db, $3f, $db, $a4, $37, $e4, $ff, $24
    db $fe, $e0, $50, $c1, $ff, $fe, $03, $66, $67, $98, $db, $f0, $f7, $ef, $93, $df
    db $93, $ff, $50, $c3, $5d, $dc, $62, $7f, $ea, $4d, $dd, $41, $fd, $4e, $fe, $50
    db $c2, $ff, $1e, $e1, $2f, $e1, $3f, $d3, $1f, $f3, $fc, $fe, $e0, $0a, $23, $77
    db $70, $8b, $a8, $07, $74, $ef, $37, $fc, $37, $fc, $90, $7d, $ad, $8c, $53, $ff
    db $d6, $63, $ee, $65, $fc, $43, $de, $43, $1f, $fe, $65, $fc, $67, $fc, $60, $ed
    db $ff, $ff, $ff, $ff, $be, $00, $f9, $e0, $2f, $d0, $17, $ef, $30, $09, $ef, $eb
    db $30, $b6, $60, $4c, $fb, $60, $4a, $dd, $62, $6a, $7b, $9d, $9c, $20, $48, $1f
    db $f2, $1a, $ed, $20, $48, $3f, $07, $74, $8b, $a8, $77, $70, $a0, $27, $90, $7e
    db $c3, $fc, $67, $90, $6a, $00, $ff, $ff, $ff, $fa, $f9, $7d, $7c, $ff, $83, $be
    db $83, $fa, $9d, $fd, $86, $ff, $df, $86, $f7, $9e, $ff, $8e, $60, $84, $d7, $c7
    db $ef, $28, $ab, $10, $d6, $40, $01, $ff, $00, $5b, $ff, $58, $a7, $f4, $a5, $fd
    db $a6, $fe, $c4, $ff, $fd, $24, $3f, $64, $7f, $d7, $10, $ef, $ff, $28, $ef, $38
    db $eb, $fb, $2c, $fd, $28, $ef, $bb, $e9, $ff, $e9, $20, $82, $e1, $2d, $a0, $ff
    db $be, $6c, $7f, $2c, $bf, $a0, $fe, $a1, $fd, $fd, $20, $41, $7f, $00, $b1, $b1
    db $ce, $fe, $df, $b4, $f5, $84, $f7, $9c, $30, $01, $d0, $9f, $ff, $f0, $9c, $fc
    db $13, $fb, $1e, $fe, $d2, $ff, $fb, $d2, $ff, $f7, $07, $f8, $0f, $f8, $ff, $0b
    db $e4, $e7, $1c, $77, $1c, $f7, $dc, $f7, $f7, $94, $b7, $c2, $20, $c0, $7f, $40
    db $fa, $ff, $f8, $c5, $f5, $c2, $fa, $d2, $ff, $d2, $ff, $ff, $b7, $30, $cf, $68
    db $cf, $78, $cb, $ff, $fb, $0c, $7f, $0b, $ff, $68, $ff, $69, $fe, $b0, $64, $76
    db $36, $c9, $eb, $41, $77, $62, $e3, $7e, $a2, $00, $5f, $ff, $ff, $eb, $ea, $82
    db $bf, $42, $77, $5b, $bd, $3d, $80, $08, $f6, $98, $db, $80, $09, $ef, $84, $b5
    db $8a, $ea, $10, $49, $28, $bb, $2c, $f7, $fd, $d3, $d3, $60, $87, $26, $be, $67
    db $7c, $be, $e0, $29, $84, $b5, $ce, $4e, $b1, $d0, $68, $12, $f7, $ff, $12, $de
    db $e0, $69, $08, $db, $28, $af, $fb, $df, $df, $d0, $68, $7e, $53, $fb, $ac, $ac
    db $be, $e0, $68, $fb, $0c, $6c, $f3, $f3, $a0, $a8, $77, $8f, $c9, $eb, $36, $36
    db $00, $df, $ff, $ff, $f4, $f3, $fb, $ff, $03, $f4, $05, $e8, $0b, $f1, $15, $f2
    db $7f, $1e, $f3, $1e, $f2, $1e, $f1, $1d, $20, $43, $bf, $e7, $e7, $e8, $0a, $70
    db $77, $00, $c1, $b5, $ff, $31, $ca, $5a, $cc, $7d, $4c, $7f, $c8, $ff, $fb, $48
    db $7f, $4c, $ff, $4c, $ff, $af, $ff, $8f, $70, $d7, $70, $df, $b3, $9f, $72, $ff
    db $de, $72, $de, $b2, $9e, $f3, $9f, $bf, $ff, $80, $5f, $40, $2f, $a0, $1c, $5c
    db $93, $ff, $fb, $9e, $fe, $92, $fb, $12, $7f, $f6, $ff, $06, $f9, $0b, $e9, $0f
    db $f0, $f7, $10, $bf, $5f, $19, $ff, $69, $ef, $69, $10, $42, $7f, $e7, $00, $e7
    db $e7, $d0, $64, $06, $e4, $bd, $bc, $42, $bf, $7a, $41, $ff, $4c, $fe, $4c, $d0
    db $24, $bc, $ff, $3c, $43, $5b, $83, $bf, $b3, $ff, $a3, $fc, $e0, $20, $7e, $20
    db $06, $fc, $ff, $24, $bf, $06, $ff, $f7, $39, $f9, $2b, $e3, $ff, $00, $37, $3f
    db $30, $cf, $e8, $cf, $f8, $cf, $c9, $a0, $fa, $e1, $f8, $2e, $ff, $ff, $ff, $ea
    db $e9, $f0, $17, $e8, $0b, $f7, $fd, $07, $90, $47, $10, $f7, $18, $da, $e7, $e7
    db $7e, $80, $47, $4c, $7f, $cc, $ee, $33, $33, $70, $47, $df, $f0, $9f, $f0, $97
    db $6f, $e0, $68, $12, $de, $f7, $33, $bf, $cc, $60, $48, $19, $ff, $19, $5d, $cb
    db $e6, $e6, $d0, $6a, $fa, $d0, $69, $b0, $ed, $81, $f7, $ef, $89, $af, $76, $76
    db $10, $47, $3c, $e5, $3c, $f7, $e7, $db, $c3, $00, $47, $0f, $e8, $17, $d0, $03
    db $ef, $e0, $00, $df, $ff, $ff, $f4, $f3, $00, $00

    nop                                           ; $4f53: $00

    db $ff, $fe, $fe, $06, $7f, $0c, $0f, $38, $3e, $ff, $60, $7c, $c0, $f0, $fe, $fe
    db $00, $7f, $fd, $00, $ff, $ec, $7c, $7c, $c6, $fe, $c6, $e7, $ff, $c6, $e7, $fe
    db $ff, $c6, $ff, $c6, $e7, $db, $00, $63, $e0, $ed, $fc, $fc, $e0, $e1, $fc, $ff
    db $f6, $fa, $e3, $00, $7e, $c0, $f1, $c0, $e3, $c0, $e0, $ff, $c0, $e0, $c6, $e6
    db $7c, $7f, $00, $3e, $7e, $a0, $ed, $f8, $f8, $cc, $fc, $c6, $e6, $9e, $e1, $bf
    db $cc, $ef, $f8, $fe, $00, $7c, $80, $ed, $fe, $ff, $fe, $c0, $ff, $c0, $e0, $fc
    db $fc, $c0, $e7, $fe, $c0, $e0, $60, $f1, $e0, $e9, $c0, $e0, $00, $ed, $60, $40
    db $ed, $7e, $7e, $c0, $e1, $ce, $ee, $c6, $37, $ef, $c6, $e7, $80, $f1, $c6, $c6
    db $22, $e7, $20, $f1, $bf, $78, $78, $30, $3c, $30, $38, $fe, $e3, $78, $f7, $78
    db $00, $3c, $a0, $ef, $0c, $3f, $0c, $0e, $7e, $fe, $e1, $4c, $4e, $38, $3e, $00
    db $1c, $a0, $ef, $ff, $dc, $ff, $f0, $fe, $e0, $f8, $f0, $f0, $6f, $dc, $fc, $c6
    db $ee, $c0, $cf, $c0, $c0, $e4, $c1, $fc, $fc, $e3, $80, $d1, $c6, $c6, $ee, $ef
    db $ee, $ff, $f1, $d6, $fe, $e0, $3e, $e1, $80, $cf, $c6, $c6, $e6, $e7, $1f, $f6
    db $f7, $de, $ff, $ce, $20, $e0, $60, $d1, $40, $c5, $00, $3c, $c1, $80, $d1, $00
    db $00

    nop                                           ; $5035: $00

    db $ff, $fc, $fc, $c6, $fe, $c6, $e7, $c6, $e7, $ff, $fc, $ff, $c0, $fe, $c0, $e0
    db $00, $60, $ed, $00, $ff, $ec, $7c, $7c, $e0, $e3, $c6, $e7, $dc, $9f, $ff, $72
    db $7e, $00, $3b, $e0, $ed, $c0, $e3, $fc, $ed, $ff, $ba, $e3, $00, $63, $c0, $f1
    db $c0, $e7, $7c, $ff, $7c, $06, $3e, $c6, $c7, $7c, $7f, $00, $bd, $3e, $c0, $ef
    db $30, $7e, $30, $38, $fe, $e5, $00, $0d, $18, $80, $ed, $c6, $c6, $82, $e3, $5c
    db $e1, $c0, $f1, $e0, $e1, $ff, $ee, $ef, $6c, $7f, $6c, $7e, $38, $3e, $ef, $38
    db $3c, $00, $1c, $c0, $ef, $d6, $f7, $d6, $b5, $ff, $fe, $e1, $7c, $dc, $e0, $00
    db $36, $a0, $ef, $ee, $ff, $ef, $7c, $7f, $38, $3e, $7c, $7c, $ee, $f7, $fe, $c6
    db $f7, $40, $ef, $66, $66, $66, $77, $ff, $3c, $3f, $3c, $3e, $18, $1e, $18, $1c
    db $ef, $18, $1c, $00, $0c, $e0, $cd, $fe, $fe, $06, $ff, $7f, $0c, $0f, $38, $3e
    db $60, $7c, $c0, $df, $f0, $fe, $fe, $00, $7f, $c0, $d5, $fe, $ff, $bb, $c6, $ff
    db $e0, $d1, $44, $44, $28, $84, $e0, $10, $de, $fc, $e2, $10, $18, $00, $08, $80
    db $cd, $70, $70, $de, $e2, $c7, $70, $78, $00, $38, $60, $cd, $18, $18, $3f, $3c
    db $3c, $66, $7e, $00, $33, $48, $cd, $f2, $f1, $0f, $fc, $fc, $00, $7e, $da, $ed
    db $00, $00

    nop                                           ; $5118: $00

    db $f5, $00, $ff, $e8, $01, $ff, $e0, $07, $07, $1b, $1e, $ff, $21, $3f, $21, $3f
    db $42, $7e, $45, $7d, $ff, $45, $7d, $48, $78, $07, $07, $18, $1f, $ff, $20, $3f
    db $40, $7f, $80, $ff, $82, $ff, $ff, $04, $ff, $0c, $ff, $1d, $f7, $9f, $f6, $ff
    db $3f, $e0, $3f, $ec, $bf, $fa, $fb, $4e, $ff, $ff, $0e, $ff, $a0, $f0, $f0, $0c
    db $fc, $ff, $02, $fe, $01, $ff, $10, $ff, $30, $ff, $ff, $70, $df, $f8, $8f, $fc
    db $07, $fc, $37, $ff, $fe, $03, $fe, $1b, $fe, $2f, $ef, $39, $af, $ff, $b8, $ff
    db $02, $a0, $e5, $80, $ff, $e0, $40, $ff, $c0, $40, $c0, $70, $f0, $ec, $bc, $42
    db $ff, $fe, $42, $fe, $a1, $bf, $d1, $5f, $d1, $ff, $5f, $89, $8f, $48, $78, $58
    db $78, $68, $e7, $68, $20, $20, $78, $e9, $74, $e5, $01, $01, $03, $ff, $02, $7f
    db $61, $1f, $10, $0f, $0c, $07, $ff, $07, $19, $1f, $38, $2f, $7d, $47, $7f, $ff
    db $53, $bf, $f0, $df, $f0, $ff, $b0, $ff, $ff, $90, $ff, $10, $ef, $2f, $ff, $3f
    db $ff, $ff, $3f, $7f, $c3, $fc, $84, $f8, $18, $f0, $ff, $f0, $cc, $7c, $8e, $fa
    db $5f, $f1, $7f, $7f, $e5, $fe, $87, $fd, $07, $ff, $06, $55, $e0, $ff, $04, $fb
    db $fa, $ff, $fe, $ff, $fe, $09, $3f, $0f, $0d, $0f, $0a, $0a, $02, $78, $ea, $74
    db $e1, $e4, $75, $e0, $71, $e0, $e0, $88, $ee, $f2, $c9, $03, $03, $01, $6f, $01
    db $1f, $1f, $3f, $ff, $e2, $0f, $08, $fe, $e6, $ff, $0f, $1f, $10, $3f, $3c, $43
    db $7f, $c0, $fb, $ff, $ff, $fd, $e0, $ff, $f0, $ff, $f4, $ff, $df, $fc, $ff, $ff
    db $f8, $88, $fe, $e6, $f8, $fc, $7f, $84, $fe, $9e, $e1, $ff, $81, $ff, $fd, $e1
    db $f6, $98, $e1, $80, $80, $9a, $f1, $c0, $c0, $e0, $e0, $73, $c0, $c0, $80, $ff
    db $80, $fb, $fc, $fc, $fe, $ff, $e2, $00, $80, $f5, $a0, $f7, $80, $e3, $00, $00

    nop                                           ; $5259: $00

    db $ff, $48, $78, $58, $78, $68, $68, $20, $20, $f5, $00, $ff, $ec, $01, $ff, $e2
    db $03, $02, $7f, $61, $ff, $1f, $10, $0f, $0c, $07, $07, $19, $1f, $ff, $38, $2f
    db $7d, $47, $7f, $53, $bf, $f0, $ff, $df, $f0, $ff, $b0, $ff, $90, $ff, $10, $ff
    db $ef, $2f, $ff, $3f, $ff, $3f, $7f, $c3, $ff, $fc, $04, $f8, $18, $f0, $f0, $cc
    db $7c, $ff, $8e, $fa, $5f, $f1, $7f, $e5, $fe, $87, $ff, $fd, $07, $ff, $06, $ff
    db $04, $ff, $04, $ff, $fb, $fa, $ff, $fe, $ff, $fe, $09, $0f, $bf, $0d, $0f, $0a
    db $0a, $02, $02, $a0, $e5, $80, $96, $ff, $e4, $c0, $40, $fe, $e1, $e0, $88, $ea
    db $8c, $e1, $07, $ff, $07, $1b, $1e, $21, $3f, $21, $3f, $42, $ff, $7e, $45, $7d
    db $45, $7d, $48, $78, $07, $ff, $07, $18, $1f, $20, $3f, $40, $7f, $80, $fb, $ff
    db $82, $ab, $e0, $0c, $ff, $1d, $f7, $9f, $ff, $f6, $3f, $e0, $3f, $e0, $bf, $e0
    db $ff, $ff, $58, $ff, $0e, $ff, $a0, $f0, $f0, $0c, $ff, $fc, $02, $fe, $01, $ff
    db $10, $ff, $30, $ff, $ff, $70, $df, $f8, $8f, $fc, $07, $fc, $f7, $37, $fe, $03
    db $fe, $e1, $ff, $0d, $ff, $b8, $f9, $ff, $88, $ea, $8d, $e1, $70, $f0, $ec, $bc
    db $42, $ff, $fe, $42, $fe, $a1, $bf, $d1, $5f, $d1, $f7, $5f, $89, $8f, $00, $e3
    db $30, $30, $3c, $2c, $ff, $7e, $72, $ff, $8b, $ff, $80, $7f, $7c, $cf, $07, $04
    db $03, $03, $f2, $c7, $00, $e5, $39, $3f, $ff, $fa, $cf, $7e, $d7, $be, $f3, $ff
    db $71, $6e, $99, $e0, $d0, $1f, $10, $ea, $c0, $0f, $1f, $ff, $e0, $fa, $00, $e0
    db $84, $00, $e3, $9e, $f2, $bf, $e1, $ff, $7f, $c9, $ff, $0b, $fc, $0f, $fb, $0f
    db $00, $e1, $cb, $ff, $fc, $fe, $e0, $f8, $00, $f5, $fa, $c5, $49, $79, $ff, $5b
    db $7b, $6f, $6c, $27, $27, $07, $05, $da, $88, $e0, $02, $fe, $e3, $01, $01, $72
    db $c7, $ff, $61, $ff, $df, $50, $ef, $6c, $f7, $97, $f9, $3f, $3f, $f8, $4f, $fd
    db $57, $ff, $33, $19, $e0, $15, $e0, $fc, $7e, $e1, $80, $eb, $ce, $7e, $8f, $f9
    db $5f, $f1, $3b, $7e, $eb, $80, $c7, $ff, $ff, $fc, $ff, $e0, $80, $cb, $06, $86
    db $c7, $80, $80, $0e, $c3, $00, $00

    nop                                           ; $53d1: $00

    db $bb, $03, $02, $fe, $e1, $01, $01, $00, $ff, $ee, $01, $ff, $01, $03, $03, $01
    db $01, $ff, $1f, $ff, $7f, $5f, $ff, $7f, $bf, $bf, $0f, $08, $fe, $e6, $ff, $0f
    db $1f, $10, $3f, $3c, $43, $7f, $c0, $fb, $ff, $ff, $fd, $e0, $ff, $fc, $ff, $fd
    db $ff, $df, $ff, $fe, $fe, $f8, $88, $fe, $e6, $f8, $fc, $7f, $84, $fe, $9e, $e1
    db $ff, $81, $ff, $fd, $e1, $db, $e0, $20, $fe, $e1, $c0, $c0, $a0, $ef, $c0, $c0
    db $ff, $e0, $e0, $c0, $c0, $48, $78, $58, $78, $ff, $68, $68, $30, $30, $3c, $2c
    db $7e, $72, $ff, $ff, $8b, $ff, $80, $7f, $7c, $07, $04, $fb, $03, $03, $72, $e7
    db $7f, $61, $1f, $10, $0f, $ff, $0c, $07, $07, $39, $3f, $fa, $cf, $7e, $ff, $d7
    db $be, $f3, $ff, $71, $ff, $70, $df, $b7, $d0, $1f, $10, $ea, $e0, $0f, $1f, $ff
    db $e0, $7f, $ff, $c3, $fc, $04, $f8, $18, $f0, $f0, $cc, $ff, $7c, $9e, $f2, $bf
    db $e1, $ff, $c9, $ff, $7f, $0b, $fc, $0f, $fb, $0f, $ff, $04, $fe, $e0, $fd, $fc
    db $64, $e0, $f8, $09, $0f, $0d, $0f, $0a, $d7, $0a, $02, $02, $20, $e5, $80, $ff
    db $ea, $c0, $40, $ff, $49, $79, $5b, $7b, $6f, $6c, $27, $27, $e3, $07, $05, $88
    db $e0, $f4, $c2, $f2, $cb, $ff, $61, $df, $ff, $50, $ef, $6c, $f7, $97, $f9, $3f
    db $f8, $ff, $4f, $fd, $57, $ff, $33, $ff, $30, $ff, $e7, $10, $ff, $30, $7e, $e1
    db $80, $eb, $ce, $7e, $8f, $ff, $f9, $5f, $f1, $7e, $eb, $fe, $87, $fd, $37, $07
    db $ff, $06, $80, $e2, $ff, $fc, $ff, $e0, $80, $eb, $cc, $8c, $e3, $fe, $e1, $80
    db $80, $8e, $cf, $7c, $cb, $03, $03, $df, $07, $07, $03, $03, $3f, $ff, $e4, $1f
    db $11, $fe, $fe, $e6, $1f, $3f, $21, $3f, $3d, $43, $7f, $97, $c1, $ff, $ff, $fd
    db $e0, $f8, $ff, $e0, $98, $e1, $7c, $9f, $44, $7c, $44, $3e, $22, $fe, $e1, $ea
    db $c0, $11, $ff, $1e, $13, $1c, $1f, $f1, $fe, $ff, $f1, $db, $ff, $ff, $9a, $f1
    db $c0, $c0, $6b, $c1, $e0, $20, $0f, $f0, $f0, $e0, $e0, $00, $00

    nop                                           ; $552f: $00

    db $fd, $00, $ff, $e2, $01, $01, $02, $03, $02, $03, $ff, $04, $07, $04, $07, $0c
    db $0f, $1e, $1b, $ff, $24, $3f, $44, $7f, $46, $7f, $87, $fd, $ff, $8f, $fc, $8b
    db $fa, $1f, $1f, $60, $7f, $f7, $80, $ff, $00, $fe, $e0, $08, $ff, $11, $ff, $ff
    db $33, $fe, $77, $dc, $7f, $d8, $ff, $80, $fe, $fe, $e2, $60, $ff, $3a, $ff, $80
    db $c0, $c0, $ff, $30, $f0, $08, $f8, $04, $fc, $42, $fe, $ff, $c2, $fe, $c1, $7f
    db $e1, $3f, $f1, $1f, $ff, $f3, $de, $f9, $0f, $f9, $6f, $fa, $be, $3f, $bf, $e5
    db $ff, $e1, $fe, $0a, $a0, $e3, $fa, $e7, $f7, $c0, $c0, $b0, $d0, $e0, $84, $fc
    db $44, $7c, $bf, $22, $3e, $22, $3e, $12, $1e, $e0, $e7, $10, $3f, $00, $38, $00
    db $2c, $00, $0f, $fe, $e6, $c6, $ed, $ff, $04, $00, $0e, $00, $1a, $00, $78, $00
    db $f9, $f8, $fe, $e4, $a6, $ed, $30, $00, $28, $00, $0c, $fc, $dc, $e0, $c0, $f5
    db $0c, $00, $1e, $00, $36, $00, $47, $f4, $00, $f0, $fe, $e0, $c0, $f7, $80, $f7
    db $06, $80, $e0, $d1, $14, $80, $f8, $3e, $e1, $12, $e7, $1c, $07, $ec, $08, $00
    db $55, $18, $20, $e0, $18, $f8, $e0, $08, $14, $e2, $30, $c0, $f0, $00, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $eb, $00, $00

    nop                                           ; $5608: $00

    db $ff, $89, $f9, $49, $79, $49, $79, $59, $79, $bf, $29, $29, $21, $21, $03, $02
    db $fe, $e1, $01, $fb, $01, $00, $ff, $e8, $ff, $e2, $ff, $10, $ff, $ff, $08, $ff
    db $1f, $f3, $1e, $f1, $3f, $fa, $ff, $2f, $fe, $3f, $ff, $27, $ff, $40, $ff, $ff
    db $80, $7f, $7c, $3f, $23, $1f, $1f, $3f, $fe, $ff, $e0, $fc, $0c, $f0, $10, $e0
    db $60, $98, $ff, $f8, $9c, $f4, $3c, $e4, $fc, $c4, $bc, $ff, $e4, $dc, $f4, $ec
    db $34, $f8, $18, $f8, $ef, $28, $f8, $c8, $f0, $ff, $e0, $f8, $f8, $1a, $9f, $1e
    db $14, $14, $04, $04, $ae, $e9, $f4, $f1, $0f, $ff, $0f, $16, $19, $2f, $30, $3f
    db $20, $5f, $ff, $60, $6f, $70, $9f, $e0, $bf, $c0, $59, $ff, $66, $2a, $37, $15
    db $1b, $09, $0f, $06, $ff, $06, $00, $00, $1c, $1c, $2a, $36, $de, $ff, $e2, $ba
    db $c6, $74, $8c, $e8, $18, $d0, $7f, $30, $b0, $70, $a8, $58, $f8, $08, $f6, $e1
    db $cb, $e0, $e0, $58, $e2, $03, $fe, $e0, $c0, $e0, $1f, $11, $ff, $3e, $23, $7e
    db $43, $7e, $4f, $72, $7f, $ff, $26, $3f, $3e, $3f, $1f, $13, $3f, $21, $ff, $7f
    db $44, $7f, $4f, $7f, $78, $80, $e0, $ff, $00, $e0, $80, $80, $f0, $f0, $08, $f8
    db $f7, $04, $fc, $dc, $fe, $e2, $04, $fc, $24, $fc, $ff, $0f, $ff, $ff, $f1, $fe
    db $0a, $9c, $fc, $db, $f8, $e8, $be, $fd, $00, $00, $be, $f3, $0c, $fc, $bf, $fc
    db $f4, $fe, $0a, $9e, $fa, $d4, $c5, $01, $ff, $00, $02, $01, $05, $02, $0a, $04
    db $14, $1f, $08, $14, $08, $28, $10, $fe, $e3, $f4, $e1, $22, $e2, $ff, $00, $70
    db $0f, $8f, $70, $70, $80, $80, $fe, $f9, $d4, $f8, $00, $04, $f8, $f4, $08, $04
    db $fc, $fe, $f2, $74, $c1, $1f, $00, $20, $1f, $2f, $10, $f9, $20, $fe, $f2, $54
    db $c1, $f0, $00, $0e, $f0, $f1, $f3, $0e, $0e, $47, $cb, $8d, $cc, $80, $00, $40
    db $80, $0f, $a0, $40, $50, $20, $68, $e5, $58, $e5, $00, $00

    nop                                           ; $5755: $00

    db $fd, $00, $ff, $f6, $03, $03, $07, $07, $03, $03, $ed, $3f, $ff, $e4, $1f, $11
    db $fe, $e6, $1f, $3f, $21, $7f, $3f, $3d, $43, $7f, $c1, $ff, $ff, $fd, $e0, $f5
    db $f8, $ff, $e0, $fc, $ff, $e0, $7c, $44, $7c, $44, $db, $3e, $22, $fe, $e1, $1f
    db $1f, $d4, $e0, $13, $1c, $cf, $1f, $f0, $ff, $ff, $fd, $e0, $a0, $f3, $c0, $c0
    db $ff, $20, $e0, $20, $e0, $f0, $30, $e0, $e0, $f8, $80, $f7, $ff, $ff, $44, $e1
    db $1f, $10, $1f, $1f, $08, $df, $0f, $09, $0f, $06, $06, $36, $f3, $f8, $08, $ff
    db $f0, $f0, $90, $f0, $a0, $e0, $c0, $c0, $b6, $16, $f3, $7f, $78, $be, $fb, $fc
    db $ec, $be, $fb, $0a, $bf, $04, $05, $02, $02, $01, $01, $57, $f8, $80, $ff, $00
    db $70, $80, $8f, $70, $70, $0f, $0f, $f6, $95, $d2, $04, $08, $fe, $e1, $f4, $08
    db $04, $f8, $ed, $f8, $75, $d2, $20, $10, $fe, $e1, $2f, $10, $20, $fb, $1f, $1f
    db $55, $d4, $01, $00, $0e, $01, $f1, $ef, $0e, $0e, $f0, $f0, $35, $d2, $50, $20
    db $a0, $0f, $40, $40, $80, $80, $b7, $d6, $00, $00

    nop                                           ; $5810: $00

    db $e0, $7f, $ff, $6b, $3f, $00, $00, $00, $1f, $00, $80, $68, $f3, $03, $06, $00
    db $e0, $7f, $ff, $00, $80, $7d, $00, $00, $e0, $7f, $ff, $6b, $ce, $7e, $00, $00
    db $e0, $7f, $ff, $00, $ff, $67, $00, $00, $e0, $7f, $5f, $16, $ff, $03, $00, $00
    db $e0, $7f, $ff, $6b, $54, $01, $00, $00, $e0, $7f, $77, $29, $df, $03, $00, $00

    rra                                           ; $5851: $1f
    nop                                           ; $5852: $00
    nop                                           ; $5853: $00
    ld [bc], a                                    ; $5854: $02
    di                                            ; $5855: $f3
    inc bc                                        ; $5856: $03
    ld b, $00                                     ; $5857: $06 $00
    ldh [$7f], a                                  ; $5859: $e0 $7f
    rst $38                                       ; $585b: $ff
    nop                                           ; $585c: $00
    add b                                         ; $585d: $80
    ld a, l                                       ; $585e: $7d
    nop                                           ; $585f: $00
    nop                                           ; $5860: $00
    ldh [$7f], a                                  ; $5861: $e0 $7f
    rst $38                                       ; $5863: $ff
    ld l, e                                       ; $5864: $6b
    adc $7e                                       ; $5865: $ce $7e
    nop                                           ; $5867: $00
    nop                                           ; $5868: $00
    ldh [$7f], a                                  ; $5869: $e0 $7f
    rst $38                                       ; $586b: $ff
    nop                                           ; $586c: $00
    rst $38                                       ; $586d: $ff
    ld h, a                                       ; $586e: $67
    nop                                           ; $586f: $00
    nop                                           ; $5870: $00
    ldh [$7f], a                                  ; $5871: $e0 $7f
    ld e, a                                       ; $5873: $5f
    ld d, $ff                                     ; $5874: $16 $ff
    inc bc                                        ; $5876: $03
    nop                                           ; $5877: $00
    nop                                           ; $5878: $00
    ld e, a                                       ; $5879: $5f
    ld d, $ff                                     ; $587a: $16 $ff
    ld l, e                                       ; $587c: $6b
    ld d, h                                       ; $587d: $54
    ld bc, $0000                                  ; $587e: $01 $00 $00
    ldh [$7f], a                                  ; $5881: $e0 $7f
    sbc l                                         ; $5883: $9d
    ld e, a                                       ; $5884: $5f
    nop                                           ; $5885: $00
    ld d, b                                       ; $5886: $50
    nop                                           ; $5887: $00
    nop                                           ; $5888: $00
    rra                                           ; $5889: $1f
    nop                                           ; $588a: $00
    inc e                                         ; $588b: $1c
    ld b, c                                       ; $588c: $41
    di                                            ; $588d: $f3
    inc bc                                        ; $588e: $03
    ld b, $00                                     ; $588f: $06 $00
    ldh [$7f], a                                  ; $5891: $e0 $7f
    rst $38                                       ; $5893: $ff
    nop                                           ; $5894: $00
    add b                                         ; $5895: $80
    ld a, l                                       ; $5896: $7d
    nop                                           ; $5897: $00
    nop                                           ; $5898: $00
    ldh [$7f], a                                  ; $5899: $e0 $7f
    rst $38                                       ; $589b: $ff
    ld l, e                                       ; $589c: $6b
    adc $7e                                       ; $589d: $ce $7e
    nop                                           ; $589f: $00
    nop                                           ; $58a0: $00
    ldh [$7f], a                                  ; $58a1: $e0 $7f
    rst $38                                       ; $58a3: $ff
    nop                                           ; $58a4: $00
    rst $38                                       ; $58a5: $ff
    ld h, a                                       ; $58a6: $67
    nop                                           ; $58a7: $00
    nop                                           ; $58a8: $00
    ldh [$7f], a                                  ; $58a9: $e0 $7f
    ld e, a                                       ; $58ab: $5f
    ld d, $ff                                     ; $58ac: $16 $ff
    inc bc                                        ; $58ae: $03
    nop                                           ; $58af: $00
    nop                                           ; $58b0: $00
    ld e, a                                       ; $58b1: $5f
    ld d, $ff                                     ; $58b2: $16 $ff
    ld l, e                                       ; $58b4: $6b
    ld d, h                                       ; $58b5: $54
    ld bc, $0000                                  ; $58b6: $01 $00 $00

Call_03f_58b9:
    ld a, [$d614]                                 ; $58b9: $fa $14 $d6
    cp $03                                        ; $58bc: $fe $03
    jr nc, jr_03f_58ca                            ; $58be: $30 $0a

    ld a, $04                                     ; $58c0: $3e $04
    ld [$d614], a                                 ; $58c2: $ea $14 $d6
    ld a, $ff                                     ; $58c5: $3e $ff
    ld [$d619], a                                 ; $58c7: $ea $19 $d6

jr_03f_58ca:
    ret                                           ; $58ca: $c9


Call_03f_58cb:
    ld a, $b4                                     ; $58cb: $3e $b4
    ld [$d619], a                                 ; $58cd: $ea $19 $d6
    ldh a, [$8c]                                  ; $58d0: $f0 $8c
    and $03                                       ; $58d2: $e6 $03
    cp $03                                        ; $58d4: $fe $03
    jr nz, jr_03f_58d9                            ; $58d6: $20 $01

    xor a                                         ; $58d8: $af

jr_03f_58d9:
    ld [$d614], a                                 ; $58d9: $ea $14 $d6
    ret                                           ; $58dc: $c9


    ldh a, [$96]                                  ; $58dd: $f0 $96
    push af                                       ; $58df: $f5
    push af                                       ; $58e0: $f5
    push bc                                       ; $58e1: $c5
    push de                                       ; $58e2: $d5
    push hl                                       ; $58e3: $e5
    ld a, $06                                     ; $58e4: $3e $06
    ldh [$96], a                                  ; $58e6: $e0 $96
    ldh [rSVBK], a                                ; $58e8: $e0 $70
    rst $30                                       ; $58ea: $f7

    db $20, $03

    jr z, jr_03f_58f4                             ; $58ed: $28 $05

    rst $08                                       ; $58ef: $cf
    sub b                                         ; $58f0: $90
    call Call_03f_58cb                            ; $58f1: $cd $cb $58

jr_03f_58f4:
    ld a, [$d614]                                 ; $58f4: $fa $14 $d6
    cp $04                                        ; $58f7: $fe $04
    jr nz, jr_03f_590b                            ; $58f9: $20 $10

    ld a, [$d619]                                 ; $58fb: $fa $19 $d6
    dec a                                         ; $58fe: $3d
    ld [$d619], a                                 ; $58ff: $ea $19 $d6
    jr nz, jr_03f_5924                            ; $5902: $20 $20

    ld a, $03                                     ; $5904: $3e $03
    ld [$d614], a                                 ; $5906: $ea $14 $d6
    jr jr_03f_5924                                ; $5909: $18 $19

jr_03f_590b:
    cp $03                                        ; $590b: $fe $03
    jr nz, jr_03f_5911                            ; $590d: $20 $02

    jr jr_03f_5924                                ; $590f: $18 $13

jr_03f_5911:
    ld a, [$d619]                                 ; $5911: $fa $19 $d6
    dec a                                         ; $5914: $3d
    ld [$d619], a                                 ; $5915: $ea $19 $d6
    jr nz, jr_03f_5924                            ; $5918: $20 $0a

    ld a, $04                                     ; $591a: $3e $04
    ld [$d614], a                                 ; $591c: $ea $14 $d6
    ld a, $ff                                     ; $591f: $3e $ff
    ld [$d619], a                                 ; $5921: $ea $19 $d6

jr_03f_5924:
    ld a, [$d610]                                 ; $5924: $fa $10 $d6
    cp $06                                        ; $5927: $fe $06
    jp nz, Jump_03f_59d5                          ; $5929: $c2 $d5 $59

    ld a, [$d615]                                 ; $592c: $fa $15 $d6
    dec a                                         ; $592f: $3d
    ld [$d615], a                                 ; $5930: $ea $15 $d6
    jr nz, jr_03f_5946                            ; $5933: $20 $11

    ld a, $08                                     ; $5935: $3e $08
    ld [$d615], a                                 ; $5937: $ea $15 $d6
    ld a, [$d616]                                 ; $593a: $fa $16 $d6
    inc a                                         ; $593d: $3c
    cp $10                                        ; $593e: $fe $10
    jr nz, jr_03f_5943                            ; $5940: $20 $01

    xor a                                         ; $5942: $af

jr_03f_5943:
    ld [$d616], a                                 ; $5943: $ea $16 $d6

jr_03f_5946:
    ld hl, $5ad0                                  ; $5946: $21 $d0 $5a
    ld a, [$d614]                                 ; $5949: $fa $14 $d6
    add a                                         ; $594c: $87
    add a                                         ; $594d: $87
    add a                                         ; $594e: $87
    add a                                         ; $594f: $87
    add l                                         ; $5950: $85
    ld l, a                                       ; $5951: $6f
    jr nc, jr_03f_5955                            ; $5952: $30 $01

    inc h                                         ; $5954: $24

jr_03f_5955:
    ld a, [$d616]                                 ; $5955: $fa $16 $d6
    add l                                         ; $5958: $85
    ld l, a                                       ; $5959: $6f
    jr nc, jr_03f_595d                            ; $595a: $30 $01

    inc h                                         ; $595c: $24

jr_03f_595d:
    ld a, [hl]                                    ; $595d: $7e
    add a                                         ; $595e: $87
    add a                                         ; $595f: $87
    add a                                         ; $5960: $87
    push af                                       ; $5961: $f5
    pop af                                        ; $5962: $f1
    ld hl, $5b20                                  ; $5963: $21 $20 $5b
    add l                                         ; $5966: $85
    ld l, a                                       ; $5967: $6f
    jr nc, jr_03f_596b                            ; $5968: $30 $01

    inc h                                         ; $596a: $24

jr_03f_596b:
    ld a, [hl+]                                   ; $596b: $2a
    ld c, a                                       ; $596c: $4f
    ld a, [hl+]                                   ; $596d: $2a
    ld b, a                                       ; $596e: $47
    ld a, [$d613]                                 ; $596f: $fa $13 $d6
    bit 1, a                                      ; $5972: $cb $4f
    jr z, jr_03f_597b                             ; $5974: $28 $05

    ld de, $907e                                  ; $5976: $11 $7e $90
    jr jr_03f_597e                                ; $5979: $18 $03

jr_03f_597b:
    ld de, $707e                                  ; $597b: $11 $7e $70

jr_03f_597e:
    push hl                                       ; $597e: $e5
    ld hl, $5b78                                  ; $597f: $21 $78 $5b
    call Call_000_26ea                            ; $5982: $cd $ea $26
    pop hl                                        ; $5985: $e1
    ld a, [hl+]                                   ; $5986: $2a
    ld c, a                                       ; $5987: $4f
    ld a, [hl+]                                   ; $5988: $2a
    ld b, a                                       ; $5989: $47
    ld a, [$d613]                                 ; $598a: $fa $13 $d6
    bit 1, a                                      ; $598d: $cb $4f
    jr z, jr_03f_5996                             ; $598f: $28 $05

    ld de, $886e                                  ; $5991: $11 $6e $88
    jr jr_03f_5999                                ; $5994: $18 $03

jr_03f_5996:
    ld de, $686e                                  ; $5996: $11 $6e $68

jr_03f_5999:
    push hl                                       ; $5999: $e5
    ld hl, $5b81                                  ; $599a: $21 $81 $5b
    call Call_000_26ea                            ; $599d: $cd $ea $26
    pop hl                                        ; $59a0: $e1
    ld a, [hl+]                                   ; $59a1: $2a
    ld c, a                                       ; $59a2: $4f
    ld a, [hl+]                                   ; $59a3: $2a
    ld b, a                                       ; $59a4: $47
    ld a, [$d613]                                 ; $59a5: $fa $13 $d6
    bit 1, a                                      ; $59a8: $cb $4f
    jr z, jr_03f_59b1                             ; $59aa: $28 $05

    ld de, $887e                                  ; $59ac: $11 $7e $88
    jr jr_03f_59b4                                ; $59af: $18 $03

jr_03f_59b1:
    ld de, $687e                                  ; $59b1: $11 $7e $68

jr_03f_59b4:
    push hl                                       ; $59b4: $e5
    ld hl, $5b81                                  ; $59b5: $21 $81 $5b
    call Call_000_26ea                            ; $59b8: $cd $ea $26
    pop hl                                        ; $59bb: $e1
    ld a, [hl+]                                   ; $59bc: $2a
    ld c, a                                       ; $59bd: $4f
    ld a, [hl+]                                   ; $59be: $2a
    ld b, a                                       ; $59bf: $47
    ld a, [$d613]                                 ; $59c0: $fa $13 $d6
    bit 1, a                                      ; $59c3: $cb $4f
    jr z, jr_03f_59cc                             ; $59c5: $28 $05

    ld de, $888e                                  ; $59c7: $11 $8e $88
    jr jr_03f_59cf                                ; $59ca: $18 $03

jr_03f_59cc:
    ld de, $688e                                  ; $59cc: $11 $8e $68

jr_03f_59cf:
    ld hl, $5b81                                  ; $59cf: $21 $81 $5b
    call Call_000_26ea                            ; $59d2: $cd $ea $26

Jump_03f_59d5:
    ld a, [$d613]                                 ; $59d5: $fa $13 $d6
    bit 1, a                                      ; $59d8: $cb $4f
    jr z, jr_03f_5a56                             ; $59da: $28 $7a

    ld a, [$d613]                                 ; $59dc: $fa $13 $d6
    bit 0, a                                      ; $59df: $cb $47
    jr nz, jr_03f_59ea                            ; $59e1: $20 $07

    ld a, [$d61a]                                 ; $59e3: $fa $1a $d6
    inc a                                         ; $59e6: $3c
    ld [$d61a], a                                 ; $59e7: $ea $1a $d6

jr_03f_59ea:
    ld a, [$d60a]                                 ; $59ea: $fa $0a $d6
    ld b, a                                       ; $59ed: $47
    inc b                                         ; $59ee: $04
    ld a, $14                                     ; $59ef: $3e $14
    ld e, $10                                     ; $59f1: $1e $10
    sub e                                         ; $59f3: $93

jr_03f_59f4:
    add e                                         ; $59f4: $83
    dec b                                         ; $59f5: $05
    jr nz, jr_03f_59f4                            ; $59f6: $20 $fc

    add e                                         ; $59f8: $83
    add $14                                       ; $59f9: $c6 $14
    ld e, a                                       ; $59fb: $5f
    ld hl, $5a90                                  ; $59fc: $21 $90 $5a
    ld a, [$d61a]                                 ; $59ff: $fa $1a $d6
    and $0f                                       ; $5a02: $e6 $0f
    add l                                         ; $5a04: $85
    ld l, a                                       ; $5a05: $6f
    jr nc, jr_03f_5a09                            ; $5a06: $30 $01

    inc h                                         ; $5a08: $24

jr_03f_5a09:
    ld a, [hl]                                    ; $5a09: $7e
    add $0a                                       ; $5a0a: $c6 $0a
    ld d, a                                       ; $5a0c: $57
    ld hl, $5ac7                                  ; $5a0d: $21 $c7 $5a
    ld bc, $0b28                                  ; $5a10: $01 $28 $0b
    call Call_000_26ea                            ; $5a13: $cd $ea $26
    ld a, [$d613]                                 ; $5a16: $fa $13 $d6
    bit 2, a                                      ; $5a19: $cb $57
    jr z, jr_03f_5a29                             ; $5a1b: $28 $0c

    ld hl, $5aa0                                  ; $5a1d: $21 $a0 $5a
    ld de, $1810                                  ; $5a20: $11 $10 $18
    ld bc, $0d34                                  ; $5a23: $01 $34 $0d
    call Call_000_26ea                            ; $5a26: $cd $ea $26

jr_03f_5a29:
    ld a, [$d613]                                 ; $5a29: $fa $13 $d6
    bit 3, a                                      ; $5a2c: $cb $5f
    jr z, jr_03f_5a3c                             ; $5a2e: $28 $0c

    ld hl, $5aa0                                  ; $5a30: $21 $a0 $5a
    ld de, $8810                                  ; $5a33: $11 $10 $88
    ld bc, $0d3a                                  ; $5a36: $01 $3a $0d
    call Call_000_26ea                            ; $5a39: $cd $ea $26

jr_03f_5a3c:
    ld hl, $5ac2                                  ; $5a3c: $21 $c2 $5a
    ld de, $2018                                  ; $5a3f: $11 $18 $20
    ld bc, $0860                                  ; $5a42: $01 $60 $08
    call Call_000_26ea                            ; $5a45: $cd $ea $26
    ld hl, $5ac2                                  ; $5a48: $21 $c2 $5a
    ld de, $9018                                  ; $5a4b: $11 $18 $90
    ld bc, $0864                                  ; $5a4e: $01 $64 $08
    call Call_000_26ea                            ; $5a51: $cd $ea $26
    jr jr_03f_5a86                                ; $5a54: $18 $30

jr_03f_5a56:
    ld a, [$d60a]                                 ; $5a56: $fa $0a $d6
    cp $09                                        ; $5a59: $fe $09
    jr c, jr_03f_5a71                             ; $5a5b: $38 $14

    cp $12                                        ; $5a5d: $fe $12
    jr c, jr_03f_5a69                             ; $5a5f: $38 $08

    ld d, $98                                     ; $5a61: $16 $98
    ld b, $02                                     ; $5a63: $06 $02
    sub $12                                       ; $5a65: $d6 $12
    jr jr_03f_5a75                                ; $5a67: $18 $0c

jr_03f_5a69:
    ld d, $90                                     ; $5a69: $16 $90
    sub $09                                       ; $5a6b: $d6 $09
    ld b, $01                                     ; $5a6d: $06 $01
    jr jr_03f_5a75                                ; $5a6f: $18 $04

jr_03f_5a71:
    ld d, $88                                     ; $5a71: $16 $88
    ld b, $ff                                     ; $5a73: $06 $ff

jr_03f_5a75:
    add a                                         ; $5a75: $87
    add a                                         ; $5a76: $87
    add a                                         ; $5a77: $87
    add a                                         ; $5a78: $87
    add $10                                       ; $5a79: $c6 $10
    add b                                         ; $5a7b: $80
    ld e, a                                       ; $5a7c: $5f
    ld hl, $5ab9                                  ; $5a7d: $21 $b9 $5a
    ld bc, $0e60                                  ; $5a80: $01 $60 $0e
    call Call_000_26ea                            ; $5a83: $cd $ea $26

jr_03f_5a86:
    pop hl                                        ; $5a86: $e1
    pop de                                        ; $5a87: $d1
    pop bc                                        ; $5a88: $c1
    pop af                                        ; $5a89: $f1
    pop af                                        ; $5a8a: $f1
    ldh [$96], a                                  ; $5a8b: $e0 $96
    ldh [rSVBK], a                                ; $5a8d: $e0 $70
    ret                                           ; $5a8f: $c9


    db $00, $01, $01, $02, $03, $04, $06, $08, $06, $04, $03, $02, $01, $01, $00, $00

    nop                                           ; $5aa0: $00
    nop                                           ; $5aa1: $00
    nop                                           ; $5aa2: $00
    nop                                           ; $5aa3: $00
    stop                                          ; $5aa4: $10 $00
    jr nz, jr_03f_5aa8                            ; $5aa6: $20 $00

jr_03f_5aa8:
    nop                                           ; $5aa8: $00
    ld [$0002], sp                                ; $5aa9: $08 $02 $00
    db $10                                        ; $5aac: $10
    ld [$0022], sp                                ; $5aad: $08 $22 $00
    nop                                           ; $5ab0: $00
    db $10                                        ; $5ab1: $10
    inc b                                         ; $5ab2: $04
    nop                                           ; $5ab3: $00
    db $10                                        ; $5ab4: $10
    db $10                                        ; $5ab5: $10
    inc h                                         ; $5ab6: $24
    nop                                           ; $5ab7: $00
    add b                                         ; $5ab8: $80
    nop                                           ; $5ab9: $00
    nop                                           ; $5aba: $00
    nop                                           ; $5abb: $00
    nop                                           ; $5abc: $00
    nop                                           ; $5abd: $00
    ld [$0002], sp                                ; $5abe: $08 $02 $00
    add b                                         ; $5ac1: $80

    db $00, $00, $00, $00, $80, $00, $00, $00, $00, $00, $08, $02, $00, $80

    nop                                           ; $5ad0: $00
    ld bc, $0100                                  ; $5ad1: $01 $00 $01
    nop                                           ; $5ad4: $00
    ld bc, $0100                                  ; $5ad5: $01 $00 $01
    nop                                           ; $5ad8: $00
    ld bc, $0100                                  ; $5ad9: $01 $00 $01
    ld [bc], a                                    ; $5adc: $02
    ld bc, $0100                                  ; $5add: $01 $00 $01
    inc bc                                        ; $5ae0: $03
    inc b                                         ; $5ae1: $04
    inc bc                                        ; $5ae2: $03
    inc b                                         ; $5ae3: $04
    inc bc                                        ; $5ae4: $03
    inc b                                         ; $5ae5: $04
    inc bc                                        ; $5ae6: $03
    inc b                                         ; $5ae7: $04
    inc bc                                        ; $5ae8: $03
    inc b                                         ; $5ae9: $04
    inc bc                                        ; $5aea: $03
    inc b                                         ; $5aeb: $04
    dec b                                         ; $5aec: $05
    inc b                                         ; $5aed: $04
    inc bc                                        ; $5aee: $03
    inc b                                         ; $5aef: $04
    ld b, $07                                     ; $5af0: $06 $07
    ld b, $07                                     ; $5af2: $06 $07
    ld b, $07                                     ; $5af4: $06 $07
    ld b, $07                                     ; $5af6: $06 $07
    ld b, $07                                     ; $5af8: $06 $07
    ld b, $07                                     ; $5afa: $06 $07
    ld [$0607], sp                                ; $5afc: $08 $07 $06
    rlca                                          ; $5aff: $07
    add hl, bc                                    ; $5b00: $09
    add hl, bc                                    ; $5b01: $09
    ld a, [bc]                                    ; $5b02: $0a
    ld a, [bc]                                    ; $5b03: $0a
    add hl, bc                                    ; $5b04: $09
    add hl, bc                                    ; $5b05: $09
    ld a, [bc]                                    ; $5b06: $0a
    ld a, [bc]                                    ; $5b07: $0a
    add hl, bc                                    ; $5b08: $09
    add hl, bc                                    ; $5b09: $09
    ld a, [bc]                                    ; $5b0a: $0a
    ld a, [bc]                                    ; $5b0b: $0a
    add hl, bc                                    ; $5b0c: $09
    add hl, bc                                    ; $5b0d: $09
    ld a, [bc]                                    ; $5b0e: $0a
    ld a, [bc]                                    ; $5b0f: $0a
    nop                                           ; $5b10: $00
    nop                                           ; $5b11: $00
    nop                                           ; $5b12: $00
    nop                                           ; $5b13: $00
    nop                                           ; $5b14: $00
    nop                                           ; $5b15: $00
    nop                                           ; $5b16: $00
    nop                                           ; $5b17: $00
    nop                                           ; $5b18: $00
    nop                                           ; $5b19: $00
    nop                                           ; $5b1a: $00
    nop                                           ; $5b1b: $00
    ld [bc], a                                    ; $5b1c: $02
    nop                                           ; $5b1d: $00
    nop                                           ; $5b1e: $00
    nop                                           ; $5b1f: $00
    ld [$0009], sp                                ; $5b20: $08 $09 $00
    nop                                           ; $5b23: $00
    jr nz, jr_03f_5b26                            ; $5b24: $20 $00

jr_03f_5b26:
    ld b, b                                       ; $5b26: $40
    nop                                           ; $5b27: $00
    ld [$0009], sp                                ; $5b28: $08 $09 $00
    nop                                           ; $5b2b: $00
    ld [$4000], sp                                ; $5b2c: $08 $00 $40
    nop                                           ; $5b2f: $00
    ld [$2809], sp                                ; $5b30: $08 $09 $28
    nop                                           ; $5b33: $00
    jr nz, jr_03f_5b36                            ; $5b34: $20 $00

jr_03f_5b36:
    ld b, b                                       ; $5b36: $40
    nop                                           ; $5b37: $00
    inc c                                         ; $5b38: $0c
    add hl, bc                                    ; $5b39: $09
    nop                                           ; $5b3a: $00
    nop                                           ; $5b3b: $00
    ld c, b                                       ; $5b3c: $48
    nop                                           ; $5b3d: $00
    stop                                          ; $5b3e: $10 $00
    inc c                                         ; $5b40: $0c
    add hl, bc                                    ; $5b41: $09
    nop                                           ; $5b42: $00
    nop                                           ; $5b43: $00
    jr nc, jr_03f_5b46                            ; $5b44: $30 $00

jr_03f_5b46:
    stop                                          ; $5b46: $10 $00
    inc c                                         ; $5b48: $0c
    add hl, bc                                    ; $5b49: $09
    jr z, jr_03f_5b4c                             ; $5b4a: $28 $00

jr_03f_5b4c:
    ld c, b                                       ; $5b4c: $48
    nop                                           ; $5b4d: $00
    stop                                          ; $5b4e: $10 $00
    db $10                                        ; $5b50: $10
    add hl, bc                                    ; $5b51: $09
    nop                                           ; $5b52: $00
    nop                                           ; $5b53: $00
    ld d, b                                       ; $5b54: $50
    nop                                           ; $5b55: $00
    jr jr_03f_5b58                                ; $5b56: $18 $00

jr_03f_5b58:
    db $10                                        ; $5b58: $10
    add hl, bc                                    ; $5b59: $09
    nop                                           ; $5b5a: $00
    nop                                           ; $5b5b: $00
    jr c, jr_03f_5b5e                             ; $5b5c: $38 $00

jr_03f_5b5e:
    jr jr_03f_5b60                                ; $5b5e: $18 $00

jr_03f_5b60:
    db $10                                        ; $5b60: $10
    add hl, bc                                    ; $5b61: $09
    jr z, jr_03f_5b64                             ; $5b62: $28 $00

jr_03f_5b64:
    ld d, b                                       ; $5b64: $50
    nop                                           ; $5b65: $00
    jr jr_03f_5b68                                ; $5b66: $18 $00

jr_03f_5b68:
    inc d                                         ; $5b68: $14
    add hl, bc                                    ; $5b69: $09
    nop                                           ; $5b6a: $00
    ld [$0820], sp                                ; $5b6b: $08 $20 $08
    ld b, b                                       ; $5b6e: $40
    ld [$0914], sp                                ; $5b6f: $08 $14 $09
    nop                                           ; $5b72: $00
    ld [$0820], sp                                ; $5b73: $08 $20 $08
    ld e, b                                       ; $5b76: $58
    nop                                           ; $5b77: $00
    nop                                           ; $5b78: $00
    nop                                           ; $5b79: $00
    nop                                           ; $5b7a: $00
    nop                                           ; $5b7b: $00
    nop                                           ; $5b7c: $00
    ld [$0002], sp                                ; $5b7d: $08 $02 $00
    add b                                         ; $5b80: $80
    nop                                           ; $5b81: $00
    nop                                           ; $5b82: $00
    nop                                           ; $5b83: $00
    nop                                           ; $5b84: $00
    nop                                           ; $5b85: $00
    ld [$0002], sp                                ; $5b86: $08 $02 $00
    nop                                           ; $5b89: $00
    db $10                                        ; $5b8a: $10
    inc b                                         ; $5b8b: $04
    nop                                           ; $5b8c: $00
    nop                                           ; $5b8d: $00
    jr jr_03f_5b96                                ; $5b8e: $18 $06

    nop                                           ; $5b90: $00
    add b                                         ; $5b91: $80

Call_03f_5b92:
    push af                                       ; $5b92: $f5
    push bc                                       ; $5b93: $c5
    push de                                       ; $5b94: $d5
    push hl                                       ; $5b95: $e5

jr_03f_5b96:
    ld [hl+], a                                   ; $5b96: $22
    dec c                                         ; $5b97: $0d
    jr nz, jr_03f_5b96                            ; $5b98: $20 $fc

    pop hl                                        ; $5b9a: $e1
    pop de                                        ; $5b9b: $d1
    pop bc                                        ; $5b9c: $c1
    pop af                                        ; $5b9d: $f1
    ret                                           ; $5b9e: $c9


Call_03f_5b9f:
    ld a, $06                                     ; $5b9f: $3e $06
    ldh [$96], a                                  ; $5ba1: $e0 $96
    ldh [rSVBK], a                                ; $5ba3: $e0 $70
    ld hl, $5dfc                                  ; $5ba5: $21 $fc $5d
    ld c, $00                                     ; $5ba8: $0e $00
    ld a, [$d60e]                                 ; $5baa: $fa $0e $d6
    ld d, a                                       ; $5bad: $57

jr_03f_5bae:
    ld a, [hl+]                                   ; $5bae: $2a
    cp $00                                        ; $5baf: $fe $00
    jr z, jr_03f_5bae                             ; $5bb1: $28 $fb

    cp $40                                        ; $5bb3: $fe $40
    jr z, jr_03f_5bbd                             ; $5bb5: $28 $06

    and d                                         ; $5bb7: $a2
    jr z, jr_03f_5bae                             ; $5bb8: $28 $f4

    inc c                                         ; $5bba: $0c
    jr jr_03f_5bae                                ; $5bbb: $18 $f1

jr_03f_5bbd:
    ld a, c                                       ; $5bbd: $79
    ld [$d60b], a                                 ; $5bbe: $ea $0b $d6
    ret                                           ; $5bc1: $c9


Call_03f_5bc2:
    ld a, $06                                     ; $5bc2: $3e $06
    ldh [$96], a                                  ; $5bc4: $e0 $96
    ldh [rSVBK], a                                ; $5bc6: $e0 $70
    ld hl, $5dfc                                  ; $5bc8: $21 $fc $5d
    ld c, $00                                     ; $5bcb: $0e $00

jr_03f_5bcd:
    ld a, [hl+]                                   ; $5bcd: $2a
    cp $40                                        ; $5bce: $fe $40
    jr nz, jr_03f_5bcd                            ; $5bd0: $20 $fb

    dec hl                                        ; $5bd2: $2b
    ld a, h                                       ; $5bd3: $7c
    ld [$d60c], a                                 ; $5bd4: $ea $0c $d6
    ld a, l                                       ; $5bd7: $7d
    ld [$d60d], a                                 ; $5bd8: $ea $0d $d6
    ret                                           ; $5bdb: $c9


Call_03f_5bdc:
    ld d, $00                                     ; $5bdc: $16 $00
    ld c, a                                       ; $5bde: $4f
    inc c                                         ; $5bdf: $0c
    ld hl, $5dfc                                  ; $5be0: $21 $fc $5d

jr_03f_5be3:
    ld a, [hl+]                                   ; $5be3: $2a
    cp $00                                        ; $5be4: $fe $00
    jr z, jr_03f_5be3                             ; $5be6: $28 $fb

    inc d                                         ; $5be8: $14
    and b                                         ; $5be9: $a0
    jr z, jr_03f_5be3                             ; $5bea: $28 $f7

    dec c                                         ; $5bec: $0d
    jr nz, jr_03f_5be3                            ; $5bed: $20 $f4

    dec d                                         ; $5bef: $15
    ld a, d                                       ; $5bf0: $7a
    ret                                           ; $5bf1: $c9


Call_03f_5bf2:
    ld d, $00                                     ; $5bf2: $16 $00
    ld c, a                                       ; $5bf4: $4f
    inc c                                         ; $5bf5: $0c
    ld hl, $5dfc                                  ; $5bf6: $21 $fc $5d

jr_03f_5bf9:
    ld a, [hl+]                                   ; $5bf9: $2a
    cp $00                                        ; $5bfa: $fe $00
    jr z, jr_03f_5bf9                             ; $5bfc: $28 $fb

    inc d                                         ; $5bfe: $14
    and b                                         ; $5bff: $a0
    jr z, jr_03f_5bf9                             ; $5c00: $28 $f7

    dec c                                         ; $5c02: $0d
    jr nz, jr_03f_5bf9                            ; $5c03: $20 $f4

    cp $01                                        ; $5c05: $fe $01
    jr z, jr_03f_5c18                             ; $5c07: $28 $0f

    cp $02                                        ; $5c09: $fe $02
    jr z, jr_03f_5c1a                             ; $5c0b: $28 $0d

    cp $04                                        ; $5c0d: $fe $04
    jr z, jr_03f_5c1d                             ; $5c0f: $28 $0c

    cp $08                                        ; $5c11: $fe $08
    jr z, jr_03f_5c20                             ; $5c13: $28 $0b

    ld a, $04                                     ; $5c15: $3e $04
    ret                                           ; $5c17: $c9


jr_03f_5c18:
    xor a                                         ; $5c18: $af
    ret                                           ; $5c19: $c9


jr_03f_5c1a:
    ld a, $01                                     ; $5c1a: $3e $01
    ret                                           ; $5c1c: $c9


jr_03f_5c1d:
    ld a, $02                                     ; $5c1d: $3e $02
    ret                                           ; $5c1f: $c9


jr_03f_5c20:
    ld a, $03                                     ; $5c20: $3e $03
    ret                                           ; $5c22: $c9


Call_03f_5c23:
    ld a, $06                                     ; $5c23: $3e $06
    ldh [$96], a                                  ; $5c25: $e0 $96
    ldh [rSVBK], a                                ; $5c27: $e0 $70
    ld a, [$d60b]                                 ; $5c29: $fa $0b $d6
    ld d, a                                       ; $5c2c: $57
    ld a, [$d60a]                                 ; $5c2d: $fa $0a $d6
    ld c, a                                       ; $5c30: $4f
    ld a, [$d609]                                 ; $5c31: $fa $09 $d6
    add c                                         ; $5c34: $81
    cp d                                          ; $5c35: $ba
    jr c, jr_03f_5c39                             ; $5c36: $38 $01

    sub d                                         ; $5c38: $92

jr_03f_5c39:
    ret                                           ; $5c39: $c9


Call_03f_5c3a:
    ld a, $06                                     ; $5c3a: $3e $06
    ldh [$96], a                                  ; $5c3c: $e0 $96
    ldh [rSVBK], a                                ; $5c3e: $e0 $70
    ld hl, $5dfc                                  ; $5c40: $21 $fc $5d
    call Call_03f_5c23                            ; $5c43: $cd $23 $5c
    ld b, a                                       ; $5c46: $47
    ld c, a                                       ; $5c47: $4f
    inc b                                         ; $5c48: $04
    xor a                                         ; $5c49: $af
    ld [$d60a], a                                 ; $5c4a: $ea $0a $d6
    ld a, [$d60e]                                 ; $5c4d: $fa $0e $d6
    ld e, a                                       ; $5c50: $5f
    jr jr_03f_5c65                                ; $5c51: $18 $12

Call_03f_5c53:
    push af                                       ; $5c53: $f5
    ld a, [$d60b]                                 ; $5c54: $fa $0b $d6
    dec a                                         ; $5c57: $3d
    ld c, a                                       ; $5c58: $4f
    ld a, [$d60c]                                 ; $5c59: $fa $0c $d6
    ld h, a                                       ; $5c5c: $67
    ld a, [$d60d]                                 ; $5c5d: $fa $0d $d6
    ld l, a                                       ; $5c60: $6f
    dec hl                                        ; $5c61: $2b
    dec hl                                        ; $5c62: $2b
    pop af                                        ; $5c63: $f1
    ret                                           ; $5c64: $c9


jr_03f_5c65:
    ld a, [hl+]                                   ; $5c65: $2a
    and e                                         ; $5c66: $a3
    jr z, jr_03f_5c65                             ; $5c67: $28 $fc

    dec b                                         ; $5c69: $05
    jr nz, jr_03f_5c65                            ; $5c6a: $20 $f9

    dec hl                                        ; $5c6c: $2b

jr_03f_5c6d:
    ld a, [hl-]                                   ; $5c6d: $3a
    ld d, a                                       ; $5c6e: $57
    and e                                         ; $5c6f: $a3
    jr z, jr_03f_5c73                             ; $5c70: $28 $01

    dec c                                         ; $5c72: $0d

jr_03f_5c73:
    ld a, d                                       ; $5c73: $7a
    cp $40                                        ; $5c74: $fe $40
    jr z, jr_03f_5c7e                             ; $5c76: $28 $06

    cp $00                                        ; $5c78: $fe $00
    jr nz, jr_03f_5c6d                            ; $5c7a: $20 $f1

    jr jr_03f_5c81                                ; $5c7c: $18 $03

jr_03f_5c7e:
    call Call_03f_5c53                            ; $5c7e: $cd $53 $5c

jr_03f_5c81:
    ld a, [hl-]                                   ; $5c81: $3a
    cp $40                                        ; $5c82: $fe $40
    jr nz, jr_03f_5c89                            ; $5c84: $20 $03

    call Call_03f_5c53                            ; $5c86: $cd $53 $5c

jr_03f_5c89:
    and e                                         ; $5c89: $a3
    jr z, jr_03f_5c81                             ; $5c8a: $28 $f5

    dec c                                         ; $5c8c: $0d

jr_03f_5c8d:
    ld a, [hl-]                                   ; $5c8d: $3a
    ld d, a                                       ; $5c8e: $57
    and e                                         ; $5c8f: $a3
    jr z, jr_03f_5c93                             ; $5c90: $28 $01

    dec c                                         ; $5c92: $0d

jr_03f_5c93:
    ld a, d                                       ; $5c93: $7a
    cp $40                                        ; $5c94: $fe $40
    jr z, jr_03f_5ca0                             ; $5c96: $28 $08

    cp $00                                        ; $5c98: $fe $00
    jr nz, jr_03f_5c8d                            ; $5c9a: $20 $f1

    inc hl                                        ; $5c9c: $23
    inc c                                         ; $5c9d: $0c
    jr jr_03f_5ca4                                ; $5c9e: $18 $04

jr_03f_5ca0:
    call Call_03f_5c53                            ; $5ca0: $cd $53 $5c
    inc hl                                        ; $5ca3: $23

jr_03f_5ca4:
    ld a, [hl+]                                   ; $5ca4: $2a
    cp $40                                        ; $5ca5: $fe $40
    jr nz, jr_03f_5cb0                            ; $5ca7: $20 $07

    ld c, $00                                     ; $5ca9: $0e $00
    ld hl, $5dfc                                  ; $5cab: $21 $fc $5d
    jr jr_03f_5ca4                                ; $5cae: $18 $f4

jr_03f_5cb0:
    and e                                         ; $5cb0: $a3
    jr z, jr_03f_5ca4                             ; $5cb1: $28 $f1

    ld a, c                                       ; $5cb3: $79
    ld [$d609], a                                 ; $5cb4: $ea $09 $d6
    ret                                           ; $5cb7: $c9


Call_03f_5cb8:
    ld a, $06                                     ; $5cb8: $3e $06
    ldh [$96], a                                  ; $5cba: $e0 $96
    ldh [rSVBK], a                                ; $5cbc: $e0 $70
    ld hl, $5dfc                                  ; $5cbe: $21 $fc $5d
    ld a, [$d60b]                                 ; $5cc1: $fa $0b $d6
    ld b, a                                       ; $5cc4: $47
    ld a, [$d60a]                                 ; $5cc5: $fa $0a $d6
    ld c, a                                       ; $5cc8: $4f
    ld a, [$d609]                                 ; $5cc9: $fa $09 $d6
    add c                                         ; $5ccc: $81
    cp b                                          ; $5ccd: $b8
    jr c, jr_03f_5cd1                             ; $5cce: $38 $01

    sub b                                         ; $5cd0: $90

jr_03f_5cd1:
    ld b, a                                       ; $5cd1: $47
    ld d, a                                       ; $5cd2: $57
    inc b                                         ; $5cd3: $04
    xor a                                         ; $5cd4: $af
    ld [$d60a], a                                 ; $5cd5: $ea $0a $d6
    ld a, [$d60e]                                 ; $5cd8: $fa $0e $d6
    ld e, a                                       ; $5cdb: $5f

jr_03f_5cdc:
    ld a, [hl+]                                   ; $5cdc: $2a
    and e                                         ; $5cdd: $a3
    jr z, jr_03f_5cdc                             ; $5cde: $28 $fc

    dec b                                         ; $5ce0: $05
    jr nz, jr_03f_5cdc                            ; $5ce1: $20 $f9

jr_03f_5ce3:
    ld a, [hl+]                                   ; $5ce3: $2a
    cp $00                                        ; $5ce4: $fe $00
    jr z, jr_03f_5cf7                             ; $5ce6: $28 $0f

    ld c, a                                       ; $5ce8: $4f
    and e                                         ; $5ce9: $a3
    jr z, jr_03f_5ced                             ; $5cea: $28 $01

    inc d                                         ; $5cec: $14

jr_03f_5ced:
    ld a, c                                       ; $5ced: $79
    cp $40                                        ; $5cee: $fe $40
    jr nz, jr_03f_5ce3                            ; $5cf0: $20 $f1

    ld hl, $5dfc                                  ; $5cf2: $21 $fc $5d
    ld d, $ff                                     ; $5cf5: $16 $ff

jr_03f_5cf7:
    inc d                                         ; $5cf7: $14

jr_03f_5cf8:
    ld a, [hl+]                                   ; $5cf8: $2a
    cp $40                                        ; $5cf9: $fe $40
    jr nz, jr_03f_5d02                            ; $5cfb: $20 $05

    ld hl, $5dfc                                  ; $5cfd: $21 $fc $5d
    ld d, $00                                     ; $5d00: $16 $00

jr_03f_5d02:
    and e                                         ; $5d02: $a3
    jr z, jr_03f_5cf8                             ; $5d03: $28 $f3

    ld a, d                                       ; $5d05: $7a
    ld [$d609], a                                 ; $5d06: $ea $09 $d6
    ret                                           ; $5d09: $c9


Call_03f_5d0a:
    rst $18                                       ; $5d0a: $df

    db $1c, $03

    ld a, [$c372]                                 ; $5d0d: $fa $72 $c3
    xor $08                                       ; $5d10: $ee $08
    ld [$c372], a                                 ; $5d12: $ea $72 $c3
    ld a, $03                                     ; $5d15: $3e $03
    ldh [$96], a                                  ; $5d17: $e0 $96
    ldh [rSVBK], a                                ; $5d19: $e0 $70
    ld c, $0e                                     ; $5d1b: $0e $0e
    ld hl, $444d                                  ; $5d1d: $21 $4d $44

jr_03f_5d20:
    push bc                                       ; $5d20: $c5
    ld a, [hl+]                                   ; $5d21: $2a
    ld e, a                                       ; $5d22: $5f
    ld a, [hl+]                                   ; $5d23: $2a
    ld d, a                                       ; $5d24: $57
    ld a, [hl+]                                   ; $5d25: $2a
    ld c, a                                       ; $5d26: $4f
    ld a, [hl+]                                   ; $5d27: $2a
    ld b, a                                       ; $5d28: $47
    push hl                                       ; $5d29: $e5
    ld h, d                                       ; $5d2a: $62
    ld l, e                                       ; $5d2b: $6b
    ld a, $20                                     ; $5d2c: $3e $20
    call Call_03f_5b92                            ; $5d2e: $cd $92 $5b
    pop hl                                        ; $5d31: $e1
    pop bc                                        ; $5d32: $c1
    dec c                                         ; $5d33: $0d
    jr nz, jr_03f_5d20                            ; $5d34: $20 $ea

    ld a, $06                                     ; $5d36: $3e $06
    ldh [$96], a                                  ; $5d38: $e0 $96
    ldh [rSVBK], a                                ; $5d3a: $e0 $70
    ld c, $00                                     ; $5d3c: $0e $00
    ld a, [$d609]                                 ; $5d3e: $fa $09 $d6
    ld b, a                                       ; $5d41: $47
    inc b                                         ; $5d42: $04
    ld hl, $5dfc                                  ; $5d43: $21 $fc $5d
    ld a, [$d60e]                                 ; $5d46: $fa $0e $d6
    ld e, a                                       ; $5d49: $5f

jr_03f_5d4a:
    inc c                                         ; $5d4a: $0c

jr_03f_5d4b:
    ld a, [hl+]                                   ; $5d4b: $2a
    cp $00                                        ; $5d4c: $fe $00
    jr z, jr_03f_5d4b                             ; $5d4e: $28 $fb

    and e                                         ; $5d50: $a3
    jr z, jr_03f_5d4a                             ; $5d51: $28 $f7

    dec b                                         ; $5d53: $05
    jr nz, jr_03f_5d4a                            ; $5d54: $20 $f4

    dec c                                         ; $5d56: $0d
    dec hl                                        ; $5d57: $2b
    ld b, $00                                     ; $5d58: $06 $00
    push af                                       ; $5d5a: $f5
    push bc                                       ; $5d5b: $c5
    push de                                       ; $5d5c: $d5
    push hl                                       ; $5d5d: $e5
    ld a, $03                                     ; $5d5e: $3e $03
    ldh [$96], a                                  ; $5d60: $e0 $96
    ldh [rSVBK], a                                ; $5d62: $e0 $70
    pop hl                                        ; $5d64: $e1
    pop de                                        ; $5d65: $d1
    pop bc                                        ; $5d66: $c1
    pop af                                        ; $5d67: $f1

jr_03f_5d68:
    inc c                                         ; $5d68: $0c

jr_03f_5d69:
    ld a, [hl+]                                   ; $5d69: $2a
    cp $00                                        ; $5d6a: $fe $00
    jr z, jr_03f_5d69                             ; $5d6c: $28 $fb

    cp $40                                        ; $5d6e: $fe $40
    jr nz, jr_03f_5d79                            ; $5d70: $20 $07

    ld hl, $5dfc                                  ; $5d72: $21 $fc $5d
    ld c, $00                                     ; $5d75: $0e $00
    jr jr_03f_5d68                                ; $5d77: $18 $ef

jr_03f_5d79:
    and e                                         ; $5d79: $a3
    jr z, jr_03f_5d68                             ; $5d7a: $28 $ec

    dec c                                         ; $5d7c: $0d
    push hl                                       ; $5d7d: $e5
    ld hl, $1a2b                                  ; $5d7e: $21 $2b $1a
    ld a, c                                       ; $5d81: $79
    add l                                         ; $5d82: $85
    ld l, a                                       ; $5d83: $6f
    jr nc, jr_03f_5d87                            ; $5d84: $30 $01

    inc h                                         ; $5d86: $24

jr_03f_5d87:
    inc c                                         ; $5d87: $0c
    inc b                                         ; $5d88: $04
    push de                                       ; $5d89: $d5
    push bc                                       ; $5d8a: $c5
    ld de, $d0d0                                  ; $5d8b: $11 $d0 $d0

jr_03f_5d8e:
    ld a, $80                                     ; $5d8e: $3e $80
    add e                                         ; $5d90: $83
    ld e, a                                       ; $5d91: $5f
    jr nc, jr_03f_5d95                            ; $5d92: $30 $01

    inc d                                         ; $5d94: $14

jr_03f_5d95:
    dec b                                         ; $5d95: $05
    jr nz, jr_03f_5d8e                            ; $5d96: $20 $f6

    pop bc                                        ; $5d98: $c1
    ld a, c                                       ; $5d99: $79
    ld c, $40                                     ; $5d9a: $0e $40
    rst $18                                       ; $5d9c: $df

    db $22, $05

    ld c, a                                       ; $5d9f: $4f
    call Call_03f_6142                            ; $5da0: $cd $42 $61
    pop de                                        ; $5da3: $d1
    pop hl                                        ; $5da4: $e1
    ld a, b                                       ; $5da5: $78
    cp $06                                        ; $5da6: $fe $06
    jr nz, jr_03f_5d68                            ; $5da8: $20 $be

    ld a, $03                                     ; $5daa: $3e $03
    ldh [$96], a                                  ; $5dac: $e0 $96
    ldh [rSVBK], a                                ; $5dae: $e0 $70
    call Call_03f_5dba                            ; $5db0: $cd $ba $5d
    ld a, $06                                     ; $5db3: $3e $06
    ldh [$96], a                                  ; $5db5: $e0 $96
    ldh [rSVBK], a                                ; $5db7: $e0 $70
    ret                                           ; $5db9: $c9


Call_03f_5dba:
    call Call_03f_5c23                            ; $5dba: $cd $23 $5c
    ld b, a                                       ; $5dbd: $47
    inc b                                         ; $5dbe: $04
    ld a, [$d60e]                                 ; $5dbf: $fa $0e $d6
    ld e, a                                       ; $5dc2: $5f
    ld hl, $5dfc                                  ; $5dc3: $21 $fc $5d
    ld d, $00                                     ; $5dc6: $16 $00

jr_03f_5dc8:
    ld a, [hl+]                                   ; $5dc8: $2a
    cp $00                                        ; $5dc9: $fe $00
    jr nz, jr_03f_5dd0                            ; $5dcb: $20 $03

    inc d                                         ; $5dcd: $14
    jr jr_03f_5dc8                                ; $5dce: $18 $f8

jr_03f_5dd0:
    and e                                         ; $5dd0: $a3
    jr z, jr_03f_5dc8                             ; $5dd1: $28 $f5

    dec b                                         ; $5dd3: $05
    jr nz, jr_03f_5dc8                            ; $5dd4: $20 $f2

    push af                                       ; $5dd6: $f5
    push bc                                       ; $5dd7: $c5
    push de                                       ; $5dd8: $d5
    push hl                                       ; $5dd9: $e5
    ld a, $01                                     ; $5dda: $3e $01
    ldh [$96], a                                  ; $5ddc: $e0 $96
    ldh [rSVBK], a                                ; $5dde: $e0 $70
    pop hl                                        ; $5de0: $e1
    pop de                                        ; $5de1: $d1
    pop bc                                        ; $5de2: $c1
    pop af                                        ; $5de3: $f1
    ld hl, $d000                                  ; $5de4: $21 $00 $d0
    ld a, d                                       ; $5de7: $7a
    rrca                                          ; $5de8: $0f
    rrca                                          ; $5de9: $0f
    rrca                                          ; $5dea: $0f
    ld b, a                                       ; $5deb: $47
    and $e0                                       ; $5dec: $e6 $e0
    ld c, a                                       ; $5dee: $4f
    xor b                                         ; $5def: $a8
    ld b, a                                       ; $5df0: $47
    add hl, bc                                    ; $5df1: $09
    ld de, $a600                                  ; $5df2: $11 $00 $a6
    ld c, $10                                     ; $5df5: $0e $10
    call Call_000_0468                            ; $5df7: $cd $68 $04
    ret                                           ; $5dfa: $c9


    ld b, b                                       ; $5dfb: $40

    db $08, $01, $01, $02, $02, $08, $01, $01, $01, $01, $01, $00, $01, $08, $08, $04
    db $04, $10, $01, $01, $01, $01, $02, $10, $02, $00, $01, $01, $01, $08, $08, $04
    db $01, $04, $01, $01, $04, $10, $10, $01, $02, $10, $10, $10, $01, $00, $08, $10
    db $01, $04, $01, $10, $02, $02, $08, $08, $04, $01, $02, $08, $00, $02, $02, $08
    db $00, $04, $08, $10, $10, $04, $08, $08, $01, $04, $01, $00, $01, $02, $02, $04
    db $01, $01, $10, $10, $10, $04, $02, $10, $00, $02, $10, $04, $10, $10, $02, $02
    db $01, $02, $08, $00, $08, $08, $08, $04, $00, $00, $00, $10, $01, $01, $10, $08
    db $04, $10, $04, $01, $00, $01, $02, $08, $01, $10, $04, $08, $10, $00, $01, $04
    db $02, $00, $10, $01, $01, $08, $02, $00, $02, $02, $01, $01, $01, $01, $02, $10
    db $08, $04, $02, $10, $04, $08, $00, $00, $04, $08, $10, $02, $01, $08, $00, $01
    db $04, $02, $02, $10, $04, $08, $10, $04, $01, $01, $10, $01, $08, $01, $04, $08
    db $04, $08, $01, $02, $10, $02, $01, $00, $04, $10, $10, $01, $01, $08, $08, $01
    db $01, $02, $08, $00, $02, $01, $02, $08, $00, $01, $00, $10, $10, $04, $04, $00
    db $00, $01, $01, $08, $00, $40

Call_03f_5ed2:
    ld a, $06                                     ; $5ed2: $3e $06
    ldh [$96], a                                  ; $5ed4: $e0 $96
    ldh [rSVBK], a                                ; $5ed6: $e0 $70
    ld c, $00                                     ; $5ed8: $0e $00
    ld hl, $5dfc                                  ; $5eda: $21 $fc $5d
    ld a, [$d60e]                                 ; $5edd: $fa $0e $d6
    ld e, a                                       ; $5ee0: $5f
    ld a, [$d60a]                                 ; $5ee1: $fa $0a $d6
    ld b, a                                       ; $5ee4: $47
    or a                                          ; $5ee5: $b7
    jr z, jr_03f_5efa                             ; $5ee6: $28 $12

jr_03f_5ee8:
    ld a, [hl+]                                   ; $5ee8: $2a
    and e                                         ; $5ee9: $a3
    jr z, jr_03f_5eed                             ; $5eea: $28 $01

    inc c                                         ; $5eec: $0c

jr_03f_5eed:
    cp $40                                        ; $5eed: $fe $40
    jr z, jr_03f_5efa                             ; $5eef: $28 $09

    cp $00                                        ; $5ef1: $fe $00
    jr nz, jr_03f_5ee8                            ; $5ef3: $20 $f3

    dec b                                         ; $5ef5: $05
    jr nz, jr_03f_5ee8                            ; $5ef6: $20 $f0

    jr jr_03f_5f02                                ; $5ef8: $18 $08

jr_03f_5efa:
    xor a                                         ; $5efa: $af
    ld [$d60a], a                                 ; $5efb: $ea $0a $d6
    ld [$d609], a                                 ; $5efe: $ea $09 $d6
    ret                                           ; $5f01: $c9


jr_03f_5f02:
    xor a                                         ; $5f02: $af
    ld [$d60a], a                                 ; $5f03: $ea $0a $d6
    ld a, [$d60b]                                 ; $5f06: $fa $0b $d6
    cp c                                          ; $5f09: $b9
    jr nz, jr_03f_5f11                            ; $5f0a: $20 $05

    xor a                                         ; $5f0c: $af
    ld [$d609], a                                 ; $5f0d: $ea $09 $d6
    ret                                           ; $5f10: $c9


jr_03f_5f11:
    ld a, c                                       ; $5f11: $79
    ld [$d609], a                                 ; $5f12: $ea $09 $d6
    ret                                           ; $5f15: $c9


Call_03f_5f16:
    ld a, $06                                     ; $5f16: $3e $06
    ldh [$96], a                                  ; $5f18: $e0 $96
    ldh [rSVBK], a                                ; $5f1a: $e0 $70
    ld a, [$d60e]                                 ; $5f1c: $fa $0e $d6
    ld b, a                                       ; $5f1f: $47
    call Call_03f_5c23                            ; $5f20: $cd $23 $5c
    ld b, a                                       ; $5f23: $47
    inc b                                         ; $5f24: $04
    ld c, $00                                     ; $5f25: $0e $00
    ld hl, $5dfc                                  ; $5f27: $21 $fc $5d
    ld a, [$d60e]                                 ; $5f2a: $fa $0e $d6
    ld e, a                                       ; $5f2d: $5f

jr_03f_5f2e:
    ld a, [hl+]                                   ; $5f2e: $2a
    and e                                         ; $5f2f: $a3
    jr z, jr_03f_5f37                             ; $5f30: $28 $05

    dec b                                         ; $5f32: $05
    jr nz, jr_03f_5f2e                            ; $5f33: $20 $f9

    jr jr_03f_5f47                                ; $5f35: $18 $10

jr_03f_5f37:
    cp $40                                        ; $5f37: $fe $40
    jr z, jr_03f_5f42                             ; $5f39: $28 $07

    cp $00                                        ; $5f3b: $fe $00
    jr nz, jr_03f_5f2e                            ; $5f3d: $20 $ef

    inc c                                         ; $5f3f: $0c
    jr jr_03f_5f2e                                ; $5f40: $18 $ec

jr_03f_5f42:
    xor a                                         ; $5f42: $af
    ld [$d60a], a                                 ; $5f43: $ea $0a $d6
    ret                                           ; $5f46: $c9


jr_03f_5f47:
    ld a, c                                       ; $5f47: $79
    ld [$d60a], a                                 ; $5f48: $ea $0a $d6
    ret                                           ; $5f4b: $c9


Call_03f_5f4c:
    or a                                          ; $5f4c: $b7
    jr z, jr_03f_5f6c                             ; $5f4d: $28 $1d

    ld a, $01                                     ; $5f4f: $3e $01
    ldh [$96], a                                  ; $5f51: $e0 $96
    ldh [rSVBK], a                                ; $5f53: $e0 $70
    ld hl, $d000                                  ; $5f55: $21 $00 $d0
    ld a, b                                       ; $5f58: $78
    rrca                                          ; $5f59: $0f
    rrca                                          ; $5f5a: $0f
    ld b, a                                       ; $5f5b: $47
    and $c0                                       ; $5f5c: $e6 $c0
    ld c, a                                       ; $5f5e: $4f
    xor b                                         ; $5f5f: $a8
    ld b, a                                       ; $5f60: $47
    add hl, bc                                    ; $5f61: $09
    ld de, $a600                                  ; $5f62: $11 $00 $a6
    ld c, $20                                     ; $5f65: $0e $20
    call Call_000_0468                            ; $5f67: $cd $68 $04
    jr jr_03f_5f6c                                ; $5f6a: $18 $00

jr_03f_5f6c:
    ld a, $06                                     ; $5f6c: $3e $06
    ldh [$96], a                                  ; $5f6e: $e0 $96
    ldh [rSVBK], a                                ; $5f70: $e0 $70
    ret                                           ; $5f72: $c9


Call_03f_5f73:
    push bc                                       ; $5f73: $c5
    push af                                       ; $5f74: $f5
    ld a, $06                                     ; $5f75: $3e $06
    ldh [$96], a                                  ; $5f77: $e0 $96
    ldh [rSVBK], a                                ; $5f79: $e0 $70
    ldh a, [$94]                                  ; $5f7b: $f0 $94
    bit 0, a                                      ; $5f7d: $cb $47
    jr z, jr_03f_5f8a                             ; $5f7f: $28 $09

    pop af                                        ; $5f81: $f1
    rst $08                                       ; $5f82: $cf
    adc [hl]                                      ; $5f83: $8e
    ld a, $04                                     ; $5f84: $3e $04
    push af                                       ; $5f86: $f5
    jp Jump_03f_6014                              ; $5f87: $c3 $14 $60


jr_03f_5f8a:
    bit 1, a                                      ; $5f8a: $cb $4f
    jr z, jr_03f_5f96                             ; $5f8c: $28 $08

    pop af                                        ; $5f8e: $f1
    rst $08                                       ; $5f8f: $cf
    ld e, l                                       ; $5f90: $5d
    ld a, $01                                     ; $5f91: $3e $01
    push af                                       ; $5f93: $f5
    jr jr_03f_6014                                ; $5f94: $18 $7e

jr_03f_5f96:
    ldh a, [$91]                                  ; $5f96: $f0 $91
    bit 6, a                                      ; $5f98: $cb $77
    jr z, jr_03f_5fbd                             ; $5f9a: $28 $21

    ld a, [$d60a]                                 ; $5f9c: $fa $0a $d6
    ld b, a                                       ; $5f9f: $47
    dec a                                         ; $5fa0: $3d
    cp $ff                                        ; $5fa1: $fe $ff
    jr z, jr_03f_6014                             ; $5fa3: $28 $6f

    ld [$d60a], a                                 ; $5fa5: $ea $0a $d6
    push af                                       ; $5fa8: $f5
    xor a                                         ; $5fa9: $af
    call Call_03f_5f4c                            ; $5faa: $cd $4c $5f
    pop af                                        ; $5fad: $f1
    rst $08                                       ; $5fae: $cf
    adc e                                         ; $5faf: $8b
    ld a, [$d60a]                                 ; $5fb0: $fa $0a $d6
    ld b, a                                       ; $5fb3: $47
    ld a, $01                                     ; $5fb4: $3e $01
    call Call_03f_5f4c                            ; $5fb6: $cd $4c $5f
    ld a, $01                                     ; $5fb9: $3e $01
    jr jr_03f_6014                                ; $5fbb: $18 $57

jr_03f_5fbd:
    bit 7, a                                      ; $5fbd: $cb $7f
    jr z, jr_03f_5fe2                             ; $5fbf: $28 $21

    ld a, [$d60a]                                 ; $5fc1: $fa $0a $d6
    ld b, a                                       ; $5fc4: $47
    inc a                                         ; $5fc5: $3c
    cp $1a                                        ; $5fc6: $fe $1a
    jr z, jr_03f_6014                             ; $5fc8: $28 $4a

    ld [$d60a], a                                 ; $5fca: $ea $0a $d6
    push af                                       ; $5fcd: $f5
    xor a                                         ; $5fce: $af
    call Call_03f_5f4c                            ; $5fcf: $cd $4c $5f
    pop af                                        ; $5fd2: $f1
    rst $08                                       ; $5fd3: $cf
    adc e                                         ; $5fd4: $8b
    ld a, [$d60a]                                 ; $5fd5: $fa $0a $d6
    ld b, a                                       ; $5fd8: $47
    ld a, $01                                     ; $5fd9: $3e $01
    call Call_03f_5f4c                            ; $5fdb: $cd $4c $5f
    ld a, $01                                     ; $5fde: $3e $01
    jr jr_03f_6014                                ; $5fe0: $18 $32

jr_03f_5fe2:
    bit 5, a                                      ; $5fe2: $cb $6f
    jr z, jr_03f_5ffc                             ; $5fe4: $28 $16

    ld a, [$d60a]                                 ; $5fe6: $fa $0a $d6
    cp $09                                        ; $5fe9: $fe $09
    jr c, jr_03f_6014                             ; $5feb: $38 $27

    sub $09                                       ; $5fed: $d6 $09
    rst $08                                       ; $5fef: $cf
    adc e                                         ; $5ff0: $8b
    ld [$d60a], a                                 ; $5ff1: $ea $0a $d6
    ld b, a                                       ; $5ff4: $47
    ld a, $01                                     ; $5ff5: $3e $01
    call Call_03f_5f4c                            ; $5ff7: $cd $4c $5f
    jr jr_03f_6014                                ; $5ffa: $18 $18

jr_03f_5ffc:
    bit 4, a                                      ; $5ffc: $cb $67
    jr z, jr_03f_6014                             ; $5ffe: $28 $14

    ld a, [$d60a]                                 ; $6000: $fa $0a $d6
    cp $11                                        ; $6003: $fe $11
    jr nc, jr_03f_6014                            ; $6005: $30 $0d

    add $09                                       ; $6007: $c6 $09
    rst $08                                       ; $6009: $cf
    adc e                                         ; $600a: $8b
    ld [$d60a], a                                 ; $600b: $ea $0a $d6
    ld b, a                                       ; $600e: $47
    ld a, $01                                     ; $600f: $3e $01
    call Call_03f_5f4c                            ; $6011: $cd $4c $5f

Jump_03f_6014:
jr_03f_6014:
    pop af                                        ; $6014: $f1
    pop bc                                        ; $6015: $c1
    ret                                           ; $6016: $c9


Call_03f_6017:
    push bc                                       ; $6017: $c5
    push af                                       ; $6018: $f5
    ld a, $06                                     ; $6019: $3e $06
    ldh [$96], a                                  ; $601b: $e0 $96
    ldh [rSVBK], a                                ; $601d: $e0 $70
    ld a, [$d613]                                 ; $601f: $fa $13 $d6
    res 2, a                                      ; $6022: $cb $97
    res 3, a                                      ; $6024: $cb $9f
    ld [$d613], a                                 ; $6026: $ea $13 $d6
    ldh a, [$94]                                  ; $6029: $f0 $94
    bit 0, a                                      ; $602b: $cb $47
    jr z, jr_03f_60a3                             ; $602d: $28 $74

    rst $08                                       ; $602f: $cf
    ld e, h                                       ; $6030: $5c
    call Call_03f_58cb                            ; $6031: $cd $cb $58
    ld a, [$d613]                                 ; $6034: $fa $13 $d6
    set 0, a                                      ; $6037: $cb $c7
    ld [$d613], a                                 ; $6039: $ea $13 $d6
    ld a, [$d60e]                                 ; $603c: $fa $0e $d6
    ld b, a                                       ; $603f: $47
    ld a, [$d60f]                                 ; $6040: $fa $0f $d6
    cp $01                                        ; $6043: $fe $01
    jr z, jr_03f_6057                             ; $6045: $28 $10

    call Call_03f_5c23                            ; $6047: $cd $23 $5c
    call Call_03f_5bdc                            ; $604a: $cd $dc $5b
    ld hl, $1ae7                                  ; $604d: $21 $e7 $1a
    add l                                         ; $6050: $85
    ld l, a                                       ; $6051: $6f
    jr nc, jr_03f_6055                            ; $6052: $30 $01

    inc h                                         ; $6054: $24

jr_03f_6055:
    jr jr_03f_6065                                ; $6055: $18 $0e

jr_03f_6057:
    call Call_03f_5c23                            ; $6057: $cd $23 $5c
    call Call_03f_5bf2                            ; $605a: $cd $f2 $5b
    ld hl, $1a1e                                  ; $605d: $21 $1e $1a
    add l                                         ; $6060: $85
    ld l, a                                       ; $6061: $6f
    jr nc, jr_03f_6065                            ; $6062: $30 $01

    inc h                                         ; $6064: $24

jr_03f_6065:
    push hl                                       ; $6065: $e5
    rst $18                                       ; $6066: $df
    ld l, d                                       ; $6067: $6a
    dec b                                         ; $6068: $05
    pop hl                                        ; $6069: $e1
    ld d, $00                                     ; $606a: $16 $00
    ld e, $06                                     ; $606c: $1e $06
    ld b, $14                                     ; $606e: $06 $14
    ld c, $05                                     ; $6070: $0e $05
    rst $18                                       ; $6072: $df
    ld [$af05], sp                                ; $6073: $08 $05 $af
    rst $18                                       ; $6076: $df
    ld d, d                                       ; $6077: $52
    dec b                                         ; $6078: $05
    ld b, $00                                     ; $6079: $06 $00
    rst $18                                       ; $607b: $df
    ld [de], a                                    ; $607c: $12
    dec b                                         ; $607d: $05
    rst $20                                       ; $607e: $e7
    ld h, b                                       ; $607f: $60
    inc bc                                        ; $6080: $03
    xor a                                         ; $6081: $af
    rst $18                                       ; $6082: $df
    ld l, [hl]                                    ; $6083: $6e
    dec b                                         ; $6084: $05
    rst $28                                       ; $6085: $ef
    ld h, b                                       ; $6086: $60
    inc bc                                        ; $6087: $03
    xor a                                         ; $6088: $af
    rst $18                                       ; $6089: $df
    halt                                          ; $608a: $76
    dec b                                         ; $608b: $05
    rst $18                                       ; $608c: $df
    ld [hl], d                                    ; $608d: $72
    dec b                                         ; $608e: $05
    ld a, $06                                     ; $608f: $3e $06
    ldh [$96], a                                  ; $6091: $e0 $96
    ldh [rSVBK], a                                ; $6093: $e0 $70
    ld a, [$d613]                                 ; $6095: $fa $13 $d6
    res 0, a                                      ; $6098: $cb $87
    ld [$d613], a                                 ; $609a: $ea $13 $d6
    call Call_03f_58b9                            ; $609d: $cd $b9 $58
    jp Jump_03f_613f                              ; $60a0: $c3 $3f $61


jr_03f_60a3:
    bit 1, a                                      ; $60a3: $cb $4f
    jr z, jr_03f_60bd                             ; $60a5: $28 $16

    pop af                                        ; $60a7: $f1
    rst $08                                       ; $60a8: $cf

    db $8f

    ld a, [$d610]                                 ; $60aa: $fa $10 $d6
    cp $06                                        ; $60ad: $fe $06
    jr z, jr_03f_60b7                             ; $60af: $28 $06

    ld a, $01                                     ; $60b1: $3e $01
    push af                                       ; $60b3: $f5
    jp Jump_03f_613f                              ; $60b4: $c3 $3f $61


jr_03f_60b7:
    ld a, $10                                     ; $60b7: $3e $10
    push af                                       ; $60b9: $f5
    jp Jump_03f_613f                              ; $60ba: $c3 $3f $61


jr_03f_60bd:
    ldh a, [$91]                                  ; $60bd: $f0 $91
    bit 6, a                                      ; $60bf: $cb $77
    jr z, jr_03f_60e9                             ; $60c1: $28 $26

    rst $08                                       ; $60c3: $cf
    ld e, e                                       ; $60c4: $5b
    ld a, [$d60a]                                 ; $60c5: $fa $0a $d6
    dec a                                         ; $60c8: $3d
    cp $ff                                        ; $60c9: $fe $ff
    jr z, jr_03f_60d5                             ; $60cb: $28 $08

    ld [$d60a], a                                 ; $60cd: $ea $0a $d6
    call Call_03f_5dba                            ; $60d0: $cd $ba $5d
    jr jr_03f_613f                                ; $60d3: $18 $6a

jr_03f_60d5:
    ld a, [$d609]                                 ; $60d5: $fa $09 $d6
    dec a                                         ; $60d8: $3d
    cp $ff                                        ; $60d9: $fe $ff
    jr nz, jr_03f_60e1                            ; $60db: $20 $04

    ld a, [$d60b]                                 ; $60dd: $fa $0b $d6
    dec a                                         ; $60e0: $3d

jr_03f_60e1:
    ld [$d609], a                                 ; $60e1: $ea $09 $d6
    call Call_03f_5d0a                            ; $60e4: $cd $0a $5d
    jr jr_03f_613f                                ; $60e7: $18 $56

jr_03f_60e9:
    bit 7, a                                      ; $60e9: $cb $7f
    jr z, jr_03f_6113                             ; $60eb: $28 $26

    rst $08                                       ; $60ed: $cf
    ld e, e                                       ; $60ee: $5b
    ld a, [$d60a]                                 ; $60ef: $fa $0a $d6
    inc a                                         ; $60f2: $3c
    cp $06                                        ; $60f3: $fe $06
    jr nc, jr_03f_60ff                            ; $60f5: $30 $08

    ld [$d60a], a                                 ; $60f7: $ea $0a $d6
    call Call_03f_5dba                            ; $60fa: $cd $ba $5d
    jr jr_03f_613f                                ; $60fd: $18 $40

jr_03f_60ff:
    ld a, [$d60b]                                 ; $60ff: $fa $0b $d6
    ld b, a                                       ; $6102: $47
    ld a, [$d609]                                 ; $6103: $fa $09 $d6
    inc a                                         ; $6106: $3c
    cp b                                          ; $6107: $b8
    jr nz, jr_03f_610b                            ; $6108: $20 $01

    xor a                                         ; $610a: $af

jr_03f_610b:
    ld [$d609], a                                 ; $610b: $ea $09 $d6
    call Call_03f_5d0a                            ; $610e: $cd $0a $5d
    jr jr_03f_613f                                ; $6111: $18 $2c

jr_03f_6113:
    bit 5, a                                      ; $6113: $cb $6f
    jr z, jr_03f_6129                             ; $6115: $28 $12

    ld a, [$d613]                                 ; $6117: $fa $13 $d6
    set 2, a                                      ; $611a: $cb $d7
    ld [$d613], a                                 ; $611c: $ea $13 $d6
    rst $08                                       ; $611f: $cf
    adc e                                         ; $6120: $8b
    call Call_03f_5c3a                            ; $6121: $cd $3a $5c
    call Call_03f_5d0a                            ; $6124: $cd $0a $5d
    jr jr_03f_613f                                ; $6127: $18 $16

jr_03f_6129:
    bit 4, a                                      ; $6129: $cb $67
    jr z, jr_03f_613f                             ; $612b: $28 $12

    ld a, [$d613]                                 ; $612d: $fa $13 $d6
    set 3, a                                      ; $6130: $cb $df
    ld [$d613], a                                 ; $6132: $ea $13 $d6
    rst $08                                       ; $6135: $cf
    adc e                                         ; $6136: $8b
    call Call_03f_5cb8                            ; $6137: $cd $b8 $5c
    call Call_03f_5d0a                            ; $613a: $cd $0a $5d
    jr jr_03f_613f                                ; $613d: $18 $00

Jump_03f_613f:
jr_03f_613f:
    pop af                                        ; $613f: $f1
    pop bc                                        ; $6140: $c1
    ret                                           ; $6141: $c9


Call_03f_6142:
    push af                                       ; $6142: $f5
    push bc                                       ; $6143: $c5
    push de                                       ; $6144: $d5
    push hl                                       ; $6145: $e5
    ldh a, [$96]                                  ; $6146: $f0 $96
    push af                                       ; $6148: $f5
    ld a, $02                                     ; $6149: $3e $02
    ldh [$96], a                                  ; $614b: $e0 $96
    ldh [rSVBK], a                                ; $614d: $e0 $70
    push de                                       ; $614f: $d5
    call Call_03f_61a0                            ; $6150: $cd $a0 $61
    ld hl, $c600                                  ; $6153: $21 $00 $c6
    ld c, $01                                     ; $6156: $0e $01
    call Call_000_03eb                            ; $6158: $cd $eb $03
    pop de                                        ; $615b: $d1
    push de                                       ; $615c: $d5
    ld h, d                                       ; $615d: $62
    ld l, e                                       ; $615e: $6b
    ld de, $d010                                  ; $615f: $11 $10 $d0
    call Call_000_08ac                            ; $6162: $cd $ac $08
    sra h                                         ; $6165: $cb $2c
    rr l                                          ; $6167: $cb $1d
    ld de, $9810                                  ; $6169: $11 $10 $98
    add hl, de                                    ; $616c: $19
    ld d, h                                       ; $616d: $54
    ld e, l                                       ; $616e: $5d
    pop hl                                        ; $616f: $e1
    ld a, $03                                     ; $6170: $3e $03
    ldh [$96], a                                  ; $6172: $e0 $96
    ldh [rSVBK], a                                ; $6174: $e0 $70
    push hl                                       ; $6176: $e5
    push de                                       ; $6177: $d5
    ld c, $01                                     ; $6178: $0e $01
    call Call_000_0468                            ; $617a: $cd $68 $04
    pop hl                                        ; $617d: $e1
    ld bc, $2000                                  ; $617e: $01 $00 $20
    add hl, bc                                    ; $6181: $09
    ld d, h                                       ; $6182: $54
    ld e, l                                       ; $6183: $5d
    pop hl                                        ; $6184: $e1
    ld a, $02                                     ; $6185: $3e $02
    ldh [$96], a                                  ; $6187: $e0 $96
    ldh [rSVBK], a                                ; $6189: $e0 $70
    ld c, $01                                     ; $618b: $0e $01
    call Call_000_0468                            ; $618d: $cd $68 $04
    rst $18                                       ; $6190: $df

    db $16, $03

    call Call_000_2e3b                            ; $6193: $cd $3b $2e
    pop af                                        ; $6196: $f1
    ldh [$96], a                                  ; $6197: $e0 $96
    ldh [rSVBK], a                                ; $6199: $e0 $70
    pop hl                                        ; $619b: $e1
    pop de                                        ; $619c: $d1
    pop bc                                        ; $619d: $c1
    pop af                                        ; $619e: $f1
    ret                                           ; $619f: $c9


Call_03f_61a0:
    ld a, [$c372]                                 ; $61a0: $fa $72 $c3
    ld b, a                                       ; $61a3: $47
    ld a, $00                                     ; $61a4: $3e $00
    or b                                          ; $61a6: $b0
    ld hl, $c600                                  ; $61a7: $21 $00 $c6
    ld [hl+], a                                   ; $61aa: $22
    ld [hl+], a                                   ; $61ab: $22
    ld [hl+], a                                   ; $61ac: $22
    ld [hl+], a                                   ; $61ad: $22
    ld [hl+], a                                   ; $61ae: $22
    ld [hl+], a                                   ; $61af: $22
    ld [hl+], a                                   ; $61b0: $22
    ld [hl+], a                                   ; $61b1: $22
    ld [hl+], a                                   ; $61b2: $22
    ld [hl+], a                                   ; $61b3: $22
    ld [hl+], a                                   ; $61b4: $22
    ld [hl+], a                                   ; $61b5: $22
    ld [hl+], a                                   ; $61b6: $22
    ld [hl+], a                                   ; $61b7: $22
    ld [hl+], a                                   ; $61b8: $22
    ld [hl], a                                    ; $61b9: $77
    ret                                           ; $61ba: $c9


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
