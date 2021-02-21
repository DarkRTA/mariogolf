; Disassembly of "mgolf.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $00c", ROMX[$4000], BANK[$c]

    inc d                                         ; $4000: $14
    ld b, b                                       ; $4001: $40
    db $ec                                        ; $4002: $ec
    ld e, d                                       ; $4003: $5a
    push bc                                       ; $4004: $c5
    ld e, a                                       ; $4005: $5f
    or d                                          ; $4006: $b2
    ld h, l                                       ; $4007: $65
    ld hl, sp+$67                                 ; $4008: $f8 $67
    ldh [$6e], a                                  ; $400a: $e0 $6e
    dec d                                         ; $400c: $15
    ld c, d                                       ; $400d: $4a
    xor l                                         ; $400e: $ad
    ld b, e                                       ; $400f: $43
    add b                                         ; $4010: $80
    ld [hl], e                                    ; $4011: $73
    ld [hl], d                                    ; $4012: $72
    ld d, a                                       ; $4013: $57
    rst $18                                       ; $4014: $df
    jr z, jr_00c_4022                             ; $4015: $28 $0b

    call Call_000_2b54                            ; $4017: $cd $54 $2b
    ld b, $00                                     ; $401a: $06 $00
    rst $18                                       ; $401c: $df
    ld a, [hl+]                                   ; $401d: $2a
    dec bc                                        ; $401e: $0b
    call Call_00c_40f3                            ; $401f: $cd $f3 $40

jr_00c_4022:
    ld a, $06                                     ; $4022: $3e $06
    ldh [$96], a                                  ; $4024: $e0 $96
    ldh [rSVBK], a                                ; $4026: $e0 $70
    ld hl, $d223                                  ; $4028: $21 $23 $d2
    ld a, $00                                     ; $402b: $3e $00
    ld [hl], a                                    ; $402d: $77
    rst $18                                       ; $402e: $df
    ld [hl-], a                                   ; $402f: $32
    dec bc                                        ; $4030: $0b
    ld hl, $d226                                  ; $4031: $21 $26 $d2
    ld a, [hl+]                                   ; $4034: $2a
    ld h, [hl]                                    ; $4035: $66
    ld l, a                                       ; $4036: $6f
    call Call_00c_4248                            ; $4037: $cd $48 $42
    call Call_00c_433a                            ; $403a: $cd $3a $43
    ld a, $06                                     ; $403d: $3e $06
    ldh [$96], a                                  ; $403f: $e0 $96
    ldh [rSVBK], a                                ; $4041: $e0 $70
    ld a, $0f                                     ; $4043: $3e $0f
    ld hl, $4821                                  ; $4045: $21 $21 $48
    call Call_000_23e8                            ; $4048: $cd $e8 $23
    ld a, [$d226]                                 ; $404b: $fa $26 $d2
    or a                                          ; $404e: $b7
    jr z, jr_00c_4059                             ; $404f: $28 $08

    ld a, $1d                                     ; $4051: $3e $1d
    ld hl, $4852                                  ; $4053: $21 $52 $48
    call Call_000_23e8                            ; $4056: $cd $e8 $23

jr_00c_4059:
    call Call_000_2e3b                            ; $4059: $cd $3b $2e
    ld c, $10                                     ; $405c: $0e $10
    call Call_000_25af                            ; $405e: $cd $af $25
    call Call_000_2625                            ; $4061: $cd $25 $26

jr_00c_4064:
    call Call_000_2e3b                            ; $4064: $cd $3b $2e
    call Call_00c_408b                            ; $4067: $cd $8b $40
    cp $ff                                        ; $406a: $fe $ff
    jr nz, jr_00c_4064                            ; $406c: $20 $f6

    push af                                       ; $406e: $f5
    ld hl, $4821                                  ; $406f: $21 $21 $48
    call Call_000_2449                            ; $4072: $cd $49 $24
    ld a, [$d226]                                 ; $4075: $fa $26 $d2
    or a                                          ; $4078: $b7
    jr z, jr_00c_4081                             ; $4079: $28 $06

    ld hl, $4852                                  ; $407b: $21 $52 $48
    call Call_000_2449                            ; $407e: $cd $49 $24

jr_00c_4081:
    ld c, $10                                     ; $4081: $0e $10
    call Call_000_25a1                            ; $4083: $cd $a1 $25
    call Call_000_2625                            ; $4086: $cd $25 $26
    pop af                                        ; $4089: $f1
    ret                                           ; $408a: $c9


Call_00c_408b:
    ldh a, [$96]                                  ; $408b: $f0 $96
    push af                                       ; $408d: $f5
    ld a, $06                                     ; $408e: $3e $06
    ldh [$96], a                                  ; $4090: $e0 $96
    ldh [rSVBK], a                                ; $4092: $e0 $70
    ld a, $00                                     ; $4094: $3e $00
    push af                                       ; $4096: $f5
    ld a, [$d226]                                 ; $4097: $fa $26 $d2
    ld b, a                                       ; $409a: $47
    ldh a, [$91]                                  ; $409b: $f0 $91
    bit 5, a                                      ; $409d: $cb $6f
    jr z, jr_00c_40bf                             ; $409f: $28 $1e

    ld a, [$d223]                                 ; $40a1: $fa $23 $d2
    dec a                                         ; $40a4: $3d
    bit 7, a                                      ; $40a5: $cb $7f
    jr z, jr_00c_40aa                             ; $40a7: $28 $01

    ld a, b                                       ; $40a9: $78

jr_00c_40aa:
    ld b, a                                       ; $40aa: $47
    ld a, [$d223]                                 ; $40ab: $fa $23 $d2
    cp b                                          ; $40ae: $b8
    jr z, jr_00c_40bd                             ; $40af: $28 $0c

    ld a, b                                       ; $40b1: $78
    ld [$d223], a                                 ; $40b2: $ea $23 $d2
    call Call_00c_4248                            ; $40b5: $cd $48 $42
    call Call_00c_433a                            ; $40b8: $cd $3a $43
    rst $08                                       ; $40bb: $cf
    ld e, e                                       ; $40bc: $5b

jr_00c_40bd:
    jr jr_00c_40ec                                ; $40bd: $18 $2d

jr_00c_40bf:
    bit 4, a                                      ; $40bf: $cb $67
    jr z, jr_00c_40e2                             ; $40c1: $28 $1f

    ld a, [$d223]                                 ; $40c3: $fa $23 $d2
    inc a                                         ; $40c6: $3c
    inc b                                         ; $40c7: $04
    cp b                                          ; $40c8: $b8
    jr c, jr_00c_40cd                             ; $40c9: $38 $02

    ld a, $00                                     ; $40cb: $3e $00

jr_00c_40cd:
    ld b, a                                       ; $40cd: $47
    ld a, [$d223]                                 ; $40ce: $fa $23 $d2
    cp b                                          ; $40d1: $b8
    jr z, jr_00c_40e0                             ; $40d2: $28 $0c

    ld a, b                                       ; $40d4: $78
    ld [$d223], a                                 ; $40d5: $ea $23 $d2
    call Call_00c_4248                            ; $40d8: $cd $48 $42
    call Call_00c_433a                            ; $40db: $cd $3a $43
    rst $08                                       ; $40de: $cf
    ld e, e                                       ; $40df: $5b

jr_00c_40e0:
    jr jr_00c_40ec                                ; $40e0: $18 $0a

jr_00c_40e2:
    bit 1, a                                      ; $40e2: $cb $4f
    jr z, jr_00c_40ec                             ; $40e4: $28 $06

    rst $08                                       ; $40e6: $cf
    ld e, l                                       ; $40e7: $5d
    pop af                                        ; $40e8: $f1
    ld a, $ff                                     ; $40e9: $3e $ff
    push af                                       ; $40eb: $f5

jr_00c_40ec:
    pop af                                        ; $40ec: $f1
    ldh [$96], a                                  ; $40ed: $e0 $96
    ldh [rSVBK], a                                ; $40ef: $e0 $70
    pop af                                        ; $40f1: $f1
    ret                                           ; $40f2: $c9


Call_00c_40f3:
    ld a, $06                                     ; $40f3: $3e $06
    ldh [$96], a                                  ; $40f5: $e0 $96
    ldh [rSVBK], a                                ; $40f7: $e0 $70
    xor a                                         ; $40f9: $af
    ldh [$8a], a                                  ; $40fa: $e0 $8a
    ldh [$8b], a                                  ; $40fc: $e0 $8b
    call Call_000_0341                            ; $40fe: $cd $41 $03
    call Call_000_23b6                            ; $4101: $cd $b6 $23
    ld a, $05                                     ; $4104: $3e $05
    ldh [$96], a                                  ; $4106: $e0 $96
    ldh [rSVBK], a                                ; $4108: $e0 $70
    ld hl, $4b1c                                  ; $410a: $21 $1c $4b
    ld de, $d000                                  ; $410d: $11 $00 $d0
    call Call_000_0234                            ; $4110: $cd $34 $02
    ld a, $01                                     ; $4113: $3e $01
    ldh [$96], a                                  ; $4115: $e0 $96
    ldh [rSVBK], a                                ; $4117: $e0 $70
    ld hl, $4b20                                  ; $4119: $21 $20 $4b
    ld de, $d000                                  ; $411c: $11 $00 $d0
    call Call_000_0234                            ; $411f: $cd $34 $02
    ld hl, $d000                                  ; $4122: $21 $00 $d0
    ld de, $8e00                                  ; $4125: $11 $00 $8e
    ld c, $04                                     ; $4128: $0e $04
    call Call_000_04db                            ; $412a: $cd $db $04
    ld hl, $419b                                  ; $412d: $21 $9b $41
    ld de, $0801                                  ; $4130: $11 $01 $08
    call Call_000_0595                            ; $4133: $cd $95 $05
    ld hl, $4b1e                                  ; $4136: $21 $1e $4b
    ld de, $d000                                  ; $4139: $11 $00 $d0
    call Call_000_0234                            ; $413c: $cd $34 $02
    ld hl, $d000                                  ; $413f: $21 $00 $d0
    ld de, $b000                                  ; $4142: $11 $00 $b0
    ld c, $80                                     ; $4145: $0e $80
    call Call_000_04db                            ; $4147: $cd $db $04
    ld hl, $d800                                  ; $414a: $21 $00 $d8
    ld de, $a800                                  ; $414d: $11 $00 $a8
    ld c, $80                                     ; $4150: $0e $80
    call Call_000_04db                            ; $4152: $cd $db $04
    ld hl, $5c00                                  ; $4155: $21 $00 $5c
    ld de, $0008                                  ; $4158: $11 $08 $00
    call Call_000_0595                            ; $415b: $cd $95 $05
    ld hl, $4b18                                  ; $415e: $21 $18 $4b
    ld de, $d300                                  ; $4161: $11 $00 $d3
    call Call_000_0234                            ; $4164: $cd $34 $02
    ld hl, $4b1a                                  ; $4167: $21 $1a $4b
    ld de, $d000                                  ; $416a: $11 $00 $d0
    call Call_000_0234                            ; $416d: $cd $34 $02
    ld hl, $d022                                  ; $4170: $21 $22 $d0
    ld de, $d322                                  ; $4173: $11 $22 $d3
    ld b, $20                                     ; $4176: $06 $20
    call $4958                                    ; $4178: $cd $58 $49
    ld hl, $d300                                  ; $417b: $21 $00 $d3
    ld de, $b800                                  ; $417e: $11 $00 $b8
    ld c, $24                                     ; $4181: $0e $24
    call Call_000_04db                            ; $4183: $cd $db $04
    ld hl, $d000                                  ; $4186: $21 $00 $d0
    ld de, $9800                                  ; $4189: $11 $00 $98
    ld c, $24                                     ; $418c: $0e $24
    call Call_000_04db                            ; $418e: $cd $db $04
    call Call_000_0371                            ; $4191: $cd $71 $03
    ld a, $06                                     ; $4194: $3e $06
    ldh [$96], a                                  ; $4196: $e0 $96
    ldh [rSVBK], a                                ; $4198: $e0 $70
    ret                                           ; $419a: $c9


    xor b                                         ; $419b: $a8
    ld e, c                                       ; $419c: $59
    add l                                         ; $419d: $85
    ld a, [hl]                                    ; $419e: $7e
    rst $38                                       ; $419f: $ff
    ld a, a                                       ; $41a0: $7f
    nop                                           ; $41a1: $00
    nop                                           ; $41a2: $00
    xor b                                         ; $41a3: $a8
    ld e, c                                       ; $41a4: $59
    add l                                         ; $41a5: $85
    ld a, [hl]                                    ; $41a6: $7e
    rst $38                                       ; $41a7: $ff
    ld a, a                                       ; $41a8: $7f
    nop                                           ; $41a9: $00
    nop                                           ; $41aa: $00

Call_00c_41ab:
    push af                                       ; $41ab: $f5
    push bc                                       ; $41ac: $c5
    push de                                       ; $41ad: $d5
    push hl                                       ; $41ae: $e5
    ldh a, [$96]                                  ; $41af: $f0 $96
    push af                                       ; $41b1: $f5
    ld a, $01                                     ; $41b2: $3e $01
    ldh [$96], a                                  ; $41b4: $e0 $96
    ldh [rSVBK], a                                ; $41b6: $e0 $70
    ld a, c                                       ; $41b8: $79
    cp $06                                        ; $41b9: $fe $06
    jr c, jr_00c_41c0                             ; $41bb: $38 $03

    xor a                                         ; $41bd: $af
    jr jr_00c_41c2                                ; $41be: $18 $02

jr_00c_41c0:
    ld a, $01                                     ; $41c0: $3e $01

jr_00c_41c2:
    ld hl, $d129                                  ; $41c2: $21 $29 $d1
    add l                                         ; $41c5: $85
    ld l, a                                       ; $41c6: $6f
    jr nc, jr_00c_41ca                            ; $41c7: $30 $01

    inc h                                         ; $41c9: $24

jr_00c_41ca:
    ld a, c                                       ; $41ca: $79
    add a                                         ; $41cb: $87
    add a                                         ; $41cc: $87
    add a                                         ; $41cd: $87
    add a                                         ; $41ce: $87
    add a                                         ; $41cf: $87
    add l                                         ; $41d0: $85
    ld l, a                                       ; $41d1: $6f
    jr nc, jr_00c_41d5                            ; $41d2: $30 $01

    inc h                                         ; $41d4: $24

jr_00c_41d5:
    ld a, $bf                                     ; $41d5: $3e $bf
    ld [hl], $bf                                  ; $41d7: $36 $bf
    ld a, $03                                     ; $41d9: $3e $03
    add h                                         ; $41db: $84
    ld h, a                                       ; $41dc: $67
    ld [hl], $0a                                  ; $41dd: $36 $0a
    pop af                                        ; $41df: $f1
    ldh [$96], a                                  ; $41e0: $e0 $96
    ldh [rSVBK], a                                ; $41e2: $e0 $70
    pop hl                                        ; $41e4: $e1
    pop de                                        ; $41e5: $d1
    pop bc                                        ; $41e6: $c1
    pop af                                        ; $41e7: $f1
    ret                                           ; $41e8: $c9


Call_00c_41e9:
    push af                                       ; $41e9: $f5
    push bc                                       ; $41ea: $c5
    push de                                       ; $41eb: $d5
    push hl                                       ; $41ec: $e5
    ldh a, [$96]                                  ; $41ed: $f0 $96
    push af                                       ; $41ef: $f5
    ld a, $01                                     ; $41f0: $3e $01
    ldh [$96], a                                  ; $41f2: $e0 $96
    ldh [rSVBK], a                                ; $41f4: $e0 $70
    ld a, b                                       ; $41f6: $78
    cp $64                                        ; $41f7: $fe $64
    jr c, jr_00c_41fd                             ; $41f9: $38 $02

    ld b, $63                                     ; $41fb: $06 $63

jr_00c_41fd:
    ld hl, $d129                                  ; $41fd: $21 $29 $d1
    ld a, b                                       ; $4200: $78
    cp $0a                                        ; $4201: $fe $0a
    jr nc, jr_00c_4206                            ; $4203: $30 $01

    inc hl                                        ; $4205: $23

jr_00c_4206:
    ld a, c                                       ; $4206: $79
    add a                                         ; $4207: $87
    add a                                         ; $4208: $87
    add a                                         ; $4209: $87
    add a                                         ; $420a: $87
    add a                                         ; $420b: $87
    add l                                         ; $420c: $85
    ld l, a                                       ; $420d: $6f
    jr nc, jr_00c_4211                            ; $420e: $30 $01

    inc h                                         ; $4210: $24

jr_00c_4211:
    push hl                                       ; $4211: $e5
    ld c, $00                                     ; $4212: $0e $00
    ld d, $00                                     ; $4214: $16 $00
    ld e, $00                                     ; $4216: $1e $00
    ld a, b                                       ; $4218: $78
    cp $0a                                        ; $4219: $fe $0a
    jr c, jr_00c_4227                             ; $421b: $38 $0a

jr_00c_421d:
    add $f6                                       ; $421d: $c6 $f6
    bit 7, a                                      ; $421f: $cb $7f
    jr nz, jr_00c_4226                            ; $4221: $20 $03

    inc c                                         ; $4223: $0c
    jr jr_00c_421d                                ; $4224: $18 $f7

jr_00c_4226:
    ld d, c                                       ; $4226: $51

jr_00c_4227:
    ld a, c                                       ; $4227: $79
    add a                                         ; $4228: $87
    add a                                         ; $4229: $87
    add a                                         ; $422a: $87
    add c                                         ; $422b: $81
    add c                                         ; $422c: $81
    ld c, a                                       ; $422d: $4f
    ld a, b                                       ; $422e: $78
    sub c                                         ; $422f: $91
    ld e, a                                       ; $4230: $5f
    pop hl                                        ; $4231: $e1
    ld a, d                                       ; $4232: $7a
    or a                                          ; $4233: $b7
    jr z, jr_00c_423a                             ; $4234: $28 $04

    ld a, d                                       ; $4236: $7a
    add $e6                                       ; $4237: $c6 $e6
    ld [hl+], a                                   ; $4239: $22

jr_00c_423a:
    ld a, e                                       ; $423a: $7b
    add $e6                                       ; $423b: $c6 $e6
    ld [hl], a                                    ; $423d: $77
    pop af                                        ; $423e: $f1
    ldh [$96], a                                  ; $423f: $e0 $96
    ldh [rSVBK], a                                ; $4241: $e0 $70
    pop hl                                        ; $4243: $e1
    pop de                                        ; $4244: $d1
    pop bc                                        ; $4245: $c1
    pop af                                        ; $4246: $f1
    ret                                           ; $4247: $c9


Call_00c_4248:
    ldh a, [$96]                                  ; $4248: $f0 $96
    push af                                       ; $424a: $f5
    push af                                       ; $424b: $f5
    push bc                                       ; $424c: $c5
    push de                                       ; $424d: $d5
    push hl                                       ; $424e: $e5
    ld a, $01                                     ; $424f: $3e $01
    ldh [$96], a                                  ; $4251: $e0 $96
    ldh [rSVBK], a                                ; $4253: $e0 $70
    ld hl, $4b18                                  ; $4255: $21 $18 $4b
    ld de, $d300                                  ; $4258: $11 $00 $d3
    call Call_000_0234                            ; $425b: $cd $34 $02
    ld hl, $4b1a                                  ; $425e: $21 $1a $4b
    ld de, $d000                                  ; $4261: $11 $00 $d0
    call Call_000_0234                            ; $4264: $cd $34 $02
    ld hl, $d16e                                  ; $4267: $21 $6e $d1
    ld [hl], $20                                  ; $426a: $36 $20
    ld a, $03                                     ; $426c: $3e $03
    add h                                         ; $426e: $84
    ld h, a                                       ; $426f: $67
    ld [hl], $00                                  ; $4270: $36 $00
    ld hl, $d16f                                  ; $4272: $21 $6f $d1
    ld [hl], $30                                  ; $4275: $36 $30
    ld a, $03                                     ; $4277: $3e $03
    add h                                         ; $4279: $84
    ld h, a                                       ; $427a: $67
    ld [hl], $00                                  ; $427b: $36 $00
    ld hl, $d1ee                                  ; $427d: $21 $ee $d1
    ld [hl], $20                                  ; $4280: $36 $20
    ld a, $03                                     ; $4282: $3e $03
    add h                                         ; $4284: $84
    ld h, a                                       ; $4285: $67
    ld [hl], $00                                  ; $4286: $36 $00
    ld hl, $d1ef                                  ; $4288: $21 $ef $d1
    ld [hl], $30                                  ; $428b: $36 $30
    ld a, $03                                     ; $428d: $3e $03
    add h                                         ; $428f: $84
    ld h, a                                       ; $4290: $67
    ld [hl], $00                                  ; $4291: $36 $00
    ld a, $06                                     ; $4293: $3e $06
    ldh [$96], a                                  ; $4295: $e0 $96
    ldh [rSVBK], a                                ; $4297: $e0 $70
    ld a, [$d223]                                 ; $4299: $fa $23 $d2
    ld de, $ad60                                  ; $429c: $11 $60 $ad
    call Call_00c_49c1                            ; $429f: $cd $c1 $49
    call Call_000_2e3b                            ; $42a2: $cd $3b $2e
    ld a, $06                                     ; $42a5: $3e $06
    ldh [$96], a                                  ; $42a7: $e0 $96
    ldh [rSVBK], a                                ; $42a9: $e0 $70
    ld a, [$d223]                                 ; $42ab: $fa $23 $d2
    ld b, a                                       ; $42ae: $47
    push bc                                       ; $42af: $c5
    ld c, $00                                     ; $42b0: $0e $00
    rst $18                                       ; $42b2: $df
    inc l                                         ; $42b3: $2c
    dec bc                                        ; $42b4: $0b
    ld a, b                                       ; $42b5: $78
    or a                                          ; $42b6: $b7
    pop bc                                        ; $42b7: $c1
    push bc                                       ; $42b8: $c5
    jr z, jr_00c_42c4                             ; $42b9: $28 $09

    ld c, $06                                     ; $42bb: $0e $06
    call Call_00c_41ab                            ; $42bd: $cd $ab $41
    ld b, a                                       ; $42c0: $47
    call Call_00c_41e9                            ; $42c1: $cd $e9 $41

jr_00c_42c4:
    ld a, $01                                     ; $42c4: $3e $01
    ldh [$96], a                                  ; $42c6: $e0 $96
    ldh [rSVBK], a                                ; $42c8: $e0 $70
    ld d, $06                                     ; $42ca: $16 $06
    ld c, $00                                     ; $42cc: $0e $00
    ld b, $00                                     ; $42ce: $06 $00
    xor a                                         ; $42d0: $af

jr_00c_42d1:
    push bc                                       ; $42d1: $c5
    rst $18                                       ; $42d2: $df
    inc l                                         ; $42d3: $2c
    dec bc                                        ; $42d4: $0b
    add b                                         ; $42d5: $80
    pop bc                                        ; $42d6: $c1
    inc b                                         ; $42d7: $04
    dec d                                         ; $42d8: $15
    jr nz, jr_00c_42d1                            ; $42d9: $20 $f6

    push af                                       ; $42db: $f5
    ld h, $00                                     ; $42dc: $26 $00
    ld l, a                                       ; $42de: $6f
    ld a, $02                                     ; $42df: $3e $02
    ld de, $d16e                                  ; $42e1: $11 $6e $d1
    call Call_000_21f0                            ; $42e4: $cd $f0 $21

Jump_00c_42e7:
    ld hl, $d170                                  ; $42e7: $21 $70 $d1
    ld [hl], $06                                  ; $42ea: $36 $06
    pop bc                                        ; $42ec: $c1
    ld a, $24                                     ; $42ed: $3e $24
    sub b                                         ; $42ef: $90
    ld h, $00                                     ; $42f0: $26 $00
    ld l, a                                       ; $42f2: $6f
    ld a, $02                                     ; $42f3: $3e $02
    ld de, $d1ee                                  ; $42f5: $11 $ee $d1
    call Call_000_21f0                            ; $42f8: $cd $f0 $21
    ld hl, $d1f0                                  ; $42fb: $21 $f0 $d1
    ld [hl], $06                                  ; $42fe: $36 $06
    ld hl, $d46e                                  ; $4300: $21 $6e $d4
    ld [hl], $00                                  ; $4303: $36 $00
    ld hl, $d46f                                  ; $4305: $21 $6f $d4
    ld [hl], $00                                  ; $4308: $36 $00
    ld hl, $d4ee                                  ; $430a: $21 $ee $d4
    ld [hl], $00                                  ; $430d: $36 $00
    ld hl, $d4ef                                  ; $430f: $21 $ef $d4
    ld [hl], $00                                  ; $4312: $36 $00
    ld a, $06                                     ; $4314: $3e $06
    ldh [$96], a                                  ; $4316: $e0 $96
    ldh [rSVBK], a                                ; $4318: $e0 $70
    pop bc                                        ; $431a: $c1
    ld d, $00                                     ; $431b: $16 $00

jr_00c_431d:
    ld c, d                                       ; $431d: $4a
    push bc                                       ; $431e: $c5
    rst $18                                       ; $431f: $df
    inc l                                         ; $4320: $2c
    dec bc                                        ; $4321: $0b
    ld a, c                                       ; $4322: $79
    pop bc                                        ; $4323: $c1
    or a                                          ; $4324: $b7
    jr z, jr_00c_432a                             ; $4325: $28 $03

    call Call_00c_41ab                            ; $4327: $cd $ab $41

jr_00c_432a:
    inc d                                         ; $432a: $14
    ld a, d                                       ; $432b: $7a
    cp $06                                        ; $432c: $fe $06
    jr nz, jr_00c_431d                            ; $432e: $20 $ed

    pop hl                                        ; $4330: $e1
    pop de                                        ; $4331: $d1
    pop bc                                        ; $4332: $c1
    pop af                                        ; $4333: $f1
    pop af                                        ; $4334: $f1
    ldh [$96], a                                  ; $4335: $e0 $96
    ldh [rSVBK], a                                ; $4337: $e0 $70
    ret                                           ; $4339: $c9


Call_00c_433a:
    ldh a, [$96]                                  ; $433a: $f0 $96
    push af                                       ; $433c: $f5
    push af                                       ; $433d: $f5
    push bc                                       ; $433e: $c5
    push de                                       ; $433f: $d5
    push hl                                       ; $4340: $e5
    ld a, $01                                     ; $4341: $3e $01
    ldh [$96], a                                  ; $4343: $e0 $96
    ldh [rSVBK], a                                ; $4345: $e0 $70
    ld hl, $d300                                  ; $4347: $21 $00 $d3
    ld de, $b800                                  ; $434a: $11 $00 $b8
    ld c, $24                                     ; $434d: $0e $24
    call Call_000_0468                            ; $434f: $cd $68 $04
    call Call_000_2e3b                            ; $4352: $cd $3b $2e
    ld hl, $d000                                  ; $4355: $21 $00 $d0
    ld de, $9800                                  ; $4358: $11 $00 $98
    ld c, $24                                     ; $435b: $0e $24
    call Call_000_0468                            ; $435d: $cd $68 $04
    pop hl                                        ; $4360: $e1
    pop de                                        ; $4361: $d1
    pop bc                                        ; $4362: $c1
    pop af                                        ; $4363: $f1
    pop af                                        ; $4364: $f1
    ldh [$96], a                                  ; $4365: $e0 $96
    ldh [rSVBK], a                                ; $4367: $e0 $70
    ret                                           ; $4369: $c9


Call_00c_436a:
    ld a, [$c4b2]                                 ; $436a: $fa $b2 $c4
    rrca                                          ; $436d: $0f
    rrca                                          ; $436e: $0f
    rrca                                          ; $436f: $0f
    and $0f                                       ; $4370: $e6 $0f
    ld h, $00                                     ; $4372: $26 $00
    ld l, a                                       ; $4374: $6f
    add hl, hl                                    ; $4375: $29
    add hl, hl                                    ; $4376: $29
    add hl, hl                                    ; $4377: $29
    add hl, hl                                    ; $4378: $29
    add hl, hl                                    ; $4379: $29
    ld a, $e0                                     ; $437a: $3e $e0
    add l                                         ; $437c: $85
    ld l, a                                       ; $437d: $6f
    ld a, h                                       ; $437e: $7c
    adc $43                                       ; $437f: $ce $43
    ld h, a                                       ; $4381: $67
    ld a, $06                                     ; $4382: $3e $06
    ldh [$96], a                                  ; $4384: $e0 $96
    ldh [rSVBK], a                                ; $4386: $e0 $70
    push hl                                       ; $4388: $e5
    ld hl, $d23e                                  ; $4389: $21 $3e $d2
    ld a, [hl+]                                   ; $438c: $2a
    ld h, [hl]                                    ; $438d: $66
    ld l, a                                       ; $438e: $6f
    ld d, h                                       ; $438f: $54
    ld e, l                                       ; $4390: $5d
    pop hl                                        ; $4391: $e1
    push hl                                       ; $4392: $e5
    ld c, $02                                     ; $4393: $0e $02
    call Call_000_0468                            ; $4395: $cd $68 $04
    pop hl                                        ; $4398: $e1
    ld de, $0200                                  ; $4399: $11 $00 $02
    add hl, de                                    ; $439c: $19
    push hl                                       ; $439d: $e5
    ld hl, $d240                                  ; $439e: $21 $40 $d2
    ld a, [hl+]                                   ; $43a1: $2a
    ld h, [hl]                                    ; $43a2: $66
    ld l, a                                       ; $43a3: $6f
    ld d, h                                       ; $43a4: $54
    ld e, l                                       ; $43a5: $5d
    pop hl                                        ; $43a6: $e1
    ld c, $02                                     ; $43a7: $0e $02
    call Call_000_0468                            ; $43a9: $cd $68 $04
    ret                                           ; $43ac: $c9


    ld a, $06                                     ; $43ad: $3e $06
    ldh [$96], a                                  ; $43af: $e0 $96
    ldh [rSVBK], a                                ; $43b1: $e0 $70
    ld hl, $8fc0                                  ; $43b3: $21 $c0 $8f
    ld a, l                                       ; $43b6: $7d
    ld [$d23e], a                                 ; $43b7: $ea $3e $d2
    ld a, h                                       ; $43ba: $7c
    ld [$d23f], a                                 ; $43bb: $ea $3f $d2
    ld hl, $8fe0                                  ; $43be: $21 $e0 $8f
    ld a, l                                       ; $43c1: $7d
    ld [$d240], a                                 ; $43c2: $ea $40 $d2
    ld a, h                                       ; $43c5: $7c
    ld [$d241], a                                 ; $43c6: $ea $41 $d2
    ld a, $01                                     ; $43c9: $3e $01
    ldh [$96], a                                  ; $43cb: $e0 $96
    ldh [rSVBK], a                                ; $43cd: $e0 $70
    call Call_00c_436a                            ; $43cf: $cd $6a $43
    ret                                           ; $43d2: $c9


    nop                                           ; $43d3: $00
    nop                                           ; $43d4: $00
    nop                                           ; $43d5: $00
    nop                                           ; $43d6: $00
    nop                                           ; $43d7: $00
    nop                                           ; $43d8: $00
    nop                                           ; $43d9: $00
    nop                                           ; $43da: $00
    nop                                           ; $43db: $00
    nop                                           ; $43dc: $00
    nop                                           ; $43dd: $00
    nop                                           ; $43de: $00
    nop                                           ; $43df: $00
    nop                                           ; $43e0: $00
    nop                                           ; $43e1: $00
    rlca                                          ; $43e2: $07
    inc bc                                        ; $43e3: $03
    rra                                           ; $43e4: $1f
    inc c                                         ; $43e5: $0c
    inc sp                                        ; $43e6: $33
    inc e                                         ; $43e7: $1c
    ld h, $39                                     ; $43e8: $26 $39
    ld a, h                                       ; $43ea: $7c
    inc hl                                        ; $43eb: $23
    ld a, h                                       ; $43ec: $7c
    ld b, e                                       ; $43ed: $43
    ld e, [hl]                                    ; $43ee: $5e
    ld h, c                                       ; $43ef: $61
    nop                                           ; $43f0: $00
    nop                                           ; $43f1: $00
    ldh [$c0], a                                  ; $43f2: $e0 $c0
    ld hl, sp+$30                                 ; $43f4: $f8 $30
    call z, Call_00c_6438                         ; $43f6: $cc $38 $64
    sbc h                                         ; $43f9: $9c
    ld a, $c4                                     ; $43fa: $3e $c4
    ld a, $c2                                     ; $43fc: $3e $c2
    ld a, d                                       ; $43fe: $7a

jr_00c_43ff:
    add [hl]                                      ; $43ff: $86
    rlca                                          ; $4400: $07
    inc bc                                        ; $4401: $03
    nop                                           ; $4402: $00
    nop                                           ; $4403: $00
    inc bc                                        ; $4404: $03
    ld bc, $060f                                  ; $4405: $01 $0f $06
    add hl, de                                    ; $4408: $19
    ld c, $13                                     ; $4409: $0e $13
    inc e                                         ; $440b: $1c
    ld a, $11                                     ; $440c: $3e $11
    ld a, $21                                     ; $440e: $3e $21
    ld hl, sp-$10                                 ; $4410: $f8 $f0
    nop                                           ; $4412: $00
    nop                                           ; $4413: $00
    ldh a, [$e0]                                  ; $4414: $f0 $e0
    db $fc                                        ; $4416: $fc
    jr jr_00c_43ff                                ; $4417: $18 $e6

    inc e                                         ; $4419: $1c
    ld [hl-], a                                   ; $441a: $32
    adc $1f                                       ; $441b: $ce $1f
    ld [c], a                                     ; $441d: $e2
    rra                                           ; $441e: $1f
    pop hl                                        ; $441f: $e1
    ld b, $03                                     ; $4420: $06 $03
    inc bc                                        ; $4422: $03
    ld bc, $0000                                  ; $4423: $01 $00 $00
    ld bc, $0700                                  ; $4426: $01 $00 $07
    inc bc                                        ; $4429: $03
    inc c                                         ; $442a: $0c
    rlca                                          ; $442b: $07
    add hl, bc                                    ; $442c: $09
    ld c, $9f                                     ; $442d: $0e $9f
    ld [$fc06], sp                                ; $442f: $08 $06 $fc
    db $fc                                        ; $4432: $fc
    ld hl, sp+$00                                 ; $4433: $f8 $00
    nop                                           ; $4435: $00
    ld hl, sp-$10                                 ; $4436: $f8 $f0
    cp $0c                                        ; $4438: $fe $0c
    di                                            ; $443a: $f3
    ld c, $99                                     ; $443b: $0e $99
    ld h, a                                       ; $443d: $67
    rrca                                          ; $443e: $0f
    pop af                                        ; $443f: $f1
    ld [bc], a                                    ; $4440: $02
    inc bc                                        ; $4441: $03
    inc bc                                        ; $4442: $03
    ld bc, $0001                                  ; $4443: $01 $01 $00
    nop                                           ; $4446: $00
    nop                                           ; $4447: $00
    nop                                           ; $4448: $00
    nop                                           ; $4449: $00
    inc bc                                        ; $444a: $03
    ld bc, $0386                                  ; $444b: $01 $86 $03
    add h                                         ; $444e: $84
    add a                                         ; $444f: $87

Jump_00c_4450:
    ld bc, $03ff                                  ; $4450: $01 $ff $03
    cp $fe                                        ; $4453: $fe $fe
    db $fc                                        ; $4455: $fc
    nop                                           ; $4456: $00
    nop                                           ; $4457: $00
    db $fc                                        ; $4458: $fc
    ld a, b                                       ; $4459: $78
    rst $38                                       ; $445a: $ff
    add [hl]                                      ; $445b: $86
    ld a, c                                       ; $445c: $79
    add a                                         ; $445d: $87
    call z, $c333                                 ; $445e: $cc $33 $c3
    add c                                         ; $4461: $81
    add c                                         ; $4462: $81
    add c                                         ; $4463: $81
    add c                                         ; $4464: $81
    nop                                           ; $4465: $00
    nop                                           ; $4466: $00
    nop                                           ; $4467: $00
    nop                                           ; $4468: $00
    nop                                           ; $4469: $00
    nop                                           ; $446a: $00
    nop                                           ; $446b: $00
    add c                                         ; $446c: $81
    nop                                           ; $446d: $00
    jp $2481                                      ; $446e: $c3 $81 $24


    rst $38                                       ; $4471: $ff
    nop                                           ; $4472: $00
    rst $38                                       ; $4473: $ff
    add c                                         ; $4474: $81
    rst $38                                       ; $4475: $ff
    rst $38                                       ; $4476: $ff
    ld a, [hl]                                    ; $4477: $7e
    nop                                           ; $4478: $00
    nop                                           ; $4479: $00
    ld a, [hl]                                    ; $447a: $7e
    inc a                                         ; $447b: $3c
    rst $38                                       ; $447c: $ff
    jp $c33c                                      ; $447d: $c3 $3c $c3


    di                                            ; $4480: $f3
    pop hl                                        ; $4481: $e1
    ld h, c                                       ; $4482: $61
    ret nz                                        ; $4483: $c0

    ld b, b                                       ; $4484: $40
    ret nz                                        ; $4485: $c0

    ret nz                                        ; $4486: $c0

    add b                                         ; $4487: $80
    add b                                         ; $4488: $80
    nop                                           ; $4489: $00
    nop                                           ; $448a: $00
    nop                                           ; $448b: $00
    nop                                           ; $448c: $00
    nop                                           ; $448d: $00
    ret nz                                        ; $448e: $c0

    add b                                         ; $448f: $80
    jp nc, $92ff                                  ; $4490: $d2 $ff $92

    rst $38                                       ; $4493: $ff
    add b                                         ; $4494: $80
    rst $38                                       ; $4495: $ff
    ret nz                                        ; $4496: $c0

    ld a, a                                       ; $4497: $7f
    ld a, a                                       ; $4498: $7f
    ccf                                           ; $4499: $3f
    nop                                           ; $449a: $00
    nop                                           ; $449b: $00
    ccf                                           ; $449c: $3f
    ld e, $ff                                     ; $449d: $1e $ff
    ld h, c                                       ; $449f: $61
    ld sp, hl                                     ; $44a0: $f9
    sbc c                                         ; $44a1: $99
    ld a, c                                       ; $44a2: $79
    ldh a, [$30]                                  ; $44a3: $f0 $30
    ldh [rNR41], a                                ; $44a5: $e0 $20
    ldh [$60], a                                  ; $44a7: $e0 $60
    ret nz                                        ; $44a9: $c0

    ret nz                                        ; $44aa: $c0

    add b                                         ; $44ab: $80
    nop                                           ; $44ac: $00
    nop                                           ; $44ad: $00
    add b                                         ; $44ae: $80
    nop                                           ; $44af: $00
    rst $38                                       ; $44b0: $ff
    sbc a                                         ; $44b1: $9f
    jp hl                                         ; $44b2: $e9


    rst $38                                       ; $44b3: $ff
    ret                                           ; $44b4: $c9


    ld a, a                                       ; $44b5: $7f
    ld b, b                                       ; $44b6: $40
    ld a, a                                       ; $44b7: $7f
    ld h, b                                       ; $44b8: $60
    ccf                                           ; $44b9: $3f
    ccf                                           ; $44ba: $3f
    rra                                           ; $44bb: $1f
    nop                                           ; $44bc: $00
    nop                                           ; $44bd: $00
    rra                                           ; $44be: $1f
    rrca                                          ; $44bf: $0f
    db $e4                                        ; $44c0: $e4
    inc e                                         ; $44c1: $1c
    db $fc                                        ; $44c2: $fc
    call z, $f8bc                                 ; $44c3: $cc $bc $f8
    sbc b                                         ; $44c6: $98
    ldh a, [rNR10]                                ; $44c7: $f0 $10
    ldh a, [$30]                                  ; $44c9: $f0 $30
    ldh [$e0], a                                  ; $44cb: $e0 $e0
    ret nz                                        ; $44cd: $c0

    nop                                           ; $44ce: $00
    nop                                           ; $44cf: $00
    sbc a                                         ; $44d0: $9f
    ldh [rIE], a                                  ; $44d1: $e0 $ff
    rst $08                                       ; $44d3: $cf
    db $f4                                        ; $44d4: $f4
    ld a, a                                       ; $44d5: $7f
    ld h, h                                       ; $44d6: $64
    ccf                                           ; $44d7: $3f
    jr nz, jr_00c_4519                            ; $44d8: $20 $3f

    jr nc, jr_00c_44fb                            ; $44da: $30 $1f

    rra                                           ; $44dc: $1f
    rrca                                          ; $44dd: $0f
    nop                                           ; $44de: $00
    nop                                           ; $44df: $00
    ld a, [c]                                     ; $44e0: $f2
    ld c, $f2                                     ; $44e1: $0e $f2
    ld c, $fe                                     ; $44e3: $0e $fe
    and $5e                                       ; $44e5: $e6 $5e
    db $fc                                        ; $44e7: $fc
    ld c, h                                       ; $44e8: $4c
    ld hl, sp+$08                                 ; $44e9: $f8 $08
    ld hl, sp+$18                                 ; $44eb: $f8 $18
    ldh a, [$f0]                                  ; $44ed: $f0 $f0
    ldh [rVBK], a                                 ; $44ef: $e0 $4f
    ld [hl], b                                    ; $44f1: $70
    ld c, a                                       ; $44f2: $4f
    ld [hl], b                                    ; $44f3: $70
    ld a, a                                       ; $44f4: $7f
    ld h, a                                       ; $44f5: $67
    ld a, d                                       ; $44f6: $7a
    ccf                                           ; $44f7: $3f
    ld [hl-], a                                   ; $44f8: $32
    rra                                           ; $44f9: $1f
    db $10                                        ; $44fa: $10

jr_00c_44fb:
    rra                                           ; $44fb: $1f
    jr jr_00c_450d                                ; $44fc: $18 $0f

    rrca                                          ; $44fe: $0f
    rlca                                          ; $44ff: $07
    dec a                                         ; $4500: $3d
    jp Jump_000_07f9                              ; $4501: $c3 $f9 $07


    ld sp, hl                                     ; $4504: $f9
    rlca                                          ; $4505: $07
    rst $38                                       ; $4506: $ff
    di                                            ; $4507: $f3
    cpl                                           ; $4508: $2f
    cp $26                                        ; $4509: $fe $26
    db $fc                                        ; $450b: $fc
    inc b                                         ; $450c: $04

jr_00c_450d:
    db $fc                                        ; $450d: $fc
    inc c                                         ; $450e: $0c
    ld hl, sp+$2f                                 ; $450f: $f8 $2f
    jr nc, jr_00c_453a                            ; $4511: $30 $27

    jr c, jr_00c_453c                             ; $4513: $38 $27

    jr c, @+$41                                   ; $4515: $38 $3f

    inc sp                                        ; $4517: $33
    dec a                                         ; $4518: $3d

jr_00c_4519:
    rra                                           ; $4519: $1f
    add hl, de                                    ; $451a: $19
    rrca                                          ; $451b: $0f
    ld [$0c0f], sp                                ; $451c: $08 $0f $0c
    rlca                                          ; $451f: $07
    rrca                                          ; $4520: $0f
    ldh a, [$9e]                                  ; $4521: $f0 $9e
    ld h, c                                       ; $4523: $61
    db $fc                                        ; $4524: $fc
    inc bc                                        ; $4525: $03
    db $fc                                        ; $4526: $fc
    inc bc                                        ; $4527: $03
    rst $38                                       ; $4528: $ff
    ld sp, hl                                     ; $4529: $f9
    sub a                                         ; $452a: $97
    rst $38                                       ; $452b: $ff
    sub e                                         ; $452c: $93
    cp $02                                        ; $452d: $fe $02
    cp $9f                                        ; $452f: $fe $9f
    sub b                                         ; $4531: $90
    sub a                                         ; $4532: $97
    sbc b                                         ; $4533: $98
    sub e                                         ; $4534: $93
    sbc h                                         ; $4535: $9c
    sub e                                         ; $4536: $93
    sbc h                                         ; $4537: $9c
    sbc a                                         ; $4538: $9f
    sbc c                                         ; $4539: $99

jr_00c_453a:
    sbc [hl]                                      ; $453a: $9e
    rrca                                          ; $453b: $0f

jr_00c_453c:
    inc c                                         ; $453c: $0c
    rlca                                          ; $453d: $07
    inc b                                         ; $453e: $04
    rlca                                          ; $453f: $07
    add a                                         ; $4540: $87
    ld a, b                                       ; $4541: $78
    add a                                         ; $4542: $87
    ld a, b                                       ; $4543: $78
    rst $08                                       ; $4544: $cf

jr_00c_4545:
    jr nc, jr_00c_4545                            ; $4545: $30 $fe

    ld bc, $01fe                                  ; $4547: $01 $fe $01
    rst $38                                       ; $454a: $ff
    db $fc                                        ; $454b: $fc
    ld c, e                                       ; $454c: $4b
    rst $38                                       ; $454d: $ff
    ld c, c                                       ; $454e: $49
    rst $38                                       ; $454f: $ff
    rst $08                                       ; $4550: $cf
    add h                                         ; $4551: $84
    rst $08                                       ; $4552: $cf
    ld c, b                                       ; $4553: $48
    ld c, e                                       ; $4554: $4b
    call z, $ce49                                 ; $4555: $cc $49 $ce
    ld c, c                                       ; $4558: $49
    adc $cf                                       ; $4559: $ce $cf
    call z, $87cf                                 ; $455b: $cc $cf $87
    add [hl]                                      ; $455e: $86
    inc bc                                        ; $455f: $03
    ld h, [hl]                                    ; $4560: $66
    sbc c                                         ; $4561: $99
    jp $c33c                                      ; $4562: $c3 $3c $c3


    inc a                                         ; $4565: $3c
    rst $20                                       ; $4566: $e7
    jr @+$01                                      ; $4567: $18 $ff

    nop                                           ; $4569: $00
    rst $38                                       ; $456a: $ff
    nop                                           ; $456b: $00
    rst $38                                       ; $456c: $ff
    ld a, [hl]                                    ; $456d: $7e
    and l                                         ; $456e: $a5
    rst $38                                       ; $456f: $ff
    ld b, d                                       ; $4570: $42
    jp Jump_00c_42e7                              ; $4571: $c3 $e7 $42


    rst $20                                       ; $4574: $e7
    inc h                                         ; $4575: $24
    and l                                         ; $4576: $a5
    ld h, [hl]                                    ; $4577: $66
    inc h                                         ; $4578: $24
    rst $20                                       ; $4579: $e7
    inc h                                         ; $457a: $24
    rst $20                                       ; $457b: $e7
    rst $20                                       ; $457c: $e7
    ld h, [hl]                                    ; $457d: $66
    rst $20                                       ; $457e: $e7
    jp $e19e                                      ; $457f: $c3 $9e $e1


    inc sp                                        ; $4582: $33
    call z, Call_000_1ee1                         ; $4583: $cc $e1 $1e
    pop hl                                        ; $4586: $e1
    ld e, $f3                                     ; $4587: $1e $f3
    inc c                                         ; $4589: $0c
    ld a, a                                       ; $458a: $7f
    add b                                         ; $458b: $80
    ld a, a                                       ; $458c: $7f
    add b                                         ; $458d: $80
    rst $38                                       ; $458e: $ff
    ccf                                           ; $458f: $3f
    ld h, c                                       ; $4590: $61
    ret nz                                        ; $4591: $c0

    ld hl, $f3e1                                  ; $4592: $21 $e1 $f3
    ld hl, $12f3                                  ; $4595: $21 $f3 $12
    jp nc, $9233                                  ; $4598: $d2 $33 $92

    ld [hl], e                                    ; $459b: $73
    sub d                                         ; $459c: $92
    ld [hl], e                                    ; $459d: $73
    di                                            ; $459e: $f3
    inc sp                                        ; $459f: $33
    ld a, a                                       ; $45a0: $7f
    jr nc, @-$2f                                  ; $45a1: $30 $cf

    ld [hl], b                                    ; $45a3: $70
    sbc c                                         ; $45a4: $99
    and $f0                                       ; $45a5: $e6 $f0
    adc a                                         ; $45a7: $8f
    ldh a, [rIF]                                  ; $45a8: $f0 $0f
    ld a, c                                       ; $45aa: $79
    add [hl]                                      ; $45ab: $86
    ccf                                           ; $45ac: $3f
    ret nz                                        ; $45ad: $c0

    ccf                                           ; $45ae: $3f
    ret nz                                        ; $45af: $c0

    ldh [$c0], a                                  ; $45b0: $e0 $c0
    jr nc, @-$1e                                  ; $45b2: $30 $e0

    sub b                                         ; $45b4: $90
    ld [hl], b                                    ; $45b5: $70
    ld sp, hl                                     ; $45b6: $f9
    db $10                                        ; $45b7: $10
    ld sp, hl                                     ; $45b8: $f9
    add hl, bc                                    ; $45b9: $09
    jp hl                                         ; $45ba: $e9


    add hl, de                                    ; $45bb: $19
    ret                                           ; $45bc: $c9


    add hl, sp                                    ; $45bd: $39
    ret                                           ; $45be: $c9


    add hl, sp                                    ; $45bf: $39
    rrca                                          ; $45c0: $0f
    rlca                                          ; $45c1: $07
    ccf                                           ; $45c2: $3f
    jr jr_00c_462c                                ; $45c3: $18 $67

    jr c, @+$4e                                   ; $45c5: $38 $4c

    ld [hl], e                                    ; $45c7: $73
    ld hl, sp+$47                                 ; $45c8: $f8 $47
    ld hl, sp-$79                                 ; $45ca: $f8 $87
    cp h                                          ; $45cc: $bc
    jp $e09f                                      ; $45cd: $c3 $9f $e0


    ret nz                                        ; $45d0: $c0

    add b                                         ; $45d1: $80
    ldh a, [$60]                                  ; $45d2: $f0 $60
    sbc b                                         ; $45d4: $98
    ld [hl], b                                    ; $45d5: $70
    ret z                                         ; $45d6: $c8

    jr c, jr_00c_4655                             ; $45d7: $38 $7c

    adc b                                         ; $45d9: $88
    ld a, h                                       ; $45da: $7c
    add h                                         ; $45db: $84
    db $f4                                        ; $45dc: $f4
    inc c                                         ; $45dd: $0c
    db $e4                                        ; $45de: $e4
    inc e                                         ; $45df: $1c
    ld c, a                                       ; $45e0: $4f
    ld [hl], b                                    ; $45e1: $70
    ld c, a                                       ; $45e2: $4f
    ld [hl], b                                    ; $45e3: $70
    ld a, a                                       ; $45e4: $7f
    ld h, a                                       ; $45e5: $67
    ld a, d                                       ; $45e6: $7a
    ccf                                           ; $45e7: $3f
    ld [hl-], a                                   ; $45e8: $32
    rra                                           ; $45e9: $1f
    db $10                                        ; $45ea: $10
    rra                                           ; $45eb: $1f
    jr jr_00c_45fd                                ; $45ec: $18 $0f

    rrca                                          ; $45ee: $0f
    rlca                                          ; $45ef: $07
    ld a, [c]                                     ; $45f0: $f2
    ld c, $f2                                     ; $45f1: $0e $f2
    ld c, $fe                                     ; $45f3: $0e $fe
    and $5e                                       ; $45f5: $e6 $5e
    db $fc                                        ; $45f7: $fc
    ld c, h                                       ; $45f8: $4c
    ld hl, sp+$08                                 ; $45f9: $f8 $08
    ld hl, sp+$18                                 ; $45fb: $f8 $18

jr_00c_45fd:
    ldh a, [$f0]                                  ; $45fd: $f0 $f0
    ldh [$2f], a                                  ; $45ff: $e0 $2f
    jr nc, jr_00c_462a                            ; $4601: $30 $27

    jr c, jr_00c_462c                             ; $4603: $38 $27

    jr c, @+$41                                   ; $4605: $38 $3f

    inc sp                                        ; $4607: $33
    dec a                                         ; $4608: $3d
    rra                                           ; $4609: $1f
    add hl, de                                    ; $460a: $19
    rrca                                          ; $460b: $0f
    ld [$0c0f], sp                                ; $460c: $08 $0f $0c
    rlca                                          ; $460f: $07
    dec a                                         ; $4610: $3d
    jp Jump_000_07f9                              ; $4611: $c3 $f9 $07


    ld sp, hl                                     ; $4614: $f9
    rlca                                          ; $4615: $07
    rst $38                                       ; $4616: $ff
    di                                            ; $4617: $f3
    cpl                                           ; $4618: $2f
    cp $26                                        ; $4619: $fe $26
    db $fc                                        ; $461b: $fc
    inc b                                         ; $461c: $04
    db $fc                                        ; $461d: $fc
    inc c                                         ; $461e: $0c
    ld hl, sp-$61                                 ; $461f: $f8 $9f
    sub b                                         ; $4621: $90
    sub a                                         ; $4622: $97
    sbc b                                         ; $4623: $98
    sub e                                         ; $4624: $93
    sbc h                                         ; $4625: $9c
    sub e                                         ; $4626: $93
    sbc h                                         ; $4627: $9c
    sbc a                                         ; $4628: $9f
    sbc c                                         ; $4629: $99

jr_00c_462a:
    sbc [hl]                                      ; $462a: $9e
    rrca                                          ; $462b: $0f

jr_00c_462c:
    inc c                                         ; $462c: $0c
    rlca                                          ; $462d: $07
    inc b                                         ; $462e: $04
    rlca                                          ; $462f: $07
    rrca                                          ; $4630: $0f
    ldh a, [$9e]                                  ; $4631: $f0 $9e
    ld h, c                                       ; $4633: $61
    db $fc                                        ; $4634: $fc
    inc bc                                        ; $4635: $03
    db $fc                                        ; $4636: $fc
    inc bc                                        ; $4637: $03
    rst $38                                       ; $4638: $ff
    ld sp, hl                                     ; $4639: $f9
    sub a                                         ; $463a: $97
    rst $38                                       ; $463b: $ff
    sub e                                         ; $463c: $93
    cp $02                                        ; $463d: $fe $02
    cp $cf                                        ; $463f: $fe $cf
    add h                                         ; $4641: $84
    rst $08                                       ; $4642: $cf
    ld c, b                                       ; $4643: $48
    ld c, e                                       ; $4644: $4b
    call z, $ce49                                 ; $4645: $cc $49 $ce
    ld c, c                                       ; $4648: $49
    adc $cf                                       ; $4649: $ce $cf
    call z, $87cf                                 ; $464b: $cc $cf $87
    add [hl]                                      ; $464e: $86
    inc bc                                        ; $464f: $03
    add a                                         ; $4650: $87
    ld a, b                                       ; $4651: $78
    add a                                         ; $4652: $87
    ld a, b                                       ; $4653: $78
    rst $08                                       ; $4654: $cf

jr_00c_4655:
    jr nc, jr_00c_4655                            ; $4655: $30 $fe

    ld bc, $01fe                                  ; $4657: $01 $fe $01
    rst $38                                       ; $465a: $ff
    db $fc                                        ; $465b: $fc
    ld c, e                                       ; $465c: $4b
    rst $38                                       ; $465d: $ff
    ld c, c                                       ; $465e: $49
    rst $38                                       ; $465f: $ff
    ld b, d                                       ; $4660: $42
    jp Jump_00c_42e7                              ; $4661: $c3 $e7 $42


    rst $20                                       ; $4664: $e7
    inc h                                         ; $4665: $24
    and l                                         ; $4666: $a5
    ld h, [hl]                                    ; $4667: $66
    inc h                                         ; $4668: $24
    rst $20                                       ; $4669: $e7
    inc h                                         ; $466a: $24
    rst $20                                       ; $466b: $e7
    rst $20                                       ; $466c: $e7
    ld h, [hl]                                    ; $466d: $66
    rst $20                                       ; $466e: $e7
    jp $9966                                      ; $466f: $c3 $66 $99


    jp $c33c                                      ; $4672: $c3 $3c $c3


    inc a                                         ; $4675: $3c
    rst $20                                       ; $4676: $e7
    jr @+$01                                      ; $4677: $18 $ff

    nop                                           ; $4679: $00
    rst $38                                       ; $467a: $ff
    nop                                           ; $467b: $00
    rst $38                                       ; $467c: $ff
    ld a, [hl]                                    ; $467d: $7e
    and l                                         ; $467e: $a5
    rst $38                                       ; $467f: $ff
    ld h, c                                       ; $4680: $61
    ret nz                                        ; $4681: $c0

jr_00c_4682:
    ld hl, $f3e1                                  ; $4682: $21 $e1 $f3
    ld hl, $12f3                                  ; $4685: $21 $f3 $12
    jp nc, $9233                                  ; $4688: $d2 $33 $92

    ld [hl], e                                    ; $468b: $73
    sub d                                         ; $468c: $92
    ld [hl], e                                    ; $468d: $73
    di                                            ; $468e: $f3
    inc sp                                        ; $468f: $33
    sbc [hl]                                      ; $4690: $9e
    pop hl                                        ; $4691: $e1
    inc sp                                        ; $4692: $33
    call z, Call_000_1ee1                         ; $4693: $cc $e1 $1e
    pop hl                                        ; $4696: $e1
    ld e, $f3                                     ; $4697: $1e $f3
    inc c                                         ; $4699: $0c
    ld a, a                                       ; $469a: $7f
    add b                                         ; $469b: $80
    ld a, a                                       ; $469c: $7f
    add b                                         ; $469d: $80
    rst $38                                       ; $469e: $ff
    ccf                                           ; $469f: $3f
    ldh [$c0], a                                  ; $46a0: $e0 $c0
    jr nc, @-$1e                                  ; $46a2: $30 $e0

    sub b                                         ; $46a4: $90
    ld [hl], b                                    ; $46a5: $70
    ld sp, hl                                     ; $46a6: $f9
    db $10                                        ; $46a7: $10
    ld sp, hl                                     ; $46a8: $f9
    add hl, bc                                    ; $46a9: $09
    jp hl                                         ; $46aa: $e9


    add hl, de                                    ; $46ab: $19
    ret                                           ; $46ac: $c9


    add hl, sp                                    ; $46ad: $39
    ret                                           ; $46ae: $c9


    add hl, sp                                    ; $46af: $39
    ld a, a                                       ; $46b0: $7f
    jr nc, jr_00c_4682                            ; $46b1: $30 $cf

    ld [hl], b                                    ; $46b3: $70
    sbc c                                         ; $46b4: $99
    and $f0                                       ; $46b5: $e6 $f0
    adc a                                         ; $46b7: $8f
    ldh a, [rIF]                                  ; $46b8: $f0 $0f
    ld a, c                                       ; $46ba: $79
    add [hl]                                      ; $46bb: $86
    ccf                                           ; $46bc: $3f
    ret nz                                        ; $46bd: $c0

    ccf                                           ; $46be: $3f
    ret nz                                        ; $46bf: $c0

    ret nz                                        ; $46c0: $c0

    add b                                         ; $46c1: $80
    ldh a, [$60]                                  ; $46c2: $f0 $60
    sbc b                                         ; $46c4: $98
    ld [hl], b                                    ; $46c5: $70
    ret z                                         ; $46c6: $c8

    jr c, jr_00c_4745                             ; $46c7: $38 $7c

    adc b                                         ; $46c9: $88
    ld a, h                                       ; $46ca: $7c
    add h                                         ; $46cb: $84
    db $f4                                        ; $46cc: $f4
    inc c                                         ; $46cd: $0c
    db $e4                                        ; $46ce: $e4
    inc e                                         ; $46cf: $1c
    rrca                                          ; $46d0: $0f
    rlca                                          ; $46d1: $07
    ccf                                           ; $46d2: $3f
    jr jr_00c_473c                                ; $46d3: $18 $67

    jr c, jr_00c_4723                             ; $46d5: $38 $4c

    ld [hl], e                                    ; $46d7: $73
    ld hl, sp+$47                                 ; $46d8: $f8 $47
    ld hl, sp-$79                                 ; $46da: $f8 $87
    cp h                                          ; $46dc: $bc
    jp $e09f                                      ; $46dd: $c3 $9f $e0


    nop                                           ; $46e0: $00
    nop                                           ; $46e1: $00
    ldh [$c0], a                                  ; $46e2: $e0 $c0
    ld hl, sp+$30                                 ; $46e4: $f8 $30
    call z, Call_00c_6438                         ; $46e6: $cc $38 $64
    sbc h                                         ; $46e9: $9c
    ld a, $c4                                     ; $46ea: $3e $c4
    ld a, $c2                                     ; $46ec: $3e $c2
    ld a, d                                       ; $46ee: $7a

jr_00c_46ef:
    add [hl]                                      ; $46ef: $86
    nop                                           ; $46f0: $00
    nop                                           ; $46f1: $00
    rlca                                          ; $46f2: $07
    inc bc                                        ; $46f3: $03
    rra                                           ; $46f4: $1f
    inc c                                         ; $46f5: $0c
    inc sp                                        ; $46f6: $33
    inc e                                         ; $46f7: $1c
    ld h, $39                                     ; $46f8: $26 $39
    ld a, h                                       ; $46fa: $7c
    inc hl                                        ; $46fb: $23
    ld a, h                                       ; $46fc: $7c
    ld b, e                                       ; $46fd: $43
    ld e, [hl]                                    ; $46fe: $5e
    ld h, c                                       ; $46ff: $61
    ld hl, sp-$10                                 ; $4700: $f8 $f0
    nop                                           ; $4702: $00
    nop                                           ; $4703: $00
    ldh a, [$e0]                                  ; $4704: $f0 $e0
    db $fc                                        ; $4706: $fc
    jr jr_00c_46ef                                ; $4707: $18 $e6

    inc e                                         ; $4709: $1c
    ld [hl-], a                                   ; $470a: $32
    adc $1f                                       ; $470b: $ce $1f
    ld [c], a                                     ; $470d: $e2
    rra                                           ; $470e: $1f
    pop hl                                        ; $470f: $e1
    rlca                                          ; $4710: $07
    inc bc                                        ; $4711: $03
    nop                                           ; $4712: $00
    nop                                           ; $4713: $00
    inc bc                                        ; $4714: $03
    ld bc, $060f                                  ; $4715: $01 $0f $06
    add hl, de                                    ; $4718: $19
    ld c, $13                                     ; $4719: $0e $13
    inc e                                         ; $471b: $1c
    ld a, $11                                     ; $471c: $3e $11
    ld a, $21                                     ; $471e: $3e $21
    ld b, $fc                                     ; $4720: $06 $fc
    db $fc                                        ; $4722: $fc

jr_00c_4723:
    ld hl, sp+$00                                 ; $4723: $f8 $00
    nop                                           ; $4725: $00
    ld hl, sp-$10                                 ; $4726: $f8 $f0
    cp $0c                                        ; $4728: $fe $0c
    di                                            ; $472a: $f3
    ld c, $99                                     ; $472b: $0e $99
    ld h, a                                       ; $472d: $67
    rrca                                          ; $472e: $0f
    pop af                                        ; $472f: $f1
    ld b, $03                                     ; $4730: $06 $03
    inc bc                                        ; $4732: $03
    ld bc, $0000                                  ; $4733: $01 $00 $00
    ld bc, $0700                                  ; $4736: $01 $00 $07
    inc bc                                        ; $4739: $03
    inc c                                         ; $473a: $0c
    rlca                                          ; $473b: $07

jr_00c_473c:
    add hl, bc                                    ; $473c: $09
    ld c, $9f                                     ; $473d: $0e $9f
    ld [$ff01], sp                                ; $473f: $08 $01 $ff
    inc bc                                        ; $4742: $03
    cp $fe                                        ; $4743: $fe $fe

jr_00c_4745:
    db $fc                                        ; $4745: $fc
    nop                                           ; $4746: $00
    nop                                           ; $4747: $00
    db $fc                                        ; $4748: $fc
    ld a, b                                       ; $4749: $78
    rst $38                                       ; $474a: $ff
    add [hl]                                      ; $474b: $86
    ld a, c                                       ; $474c: $79
    add a                                         ; $474d: $87
    call z, Call_000_0233                         ; $474e: $cc $33 $02
    inc bc                                        ; $4751: $03
    inc bc                                        ; $4752: $03
    ld bc, $0001                                  ; $4753: $01 $01 $00
    nop                                           ; $4756: $00
    nop                                           ; $4757: $00
    nop                                           ; $4758: $00
    nop                                           ; $4759: $00
    inc bc                                        ; $475a: $03
    ld bc, $0386                                  ; $475b: $01 $86 $03
    add h                                         ; $475e: $84
    add a                                         ; $475f: $87
    inc h                                         ; $4760: $24
    rst $38                                       ; $4761: $ff
    nop                                           ; $4762: $00
    rst $38                                       ; $4763: $ff
    add c                                         ; $4764: $81
    rst $38                                       ; $4765: $ff
    rst $38                                       ; $4766: $ff
    ld a, [hl]                                    ; $4767: $7e
    nop                                           ; $4768: $00
    nop                                           ; $4769: $00
    ld a, [hl]                                    ; $476a: $7e
    inc a                                         ; $476b: $3c
    rst $38                                       ; $476c: $ff
    jp $c33c                                      ; $476d: $c3 $3c $c3


    jp $8181                                      ; $4770: $c3 $81 $81


    add c                                         ; $4773: $81
    add c                                         ; $4774: $81
    nop                                           ; $4775: $00
    nop                                           ; $4776: $00
    nop                                           ; $4777: $00
    nop                                           ; $4778: $00
    nop                                           ; $4779: $00
    nop                                           ; $477a: $00
    nop                                           ; $477b: $00
    add c                                         ; $477c: $81
    nop                                           ; $477d: $00
    jp $d281                                      ; $477e: $c3 $81 $d2


    rst $38                                       ; $4781: $ff
    sub d                                         ; $4782: $92
    rst $38                                       ; $4783: $ff
    add b                                         ; $4784: $80
    rst $38                                       ; $4785: $ff
    ret nz                                        ; $4786: $c0

    ld a, a                                       ; $4787: $7f
    ld a, a                                       ; $4788: $7f
    ccf                                           ; $4789: $3f
    nop                                           ; $478a: $00
    nop                                           ; $478b: $00
    ccf                                           ; $478c: $3f
    ld e, $ff                                     ; $478d: $1e $ff
    ld h, c                                       ; $478f: $61
    di                                            ; $4790: $f3
    pop hl                                        ; $4791: $e1
    ld h, c                                       ; $4792: $61
    ret nz                                        ; $4793: $c0

    ld b, b                                       ; $4794: $40
    ret nz                                        ; $4795: $c0

    ret nz                                        ; $4796: $c0

    add b                                         ; $4797: $80
    add b                                         ; $4798: $80
    nop                                           ; $4799: $00
    nop                                           ; $479a: $00
    nop                                           ; $479b: $00
    nop                                           ; $479c: $00
    nop                                           ; $479d: $00
    ret nz                                        ; $479e: $c0

    add b                                         ; $479f: $80
    rst $38                                       ; $47a0: $ff
    sbc a                                         ; $47a1: $9f
    jp hl                                         ; $47a2: $e9


    rst $38                                       ; $47a3: $ff
    ret                                           ; $47a4: $c9


    ld a, a                                       ; $47a5: $7f
    ld b, b                                       ; $47a6: $40
    ld a, a                                       ; $47a7: $7f
    ld h, b                                       ; $47a8: $60
    ccf                                           ; $47a9: $3f
    ccf                                           ; $47aa: $3f
    rra                                           ; $47ab: $1f
    nop                                           ; $47ac: $00
    nop                                           ; $47ad: $00
    rra                                           ; $47ae: $1f
    rrca                                          ; $47af: $0f
    ld sp, hl                                     ; $47b0: $f9
    sbc c                                         ; $47b1: $99
    ld a, c                                       ; $47b2: $79
    ldh a, [$30]                                  ; $47b3: $f0 $30
    ldh [rNR41], a                                ; $47b5: $e0 $20
    ldh [$60], a                                  ; $47b7: $e0 $60
    ret nz                                        ; $47b9: $c0

    ret nz                                        ; $47ba: $c0

    add b                                         ; $47bb: $80
    nop                                           ; $47bc: $00
    nop                                           ; $47bd: $00
    add b                                         ; $47be: $80
    nop                                           ; $47bf: $00
    sbc a                                         ; $47c0: $9f
    ldh [rIE], a                                  ; $47c1: $e0 $ff
    rst $08                                       ; $47c3: $cf
    db $f4                                        ; $47c4: $f4
    ld a, a                                       ; $47c5: $7f
    ld h, h                                       ; $47c6: $64
    ccf                                           ; $47c7: $3f
    jr nz, @+$41                                  ; $47c8: $20 $3f

    jr nc, jr_00c_47eb                            ; $47ca: $30 $1f

    rra                                           ; $47cc: $1f
    rrca                                          ; $47cd: $0f
    nop                                           ; $47ce: $00
    nop                                           ; $47cf: $00
    db $e4                                        ; $47d0: $e4
    inc e                                         ; $47d1: $1c
    db $fc                                        ; $47d2: $fc
    call z, $f8bc                                 ; $47d3: $cc $bc $f8
    sbc b                                         ; $47d6: $98
    ldh a, [rNR10]                                ; $47d7: $f0 $10
    ldh a, [$30]                                  ; $47d9: $f0 $30
    ldh [$e0], a                                  ; $47db: $e0 $e0
    ret nz                                        ; $47dd: $c0

    nop                                           ; $47de: $00
    nop                                           ; $47df: $00

Call_00c_47e0:
    push af                                       ; $47e0: $f5
    push bc                                       ; $47e1: $c5
    push de                                       ; $47e2: $d5
    push hl                                       ; $47e3: $e5
    ldh a, [$96]                                  ; $47e4: $f0 $96
    push af                                       ; $47e6: $f5
    ld a, $05                                     ; $47e7: $3e $05
    ldh [$96], a                                  ; $47e9: $e0 $96

jr_00c_47eb:
    ldh [rSVBK], a                                ; $47eb: $e0 $70
    ld a, [$c4b2]                                 ; $47ed: $fa $b2 $c4
    rrca                                          ; $47f0: $0f
    rrca                                          ; $47f1: $0f
    rrca                                          ; $47f2: $0f
    and $03                                       ; $47f3: $e6 $03
    ld h, $00                                     ; $47f5: $26 $00
    ld l, a                                       ; $47f7: $6f
    add hl, hl                                    ; $47f8: $29
    add hl, hl                                    ; $47f9: $29
    add hl, hl                                    ; $47fa: $29
    add hl, hl                                    ; $47fb: $29
    add hl, hl                                    ; $47fc: $29
    ld de, $d000                                  ; $47fd: $11 $00 $d0
    add hl, de                                    ; $4800: $19
    push hl                                       ; $4801: $e5
    ld de, $ad40                                  ; $4802: $11 $40 $ad
    ld c, $02                                     ; $4805: $0e $02
    call Call_000_0468                            ; $4807: $cd $68 $04
    pop hl                                        ; $480a: $e1
    ld de, $0080                                  ; $480b: $11 $80 $00
    add hl, de                                    ; $480e: $19
    ld de, $ae40                                  ; $480f: $11 $40 $ae
    ld c, $02                                     ; $4812: $0e $02
    call Call_000_0468                            ; $4814: $cd $68 $04
    pop af                                        ; $4817: $f1
    ldh [$96], a                                  ; $4818: $e0 $96
    ldh [rSVBK], a                                ; $481a: $e0 $70
    pop hl                                        ; $481c: $e1
    pop de                                        ; $481d: $d1
    pop bc                                        ; $481e: $c1
    pop af                                        ; $481f: $f1
    ret                                           ; $4820: $c9


    ldh a, [$96]                                  ; $4821: $f0 $96
    push af                                       ; $4823: $f5
    ld a, $06                                     ; $4824: $3e $06
    ldh [$96], a                                  ; $4826: $e0 $96
    ldh [rSVBK], a                                ; $4828: $e0 $70
    ld hl, $b1c0                                  ; $482a: $21 $c0 $b1
    ld a, l                                       ; $482d: $7d
    ld [$d23e], a                                 ; $482e: $ea $3e $d2
    ld a, h                                       ; $4831: $7c
    ld [$d23f], a                                 ; $4832: $ea $3f $d2
    ld hl, $b1e0                                  ; $4835: $21 $e0 $b1
    ld a, l                                       ; $4838: $7d
    ld [$d240], a                                 ; $4839: $ea $40 $d2
    ld a, h                                       ; $483c: $7c
    ld [$d241], a                                 ; $483d: $ea $41 $d2
    ld a, $01                                     ; $4840: $3e $01
    ldh [$96], a                                  ; $4842: $e0 $96
    ldh [rSVBK], a                                ; $4844: $e0 $70
    call Call_00c_436a                            ; $4846: $cd $6a $43
    call Call_00c_47e0                            ; $4849: $cd $e0 $47
    pop af                                        ; $484c: $f1
    ldh [$96], a                                  ; $484d: $e0 $96
    ldh [rSVBK], a                                ; $484f: $e0 $70
    ret                                           ; $4851: $c9


    push af                                       ; $4852: $f5
    push bc                                       ; $4853: $c5
    push de                                       ; $4854: $d5
    push hl                                       ; $4855: $e5
    ldh a, [$96]                                  ; $4856: $f0 $96
    push af                                       ; $4858: $f5
    ld a, [$c4b2]                                 ; $4859: $fa $b2 $c4
    rrca                                          ; $485c: $0f
    rrca                                          ; $485d: $0f
    and $07                                       ; $485e: $e6 $07
    ld hl, $4950                                  ; $4860: $21 $50 $49
    add l                                         ; $4863: $85
    ld l, a                                       ; $4864: $6f
    jr nc, jr_00c_4868                            ; $4865: $30 $01

    inc h                                         ; $4867: $24

jr_00c_4868:
    ld a, [hl]                                    ; $4868: $7e
    push af                                       ; $4869: $f5
    ld hl, $4947                                  ; $486a: $21 $47 $49
    ld de, $0a1c                                  ; $486d: $11 $1c $0a
    pop bc                                        ; $4870: $c1
    ld a, d                                       ; $4871: $7a
    sub b                                         ; $4872: $90
    ld d, a                                       ; $4873: $57
    push bc                                       ; $4874: $c5
    ld bc, $00e0                                  ; $4875: $01 $e0 $00
    call Call_000_26ea                            ; $4878: $cd $ea $26
    ld hl, $4947                                  ; $487b: $21 $47 $49
    ld de, $961c                                  ; $487e: $11 $1c $96
    pop af                                        ; $4881: $f1
    add d                                         ; $4882: $82
    ld d, a                                       ; $4883: $57
    ld bc, $20e0                                  ; $4884: $01 $e0 $20
    call Call_000_26ea                            ; $4887: $cd $ea $26
    pop af                                        ; $488a: $f1
    ldh [$96], a                                  ; $488b: $e0 $96
    ldh [rSVBK], a                                ; $488d: $e0 $70
    pop hl                                        ; $488f: $e1
    pop de                                        ; $4890: $d1
    pop bc                                        ; $4891: $c1
    pop af                                        ; $4892: $f1
    ret                                           ; $4893: $c9


    push af                                       ; $4894: $f5
    push bc                                       ; $4895: $c5
    push de                                       ; $4896: $d5
    push hl                                       ; $4897: $e5
    ldh a, [$96]                                  ; $4898: $f0 $96
    push af                                       ; $489a: $f5
    ld a, [$c4b2]                                 ; $489b: $fa $b2 $c4
    rrca                                          ; $489e: $0f
    rrca                                          ; $489f: $0f
    and $07                                       ; $48a0: $e6 $07
    ld hl, $4950                                  ; $48a2: $21 $50 $49
    add l                                         ; $48a5: $85
    ld l, a                                       ; $48a6: $6f
    jr nc, jr_00c_48aa                            ; $48a7: $30 $01

    inc h                                         ; $48a9: $24

jr_00c_48aa:
    ld a, [hl]                                    ; $48aa: $7e
    push af                                       ; $48ab: $f5
    ld hl, $4947                                  ; $48ac: $21 $47 $49
    ld de, $0a14                                  ; $48af: $11 $14 $0a
    pop bc                                        ; $48b2: $c1
    ld a, d                                       ; $48b3: $7a
    sub b                                         ; $48b4: $90
    ld d, a                                       ; $48b5: $57
    push bc                                       ; $48b6: $c5
    ld bc, $00e0                                  ; $48b7: $01 $e0 $00
    call Call_000_26a4                            ; $48ba: $cd $a4 $26
    ld hl, $4947                                  ; $48bd: $21 $47 $49
    ld de, $9614                                  ; $48c0: $11 $14 $96
    pop af                                        ; $48c3: $f1
    add d                                         ; $48c4: $82
    ld d, a                                       ; $48c5: $57
    ld bc, $20e0                                  ; $48c6: $01 $e0 $20
    call Call_000_26a4                            ; $48c9: $cd $a4 $26
    pop af                                        ; $48cc: $f1
    ldh [$96], a                                  ; $48cd: $e0 $96
    ldh [rSVBK], a                                ; $48cf: $e0 $70
    pop hl                                        ; $48d1: $e1
    pop de                                        ; $48d2: $d1
    pop bc                                        ; $48d3: $c1
    pop af                                        ; $48d4: $f1
    ret                                           ; $48d5: $c9


    push af                                       ; $48d6: $f5
    push bc                                       ; $48d7: $c5
    push de                                       ; $48d8: $d5
    push hl                                       ; $48d9: $e5
    ldh a, [$96]                                  ; $48da: $f0 $96
    push af                                       ; $48dc: $f5
    ld a, [$c4b2]                                 ; $48dd: $fa $b2 $c4
    rrca                                          ; $48e0: $0f
    rrca                                          ; $48e1: $0f
    and $07                                       ; $48e2: $e6 $07
    ld hl, $4950                                  ; $48e4: $21 $50 $49
    add l                                         ; $48e7: $85
    ld l, a                                       ; $48e8: $6f
    jr nc, jr_00c_48ec                            ; $48e9: $30 $01

    inc h                                         ; $48eb: $24

jr_00c_48ec:
    ld a, [hl]                                    ; $48ec: $7e
    add a                                         ; $48ed: $87
    add a                                         ; $48ee: $87
    add a                                         ; $48ef: $87
    add a                                         ; $48f0: $87
    add a                                         ; $48f1: $87
    push af                                       ; $48f2: $f5
    ld a, [$c320]                                 ; $48f3: $fa $20 $c3
    ld h, a                                       ; $48f6: $67
    ld a, [$c321]                                 ; $48f7: $fa $21 $c3
    ld l, a                                       ; $48fa: $6f
    add hl, hl                                    ; $48fb: $29
    add hl, hl                                    ; $48fc: $29
    add hl, hl                                    ; $48fd: $29
    add hl, hl                                    ; $48fe: $29
    add hl, hl                                    ; $48ff: $29
    add hl, hl                                    ; $4900: $29
    add hl, hl                                    ; $4901: $29
    add hl, hl                                    ; $4902: $29
    ld de, $0140                                  ; $4903: $11 $40 $01
    add hl, de                                    ; $4906: $19
    ld de, $0280                                  ; $4907: $11 $80 $02
    pop bc                                        ; $490a: $c1
    push bc                                       ; $490b: $c5
    ld a, l                                       ; $490c: $7d
    sub b                                         ; $490d: $90
    ld l, a                                       ; $490e: $6f
    ld a, h                                       ; $490f: $7c
    sbc $00                                       ; $4910: $de $00
    ld h, a                                       ; $4912: $67
    ld bc, $00e0                                  ; $4913: $01 $e0 $00
    call Call_000_27b4                            ; $4916: $cd $b4 $27
    ld a, [$c320]                                 ; $4919: $fa $20 $c3
    ld h, a                                       ; $491c: $67
    ld a, [$c321]                                 ; $491d: $fa $21 $c3
    ld l, a                                       ; $4920: $6f
    add hl, hl                                    ; $4921: $29
    add hl, hl                                    ; $4922: $29
    add hl, hl                                    ; $4923: $29
    add hl, hl                                    ; $4924: $29
    add hl, hl                                    ; $4925: $29
    add hl, hl                                    ; $4926: $29
    add hl, hl                                    ; $4927: $29
    add hl, hl                                    ; $4928: $29
    ld de, $12c0                                  ; $4929: $11 $c0 $12
    add hl, de                                    ; $492c: $19
    ld de, $0280                                  ; $492d: $11 $80 $02
    pop af                                        ; $4930: $f1
    add l                                         ; $4931: $85
    ld l, a                                       ; $4932: $6f
    ld a, h                                       ; $4933: $7c
    adc $00                                       ; $4934: $ce $00
    ld h, a                                       ; $4936: $67
    ld bc, $20e0                                  ; $4937: $01 $e0 $20
    call Call_000_27b4                            ; $493a: $cd $b4 $27
    pop af                                        ; $493d: $f1
    ldh [$96], a                                  ; $493e: $e0 $96
    ldh [rSVBK], a                                ; $4940: $e0 $70
    pop hl                                        ; $4942: $e1
    pop de                                        ; $4943: $d1
    pop bc                                        ; $4944: $c1
    pop af                                        ; $4945: $f1
    ret                                           ; $4946: $c9


    nop                                           ; $4947: $00
    nop                                           ; $4948: $00
    nop                                           ; $4949: $00
    nop                                           ; $494a: $00
    nop                                           ; $494b: $00
    ld [$0002], sp                                ; $494c: $08 $02 $00
    add b                                         ; $494f: $80
    nop                                           ; $4950: $00
    ld bc, $0302                                  ; $4951: $01 $02 $03
    inc b                                         ; $4954: $04
    inc bc                                        ; $4955: $03
    ld [bc], a                                    ; $4956: $02
    ld bc, $c5f5                                  ; $4957: $01 $f5 $c5
    push de                                       ; $495a: $d5
    push hl                                       ; $495b: $e5
    ldh a, [$96]                                  ; $495c: $f0 $96
    push af                                       ; $495e: $f5
    push de                                       ; $495f: $d5
    push hl                                       ; $4960: $e5
    pop de                                        ; $4961: $d1
    call Call_00c_499a                            ; $4962: $cd $9a $49
    pop de                                        ; $4965: $d1
    call Call_00c_4973                            ; $4966: $cd $73 $49
    pop af                                        ; $4969: $f1
    ldh [$96], a                                  ; $496a: $e0 $96
    ldh [rSVBK], a                                ; $496c: $e0 $70
    pop hl                                        ; $496e: $e1
    pop de                                        ; $496f: $d1
    pop bc                                        ; $4970: $c1
    pop af                                        ; $4971: $f1
    ret                                           ; $4972: $c9


Call_00c_4973:
    ldh a, [$96]                                  ; $4973: $f0 $96
    push af                                       ; $4975: $f5
    ld hl, $4b08                                  ; $4976: $21 $08 $4b
    call Call_000_0234                            ; $4979: $cd $34 $02
    ld h, $00                                     ; $497c: $26 $00
    ld l, b                                       ; $497e: $68
    add hl, de                                    ; $497f: $19
    ld d, h                                       ; $4980: $54
    ld e, l                                       ; $4981: $5d
    ld hl, $4b0a                                  ; $4982: $21 $0a $4b
    call Call_000_0234                            ; $4985: $cd $34 $02
    ld h, $00                                     ; $4988: $26 $00
    ld l, b                                       ; $498a: $68
    add hl, de                                    ; $498b: $19
    ld d, h                                       ; $498c: $54
    ld e, l                                       ; $498d: $5d
    ld hl, $4b0c                                  ; $498e: $21 $0c $4b
    call Call_000_0234                            ; $4991: $cd $34 $02
    pop af                                        ; $4994: $f1
    ldh [$96], a                                  ; $4995: $e0 $96
    ldh [rSVBK], a                                ; $4997: $e0 $70
    ret                                           ; $4999: $c9


Call_00c_499a:
    ldh a, [$96]                                  ; $499a: $f0 $96
    push af                                       ; $499c: $f5
    ld hl, $4b02                                  ; $499d: $21 $02 $4b
    call Call_000_0234                            ; $49a0: $cd $34 $02
    ld h, $00                                     ; $49a3: $26 $00
    ld l, b                                       ; $49a5: $68
    add hl, de                                    ; $49a6: $19
    ld d, h                                       ; $49a7: $54
    ld e, l                                       ; $49a8: $5d
    ld hl, $4b04                                  ; $49a9: $21 $04 $4b
    call Call_000_0234                            ; $49ac: $cd $34 $02
    ld h, $00                                     ; $49af: $26 $00
    ld l, b                                       ; $49b1: $68
    add hl, de                                    ; $49b2: $19
    ld d, h                                       ; $49b3: $54
    ld e, l                                       ; $49b4: $5d
    ld hl, $4b06                                  ; $49b5: $21 $06 $4b
    call Call_000_0234                            ; $49b8: $cd $34 $02
    pop af                                        ; $49bb: $f1
    ldh [$96], a                                  ; $49bc: $e0 $96
    ldh [rSVBK], a                                ; $49be: $e0 $70
    ret                                           ; $49c0: $c9


Call_00c_49c1:
    push af                                       ; $49c1: $f5
    push bc                                       ; $49c2: $c5
    push de                                       ; $49c3: $d5
    push hl                                       ; $49c4: $e5
    ld b, a                                       ; $49c5: $47
    ldh a, [$96]                                  ; $49c6: $f0 $96
    push af                                       ; $49c8: $f5
    ld a, b                                       ; $49c9: $78
    push de                                       ; $49ca: $d5
    push af                                       ; $49cb: $f5
    ld a, a                                       ; $49cc: $7f
    ld de, $0d02                                  ; $49cd: $11 $02 $0d
    call Call_000_22a5                            ; $49d0: $cd $a5 $22
    pop af                                        ; $49d3: $f1
    pop de                                        ; $49d4: $d1
    add a                                         ; $49d5: $87
    ld hl, $4a07                                  ; $49d6: $21 $07 $4a
    add l                                         ; $49d9: $85
    ld l, a                                       ; $49da: $6f
    jr nc, jr_00c_49de                            ; $49db: $30 $01

    inc h                                         ; $49dd: $24

jr_00c_49de:
    ld a, [hl+]                                   ; $49de: $2a
    ld h, [hl]                                    ; $49df: $66
    ld l, a                                       ; $49e0: $6f
    call Call_000_2e3b                            ; $49e1: $cd $3b $2e
    ld a, $03                                     ; $49e4: $3e $03
    ldh [$96], a                                  ; $49e6: $e0 $96
    ldh [rSVBK], a                                ; $49e8: $e0 $70
    push de                                       ; $49ea: $d5
    ld de, $d000                                  ; $49eb: $11 $00 $d0
    call Call_000_0234                            ; $49ee: $cd $34 $02
    ld hl, $d000                                  ; $49f1: $21 $00 $d0
    pop de                                        ; $49f4: $d1
    ld c, $0a                                     ; $49f5: $0e $0a
    call Call_000_0468                            ; $49f7: $cd $68 $04
    call Call_000_2e3b                            ; $49fa: $cd $3b $2e
    pop af                                        ; $49fd: $f1
    ldh [$96], a                                  ; $49fe: $e0 $96
    ldh [rSVBK], a                                ; $4a00: $e0 $70
    pop hl                                        ; $4a02: $e1
    pop de                                        ; $4a03: $d1
    pop bc                                        ; $4a04: $c1
    pop af                                        ; $4a05: $f1
    ret                                           ; $4a06: $c9


    inc h                                         ; $4a07: $24
    ld b, b                                       ; $4a08: $40
    ld h, $40                                     ; $4a09: $26 $40
    jr z, jr_00c_4a4d                             ; $4a0b: $28 $40

    ld a, [hl+]                                   ; $4a0d: $2a
    ld b, b                                       ; $4a0e: $40
    inc l                                         ; $4a0f: $2c
    ld b, b                                       ; $4a10: $40
    ld l, $40                                     ; $4a11: $2e $40
    jr nc, @+$42                                  ; $4a13: $30 $40

    push bc                                       ; $4a15: $c5
    ld a, $06                                     ; $4a16: $3e $06
    ldh [$96], a                                  ; $4a18: $e0 $96
    ldh [rSVBK], a                                ; $4a1a: $e0 $70
    xor a                                         ; $4a1c: $af
    ld [$d214], a                                 ; $4a1d: $ea $14 $d2
    ld [$d215], a                                 ; $4a20: $ea $15 $d2
    ld a, $06                                     ; $4a23: $3e $06
    ldh [$96], a                                  ; $4a25: $e0 $96
    ldh [rSVBK], a                                ; $4a27: $e0 $70
    ld a, [$d23b]                                 ; $4a29: $fa $3b $d2
    or a                                          ; $4a2c: $b7
    jr nz, jr_00c_4a4f                            ; $4a2d: $20 $20

    rst $18                                       ; $4a2f: $df
    jr z, jr_00c_4a3d                             ; $4a30: $28 $0b

    call Call_000_2b54                            ; $4a32: $cd $54 $2b
    rst $18                                       ; $4a35: $df
    ld l, $0b                                     ; $4a36: $2e $0b
    ld a, $14                                     ; $4a38: $3e $14
    ld [$d215], a                                 ; $4a3a: $ea $15 $d2

jr_00c_4a3d:
    ld a, [$d226]                                 ; $4a3d: $fa $26 $d2
    ld [$d226], a                                 ; $4a40: $ea $26 $d2
    ld [$d214], a                                 ; $4a43: $ea $14 $d2
    ld b, a                                       ; $4a46: $47
    rst $18                                       ; $4a47: $df
    ld a, [hl+]                                   ; $4a48: $2a
    dec bc                                        ; $4a49: $0b
    ld hl, $d224                                  ; $4a4a: $21 $24 $d2

jr_00c_4a4d:
    jr jr_00c_4a5d                                ; $4a4d: $18 $0e

jr_00c_4a4f:
    rst $18                                       ; $4a4f: $df
    jr nc, jr_00c_4a5d                            ; $4a50: $30 $0b

    ld a, $14                                     ; $4a52: $3e $14
    ld [$d215], a                                 ; $4a54: $ea $15 $d2
    ld a, [$d226]                                 ; $4a57: $fa $26 $d2
    ld [$d214], a                                 ; $4a5a: $ea $14 $d2

jr_00c_4a5d:
    pop bc                                        ; $4a5d: $c1
    push bc                                       ; $4a5e: $c5
    call Call_00c_4aab                            ; $4a5f: $cd $ab $4a
    ld a, $0f                                     ; $4a62: $3e $0f
    ld hl, $4c63                                  ; $4a64: $21 $63 $4c
    call Call_000_23e8                            ; $4a67: $cd $e8 $23
    ld a, [$d226]                                 ; $4a6a: $fa $26 $d2
    or a                                          ; $4a6d: $b7
    jr z, jr_00c_4a78                             ; $4a6e: $28 $08

    ld a, $1d                                     ; $4a70: $3e $1d
    ld hl, $48d6                                  ; $4a72: $21 $d6 $48
    call Call_000_23e8                            ; $4a75: $cd $e8 $23

jr_00c_4a78:
    call Call_000_2e3b                            ; $4a78: $cd $3b $2e
    ld c, $10                                     ; $4a7b: $0e $10
    call Call_000_25af                            ; $4a7d: $cd $af $25
    call Call_000_2625                            ; $4a80: $cd $25 $26
    pop bc                                        ; $4a83: $c1

jr_00c_4a84:
    call Call_000_2e3b                            ; $4a84: $cd $3b $2e
    call Call_00c_4ba8                            ; $4a87: $cd $a8 $4b
    cp $ff                                        ; $4a8a: $fe $ff
    jr nz, jr_00c_4a84                            ; $4a8c: $20 $f6

    push af                                       ; $4a8e: $f5
    ld hl, $4c63                                  ; $4a8f: $21 $63 $4c
    call Call_000_2449                            ; $4a92: $cd $49 $24
    ld a, [$d226]                                 ; $4a95: $fa $26 $d2
    or a                                          ; $4a98: $b7
    jr z, jr_00c_4aa1                             ; $4a99: $28 $06

    ld hl, $48d6                                  ; $4a9b: $21 $d6 $48
    call Call_000_2449                            ; $4a9e: $cd $49 $24

jr_00c_4aa1:
    ld c, $10                                     ; $4aa1: $0e $10
    call Call_000_25a1                            ; $4aa3: $cd $a1 $25
    call Call_000_2625                            ; $4aa6: $cd $25 $26
    pop af                                        ; $4aa9: $f1
    ret                                           ; $4aaa: $c9


Call_00c_4aab:
    ld a, $06                                     ; $4aab: $3e $06
    ldh [$96], a                                  ; $4aad: $e0 $96
    ldh [rSVBK], a                                ; $4aaf: $e0 $70
    ld a, $3f                                     ; $4ab1: $3e $3f
    ld [$c32c], a                                 ; $4ab3: $ea $2c $c3
    xor a                                         ; $4ab6: $af
    ld [$c320], a                                 ; $4ab7: $ea $20 $c3
    ld [$c322], a                                 ; $4aba: $ea $22 $c3
    ld [$c323], a                                 ; $4abd: $ea $23 $c3
    ldh [$b9], a                                  ; $4ac0: $e0 $b9
    ldh [$8a], a                                  ; $4ac2: $e0 $8a
    ld a, [$d215]                                 ; $4ac4: $fa $15 $d2
    or a                                          ; $4ac7: $b7
    jr z, jr_00c_4acc                             ; $4ac8: $28 $02

    ld a, $14                                     ; $4aca: $3e $14

jr_00c_4acc:
    ldh [$8b], a                                  ; $4acc: $e0 $8b
    ld [$c321], a                                 ; $4ace: $ea $21 $c3
    ldh [$b8], a                                  ; $4ad1: $e0 $b8
    call Call_000_0341                            ; $4ad3: $cd $41 $03
    call Call_000_23b6                            ; $4ad6: $cd $b6 $23
    ld a, $01                                     ; $4ad9: $3e $01
    ldh [$96], a                                  ; $4adb: $e0 $96
    ldh [rSVBK], a                                ; $4add: $e0 $70
    ld hl, $4b20                                  ; $4adf: $21 $20 $4b
    ld de, $d000                                  ; $4ae2: $11 $00 $d0
    call Call_000_0234                            ; $4ae5: $cd $34 $02
    ld hl, $d000                                  ; $4ae8: $21 $00 $d0
    ld de, $8e00                                  ; $4aeb: $11 $00 $8e
    ld c, $04                                     ; $4aee: $0e $04
    call Call_000_04db                            ; $4af0: $cd $db $04
    ld hl, $419b                                  ; $4af3: $21 $9b $41
    ld de, $0801                                  ; $4af6: $11 $01 $08
    call Call_000_0595                            ; $4af9: $cd $95 $05
    ld hl, $4b0e                                  ; $4afc: $21 $0e $4b
    ld de, $d000                                  ; $4aff: $11 $00 $d0
    call Call_000_0234                            ; $4b02: $cd $34 $02
    ld hl, $d000                                  ; $4b05: $21 $00 $d0
    ld de, $b000                                  ; $4b08: $11 $00 $b0
    ld c, $80                                     ; $4b0b: $0e $80
    call Call_000_04db                            ; $4b0d: $cd $db $04
    ld hl, $d800                                  ; $4b10: $21 $00 $d8
    ld de, $a800                                  ; $4b13: $11 $00 $a8
    ld c, $80                                     ; $4b16: $0e $80
    call Call_000_04db                            ; $4b18: $cd $db $04
    ld hl, $4b68                                  ; $4b1b: $21 $68 $4b
    ld de, $0008                                  ; $4b1e: $11 $08 $00
    call Call_000_0595                            ; $4b21: $cd $95 $05
    ld a, $02                                     ; $4b24: $3e $02
    ldh [$96], a                                  ; $4b26: $e0 $96
    ldh [rSVBK], a                                ; $4b28: $e0 $70
    ld hl, $4b12                                  ; $4b2a: $21 $12 $4b
    ld de, $d000                                  ; $4b2d: $11 $00 $d0
    call Call_000_0234                            ; $4b30: $cd $34 $02
    ld a, $03                                     ; $4b33: $3e $03
    ldh [$96], a                                  ; $4b35: $e0 $96
    ldh [rSVBK], a                                ; $4b37: $e0 $70
    ld hl, $4b10                                  ; $4b39: $21 $10 $4b
    ld de, $d000                                  ; $4b3c: $11 $00 $d0
    call Call_000_0234                            ; $4b3f: $cd $34 $02
    ld a, $06                                     ; $4b42: $3e $06
    ldh [$96], a                                  ; $4b44: $e0 $96
    ldh [rSVBK], a                                ; $4b46: $e0 $70
    ld a, [$d23b]                                 ; $4b48: $fa $3b $d2
    or a                                          ; $4b4b: $b7
    jr nz, jr_00c_4b53                            ; $4b4c: $20 $05

    call Call_00c_4d08                            ; $4b4e: $cd $08 $4d
    jr z, jr_00c_4b56                             ; $4b51: $28 $03

jr_00c_4b53:
    call $52a2                                    ; $4b53: $cd $a2 $52

jr_00c_4b56:
    ld a, $01                                     ; $4b56: $3e $01
    rst $18                                       ; $4b58: $df
    inc b                                         ; $4b59: $04
    dec bc                                        ; $4b5a: $0b
    rst $18                                       ; $4b5b: $df
    inc a                                         ; $4b5c: $3c
    inc b                                         ; $4b5d: $04
    call Call_000_0371                            ; $4b5e: $cd $71 $03
    ld a, $06                                     ; $4b61: $3e $06
    ldh [$96], a                                  ; $4b63: $e0 $96
    ldh [rSVBK], a                                ; $4b65: $e0 $70
    ret                                           ; $4b67: $c9


    ldh [$7f], a                                  ; $4b68: $e0 $7f
    rst $38                                       ; $4b6a: $ff
    ld l, e                                       ; $4b6b: $6b
    ld e, b                                       ; $4b6c: $58
    ld e, $00                                     ; $4b6d: $1e $00
    nop                                           ; $4b6f: $00
    ld a, a                                       ; $4b70: $7f
    daa                                           ; $4b71: $27
    sbc l                                         ; $4b72: $9d
    ld [hl-], a                                   ; $4b73: $32
    ld a, a                                       ; $4b74: $7f
    ld h, e                                       ; $4b75: $63
    dec de                                        ; $4b76: $1b
    ld a, [hl-]                                   ; $4b77: $3a
    ld [$0825], sp                                ; $4b78: $08 $25 $08
    dec h                                         ; $4b7b: $25
    ld [$0825], sp                                ; $4b7c: $08 $25 $08
    dec h                                         ; $4b7f: $25
    ld c, e                                       ; $4b80: $4b
    ld a, a                                       ; $4b81: $7f
    rst $38                                       ; $4b82: $ff
    ld l, e                                       ; $4b83: $6b
    rst $20                                       ; $4b84: $e7
    rlca                                          ; $4b85: $07
    nop                                           ; $4b86: $00
    nop                                           ; $4b87: $00
    cp a                                          ; $4b88: $bf
    inc hl                                        ; $4b89: $23
    rst $38                                       ; $4b8a: $ff
    ld l, e                                       ; $4b8b: $6b
    ccf                                           ; $4b8c: $3f
    ld d, l                                       ; $4b8d: $55
    nop                                           ; $4b8e: $00
    nop                                           ; $4b8f: $00
    rra                                           ; $4b90: $1f
    inc hl                                        ; $4b91: $23
    rst $38                                       ; $4b92: $ff
    ld l, e                                       ; $4b93: $6b
    call c, Call_000_0001                         ; $4b94: $dc $01 $00
    nop                                           ; $4b97: $00
    call c, $ff32                                 ; $4b98: $dc $32 $ff
    ld l, e                                       ; $4b9b: $6b
    ld d, [hl]                                    ; $4b9c: $56
    ld hl, $0000                                  ; $4b9d: $21 $00 $00
    sub $62                                       ; $4ba0: $d6 $62
    rst $38                                       ; $4ba2: $ff
    ld l, e                                       ; $4ba3: $6b
    adc $49                                       ; $4ba4: $ce $49
    nop                                           ; $4ba6: $00
    nop                                           ; $4ba7: $00

Call_00c_4ba8:
    ld a, $06                                     ; $4ba8: $3e $06
    ldh [$96], a                                  ; $4baa: $e0 $96
    ldh [rSVBK], a                                ; $4bac: $e0 $70
    push bc                                       ; $4bae: $c5
    ld a, $00                                     ; $4baf: $3e $00
    push af                                       ; $4bb1: $f5
    ld a, [$d226]                                 ; $4bb2: $fa $26 $d2
    ld b, a                                       ; $4bb5: $47
    ldh a, [$91]                                  ; $4bb6: $f0 $91
    bit 5, a                                      ; $4bb8: $cb $6f
    jr z, jr_00c_4bd8                             ; $4bba: $28 $1c

    ld a, [$d214]                                 ; $4bbc: $fa $14 $d2
    dec a                                         ; $4bbf: $3d
    bit 7, a                                      ; $4bc0: $cb $7f
    jr z, jr_00c_4bc5                             ; $4bc2: $28 $01

    ld a, b                                       ; $4bc4: $78

jr_00c_4bc5:
    ld b, a                                       ; $4bc5: $47
    ld a, [$d214]                                 ; $4bc6: $fa $14 $d2
    cp b                                          ; $4bc9: $b8
    jr z, jr_00c_4bd5                             ; $4bca: $28 $09

    ld a, b                                       ; $4bcc: $78
    ld [$d214], a                                 ; $4bcd: $ea $14 $d2
    rst $08                                       ; $4bd0: $cf
    ld e, e                                       ; $4bd1: $5b
    call Call_00c_4c89                            ; $4bd2: $cd $89 $4c

jr_00c_4bd5:
    jp Jump_00c_4c5d                              ; $4bd5: $c3 $5d $4c


jr_00c_4bd8:
    bit 4, a                                      ; $4bd8: $cb $67
    jr z, jr_00c_4bf9                             ; $4bda: $28 $1d

    ld a, [$d214]                                 ; $4bdc: $fa $14 $d2
    inc a                                         ; $4bdf: $3c
    inc b                                         ; $4be0: $04
    cp b                                          ; $4be1: $b8
    jr c, jr_00c_4be6                             ; $4be2: $38 $02

    ld a, $00                                     ; $4be4: $3e $00

jr_00c_4be6:
    ld b, a                                       ; $4be6: $47
    ld a, [$d214]                                 ; $4be7: $fa $14 $d2
    cp b                                          ; $4bea: $b8
    jr z, jr_00c_4bf6                             ; $4beb: $28 $09

    ld a, b                                       ; $4bed: $78
    ld [$d214], a                                 ; $4bee: $ea $14 $d2
    rst $08                                       ; $4bf1: $cf
    ld e, e                                       ; $4bf2: $5b
    call Call_00c_4c89                            ; $4bf3: $cd $89 $4c

jr_00c_4bf6:
    jp Jump_00c_4c5d                              ; $4bf6: $c3 $5d $4c


jr_00c_4bf9:
    ldh a, [$90]                                  ; $4bf9: $f0 $90
    bit 6, a                                      ; $4bfb: $cb $77
    jr z, jr_00c_4c18                             ; $4bfd: $28 $19

    ld hl, $c322                                  ; $4bff: $21 $22 $c3
    ld a, [hl+]                                   ; $4c02: $2a
    ld h, [hl]                                    ; $4c03: $66
    ld l, a                                       ; $4c04: $6f
    ld de, $ff80                                  ; $4c05: $11 $80 $ff
    add hl, de                                    ; $4c08: $19
    bit 7, h                                      ; $4c09: $cb $7c
    jp nz, Jump_00c_4c5d                          ; $4c0b: $c2 $5d $4c

    ld a, l                                       ; $4c0e: $7d
    ld [$c322], a                                 ; $4c0f: $ea $22 $c3
    ld a, h                                       ; $4c12: $7c
    ld [$c323], a                                 ; $4c13: $ea $23 $c3
    jr jr_00c_4c5d                                ; $4c16: $18 $45

jr_00c_4c18:
    bit 7, a                                      ; $4c18: $cb $7f
    jr z, jr_00c_4c4b                             ; $4c1a: $28 $2f

    ld hl, $c322                                  ; $4c1c: $21 $22 $c3
    ld a, [hl+]                                   ; $4c1f: $2a
    ld h, [hl]                                    ; $4c20: $66
    ld l, a                                       ; $4c21: $6f
    ld de, $0080                                  ; $4c22: $11 $80 $00
    add hl, de                                    ; $4c25: $19
    ld a, $06                                     ; $4c26: $3e $06
    ldh [$96], a                                  ; $4c28: $e0 $96
    ldh [rSVBK], a                                ; $4c2a: $e0 $70
    ld a, [$d215]                                 ; $4c2c: $fa $15 $d2
    or a                                          ; $4c2f: $b7
    jr nz, jr_00c_4c36                            ; $4c30: $20 $04

    ld b, $2a                                     ; $4c32: $06 $2a
    jr jr_00c_4c38                                ; $4c34: $18 $02

jr_00c_4c36:
    ld b, $35                                     ; $4c36: $06 $35

jr_00c_4c38:
    ld a, [$c32c]                                 ; $4c38: $fa $2c $c3
    sub b                                         ; $4c3b: $90
    ld e, a                                       ; $4c3c: $5f
    ld a, h                                       ; $4c3d: $7c
    cp e                                          ; $4c3e: $bb
    jr nc, jr_00c_4c5d                            ; $4c3f: $30 $1c

    ld a, l                                       ; $4c41: $7d
    ld [$c322], a                                 ; $4c42: $ea $22 $c3
    ld a, h                                       ; $4c45: $7c
    ld [$c323], a                                 ; $4c46: $ea $23 $c3
    jr jr_00c_4c5d                                ; $4c49: $18 $12

jr_00c_4c4b:
    bit 0, a                                      ; $4c4b: $cb $47
    jr z, jr_00c_4c51                             ; $4c4d: $28 $02

    jr jr_00c_4c5d                                ; $4c4f: $18 $0c

jr_00c_4c51:
    bit 1, a                                      ; $4c51: $cb $4f
    jr z, jr_00c_4c5d                             ; $4c53: $28 $08

    pop af                                        ; $4c55: $f1
    rst $08                                       ; $4c56: $cf
    ld e, l                                       ; $4c57: $5d
    ld a, $ff                                     ; $4c58: $3e $ff
    push af                                       ; $4c5a: $f5
    jr jr_00c_4c5d                                ; $4c5b: $18 $00

Jump_00c_4c5d:
jr_00c_4c5d:
    rst $18                                       ; $4c5d: $df
    inc a                                         ; $4c5e: $3c
    inc b                                         ; $4c5f: $04
    pop af                                        ; $4c60: $f1
    pop bc                                        ; $4c61: $c1
    ret                                           ; $4c62: $c9


    ld a, $06                                     ; $4c63: $3e $06
    ldh [$96], a                                  ; $4c65: $e0 $96
    ldh [rSVBK], a                                ; $4c67: $e0 $70
    ld hl, $b620                                  ; $4c69: $21 $20 $b6
    ld a, l                                       ; $4c6c: $7d
    ld [$d23e], a                                 ; $4c6d: $ea $3e $d2
    ld a, h                                       ; $4c70: $7c
    ld [$d23f], a                                 ; $4c71: $ea $3f $d2
    ld hl, $b640                                  ; $4c74: $21 $40 $b6
    ld a, l                                       ; $4c77: $7d
    ld [$d240], a                                 ; $4c78: $ea $40 $d2
    ld a, h                                       ; $4c7b: $7c
    ld [$d241], a                                 ; $4c7c: $ea $41 $d2
    ld a, $01                                     ; $4c7f: $3e $01
    ldh [$96], a                                  ; $4c81: $e0 $96
    ldh [rSVBK], a                                ; $4c83: $e0 $70
    call Call_00c_436a                            ; $4c85: $cd $6a $43
    ret                                           ; $4c88: $c9


Call_00c_4c89:
    push af                                       ; $4c89: $f5
    push bc                                       ; $4c8a: $c5
    push de                                       ; $4c8b: $d5
    push hl                                       ; $4c8c: $e5
    ldh a, [$96]                                  ; $4c8d: $f0 $96
    push af                                       ; $4c8f: $f5
    call Call_000_2e3b                            ; $4c90: $cd $3b $2e
    ld c, $18                                     ; $4c93: $0e $18
    call Call_000_25a1                            ; $4c95: $cd $a1 $25
    call Call_000_2625                            ; $4c98: $cd $25 $26
    call Call_000_0341                            ; $4c9b: $cd $41 $03
    ld a, $06                                     ; $4c9e: $3e $06
    ldh [$96], a                                  ; $4ca0: $e0 $96
    ldh [rSVBK], a                                ; $4ca2: $e0 $70
    ld a, [$d214]                                 ; $4ca4: $fa $14 $d2
    ld b, a                                       ; $4ca7: $47
    ld a, [$d226]                                 ; $4ca8: $fa $26 $d2
    cp b                                          ; $4cab: $b8
    jr z, jr_00c_4cb1                             ; $4cac: $28 $03

    xor a                                         ; $4cae: $af
    jr z, jr_00c_4cb3                             ; $4caf: $28 $02

jr_00c_4cb1:
    ld a, $14                                     ; $4cb1: $3e $14

jr_00c_4cb3:
    ld [$d215], a                                 ; $4cb3: $ea $15 $d2
    xor a                                         ; $4cb6: $af
    ld [$c320], a                                 ; $4cb7: $ea $20 $c3
    ld [$c322], a                                 ; $4cba: $ea $22 $c3
    ld [$c323], a                                 ; $4cbd: $ea $23 $c3
    ldh [$b9], a                                  ; $4cc0: $e0 $b9
    ldh [$8a], a                                  ; $4cc2: $e0 $8a
    ld a, [$d215]                                 ; $4cc4: $fa $15 $d2
    or a                                          ; $4cc7: $b7
    jr z, jr_00c_4ccc                             ; $4cc8: $28 $02

    ld a, $14                                     ; $4cca: $3e $14

jr_00c_4ccc:
    ldh [$8b], a                                  ; $4ccc: $e0 $8b
    ld [$c321], a                                 ; $4cce: $ea $21 $c3
    ldh [$b8], a                                  ; $4cd1: $e0 $b8
    ld a, [$d23b]                                 ; $4cd3: $fa $3b $d2
    or a                                          ; $4cd6: $b7
    jr nz, jr_00c_4cde                            ; $4cd7: $20 $05

    call Call_00c_4d08                            ; $4cd9: $cd $08 $4d
    jr jr_00c_4ce1                                ; $4cdc: $18 $03

jr_00c_4cde:
    call $52a2                                    ; $4cde: $cd $a2 $52

jr_00c_4ce1:
    ld a, $0a                                     ; $4ce1: $3e $0a
    ld [$c323], a                                 ; $4ce3: $ea $23 $c3
    rst $18                                       ; $4ce6: $df
    inc a                                         ; $4ce7: $3c
    inc b                                         ; $4ce8: $04
    xor a                                         ; $4ce9: $af
    ld [$c323], a                                 ; $4cea: $ea $23 $c3
    rst $18                                       ; $4ced: $df
    inc a                                         ; $4cee: $3c
    inc b                                         ; $4cef: $04
    call Call_000_0371                            ; $4cf0: $cd $71 $03
    call Call_000_2e3b                            ; $4cf3: $cd $3b $2e
    ld c, $18                                     ; $4cf6: $0e $18
    call Call_000_25af                            ; $4cf8: $cd $af $25
    call Call_000_2625                            ; $4cfb: $cd $25 $26
    pop af                                        ; $4cfe: $f1
    ldh [$96], a                                  ; $4cff: $e0 $96
    ldh [rSVBK], a                                ; $4d01: $e0 $70
    pop hl                                        ; $4d03: $e1
    pop de                                        ; $4d04: $d1
    pop bc                                        ; $4d05: $c1
    pop af                                        ; $4d06: $f1
    ret                                           ; $4d07: $c9


Call_00c_4d08:
    push af                                       ; $4d08: $f5
    push bc                                       ; $4d09: $c5
    push de                                       ; $4d0a: $d5
    push hl                                       ; $4d0b: $e5
    ldh a, [$96]                                  ; $4d0c: $f0 $96
    push af                                       ; $4d0e: $f5
    call Call_00c_5665                            ; $4d0f: $cd $65 $56
    ld a, $06                                     ; $4d12: $3e $06
    ldh [$96], a                                  ; $4d14: $e0 $96
    ldh [rSVBK], a                                ; $4d16: $e0 $70
    ld a, [$d215]                                 ; $4d18: $fa $15 $d2
    or a                                          ; $4d1b: $b7
    jr nz, jr_00c_4d23                            ; $4d1c: $20 $05

    ld a, [$d214]                                 ; $4d1e: $fa $14 $d2
    jr jr_00c_4d25                                ; $4d21: $18 $02

jr_00c_4d23:
    ld a, $06                                     ; $4d23: $3e $06

jr_00c_4d25:
    ld b, a                                       ; $4d25: $47
    rst $18                                       ; $4d26: $df
    ld a, [hl+]                                   ; $4d27: $2a
    dec bc                                        ; $4d28: $0b
    ld hl, $d224                                  ; $4d29: $21 $24 $d2
    ld a, [hl+]                                   ; $4d2c: $2a
    ld h, [hl]                                    ; $4d2d: $66
    ld l, a                                       ; $4d2e: $6f
    push hl                                       ; $4d2f: $e5
    ld a, $06                                     ; $4d30: $3e $06
    ldh [$96], a                                  ; $4d32: $e0 $96
    ldh [rSVBK], a                                ; $4d34: $e0 $70
    ld a, [$d215]                                 ; $4d36: $fa $15 $d2
    or a                                          ; $4d39: $b7
    jr nz, jr_00c_4d43                            ; $4d3a: $20 $07

    ld c, $00                                     ; $4d3c: $0e $00
    rst $18                                       ; $4d3e: $df
    ld b, d                                       ; $4d3f: $42
    dec bc                                        ; $4d40: $0b
    jr jr_00c_4d5f                                ; $4d41: $18 $1c

jr_00c_4d43:
    xor a                                         ; $4d43: $af
    ld c, $00                                     ; $4d44: $0e $00
    ld d, $06                                     ; $4d46: $16 $06

jr_00c_4d48:
    push bc                                       ; $4d48: $c5
    ld b, c                                       ; $4d49: $41
    push af                                       ; $4d4a: $f5
    push bc                                       ; $4d4b: $c5
    push de                                       ; $4d4c: $d5
    push hl                                       ; $4d4d: $e5
    rst $18                                       ; $4d4e: $df
    ld a, [hl+]                                   ; $4d4f: $2a
    dec bc                                        ; $4d50: $0b
    pop hl                                        ; $4d51: $e1
    pop de                                        ; $4d52: $d1
    pop bc                                        ; $4d53: $c1
    pop af                                        ; $4d54: $f1
    rst $18                                       ; $4d55: $df
    ld b, d                                       ; $4d56: $42
    dec bc                                        ; $4d57: $0b
    add b                                         ; $4d58: $80
    pop bc                                        ; $4d59: $c1
    ld b, a                                       ; $4d5a: $47
    inc c                                         ; $4d5b: $0c
    dec d                                         ; $4d5c: $15
    jr nz, jr_00c_4d48                            ; $4d5d: $20 $e9

jr_00c_4d5f:
    ld h, $00                                     ; $4d5f: $26 $00
    ld l, b                                       ; $4d61: $68
    ld a, b                                       ; $4d62: $78
    or a                                          ; $4d63: $b7
    jr z, jr_00c_4d93                             ; $4d64: $28 $2d

    ld a, [$d215]                                 ; $4d66: $fa $15 $d2
    ld de, $d610                                  ; $4d69: $11 $10 $d6
    add e                                         ; $4d6c: $83
    ld e, a                                       ; $4d6d: $5f
    jr nc, jr_00c_4d71                            ; $4d6e: $30 $01

    inc d                                         ; $4d70: $14

jr_00c_4d71:
    ld a, $03                                     ; $4d71: $3e $03
    ldh [$96], a                                  ; $4d73: $e0 $96
    ldh [rSVBK], a                                ; $4d75: $e0 $70
    ld a, $03                                     ; $4d77: $3e $03
    call Call_000_21f0                            ; $4d79: $cd $f0 $21
    ld a, $06                                     ; $4d7c: $3e $06
    ldh [$96], a                                  ; $4d7e: $e0 $96
    ldh [rSVBK], a                                ; $4d80: $e0 $70
    ld a, [$d214]                                 ; $4d82: $fa $14 $d2
    ld b, a                                       ; $4d85: $47
    rst $18                                       ; $4d86: $df
    ld a, [hl+]                                   ; $4d87: $2a
    dec bc                                        ; $4d88: $0b
    call Call_00c_50c4                            ; $4d89: $cd $c4 $50
    ld a, e                                       ; $4d8c: $7b
    or a                                          ; $4d8d: $b7
    jr nz, jr_00c_4d93                            ; $4d8e: $20 $03

    call Call_00c_5100                            ; $4d90: $cd $00 $51

jr_00c_4d93:
    pop hl                                        ; $4d93: $e1
    push hl                                       ; $4d94: $e5
    ld a, $06                                     ; $4d95: $3e $06
    ldh [$96], a                                  ; $4d97: $e0 $96
    ldh [rSVBK], a                                ; $4d99: $e0 $70
    ld a, [hl+]                                   ; $4d9b: $2a
    ld h, [hl]                                    ; $4d9c: $66
    ld l, a                                       ; $4d9d: $6f
    ld a, h                                       ; $4d9e: $7c
    or l                                          ; $4d9f: $b5
    jr nz, jr_00c_4da6                            ; $4da0: $20 $04

    pop hl                                        ; $4da2: $e1
    jp Jump_00c_4fef                              ; $4da3: $c3 $ef $4f


jr_00c_4da6:
    ld a, [$d215]                                 ; $4da6: $fa $15 $d2
    ld de, $d110                                  ; $4da9: $11 $10 $d1
    add e                                         ; $4dac: $83
    ld e, a                                       ; $4dad: $5f
    jr nc, jr_00c_4db1                            ; $4dae: $30 $01

    inc d                                         ; $4db0: $14

jr_00c_4db1:
    ld a, $03                                     ; $4db1: $3e $03
    ldh [$96], a                                  ; $4db3: $e0 $96
    ldh [rSVBK], a                                ; $4db5: $e0 $70
    ld a, $03                                     ; $4db7: $3e $03
    call Call_000_21f0                            ; $4db9: $cd $f0 $21
    pop hl                                        ; $4dbc: $e1
    push hl                                       ; $4dbd: $e5
    ld a, $02                                     ; $4dbe: $3e $02
    add l                                         ; $4dc0: $85
    ld l, a                                       ; $4dc1: $6f
    jr nc, jr_00c_4dc5                            ; $4dc2: $30 $01

    inc h                                         ; $4dc4: $24

jr_00c_4dc5:
    ld a, $06                                     ; $4dc5: $3e $06
    ldh [$96], a                                  ; $4dc7: $e0 $96
    ldh [rSVBK], a                                ; $4dc9: $e0 $70
    ld a, [hl]                                    ; $4dcb: $7e
    call Call_00c_51b1                            ; $4dcc: $cd $b1 $51
    ld a, [$d215]                                 ; $4dcf: $fa $15 $d2
    ld hl, $d18f                                  ; $4dd2: $21 $8f $d1
    add l                                         ; $4dd5: $85
    ld l, a                                       ; $4dd6: $6f
    jr nc, jr_00c_4dda                            ; $4dd7: $30 $01

    inc h                                         ; $4dd9: $24

jr_00c_4dda:
    ld a, $03                                     ; $4dda: $3e $03
    ldh [$96], a                                  ; $4ddc: $e0 $96
    ldh [rSVBK], a                                ; $4dde: $e0 $70
    push bc                                       ; $4de0: $c5
    ld d, h                                       ; $4de1: $54
    ld e, l                                       ; $4de2: $5d
    ld h, $00                                     ; $4de3: $26 $00
    ld l, c                                       ; $4de5: $69
    ld a, $04                                     ; $4de6: $3e $04
    call Call_000_21f0                            ; $4de8: $cd $f0 $21
    pop bc                                        ; $4deb: $c1
    ld a, c                                       ; $4dec: $79
    cp $0a                                        ; $4ded: $fe $0a
    jr c, jr_00c_4dfd                             ; $4def: $38 $0c

    cp $64                                        ; $4df1: $fe $64
    jr c, jr_00c_4df9                             ; $4df3: $38 $04

    ld l, $8f                                     ; $4df5: $2e $8f
    jr jr_00c_4dff                                ; $4df7: $18 $06

jr_00c_4df9:
    ld l, $90                                     ; $4df9: $2e $90
    jr jr_00c_4dff                                ; $4dfb: $18 $02

jr_00c_4dfd:
    ld l, $91                                     ; $4dfd: $2e $91

jr_00c_4dff:
    ld h, $d1                                     ; $4dff: $26 $d1
    ld a, $06                                     ; $4e01: $3e $06
    ldh [$96], a                                  ; $4e03: $e0 $96
    ldh [rSVBK], a                                ; $4e05: $e0 $70
    ld a, [$d215]                                 ; $4e07: $fa $15 $d2
    add l                                         ; $4e0a: $85
    ld l, a                                       ; $4e0b: $6f
    jr nc, jr_00c_4e0f                            ; $4e0c: $30 $01

    inc h                                         ; $4e0e: $24

jr_00c_4e0f:
    ld a, $03                                     ; $4e0f: $3e $03
    ldh [$96], a                                  ; $4e11: $e0 $96
    ldh [rSVBK], a                                ; $4e13: $e0 $70
    ld a, b                                       ; $4e15: $78
    ld [hl], a                                    ; $4e16: $77
    pop hl                                        ; $4e17: $e1
    push hl                                       ; $4e18: $e5
    ld a, $03                                     ; $4e19: $3e $03
    add l                                         ; $4e1b: $85
    ld l, a                                       ; $4e1c: $6f
    jr nc, jr_00c_4e20                            ; $4e1d: $30 $01

    inc h                                         ; $4e1f: $24

jr_00c_4e20:
    ld a, $06                                     ; $4e20: $3e $06
    ldh [$96], a                                  ; $4e22: $e0 $96
    ldh [rSVBK], a                                ; $4e24: $e0 $70
    ld a, [hl+]                                   ; $4e26: $2a
    ld h, [hl]                                    ; $4e27: $66
    ld l, a                                       ; $4e28: $6f
    ld h, $00                                     ; $4e29: $26 $00
    ld a, [$d215]                                 ; $4e2b: $fa $15 $d2
    ld de, $d20e                                  ; $4e2e: $11 $0e $d2
    add e                                         ; $4e31: $83
    ld e, a                                       ; $4e32: $5f
    jr nc, jr_00c_4e36                            ; $4e33: $30 $01

    inc d                                         ; $4e35: $14

jr_00c_4e36:
    ld a, $03                                     ; $4e36: $3e $03
    ldh [$96], a                                  ; $4e38: $e0 $96
    ldh [rSVBK], a                                ; $4e3a: $e0 $70
    ld a, $05                                     ; $4e3c: $3e $05
    call Call_000_21f0                            ; $4e3e: $cd $f0 $21
    pop hl                                        ; $4e41: $e1
    push hl                                       ; $4e42: $e5
    ld a, $04                                     ; $4e43: $3e $04
    add l                                         ; $4e45: $85
    ld l, a                                       ; $4e46: $6f
    jr nc, jr_00c_4e4a                            ; $4e47: $30 $01

    inc h                                         ; $4e49: $24

jr_00c_4e4a:
    ld a, $06                                     ; $4e4a: $3e $06
    ldh [$96], a                                  ; $4e4c: $e0 $96
    ldh [rSVBK], a                                ; $4e4e: $e0 $70
    ld a, [hl+]                                   ; $4e50: $2a
    ld h, [hl]                                    ; $4e51: $66
    ld l, a                                       ; $4e52: $6f
    ld a, [$d215]                                 ; $4e53: $fa $15 $d2
    ld de, $d28d                                  ; $4e56: $11 $8d $d2
    add e                                         ; $4e59: $83
    ld e, a                                       ; $4e5a: $5f
    jr nc, jr_00c_4e5e                            ; $4e5b: $30 $01

    inc d                                         ; $4e5d: $14

jr_00c_4e5e:
    ld a, $03                                     ; $4e5e: $3e $03
    ldh [$96], a                                  ; $4e60: $e0 $96
    ldh [rSVBK], a                                ; $4e62: $e0 $70
    ld a, $05                                     ; $4e64: $3e $05
    call Call_000_21f0                            ; $4e66: $cd $f0 $21
    pop hl                                        ; $4e69: $e1
    push hl                                       ; $4e6a: $e5
    ld a, $06                                     ; $4e6b: $3e $06
    add l                                         ; $4e6d: $85
    ld l, a                                       ; $4e6e: $6f
    jr nc, jr_00c_4e72                            ; $4e6f: $30 $01

    inc h                                         ; $4e71: $24

jr_00c_4e72:
    ld a, $06                                     ; $4e72: $3e $06
    ldh [$96], a                                  ; $4e74: $e0 $96
    ldh [rSVBK], a                                ; $4e76: $e0 $70
    ld a, [hl+]                                   ; $4e78: $2a
    ld h, [hl]                                    ; $4e79: $66
    ld l, a                                       ; $4e7a: $6f
    ld a, [$d215]                                 ; $4e7b: $fa $15 $d2
    ld de, $d30d                                  ; $4e7e: $11 $0d $d3
    add e                                         ; $4e81: $83
    ld e, a                                       ; $4e82: $5f
    jr nc, jr_00c_4e86                            ; $4e83: $30 $01

    inc d                                         ; $4e85: $14

jr_00c_4e86:
    ld a, $03                                     ; $4e86: $3e $03
    ldh [$96], a                                  ; $4e88: $e0 $96
    ldh [rSVBK], a                                ; $4e8a: $e0 $70
    ld a, $05                                     ; $4e8c: $3e $05
    call Call_000_21f0                            ; $4e8e: $cd $f0 $21
    pop hl                                        ; $4e91: $e1
    push hl                                       ; $4e92: $e5
    ld a, $08                                     ; $4e93: $3e $08
    add l                                         ; $4e95: $85
    ld l, a                                       ; $4e96: $6f
    jr nc, jr_00c_4e9a                            ; $4e97: $30 $01

    inc h                                         ; $4e99: $24

jr_00c_4e9a:
    ld a, $06                                     ; $4e9a: $3e $06
    ldh [$96], a                                  ; $4e9c: $e0 $96
    ldh [rSVBK], a                                ; $4e9e: $e0 $70
    ld a, [hl+]                                   ; $4ea0: $2a
    ld h, [hl]                                    ; $4ea1: $66
    ld l, a                                       ; $4ea2: $6f
    ld h, $00                                     ; $4ea3: $26 $00
    ld a, [$d215]                                 ; $4ea5: $fa $15 $d2
    ld de, $d38d                                  ; $4ea8: $11 $8d $d3
    add e                                         ; $4eab: $83
    ld e, a                                       ; $4eac: $5f
    jr nc, jr_00c_4eb0                            ; $4ead: $30 $01

    inc d                                         ; $4eaf: $14

jr_00c_4eb0:
    ld a, $03                                     ; $4eb0: $3e $03
    ldh [$96], a                                  ; $4eb2: $e0 $96
    ldh [rSVBK], a                                ; $4eb4: $e0 $70
    ld a, $05                                     ; $4eb6: $3e $05
    call Call_000_21f0                            ; $4eb8: $cd $f0 $21
    pop hl                                        ; $4ebb: $e1
    push hl                                       ; $4ebc: $e5
    ld a, $09                                     ; $4ebd: $3e $09
    add l                                         ; $4ebf: $85
    ld l, a                                       ; $4ec0: $6f
    jr nc, jr_00c_4ec4                            ; $4ec1: $30 $01

    inc h                                         ; $4ec3: $24

jr_00c_4ec4:
    ld a, $06                                     ; $4ec4: $3e $06
    ldh [$96], a                                  ; $4ec6: $e0 $96
    ldh [rSVBK], a                                ; $4ec8: $e0 $70
    ld a, [hl]                                    ; $4eca: $7e
    push af                                       ; $4ecb: $f5
    ld c, $00                                     ; $4ecc: $0e $00

jr_00c_4ece:
    cp $0a                                        ; $4ece: $fe $0a
    jr c, jr_00c_4ed7                             ; $4ed0: $38 $05

    inc c                                         ; $4ed2: $0c
    add $f6                                       ; $4ed3: $c6 $f6
    jr jr_00c_4ece                                ; $4ed5: $18 $f7

jr_00c_4ed7:
    ld a, c                                       ; $4ed7: $79
    add a                                         ; $4ed8: $87
    add a                                         ; $4ed9: $87
    add a                                         ; $4eda: $87
    add c                                         ; $4edb: $81
    add c                                         ; $4edc: $81
    ld c, a                                       ; $4edd: $4f
    ld h, $00                                     ; $4ede: $26 $00
    ld l, c                                       ; $4ee0: $69
    push bc                                       ; $4ee1: $c5
    ld a, [$d215]                                 ; $4ee2: $fa $15 $d2
    ld de, $d410                                  ; $4ee5: $11 $10 $d4
    add e                                         ; $4ee8: $83
    ld e, a                                       ; $4ee9: $5f
    jr nc, jr_00c_4eed                            ; $4eea: $30 $01

    inc d                                         ; $4eec: $14

jr_00c_4eed:
    ld a, $03                                     ; $4eed: $3e $03
    ldh [$96], a                                  ; $4eef: $e0 $96
    ldh [rSVBK], a                                ; $4ef1: $e0 $70
    ld a, $01                                     ; $4ef3: $3e $01
    call Call_000_21f0                            ; $4ef5: $cd $f0 $21
    ld a, $06                                     ; $4ef8: $3e $06
    ldh [$96], a                                  ; $4efa: $e0 $96
    ldh [rSVBK], a                                ; $4efc: $e0 $70
    ld a, [$d215]                                 ; $4efe: $fa $15 $d2
    ld hl, $d411                                  ; $4f01: $21 $11 $d4
    add l                                         ; $4f04: $85
    ld l, a                                       ; $4f05: $6f
    jr nc, jr_00c_4f09                            ; $4f06: $30 $01

    inc h                                         ; $4f08: $24

jr_00c_4f09:
    ld a, $03                                     ; $4f09: $3e $03
    ldh [$96], a                                  ; $4f0b: $e0 $96
    ldh [rSVBK], a                                ; $4f0d: $e0 $70
    ld [hl], $2e                                  ; $4f0f: $36 $2e
    ld a, $06                                     ; $4f11: $3e $06
    ldh [$96], a                                  ; $4f13: $e0 $96
    ldh [rSVBK], a                                ; $4f15: $e0 $70
    pop bc                                        ; $4f17: $c1
    pop af                                        ; $4f18: $f1
    sub c                                         ; $4f19: $91
    ld h, $00                                     ; $4f1a: $26 $00
    ld l, a                                       ; $4f1c: $6f
    ld a, [$d215]                                 ; $4f1d: $fa $15 $d2
    ld de, $d412                                  ; $4f20: $11 $12 $d4
    add e                                         ; $4f23: $83
    ld e, a                                       ; $4f24: $5f
    jr nc, jr_00c_4f28                            ; $4f25: $30 $01

    inc d                                         ; $4f27: $14

jr_00c_4f28:
    ld a, $03                                     ; $4f28: $3e $03
    ldh [$96], a                                  ; $4f2a: $e0 $96
    ldh [rSVBK], a                                ; $4f2c: $e0 $70
    ld a, $01                                     ; $4f2e: $3e $01
    call Call_000_21f0                            ; $4f30: $cd $f0 $21
    pop hl                                        ; $4f33: $e1
    push hl                                       ; $4f34: $e5
    ld a, $0a                                     ; $4f35: $3e $0a
    add l                                         ; $4f37: $85
    ld l, a                                       ; $4f38: $6f
    jr nc, jr_00c_4f3c                            ; $4f39: $30 $01

    inc h                                         ; $4f3b: $24

jr_00c_4f3c:
    ld a, $06                                     ; $4f3c: $3e $06
    ldh [$96], a                                  ; $4f3e: $e0 $96
    ldh [rSVBK], a                                ; $4f40: $e0 $70
    ld a, [hl+]                                   ; $4f42: $2a
    ld h, [hl]                                    ; $4f43: $66
    ld l, a                                       ; $4f44: $6f
    ld h, $00                                     ; $4f45: $26 $00
    ld a, [$d215]                                 ; $4f47: $fa $15 $d2
    ld de, $d48d                                  ; $4f4a: $11 $8d $d4
    add e                                         ; $4f4d: $83
    ld e, a                                       ; $4f4e: $5f
    jr nc, jr_00c_4f52                            ; $4f4f: $30 $01

    inc d                                         ; $4f51: $14

jr_00c_4f52:
    ld a, $03                                     ; $4f52: $3e $03
    ldh [$96], a                                  ; $4f54: $e0 $96
    ldh [rSVBK], a                                ; $4f56: $e0 $70
    ld a, $05                                     ; $4f58: $3e $05
    call Call_000_21f0                            ; $4f5a: $cd $f0 $21
    pop hl                                        ; $4f5d: $e1
    push hl                                       ; $4f5e: $e5
    ld a, $0b                                     ; $4f5f: $3e $0b
    add l                                         ; $4f61: $85
    ld l, a                                       ; $4f62: $6f
    jr nc, jr_00c_4f66                            ; $4f63: $30 $01

    inc h                                         ; $4f65: $24

jr_00c_4f66:
    ld a, $06                                     ; $4f66: $3e $06
    ldh [$96], a                                  ; $4f68: $e0 $96
    ldh [rSVBK], a                                ; $4f6a: $e0 $70
    ld a, [hl+]                                   ; $4f6c: $2a
    ld h, [hl]                                    ; $4f6d: $66
    ld l, a                                       ; $4f6e: $6f
    ld h, $00                                     ; $4f6f: $26 $00
    ld a, [$d215]                                 ; $4f71: $fa $15 $d2
    ld de, $d50d                                  ; $4f74: $11 $0d $d5
    add e                                         ; $4f77: $83
    ld e, a                                       ; $4f78: $5f
    jr nc, jr_00c_4f7c                            ; $4f79: $30 $01

    inc d                                         ; $4f7b: $14

jr_00c_4f7c:
    ld a, $03                                     ; $4f7c: $3e $03
    ldh [$96], a                                  ; $4f7e: $e0 $96
    ldh [rSVBK], a                                ; $4f80: $e0 $70
    ld a, $05                                     ; $4f82: $3e $05
    call Call_000_21f0                            ; $4f84: $cd $f0 $21
    pop hl                                        ; $4f87: $e1
    ld a, $0c                                     ; $4f88: $3e $0c
    add l                                         ; $4f8a: $85
    ld l, a                                       ; $4f8b: $6f
    jr nc, jr_00c_4f8f                            ; $4f8c: $30 $01

    inc h                                         ; $4f8e: $24

jr_00c_4f8f:
    ld a, $06                                     ; $4f8f: $3e $06
    ldh [$96], a                                  ; $4f91: $e0 $96
    ldh [rSVBK], a                                ; $4f93: $e0 $70
    ld a, [hl+]                                   ; $4f95: $2a
    ld h, [hl]                                    ; $4f96: $66
    ld l, a                                       ; $4f97: $6f
    ld h, $00                                     ; $4f98: $26 $00
    ld a, [$d215]                                 ; $4f9a: $fa $15 $d2
    ld de, $d58d                                  ; $4f9d: $11 $8d $d5
    add e                                         ; $4fa0: $83
    ld e, a                                       ; $4fa1: $5f
    jr nc, jr_00c_4fa5                            ; $4fa2: $30 $01

    inc d                                         ; $4fa4: $14

jr_00c_4fa5:
    ld a, $03                                     ; $4fa5: $3e $03
    ldh [$96], a                                  ; $4fa7: $e0 $96
    ldh [rSVBK], a                                ; $4fa9: $e0 $70
    ld a, $05                                     ; $4fab: $3e $05
    call Call_000_21f0                            ; $4fad: $cd $f0 $21
    call Call_00c_5001                            ; $4fb0: $cd $01 $50
    ld a, $06                                     ; $4fb3: $3e $06
    ldh [$96], a                                  ; $4fb5: $e0 $96
    ldh [rSVBK], a                                ; $4fb7: $e0 $70
    ld a, [$d215]                                 ; $4fb9: $fa $15 $d2
    or a                                          ; $4fbc: $b7
    jr nz, jr_00c_4fef                            ; $4fbd: $20 $30

    ld a, $06                                     ; $4fbf: $3e $06
    ldh [$96], a                                  ; $4fc1: $e0 $96
    ldh [rSVBK], a                                ; $4fc3: $e0 $70
    ld hl, $d224                                  ; $4fc5: $21 $24 $d2
    ld a, [hl+]                                   ; $4fc8: $2a
    ld h, [hl]                                    ; $4fc9: $66
    ld l, a                                       ; $4fca: $6f
    ld a, $0d                                     ; $4fcb: $3e $0d
    add l                                         ; $4fcd: $85
    ld l, a                                       ; $4fce: $6f
    jr nc, jr_00c_4fd2                            ; $4fcf: $30 $01

    inc h                                         ; $4fd1: $24

jr_00c_4fd2:
    ld a, [hl]                                    ; $4fd2: $7e
    bit 2, a                                      ; $4fd3: $cb $57
    jr z, jr_00c_4fdc                             ; $4fd5: $28 $05

    ld c, $00                                     ; $4fd7: $0e $00
    call Call_00c_51d2                            ; $4fd9: $cd $d2 $51

jr_00c_4fdc:
    bit 1, a                                      ; $4fdc: $cb $4f
    jr z, jr_00c_4fe5                             ; $4fde: $28 $05

    ld c, $01                                     ; $4fe0: $0e $01
    call Call_00c_51d2                            ; $4fe2: $cd $d2 $51

jr_00c_4fe5:
    bit 0, a                                      ; $4fe5: $cb $47
    jp z, Jump_00c_4fef                           ; $4fe7: $ca $ef $4f

    ld c, $02                                     ; $4fea: $0e $02
    call Call_00c_51d2                            ; $4fec: $cd $d2 $51

Jump_00c_4fef:
jr_00c_4fef:
    ld a, $01                                     ; $4fef: $3e $01
    rst $18                                       ; $4ff1: $df
    inc b                                         ; $4ff2: $04
    dec bc                                        ; $4ff3: $0b
    rst $18                                       ; $4ff4: $df
    inc a                                         ; $4ff5: $3c
    inc b                                         ; $4ff6: $04
    pop af                                        ; $4ff7: $f1
    ldh [$96], a                                  ; $4ff8: $e0 $96
    ldh [rSVBK], a                                ; $4ffa: $e0 $70
    pop hl                                        ; $4ffc: $e1
    pop de                                        ; $4ffd: $d1
    pop bc                                        ; $4ffe: $c1
    pop af                                        ; $4fff: $f1
    ret                                           ; $5000: $c9


Call_00c_5001:
    ldh a, [$96]                                  ; $5001: $f0 $96
    push af                                       ; $5003: $f5
    ld a, $06                                     ; $5004: $3e $06
    ldh [$96], a                                  ; $5006: $e0 $96
    ldh [rSVBK], a                                ; $5008: $e0 $70
    ld a, [$d215]                                 ; $500a: $fa $15 $d2
    ld d, $00                                     ; $500d: $16 $00
    ld e, a                                       ; $500f: $5f
    ld a, $02                                     ; $5010: $3e $02
    ldh [$96], a                                  ; $5012: $e0 $96
    ldh [rSVBK], a                                ; $5014: $e0 $70
    xor a                                         ; $5016: $af
    ld hl, $d110                                  ; $5017: $21 $10 $d1
    add hl, de                                    ; $501a: $19
    ld [hl+], a                                   ; $501b: $22
    ld [hl+], a                                   ; $501c: $22
    ld [hl+], a                                   ; $501d: $22
    ld hl, $d18f                                  ; $501e: $21 $8f $d1
    add hl, de                                    ; $5021: $19
    ld [hl+], a                                   ; $5022: $22
    ld [hl+], a                                   ; $5023: $22
    ld [hl+], a                                   ; $5024: $22
    ld [hl+], a                                   ; $5025: $22
    ld hl, $d20e                                  ; $5026: $21 $0e $d2
    add hl, de                                    ; $5029: $19
    ld [hl+], a                                   ; $502a: $22
    ld [hl+], a                                   ; $502b: $22
    ld [hl+], a                                   ; $502c: $22
    ld [hl+], a                                   ; $502d: $22
    ld [hl+], a                                   ; $502e: $22
    ld hl, $d28d                                  ; $502f: $21 $8d $d2
    add hl, de                                    ; $5032: $19
    ld [hl+], a                                   ; $5033: $22
    ld [hl+], a                                   ; $5034: $22
    ld [hl+], a                                   ; $5035: $22
    ld [hl+], a                                   ; $5036: $22
    ld [hl+], a                                   ; $5037: $22
    ld hl, $d30d                                  ; $5038: $21 $0d $d3
    add hl, de                                    ; $503b: $19
    ld [hl+], a                                   ; $503c: $22
    ld [hl+], a                                   ; $503d: $22
    ld [hl+], a                                   ; $503e: $22
    ld [hl+], a                                   ; $503f: $22
    ld [hl+], a                                   ; $5040: $22
    ld hl, $d38d                                  ; $5041: $21 $8d $d3
    add hl, de                                    ; $5044: $19
    ld [hl+], a                                   ; $5045: $22
    ld [hl+], a                                   ; $5046: $22
    ld [hl+], a                                   ; $5047: $22
    ld [hl+], a                                   ; $5048: $22
    ld [hl+], a                                   ; $5049: $22
    ld hl, $d410                                  ; $504a: $21 $10 $d4
    add hl, de                                    ; $504d: $19
    ld [hl+], a                                   ; $504e: $22
    ld [hl+], a                                   ; $504f: $22
    ld [hl+], a                                   ; $5050: $22
    ld [hl+], a                                   ; $5051: $22
    ld [hl+], a                                   ; $5052: $22
    ld [hl+], a                                   ; $5053: $22
    ld hl, $d48d                                  ; $5054: $21 $8d $d4
    add hl, de                                    ; $5057: $19
    ld [hl+], a                                   ; $5058: $22
    ld [hl+], a                                   ; $5059: $22
    ld [hl+], a                                   ; $505a: $22
    ld [hl+], a                                   ; $505b: $22
    ld [hl+], a                                   ; $505c: $22
    ld hl, $d50d                                  ; $505d: $21 $0d $d5
    add hl, de                                    ; $5060: $19
    ld [hl+], a                                   ; $5061: $22
    ld [hl+], a                                   ; $5062: $22
    ld [hl+], a                                   ; $5063: $22
    ld [hl+], a                                   ; $5064: $22
    ld [hl+], a                                   ; $5065: $22
    ld hl, $d58d                                  ; $5066: $21 $8d $d5
    add hl, de                                    ; $5069: $19
    ld [hl+], a                                   ; $506a: $22
    ld [hl+], a                                   ; $506b: $22
    ld [hl+], a                                   ; $506c: $22
    ld [hl+], a                                   ; $506d: $22
    ld [hl+], a                                   ; $506e: $22
    ld a, $06                                     ; $506f: $3e $06
    ldh [$96], a                                  ; $5071: $e0 $96
    ldh [rSVBK], a                                ; $5073: $e0 $70
    ld a, [$d215]                                 ; $5075: $fa $15 $d2
    ld d, $00                                     ; $5078: $16 $00
    ld e, a                                       ; $507a: $5f
    ld a, $03                                     ; $507b: $3e $03
    ldh [$96], a                                  ; $507d: $e0 $96
    ldh [rSVBK], a                                ; $507f: $e0 $70
    ld a, $06                                     ; $5081: $3e $06
    ld hl, $d193                                  ; $5083: $21 $93 $d1
    add hl, de                                    ; $5086: $19
    ld [hl], a                                    ; $5087: $77
    ld hl, $d213                                  ; $5088: $21 $13 $d2
    add hl, de                                    ; $508b: $19
    ld [hl], a                                    ; $508c: $77
    ld hl, $d413                                  ; $508d: $21 $13 $d4
    add hl, de                                    ; $5090: $19
    ld [hl], a                                    ; $5091: $77
    ld hl, $d113                                  ; $5092: $21 $13 $d1
    add hl, de                                    ; $5095: $19
    ld [hl], a                                    ; $5096: $77
    ld hl, $d413                                  ; $5097: $21 $13 $d4
    add hl, de                                    ; $509a: $19
    ld [hl], a                                    ; $509b: $77
    ld a, $38                                     ; $509c: $3e $38
    ld hl, $d292                                  ; $509e: $21 $92 $d2
    add hl, de                                    ; $50a1: $19
    ld [hl], a                                    ; $50a2: $77
    ld hl, $d312                                  ; $50a3: $21 $12 $d3
    add hl, de                                    ; $50a6: $19
    ld [hl], a                                    ; $50a7: $77
    ld a, $37                                     ; $50a8: $3e $37
    ld hl, $d392                                  ; $50aa: $21 $92 $d3
    add hl, de                                    ; $50ad: $19
    ld [hl], a                                    ; $50ae: $77
    ld hl, $d492                                  ; $50af: $21 $92 $d4
    add hl, de                                    ; $50b2: $19
    ld [hl], a                                    ; $50b3: $77
    ld hl, $d512                                  ; $50b4: $21 $12 $d5
    add hl, de                                    ; $50b7: $19
    ld [hl], a                                    ; $50b8: $77
    ld hl, $d592                                  ; $50b9: $21 $92 $d5
    add hl, de                                    ; $50bc: $19
    ld [hl], a                                    ; $50bd: $77
    pop af                                        ; $50be: $f1
    ldh [$96], a                                  ; $50bf: $e0 $96
    ldh [rSVBK], a                                ; $50c1: $e0 $70
    ret                                           ; $50c3: $c9


Call_00c_50c4:
    ldh a, [$96]                                  ; $50c4: $f0 $96
    push af                                       ; $50c6: $f5
    ld a, $06                                     ; $50c7: $3e $06
    ldh [$96], a                                  ; $50c9: $e0 $96
    ldh [rSVBK], a                                ; $50cb: $e0 $70
    ld a, [$d215]                                 ; $50cd: $fa $15 $d2
    ld d, $00                                     ; $50d0: $16 $00
    ld e, a                                       ; $50d2: $5f
    ld a, $02                                     ; $50d3: $3e $02
    ldh [$96], a                                  ; $50d5: $e0 $96
    ldh [rSVBK], a                                ; $50d7: $e0 $70
    xor a                                         ; $50d9: $af
    ld hl, $d610                                  ; $50da: $21 $10 $d6
    add hl, de                                    ; $50dd: $19
    ld [hl+], a                                   ; $50de: $22
    ld [hl+], a                                   ; $50df: $22
    ld [hl+], a                                   ; $50e0: $22
    ld a, $06                                     ; $50e1: $3e $06
    ldh [$96], a                                  ; $50e3: $e0 $96
    ldh [rSVBK], a                                ; $50e5: $e0 $70
    ld a, [$d215]                                 ; $50e7: $fa $15 $d2
    ld d, $00                                     ; $50ea: $16 $00
    ld e, a                                       ; $50ec: $5f
    ld a, $03                                     ; $50ed: $3e $03
    ldh [$96], a                                  ; $50ef: $e0 $96
    ldh [rSVBK], a                                ; $50f1: $e0 $70
    ld a, $06                                     ; $50f3: $3e $06
    ld hl, $d613                                  ; $50f5: $21 $13 $d6
    add hl, de                                    ; $50f8: $19
    ld [hl], a                                    ; $50f9: $77
    pop af                                        ; $50fa: $f1
    ldh [$96], a                                  ; $50fb: $e0 $96
    ldh [rSVBK], a                                ; $50fd: $e0 $70
    ret                                           ; $50ff: $c9


Call_00c_5100:
    push af                                       ; $5100: $f5
    push bc                                       ; $5101: $c5
    push de                                       ; $5102: $d5
    push hl                                       ; $5103: $e5
    ldh a, [$96]                                  ; $5104: $f0 $96
    push af                                       ; $5106: $f5
    ld a, $03                                     ; $5107: $3e $03
    ldh [$96], a                                  ; $5109: $e0 $96
    ldh [rSVBK], a                                ; $510b: $e0 $70
    ld c, $00                                     ; $510d: $0e $00
    ld hl, $d706                                  ; $510f: $21 $06 $d7

jr_00c_5112:
    ld d, c                                       ; $5112: $51
    rst $18                                       ; $5113: $df
    ld b, d                                       ; $5114: $42
    dec bc                                        ; $5115: $0b
    ld a, c                                       ; $5116: $79
    or a                                          ; $5117: $b7
    jr z, jr_00c_511d                             ; $5118: $28 $03

    ld a, $4e                                     ; $511a: $3e $4e
    ld [hl], a                                    ; $511c: $77

jr_00c_511d:
    ld a, $40                                     ; $511d: $3e $40
    add l                                         ; $511f: $85
    ld l, a                                       ; $5120: $6f
    jr nc, jr_00c_5124                            ; $5121: $30 $01

    inc h                                         ; $5123: $24

jr_00c_5124:
    ld c, d                                       ; $5124: $4a
    inc c                                         ; $5125: $0c
    ld a, c                                       ; $5126: $79
    cp $09                                        ; $5127: $fe $09
    jr nz, jr_00c_5112                            ; $5129: $20 $e7

    ld c, $09                                     ; $512b: $0e $09
    ld hl, $d70c                                  ; $512d: $21 $0c $d7

jr_00c_5130:
    ld d, c                                       ; $5130: $51
    rst $18                                       ; $5131: $df
    ld b, d                                       ; $5132: $42
    dec bc                                        ; $5133: $0b
    ld a, c                                       ; $5134: $79
    or a                                          ; $5135: $b7
    jr z, jr_00c_513b                             ; $5136: $28 $03

    ld a, $4e                                     ; $5138: $3e $4e
    ld [hl], a                                    ; $513a: $77

jr_00c_513b:
    ld a, $40                                     ; $513b: $3e $40
    add l                                         ; $513d: $85
    ld l, a                                       ; $513e: $6f
    jr nc, jr_00c_5142                            ; $513f: $30 $01

    inc h                                         ; $5141: $24

jr_00c_5142:
    ld c, d                                       ; $5142: $4a
    inc c                                         ; $5143: $0c
    ld a, c                                       ; $5144: $79
    cp $12                                        ; $5145: $fe $12
    jr nz, jr_00c_5130                            ; $5147: $20 $e7

    pop af                                        ; $5149: $f1
    ldh [$96], a                                  ; $514a: $e0 $96
    ldh [rSVBK], a                                ; $514c: $e0 $70
    pop hl                                        ; $514e: $e1
    pop de                                        ; $514f: $d1
    pop bc                                        ; $5150: $c1
    pop af                                        ; $5151: $f1
    ret                                           ; $5152: $c9


Call_00c_5153:
    push af                                       ; $5153: $f5
    push bc                                       ; $5154: $c5
    push de                                       ; $5155: $d5
    push hl                                       ; $5156: $e5
    ldh a, [$96]                                  ; $5157: $f0 $96
    push af                                       ; $5159: $f5
    ld a, $06                                     ; $515a: $3e $06
    ldh [$96], a                                  ; $515c: $e0 $96
    ldh [rSVBK], a                                ; $515e: $e0 $70
    ld a, [$d214]                                 ; $5160: $fa $14 $d2
    ld h, a                                       ; $5163: $67
    inc h                                         ; $5164: $24
    ld a, $03                                     ; $5165: $3e $03
    ldh [$96], a                                  ; $5167: $e0 $96
    ldh [rSVBK], a                                ; $5169: $e0 $70
    ld l, $01                                     ; $516b: $2e $01
    ld de, $d706                                  ; $516d: $11 $06 $d7

jr_00c_5170:
    rst $18                                       ; $5170: $df
    ld c, h                                       ; $5171: $4c
    ld [bc], a                                    ; $5172: $02
    jr z, jr_00c_517c                             ; $5173: $28 $07

    push hl                                       ; $5175: $e5
    ld h, d                                       ; $5176: $62
    ld l, e                                       ; $5177: $6b
    ld a, $4e                                     ; $5178: $3e $4e
    ld [hl], a                                    ; $517a: $77
    pop hl                                        ; $517b: $e1

jr_00c_517c:
    ld a, $40                                     ; $517c: $3e $40
    add e                                         ; $517e: $83
    ld e, a                                       ; $517f: $5f
    jr nc, jr_00c_5183                            ; $5180: $30 $01

    inc d                                         ; $5182: $14

jr_00c_5183:
    inc l                                         ; $5183: $2c
    ld a, l                                       ; $5184: $7d
    cp $0a                                        ; $5185: $fe $0a
    jr nz, jr_00c_5170                            ; $5187: $20 $e7

    ld l, $0a                                     ; $5189: $2e $0a
    ld de, $d70c                                  ; $518b: $11 $0c $d7

jr_00c_518e:
    rst $18                                       ; $518e: $df
    ld c, h                                       ; $518f: $4c
    ld [bc], a                                    ; $5190: $02
    jr z, jr_00c_519a                             ; $5191: $28 $07

    push hl                                       ; $5193: $e5
    ld h, d                                       ; $5194: $62
    ld l, e                                       ; $5195: $6b
    ld a, $4e                                     ; $5196: $3e $4e
    ld [hl], a                                    ; $5198: $77
    pop hl                                        ; $5199: $e1

jr_00c_519a:
    ld a, $40                                     ; $519a: $3e $40
    add e                                         ; $519c: $83
    ld e, a                                       ; $519d: $5f
    jr nc, jr_00c_51a1                            ; $519e: $30 $01

    inc d                                         ; $51a0: $14

jr_00c_51a1:
    inc l                                         ; $51a1: $2c
    ld a, l                                       ; $51a2: $7d
    cp $13                                        ; $51a3: $fe $13
    jr nz, jr_00c_518e                            ; $51a5: $20 $e7

    pop af                                        ; $51a7: $f1
    ldh [$96], a                                  ; $51a8: $e0 $96
    ldh [rSVBK], a                                ; $51aa: $e0 $70
    pop hl                                        ; $51ac: $e1
    pop de                                        ; $51ad: $d1
    pop bc                                        ; $51ae: $c1
    pop af                                        ; $51af: $f1
    ret                                           ; $51b0: $c9


Call_00c_51b1:
    push af                                       ; $51b1: $f5
    push hl                                       ; $51b2: $e5
    push de                                       ; $51b3: $d5
    ld b, a                                       ; $51b4: $47
    sub $36                                       ; $51b5: $d6 $36
    or a                                          ; $51b7: $b7
    jr z, jr_00c_51c9                             ; $51b8: $28 $0f

    bit 7, a                                      ; $51ba: $cb $7f
    jr nz, jr_00c_51c2                            ; $51bc: $20 $04

    ld b, $2b                                     ; $51be: $06 $2b
    jr jr_00c_51cd                                ; $51c0: $18 $0b

jr_00c_51c2:
    ld a, $36                                     ; $51c2: $3e $36
    sub b                                         ; $51c4: $90
    ld b, $2d                                     ; $51c5: $06 $2d
    jr jr_00c_51cd                                ; $51c7: $18 $04

jr_00c_51c9:
    ld b, $60                                     ; $51c9: $06 $60
    jr jr_00c_51cd                                ; $51cb: $18 $00

jr_00c_51cd:
    ld c, a                                       ; $51cd: $4f
    pop de                                        ; $51ce: $d1
    pop hl                                        ; $51cf: $e1
    pop af                                        ; $51d0: $f1
    ret                                           ; $51d1: $c9


Call_00c_51d2:
    push af                                       ; $51d2: $f5
    push bc                                       ; $51d3: $c5
    push de                                       ; $51d4: $d5
    push hl                                       ; $51d5: $e5
    ldh a, [$96]                                  ; $51d6: $f0 $96
    push af                                       ; $51d8: $f5
    ld hl, $5287                                  ; $51d9: $21 $87 $52
    ld a, c                                       ; $51dc: $79
    add a                                         ; $51dd: $87
    add l                                         ; $51de: $85
    ld l, a                                       ; $51df: $6f
    jr nc, jr_00c_51e3                            ; $51e0: $30 $01

    inc h                                         ; $51e2: $24

jr_00c_51e3:
    ld a, [hl+]                                   ; $51e3: $2a
    ld h, [hl]                                    ; $51e4: $66
    ld l, a                                       ; $51e5: $6f
    ld d, h                                       ; $51e6: $54
    ld e, l                                       ; $51e7: $5d
    ld hl, $529f                                  ; $51e8: $21 $9f $52
    ld a, c                                       ; $51eb: $79
    add l                                         ; $51ec: $85
    ld l, a                                       ; $51ed: $6f
    jr nc, jr_00c_51f1                            ; $51ee: $30 $01

    inc h                                         ; $51f0: $24

jr_00c_51f1:
    ld a, [hl]                                    ; $51f1: $7e
    ld b, a                                       ; $51f2: $47
    ld hl, $528d                                  ; $51f3: $21 $8d $52
    ld a, c                                       ; $51f6: $79
    add a                                         ; $51f7: $87
    add a                                         ; $51f8: $87
    add c                                         ; $51f9: $81
    add c                                         ; $51fa: $81
    add l                                         ; $51fb: $85
    ld l, a                                       ; $51fc: $6f
    jr nc, jr_00c_5200                            ; $51fd: $30 $01

    inc h                                         ; $51ff: $24

jr_00c_5200:
    ld a, $03                                     ; $5200: $3e $03
    ldh [$96], a                                  ; $5202: $e0 $96
    ldh [rSVBK], a                                ; $5204: $e0 $70
    ld a, [hl+]                                   ; $5206: $2a
    push hl                                       ; $5207: $e5
    ld h, d                                       ; $5208: $62
    ld l, e                                       ; $5209: $6b
    ld [hl], a                                    ; $520a: $77
    ld a, $02                                     ; $520b: $3e $02
    ldh [$96], a                                  ; $520d: $e0 $96
    ldh [rSVBK], a                                ; $520f: $e0 $70
    ld [hl], b                                    ; $5211: $70
    ld a, $03                                     ; $5212: $3e $03
    ldh [$96], a                                  ; $5214: $e0 $96
    ldh [rSVBK], a                                ; $5216: $e0 $70
    pop hl                                        ; $5218: $e1
    ld a, [hl+]                                   ; $5219: $2a
    push hl                                       ; $521a: $e5
    ld h, d                                       ; $521b: $62
    ld l, e                                       ; $521c: $6b
    inc hl                                        ; $521d: $23
    ld [hl], a                                    ; $521e: $77
    ld a, $02                                     ; $521f: $3e $02
    ldh [$96], a                                  ; $5221: $e0 $96
    ldh [rSVBK], a                                ; $5223: $e0 $70
    ld [hl], b                                    ; $5225: $70
    ld a, $03                                     ; $5226: $3e $03
    ldh [$96], a                                  ; $5228: $e0 $96
    ldh [rSVBK], a                                ; $522a: $e0 $70
    pop hl                                        ; $522c: $e1
    ld a, [hl+]                                   ; $522d: $2a
    push hl                                       ; $522e: $e5
    ld h, $00                                     ; $522f: $26 $00
    ld l, $40                                     ; $5231: $2e $40
    add hl, de                                    ; $5233: $19
    ld d, h                                       ; $5234: $54
    ld e, l                                       ; $5235: $5d
    ld [hl], a                                    ; $5236: $77
    ld a, $02                                     ; $5237: $3e $02
    ldh [$96], a                                  ; $5239: $e0 $96
    ldh [rSVBK], a                                ; $523b: $e0 $70
    ld [hl], b                                    ; $523d: $70
    ld a, $03                                     ; $523e: $3e $03
    ldh [$96], a                                  ; $5240: $e0 $96
    ldh [rSVBK], a                                ; $5242: $e0 $70
    pop hl                                        ; $5244: $e1
    ld a, [hl+]                                   ; $5245: $2a
    push hl                                       ; $5246: $e5
    ld h, d                                       ; $5247: $62
    ld l, e                                       ; $5248: $6b
    inc hl                                        ; $5249: $23
    ld [hl], a                                    ; $524a: $77
    ld a, $02                                     ; $524b: $3e $02
    ldh [$96], a                                  ; $524d: $e0 $96
    ldh [rSVBK], a                                ; $524f: $e0 $70
    ld [hl], b                                    ; $5251: $70
    ld a, $03                                     ; $5252: $3e $03
    ldh [$96], a                                  ; $5254: $e0 $96
    ldh [rSVBK], a                                ; $5256: $e0 $70
    pop hl                                        ; $5258: $e1
    ld a, [hl+]                                   ; $5259: $2a
    push hl                                       ; $525a: $e5
    ld h, $00                                     ; $525b: $26 $00
    ld l, $40                                     ; $525d: $2e $40
    add hl, de                                    ; $525f: $19
    ld d, h                                       ; $5260: $54
    ld e, l                                       ; $5261: $5d
    ld [hl], a                                    ; $5262: $77
    ld a, $02                                     ; $5263: $3e $02
    ldh [$96], a                                  ; $5265: $e0 $96
    ldh [rSVBK], a                                ; $5267: $e0 $70
    ld [hl], b                                    ; $5269: $70
    ld a, $03                                     ; $526a: $3e $03
    ldh [$96], a                                  ; $526c: $e0 $96
    ldh [rSVBK], a                                ; $526e: $e0 $70
    pop hl                                        ; $5270: $e1
    ld a, [hl+]                                   ; $5271: $2a
    ld h, d                                       ; $5272: $62
    ld l, e                                       ; $5273: $6b
    inc hl                                        ; $5274: $23
    ld [hl], a                                    ; $5275: $77
    ld a, $02                                     ; $5276: $3e $02
    ldh [$96], a                                  ; $5278: $e0 $96
    ldh [rSVBK], a                                ; $527a: $e0 $70
    ld [hl], b                                    ; $527c: $70
    pop af                                        ; $527d: $f1
    ldh [$96], a                                  ; $527e: $e0 $96
    ldh [rSVBK], a                                ; $5280: $e0 $70
    pop hl                                        ; $5282: $e1
    pop de                                        ; $5283: $d1
    pop bc                                        ; $5284: $c1
    pop af                                        ; $5285: $f1
    ret                                           ; $5286: $c9


    rst $08                                       ; $5287: $cf
    rst $10                                       ; $5288: $d7
    adc [hl]                                      ; $5289: $8e
    ret c                                         ; $528a: $d8

    sub b                                         ; $528b: $90
    ret c                                         ; $528c: $d8

    ld l, h                                       ; $528d: $6c
    ld l, l                                       ; $528e: $6d
    ld l, [hl]                                    ; $528f: $6e
    ld l, a                                       ; $5290: $6f
    ld [hl], d                                    ; $5291: $72
    ld [hl], e                                    ; $5292: $73
    ld a, d                                       ; $5293: $7a
    ld a, e                                       ; $5294: $7b
    ld a, h                                       ; $5295: $7c
    ld a, l                                       ; $5296: $7d
    ld a, [hl]                                    ; $5297: $7e
    ld a, a                                       ; $5298: $7f
    add [hl]                                      ; $5299: $86
    add a                                         ; $529a: $87
    adc b                                         ; $529b: $88
    adc c                                         ; $529c: $89
    adc d                                         ; $529d: $8a
    adc e                                         ; $529e: $8b
    dec c                                         ; $529f: $0d
    rrca                                          ; $52a0: $0f
    ld c, $f5                                     ; $52a1: $0e $f5
    push bc                                       ; $52a3: $c5
    push de                                       ; $52a4: $d5
    push hl                                       ; $52a5: $e5
    ldh a, [$96]                                  ; $52a6: $f0 $96
    push af                                       ; $52a8: $f5
    call Call_00c_5665                            ; $52a9: $cd $65 $56
    ld a, $06                                     ; $52ac: $3e $06
    ldh [$96], a                                  ; $52ae: $e0 $96
    ldh [rSVBK], a                                ; $52b0: $e0 $70
    call Call_00c_579d                            ; $52b2: $cd $9d $57
    ld h, $00                                     ; $52b5: $26 $00
    ld l, e                                       ; $52b7: $6b
    ld a, e                                       ; $52b8: $7b
    or a                                          ; $52b9: $b7
    jr z, jr_00c_52e8                             ; $52ba: $28 $2c

    ld a, [$d215]                                 ; $52bc: $fa $15 $d2
    ld de, $d610                                  ; $52bf: $11 $10 $d6
    add e                                         ; $52c2: $83
    ld e, a                                       ; $52c3: $5f
    jr nc, jr_00c_52c7                            ; $52c4: $30 $01

    inc d                                         ; $52c6: $14

jr_00c_52c7:
    ld a, $03                                     ; $52c7: $3e $03
    ldh [$96], a                                  ; $52c9: $e0 $96
    ldh [rSVBK], a                                ; $52cb: $e0 $70
    ld a, $03                                     ; $52cd: $3e $03
    call Call_000_21f0                            ; $52cf: $cd $f0 $21
    call Call_00c_50c4                            ; $52d2: $cd $c4 $50
    ld a, $06                                     ; $52d5: $3e $06
    ldh [$96], a                                  ; $52d7: $e0 $96
    ldh [rSVBK], a                                ; $52d9: $e0 $70
    ld a, [$d226]                                 ; $52db: $fa $26 $d2
    ld b, a                                       ; $52de: $47
    ld a, [$d214]                                 ; $52df: $fa $14 $d2
    cp b                                          ; $52e2: $b8
    jr z, jr_00c_52e8                             ; $52e3: $28 $03

    call Call_00c_5153                            ; $52e5: $cd $53 $51

jr_00c_52e8:
    ld a, $06                                     ; $52e8: $3e $06
    ldh [$96], a                                  ; $52ea: $e0 $96
    ldh [rSVBK], a                                ; $52ec: $e0 $70
    ld a, [$d214]                                 ; $52ee: $fa $14 $d2
    push af                                       ; $52f1: $f5
    ld a, [$d226]                                 ; $52f2: $fa $26 $d2
    ld b, a                                       ; $52f5: $47
    ld a, $03                                     ; $52f6: $3e $03
    ldh [$96], a                                  ; $52f8: $e0 $96
    ldh [rSVBK], a                                ; $52fa: $e0 $70
    pop af                                        ; $52fc: $f1
    ld c, a                                       ; $52fd: $4f
    push bc                                       ; $52fe: $c5
    call Call_00c_5820                            ; $52ff: $cd $20 $58
    ld a, h                                       ; $5302: $7c
    or l                                          ; $5303: $b5
    pop bc                                        ; $5304: $c1
    jp z, Jump_00c_55a5                           ; $5305: $ca $a5 $55

    ld a, $06                                     ; $5308: $3e $06
    ldh [$96], a                                  ; $530a: $e0 $96
    ldh [rSVBK], a                                ; $530c: $e0 $70
    ld a, [$d215]                                 ; $530e: $fa $15 $d2
    ld de, $d110                                  ; $5311: $11 $10 $d1
    add e                                         ; $5314: $83
    ld e, a                                       ; $5315: $5f
    jr nc, jr_00c_5319                            ; $5316: $30 $01

    inc d                                         ; $5318: $14

jr_00c_5319:
    ld a, $03                                     ; $5319: $3e $03
    ldh [$96], a                                  ; $531b: $e0 $96
    ldh [rSVBK], a                                ; $531d: $e0 $70
    ld a, $03                                     ; $531f: $3e $03
    call Call_000_21f0                            ; $5321: $cd $f0 $21
    ld a, c                                       ; $5324: $79
    push af                                       ; $5325: $f5
    call Call_00c_5843                            ; $5326: $cd $43 $58
    push hl                                       ; $5329: $e5
    ld a, $06                                     ; $532a: $3e $06
    ldh [$96], a                                  ; $532c: $e0 $96
    ldh [rSVBK], a                                ; $532e: $e0 $70
    ld a, [$d215]                                 ; $5330: $fa $15 $d2
    ld hl, $d18f                                  ; $5333: $21 $8f $d1
    add l                                         ; $5336: $85
    ld l, a                                       ; $5337: $6f
    jr nc, jr_00c_533b                            ; $5338: $30 $01

    inc h                                         ; $533a: $24

jr_00c_533b:
    ld a, $03                                     ; $533b: $3e $03
    ldh [$96], a                                  ; $533d: $e0 $96
    ldh [rSVBK], a                                ; $533f: $e0 $70
    ld a, d                                       ; $5341: $7a
    cp $02                                        ; $5342: $fe $02
    jr z, jr_00c_5352                             ; $5344: $28 $0c

    cp $01                                        ; $5346: $fe $01
    jr z, jr_00c_534e                             ; $5348: $28 $04

    ld a, $2b                                     ; $534a: $3e $2b
    jr jr_00c_5354                                ; $534c: $18 $06

jr_00c_534e:
    ld a, $2d                                     ; $534e: $3e $2d
    jr jr_00c_5354                                ; $5350: $18 $02

jr_00c_5352:
    ld a, $60                                     ; $5352: $3e $60

jr_00c_5354:
    ld d, h                                       ; $5354: $54
    ld e, l                                       ; $5355: $5d
    pop hl                                        ; $5356: $e1
    push af                                       ; $5357: $f5
    push hl                                       ; $5358: $e5
    ld a, $04                                     ; $5359: $3e $04
    call Call_000_21f0                            ; $535b: $cd $f0 $21
    pop hl                                        ; $535e: $e1
    ld a, l                                       ; $535f: $7d
    cp $0a                                        ; $5360: $fe $0a
    jr c, jr_00c_536c                             ; $5362: $38 $08

    cp $64                                        ; $5364: $fe $64
    jr c, jr_00c_5370                             ; $5366: $38 $08

    ld l, $8f                                     ; $5368: $2e $8f
    jr jr_00c_5372                                ; $536a: $18 $06

jr_00c_536c:
    ld l, $91                                     ; $536c: $2e $91
    jr jr_00c_5372                                ; $536e: $18 $02

jr_00c_5370:
    ld l, $90                                     ; $5370: $2e $90

jr_00c_5372:
    ld h, $d1                                     ; $5372: $26 $d1
    ld a, $06                                     ; $5374: $3e $06
    ldh [$96], a                                  ; $5376: $e0 $96
    ldh [rSVBK], a                                ; $5378: $e0 $70
    ld a, [$d215]                                 ; $537a: $fa $15 $d2
    add l                                         ; $537d: $85
    ld l, a                                       ; $537e: $6f
    jr nc, jr_00c_5382                            ; $537f: $30 $01

    inc h                                         ; $5381: $24

jr_00c_5382:
    ld a, $03                                     ; $5382: $3e $03
    ldh [$96], a                                  ; $5384: $e0 $96
    ldh [rSVBK], a                                ; $5386: $e0 $70
    pop af                                        ; $5388: $f1
    ld [hl], a                                    ; $5389: $77
    ld a, $06                                     ; $538a: $3e $06
    ldh [$96], a                                  ; $538c: $e0 $96
    ldh [rSVBK], a                                ; $538e: $e0 $70
    ld a, $04                                     ; $5390: $3e $04
    ld [$d23c], a                                 ; $5392: $ea $3c $d2
    ld a, $03                                     ; $5395: $3e $03
    ld [$d23d], a                                 ; $5397: $ea $3d $d2
    pop af                                        ; $539a: $f1
    push af                                       ; $539b: $f5
    call Call_00c_58cc                            ; $539c: $cd $cc $58
    ld a, $12                                     ; $539f: $3e $12
    add l                                         ; $53a1: $85
    ld l, a                                       ; $53a2: $6f
    jr nc, jr_00c_53a6                            ; $53a3: $30 $01

    inc h                                         ; $53a5: $24

jr_00c_53a6:
    bit 7, h                                      ; $53a6: $cb $7c
    jr z, jr_00c_53ae                             ; $53a8: $28 $04

    ld h, $00                                     ; $53aa: $26 $00
    ld l, $00                                     ; $53ac: $2e $00

jr_00c_53ae:
    ld a, [$d215]                                 ; $53ae: $fa $15 $d2
    ld de, $d20e                                  ; $53b1: $11 $0e $d2
    add e                                         ; $53b4: $83
    ld e, a                                       ; $53b5: $5f
    jr nc, jr_00c_53b9                            ; $53b6: $30 $01

    inc d                                         ; $53b8: $14

jr_00c_53b9:
    ld a, $03                                     ; $53b9: $3e $03
    ldh [$96], a                                  ; $53bb: $e0 $96
    ldh [rSVBK], a                                ; $53bd: $e0 $70
    ld a, $05                                     ; $53bf: $3e $05
    call Call_000_21f0                            ; $53c1: $cd $f0 $21
    ld a, $06                                     ; $53c4: $3e $06
    ldh [$96], a                                  ; $53c6: $e0 $96
    ldh [rSVBK], a                                ; $53c8: $e0 $70
    pop af                                        ; $53ca: $f1
    push af                                       ; $53cb: $f5
    call Call_00c_5955                            ; $53cc: $cd $55 $59
    ld a, [$d215]                                 ; $53cf: $fa $15 $d2
    ld de, $d28d                                  ; $53d2: $11 $8d $d2
    add e                                         ; $53d5: $83
    ld e, a                                       ; $53d6: $5f
    jr nc, jr_00c_53da                            ; $53d7: $30 $01

    inc d                                         ; $53d9: $14

jr_00c_53da:
    ld a, $03                                     ; $53da: $3e $03
    ldh [$96], a                                  ; $53dc: $e0 $96
    ldh [rSVBK], a                                ; $53de: $e0 $70
    ld a, $05                                     ; $53e0: $3e $05
    call Call_000_21f0                            ; $53e2: $cd $f0 $21
    ld a, $06                                     ; $53e5: $3e $06
    ldh [$96], a                                  ; $53e7: $e0 $96
    ldh [rSVBK], a                                ; $53e9: $e0 $70
    ld a, $09                                     ; $53eb: $3e $09
    ld [$d23c], a                                 ; $53ed: $ea $3c $d2
    ld a, $08                                     ; $53f0: $3e $08
    ld [$d23d], a                                 ; $53f2: $ea $3d $d2
    pop af                                        ; $53f5: $f1
    push af                                       ; $53f6: $f5
    call Call_00c_58cc                            ; $53f7: $cd $cc $58
    bit 7, h                                      ; $53fa: $cb $7c
    jr z, jr_00c_5402                             ; $53fc: $28 $04

    ld h, $00                                     ; $53fe: $26 $00
    ld l, $00                                     ; $5400: $2e $00

jr_00c_5402:
    ld a, [$d215]                                 ; $5402: $fa $15 $d2
    ld de, $d30d                                  ; $5405: $11 $0d $d3
    add e                                         ; $5408: $83
    ld e, a                                       ; $5409: $5f
    jr nc, jr_00c_540d                            ; $540a: $30 $01

    inc d                                         ; $540c: $14

jr_00c_540d:
    ld a, $03                                     ; $540d: $3e $03
    ldh [$96], a                                  ; $540f: $e0 $96
    ldh [rSVBK], a                                ; $5411: $e0 $70
    ld a, $05                                     ; $5413: $3e $05
    call Call_000_21f0                            ; $5415: $cd $f0 $21
    ld a, $06                                     ; $5418: $3e $06
    ldh [$96], a                                  ; $541a: $e0 $96
    ldh [rSVBK], a                                ; $541c: $e0 $70
    ld a, $0c                                     ; $541e: $3e $0c
    ld [$d23c], a                                 ; $5420: $ea $3c $d2
    ld a, $0b                                     ; $5423: $3e $0b
    ld [$d23d], a                                 ; $5425: $ea $3d $d2
    pop af                                        ; $5428: $f1
    push af                                       ; $5429: $f5
    call Call_00c_59a5                            ; $542a: $cd $a5 $59
    bit 7, h                                      ; $542d: $cb $7c
    jr z, jr_00c_5435                             ; $542f: $28 $04

    ld h, $00                                     ; $5431: $26 $00
    ld l, $00                                     ; $5433: $2e $00

jr_00c_5435:
    ld a, [$d215]                                 ; $5435: $fa $15 $d2
    ld de, $d38d                                  ; $5438: $11 $8d $d3
    add e                                         ; $543b: $83
    ld e, a                                       ; $543c: $5f
    jr nc, jr_00c_5440                            ; $543d: $30 $01

    inc d                                         ; $543f: $14

jr_00c_5440:
    ld a, $03                                     ; $5440: $3e $03
    ldh [$96], a                                  ; $5442: $e0 $96
    ldh [rSVBK], a                                ; $5444: $e0 $70
    ld a, $05                                     ; $5446: $3e $05
    call Call_000_21f0                            ; $5448: $cd $f0 $21
    ld a, $06                                     ; $544b: $3e $06
    ldh [$96], a                                  ; $544d: $e0 $96
    ldh [rSVBK], a                                ; $544f: $e0 $70
    ld a, $0e                                     ; $5451: $3e $0e
    ld [$d23c], a                                 ; $5453: $ea $3c $d2
    ld a, $0d                                     ; $5456: $3e $0d
    ld [$d23d], a                                 ; $5458: $ea $3d $d2
    pop af                                        ; $545b: $f1
    push af                                       ; $545c: $f5
    call Call_00c_5a31                            ; $545d: $cd $31 $5a
    bit 7, h                                      ; $5460: $cb $7c
    jr z, jr_00c_5468                             ; $5462: $28 $04

    ld h, $00                                     ; $5464: $26 $00
    ld l, $00                                     ; $5466: $2e $00

jr_00c_5468:
    ld a, l                                       ; $5468: $7d
    push af                                       ; $5469: $f5
    ld c, $00                                     ; $546a: $0e $00

jr_00c_546c:
    cp $0a                                        ; $546c: $fe $0a
    jr c, jr_00c_5475                             ; $546e: $38 $05

    inc c                                         ; $5470: $0c
    add $f6                                       ; $5471: $c6 $f6
    jr jr_00c_546c                                ; $5473: $18 $f7

jr_00c_5475:
    ld a, c                                       ; $5475: $79
    add a                                         ; $5476: $87
    add a                                         ; $5477: $87
    add a                                         ; $5478: $87
    add c                                         ; $5479: $81
    add c                                         ; $547a: $81
    ld c, a                                       ; $547b: $4f
    ld h, $00                                     ; $547c: $26 $00
    ld l, c                                       ; $547e: $69
    push bc                                       ; $547f: $c5
    ld a, [$d215]                                 ; $5480: $fa $15 $d2
    ld de, $d410                                  ; $5483: $11 $10 $d4
    add e                                         ; $5486: $83
    ld e, a                                       ; $5487: $5f
    jr nc, jr_00c_548b                            ; $5488: $30 $01

    inc d                                         ; $548a: $14

jr_00c_548b:
    ld a, $03                                     ; $548b: $3e $03
    ldh [$96], a                                  ; $548d: $e0 $96
    ldh [rSVBK], a                                ; $548f: $e0 $70
    ld a, $01                                     ; $5491: $3e $01
    call Call_000_21f0                            ; $5493: $cd $f0 $21
    ld a, $06                                     ; $5496: $3e $06
    ldh [$96], a                                  ; $5498: $e0 $96
    ldh [rSVBK], a                                ; $549a: $e0 $70
    ld a, [$d215]                                 ; $549c: $fa $15 $d2
    ld hl, $d411                                  ; $549f: $21 $11 $d4
    add l                                         ; $54a2: $85
    ld l, a                                       ; $54a3: $6f
    jr nc, jr_00c_54a7                            ; $54a4: $30 $01

    inc h                                         ; $54a6: $24

jr_00c_54a7:
    ld a, $03                                     ; $54a7: $3e $03
    ldh [$96], a                                  ; $54a9: $e0 $96
    ldh [rSVBK], a                                ; $54ab: $e0 $70
    ld [hl], $2e                                  ; $54ad: $36 $2e
    ld a, $06                                     ; $54af: $3e $06
    ldh [$96], a                                  ; $54b1: $e0 $96
    ldh [rSVBK], a                                ; $54b3: $e0 $70
    pop bc                                        ; $54b5: $c1
    pop af                                        ; $54b6: $f1
    sub c                                         ; $54b7: $91
    ld h, $00                                     ; $54b8: $26 $00
    ld l, a                                       ; $54ba: $6f
    ld a, [$d215]                                 ; $54bb: $fa $15 $d2
    ld de, $d412                                  ; $54be: $11 $12 $d4
    add e                                         ; $54c1: $83
    ld e, a                                       ; $54c2: $5f
    jr nc, jr_00c_54c6                            ; $54c3: $30 $01

    inc d                                         ; $54c5: $14

jr_00c_54c6:
    ld a, $03                                     ; $54c6: $3e $03
    ldh [$96], a                                  ; $54c8: $e0 $96
    ldh [rSVBK], a                                ; $54ca: $e0 $70
    ld a, $01                                     ; $54cc: $3e $01
    call Call_000_21f0                            ; $54ce: $cd $f0 $21
    ld a, $06                                     ; $54d1: $3e $06
    ldh [$96], a                                  ; $54d3: $e0 $96
    ldh [rSVBK], a                                ; $54d5: $e0 $70
    ld a, $11                                     ; $54d7: $3e $11
    ld [$d23c], a                                 ; $54d9: $ea $3c $d2
    ld a, $10                                     ; $54dc: $3e $10
    ld [$d23d], a                                 ; $54de: $ea $3d $d2
    pop af                                        ; $54e1: $f1
    push af                                       ; $54e2: $f5
    call Call_00c_59a5                            ; $54e3: $cd $a5 $59
    bit 7, h                                      ; $54e6: $cb $7c
    jr z, jr_00c_54ee                             ; $54e8: $28 $04

    ld h, $00                                     ; $54ea: $26 $00
    ld l, $00                                     ; $54ec: $2e $00

jr_00c_54ee:
    ld a, [$d215]                                 ; $54ee: $fa $15 $d2
    ld de, $d48d                                  ; $54f1: $11 $8d $d4
    add e                                         ; $54f4: $83
    ld e, a                                       ; $54f5: $5f
    jr nc, jr_00c_54f9                            ; $54f6: $30 $01

    inc d                                         ; $54f8: $14

jr_00c_54f9:
    ld a, $03                                     ; $54f9: $3e $03
    ldh [$96], a                                  ; $54fb: $e0 $96
    ldh [rSVBK], a                                ; $54fd: $e0 $70
    ld a, $05                                     ; $54ff: $3e $05
    call Call_000_21f0                            ; $5501: $cd $f0 $21
    ld a, $06                                     ; $5504: $3e $06
    ldh [$96], a                                  ; $5506: $e0 $96
    ldh [rSVBK], a                                ; $5508: $e0 $70
    ld a, $13                                     ; $550a: $3e $13
    ld [$d23c], a                                 ; $550c: $ea $3c $d2
    ld a, $12                                     ; $550f: $3e $12
    ld [$d23d], a                                 ; $5511: $ea $3d $d2
    pop af                                        ; $5514: $f1
    push af                                       ; $5515: $f5
    call Call_00c_59a5                            ; $5516: $cd $a5 $59
    bit 7, h                                      ; $5519: $cb $7c
    jr z, jr_00c_5521                             ; $551b: $28 $04

    ld h, $00                                     ; $551d: $26 $00
    ld l, $00                                     ; $551f: $2e $00

jr_00c_5521:
    ld a, [$d215]                                 ; $5521: $fa $15 $d2
    ld de, $d50d                                  ; $5524: $11 $0d $d5
    add e                                         ; $5527: $83
    ld e, a                                       ; $5528: $5f
    jr nc, jr_00c_552c                            ; $5529: $30 $01

    inc d                                         ; $552b: $14

jr_00c_552c:
    ld a, $03                                     ; $552c: $3e $03
    ldh [$96], a                                  ; $552e: $e0 $96
    ldh [rSVBK], a                                ; $5530: $e0 $70
    ld a, $05                                     ; $5532: $3e $05
    call Call_000_21f0                            ; $5534: $cd $f0 $21
    ld a, $06                                     ; $5537: $3e $06
    ldh [$96], a                                  ; $5539: $e0 $96
    ldh [rSVBK], a                                ; $553b: $e0 $70
    ld a, $15                                     ; $553d: $3e $15
    ld [$d23c], a                                 ; $553f: $ea $3c $d2
    ld a, $14                                     ; $5542: $3e $14
    ld [$d23d], a                                 ; $5544: $ea $3d $d2
    pop af                                        ; $5547: $f1
    call Call_00c_59a5                            ; $5548: $cd $a5 $59
    bit 7, h                                      ; $554b: $cb $7c
    jr z, jr_00c_5553                             ; $554d: $28 $04

    ld h, $00                                     ; $554f: $26 $00
    ld l, $00                                     ; $5551: $2e $00

jr_00c_5553:
    ld a, [$d215]                                 ; $5553: $fa $15 $d2
    ld de, $d58d                                  ; $5556: $11 $8d $d5
    add e                                         ; $5559: $83
    ld e, a                                       ; $555a: $5f
    jr nc, jr_00c_555e                            ; $555b: $30 $01

    inc d                                         ; $555d: $14

jr_00c_555e:
    ld a, $03                                     ; $555e: $3e $03
    ldh [$96], a                                  ; $5560: $e0 $96
    ldh [rSVBK], a                                ; $5562: $e0 $70
    ld a, $05                                     ; $5564: $3e $05
    call Call_000_21f0                            ; $5566: $cd $f0 $21
    call Call_00c_5001                            ; $5569: $cd $01 $50
    ld a, $06                                     ; $556c: $3e $06
    ldh [$96], a                                  ; $556e: $e0 $96
    ldh [rSVBK], a                                ; $5570: $e0 $70
    ld a, [$d226]                                 ; $5572: $fa $26 $d2
    ld b, a                                       ; $5575: $47
    ld a, [$d214]                                 ; $5576: $fa $14 $d2
    cp b                                          ; $5579: $b8
    jr z, jr_00c_55a5                             ; $557a: $28 $29

    ld a, [$d214]                                 ; $557c: $fa $14 $d2
    ld h, a                                       ; $557f: $67
    inc h                                         ; $5580: $24
    ld l, $15                                     ; $5581: $2e $15
    rst $18                                       ; $5583: $df
    ld c, h                                       ; $5584: $4c
    ld [bc], a                                    ; $5585: $02
    jr z, jr_00c_558d                             ; $5586: $28 $05

    ld c, $00                                     ; $5588: $0e $00
    call Call_00c_51d2                            ; $558a: $cd $d2 $51

jr_00c_558d:
    ld l, $16                                     ; $558d: $2e $16
    rst $18                                       ; $558f: $df
    ld c, h                                       ; $5590: $4c
    ld [bc], a                                    ; $5591: $02
    jr z, jr_00c_5599                             ; $5592: $28 $05

    ld c, $01                                     ; $5594: $0e $01
    call Call_00c_51d2                            ; $5596: $cd $d2 $51

jr_00c_5599:
    ld l, $17                                     ; $5599: $2e $17
    rst $18                                       ; $559b: $df
    ld c, h                                       ; $559c: $4c
    ld [bc], a                                    ; $559d: $02
    jr z, jr_00c_55a5                             ; $559e: $28 $05

    ld c, $02                                     ; $55a0: $0e $02
    call Call_00c_51d2                            ; $55a2: $cd $d2 $51

Jump_00c_55a5:
jr_00c_55a5:
    ld a, $01                                     ; $55a5: $3e $01
    rst $18                                       ; $55a7: $df
    inc b                                         ; $55a8: $04
    dec bc                                        ; $55a9: $0b
    rst $18                                       ; $55aa: $df
    inc a                                         ; $55ab: $3c
    inc b                                         ; $55ac: $04
    pop af                                        ; $55ad: $f1
    ldh [$96], a                                  ; $55ae: $e0 $96
    ldh [rSVBK], a                                ; $55b0: $e0 $70
    pop hl                                        ; $55b2: $e1
    pop de                                        ; $55b3: $d1
    pop bc                                        ; $55b4: $c1
    pop af                                        ; $55b5: $f1
    ret                                           ; $55b6: $c9


    push af                                       ; $55b7: $f5
    push bc                                       ; $55b8: $c5
    push de                                       ; $55b9: $d5
    push hl                                       ; $55ba: $e5
    ldh a, [$96]                                  ; $55bb: $f0 $96
    push af                                       ; $55bd: $f5
    ld a, $02                                     ; $55be: $3e $02
    ldh [$96], a                                  ; $55c0: $e0 $96
    ldh [rSVBK], a                                ; $55c2: $e0 $70
    ld hl, $4b12                                  ; $55c4: $21 $12 $4b
    ld de, $d000                                  ; $55c7: $11 $00 $d0
    call Call_000_0234                            ; $55ca: $cd $34 $02
    ld a, $03                                     ; $55cd: $3e $03
    ldh [$96], a                                  ; $55cf: $e0 $96
    ldh [rSVBK], a                                ; $55d1: $e0 $70
    ld hl, $4b10                                  ; $55d3: $21 $10 $4b
    ld de, $d000                                  ; $55d6: $11 $00 $d0
    call Call_000_0234                            ; $55d9: $cd $34 $02
    ld a, $06                                     ; $55dc: $3e $06
    ldh [$96], a                                  ; $55de: $e0 $96
    ldh [rSVBK], a                                ; $55e0: $e0 $70
    ld a, [$d215]                                 ; $55e2: $fa $15 $d2
    ld de, $d002                                  ; $55e5: $11 $02 $d0
    add e                                         ; $55e8: $83
    ld e, a                                       ; $55e9: $5f
    jr nc, jr_00c_55ed                            ; $55ea: $30 $01

    inc d                                         ; $55ec: $14

jr_00c_55ed:
    ld b, $40                                     ; $55ed: $06 $40
    ld a, $02                                     ; $55ef: $3e $02
    ldh [$96], a                                  ; $55f1: $e0 $96
    ldh [rSVBK], a                                ; $55f3: $e0 $70
    call Call_00c_4973                            ; $55f5: $cd $73 $49
    ld a, $06                                     ; $55f8: $3e $06
    ldh [$96], a                                  ; $55fa: $e0 $96
    ldh [rSVBK], a                                ; $55fc: $e0 $70
    ld a, [$d215]                                 ; $55fe: $fa $15 $d2
    ld de, $d002                                  ; $5601: $11 $02 $d0
    add e                                         ; $5604: $83
    ld e, a                                       ; $5605: $5f
    jr nc, jr_00c_5609                            ; $5606: $30 $01

    inc d                                         ; $5608: $14

jr_00c_5609:
    ld b, $40                                     ; $5609: $06 $40
    ld a, $03                                     ; $560b: $3e $03
    ldh [$96], a                                  ; $560d: $e0 $96
    ldh [rSVBK], a                                ; $560f: $e0 $70
    call Call_00c_499a                            ; $5611: $cd $9a $49
    ld a, $06                                     ; $5614: $3e $06
    ldh [$96], a                                  ; $5616: $e0 $96
    ldh [rSVBK], a                                ; $5618: $e0 $70
    ld a, [$d215]                                 ; $561a: $fa $15 $d2
    push af                                       ; $561d: $f5
    ld de, $d043                                  ; $561e: $11 $43 $d0
    add e                                         ; $5621: $83
    ld e, a                                       ; $5622: $5f
    jr nc, jr_00c_5626                            ; $5623: $30 $01

    inc d                                         ; $5625: $14

jr_00c_5626:
    pop af                                        ; $5626: $f1
    or a                                          ; $5627: $b7
    jr nz, jr_00c_562f                            ; $5628: $20 $05

    ld a, [$d214]                                 ; $562a: $fa $14 $d2
    jr jr_00c_563b                                ; $562d: $18 $0c

jr_00c_562f:
    ld a, [$d23b]                                 ; $562f: $fa $3b $d2
    or a                                          ; $5632: $b7
    jr nz, jr_00c_5639                            ; $5633: $20 $04

    ld a, $06                                     ; $5635: $3e $06
    jr jr_00c_563b                                ; $5637: $18 $02

jr_00c_5639:
    ld a, $05                                     ; $5639: $3e $05

jr_00c_563b:
    ld b, a                                       ; $563b: $47
    ld a, [$d23b]                                 ; $563c: $fa $3b $d2
    or a                                          ; $563f: $b7
    jr nz, jr_00c_5647                            ; $5640: $20 $05

    ld hl, $1105                                  ; $5642: $21 $05 $11
    jr jr_00c_564a                                ; $5645: $18 $03

jr_00c_5647:
    ld hl, $140a                                  ; $5647: $21 $0a $14

jr_00c_564a:
    ld a, b                                       ; $564a: $78
    add l                                         ; $564b: $85
    ld l, a                                       ; $564c: $6f
    jr nc, jr_00c_5650                            ; $564d: $30 $01

    inc h                                         ; $564f: $24

jr_00c_5650:
    ld a, $03                                     ; $5650: $3e $03
    ldh [$96], a                                  ; $5652: $e0 $96
    ldh [rSVBK], a                                ; $5654: $e0 $70
    ld c, $40                                     ; $5656: $0e $40
    rst $18                                       ; $5658: $df
    ld [hl+], a                                   ; $5659: $22
    dec b                                         ; $565a: $05
    pop af                                        ; $565b: $f1
    ldh [$96], a                                  ; $565c: $e0 $96
    ldh [rSVBK], a                                ; $565e: $e0 $70
    pop hl                                        ; $5660: $e1
    pop de                                        ; $5661: $d1
    pop bc                                        ; $5662: $c1
    pop af                                        ; $5663: $f1
    ret                                           ; $5664: $c9


Call_00c_5665:
    push af                                       ; $5665: $f5
    push bc                                       ; $5666: $c5
    push de                                       ; $5667: $d5
    push hl                                       ; $5668: $e5
    ldh a, [$96]                                  ; $5669: $f0 $96
    push af                                       ; $566b: $f5
    ld a, $02                                     ; $566c: $3e $02
    ldh [$96], a                                  ; $566e: $e0 $96
    ldh [rSVBK], a                                ; $5670: $e0 $70
    ld hl, $4b12                                  ; $5672: $21 $12 $4b
    ld de, $d000                                  ; $5675: $11 $00 $d0
    call Call_000_0234                            ; $5678: $cd $34 $02
    ld a, $03                                     ; $567b: $3e $03
    ldh [$96], a                                  ; $567d: $e0 $96
    ldh [rSVBK], a                                ; $567f: $e0 $70
    ld hl, $4b10                                  ; $5681: $21 $10 $4b
    ld de, $d000                                  ; $5684: $11 $00 $d0
    call Call_000_0234                            ; $5687: $cd $34 $02
    ld a, $06                                     ; $568a: $3e $06
    ldh [$96], a                                  ; $568c: $e0 $96
    ldh [rSVBK], a                                ; $568e: $e0 $70
    ld a, [$d23b]                                 ; $5690: $fa $3b $d2
    or a                                          ; $5693: $b7
    jr nz, jr_00c_56a8                            ; $5694: $20 $12

    ld hl, $570b                                  ; $5696: $21 $0b $57
    ld a, [$d215]                                 ; $5699: $fa $15 $d2
    or a                                          ; $569c: $b7
    jr nz, jr_00c_56a4                            ; $569d: $20 $05

    ld a, [$d214]                                 ; $569f: $fa $14 $d2
    jr jr_00c_56b8                                ; $56a2: $18 $14

jr_00c_56a4:
    ld a, $06                                     ; $56a4: $3e $06
    jr jr_00c_56b8                                ; $56a6: $18 $10

jr_00c_56a8:
    ld hl, $5719                                  ; $56a8: $21 $19 $57
    ld a, [$d215]                                 ; $56ab: $fa $15 $d2
    or a                                          ; $56ae: $b7
    jr nz, jr_00c_56b6                            ; $56af: $20 $05

    ld a, [$d214]                                 ; $56b1: $fa $14 $d2
    jr jr_00c_56b8                                ; $56b4: $18 $02

jr_00c_56b6:
    ld a, $05                                     ; $56b6: $3e $05

jr_00c_56b8:
    add a                                         ; $56b8: $87
    add l                                         ; $56b9: $85
    ld l, a                                       ; $56ba: $6f
    jr nc, jr_00c_56be                            ; $56bb: $30 $01

    inc h                                         ; $56bd: $24

jr_00c_56be:
    ld a, [hl+]                                   ; $56be: $2a
    ld h, [hl]                                    ; $56bf: $66
    ld l, a                                       ; $56c0: $6f
    ld a, $01                                     ; $56c1: $3e $01
    ldh [$96], a                                  ; $56c3: $e0 $96
    ldh [rSVBK], a                                ; $56c5: $e0 $70
    ld de, $d000                                  ; $56c7: $11 $00 $d0
    call Call_000_0234                            ; $56ca: $cd $34 $02
    ld hl, $d000                                  ; $56cd: $21 $00 $d0
    ld de, $a900                                  ; $56d0: $11 $00 $a9
    ld c, $0c                                     ; $56d3: $0e $0c
    call Call_000_04db                            ; $56d5: $cd $db $04
    ld a, $06                                     ; $56d8: $3e $06
    ldh [$96], a                                  ; $56da: $e0 $96
    ldh [rSVBK], a                                ; $56dc: $e0 $70
    ld a, [$d23b]                                 ; $56de: $fa $3b $d2
    or a                                          ; $56e1: $b7
    jr nz, jr_00c_56e8                            ; $56e2: $20 $04

    ld b, $0b                                     ; $56e4: $06 $0b
    jr jr_00c_56ea                                ; $56e6: $18 $02

jr_00c_56e8:
    ld b, $0c                                     ; $56e8: $06 $0c

jr_00c_56ea:
    ld a, [$d215]                                 ; $56ea: $fa $15 $d2
    ld hl, $d044                                  ; $56ed: $21 $44 $d0
    add l                                         ; $56f0: $85
    ld l, a                                       ; $56f1: $6f
    jr nc, jr_00c_56f5                            ; $56f2: $30 $01

    inc h                                         ; $56f4: $24

jr_00c_56f5:
    ld a, $02                                     ; $56f5: $3e $02
    ldh [$96], a                                  ; $56f7: $e0 $96
    ldh [rSVBK], a                                ; $56f9: $e0 $70
    ld a, b                                       ; $56fb: $78
    ld c, $0c                                     ; $56fc: $0e $0c
    call Call_00c_576d                            ; $56fe: $cd $6d $57
    pop af                                        ; $5701: $f1
    ldh [$96], a                                  ; $5702: $e0 $96
    ldh [rSVBK], a                                ; $5704: $e0 $70
    pop hl                                        ; $5706: $e1
    pop de                                        ; $5707: $d1
    pop bc                                        ; $5708: $c1
    pop af                                        ; $5709: $f1
    ret                                           ; $570a: $c9


    ld a, [bc]                                    ; $570b: $0a
    ld b, b                                       ; $570c: $40
    inc c                                         ; $570d: $0c
    ld b, b                                       ; $570e: $40
    ld c, $40                                     ; $570f: $0e $40
    db $10                                        ; $5711: $10
    ld b, b                                       ; $5712: $40
    ld [de], a                                    ; $5713: $12
    ld b, b                                       ; $5714: $40
    inc d                                         ; $5715: $14
    ld b, b                                       ; $5716: $40
    ld d, $40                                     ; $5717: $16 $40
    jr jr_00c_575b                                ; $5719: $18 $40

    ld a, [de]                                    ; $571b: $1a
    ld b, b                                       ; $571c: $40
    inc e                                         ; $571d: $1c
    ld b, b                                       ; $571e: $40
    ld e, $40                                     ; $571f: $1e $40
    jr nz, jr_00c_5763                            ; $5721: $20 $40

    ld [hl+], a                                   ; $5723: $22
    ld b, b                                       ; $5724: $40
    push af                                       ; $5725: $f5
    push bc                                       ; $5726: $c5
    push de                                       ; $5727: $d5
    push hl                                       ; $5728: $e5
    ldh a, [$96]                                  ; $5729: $f0 $96
    push af                                       ; $572b: $f5
    ld a, $06                                     ; $572c: $3e $06
    ldh [$96], a                                  ; $572e: $e0 $96
    ldh [rSVBK], a                                ; $5730: $e0 $70
    ld a, [$d215]                                 ; $5732: $fa $15 $d2
    ld hl, $d101                                  ; $5735: $21 $01 $d1
    add l                                         ; $5738: $85
    ld l, a                                       ; $5739: $6f
    jr nc, jr_00c_573d                            ; $573a: $30 $01

    inc h                                         ; $573c: $24

jr_00c_573d:
    ld b, $16                                     ; $573d: $06 $16

jr_00c_573f:
    push hl                                       ; $573f: $e5
    ld a, $02                                     ; $5740: $3e $02
    ldh [$96], a                                  ; $5742: $e0 $96
    ldh [rSVBK], a                                ; $5744: $e0 $70
    ld c, $0c                                     ; $5746: $0e $0c
    xor a                                         ; $5748: $af
    call Call_00c_576d                            ; $5749: $cd $6d $57
    pop hl                                        ; $574c: $e1
    push hl                                       ; $574d: $e5
    ld a, $03                                     ; $574e: $3e $03
    ldh [$96], a                                  ; $5750: $e0 $96
    ldh [rSVBK], a                                ; $5752: $e0 $70
    ld c, $0c                                     ; $5754: $0e $0c
    ld a, $20                                     ; $5756: $3e $20
    call Call_00c_576d                            ; $5758: $cd $6d $57

jr_00c_575b:
    pop hl                                        ; $575b: $e1
    ld de, $0040                                  ; $575c: $11 $40 $00
    add hl, de                                    ; $575f: $19
    dec b                                         ; $5760: $05
    jr nz, jr_00c_573f                            ; $5761: $20 $dc

jr_00c_5763:
    pop af                                        ; $5763: $f1
    ldh [$96], a                                  ; $5764: $e0 $96
    ldh [rSVBK], a                                ; $5766: $e0 $70
    pop hl                                        ; $5768: $e1
    pop de                                        ; $5769: $d1
    pop bc                                        ; $576a: $c1
    pop af                                        ; $576b: $f1
    ret                                           ; $576c: $c9


Call_00c_576d:
jr_00c_576d:
    ld [hl+], a                                   ; $576d: $22
    dec c                                         ; $576e: $0d
    jr nz, jr_00c_576d                            ; $576f: $20 $fc

    ret                                           ; $5771: $c9


    push af                                       ; $5772: $f5
    push bc                                       ; $5773: $c5
    push de                                       ; $5774: $d5
    push hl                                       ; $5775: $e5
    ldh a, [$96]                                  ; $5776: $f0 $96
    push af                                       ; $5778: $f5
    rst $18                                       ; $5779: $df
    inc h                                         ; $577a: $24
    dec b                                         ; $577b: $05
    ld hl, $c600                                  ; $577c: $21 $00 $c6
    ld a, c                                       ; $577f: $79
    ldh [$96], a                                  ; $5780: $e0 $96
    ldh [rSVBK], a                                ; $5782: $e0 $70
    ld c, $14                                     ; $5784: $0e $14

jr_00c_5786:
    ld a, [hl+]                                   ; $5786: $2a
    or a                                          ; $5787: $b7
    jr z, jr_00c_5793                             ; $5788: $28 $09

    push hl                                       ; $578a: $e5
    ld h, d                                       ; $578b: $62
    ld l, e                                       ; $578c: $6b
    ld [hl], a                                    ; $578d: $77
    pop hl                                        ; $578e: $e1
    inc de                                        ; $578f: $13
    dec c                                         ; $5790: $0d
    jr nz, jr_00c_5786                            ; $5791: $20 $f3

jr_00c_5793:
    pop af                                        ; $5793: $f1
    ldh [$96], a                                  ; $5794: $e0 $96
    ldh [rSVBK], a                                ; $5796: $e0 $70
    pop hl                                        ; $5798: $e1
    pop de                                        ; $5799: $d1
    pop bc                                        ; $579a: $c1
    pop af                                        ; $579b: $f1
    ret                                           ; $579c: $c9


Call_00c_579d:
    push af                                       ; $579d: $f5
    push bc                                       ; $579e: $c5
    ld a, $06                                     ; $579f: $3e $06
    ldh [$96], a                                  ; $57a1: $e0 $96
    ldh [rSVBK], a                                ; $57a3: $e0 $70
    ld a, [$d226]                                 ; $57a5: $fa $26 $d2
    ld b, a                                       ; $57a8: $47
    ld a, [$d214]                                 ; $57a9: $fa $14 $d2
    cp b                                          ; $57ac: $b8
    jr z, jr_00c_57b4                             ; $57ad: $28 $05

    call Call_00c_57d0                            ; $57af: $cd $d0 $57
    jr jr_00c_57cd                                ; $57b2: $18 $19

jr_00c_57b4:
    ld c, $00                                     ; $57b4: $0e $00
    ld d, $00                                     ; $57b6: $16 $00

jr_00c_57b8:
    ld a, d                                       ; $57b8: $7a
    call Call_00c_5820                            ; $57b9: $cd $20 $58
    ld a, h                                       ; $57bc: $7c
    or l                                          ; $57bd: $b5
    jr z, jr_00c_57c7                             ; $57be: $28 $07

    ld a, d                                       ; $57c0: $7a
    call Call_00c_57d0                            ; $57c1: $cd $d0 $57
    ld a, c                                       ; $57c4: $79
    add e                                         ; $57c5: $83
    ld c, a                                       ; $57c6: $4f

jr_00c_57c7:
    inc d                                         ; $57c7: $14
    ld a, d                                       ; $57c8: $7a
    cp b                                          ; $57c9: $b8
    jr nz, jr_00c_57b8                            ; $57ca: $20 $ec

    ld e, c                                       ; $57cc: $59

jr_00c_57cd:
    pop bc                                        ; $57cd: $c1
    pop af                                        ; $57ce: $f1
    ret                                           ; $57cf: $c9


Call_00c_57d0:
    push af                                       ; $57d0: $f5
    push bc                                       ; $57d1: $c5
    ld h, a                                       ; $57d2: $67
    inc h                                         ; $57d3: $24
    ld l, $01                                     ; $57d4: $2e $01
    ld e, $00                                     ; $57d6: $1e $00

jr_00c_57d8:
    rst $18                                       ; $57d8: $df
    ld c, h                                       ; $57d9: $4c
    ld [bc], a                                    ; $57da: $02
    jr z, jr_00c_57de                             ; $57db: $28 $01

    inc e                                         ; $57dd: $1c

jr_00c_57de:
    inc l                                         ; $57de: $2c
    ld a, l                                       ; $57df: $7d
    cp $13                                        ; $57e0: $fe $13
    jr nz, jr_00c_57d8                            ; $57e2: $20 $f4

    pop bc                                        ; $57e4: $c1
    pop af                                        ; $57e5: $f1
    ret                                           ; $57e6: $c9


    push bc                                       ; $57e7: $c5
    push hl                                       ; $57e8: $e5
    push de                                       ; $57e9: $d5
    ld a, b                                       ; $57ea: $78
    call Call_00c_5acc                            ; $57eb: $cd $cc $5a
    ld a, $16                                     ; $57ee: $3e $16
    add l                                         ; $57f0: $85
    ld l, a                                       ; $57f1: $6f
    jr nc, jr_00c_57f5                            ; $57f2: $30 $01

    inc h                                         ; $57f4: $24

jr_00c_57f5:
    ld a, c                                       ; $57f5: $79
    cp $08                                        ; $57f6: $fe $08
    jr c, jr_00c_580f                             ; $57f8: $38 $15

    cp $10                                        ; $57fa: $fe $10
    jr c, jr_00c_5807                             ; $57fc: $38 $09

    inc hl                                        ; $57fe: $23
    inc hl                                        ; $57ff: $23
    ld a, c                                       ; $5800: $79
    sub $10                                       ; $5801: $d6 $10
    ld c, a                                       ; $5803: $4f
    ld b, [hl]                                    ; $5804: $46
    jr jr_00c_5810                                ; $5805: $18 $09

jr_00c_5807:
    inc hl                                        ; $5807: $23
    ld a, c                                       ; $5808: $79
    sub $08                                       ; $5809: $d6 $08
    ld c, a                                       ; $580b: $4f
    ld b, [hl]                                    ; $580c: $46
    jr jr_00c_5810                                ; $580d: $18 $01

jr_00c_580f:
    ld b, [hl]                                    ; $580f: $46

jr_00c_5810:
    ld a, c                                       ; $5810: $79
    or a                                          ; $5811: $b7
    jr z, jr_00c_5819                             ; $5812: $28 $05

jr_00c_5814:
    srl b                                         ; $5814: $cb $38
    dec a                                         ; $5816: $3d
    jr nz, jr_00c_5814                            ; $5817: $20 $fb

jr_00c_5819:
    ld a, b                                       ; $5819: $78
    and $01                                       ; $581a: $e6 $01
    pop de                                        ; $581c: $d1
    pop hl                                        ; $581d: $e1
    pop bc                                        ; $581e: $c1
    ret                                           ; $581f: $c9


Call_00c_5820:
    push af                                       ; $5820: $f5
    push bc                                       ; $5821: $c5
    cp b                                          ; $5822: $b8
    jr z, jr_00c_582d                             ; $5823: $28 $08

    call Call_00c_5acc                            ; $5825: $cd $cc $5a
    ld a, [hl+]                                   ; $5828: $2a
    ld h, [hl]                                    ; $5829: $66
    ld l, a                                       ; $582a: $6f
    jr jr_00c_5840                                ; $582b: $18 $13

jr_00c_582d:
    xor a                                         ; $582d: $af
    ld de, $0000                                  ; $582e: $11 $00 $00

jr_00c_5831:
    call Call_00c_5acc                            ; $5831: $cd $cc $5a
    push af                                       ; $5834: $f5
    ld a, [hl+]                                   ; $5835: $2a
    ld h, [hl]                                    ; $5836: $66
    ld l, a                                       ; $5837: $6f
    add hl, de                                    ; $5838: $19
    ld d, h                                       ; $5839: $54
    ld e, l                                       ; $583a: $5d
    pop af                                        ; $583b: $f1
    inc a                                         ; $583c: $3c
    cp b                                          ; $583d: $b8
    jr nz, jr_00c_5831                            ; $583e: $20 $f1

jr_00c_5840:
    pop bc                                        ; $5840: $c1
    pop af                                        ; $5841: $f1
    ret                                           ; $5842: $c9


Call_00c_5843:
    push af                                       ; $5843: $f5
    push bc                                       ; $5844: $c5
    cp b                                          ; $5845: $b8
    jr z, jr_00c_5856                             ; $5846: $28 $0e

    call Call_00c_5acc                            ; $5848: $cd $cc $5a
    ld a, $02                                     ; $584b: $3e $02
    add l                                         ; $584d: $85
    ld l, a                                       ; $584e: $6f
    jr nc, jr_00c_5852                            ; $584f: $30 $01

    inc h                                         ; $5851: $24

jr_00c_5852:
    ld a, [hl]                                    ; $5852: $7e
    ld e, a                                       ; $5853: $5f
    jr jr_00c_5899                                ; $5854: $18 $43

jr_00c_5856:
    ld c, $00                                     ; $5856: $0e $00
    ld e, $00                                     ; $5858: $1e $00
    xor a                                         ; $585a: $af

jr_00c_585b:
    call Call_00c_5820                            ; $585b: $cd $20 $58
    push af                                       ; $585e: $f5
    ld a, h                                       ; $585f: $7c
    or l                                          ; $5860: $b5
    pop hl                                        ; $5861: $e1
    ld a, h                                       ; $5862: $7c
    jr z, jr_00c_5874                             ; $5863: $28 $0f

    call Call_00c_5acc                            ; $5865: $cd $cc $5a
    ld a, $02                                     ; $5868: $3e $02
    add l                                         ; $586a: $85
    ld l, a                                       ; $586b: $6f
    jr nc, jr_00c_586f                            ; $586c: $30 $01

    inc h                                         ; $586e: $24

jr_00c_586f:
    ld a, [hl]                                    ; $586f: $7e
    ld e, a                                       ; $5870: $5f
    or a                                          ; $5871: $b7
    jr nz, jr_00c_5879                            ; $5872: $20 $05

jr_00c_5874:
    inc c                                         ; $5874: $0c
    ld a, c                                       ; $5875: $79
    cp b                                          ; $5876: $b8
    jr nz, jr_00c_585b                            ; $5877: $20 $e2

jr_00c_5879:
    xor a                                         ; $5879: $af

jr_00c_587a:
    call Call_00c_5820                            ; $587a: $cd $20 $58
    push af                                       ; $587d: $f5
    ld a, h                                       ; $587e: $7c
    or l                                          ; $587f: $b5
    pop hl                                        ; $5880: $e1
    ld a, h                                       ; $5881: $7c
    ld c, a                                       ; $5882: $4f
    jr z, jr_00c_5894                             ; $5883: $28 $0f

    call Call_00c_5acc                            ; $5885: $cd $cc $5a
    ld a, $02                                     ; $5888: $3e $02
    add l                                         ; $588a: $85
    ld l, a                                       ; $588b: $6f
    jr nc, jr_00c_588f                            ; $588c: $30 $01

    inc h                                         ; $588e: $24

jr_00c_588f:
    ld a, [hl]                                    ; $588f: $7e
    cp e                                          ; $5890: $bb
    jr nc, jr_00c_5894                            ; $5891: $30 $01

    ld e, a                                       ; $5893: $5f

jr_00c_5894:
    ld a, c                                       ; $5894: $79
    inc a                                         ; $5895: $3c
    cp b                                          ; $5896: $b8
    jr nz, jr_00c_587a                            ; $5897: $20 $e1

jr_00c_5899:
    ld h, $00                                     ; $5899: $26 $00
    ld l, e                                       ; $589b: $6b
    push hl                                       ; $589c: $e5
    ld de, $0036                                  ; $589d: $11 $36 $00
    ld a, l                                       ; $58a0: $7d
    sub e                                         ; $58a1: $93
    ld l, a                                       ; $58a2: $6f
    ld a, h                                       ; $58a3: $7c
    sbc d                                         ; $58a4: $9a
    ld h, a                                       ; $58a5: $67
    bit 7, h                                      ; $58a6: $cb $7c
    jr nz, jr_00c_58b5                            ; $58a8: $20 $0b

    ld a, h                                       ; $58aa: $7c
    or l                                          ; $58ab: $b5
    jr z, jr_00c_58c2                             ; $58ac: $28 $14

    ld d, h                                       ; $58ae: $54
    ld e, l                                       ; $58af: $5d
    pop hl                                        ; $58b0: $e1
    ld h, d                                       ; $58b1: $62
    ld l, e                                       ; $58b2: $6b
    jr jr_00c_58c9                                ; $58b3: $18 $14

jr_00c_58b5:
    pop hl                                        ; $58b5: $e1
    ld a, e                                       ; $58b6: $7b
    sub l                                         ; $58b7: $95
    ld e, a                                       ; $58b8: $5f
    ld a, d                                       ; $58b9: $7a
    sbc h                                         ; $58ba: $9c
    ld d, a                                       ; $58bb: $57
    ld h, d                                       ; $58bc: $62
    ld l, e                                       ; $58bd: $6b
    ld d, $01                                     ; $58be: $16 $01
    jr jr_00c_58c9                                ; $58c0: $18 $07

jr_00c_58c2:
    ld d, h                                       ; $58c2: $54
    ld e, l                                       ; $58c3: $5d
    pop hl                                        ; $58c4: $e1
    ld h, d                                       ; $58c5: $62
    ld l, e                                       ; $58c6: $6b
    ld d, $02                                     ; $58c7: $16 $02

jr_00c_58c9:
    pop bc                                        ; $58c9: $c1
    pop af                                        ; $58ca: $f1
    ret                                           ; $58cb: $c9


Call_00c_58cc:
    push af                                       ; $58cc: $f5
    push bc                                       ; $58cd: $c5
    cp b                                          ; $58ce: $b8
    jr z, jr_00c_58f2                             ; $58cf: $28 $21

    call Call_00c_5acc                            ; $58d1: $cd $cc $5a
    push hl                                       ; $58d4: $e5
    ld a, [$d23d]                                 ; $58d5: $fa $3d $d2
    add l                                         ; $58d8: $85
    ld l, a                                       ; $58d9: $6f
    jr nc, jr_00c_58dd                            ; $58da: $30 $01

    inc h                                         ; $58dc: $24

jr_00c_58dd:
    ld d, $00                                     ; $58dd: $16 $00
    ld e, [hl]                                    ; $58df: $5e
    pop hl                                        ; $58e0: $e1
    ld a, [$d23c]                                 ; $58e1: $fa $3c $d2
    add l                                         ; $58e4: $85
    ld l, a                                       ; $58e5: $6f
    jr nc, jr_00c_58e9                            ; $58e6: $30 $01

    inc h                                         ; $58e8: $24

jr_00c_58e9:
    ld a, [hl+]                                   ; $58e9: $2a
    ld h, [hl]                                    ; $58ea: $66
    ld l, a                                       ; $58eb: $6f
    call Call_000_09ae                            ; $58ec: $cd $ae $09
    jp Jump_00c_5952                              ; $58ef: $c3 $52 $59


jr_00c_58f2:
    xor a                                         ; $58f2: $af
    ld de, $0000                                  ; $58f3: $11 $00 $00

jr_00c_58f6:
    call Call_00c_5820                            ; $58f6: $cd $20 $58
    push af                                       ; $58f9: $f5
    ld a, h                                       ; $58fa: $7c
    or l                                          ; $58fb: $b5
    pop hl                                        ; $58fc: $e1
    ld a, h                                       ; $58fd: $7c
    jr z, jr_00c_5913                             ; $58fe: $28 $13

    call Call_00c_5acc                            ; $5900: $cd $cc $5a
    push af                                       ; $5903: $f5
    ld a, [$d23d]                                 ; $5904: $fa $3d $d2
    add l                                         ; $5907: $85
    ld l, a                                       ; $5908: $6f
    jr nc, jr_00c_590c                            ; $5909: $30 $01

    inc h                                         ; $590b: $24

jr_00c_590c:
    ld a, [hl]                                    ; $590c: $7e
    add e                                         ; $590d: $83
    ld e, a                                       ; $590e: $5f
    jr nc, jr_00c_5912                            ; $590f: $30 $01

    inc d                                         ; $5911: $14

jr_00c_5912:
    pop af                                        ; $5912: $f1

jr_00c_5913:
    inc a                                         ; $5913: $3c
    cp b                                          ; $5914: $b8
    jr nz, jr_00c_58f6                            ; $5915: $20 $df

    push de                                       ; $5917: $d5
    ld hl, $d244                                  ; $5918: $21 $44 $d2
    xor a                                         ; $591b: $af
    ld [hl], a                                    ; $591c: $77
    ld de, $0000                                  ; $591d: $11 $00 $00

jr_00c_5920:
    call Call_00c_5820                            ; $5920: $cd $20 $58
    push af                                       ; $5923: $f5
    ld a, h                                       ; $5924: $7c
    or l                                          ; $5925: $b5
    pop hl                                        ; $5926: $e1
    ld a, h                                       ; $5927: $7c
    jr z, jr_00c_5944                             ; $5928: $28 $1a

    call Call_00c_5acc                            ; $592a: $cd $cc $5a
    push af                                       ; $592d: $f5
    ld a, [$d23c]                                 ; $592e: $fa $3c $d2
    add l                                         ; $5931: $85
    ld l, a                                       ; $5932: $6f
    jr nc, jr_00c_5936                            ; $5933: $30 $01

    inc h                                         ; $5935: $24

jr_00c_5936:
    ld a, [hl+]                                   ; $5936: $2a
    ld h, [hl]                                    ; $5937: $66
    ld l, a                                       ; $5938: $6f
    add hl, de                                    ; $5939: $19
    ld d, h                                       ; $593a: $54
    ld e, l                                       ; $593b: $5d
    ld hl, $d244                                  ; $593c: $21 $44 $d2
    ld a, [hl]                                    ; $593f: $7e
    adc $00                                       ; $5940: $ce $00
    ld [hl], a                                    ; $5942: $77
    pop af                                        ; $5943: $f1

jr_00c_5944:
    inc a                                         ; $5944: $3c
    cp b                                          ; $5945: $b8
    jr nz, jr_00c_5920                            ; $5946: $20 $d8

    ld hl, $d244                                  ; $5948: $21 $44 $d2
    ld a, [hl]                                    ; $594b: $7e
    ld l, e                                       ; $594c: $6b
    ld h, d                                       ; $594d: $62
    pop de                                        ; $594e: $d1
    call Call_000_0ddb                            ; $594f: $cd $db $0d

Jump_00c_5952:
    pop bc                                        ; $5952: $c1
    pop af                                        ; $5953: $f1
    ret                                           ; $5954: $c9


Call_00c_5955:
    push af                                       ; $5955: $f5
    push bc                                       ; $5956: $c5
    cp b                                          ; $5957: $b8
    jr z, jr_00c_5969                             ; $5958: $28 $0f

    call Call_00c_5acc                            ; $595a: $cd $cc $5a
    ld a, $06                                     ; $595d: $3e $06
    add l                                         ; $595f: $85
    ld l, a                                       ; $5960: $6f
    jr nc, jr_00c_5964                            ; $5961: $30 $01

    inc h                                         ; $5963: $24

jr_00c_5964:
    ld a, [hl+]                                   ; $5964: $2a
    ld h, [hl]                                    ; $5965: $66
    ld l, a                                       ; $5966: $6f
    jr jr_00c_599c                                ; $5967: $18 $33

jr_00c_5969:
    xor a                                         ; $5969: $af
    ld de, $0000                                  ; $596a: $11 $00 $00

jr_00c_596d:
    call Call_00c_5820                            ; $596d: $cd $20 $58
    push af                                       ; $5970: $f5
    ld a, h                                       ; $5971: $7c
    or l                                          ; $5972: $b5
    pop hl                                        ; $5973: $e1
    ld a, h                                       ; $5974: $7c
    jr z, jr_00c_5996                             ; $5975: $28 $1f

    call Call_00c_5acc                            ; $5977: $cd $cc $5a
    push af                                       ; $597a: $f5
    ld a, $06                                     ; $597b: $3e $06
    add l                                         ; $597d: $85
    ld l, a                                       ; $597e: $6f
    jr nc, jr_00c_5982                            ; $597f: $30 $01

    inc h                                         ; $5981: $24

jr_00c_5982:
    ld a, [hl+]                                   ; $5982: $2a
    ld h, [hl]                                    ; $5983: $66
    ld l, a                                       ; $5984: $6f
    pop af                                        ; $5985: $f1
    push hl                                       ; $5986: $e5
    push af                                       ; $5987: $f5
    ld a, l                                       ; $5988: $7d
    sub e                                         ; $5989: $93
    ld l, a                                       ; $598a: $6f
    ld a, h                                       ; $598b: $7c
    sbc d                                         ; $598c: $9a
    ld h, a                                       ; $598d: $67
    pop af                                        ; $598e: $f1
    bit 7, h                                      ; $598f: $cb $7c
    pop hl                                        ; $5991: $e1
    jr nz, jr_00c_5996                            ; $5992: $20 $02

    ld d, h                                       ; $5994: $54
    ld e, l                                       ; $5995: $5d

jr_00c_5996:
    inc a                                         ; $5996: $3c
    cp b                                          ; $5997: $b8
    jr nz, jr_00c_596d                            ; $5998: $20 $d3

    ld h, d                                       ; $599a: $62
    ld l, e                                       ; $599b: $6b

jr_00c_599c:
    ld de, $0020                                  ; $599c: $11 $20 $00
    call Call_000_09ae                            ; $599f: $cd $ae $09
    pop bc                                        ; $59a2: $c1
    pop af                                        ; $59a3: $f1
    ret                                           ; $59a4: $c9


Call_00c_59a5:
    push af                                       ; $59a5: $f5
    push bc                                       ; $59a6: $c5
    cp b                                          ; $59a7: $b8
    jr z, jr_00c_59d2                             ; $59a8: $28 $28

    call Call_00c_5acc                            ; $59aa: $cd $cc $5a
    push hl                                       ; $59ad: $e5
    ld a, [$d23d]                                 ; $59ae: $fa $3d $d2
    add l                                         ; $59b1: $85
    ld l, a                                       ; $59b2: $6f
    jr nc, jr_00c_59b6                            ; $59b3: $30 $01

    inc h                                         ; $59b5: $24

jr_00c_59b6:
    ld d, $00                                     ; $59b6: $16 $00
    ld e, [hl]                                    ; $59b8: $5e
    pop hl                                        ; $59b9: $e1
    ld a, [$d23c]                                 ; $59ba: $fa $3c $d2
    add l                                         ; $59bd: $85
    ld l, a                                       ; $59be: $6f
    jr nc, jr_00c_59c2                            ; $59bf: $30 $01

    inc h                                         ; $59c1: $24

jr_00c_59c2:
    ld a, [hl+]                                   ; $59c2: $2a
    ld h, [hl]                                    ; $59c3: $66
    ld l, a                                       ; $59c4: $6f
    ld h, $00                                     ; $59c5: $26 $00
    ld a, $64                                     ; $59c7: $3e $64
    call Call_000_08b9                            ; $59c9: $cd $b9 $08
    call Call_000_09ae                            ; $59cc: $cd $ae $09
    jp Jump_00c_5a2e                              ; $59cf: $c3 $2e $5a


jr_00c_59d2:
    xor a                                         ; $59d2: $af
    ld de, $0000                                  ; $59d3: $11 $00 $00

jr_00c_59d6:
    call Call_00c_5820                            ; $59d6: $cd $20 $58
    push af                                       ; $59d9: $f5
    ld a, h                                       ; $59da: $7c
    or l                                          ; $59db: $b5
    pop hl                                        ; $59dc: $e1
    ld a, h                                       ; $59dd: $7c
    jr z, jr_00c_59f3                             ; $59de: $28 $13

    call Call_00c_5acc                            ; $59e0: $cd $cc $5a
    push af                                       ; $59e3: $f5
    ld a, [$d23d]                                 ; $59e4: $fa $3d $d2
    add l                                         ; $59e7: $85
    ld l, a                                       ; $59e8: $6f
    jr nc, jr_00c_59ec                            ; $59e9: $30 $01

    inc h                                         ; $59eb: $24

jr_00c_59ec:
    ld a, [hl]                                    ; $59ec: $7e
    add e                                         ; $59ed: $83
    ld e, a                                       ; $59ee: $5f
    jr nc, jr_00c_59f2                            ; $59ef: $30 $01

    inc d                                         ; $59f1: $14

jr_00c_59f2:
    pop af                                        ; $59f2: $f1

jr_00c_59f3:
    inc a                                         ; $59f3: $3c
    cp b                                          ; $59f4: $b8
    jr nz, jr_00c_59d6                            ; $59f5: $20 $df

    push de                                       ; $59f7: $d5
    xor a                                         ; $59f8: $af
    ld de, $0000                                  ; $59f9: $11 $00 $00

jr_00c_59fc:
    call Call_00c_5820                            ; $59fc: $cd $20 $58
    push af                                       ; $59ff: $f5
    ld a, h                                       ; $5a00: $7c
    or l                                          ; $5a01: $b5
    pop hl                                        ; $5a02: $e1
    ld a, h                                       ; $5a03: $7c
    jr z, jr_00c_5a1b                             ; $5a04: $28 $15

    call Call_00c_5acc                            ; $5a06: $cd $cc $5a
    push af                                       ; $5a09: $f5
    ld a, [$d23c]                                 ; $5a0a: $fa $3c $d2
    add l                                         ; $5a0d: $85
    ld l, a                                       ; $5a0e: $6f
    jr nc, jr_00c_5a12                            ; $5a0f: $30 $01

    inc h                                         ; $5a11: $24

jr_00c_5a12:
    ld a, [hl+]                                   ; $5a12: $2a
    ld h, [hl]                                    ; $5a13: $66
    ld l, a                                       ; $5a14: $6f
    ld h, $00                                     ; $5a15: $26 $00
    add hl, de                                    ; $5a17: $19
    ld d, h                                       ; $5a18: $54
    ld e, l                                       ; $5a19: $5d
    pop af                                        ; $5a1a: $f1

jr_00c_5a1b:
    inc a                                         ; $5a1b: $3c
    cp b                                          ; $5a1c: $b8
    jr nz, jr_00c_59fc                            ; $5a1d: $20 $dd

    ld h, d                                       ; $5a1f: $62
    ld l, e                                       ; $5a20: $6b
    ld a, $64                                     ; $5a21: $3e $64
    call Call_000_0bec                            ; $5a23: $cd $ec $0b
    ld b, a                                       ; $5a26: $47
    ld a, h                                       ; $5a27: $7c
    ld h, l                                       ; $5a28: $65
    ld l, b                                       ; $5a29: $68
    pop de                                        ; $5a2a: $d1
    call Call_000_0ddb                            ; $5a2b: $cd $db $0d

Jump_00c_5a2e:
    pop bc                                        ; $5a2e: $c1
    pop af                                        ; $5a2f: $f1
    ret                                           ; $5a30: $c9


Call_00c_5a31:
    push af                                       ; $5a31: $f5
    push bc                                       ; $5a32: $c5
    cp b                                          ; $5a33: $b8
    jr z, jr_00c_5a5c                             ; $5a34: $28 $26

    call Call_00c_5acc                            ; $5a36: $cd $cc $5a
    push hl                                       ; $5a39: $e5
    ld a, [$d23d]                                 ; $5a3a: $fa $3d $d2
    add l                                         ; $5a3d: $85
    ld l, a                                       ; $5a3e: $6f
    jr nc, jr_00c_5a42                            ; $5a3f: $30 $01

    inc h                                         ; $5a41: $24

jr_00c_5a42:
    ld d, $00                                     ; $5a42: $16 $00
    ld e, [hl]                                    ; $5a44: $5e
    pop hl                                        ; $5a45: $e1
    ld a, [$d23c]                                 ; $5a46: $fa $3c $d2
    add l                                         ; $5a49: $85
    ld l, a                                       ; $5a4a: $6f
    jr nc, jr_00c_5a4e                            ; $5a4b: $30 $01

    inc h                                         ; $5a4d: $24

jr_00c_5a4e:
    ld a, [hl+]                                   ; $5a4e: $2a
    ld h, [hl]                                    ; $5a4f: $66
    ld l, a                                       ; $5a50: $6f
    ld a, $0a                                     ; $5a51: $3e $0a
    call Call_000_08b9                            ; $5a53: $cd $b9 $08
    call Call_000_09ae                            ; $5a56: $cd $ae $09
    jp Jump_00c_5ac9                              ; $5a59: $c3 $c9 $5a


jr_00c_5a5c:
    xor a                                         ; $5a5c: $af
    ld de, $0000                                  ; $5a5d: $11 $00 $00

jr_00c_5a60:
    call Call_00c_5820                            ; $5a60: $cd $20 $58
    push af                                       ; $5a63: $f5
    ld a, h                                       ; $5a64: $7c
    or l                                          ; $5a65: $b5
    pop hl                                        ; $5a66: $e1
    ld a, h                                       ; $5a67: $7c
    jr z, jr_00c_5a7d                             ; $5a68: $28 $13

    call Call_00c_5acc                            ; $5a6a: $cd $cc $5a
    push af                                       ; $5a6d: $f5
    ld a, [$d23d]                                 ; $5a6e: $fa $3d $d2
    add l                                         ; $5a71: $85
    ld l, a                                       ; $5a72: $6f
    jr nc, jr_00c_5a76                            ; $5a73: $30 $01

    inc h                                         ; $5a75: $24

jr_00c_5a76:
    ld a, [hl]                                    ; $5a76: $7e
    add e                                         ; $5a77: $83
    ld e, a                                       ; $5a78: $5f
    jr nc, jr_00c_5a7c                            ; $5a79: $30 $01

    inc d                                         ; $5a7b: $14

jr_00c_5a7c:
    pop af                                        ; $5a7c: $f1

jr_00c_5a7d:
    inc a                                         ; $5a7d: $3c
    cp b                                          ; $5a7e: $b8
    jr nz, jr_00c_5a60                            ; $5a7f: $20 $df

    push de                                       ; $5a81: $d5
    ld hl, $d244                                  ; $5a82: $21 $44 $d2
    xor a                                         ; $5a85: $af
    ld [hl+], a                                   ; $5a86: $22
    ld de, $0000                                  ; $5a87: $11 $00 $00

jr_00c_5a8a:
    call Call_00c_5820                            ; $5a8a: $cd $20 $58
    push af                                       ; $5a8d: $f5
    ld a, h                                       ; $5a8e: $7c
    or l                                          ; $5a8f: $b5
    pop hl                                        ; $5a90: $e1
    ld a, h                                       ; $5a91: $7c
    jr z, jr_00c_5aae                             ; $5a92: $28 $1a

    call Call_00c_5acc                            ; $5a94: $cd $cc $5a
    push af                                       ; $5a97: $f5
    ld a, [$d23c]                                 ; $5a98: $fa $3c $d2
    add l                                         ; $5a9b: $85
    ld l, a                                       ; $5a9c: $6f
    jr nc, jr_00c_5aa0                            ; $5a9d: $30 $01

    inc h                                         ; $5a9f: $24

jr_00c_5aa0:
    ld a, [hl+]                                   ; $5aa0: $2a
    ld h, [hl]                                    ; $5aa1: $66
    ld l, a                                       ; $5aa2: $6f
    add hl, de                                    ; $5aa3: $19
    ld d, h                                       ; $5aa4: $54
    ld e, l                                       ; $5aa5: $5d
    ld hl, $d244                                  ; $5aa6: $21 $44 $d2
    ld a, [hl]                                    ; $5aa9: $7e
    adc $00                                       ; $5aaa: $ce $00
    ld [hl], a                                    ; $5aac: $77
    pop af                                        ; $5aad: $f1

jr_00c_5aae:
    inc a                                         ; $5aae: $3c
    cp b                                          ; $5aaf: $b8
    jr nz, jr_00c_5a8a                            ; $5ab0: $20 $d8

    ld hl, $d244                                  ; $5ab2: $21 $44 $d2
    ld a, [hl]                                    ; $5ab5: $7e
    ld b, a                                       ; $5ab6: $47
    add a                                         ; $5ab7: $87
    add a                                         ; $5ab8: $87
    add b                                         ; $5ab9: $80
    add a                                         ; $5aba: $87
    ld l, e                                       ; $5abb: $6b
    ld h, d                                       ; $5abc: $62
    ld b, $09                                     ; $5abd: $06 $09

jr_00c_5abf:
    add hl, de                                    ; $5abf: $19
    adc $00                                       ; $5ac0: $ce $00
    dec b                                         ; $5ac2: $05
    jr nz, jr_00c_5abf                            ; $5ac3: $20 $fa

    pop de                                        ; $5ac5: $d1
    call Call_000_0ddb                            ; $5ac6: $cd $db $0d

Jump_00c_5ac9:
    pop bc                                        ; $5ac9: $c1
    pop af                                        ; $5aca: $f1
    ret                                           ; $5acb: $c9


Call_00c_5acc:
    push af                                       ; $5acc: $f5
    push bc                                       ; $5acd: $c5
    push de                                       ; $5ace: $d5
    ld h, $00                                     ; $5acf: $26 $00
    ld l, a                                       ; $5ad1: $6f
    ld d, $00                                     ; $5ad2: $16 $00
    ld e, a                                       ; $5ad4: $5f
    add hl, hl                                    ; $5ad5: $29
    add hl, hl                                    ; $5ad6: $29
    add hl, hl                                    ; $5ad7: $29
    add hl, hl                                    ; $5ad8: $29
    add hl, de                                    ; $5ad9: $19
    add hl, de                                    ; $5ada: $19
    add hl, de                                    ; $5adb: $19
    add hl, de                                    ; $5adc: $19
    add hl, de                                    ; $5add: $19
    add hl, de                                    ; $5ade: $19
    add hl, de                                    ; $5adf: $19
    add hl, de                                    ; $5ae0: $19
    add hl, de                                    ; $5ae1: $19
    ld d, h                                       ; $5ae2: $54
    ld e, l                                       ; $5ae3: $5d
    ld hl, $c980                                  ; $5ae4: $21 $80 $c9
    add hl, de                                    ; $5ae7: $19
    pop de                                        ; $5ae8: $d1
    pop bc                                        ; $5ae9: $c1
    pop af                                        ; $5aea: $f1
    ret                                           ; $5aeb: $c9


    ld a, $06                                     ; $5aec: $3e $06
    ldh [$96], a                                  ; $5aee: $e0 $96
    ldh [rSVBK], a                                ; $5af0: $e0 $70
    call Call_00c_5b5a                            ; $5af2: $cd $5a $5b
    xor a                                         ; $5af5: $af
    ld [$d214], a                                 ; $5af6: $ea $14 $d2
    rst $18                                       ; $5af9: $df
    jr z, jr_00c_5b07                             ; $5afa: $28 $0b

    call Call_000_2b54                            ; $5afc: $cd $54 $2b
    ld b, $00                                     ; $5aff: $06 $00
    rst $18                                       ; $5b01: $df
    ld a, [hl+]                                   ; $5b02: $2a
    dec bc                                        ; $5b03: $0b
    rst $18                                       ; $5b04: $df
    ld l, $0b                                     ; $5b05: $2e $0b

jr_00c_5b07:
    call Call_00c_5caa                            ; $5b07: $cd $aa $5c
    ld a, $0f                                     ; $5b0a: $3e $0f
    ld hl, $4821                                  ; $5b0c: $21 $21 $48
    call Call_000_23e8                            ; $5b0f: $cd $e8 $23
    ld a, [$d226]                                 ; $5b12: $fa $26 $d2
    or a                                          ; $5b15: $b7
    jr z, jr_00c_5b24                             ; $5b16: $28 $0c

    cp $01                                        ; $5b18: $fe $01
    jr z, jr_00c_5b24                             ; $5b1a: $28 $08

    ld a, $1d                                     ; $5b1c: $3e $1d
    ld hl, $4894                                  ; $5b1e: $21 $94 $48
    call Call_000_23e8                            ; $5b21: $cd $e8 $23

jr_00c_5b24:
    call Call_000_2e3b                            ; $5b24: $cd $3b $2e
    ld c, $10                                     ; $5b27: $0e $10
    call Call_000_25af                            ; $5b29: $cd $af $25
    call Call_000_2625                            ; $5b2c: $cd $25 $26

jr_00c_5b2f:
    call Call_000_2e3b                            ; $5b2f: $cd $3b $2e
    call Call_00c_5c40                            ; $5b32: $cd $40 $5c
    cp $ff                                        ; $5b35: $fe $ff
    jr nz, jr_00c_5b2f                            ; $5b37: $20 $f6

    push af                                       ; $5b39: $f5
    ld hl, $4821                                  ; $5b3a: $21 $21 $48
    call Call_000_2449                            ; $5b3d: $cd $49 $24
    ld a, [$d226]                                 ; $5b40: $fa $26 $d2
    or a                                          ; $5b43: $b7
    jr z, jr_00c_5b50                             ; $5b44: $28 $0a

    cp $01                                        ; $5b46: $fe $01
    jr z, jr_00c_5b50                             ; $5b48: $28 $06

    ld hl, $4894                                  ; $5b4a: $21 $94 $48
    call Call_000_2449                            ; $5b4d: $cd $49 $24

jr_00c_5b50:
    ld c, $10                                     ; $5b50: $0e $10
    call Call_000_25a1                            ; $5b52: $cd $a1 $25
    call Call_000_2625                            ; $5b55: $cd $25 $26
    pop af                                        ; $5b58: $f1
    ret                                           ; $5b59: $c9


Call_00c_5b5a:
    ld a, $06                                     ; $5b5a: $3e $06
    ldh [$96], a                                  ; $5b5c: $e0 $96
    ldh [rSVBK], a                                ; $5b5e: $e0 $70
    xor a                                         ; $5b60: $af
    ldh [$8a], a                                  ; $5b61: $e0 $8a
    ldh [$8b], a                                  ; $5b63: $e0 $8b
    call Call_000_0341                            ; $5b65: $cd $41 $03
    call Call_000_23b6                            ; $5b68: $cd $b6 $23
    ld a, $01                                     ; $5b6b: $3e $01
    ldh [$96], a                                  ; $5b6d: $e0 $96
    ldh [rSVBK], a                                ; $5b6f: $e0 $70
    ld hl, $4b20                                  ; $5b71: $21 $20 $4b
    ld de, $d000                                  ; $5b74: $11 $00 $d0
    call Call_000_0234                            ; $5b77: $cd $34 $02
    ld hl, $d000                                  ; $5b7a: $21 $00 $d0
    ld de, $8e00                                  ; $5b7d: $11 $00 $8e
    ld c, $04                                     ; $5b80: $0e $04
    call Call_000_04db                            ; $5b82: $cd $db $04
    ld hl, $419b                                  ; $5b85: $21 $9b $41
    ld de, $0801                                  ; $5b88: $11 $01 $08
    call Call_000_0595                            ; $5b8b: $cd $95 $05
    ld hl, $4b1e                                  ; $5b8e: $21 $1e $4b
    ld de, $d000                                  ; $5b91: $11 $00 $d0
    call Call_000_0234                            ; $5b94: $cd $34 $02
    ld hl, $d000                                  ; $5b97: $21 $00 $d0
    ld de, $b000                                  ; $5b9a: $11 $00 $b0
    ld c, $80                                     ; $5b9d: $0e $80
    call Call_000_04db                            ; $5b9f: $cd $db $04
    ld hl, $d800                                  ; $5ba2: $21 $00 $d8
    ld de, $a800                                  ; $5ba5: $11 $00 $a8
    ld c, $80                                     ; $5ba8: $0e $80
    call Call_000_04db                            ; $5baa: $cd $db $04
    ld hl, $5c00                                  ; $5bad: $21 $00 $5c
    ld de, $0008                                  ; $5bb0: $11 $08 $00
    call Call_000_0595                            ; $5bb3: $cd $95 $05
    ld hl, $4b14                                  ; $5bb6: $21 $14 $4b
    ld de, $d000                                  ; $5bb9: $11 $00 $d0
    call Call_000_0234                            ; $5bbc: $cd $34 $02
    ld hl, $d000                                  ; $5bbf: $21 $00 $d0
    ld de, $b800                                  ; $5bc2: $11 $00 $b8
    ld c, $24                                     ; $5bc5: $0e $24
    call Call_000_04db                            ; $5bc7: $cd $db $04
    ld hl, $4b16                                  ; $5bca: $21 $16 $4b
    ld de, $d000                                  ; $5bcd: $11 $00 $d0
    call Call_000_0234                            ; $5bd0: $cd $34 $02
    ld hl, $d000                                  ; $5bd3: $21 $00 $d0
    ld de, $9800                                  ; $5bd6: $11 $00 $98
    ld c, $24                                     ; $5bd9: $0e $24
    call Call_000_04db                            ; $5bdb: $cd $db $04
    ld a, $02                                     ; $5bde: $3e $02
    ldh [$96], a                                  ; $5be0: $e0 $96
    ldh [rSVBK], a                                ; $5be2: $e0 $70
    ld hl, $4c18                                  ; $5be4: $21 $18 $4c
    ld de, $d000                                  ; $5be7: $11 $00 $d0
    call Call_000_0234                            ; $5bea: $cd $34 $02
    ld hl, $4c16                                  ; $5bed: $21 $16 $4c
    ld de, $d100                                  ; $5bf0: $11 $00 $d1
    call Call_000_0234                            ; $5bf3: $cd $34 $02
    call Call_000_0371                            ; $5bf6: $cd $71 $03
    ld a, $06                                     ; $5bf9: $3e $06
    ldh [$96], a                                  ; $5bfb: $e0 $96
    ldh [rSVBK], a                                ; $5bfd: $e0 $70
    ret                                           ; $5bff: $c9


    ldh [$7f], a                                  ; $5c00: $e0 $7f
    rst $38                                       ; $5c02: $ff
    ld l, e                                       ; $5c03: $6b
    ld e, b                                       ; $5c04: $58
    ld e, $00                                     ; $5c05: $1e $00
    nop                                           ; $5c07: $00
    ld a, a                                       ; $5c08: $7f
    daa                                           ; $5c09: $27
    sbc l                                         ; $5c0a: $9d
    ld [hl-], a                                   ; $5c0b: $32
    ld a, a                                       ; $5c0c: $7f
    ld h, e                                       ; $5c0d: $63
    dec de                                        ; $5c0e: $1b
    ld a, [hl-]                                   ; $5c0f: $3a
    ld e, a                                       ; $5c10: $5f
    inc bc                                        ; $5c11: $03
    rst $38                                       ; $5c12: $ff
    ld l, e                                       ; $5c13: $6b
    rst $18                                       ; $5c14: $df
    ld bc, $0000                                  ; $5c15: $01 $00 $00
    ld a, b                                       ; $5c18: $78
    ld a, [hl-]                                   ; $5c19: $3a
    rst $38                                       ; $5c1a: $ff
    ld l, e                                       ; $5c1b: $6b
    add b                                         ; $5c1c: $80
    ld [de], a                                    ; $5c1d: $12
    nop                                           ; $5c1e: $00
    nop                                           ; $5c1f: $00
    sbc [hl]                                      ; $5c20: $9e
    ld [hl+], a                                   ; $5c21: $22
    rst $38                                       ; $5c22: $ff
    ld l, e                                       ; $5c23: $6b
    ld a, [hl]                                    ; $5c24: $7e
    ld hl, $0000                                  ; $5c25: $21 $00 $00
    ld a, a                                       ; $5c28: $7f
    ld [hl-], a                                   ; $5c29: $32
    rst $38                                       ; $5c2a: $ff
    ld l, e                                       ; $5c2b: $6b
    sbc a                                         ; $5c2c: $9f
    ld bc, $0000                                  ; $5c2d: $01 $00 $00
    ccf                                           ; $5c30: $3f
    ld c, d                                       ; $5c31: $4a
    rst $38                                       ; $5c32: $ff
    ld l, e                                       ; $5c33: $6b
    rst $38                                       ; $5c34: $ff
    jr nz, jr_00c_5c37                            ; $5c35: $20 $00

jr_00c_5c37:
    nop                                           ; $5c37: $00
    rra                                           ; $5c38: $1f
    ld e, [hl]                                    ; $5c39: $5e
    rst $38                                       ; $5c3a: $ff
    ld l, e                                       ; $5c3b: $6b
    ret c                                         ; $5c3c: $d8

    ld a, h                                       ; $5c3d: $7c
    nop                                           ; $5c3e: $00
    nop                                           ; $5c3f: $00

Call_00c_5c40:
    ldh a, [$96]                                  ; $5c40: $f0 $96
    push af                                       ; $5c42: $f5
    ld a, $06                                     ; $5c43: $3e $06
    ldh [$96], a                                  ; $5c45: $e0 $96
    ldh [rSVBK], a                                ; $5c47: $e0 $70
    ld a, $00                                     ; $5c49: $3e $00
    push af                                       ; $5c4b: $f5
    ld a, [$d226]                                 ; $5c4c: $fa $26 $d2
    ld b, a                                       ; $5c4f: $47
    ldh a, [$91]                                  ; $5c50: $f0 $91
    bit 5, a                                      ; $5c52: $cb $6f
    jr z, jr_00c_5c72                             ; $5c54: $28 $1c

    ld a, [$d214]                                 ; $5c56: $fa $14 $d2
    dec a                                         ; $5c59: $3d
    bit 7, a                                      ; $5c5a: $cb $7f
    jr z, jr_00c_5c60                             ; $5c5c: $28 $02

    ld a, b                                       ; $5c5e: $78
    dec a                                         ; $5c5f: $3d

jr_00c_5c60:
    ld b, a                                       ; $5c60: $47
    ld a, [$d214]                                 ; $5c61: $fa $14 $d2
    cp b                                          ; $5c64: $b8
    jr z, jr_00c_5c70                             ; $5c65: $28 $09

    ld a, b                                       ; $5c67: $78
    ld [$d214], a                                 ; $5c68: $ea $14 $d2
    call Call_00c_5caa                            ; $5c6b: $cd $aa $5c
    rst $08                                       ; $5c6e: $cf
    ld e, e                                       ; $5c6f: $5b

jr_00c_5c70:
    jr jr_00c_5ca1                                ; $5c70: $18 $2f

jr_00c_5c72:
    bit 4, a                                      ; $5c72: $cb $67
    jr z, jr_00c_5c91                             ; $5c74: $28 $1b

    ld a, [$d214]                                 ; $5c76: $fa $14 $d2
    inc a                                         ; $5c79: $3c
    cp b                                          ; $5c7a: $b8
    jr c, jr_00c_5c7f                             ; $5c7b: $38 $02

    ld a, $00                                     ; $5c7d: $3e $00

jr_00c_5c7f:
    ld b, a                                       ; $5c7f: $47
    ld a, [$d214]                                 ; $5c80: $fa $14 $d2
    cp b                                          ; $5c83: $b8
    jr z, jr_00c_5c8f                             ; $5c84: $28 $09

    ld a, b                                       ; $5c86: $78
    ld [$d214], a                                 ; $5c87: $ea $14 $d2
    call Call_00c_5caa                            ; $5c8a: $cd $aa $5c
    rst $08                                       ; $5c8d: $cf
    ld e, e                                       ; $5c8e: $5b

jr_00c_5c8f:
    jr jr_00c_5ca1                                ; $5c8f: $18 $10

jr_00c_5c91:
    bit 0, a                                      ; $5c91: $cb $47
    jr z, jr_00c_5c97                             ; $5c93: $28 $02

    jr jr_00c_5ca1                                ; $5c95: $18 $0a

jr_00c_5c97:
    bit 1, a                                      ; $5c97: $cb $4f
    jr z, jr_00c_5ca1                             ; $5c99: $28 $06

    rst $08                                       ; $5c9b: $cf
    ld e, l                                       ; $5c9c: $5d
    pop af                                        ; $5c9d: $f1
    ld a, $ff                                     ; $5c9e: $3e $ff
    push af                                       ; $5ca0: $f5

jr_00c_5ca1:
    pop af                                        ; $5ca1: $f1
    ld b, a                                       ; $5ca2: $47
    pop af                                        ; $5ca3: $f1
    ldh [$96], a                                  ; $5ca4: $e0 $96
    ldh [rSVBK], a                                ; $5ca6: $e0 $70
    ld a, b                                       ; $5ca8: $78
    ret                                           ; $5ca9: $c9


Call_00c_5caa:
    push af                                       ; $5caa: $f5
    push bc                                       ; $5cab: $c5
    push de                                       ; $5cac: $d5
    push hl                                       ; $5cad: $e5
    ldh a, [$96]                                  ; $5cae: $f0 $96
    push af                                       ; $5cb0: $f5
    ld a, $01                                     ; $5cb1: $3e $01
    ldh [$96], a                                  ; $5cb3: $e0 $96
    ldh [rSVBK], a                                ; $5cb5: $e0 $70
    ld hl, $4b14                                  ; $5cb7: $21 $14 $4b
    ld de, $d000                                  ; $5cba: $11 $00 $d0
    call Call_000_0234                            ; $5cbd: $cd $34 $02
    ld hl, $4b16                                  ; $5cc0: $21 $16 $4b
    ld de, $d400                                  ; $5cc3: $11 $00 $d4
    call Call_000_0234                            ; $5cc6: $cd $34 $02
    call Call_00c_5ef6                            ; $5cc9: $cd $f6 $5e
    ld a, $06                                     ; $5ccc: $3e $06
    ldh [$96], a                                  ; $5cce: $e0 $96
    ldh [rSVBK], a                                ; $5cd0: $e0 $70
    ld a, [$d214]                                 ; $5cd2: $fa $14 $d2
    ld b, a                                       ; $5cd5: $47
    ld de, $ad60                                  ; $5cd6: $11 $60 $ad
    call Call_00c_49c1                            ; $5cd9: $cd $c1 $49
    ld a, $06                                     ; $5cdc: $3e $06
    ldh [$96], a                                  ; $5cde: $e0 $96
    ldh [rSVBK], a                                ; $5ce0: $e0 $70
    ld c, $00                                     ; $5ce2: $0e $00
    rst $18                                       ; $5ce4: $df
    ld a, [de]                                    ; $5ce5: $1a
    inc bc                                        ; $5ce6: $03

Jump_00c_5ce7:
    rst $18                                       ; $5ce7: $df
    ld a, [hl-]                                   ; $5ce8: $3a
    dec bc                                        ; $5ce9: $0b
    call Call_00c_5fb0                            ; $5cea: $cd $b0 $5f
    or a                                          ; $5ced: $b7
    jp z, Jump_00c_5da1                           ; $5cee: $ca $a1 $5d

    call Call_00c_5db8                            ; $5cf1: $cd $b8 $5d
    inc hl                                        ; $5cf4: $23
    inc hl                                        ; $5cf5: $23
    inc hl                                        ; $5cf6: $23
    ld a, [hl]                                    ; $5cf7: $7e
    push bc                                       ; $5cf8: $c5
    push af                                       ; $5cf9: $f5
    ld hl, $00a6                                  ; $5cfa: $21 $a6 $00
    ld de, $0080                                  ; $5cfd: $11 $80 $00

jr_00c_5d00:
    ld a, c                                       ; $5d00: $79
    or a                                          ; $5d01: $b7
    jr z, jr_00c_5d08                             ; $5d02: $28 $04

    add hl, de                                    ; $5d04: $19
    dec c                                         ; $5d05: $0d
    jr jr_00c_5d00                                ; $5d06: $18 $f8

jr_00c_5d08:
    pop af                                        ; $5d08: $f1
    ld c, a                                       ; $5d09: $4f
    rst $18                                       ; $5d0a: $df
    jr c, jr_00c_5d18                             ; $5d0b: $38 $0b

    call Call_00c_5f32                            ; $5d0d: $cd $32 $5f
    ld a, $01                                     ; $5d10: $3e $01
    ldh [$96], a                                  ; $5d12: $e0 $96
    ldh [rSVBK], a                                ; $5d14: $e0 $70
    ld a, c                                       ; $5d16: $79
    pop bc                                        ; $5d17: $c1

jr_00c_5d18:
    push bc                                       ; $5d18: $c5
    ld l, c                                       ; $5d19: $69
    ld h, $00                                     ; $5d1a: $26 $00
    ld c, a                                       ; $5d1c: $4f
    add hl, hl                                    ; $5d1d: $29
    add hl, hl                                    ; $5d1e: $29
    add hl, hl                                    ; $5d1f: $29
    add hl, hl                                    ; $5d20: $29
    add hl, hl                                    ; $5d21: $29
    add hl, hl                                    ; $5d22: $29
    add hl, hl                                    ; $5d23: $29
    ld de, $d0a9                                  ; $5d24: $11 $a9 $d0
    add hl, de                                    ; $5d27: $19
    push hl                                       ; $5d28: $e5
    push hl                                       ; $5d29: $e5
    dec hl                                        ; $5d2a: $2b
    ld a, $04                                     ; $5d2b: $3e $04
    add h                                         ; $5d2d: $84
    ld h, a                                       ; $5d2e: $67
    ld a, $11                                     ; $5d2f: $3e $11
    ld [hl], a                                    ; $5d31: $77
    ld a, $20                                     ; $5d32: $3e $20
    add l                                         ; $5d34: $85
    ld l, a                                       ; $5d35: $6f
    jr nc, jr_00c_5d39                            ; $5d36: $30 $01

    inc h                                         ; $5d38: $24

jr_00c_5d39:
    ld a, $11                                     ; $5d39: $3e $11
    ld [hl], a                                    ; $5d3b: $77
    pop hl                                        ; $5d3c: $e1
    xor a                                         ; $5d3d: $af
    ld [hl+], a                                   ; $5d3e: $22
    ld [hl+], a                                   ; $5d3f: $22
    ld [hl+], a                                   ; $5d40: $22
    ld [hl+], a                                   ; $5d41: $22
    ld [hl+], a                                   ; $5d42: $22
    ld [hl+], a                                   ; $5d43: $22
    ld [hl+], a                                   ; $5d44: $22
    ld [hl+], a                                   ; $5d45: $22
    pop hl                                        ; $5d46: $e1
    push hl                                       ; $5d47: $e5
    ld de, $0020                                  ; $5d48: $11 $20 $00
    add hl, de                                    ; $5d4b: $19
    ld [hl+], a                                   ; $5d4c: $22
    ld [hl+], a                                   ; $5d4d: $22
    ld [hl+], a                                   ; $5d4e: $22
    ld [hl+], a                                   ; $5d4f: $22
    ld [hl+], a                                   ; $5d50: $22
    ld [hl+], a                                   ; $5d51: $22
    ld [hl+], a                                   ; $5d52: $22
    ld [hl+], a                                   ; $5d53: $22
    pop hl                                        ; $5d54: $e1
    push hl                                       ; $5d55: $e5
    ld de, $0400                                  ; $5d56: $11 $00 $04
    add hl, de                                    ; $5d59: $19
    ld a, $20                                     ; $5d5a: $3e $20
    ld [hl+], a                                   ; $5d5c: $22
    ld [hl+], a                                   ; $5d5d: $22
    ld [hl+], a                                   ; $5d5e: $22
    ld [hl+], a                                   ; $5d5f: $22
    ld [hl+], a                                   ; $5d60: $22
    ld [hl+], a                                   ; $5d61: $22
    ld [hl+], a                                   ; $5d62: $22
    ld [hl+], a                                   ; $5d63: $22
    pop hl                                        ; $5d64: $e1
    ld de, $0420                                  ; $5d65: $11 $20 $04
    add hl, de                                    ; $5d68: $19
    ld [hl+], a                                   ; $5d69: $22
    ld [hl+], a                                   ; $5d6a: $22
    ld [hl+], a                                   ; $5d6b: $22
    ld [hl+], a                                   ; $5d6c: $22
    ld [hl+], a                                   ; $5d6d: $22
    ld [hl+], a                                   ; $5d6e: $22
    ld [hl+], a                                   ; $5d6f: $22
    ld [hl+], a                                   ; $5d70: $22
    ld d, c                                       ; $5d71: $51
    pop bc                                        ; $5d72: $c1
    push bc                                       ; $5d73: $c5
    ld h, $00                                     ; $5d74: $26 $00
    ld l, c                                       ; $5d76: $69
    ld b, d                                       ; $5d77: $42
    add hl, hl                                    ; $5d78: $29
    add hl, hl                                    ; $5d79: $29
    add hl, hl                                    ; $5d7a: $29
    add hl, hl                                    ; $5d7b: $29
    add hl, hl                                    ; $5d7c: $29
    add hl, hl                                    ; $5d7d: $29
    add hl, hl                                    ; $5d7e: $29
    ld de, $d4c9                                  ; $5d7f: $11 $c9 $d4
    add hl, de                                    ; $5d82: $19
    ld d, h                                       ; $5d83: $54
    ld e, l                                       ; $5d84: $5d
    ld hl, $1410                                  ; $5d85: $21 $10 $14
    ld a, b                                       ; $5d88: $78
    cp $0e                                        ; $5d89: $fe $0e
    jr nc, jr_00c_5d9a                            ; $5d8b: $30 $0d

    add l                                         ; $5d8d: $85
    ld l, a                                       ; $5d8e: $6f
    jr nc, jr_00c_5d92                            ; $5d8f: $30 $01

    inc h                                         ; $5d91: $24

jr_00c_5d92:
    ld c, $20                                     ; $5d92: $0e $20
    rst $18                                       ; $5d94: $df
    ld [hl+], a                                   ; $5d95: $22
    dec b                                         ; $5d96: $05
    call Call_000_2e3b                            ; $5d97: $cd $3b $2e

jr_00c_5d9a:
    ld a, $06                                     ; $5d9a: $3e $06
    ldh [$96], a                                  ; $5d9c: $e0 $96
    ldh [rSVBK], a                                ; $5d9e: $e0 $70
    pop bc                                        ; $5da0: $c1

Jump_00c_5da1:
    inc c                                         ; $5da1: $0c
    ld a, c                                       ; $5da2: $79
    cp $03                                        ; $5da3: $fe $03
    jp nz, Jump_00c_5ce7                          ; $5da5: $c2 $e7 $5c

    rst $18                                       ; $5da8: $df
    inc h                                         ; $5da9: $24
    inc bc                                        ; $5daa: $03
    call Call_00c_5ef6                            ; $5dab: $cd $f6 $5e
    pop af                                        ; $5dae: $f1
    ldh [$96], a                                  ; $5daf: $e0 $96
    ldh [rSVBK], a                                ; $5db1: $e0 $70
    pop hl                                        ; $5db3: $e1
    pop de                                        ; $5db4: $d1
    pop bc                                        ; $5db5: $c1
    pop af                                        ; $5db6: $f1
    ret                                           ; $5db7: $c9


Call_00c_5db8:
    push af                                       ; $5db8: $f5
    push bc                                       ; $5db9: $c5
    push de                                       ; $5dba: $d5
    push hl                                       ; $5dbb: $e5
    ldh a, [$96]                                  ; $5dbc: $f0 $96
    push af                                       ; $5dbe: $f5
    ld a, $01                                     ; $5dbf: $3e $01
    ldh [$96], a                                  ; $5dc1: $e0 $96
    ldh [rSVBK], a                                ; $5dc3: $e0 $70
    push hl                                       ; $5dc5: $e5
    ld b, c                                       ; $5dc6: $41
    ld de, $0080                                  ; $5dc7: $11 $80 $00
    ld hl, $d0e6                                  ; $5dca: $21 $e6 $d0

jr_00c_5dcd:
    ld a, b                                       ; $5dcd: $78
    or a                                          ; $5dce: $b7
    jr z, jr_00c_5dd5                             ; $5dcf: $28 $04

    add hl, de                                    ; $5dd1: $19
    dec b                                         ; $5dd2: $05
    jr jr_00c_5dcd                                ; $5dd3: $18 $f8

jr_00c_5dd5:
    push hl                                       ; $5dd5: $e5
    xor a                                         ; $5dd6: $af
    ld [hl+], a                                   ; $5dd7: $22
    ld [hl+], a                                   ; $5dd8: $22
    ld [hl+], a                                   ; $5dd9: $22
    ld [hl+], a                                   ; $5dda: $22
    ld [hl+], a                                   ; $5ddb: $22
    ld [hl+], a                                   ; $5ddc: $22
    ld [hl+], a                                   ; $5ddd: $22
    ld [hl+], a                                   ; $5dde: $22
    inc hl                                        ; $5ddf: $23
    ld [hl+], a                                   ; $5de0: $22
    ld [hl+], a                                   ; $5de1: $22
    ld [hl+], a                                   ; $5de2: $22
    pop hl                                        ; $5de3: $e1
    ld de, $0400                                  ; $5de4: $11 $00 $04
    add hl, de                                    ; $5de7: $19
    ld d, h                                       ; $5de8: $54
    ld e, l                                       ; $5de9: $5d
    pop hl                                        ; $5dea: $e1
    push hl                                       ; $5deb: $e5
    push de                                       ; $5dec: $d5
    ld a, $06                                     ; $5ded: $3e $06
    ldh [$96], a                                  ; $5def: $e0 $96
    ldh [rSVBK], a                                ; $5df1: $e0 $70
    ld b, [hl]                                    ; $5df3: $46
    ld a, $01                                     ; $5df4: $3e $01
    ldh [$96], a                                  ; $5df6: $e0 $96
    ldh [rSVBK], a                                ; $5df8: $e0 $70
    ld a, b                                       ; $5dfa: $78
    cp $0a                                        ; $5dfb: $fe $0a
    jr nc, jr_00c_5e11                            ; $5dfd: $30 $12

    ld h, $00                                     ; $5dff: $26 $00
    ld l, $00                                     ; $5e01: $2e $00
    ld a, $01                                     ; $5e03: $3e $01
    push bc                                       ; $5e05: $c5
    push de                                       ; $5e06: $d5
    call Call_000_21f0                            ; $5e07: $cd $f0 $21
    pop de                                        ; $5e0a: $d1
    pop bc                                        ; $5e0b: $c1
    inc de                                        ; $5e0c: $13
    ld a, $01                                     ; $5e0d: $3e $01
    jr jr_00c_5e13                                ; $5e0f: $18 $02

jr_00c_5e11:
    ld a, $02                                     ; $5e11: $3e $02

jr_00c_5e13:
    ld h, $00                                     ; $5e13: $26 $00
    ld l, b                                       ; $5e15: $68
    call Call_000_21f0                            ; $5e16: $cd $f0 $21
    pop de                                        ; $5e19: $d1
    inc de                                        ; $5e1a: $13
    inc de                                        ; $5e1b: $13
    ld h, d                                       ; $5e1c: $62
    ld l, e                                       ; $5e1d: $6b
    ld [hl], $3a                                  ; $5e1e: $36 $3a
    inc de                                        ; $5e20: $13
    pop hl                                        ; $5e21: $e1
    inc hl                                        ; $5e22: $23
    push hl                                       ; $5e23: $e5
    push de                                       ; $5e24: $d5
    ld a, $06                                     ; $5e25: $3e $06
    ldh [$96], a                                  ; $5e27: $e0 $96
    ldh [rSVBK], a                                ; $5e29: $e0 $70
    ld b, [hl]                                    ; $5e2b: $46
    ld a, $01                                     ; $5e2c: $3e $01
    ldh [$96], a                                  ; $5e2e: $e0 $96
    ldh [rSVBK], a                                ; $5e30: $e0 $70
    ld a, b                                       ; $5e32: $78
    cp $0a                                        ; $5e33: $fe $0a
    jr nc, jr_00c_5e49                            ; $5e35: $30 $12

    ld h, $00                                     ; $5e37: $26 $00
    ld l, $00                                     ; $5e39: $2e $00
    ld a, $01                                     ; $5e3b: $3e $01
    push bc                                       ; $5e3d: $c5
    push de                                       ; $5e3e: $d5
    call Call_000_21f0                            ; $5e3f: $cd $f0 $21
    pop de                                        ; $5e42: $d1
    pop bc                                        ; $5e43: $c1
    inc de                                        ; $5e44: $13
    ld a, $01                                     ; $5e45: $3e $01
    jr jr_00c_5e4b                                ; $5e47: $18 $02

jr_00c_5e49:
    ld a, $02                                     ; $5e49: $3e $02

jr_00c_5e4b:
    ld h, $00                                     ; $5e4b: $26 $00
    ld l, b                                       ; $5e4d: $68
    call Call_000_21f0                            ; $5e4e: $cd $f0 $21
    pop de                                        ; $5e51: $d1
    inc de                                        ; $5e52: $13
    inc de                                        ; $5e53: $13
    ld h, d                                       ; $5e54: $62
    ld l, e                                       ; $5e55: $6b
    ld [hl], $3a                                  ; $5e56: $36 $3a
    inc de                                        ; $5e58: $13
    pop hl                                        ; $5e59: $e1
    inc hl                                        ; $5e5a: $23
    push hl                                       ; $5e5b: $e5
    push de                                       ; $5e5c: $d5
    ld a, $06                                     ; $5e5d: $3e $06
    ldh [$96], a                                  ; $5e5f: $e0 $96
    ldh [rSVBK], a                                ; $5e61: $e0 $70
    ld b, [hl]                                    ; $5e63: $46
    ld a, $01                                     ; $5e64: $3e $01
    ldh [$96], a                                  ; $5e66: $e0 $96
    ldh [rSVBK], a                                ; $5e68: $e0 $70
    ld a, b                                       ; $5e6a: $78
    cp $0a                                        ; $5e6b: $fe $0a
    jr nc, jr_00c_5e81                            ; $5e6d: $30 $12

    ld h, $00                                     ; $5e6f: $26 $00
    ld l, $00                                     ; $5e71: $2e $00
    ld a, $01                                     ; $5e73: $3e $01
    push bc                                       ; $5e75: $c5
    push de                                       ; $5e76: $d5
    call Call_000_21f0                            ; $5e77: $cd $f0 $21
    pop de                                        ; $5e7a: $d1
    pop bc                                        ; $5e7b: $c1
    inc de                                        ; $5e7c: $13
    ld a, $01                                     ; $5e7d: $3e $01
    jr jr_00c_5e83                                ; $5e7f: $18 $02

jr_00c_5e81:
    ld a, $02                                     ; $5e81: $3e $02

jr_00c_5e83:
    ld h, $00                                     ; $5e83: $26 $00
    ld l, b                                       ; $5e85: $68
    call Call_000_21f0                            ; $5e86: $cd $f0 $21
    pop de                                        ; $5e89: $d1
    inc de                                        ; $5e8a: $13
    inc de                                        ; $5e8b: $13
    ld h, d                                       ; $5e8c: $62
    ld l, e                                       ; $5e8d: $6b
    ld [hl], $12                                  ; $5e8e: $36 $12
    ld a, $06                                     ; $5e90: $3e $06
    ldh [$96], a                                  ; $5e92: $e0 $96
    ldh [rSVBK], a                                ; $5e94: $e0 $70
    pop hl                                        ; $5e96: $e1
    inc de                                        ; $5e97: $13
    inc hl                                        ; $5e98: $23
    inc hl                                        ; $5e99: $23
    ld a, [hl]                                    ; $5e9a: $7e
    sub $36                                       ; $5e9b: $d6 $36
    or a                                          ; $5e9d: $b7
    jr z, jr_00c_5ec5                             ; $5e9e: $28 $25

    bit 7, a                                      ; $5ea0: $cb $7f
    jr z, jr_00c_5eb7                             ; $5ea2: $28 $13

    ld a, [hl]                                    ; $5ea4: $7e
    ld b, a                                       ; $5ea5: $47
    ld a, $36                                     ; $5ea6: $3e $36
    sub b                                         ; $5ea8: $90
    ld b, a                                       ; $5ea9: $47
    ld h, d                                       ; $5eaa: $62
    ld l, e                                       ; $5eab: $6b
    ld a, $01                                     ; $5eac: $3e $01
    ldh [$96], a                                  ; $5eae: $e0 $96
    ldh [rSVBK], a                                ; $5eb0: $e0 $70
    ld a, $2d                                     ; $5eb2: $3e $2d
    ld [hl], a                                    ; $5eb4: $77
    jr jr_00c_5ed1                                ; $5eb5: $18 $1a

jr_00c_5eb7:
    ld b, a                                       ; $5eb7: $47
    ld h, d                                       ; $5eb8: $62
    ld l, e                                       ; $5eb9: $6b
    ld a, $01                                     ; $5eba: $3e $01
    ldh [$96], a                                  ; $5ebc: $e0 $96
    ldh [rSVBK], a                                ; $5ebe: $e0 $70
    ld a, $2b                                     ; $5ec0: $3e $2b
    ld [hl], a                                    ; $5ec2: $77
    jr jr_00c_5ed1                                ; $5ec3: $18 $0c

jr_00c_5ec5:
    ld b, a                                       ; $5ec5: $47
    ld h, d                                       ; $5ec6: $62
    ld l, e                                       ; $5ec7: $6b
    ld a, $01                                     ; $5ec8: $3e $01
    ldh [$96], a                                  ; $5eca: $e0 $96
    ldh [rSVBK], a                                ; $5ecc: $e0 $70
    ld a, $60                                     ; $5ece: $3e $60
    ld [hl], a                                    ; $5ed0: $77

jr_00c_5ed1:
    ld a, b                                       ; $5ed1: $78
    cp $64                                        ; $5ed2: $fe $64
    jr c, jr_00c_5edb                             ; $5ed4: $38 $05

    ld b, $63                                     ; $5ed6: $06 $63
    ld a, $2b                                     ; $5ed8: $3e $2b
    ld [hl], a                                    ; $5eda: $77

jr_00c_5edb:
    ld h, $00                                     ; $5edb: $26 $00
    ld l, b                                       ; $5edd: $68
    inc de                                        ; $5ede: $13
    push de                                       ; $5edf: $d5
    ld a, $02                                     ; $5ee0: $3e $02
    call Call_000_21f0                            ; $5ee2: $cd $f0 $21
    pop de                                        ; $5ee5: $d1
    inc de                                        ; $5ee6: $13
    inc de                                        ; $5ee7: $13
    ld h, d                                       ; $5ee8: $62
    ld l, e                                       ; $5ee9: $6b
    ld [hl], $11                                  ; $5eea: $36 $11
    pop af                                        ; $5eec: $f1
    ldh [$96], a                                  ; $5eed: $e0 $96
    ldh [rSVBK], a                                ; $5eef: $e0 $70
    pop hl                                        ; $5ef1: $e1
    pop de                                        ; $5ef2: $d1
    pop bc                                        ; $5ef3: $c1
    pop af                                        ; $5ef4: $f1
    ret                                           ; $5ef5: $c9


Call_00c_5ef6:
    ld a, $01                                     ; $5ef6: $3e $01
    ldh [$96], a                                  ; $5ef8: $e0 $96
    ldh [rSVBK], a                                ; $5efa: $e0 $70
    call Call_000_2e3b                            ; $5efc: $cd $3b $2e
    ld hl, $d000                                  ; $5eff: $21 $00 $d0
    ld de, $b800                                  ; $5f02: $11 $00 $b8
    ld c, $12                                     ; $5f05: $0e $12
    call Call_000_0468                            ; $5f07: $cd $68 $04
    ld hl, $d400                                  ; $5f0a: $21 $00 $d4
    ld de, $9800                                  ; $5f0d: $11 $00 $98
    ld c, $12                                     ; $5f10: $0e $12
    call Call_000_0468                            ; $5f12: $cd $68 $04
    call Call_000_2e3b                            ; $5f15: $cd $3b $2e
    ld hl, $d120                                  ; $5f18: $21 $20 $d1
    ld de, $b920                                  ; $5f1b: $11 $20 $b9
    ld c, $12                                     ; $5f1e: $0e $12
    call Call_000_0468                            ; $5f20: $cd $68 $04
    ld hl, $d520                                  ; $5f23: $21 $20 $d5
    ld de, $9920                                  ; $5f26: $11 $20 $99
    ld c, $12                                     ; $5f29: $0e $12
    call Call_000_0468                            ; $5f2b: $cd $68 $04
    call Call_000_2e3b                            ; $5f2e: $cd $3b $2e
    ret                                           ; $5f31: $c9


Call_00c_5f32:
    push af                                       ; $5f32: $f5
    push bc                                       ; $5f33: $c5
    push de                                       ; $5f34: $d5
    push hl                                       ; $5f35: $e5
    ldh a, [$96]                                  ; $5f36: $f0 $96
    push af                                       ; $5f38: $f5
    push hl                                       ; $5f39: $e5
    ld a, c                                       ; $5f3a: $79
    add a                                         ; $5f3b: $87
    add a                                         ; $5f3c: $87
    ld d, $00                                     ; $5f3d: $16 $00
    ld e, a                                       ; $5f3f: $5f
    ld hl, $d000                                  ; $5f40: $21 $00 $d0
    add hl, de                                    ; $5f43: $19
    pop de                                        ; $5f44: $d1
    push hl                                       ; $5f45: $e5
    ld hl, $d000                                  ; $5f46: $21 $00 $d0
    add hl, de                                    ; $5f49: $19
    ld d, h                                       ; $5f4a: $54
    ld e, l                                       ; $5f4b: $5d
    push de                                       ; $5f4c: $d5
    ld b, $00                                     ; $5f4d: $06 $00

jr_00c_5f4f:
    ld a, b                                       ; $5f4f: $78
    add a                                         ; $5f50: $87
    add a                                         ; $5f51: $87
    add a                                         ; $5f52: $87
    add a                                         ; $5f53: $87
    add a                                         ; $5f54: $87
    pop hl                                        ; $5f55: $e1
    add l                                         ; $5f56: $85
    ld l, a                                       ; $5f57: $6f
    xor a                                         ; $5f58: $af
    adc h                                         ; $5f59: $8c
    ld h, a                                       ; $5f5a: $67
    ld d, h                                       ; $5f5b: $54
    ld e, l                                       ; $5f5c: $5d
    pop hl                                        ; $5f5d: $e1
    ld a, b                                       ; $5f5e: $78
    add a                                         ; $5f5f: $87
    add l                                         ; $5f60: $85
    ld l, a                                       ; $5f61: $6f
    xor a                                         ; $5f62: $af
    adc h                                         ; $5f63: $8c
    ld h, a                                       ; $5f64: $67
    push hl                                       ; $5f65: $e5
    push de                                       ; $5f66: $d5
    ld c, $02                                     ; $5f67: $0e $02

jr_00c_5f69:
    ld a, $02                                     ; $5f69: $3e $02
    ldh [$96], a                                  ; $5f6b: $e0 $96
    ldh [rSVBK], a                                ; $5f6d: $e0 $70
    ld a, [hl]                                    ; $5f6f: $7e
    push af                                       ; $5f70: $f5
    ld a, $01                                     ; $5f71: $3e $01
    ldh [$96], a                                  ; $5f73: $e0 $96
    ldh [rSVBK], a                                ; $5f75: $e0 $70
    pop af                                        ; $5f77: $f1
    push hl                                       ; $5f78: $e5
    ld h, d                                       ; $5f79: $62
    ld l, e                                       ; $5f7a: $6b
    ld [hl], a                                    ; $5f7b: $77
    pop hl                                        ; $5f7c: $e1
    push hl                                       ; $5f7d: $e5
    ld a, $01                                     ; $5f7e: $3e $01
    add h                                         ; $5f80: $84
    ld h, a                                       ; $5f81: $67
    ld a, $02                                     ; $5f82: $3e $02
    ldh [$96], a                                  ; $5f84: $e0 $96
    ldh [rSVBK], a                                ; $5f86: $e0 $70
    ld a, [hl]                                    ; $5f88: $7e
    push af                                       ; $5f89: $f5
    ld a, $01                                     ; $5f8a: $3e $01
    ldh [$96], a                                  ; $5f8c: $e0 $96
    ldh [rSVBK], a                                ; $5f8e: $e0 $70
    pop af                                        ; $5f90: $f1
    push de                                       ; $5f91: $d5
    ld hl, $0400                                  ; $5f92: $21 $00 $04
    add hl, de                                    ; $5f95: $19
    ld [hl], a                                    ; $5f96: $77
    pop de                                        ; $5f97: $d1
    pop hl                                        ; $5f98: $e1
    inc de                                        ; $5f99: $13
    inc hl                                        ; $5f9a: $23
    dec c                                         ; $5f9b: $0d
    jr nz, jr_00c_5f69                            ; $5f9c: $20 $cb

    inc b                                         ; $5f9e: $04
    ld a, b                                       ; $5f9f: $78
    cp $02                                        ; $5fa0: $fe $02
    jr nz, jr_00c_5f4f                            ; $5fa2: $20 $ab

    pop de                                        ; $5fa4: $d1
    pop hl                                        ; $5fa5: $e1
    pop af                                        ; $5fa6: $f1
    ldh [$96], a                                  ; $5fa7: $e0 $96
    ldh [rSVBK], a                                ; $5fa9: $e0 $70
    pop hl                                        ; $5fab: $e1
    pop de                                        ; $5fac: $d1
    pop bc                                        ; $5fad: $c1
    pop af                                        ; $5fae: $f1
    ret                                           ; $5faf: $c9


Call_00c_5fb0:
    push hl                                       ; $5fb0: $e5
    push bc                                       ; $5fb1: $c5
    ld b, $00                                     ; $5fb2: $06 $00
    ld c, $03                                     ; $5fb4: $0e $03

jr_00c_5fb6:
    ld a, [hl+]                                   ; $5fb6: $2a
    or a                                          ; $5fb7: $b7
    jr z, jr_00c_5fbe                             ; $5fb8: $28 $04

    ld b, $01                                     ; $5fba: $06 $01
    jr jr_00c_5fc1                                ; $5fbc: $18 $03

jr_00c_5fbe:
    dec c                                         ; $5fbe: $0d
    jr nz, jr_00c_5fb6                            ; $5fbf: $20 $f5

jr_00c_5fc1:
    ld a, b                                       ; $5fc1: $78
    pop bc                                        ; $5fc2: $c1
    pop hl                                        ; $5fc3: $e1
    ret                                           ; $5fc4: $c9


    rst $18                                       ; $5fc5: $df
    jr z, jr_00c_5fd3                             ; $5fc6: $28 $0b

    call Call_000_2b54                            ; $5fc8: $cd $54 $2b
    call Call_00c_600a                            ; $5fcb: $cd $0a $60
    ld a, $0f                                     ; $5fce: $3e $0f
    ld hl, $61a8                                  ; $5fd0: $21 $a8 $61

jr_00c_5fd3:
    call Call_000_23e8                            ; $5fd3: $cd $e8 $23
    ld a, $1d                                     ; $5fd6: $3e $1d
    ld hl, $64cd                                  ; $5fd8: $21 $cd $64
    call Call_000_23e8                            ; $5fdb: $cd $e8 $23
    call Call_000_2e3b                            ; $5fde: $cd $3b $2e
    ld c, $10                                     ; $5fe1: $0e $10
    call Call_000_25af                            ; $5fe3: $cd $af $25
    call Call_000_2625                            ; $5fe6: $cd $25 $26

jr_00c_5fe9:
    call Call_000_2e3b                            ; $5fe9: $cd $3b $2e
    call Call_00c_60f8                            ; $5fec: $cd $f8 $60
    cp $ff                                        ; $5fef: $fe $ff
    jr nz, jr_00c_5fe9                            ; $5ff1: $20 $f6

    push af                                       ; $5ff3: $f5
    ld hl, $61a8                                  ; $5ff4: $21 $a8 $61
    call Call_000_2449                            ; $5ff7: $cd $49 $24
    ld hl, $64cd                                  ; $5ffa: $21 $cd $64
    call Call_000_2449                            ; $5ffd: $cd $49 $24
    ld c, $10                                     ; $6000: $0e $10
    call Call_000_25a1                            ; $6002: $cd $a1 $25
    call Call_000_2625                            ; $6005: $cd $25 $26
    pop af                                        ; $6008: $f1
    ret                                           ; $6009: $c9


Call_00c_600a:
    ld a, $06                                     ; $600a: $3e $06
    ldh [$96], a                                  ; $600c: $e0 $96
    ldh [rSVBK], a                                ; $600e: $e0 $70
    xor a                                         ; $6010: $af
    ldh [$8a], a                                  ; $6011: $e0 $8a
    ldh [$8b], a                                  ; $6013: $e0 $8b
    ld [$d214], a                                 ; $6015: $ea $14 $d2
    ld [$d215], a                                 ; $6018: $ea $15 $d2
    call Call_000_0341                            ; $601b: $cd $41 $03
    call Call_000_23b6                            ; $601e: $cd $b6 $23
    ld a, $03                                     ; $6021: $3e $03
    ldh [$96], a                                  ; $6023: $e0 $96
    ldh [rSVBK], a                                ; $6025: $e0 $70
    ld hl, $4b22                                  ; $6027: $21 $22 $4b
    ld de, $d000                                  ; $602a: $11 $00 $d0
    call Call_000_0234                            ; $602d: $cd $34 $02
    ld hl, $4b24                                  ; $6030: $21 $24 $4b
    ld de, $d040                                  ; $6033: $11 $40 $d0
    call Call_000_0234                            ; $6036: $cd $34 $02
    ld hl, $4d24                                  ; $6039: $21 $24 $4d
    ld de, $d080                                  ; $603c: $11 $80 $d0
    call Call_000_0234                            ; $603f: $cd $34 $02
    ld hl, $4d26                                  ; $6042: $21 $26 $4d
    ld de, $d0c0                                  ; $6045: $11 $c0 $d0
    call Call_000_0234                            ; $6048: $cd $34 $02
    ld a, $01                                     ; $604b: $3e $01
    ldh [$96], a                                  ; $604d: $e0 $96
    ldh [rSVBK], a                                ; $604f: $e0 $70
    ld hl, $4b22                                  ; $6051: $21 $22 $4b
    ld de, $d000                                  ; $6054: $11 $00 $d0
    call Call_000_0234                            ; $6057: $cd $34 $02
    ld hl, $4b24                                  ; $605a: $21 $24 $4b
    ld de, $d040                                  ; $605d: $11 $40 $d0
    call Call_000_0234                            ; $6060: $cd $34 $02
    ld hl, $d000                                  ; $6063: $21 $00 $d0
    ld de, $8e00                                  ; $6066: $11 $00 $8e
    ld c, $08                                     ; $6069: $0e $08
    call Call_000_04db                            ; $606b: $cd $db $04
    ld hl, $419b                                  ; $606e: $21 $9b $41
    ld de, $0802                                  ; $6071: $11 $02 $08
    call Call_000_0595                            ; $6074: $cd $95 $05
    ld hl, $4b1e                                  ; $6077: $21 $1e $4b
    ld de, $d000                                  ; $607a: $11 $00 $d0
    call Call_000_0234                            ; $607d: $cd $34 $02
    ld hl, $d000                                  ; $6080: $21 $00 $d0
    ld de, $b000                                  ; $6083: $11 $00 $b0
    ld c, $80                                     ; $6086: $0e $80
    call Call_000_04db                            ; $6088: $cd $db $04
    ld hl, $d800                                  ; $608b: $21 $00 $d8
    ld de, $a800                                  ; $608e: $11 $00 $a8
    ld c, $80                                     ; $6091: $0e $80
    call Call_000_04db                            ; $6093: $cd $db $04
    ld hl, $5c00                                  ; $6096: $21 $00 $5c
    ld de, $0008                                  ; $6099: $11 $08 $00
    call Call_000_0595                            ; $609c: $cd $95 $05
    ld hl, $4c04                                  ; $609f: $21 $04 $4c
    ld de, $d000                                  ; $60a2: $11 $00 $d0
    call Call_000_0234                            ; $60a5: $cd $34 $02
    ld hl, $d000                                  ; $60a8: $21 $00 $d0
    ld de, $b800                                  ; $60ab: $11 $00 $b8
    ld c, $24                                     ; $60ae: $0e $24
    call Call_000_04db                            ; $60b0: $cd $db $04
    ld hl, $4c02                                  ; $60b3: $21 $02 $4c
    ld de, $d400                                  ; $60b6: $11 $00 $d4
    call Call_000_0234                            ; $60b9: $cd $34 $02
    ld hl, $d400                                  ; $60bc: $21 $00 $d4
    ld de, $9800                                  ; $60bf: $11 $00 $98
    ld c, $24                                     ; $60c2: $0e $24
    call Call_000_04db                            ; $60c4: $cd $db $04
    ld a, $02                                     ; $60c7: $3e $02
    ldh [$96], a                                  ; $60c9: $e0 $96
    ldh [rSVBK], a                                ; $60cb: $e0 $70
    ld hl, $4c08                                  ; $60cd: $21 $08 $4c
    ld de, $d000                                  ; $60d0: $11 $00 $d0
    call Call_000_0234                            ; $60d3: $cd $34 $02
    ld hl, $4c06                                  ; $60d6: $21 $06 $4c
    ld de, $d4c0                                  ; $60d9: $11 $c0 $d4
    call Call_000_0234                            ; $60dc: $cd $34 $02
    call Call_00c_61b2                            ; $60df: $cd $b2 $61
    call Call_00c_6240                            ; $60e2: $cd $40 $62
    call Call_000_0371                            ; $60e5: $cd $71 $03
    call Call_000_2e3b                            ; $60e8: $cd $3b $2e
    call Call_000_2e3b                            ; $60eb: $cd $3b $2e
    call Call_00c_6481                            ; $60ee: $cd $81 $64
    ld a, $06                                     ; $60f1: $3e $06
    ldh [$96], a                                  ; $60f3: $e0 $96
    ldh [rSVBK], a                                ; $60f5: $e0 $70
    ret                                           ; $60f7: $c9


Call_00c_60f8:
    push bc                                       ; $60f8: $c5
    ld a, $00                                     ; $60f9: $3e $00
    push af                                       ; $60fb: $f5
    ldh a, [$96]                                  ; $60fc: $f0 $96
    push af                                       ; $60fe: $f5
    ld a, $06                                     ; $60ff: $3e $06
    ldh [$96], a                                  ; $6101: $e0 $96
    ldh [rSVBK], a                                ; $6103: $e0 $70
    ldh a, [$91]                                  ; $6105: $f0 $91
    bit 6, a                                      ; $6107: $cb $77
    jr z, jr_00c_611d                             ; $6109: $28 $12

    rst $08                                       ; $610b: $cf
    ld e, e                                       ; $610c: $5b
    ld a, [$d215]                                 ; $610d: $fa $15 $d2
    dec a                                         ; $6110: $3d
    bit 7, a                                      ; $6111: $cb $7f
    jr nz, jr_00c_6118                            ; $6113: $20 $03

    ld [$d215], a                                 ; $6115: $ea $15 $d2

jr_00c_6118:
    call Call_00c_6481                            ; $6118: $cd $81 $64
    jr jr_00c_616f                                ; $611b: $18 $52

jr_00c_611d:
    bit 7, a                                      ; $611d: $cb $7f
    jr z, jr_00c_6133                             ; $611f: $28 $12

    rst $08                                       ; $6121: $cf
    ld e, e                                       ; $6122: $5b
    ld a, [$d215]                                 ; $6123: $fa $15 $d2
    inc a                                         ; $6126: $3c
    cp $0d                                        ; $6127: $fe $0d
    jr nc, jr_00c_612e                            ; $6129: $30 $03

    ld [$d215], a                                 ; $612b: $ea $15 $d2

jr_00c_612e:
    call Call_00c_6481                            ; $612e: $cd $81 $64
    jr jr_00c_616f                                ; $6131: $18 $3c

jr_00c_6133:
    bit 5, a                                      ; $6133: $cb $6f
    jr z, jr_00c_6149                             ; $6135: $28 $12

    rst $08                                       ; $6137: $cf
    ld e, e                                       ; $6138: $5b
    ld a, [$d214]                                 ; $6139: $fa $14 $d2
    dec a                                         ; $613c: $3d
    bit 7, a                                      ; $613d: $cb $7f
    jr nz, jr_00c_6144                            ; $613f: $20 $03

    ld [$d214], a                                 ; $6141: $ea $14 $d2

jr_00c_6144:
    call Call_00c_6481                            ; $6144: $cd $81 $64
    jr jr_00c_616f                                ; $6147: $18 $26

jr_00c_6149:
    bit 4, a                                      ; $6149: $cb $67
    jr z, jr_00c_615f                             ; $614b: $28 $12

    rst $08                                       ; $614d: $cf
    ld e, e                                       ; $614e: $5b
    ld a, [$d214]                                 ; $614f: $fa $14 $d2
    inc a                                         ; $6152: $3c
    cp $08                                        ; $6153: $fe $08
    jr nc, jr_00c_615a                            ; $6155: $30 $03

    ld [$d214], a                                 ; $6157: $ea $14 $d2

jr_00c_615a:
    call Call_00c_6481                            ; $615a: $cd $81 $64
    jr jr_00c_616f                                ; $615d: $18 $10

jr_00c_615f:
    bit 0, a                                      ; $615f: $cb $47
    jr z, jr_00c_6165                             ; $6161: $28 $02

    jr jr_00c_616f                                ; $6163: $18 $0a

jr_00c_6165:
    bit 1, a                                      ; $6165: $cb $4f
    jr z, jr_00c_616f                             ; $6167: $28 $06

    rst $08                                       ; $6169: $cf
    ld e, l                                       ; $616a: $5d
    pop af                                        ; $616b: $f1
    ld a, $ff                                     ; $616c: $3e $ff
    push af                                       ; $616e: $f5

jr_00c_616f:
    pop af                                        ; $616f: $f1
    ld b, a                                       ; $6170: $47
    pop af                                        ; $6171: $f1
    ldh [$96], a                                  ; $6172: $e0 $96
    ldh [rSVBK], a                                ; $6174: $e0 $70
    ld a, b                                       ; $6176: $78
    pop bc                                        ; $6177: $c1
    ret                                           ; $6178: $c9


Call_00c_6179:
    ld a, [$c4b2]                                 ; $6179: $fa $b2 $c4
    rrca                                          ; $617c: $0f
    rrca                                          ; $617d: $0f
    rrca                                          ; $617e: $0f
    and $07                                       ; $617f: $e6 $07
    ld h, $00                                     ; $6181: $26 $00
    ld l, a                                       ; $6183: $6f
    add hl, hl                                    ; $6184: $29
    add hl, hl                                    ; $6185: $29
    add hl, hl                                    ; $6186: $29
    add hl, hl                                    ; $6187: $29
    add hl, hl                                    ; $6188: $29
    ld a, $e0                                     ; $6189: $3e $e0
    add l                                         ; $618b: $85
    ld l, a                                       ; $618c: $6f
    ld a, h                                       ; $618d: $7c
    adc $43                                       ; $618e: $ce $43
    ld h, a                                       ; $6190: $67
    push hl                                       ; $6191: $e5
    ld de, $b1c0                                  ; $6192: $11 $c0 $b1
    ld c, $02                                     ; $6195: $0e $02
    call Call_000_0468                            ; $6197: $cd $68 $04
    pop hl                                        ; $619a: $e1
    ld de, $0100                                  ; $619b: $11 $00 $01
    add hl, de                                    ; $619e: $19
    ld de, $b1e0                                  ; $619f: $11 $e0 $b1
    ld c, $02                                     ; $61a2: $0e $02
    call Call_000_0468                            ; $61a4: $cd $68 $04
    ret                                           ; $61a7: $c9


    ld a, $01                                     ; $61a8: $3e $01
    ldh [$96], a                                  ; $61aa: $e0 $96
    ldh [rSVBK], a                                ; $61ac: $e0 $70
    call Call_00c_6179                            ; $61ae: $cd $79 $61
    ret                                           ; $61b1: $c9


Call_00c_61b2:
    ldh a, [$96]                                  ; $61b2: $f0 $96
    push af                                       ; $61b4: $f5
    push af                                       ; $61b5: $f5
    push bc                                       ; $61b6: $c5
    push de                                       ; $61b7: $d5
    push hl                                       ; $61b8: $e5
    ld b, $00                                     ; $61b9: $06 $00

jr_00c_61bb:
    ld de, $d502                                  ; $61bb: $11 $02 $d5
    ld h, $00                                     ; $61be: $26 $00
    ld l, b                                       ; $61c0: $68
    add hl, hl                                    ; $61c1: $29
    add hl, hl                                    ; $61c2: $29
    add hl, hl                                    ; $61c3: $29
    add hl, hl                                    ; $61c4: $29
    add hl, hl                                    ; $61c5: $29
    add hl, hl                                    ; $61c6: $29
    add hl, de                                    ; $61c7: $19
    ld d, h                                       ; $61c8: $54
    ld e, l                                       ; $61c9: $5d
    ld c, $00                                     ; $61ca: $0e $00

jr_00c_61cc:
    push bc                                       ; $61cc: $c5
    rst $18                                       ; $61cd: $df
    inc [hl]                                      ; $61ce: $34
    dec bc                                        ; $61cf: $0b
    ld a, c                                       ; $61d0: $79
    pop bc                                        ; $61d1: $c1
    or a                                          ; $61d2: $b7
    jr z, jr_00c_61d8                             ; $61d3: $28 $03

    call Call_00c_61f5                            ; $61d5: $cd $f5 $61

jr_00c_61d8:
    ld h, $00                                     ; $61d8: $26 $00
    ld l, $02                                     ; $61da: $2e $02
    add hl, de                                    ; $61dc: $19
    ld d, h                                       ; $61dd: $54
    ld e, l                                       ; $61de: $5d
    inc c                                         ; $61df: $0c
    ld a, c                                       ; $61e0: $79
    cp $0e                                        ; $61e1: $fe $0e
    jr nz, jr_00c_61cc                            ; $61e3: $20 $e7

    inc b                                         ; $61e5: $04
    ld a, b                                       ; $61e6: $78
    cp $12                                        ; $61e7: $fe $12
    jr nz, jr_00c_61bb                            ; $61e9: $20 $d0

    pop hl                                        ; $61eb: $e1
    pop de                                        ; $61ec: $d1
    pop bc                                        ; $61ed: $c1
    pop af                                        ; $61ee: $f1
    pop af                                        ; $61ef: $f1
    ldh [$96], a                                  ; $61f0: $e0 $96
    ldh [rSVBK], a                                ; $61f2: $e0 $70
    ret                                           ; $61f4: $c9


Call_00c_61f5:
    push bc                                       ; $61f5: $c5
    ld b, a                                       ; $61f6: $47
    push af                                       ; $61f7: $f5
    push bc                                       ; $61f8: $c5
    push de                                       ; $61f9: $d5
    push hl                                       ; $61fa: $e5
    ld a, $02                                     ; $61fb: $3e $02
    ldh [$96], a                                  ; $61fd: $e0 $96
    ldh [rSVBK], a                                ; $61ff: $e0 $70
    ld a, b                                       ; $6201: $78
    cp $02                                        ; $6202: $fe $02
    jr z, jr_00c_620b                             ; $6204: $28 $05

    ld hl, $d51e                                  ; $6206: $21 $1e $d5
    jr jr_00c_620e                                ; $6209: $18 $03

jr_00c_620b:
    ld hl, $d55e                                  ; $620b: $21 $5e $d5

jr_00c_620e:
    call Call_00c_6217                            ; $620e: $cd $17 $62
    pop hl                                        ; $6211: $e1
    pop de                                        ; $6212: $d1
    pop bc                                        ; $6213: $c1
    pop af                                        ; $6214: $f1
    pop bc                                        ; $6215: $c1
    ret                                           ; $6216: $c9


Call_00c_6217:
    push de                                       ; $6217: $d5
    push hl                                       ; $6218: $e5
    ld a, [hl+]                                   ; $6219: $2a
    push hl                                       ; $621a: $e5
    ld h, d                                       ; $621b: $62
    ld l, e                                       ; $621c: $6b
    inc de                                        ; $621d: $13
    ld [hl], a                                    ; $621e: $77
    pop hl                                        ; $621f: $e1
    ld a, [hl]                                    ; $6220: $7e
    ld h, d                                       ; $6221: $62
    ld l, e                                       ; $6222: $6b
    ld [hl], a                                    ; $6223: $77
    pop hl                                        ; $6224: $e1
    ld d, $00                                     ; $6225: $16 $00
    ld e, $20                                     ; $6227: $1e $20
    add hl, de                                    ; $6229: $19
    pop de                                        ; $622a: $d1
    push hl                                       ; $622b: $e5
    ld h, $00                                     ; $622c: $26 $00
    ld l, $20                                     ; $622e: $2e $20
    add hl, de                                    ; $6230: $19
    ld d, h                                       ; $6231: $54
    ld e, l                                       ; $6232: $5d
    pop hl                                        ; $6233: $e1
    ld a, [hl+]                                   ; $6234: $2a
    push hl                                       ; $6235: $e5
    ld h, d                                       ; $6236: $62
    ld l, e                                       ; $6237: $6b
    inc de                                        ; $6238: $13
    ld [hl], a                                    ; $6239: $77
    pop hl                                        ; $623a: $e1
    ld a, [hl]                                    ; $623b: $7e
    ld h, d                                       ; $623c: $62
    ld l, e                                       ; $623d: $6b
    ld [hl], a                                    ; $623e: $77
    ret                                           ; $623f: $c9


Call_00c_6240:
    push af                                       ; $6240: $f5
    push bc                                       ; $6241: $c5
    push de                                       ; $6242: $d5
    push hl                                       ; $6243: $e5
    ldh a, [$96]                                  ; $6244: $f0 $96
    push af                                       ; $6246: $f5
    ld a, $06                                     ; $6247: $3e $06
    ldh [$96], a                                  ; $6249: $e0 $96
    ldh [rSVBK], a                                ; $624b: $e0 $70
    ld c, $04                                     ; $624d: $0e $04

jr_00c_624f:
    ld b, $00                                     ; $624f: $06 $00

jr_00c_6251:
    push bc                                       ; $6251: $c5
    rst $18                                       ; $6252: $df
    inc [hl]                                      ; $6253: $34
    dec bc                                        ; $6254: $0b
    ld a, c                                       ; $6255: $79
    pop bc                                        ; $6256: $c1
    or a                                          ; $6257: $b7
    jr nz, jr_00c_6263                            ; $6258: $20 $09

    inc b                                         ; $625a: $04
    ld a, b                                       ; $625b: $78
    cp $12                                        ; $625c: $fe $12
    jr nz, jr_00c_6251                            ; $625e: $20 $f1

    call Call_00c_62f3                            ; $6260: $cd $f3 $62

jr_00c_6263:
    inc c                                         ; $6263: $0c
    ld a, c                                       ; $6264: $79
    cp $0a                                        ; $6265: $fe $0a
    jr nz, jr_00c_624f                            ; $6267: $20 $e6

    ld c, $0c                                     ; $6269: $0e $0c
    ld b, $00                                     ; $626b: $06 $00

jr_00c_626d:
    push bc                                       ; $626d: $c5
    rst $18                                       ; $626e: $df
    inc [hl]                                      ; $626f: $34
    dec bc                                        ; $6270: $0b
    ld a, c                                       ; $6271: $79
    pop bc                                        ; $6272: $c1
    or a                                          ; $6273: $b7
    jr nz, jr_00c_627f                            ; $6274: $20 $09

    inc b                                         ; $6276: $04
    ld a, b                                       ; $6277: $78
    cp $12                                        ; $6278: $fe $12
    jr nz, jr_00c_626d                            ; $627a: $20 $f1

    call Call_00c_62f3                            ; $627c: $cd $f3 $62

jr_00c_627f:
    xor a                                         ; $627f: $af
    ld c, $00                                     ; $6280: $0e $00
    ld d, $06                                     ; $6282: $16 $06

jr_00c_6284:
    push bc                                       ; $6284: $c5
    ld b, c                                       ; $6285: $41
    push af                                       ; $6286: $f5
    push bc                                       ; $6287: $c5
    push de                                       ; $6288: $d5
    push hl                                       ; $6289: $e5
    rst $18                                       ; $628a: $df
    ld a, [hl+]                                   ; $628b: $2a
    dec bc                                        ; $628c: $0b
    pop hl                                        ; $628d: $e1
    pop de                                        ; $628e: $d1
    pop bc                                        ; $628f: $c1
    pop af                                        ; $6290: $f1
    rst $18                                       ; $6291: $df
    ld b, d                                       ; $6292: $42
    dec bc                                        ; $6293: $0b
    add b                                         ; $6294: $80
    pop bc                                        ; $6295: $c1
    ld b, a                                       ; $6296: $47
    inc c                                         ; $6297: $0c
    dec d                                         ; $6298: $15
    jr nz, jr_00c_6284                            ; $6299: $20 $e9

    ld a, b                                       ; $629b: $78
    cp $32                                        ; $629c: $fe $32
    jr nc, jr_00c_62a5                            ; $629e: $30 $05

    ld c, $0a                                     ; $62a0: $0e $0a
    call Call_00c_62f3                            ; $62a2: $cd $f3 $62

jr_00c_62a5:
    ld a, b                                       ; $62a5: $78
    cp $6c                                        ; $62a6: $fe $6c
    jr nc, jr_00c_62af                            ; $62a8: $30 $05

    ld c, $0d                                     ; $62aa: $0e $0d
    call Call_00c_62f3                            ; $62ac: $cd $f3 $62

jr_00c_62af:
    ld h, $00                                     ; $62af: $26 $00
    ld l, $00                                     ; $62b1: $2e $00

jr_00c_62b3:
    ld c, $00                                     ; $62b3: $0e $00
    ld b, l                                       ; $62b5: $45
    rst $18                                       ; $62b6: $df
    inc l                                         ; $62b7: $2c
    dec bc                                        ; $62b8: $0b
    ld a, b                                       ; $62b9: $78
    add h                                         ; $62ba: $84
    ld h, a                                       ; $62bb: $67
    inc l                                         ; $62bc: $2c
    ld a, l                                       ; $62bd: $7d
    cp $06                                        ; $62be: $fe $06
    jr nz, jr_00c_62b3                            ; $62c0: $20 $f1

    ld a, h                                       ; $62c2: $7c
    cp $1e                                        ; $62c3: $fe $1e
    jr nc, jr_00c_62cc                            ; $62c5: $30 $05

    ld c, $0b                                     ; $62c7: $0e $0b
    call Call_00c_62f3                            ; $62c9: $cd $f3 $62

jr_00c_62cc:
    ld b, $0e                                     ; $62cc: $06 $0e

jr_00c_62ce:
    ld c, $00                                     ; $62ce: $0e $00

jr_00c_62d0:
    push bc                                       ; $62d0: $c5
    rst $18                                       ; $62d1: $df
    inc [hl]                                      ; $62d2: $34
    dec bc                                        ; $62d3: $0b
    ld a, c                                       ; $62d4: $79
    pop bc                                        ; $62d5: $c1
    or a                                          ; $62d6: $b7
    jr nz, jr_00c_62e3                            ; $62d7: $20 $0a

    inc c                                         ; $62d9: $0c
    ld a, c                                       ; $62da: $79
    cp $0e                                        ; $62db: $fe $0e
    jr nz, jr_00c_62d0                            ; $62dd: $20 $f1

    ld c, b                                       ; $62df: $48
    call Call_00c_62f3                            ; $62e0: $cd $f3 $62

jr_00c_62e3:
    inc b                                         ; $62e3: $04
    ld a, b                                       ; $62e4: $78
    cp $12                                        ; $62e5: $fe $12
    jr nz, jr_00c_62ce                            ; $62e7: $20 $e5

    pop af                                        ; $62e9: $f1
    ldh [$96], a                                  ; $62ea: $e0 $96
    ldh [rSVBK], a                                ; $62ec: $e0 $70
    pop hl                                        ; $62ee: $e1
    pop de                                        ; $62ef: $d1
    pop bc                                        ; $62f0: $c1
    pop af                                        ; $62f1: $f1
    ret                                           ; $62f2: $c9


Call_00c_62f3:
    push af                                       ; $62f3: $f5
    push bc                                       ; $62f4: $c5
    push de                                       ; $62f5: $d5
    push hl                                       ; $62f6: $e5
    ld a, $02                                     ; $62f7: $3e $02
    ldh [$96], a                                  ; $62f9: $e0 $96
    ldh [rSVBK], a                                ; $62fb: $e0 $70
    ld de, $d500                                  ; $62fd: $11 $00 $d5
    ld h, $00                                     ; $6300: $26 $00
    ld l, c                                       ; $6302: $69
    add hl, hl                                    ; $6303: $29
    add hl, hl                                    ; $6304: $29
    add hl, hl                                    ; $6305: $29
    add hl, hl                                    ; $6306: $29
    add hl, hl                                    ; $6307: $29
    add hl, hl                                    ; $6308: $29
    add hl, de                                    ; $6309: $19
    ld d, h                                       ; $630a: $54
    ld e, l                                       ; $630b: $5d
    push de                                       ; $630c: $d5
    ld hl, $d4de                                  ; $630d: $21 $de $d4
    call Call_00c_6217                            ; $6310: $cd $17 $62
    pop hl                                        ; $6313: $e1
    ld de, $04c0                                  ; $6314: $11 $c0 $04
    ld a, l                                       ; $6317: $7d
    sub e                                         ; $6318: $93
    ld l, a                                       ; $6319: $6f
    ld a, h                                       ; $631a: $7c
    sbc d                                         ; $631b: $9a
    ld h, a                                       ; $631c: $67
    ld d, h                                       ; $631d: $54
    ld e, l                                       ; $631e: $5d
    ld hl, $d01e                                  ; $631f: $21 $1e $d0
    call Call_00c_6217                            ; $6322: $cd $17 $62
    ld a, c                                       ; $6325: $79
    cp $0e                                        ; $6326: $fe $0e
    jr nc, jr_00c_634d                            ; $6328: $30 $23

    ld de, $d4c2                                  ; $632a: $11 $c2 $d4
    ld h, $00                                     ; $632d: $26 $00
    ld l, c                                       ; $632f: $69
    add hl, hl                                    ; $6330: $29
    add hl, de                                    ; $6331: $19
    ld d, h                                       ; $6332: $54
    ld e, l                                       ; $6333: $5d
    push de                                       ; $6334: $d5
    ld hl, $d4de                                  ; $6335: $21 $de $d4
    call Call_00c_6217                            ; $6338: $cd $17 $62
    pop hl                                        ; $633b: $e1
    ld de, $04c0                                  ; $633c: $11 $c0 $04
    ld a, l                                       ; $633f: $7d
    sub e                                         ; $6340: $93
    ld l, a                                       ; $6341: $6f
    ld a, h                                       ; $6342: $7c
    sbc d                                         ; $6343: $9a
    ld h, a                                       ; $6344: $67
    ld d, h                                       ; $6345: $54
    ld e, l                                       ; $6346: $5d
    ld hl, $d01e                                  ; $6347: $21 $1e $d0
    call Call_00c_6217                            ; $634a: $cd $17 $62

jr_00c_634d:
    pop hl                                        ; $634d: $e1
    pop de                                        ; $634e: $d1
    pop bc                                        ; $634f: $c1
    pop af                                        ; $6350: $f1
    ret                                           ; $6351: $c9


Call_00c_6352:
    ldh a, [$96]                                  ; $6352: $f0 $96
    push af                                       ; $6354: $f5
    push af                                       ; $6355: $f5
    push bc                                       ; $6356: $c5
    push de                                       ; $6357: $d5
    push hl                                       ; $6358: $e5
    ld a, $06                                     ; $6359: $3e $06
    ldh [$96], a                                  ; $635b: $e0 $96
    ldh [rSVBK], a                                ; $635d: $e0 $70
    ld a, [$d214]                                 ; $635f: $fa $14 $d2
    add a                                         ; $6362: $87
    inc a                                         ; $6363: $3c
    inc a                                         ; $6364: $3c
    add l                                         ; $6365: $85
    ld l, a                                       ; $6366: $6f
    jr nc, jr_00c_636a                            ; $6367: $30 $01

    inc h                                         ; $6369: $24

jr_00c_636a:
    ld c, $02                                     ; $636a: $0e $02

jr_00c_636c:
    ld b, $00                                     ; $636c: $06 $00
    push hl                                       ; $636e: $e5
    push de                                       ; $636f: $d5

jr_00c_6370:
    ld a, $02                                     ; $6370: $3e $02
    ldh [$96], a                                  ; $6372: $e0 $96
    ldh [rSVBK], a                                ; $6374: $e0 $70
    ld a, [hl]                                    ; $6376: $7e
    push af                                       ; $6377: $f5
    ld a, $01                                     ; $6378: $3e $01
    ldh [$96], a                                  ; $637a: $e0 $96
    ldh [rSVBK], a                                ; $637c: $e0 $70
    pop af                                        ; $637e: $f1
    push hl                                       ; $637f: $e5
    ld h, d                                       ; $6380: $62
    ld l, e                                       ; $6381: $6b
    ld [hl], a                                    ; $6382: $77
    pop hl                                        ; $6383: $e1
    inc hl                                        ; $6384: $23
    inc de                                        ; $6385: $13
    inc b                                         ; $6386: $04
    ld a, b                                       ; $6387: $78
    cp $0e                                        ; $6388: $fe $0e
    jr nz, jr_00c_6370                            ; $638a: $20 $e4

    pop de                                        ; $638c: $d1
    ld a, $20                                     ; $638d: $3e $20
    add e                                         ; $638f: $83
    ld e, a                                       ; $6390: $5f
    jr nc, jr_00c_6394                            ; $6391: $30 $01

    inc d                                         ; $6393: $14

jr_00c_6394:
    pop hl                                        ; $6394: $e1
    ld a, $20                                     ; $6395: $3e $20
    add l                                         ; $6397: $85
    ld l, a                                       ; $6398: $6f
    jr nc, jr_00c_639c                            ; $6399: $30 $01

    inc h                                         ; $639b: $24

jr_00c_639c:
    dec c                                         ; $639c: $0d
    jr nz, jr_00c_636c                            ; $639d: $20 $cd

    pop hl                                        ; $639f: $e1
    pop de                                        ; $63a0: $d1
    pop bc                                        ; $63a1: $c1
    pop af                                        ; $63a2: $f1
    pop af                                        ; $63a3: $f1
    ldh [$96], a                                  ; $63a4: $e0 $96
    ldh [rSVBK], a                                ; $63a6: $e0 $70
    ret                                           ; $63a8: $c9


Call_00c_63a9:
    ldh a, [$96]                                  ; $63a9: $f0 $96
    push af                                       ; $63ab: $f5
    push af                                       ; $63ac: $f5
    push bc                                       ; $63ad: $c5
    push de                                       ; $63ae: $d5
    push hl                                       ; $63af: $e5
    push de                                       ; $63b0: $d5
    push hl                                       ; $63b1: $e5
    ld a, $06                                     ; $63b2: $3e $06
    ldh [$96], a                                  ; $63b4: $e0 $96
    ldh [rSVBK], a                                ; $63b6: $e0 $70
    ld a, [$d215]                                 ; $63b8: $fa $15 $d2
    ld h, $00                                     ; $63bb: $26 $00
    ld l, a                                       ; $63bd: $6f
    add hl, hl                                    ; $63be: $29
    add hl, hl                                    ; $63bf: $29
    add hl, hl                                    ; $63c0: $29
    add hl, hl                                    ; $63c1: $29
    add hl, hl                                    ; $63c2: $29
    add hl, hl                                    ; $63c3: $29
    ld d, h                                       ; $63c4: $54
    ld e, l                                       ; $63c5: $5d
    pop hl                                        ; $63c6: $e1
    add hl, de                                    ; $63c7: $19
    pop de                                        ; $63c8: $d1

jr_00c_63c9:
    push hl                                       ; $63c9: $e5
    push de                                       ; $63ca: $d5
    ld a, $02                                     ; $63cb: $3e $02
    ldh [$96], a                                  ; $63cd: $e0 $96
    ldh [rSVBK], a                                ; $63cf: $e0 $70
    ld a, [hl]                                    ; $63d1: $7e
    push af                                       ; $63d2: $f5
    ld a, $01                                     ; $63d3: $3e $01
    ldh [$96], a                                  ; $63d5: $e0 $96
    ldh [rSVBK], a                                ; $63d7: $e0 $70
    pop af                                        ; $63d9: $f1
    ld h, d                                       ; $63da: $62
    ld l, e                                       ; $63db: $6b
    ld [hl], a                                    ; $63dc: $77
    pop de                                        ; $63dd: $d1
    pop hl                                        ; $63de: $e1
    inc de                                        ; $63df: $13
    inc hl                                        ; $63e0: $23
    push hl                                       ; $63e1: $e5
    push de                                       ; $63e2: $d5
    ld a, $02                                     ; $63e3: $3e $02
    ldh [$96], a                                  ; $63e5: $e0 $96
    ldh [rSVBK], a                                ; $63e7: $e0 $70
    ld a, [hl]                                    ; $63e9: $7e
    push af                                       ; $63ea: $f5
    ld a, $01                                     ; $63eb: $3e $01
    ldh [$96], a                                  ; $63ed: $e0 $96
    ldh [rSVBK], a                                ; $63ef: $e0 $70
    pop af                                        ; $63f1: $f1
    ld h, d                                       ; $63f2: $62
    ld l, e                                       ; $63f3: $6b
    ld [hl], a                                    ; $63f4: $77
    pop de                                        ; $63f5: $d1
    ld hl, $001f                                  ; $63f6: $21 $1f $00
    add hl, de                                    ; $63f9: $19
    ld d, h                                       ; $63fa: $54
    ld e, l                                       ; $63fb: $5d
    pop hl                                        ; $63fc: $e1
    push de                                       ; $63fd: $d5
    ld de, $001f                                  ; $63fe: $11 $1f $00
    add hl, de                                    ; $6401: $19
    pop de                                        ; $6402: $d1
    dec c                                         ; $6403: $0d
    jr nz, jr_00c_63c9                            ; $6404: $20 $c3

    pop hl                                        ; $6406: $e1
    pop de                                        ; $6407: $d1
    pop bc                                        ; $6408: $c1
    pop af                                        ; $6409: $f1
    pop af                                        ; $640a: $f1
    ldh [$96], a                                  ; $640b: $e0 $96
    ldh [rSVBK], a                                ; $640d: $e0 $70
    ret                                           ; $640f: $c9


Call_00c_6410:
    ldh a, [$96]                                  ; $6410: $f0 $96
    push af                                       ; $6412: $f5
    push af                                       ; $6413: $f5
    push bc                                       ; $6414: $c5
    push de                                       ; $6415: $d5
    push hl                                       ; $6416: $e5
    push de                                       ; $6417: $d5
    push hl                                       ; $6418: $e5
    ld a, $06                                     ; $6419: $3e $06
    ldh [$96], a                                  ; $641b: $e0 $96
    ldh [rSVBK], a                                ; $641d: $e0 $70
    ld a, [$d214]                                 ; $641f: $fa $14 $d2
    add a                                         ; $6422: $87
    inc a                                         ; $6423: $3c
    inc a                                         ; $6424: $3c
    push af                                       ; $6425: $f5
    ld a, [$d215]                                 ; $6426: $fa $15 $d2
    ld h, $00                                     ; $6429: $26 $00
    ld l, a                                       ; $642b: $6f
    add hl, hl                                    ; $642c: $29
    add hl, hl                                    ; $642d: $29
    add hl, hl                                    ; $642e: $29
    add hl, hl                                    ; $642f: $29
    add hl, hl                                    ; $6430: $29
    add hl, hl                                    ; $6431: $29
    ld d, $00                                     ; $6432: $16 $00
    ld e, $40                                     ; $6434: $1e $40
    add hl, de                                    ; $6436: $19
    pop af                                        ; $6437: $f1

Call_00c_6438:
    ld d, h                                       ; $6438: $54
    ld e, l                                       ; $6439: $5d
    add e                                         ; $643a: $83
    ld e, a                                       ; $643b: $5f
    jr nc, jr_00c_643f                            ; $643c: $30 $01

    inc d                                         ; $643e: $14

jr_00c_643f:
    pop hl                                        ; $643f: $e1
    add hl, de                                    ; $6440: $19
    pop de                                        ; $6441: $d1
    ld c, $0c                                     ; $6442: $0e $0c

jr_00c_6444:
    ld b, $00                                     ; $6444: $06 $00
    push hl                                       ; $6446: $e5
    push de                                       ; $6447: $d5

jr_00c_6448:
    ld a, $02                                     ; $6448: $3e $02
    ldh [$96], a                                  ; $644a: $e0 $96
    ldh [rSVBK], a                                ; $644c: $e0 $70
    ld a, [hl]                                    ; $644e: $7e
    push af                                       ; $644f: $f5
    ld a, $01                                     ; $6450: $3e $01
    ldh [$96], a                                  ; $6452: $e0 $96
    ldh [rSVBK], a                                ; $6454: $e0 $70
    pop af                                        ; $6456: $f1
    push hl                                       ; $6457: $e5
    ld h, d                                       ; $6458: $62
    ld l, e                                       ; $6459: $6b
    ld [hl], a                                    ; $645a: $77
    pop hl                                        ; $645b: $e1
    inc hl                                        ; $645c: $23
    inc de                                        ; $645d: $13
    inc b                                         ; $645e: $04
    ld a, b                                       ; $645f: $78
    cp $0e                                        ; $6460: $fe $0e
    jr nz, jr_00c_6448                            ; $6462: $20 $e4

    pop de                                        ; $6464: $d1
    ld a, $20                                     ; $6465: $3e $20
    add e                                         ; $6467: $83
    ld e, a                                       ; $6468: $5f
    jr nc, jr_00c_646c                            ; $6469: $30 $01

    inc d                                         ; $646b: $14

jr_00c_646c:
    pop hl                                        ; $646c: $e1
    ld a, $20                                     ; $646d: $3e $20
    add l                                         ; $646f: $85
    ld l, a                                       ; $6470: $6f
    jr nc, jr_00c_6474                            ; $6471: $30 $01

    inc h                                         ; $6473: $24

jr_00c_6474:
    dec c                                         ; $6474: $0d
    jr nz, jr_00c_6444                            ; $6475: $20 $cd

    pop hl                                        ; $6477: $e1
    pop de                                        ; $6478: $d1
    pop bc                                        ; $6479: $c1
    pop af                                        ; $647a: $f1
    pop af                                        ; $647b: $f1
    ldh [$96], a                                  ; $647c: $e0 $96
    ldh [rSVBK], a                                ; $647e: $e0 $70
    ret                                           ; $6480: $c9


Call_00c_6481:
    push af                                       ; $6481: $f5
    push bc                                       ; $6482: $c5
    push de                                       ; $6483: $d5
    push hl                                       ; $6484: $e5
    ldh a, [$96]                                  ; $6485: $f0 $96
    push af                                       ; $6487: $f5
    ld hl, $d4c0                                  ; $6488: $21 $c0 $d4
    ld de, $d464                                  ; $648b: $11 $64 $d4
    call Call_00c_6352                            ; $648e: $cd $52 $63
    ld hl, $d500                                  ; $6491: $21 $00 $d5
    ld de, $d4a2                                  ; $6494: $11 $a2 $d4
    ld c, $0c                                     ; $6497: $0e $0c
    call Call_00c_63a9                            ; $6499: $cd $a9 $63
    ld hl, $d4c0                                  ; $649c: $21 $c0 $d4
    ld de, $d4a4                                  ; $649f: $11 $a4 $d4
    call Call_00c_6410                            ; $64a2: $cd $10 $64
    ld hl, $d000                                  ; $64a5: $21 $00 $d0
    ld de, $d064                                  ; $64a8: $11 $64 $d0
    call Call_00c_6352                            ; $64ab: $cd $52 $63
    ld hl, $d040                                  ; $64ae: $21 $40 $d0
    ld de, $d0a2                                  ; $64b1: $11 $a2 $d0
    call Call_00c_63a9                            ; $64b4: $cd $a9 $63
    ld hl, $d000                                  ; $64b7: $21 $00 $d0
    ld de, $d0a4                                  ; $64ba: $11 $a4 $d0
    call Call_00c_6410                            ; $64bd: $cd $10 $64
    call Call_00c_6563                            ; $64c0: $cd $63 $65
    pop af                                        ; $64c3: $f1
    ldh [$96], a                                  ; $64c4: $e0 $96
    ldh [rSVBK], a                                ; $64c6: $e0 $70
    pop hl                                        ; $64c8: $e1
    pop de                                        ; $64c9: $d1
    pop bc                                        ; $64ca: $c1
    pop af                                        ; $64cb: $f1
    ret                                           ; $64cc: $c9


    push af                                       ; $64cd: $f5
    push bc                                       ; $64ce: $c5
    push de                                       ; $64cf: $d5
    push hl                                       ; $64d0: $e5
    ldh a, [$96]                                  ; $64d1: $f0 $96
    push af                                       ; $64d3: $f5
    ld a, $03                                     ; $64d4: $3e $03
    ldh [$96], a                                  ; $64d6: $e0 $96
    ldh [rSVBK], a                                ; $64d8: $e0 $70
    ld a, [$c4b2]                                 ; $64da: $fa $b2 $c4
    rrca                                          ; $64dd: $0f
    rrca                                          ; $64de: $0f
    and $07                                       ; $64df: $e6 $07
    ld hl, $4950                                  ; $64e1: $21 $50 $49
    add l                                         ; $64e4: $85
    ld l, a                                       ; $64e5: $6f
    jr nc, jr_00c_64e9                            ; $64e6: $30 $01

    inc h                                         ; $64e8: $24

jr_00c_64e9:
    ld a, [hl]                                    ; $64e9: $7e
    cp $04                                        ; $64ea: $fe $04
    jr z, jr_00c_64fe                             ; $64ec: $28 $10

    or a                                          ; $64ee: $b7
    jr nz, jr_00c_6509                            ; $64ef: $20 $18

    ld hl, $d080                                  ; $64f1: $21 $80 $d0
    ld de, $8e00                                  ; $64f4: $11 $00 $8e
    ld c, $08                                     ; $64f7: $0e $08
    call Call_000_0468                            ; $64f9: $cd $68 $04
    jr jr_00c_6509                                ; $64fc: $18 $0b

jr_00c_64fe:
    ld hl, $d000                                  ; $64fe: $21 $00 $d0
    ld de, $8e00                                  ; $6501: $11 $00 $8e
    ld c, $08                                     ; $6504: $0e $08
    call Call_000_0468                            ; $6506: $cd $68 $04

jr_00c_6509:
    ld a, $06                                     ; $6509: $3e $06
    ldh [$96], a                                  ; $650b: $e0 $96
    ldh [rSVBK], a                                ; $650d: $e0 $70
    ld a, [$d214]                                 ; $650f: $fa $14 $d2
    or a                                          ; $6512: $b7
    jr z, jr_00c_6521                             ; $6513: $28 $0c

    ld hl, $4947                                  ; $6515: $21 $47 $49
    ld de, $1c1f                                  ; $6518: $11 $1f $1c
    ld bc, $01e0                                  ; $651b: $01 $e0 $01
    call Call_000_26ea                            ; $651e: $cd $ea $26

jr_00c_6521:
    ld a, [$d214]                                 ; $6521: $fa $14 $d2
    cp $07                                        ; $6524: $fe $07
    jr z, jr_00c_6534                             ; $6526: $28 $0c

    ld hl, $4947                                  ; $6528: $21 $47 $49
    ld de, $961f                                  ; $652b: $11 $1f $96
    ld bc, $21e0                                  ; $652e: $01 $e0 $21
    call Call_000_26ea                            ; $6531: $cd $ea $26

jr_00c_6534:
    ld a, [$d215]                                 ; $6534: $fa $15 $d2
    or a                                          ; $6537: $b7
    jr z, jr_00c_6546                             ; $6538: $28 $0c

    ld hl, $4947                                  ; $653a: $21 $47 $49
    ld de, $102a                                  ; $653d: $11 $2a $10
    ld bc, $01e4                                  ; $6540: $01 $e4 $01
    call Call_000_26ea                            ; $6543: $cd $ea $26

jr_00c_6546:
    ld a, [$d215]                                 ; $6546: $fa $15 $d2
    cp $0c                                        ; $6549: $fe $0c
    jr z, jr_00c_6559                             ; $654b: $28 $0c

    ld hl, $4947                                  ; $654d: $21 $47 $49
    ld de, $108a                                  ; $6550: $11 $8a $10
    ld bc, $41e4                                  ; $6553: $01 $e4 $41
    call Call_000_26ea                            ; $6556: $cd $ea $26

jr_00c_6559:
    pop af                                        ; $6559: $f1
    ldh [$96], a                                  ; $655a: $e0 $96
    ldh [rSVBK], a                                ; $655c: $e0 $70
    pop hl                                        ; $655e: $e1
    pop de                                        ; $655f: $d1
    pop bc                                        ; $6560: $c1
    pop af                                        ; $6561: $f1
    ret                                           ; $6562: $c9


Call_00c_6563:
    ldh a, [$96]                                  ; $6563: $f0 $96
    push af                                       ; $6565: $f5
    push af                                       ; $6566: $f5
    push bc                                       ; $6567: $c5
    push de                                       ; $6568: $d5
    push hl                                       ; $6569: $e5
    ld a, $01                                     ; $656a: $3e $01
    ldh [$96], a                                  ; $656c: $e0 $96
    ldh [rSVBK], a                                ; $656e: $e0 $70
    ld hl, $d000                                  ; $6570: $21 $00 $d0
    ld de, $b800                                  ; $6573: $11 $00 $b8
    ld c, $12                                     ; $6576: $0e $12
    call Call_000_0468                            ; $6578: $cd $68 $04
    call Call_000_2e3b                            ; $657b: $cd $3b $2e
    ld hl, $d400                                  ; $657e: $21 $00 $d4
    ld de, $9800                                  ; $6581: $11 $00 $98
    ld c, $12                                     ; $6584: $0e $12
    call Call_000_0468                            ; $6586: $cd $68 $04
    call Call_000_2e3b                            ; $6589: $cd $3b $2e
    ld hl, $d120                                  ; $658c: $21 $20 $d1
    ld de, $b920                                  ; $658f: $11 $20 $b9
    ld c, $12                                     ; $6592: $0e $12
    call Call_000_0468                            ; $6594: $cd $68 $04
    call Call_000_2e3b                            ; $6597: $cd $3b $2e
    ld hl, $d520                                  ; $659a: $21 $20 $d5
    ld de, $9920                                  ; $659d: $11 $20 $99
    ld c, $12                                     ; $65a0: $0e $12
    call Call_000_0468                            ; $65a2: $cd $68 $04
    call Call_000_2e3b                            ; $65a5: $cd $3b $2e
    pop hl                                        ; $65a8: $e1
    pop de                                        ; $65a9: $d1
    pop bc                                        ; $65aa: $c1
    pop af                                        ; $65ab: $f1
    pop af                                        ; $65ac: $f1
    ldh [$96], a                                  ; $65ad: $e0 $96
    ldh [rSVBK], a                                ; $65af: $e0 $70
    ret                                           ; $65b1: $c9


    call Call_00c_65e3                            ; $65b2: $cd $e3 $65
    ld a, $0f                                     ; $65b5: $3e $0f
    ld hl, $4821                                  ; $65b7: $21 $21 $48
    call Call_000_23e8                            ; $65ba: $cd $e8 $23
    call Call_000_2e3b                            ; $65bd: $cd $3b $2e
    ld c, $10                                     ; $65c0: $0e $10
    call Call_000_25af                            ; $65c2: $cd $af $25
    call Call_000_2625                            ; $65c5: $cd $25 $26

jr_00c_65c8:
    call Call_000_2e3b                            ; $65c8: $cd $3b $2e
    call Call_00c_6641                            ; $65cb: $cd $41 $66
    cp $ff                                        ; $65ce: $fe $ff
    jr nz, jr_00c_65c8                            ; $65d0: $20 $f6

    push af                                       ; $65d2: $f5
    ld hl, $4821                                  ; $65d3: $21 $21 $48
    call Call_000_2449                            ; $65d6: $cd $49 $24
    ld c, $10                                     ; $65d9: $0e $10
    call Call_000_25a1                            ; $65db: $cd $a1 $25
    call Call_000_2625                            ; $65de: $cd $25 $26
    pop af                                        ; $65e1: $f1
    ret                                           ; $65e2: $c9


Call_00c_65e3:
    ld a, $06                                     ; $65e3: $3e $06
    ldh [$96], a                                  ; $65e5: $e0 $96
    ldh [rSVBK], a                                ; $65e7: $e0 $70
    xor a                                         ; $65e9: $af
    ldh [$8a], a                                  ; $65ea: $e0 $8a
    ldh [$8b], a                                  ; $65ec: $e0 $8b
    call Call_000_0341                            ; $65ee: $cd $41 $03
    call Call_000_23b6                            ; $65f1: $cd $b6 $23
    ld a, $01                                     ; $65f4: $3e $01
    ldh [$96], a                                  ; $65f6: $e0 $96
    ldh [rSVBK], a                                ; $65f8: $e0 $70
    ld hl, $4b1e                                  ; $65fa: $21 $1e $4b
    ld de, $d000                                  ; $65fd: $11 $00 $d0
    call Call_000_0234                            ; $6600: $cd $34 $02
    ld hl, $d000                                  ; $6603: $21 $00 $d0
    ld de, $b000                                  ; $6606: $11 $00 $b0
    ld c, $80                                     ; $6609: $0e $80
    call Call_000_04db                            ; $660b: $cd $db $04
    ld hl, $d800                                  ; $660e: $21 $00 $d8
    ld de, $a800                                  ; $6611: $11 $00 $a8
    ld c, $80                                     ; $6614: $0e $80
    call Call_000_04db                            ; $6616: $cd $db $04
    ld hl, $5c00                                  ; $6619: $21 $00 $5c
    ld de, $0008                                  ; $661c: $11 $08 $00
    call Call_000_0595                            ; $661f: $cd $95 $05
    ld hl, $4c0c                                  ; $6622: $21 $0c $4c
    ld de, $d000                                  ; $6625: $11 $00 $d0
    call Call_000_0234                            ; $6628: $cd $34 $02
    ld hl, $4c0a                                  ; $662b: $21 $0a $4c
    ld de, $d400                                  ; $662e: $11 $00 $d4
    call Call_000_0234                            ; $6631: $cd $34 $02
    call Call_00c_665a                            ; $6634: $cd $5a $66
    call Call_000_0371                            ; $6637: $cd $71 $03
    ld a, $06                                     ; $663a: $3e $06
    ldh [$96], a                                  ; $663c: $e0 $96
    ldh [rSVBK], a                                ; $663e: $e0 $70
    ret                                           ; $6640: $c9


Call_00c_6641:
    ld a, $00                                     ; $6641: $3e $00
    push af                                       ; $6643: $f5
    ldh a, [$90]                                  ; $6644: $f0 $90
    bit 0, a                                      ; $6646: $cb $47
    jr z, jr_00c_664c                             ; $6648: $28 $02

    jr jr_00c_6658                                ; $664a: $18 $0c

jr_00c_664c:
    bit 1, a                                      ; $664c: $cb $4f
    jr z, jr_00c_6658                             ; $664e: $28 $08

    rst $08                                       ; $6650: $cf
    ld e, l                                       ; $6651: $5d
    pop af                                        ; $6652: $f1
    ld a, $ff                                     ; $6653: $3e $ff
    push af                                       ; $6655: $f5
    jr jr_00c_6658                                ; $6656: $18 $00

jr_00c_6658:
    pop af                                        ; $6658: $f1
    ret                                           ; $6659: $c9


Call_00c_665a:
Jump_00c_665a:
    push af                                       ; $665a: $f5
    push bc                                       ; $665b: $c5
    push de                                       ; $665c: $d5
    push hl                                       ; $665d: $e5
    ld a, $02                                     ; $665e: $3e $02
    ldh [$96], a                                  ; $6660: $e0 $96
    ldh [rSVBK], a                                ; $6662: $e0 $70
    ld hl, $4c1c                                  ; $6664: $21 $1c $4c
    ld de, $d000                                  ; $6667: $11 $00 $d0
    call Call_000_0234                            ; $666a: $cd $34 $02
    ld hl, $4c1a                                  ; $666d: $21 $1a $4c
    ld de, $d100                                  ; $6670: $11 $00 $d1
    call Call_000_0234                            ; $6673: $cd $34 $02
    ld a, [$c810]                                 ; $6676: $fa $10 $c8
    ld c, a                                       ; $6679: $4f
    ld hl, $0142                                  ; $667a: $21 $42 $01
    call Call_00c_5f32                            ; $667d: $cd $32 $5f
    rst $30                                       ; $6680: $f7
    jr nz, jr_00c_668d                            ; $6681: $20 $0a

    jr z, jr_00c_668f                             ; $6683: $28 $0a

    ld c, $01                                     ; $6685: $0e $01
    ld de, $d144                                  ; $6687: $11 $44 $d1
    call Call_00c_6799                            ; $668a: $cd $99 $67

jr_00c_668d:
    jr jr_00c_669e                                ; $668d: $18 $0f

jr_00c_668f:
    rst $30                                       ; $668f: $f7
    nop                                           ; $6690: $00
    ld a, [bc]                                    ; $6691: $0a
    jr z, jr_00c_669e                             ; $6692: $28 $0a

    ld c, $00                                     ; $6694: $0e $00
    ld de, $d144                                  ; $6696: $11 $44 $d1
    call Call_00c_6799                            ; $6699: $cd $99 $67
    jr jr_00c_669e                                ; $669c: $18 $00

jr_00c_669e:
    rst $30                                       ; $669e: $f7
    ld h, b                                       ; $669f: $60
    ld a, [bc]                                    ; $66a0: $0a
    jr z, jr_00c_66ad                             ; $66a1: $28 $0a

    ld c, $01                                     ; $66a3: $0e $01
    ld de, $d146                                  ; $66a5: $11 $46 $d1
    call Call_00c_6799                            ; $66a8: $cd $99 $67
    jr jr_00c_66bc                                ; $66ab: $18 $0f

jr_00c_66ad:
    rst $30                                       ; $66ad: $f7
    ld b, b                                       ; $66ae: $40
    ld a, [bc]                                    ; $66af: $0a
    jr z, jr_00c_66bc                             ; $66b0: $28 $0a

    ld c, $00                                     ; $66b2: $0e $00
    ld de, $d146                                  ; $66b4: $11 $46 $d1
    call Call_00c_6799                            ; $66b7: $cd $99 $67
    jr jr_00c_66bc                                ; $66ba: $18 $00

jr_00c_66bc:
    rst $30                                       ; $66bc: $f7
    and b                                         ; $66bd: $a0
    ld a, [bc]                                    ; $66be: $0a
    jr z, jr_00c_66cb                             ; $66bf: $28 $0a

    ld c, $01                                     ; $66c1: $0e $01
    ld de, $d148                                  ; $66c3: $11 $48 $d1
    call Call_00c_6799                            ; $66c6: $cd $99 $67
    jr jr_00c_66da                                ; $66c9: $18 $0f

jr_00c_66cb:
    rst $30                                       ; $66cb: $f7
    add b                                         ; $66cc: $80
    ld a, [bc]                                    ; $66cd: $0a
    jr z, jr_00c_66da                             ; $66ce: $28 $0a

    ld c, $00                                     ; $66d0: $0e $00
    ld de, $d148                                  ; $66d2: $11 $48 $d1
    call Call_00c_6799                            ; $66d5: $cd $99 $67
    jr jr_00c_66da                                ; $66d8: $18 $00

jr_00c_66da:
    rst $30                                       ; $66da: $f7
    ldh [$0a], a                                  ; $66db: $e0 $0a
    jr z, jr_00c_66e9                             ; $66dd: $28 $0a

    ld c, $01                                     ; $66df: $0e $01
    ld de, $d14a                                  ; $66e1: $11 $4a $d1
    call Call_00c_6799                            ; $66e4: $cd $99 $67
    jr jr_00c_66f8                                ; $66e7: $18 $0f

jr_00c_66e9:
    rst $30                                       ; $66e9: $f7
    ret nz                                        ; $66ea: $c0

    ld a, [bc]                                    ; $66eb: $0a
    jr z, jr_00c_66f8                             ; $66ec: $28 $0a

    ld c, $00                                     ; $66ee: $0e $00
    ld de, $d14a                                  ; $66f0: $11 $4a $d1
    call Call_00c_6799                            ; $66f3: $cd $99 $67
    jr jr_00c_66f8                                ; $66f6: $18 $00

jr_00c_66f8:
    rst $30                                       ; $66f8: $f7
    jr nz, @+$0d                                  ; $66f9: $20 $0b

    jr z, jr_00c_6707                             ; $66fb: $28 $0a

    ld c, $01                                     ; $66fd: $0e $01
    ld de, $d14e                                  ; $66ff: $11 $4e $d1
    call Call_00c_6799                            ; $6702: $cd $99 $67
    jr jr_00c_6716                                ; $6705: $18 $0f

jr_00c_6707:
    rst $30                                       ; $6707: $f7
    nop                                           ; $6708: $00
    dec bc                                        ; $6709: $0b
    jr z, jr_00c_6716                             ; $670a: $28 $0a

    ld c, $00                                     ; $670c: $0e $00
    ld de, $d14e                                  ; $670e: $11 $4e $d1
    call Call_00c_6799                            ; $6711: $cd $99 $67
    jr jr_00c_6716                                ; $6714: $18 $00

jr_00c_6716:
    rst $30                                       ; $6716: $f7
    ld h, b                                       ; $6717: $60
    dec bc                                        ; $6718: $0b
    jr z, jr_00c_6725                             ; $6719: $28 $0a

    ld c, $01                                     ; $671b: $0e $01
    ld de, $d14c                                  ; $671d: $11 $4c $d1
    call Call_00c_6799                            ; $6720: $cd $99 $67
    jr jr_00c_6734                                ; $6723: $18 $0f

jr_00c_6725:
    rst $30                                       ; $6725: $f7
    ld b, b                                       ; $6726: $40
    dec bc                                        ; $6727: $0b
    jr z, jr_00c_6734                             ; $6728: $28 $0a

    ld c, $00                                     ; $672a: $0e $00
    ld de, $d14c                                  ; $672c: $11 $4c $d1
    call Call_00c_6799                            ; $672f: $cd $99 $67
    jr jr_00c_6734                                ; $6732: $18 $00

jr_00c_6734:
    rst $30                                       ; $6734: $f7
    and b                                         ; $6735: $a0
    dec bc                                        ; $6736: $0b
    jr z, jr_00c_6743                             ; $6737: $28 $0a

    ld c, $01                                     ; $6739: $0e $01
    ld de, $d150                                  ; $673b: $11 $50 $d1
    call Call_00c_6799                            ; $673e: $cd $99 $67
    jr jr_00c_675f                                ; $6741: $18 $1c

jr_00c_6743:
    rst $30                                       ; $6743: $f7
    add b                                         ; $6744: $80
    dec bc                                        ; $6745: $0b
    jr z, jr_00c_6752                             ; $6746: $28 $0a

    ld c, $00                                     ; $6748: $0e $00
    ld de, $d150                                  ; $674a: $11 $50 $d1
    call Call_00c_6799                            ; $674d: $cd $99 $67
    jr jr_00c_675f                                ; $6750: $18 $0d

jr_00c_6752:
    rst $30                                       ; $6752: $f7
    and b                                         ; $6753: $a0
    ld c, $20                                     ; $6754: $0e $20
    ld [$020e], sp                                ; $6756: $08 $0e $02
    ld de, $d110                                  ; $6759: $11 $10 $d1
    call Call_00c_6799                            ; $675c: $cd $99 $67

jr_00c_675f:
    call Call_00c_6783                            ; $675f: $cd $83 $67
    ld a, $01                                     ; $6762: $3e $01
    ldh [$96], a                                  ; $6764: $e0 $96
    ldh [rSVBK], a                                ; $6766: $e0 $70
    ld hl, $d000                                  ; $6768: $21 $00 $d0
    ld de, $b800                                  ; $676b: $11 $00 $b8
    ld c, $24                                     ; $676e: $0e $24
    call Call_000_04db                            ; $6770: $cd $db $04
    ld hl, $d400                                  ; $6773: $21 $00 $d4
    ld de, $9800                                  ; $6776: $11 $00 $98
    ld c, $24                                     ; $6779: $0e $24
    call Call_000_04db                            ; $677b: $cd $db $04
    pop hl                                        ; $677e: $e1
    pop de                                        ; $677f: $d1
    pop bc                                        ; $6780: $c1
    pop af                                        ; $6781: $f1
    ret                                           ; $6782: $c9


Call_00c_6783:
    push af                                       ; $6783: $f5
    push bc                                       ; $6784: $c5
    push de                                       ; $6785: $d5
    push hl                                       ; $6786: $e5
    ldh a, [$96]                                  ; $6787: $f0 $96
    push af                                       ; $6789: $f5
    pop af                                        ; $678a: $f1
    ldh [$96], a                                  ; $678b: $e0 $96
    ldh [rSVBK], a                                ; $678d: $e0 $70
    pop hl                                        ; $678f: $e1
    pop de                                        ; $6790: $d1
    pop bc                                        ; $6791: $c1
    pop af                                        ; $6792: $f1
    ret                                           ; $6793: $c9


jr_00c_6794:
    ld [hl+], a                                   ; $6794: $22
    dec c                                         ; $6795: $0d
    jr nz, jr_00c_6794                            ; $6796: $20 $fc

    ret                                           ; $6798: $c9


Call_00c_6799:
    ldh a, [$96]                                  ; $6799: $f0 $96
    push af                                       ; $679b: $f5
    ld a, $01                                     ; $679c: $3e $01
    ldh [$96], a                                  ; $679e: $e0 $96
    ldh [rSVBK], a                                ; $67a0: $e0 $70
    ld a, c                                       ; $67a2: $79
    or a                                          ; $67a3: $b7
    jr z, jr_00c_67af                             ; $67a4: $28 $09

    cp $02                                        ; $67a6: $fe $02
    jr z, jr_00c_67b4                             ; $67a8: $28 $0a

    ld hl, $d054                                  ; $67aa: $21 $54 $d0
    jr jr_00c_67b7                                ; $67ad: $18 $08

jr_00c_67af:
    ld hl, $d014                                  ; $67af: $21 $14 $d0
    jr jr_00c_67b7                                ; $67b2: $18 $03

jr_00c_67b4:
    ld hl, $d094                                  ; $67b4: $21 $94 $d0

jr_00c_67b7:
    ld b, $02                                     ; $67b7: $06 $02

jr_00c_67b9:
    push hl                                       ; $67b9: $e5
    push de                                       ; $67ba: $d5
    push hl                                       ; $67bb: $e5
    push de                                       ; $67bc: $d5
    ld a, [hl+]                                   ; $67bd: $2a
    push hl                                       ; $67be: $e5
    ld h, d                                       ; $67bf: $62
    ld l, e                                       ; $67c0: $6b
    ld [hl+], a                                   ; $67c1: $22
    ld d, h                                       ; $67c2: $54
    ld e, l                                       ; $67c3: $5d
    pop hl                                        ; $67c4: $e1
    ld a, [hl]                                    ; $67c5: $7e
    ld h, d                                       ; $67c6: $62
    ld l, e                                       ; $67c7: $6b
    ld [hl], a                                    ; $67c8: $77
    pop de                                        ; $67c9: $d1
    pop hl                                        ; $67ca: $e1
    ld a, $20                                     ; $67cb: $3e $20
    add l                                         ; $67cd: $85
    ld l, a                                       ; $67ce: $6f
    jr nc, jr_00c_67d2                            ; $67cf: $30 $01

    inc h                                         ; $67d1: $24

jr_00c_67d2:
    ld a, $20                                     ; $67d2: $3e $20
    add e                                         ; $67d4: $83
    ld e, a                                       ; $67d5: $5f
    jr nc, jr_00c_67d9                            ; $67d6: $30 $01

    inc d                                         ; $67d8: $14

jr_00c_67d9:
    ld a, [hl+]                                   ; $67d9: $2a
    push hl                                       ; $67da: $e5
    ld h, d                                       ; $67db: $62
    ld l, e                                       ; $67dc: $6b
    ld [hl+], a                                   ; $67dd: $22
    ld d, h                                       ; $67de: $54
    ld e, l                                       ; $67df: $5d
    pop hl                                        ; $67e0: $e1
    ld a, [hl]                                    ; $67e1: $7e
    ld h, d                                       ; $67e2: $62
    ld l, e                                       ; $67e3: $6b
    ld [hl], a                                    ; $67e4: $77
    pop de                                        ; $67e5: $d1
    ld a, $04                                     ; $67e6: $3e $04
    add d                                         ; $67e8: $82
    ld d, a                                       ; $67e9: $57
    pop hl                                        ; $67ea: $e1
    ld a, $04                                     ; $67eb: $3e $04
    add h                                         ; $67ed: $84
    ld h, a                                       ; $67ee: $67
    dec b                                         ; $67ef: $05
    jr nz, jr_00c_67b9                            ; $67f0: $20 $c7

    pop af                                        ; $67f2: $f1
    ldh [$96], a                                  ; $67f3: $e0 $96
    ldh [rSVBK], a                                ; $67f5: $e0 $70
    ret                                           ; $67f7: $c9


    ld a, $06                                     ; $67f8: $3e $06
    ldh [$96], a                                  ; $67fa: $e0 $96
    ldh [rSVBK], a                                ; $67fc: $e0 $70
    call Call_00c_687c                            ; $67fe: $cd $7c $68
    call Call_00c_6c29                            ; $6801: $cd $29 $6c
    call Call_00c_6cbc                            ; $6804: $cd $bc $6c
    call Call_00c_6d2d                            ; $6807: $cd $2d $6d
    call Call_00c_6d76                            ; $680a: $cd $76 $6d
    ld a, $0f                                     ; $680d: $3e $0f
    ld hl, $4821                                  ; $680f: $21 $21 $48
    call Call_000_23e8                            ; $6812: $cd $e8 $23
    call Call_000_2e3b                            ; $6815: $cd $3b $2e
    ld c, $10                                     ; $6818: $0e $10
    call Call_000_25af                            ; $681a: $cd $af $25
    call Call_000_2625                            ; $681d: $cd $25 $26
    ld a, $06                                     ; $6820: $3e $06
    ldh [$96], a                                  ; $6822: $e0 $96
    ldh [rSVBK], a                                ; $6824: $e0 $70
    ld a, [$d215]                                 ; $6826: $fa $15 $d2
    or a                                          ; $6829: $b7
    jr z, jr_00c_683c                             ; $682a: $28 $10

    ld a, $1d                                     ; $682c: $3e $1d
    ld hl, $698f                                  ; $682e: $21 $8f $69
    call Call_000_23e8                            ; $6831: $cd $e8 $23
    ld a, $1c                                     ; $6834: $3e $1c
    ld hl, $6b55                                  ; $6836: $21 $55 $6b
    call Call_000_23e8                            ; $6839: $cd $e8 $23

jr_00c_683c:
    call Call_000_2e3b                            ; $683c: $cd $3b $2e
    call Call_00c_69d5                            ; $683f: $cd $d5 $69
    cp $fe                                        ; $6842: $fe $fe
    jr z, jr_00c_684c                             ; $6844: $28 $06

    cp $ff                                        ; $6846: $fe $ff
    jr z, jr_00c_684c                             ; $6848: $28 $02

    jr jr_00c_683c                                ; $684a: $18 $f0

jr_00c_684c:
    push af                                       ; $684c: $f5
    ld a, $06                                     ; $684d: $3e $06
    ldh [$96], a                                  ; $684f: $e0 $96
    ldh [rSVBK], a                                ; $6851: $e0 $70
    ld a, [$d215]                                 ; $6853: $fa $15 $d2
    or a                                          ; $6856: $b7
    jr z, jr_00c_6865                             ; $6857: $28 $0c

    ld hl, $698f                                  ; $6859: $21 $8f $69
    call Call_000_2449                            ; $685c: $cd $49 $24
    ld hl, $6b55                                  ; $685f: $21 $55 $6b
    call Call_000_2449                            ; $6862: $cd $49 $24

jr_00c_6865:
    ld hl, $4821                                  ; $6865: $21 $21 $48
    call Call_000_2449                            ; $6868: $cd $49 $24
    ld c, $10                                     ; $686b: $0e $10
    call Call_000_25a1                            ; $686d: $cd $a1 $25
    call Call_000_2625                            ; $6870: $cd $25 $26
    pop af                                        ; $6873: $f1
    cp $fe                                        ; $6874: $fe $fe
    jr nz, jr_00c_687b                            ; $6876: $20 $03

    call Call_00c_6da3                            ; $6878: $cd $a3 $6d

jr_00c_687b:
    ret                                           ; $687b: $c9


Call_00c_687c:
    ld a, $06                                     ; $687c: $3e $06
    ldh [$96], a                                  ; $687e: $e0 $96
    ldh [rSVBK], a                                ; $6880: $e0 $70
    xor a                                         ; $6882: $af
    ld [$d214], a                                 ; $6883: $ea $14 $d2
    ld hl, $d227                                  ; $6886: $21 $27 $d2
    ld c, $14                                     ; $6889: $0e $14

jr_00c_688b:
    ld [hl+], a                                   ; $688b: $22
    dec c                                         ; $688c: $0d
    jr nz, jr_00c_688b                            ; $688d: $20 $fc

    xor a                                         ; $688f: $af
    ldh [$8a], a                                  ; $6890: $e0 $8a
    ldh [$8b], a                                  ; $6892: $e0 $8b
    call Call_000_0341                            ; $6894: $cd $41 $03
    call Call_000_23b6                            ; $6897: $cd $b6 $23
    ld a, $01                                     ; $689a: $3e $01
    ldh [$96], a                                  ; $689c: $e0 $96
    ldh [rSVBK], a                                ; $689e: $e0 $70
    ld hl, $4c12                                  ; $68a0: $21 $12 $4c
    ld de, $d000                                  ; $68a3: $11 $00 $d0
    call Call_000_0234                            ; $68a6: $cd $34 $02
    ld hl, $d000                                  ; $68a9: $21 $00 $d0
    ld de, $a200                                  ; $68ac: $11 $00 $a2
    ld c, $08                                     ; $68af: $0e $08
    call Call_000_04db                            ; $68b1: $cd $db $04
    ld hl, $4c14                                  ; $68b4: $21 $14 $4c
    ld de, $d000                                  ; $68b7: $11 $00 $d0
    call Call_000_0234                            ; $68ba: $cd $34 $02
    ld hl, $d000                                  ; $68bd: $21 $00 $d0
    ld de, $a280                                  ; $68c0: $11 $80 $a2
    ld c, $08                                     ; $68c3: $0e $08
    call Call_000_04db                            ; $68c5: $cd $db $04
    ld hl, $6987                                  ; $68c8: $21 $87 $69
    ld de, $0a01                                  ; $68cb: $11 $01 $0a
    call Call_000_0595                            ; $68ce: $cd $95 $05
    ld a, $06                                     ; $68d1: $3e $06
    ldh [$96], a                                  ; $68d3: $e0 $96
    ldh [rSVBK], a                                ; $68d5: $e0 $70
    ld hl, $d218                                  ; $68d7: $21 $18 $d2
    xor a                                         ; $68da: $af
    ld c, $08                                     ; $68db: $0e $08

jr_00c_68dd:
    ld [hl+], a                                   ; $68dd: $22
    dec c                                         ; $68de: $0d
    jr nz, jr_00c_68dd                            ; $68df: $20 $fc

    ld hl, $d218                                  ; $68e1: $21 $18 $d2
    push hl                                       ; $68e4: $e5
    ld hl, $6987                                  ; $68e5: $21 $87 $69
    ld a, [hl+]                                   ; $68e8: $2a
    ld d, [hl]                                    ; $68e9: $56
    ld e, a                                       ; $68ea: $5f
    pop hl                                        ; $68eb: $e1
    ld [hl], e                                    ; $68ec: $73
    inc hl                                        ; $68ed: $23
    ld [hl], d                                    ; $68ee: $72
    inc hl                                        ; $68ef: $23
    push hl                                       ; $68f0: $e5
    ld hl, $6987                                  ; $68f1: $21 $87 $69
    ld de, $0002                                  ; $68f4: $11 $02 $00
    add hl, de                                    ; $68f7: $19
    ld a, [hl+]                                   ; $68f8: $2a
    ld d, [hl]                                    ; $68f9: $56
    ld e, a                                       ; $68fa: $5f
    pop hl                                        ; $68fb: $e1
    ld [hl], e                                    ; $68fc: $73
    inc hl                                        ; $68fd: $23
    ld [hl], d                                    ; $68fe: $72
    inc hl                                        ; $68ff: $23
    push hl                                       ; $6900: $e5
    ld hl, $6987                                  ; $6901: $21 $87 $69
    ld de, $0004                                  ; $6904: $11 $04 $00
    add hl, de                                    ; $6907: $19
    ld a, [hl+]                                   ; $6908: $2a
    ld d, [hl]                                    ; $6909: $56
    ld e, a                                       ; $690a: $5f
    pop hl                                        ; $690b: $e1
    ld [hl], e                                    ; $690c: $73
    inc hl                                        ; $690d: $23
    ld [hl], d                                    ; $690e: $72
    ld a, $01                                     ; $690f: $3e $01
    ldh [$96], a                                  ; $6911: $e0 $96
    ldh [rSVBK], a                                ; $6913: $e0 $70
    ld hl, $4008                                  ; $6915: $21 $08 $40
    ld de, $d000                                  ; $6918: $11 $00 $d0
    call Call_000_0234                            ; $691b: $cd $34 $02
    ld hl, $d000                                  ; $691e: $21 $00 $d0
    ld de, $b000                                  ; $6921: $11 $00 $b0
    ld c, $80                                     ; $6924: $0e $80
    call Call_000_04db                            ; $6926: $cd $db $04
    ld hl, $d800                                  ; $6929: $21 $00 $d8
    ld de, $a800                                  ; $692c: $11 $00 $a8
    ld c, $80                                     ; $692f: $0e $80
    call Call_000_04db                            ; $6931: $cd $db $04
    ld hl, $5c00                                  ; $6934: $21 $00 $5c
    ld de, $0008                                  ; $6937: $11 $08 $00
    call Call_000_0595                            ; $693a: $cd $95 $05
    ld hl, $4c10                                  ; $693d: $21 $10 $4c
    ld de, $d000                                  ; $6940: $11 $00 $d0
    call Call_000_0234                            ; $6943: $cd $34 $02
    ld hl, $d000                                  ; $6946: $21 $00 $d0
    ld de, $b800                                  ; $6949: $11 $00 $b8
    ld c, $24                                     ; $694c: $0e $24
    call Call_000_04db                            ; $694e: $cd $db $04
    ld hl, $4c0e                                  ; $6951: $21 $0e $4c
    ld de, $d000                                  ; $6954: $11 $00 $d0
    call Call_000_0234                            ; $6957: $cd $34 $02
    ld hl, $d000                                  ; $695a: $21 $00 $d0
    ld de, $9800                                  ; $695d: $11 $00 $98
    ld c, $24                                     ; $6960: $0e $24
    call Call_000_04db                            ; $6962: $cd $db $04
    ld a, $02                                     ; $6965: $3e $02
    ldh [$96], a                                  ; $6967: $e0 $96
    ldh [rSVBK], a                                ; $6969: $e0 $70
    ld hl, $4c1c                                  ; $696b: $21 $1c $4c
    ld de, $d000                                  ; $696e: $11 $00 $d0
    call Call_000_0234                            ; $6971: $cd $34 $02
    ld hl, $4c1a                                  ; $6974: $21 $1a $4c
    ld de, $d100                                  ; $6977: $11 $00 $d1
    call Call_000_0234                            ; $697a: $cd $34 $02
    call Call_000_0371                            ; $697d: $cd $71 $03
    ld a, $06                                     ; $6980: $3e $06
    ldh [$96], a                                  ; $6982: $e0 $96
    ldh [rSVBK], a                                ; $6984: $e0 $70
    ret                                           ; $6986: $c9


    add b                                         ; $6987: $80
    ld a, [hl]                                    ; $6988: $7e
    rra                                           ; $6989: $1f
    ld l, b                                       ; $698a: $68
    ld c, h                                       ; $698b: $4c
    ld l, b                                       ; $698c: $68
    nop                                           ; $698d: $00
    nop                                           ; $698e: $00
    ldh a, [$96]                                  ; $698f: $f0 $96
    push af                                       ; $6991: $f5
    push af                                       ; $6992: $f5
    push bc                                       ; $6993: $c5
    push de                                       ; $6994: $d5
    push hl                                       ; $6995: $e5
    ld hl, $69b4                                  ; $6996: $21 $b4 $69
    ld bc, $0a20                                  ; $6999: $01 $20 $0a
    push hl                                       ; $699c: $e5
    ld a, $06                                     ; $699d: $3e $06
    ldh [$96], a                                  ; $699f: $e0 $96
    ldh [rSVBK], a                                ; $69a1: $e0 $70
    call Call_00c_6ae5                            ; $69a3: $cd $e5 $6a
    pop hl                                        ; $69a6: $e1
    call Call_000_26ea                            ; $69a7: $cd $ea $26
    pop hl                                        ; $69aa: $e1
    pop de                                        ; $69ab: $d1
    pop bc                                        ; $69ac: $c1
    pop af                                        ; $69ad: $f1
    pop af                                        ; $69ae: $f1
    ldh [$96], a                                  ; $69af: $e0 $96
    ldh [rSVBK], a                                ; $69b1: $e0 $70
    ret                                           ; $69b3: $c9


    nop                                           ; $69b4: $00
    nop                                           ; $69b5: $00
    nop                                           ; $69b6: $00
    nop                                           ; $69b7: $00
    nop                                           ; $69b8: $00
    ld [$0002], sp                                ; $69b9: $08 $02 $00
    nop                                           ; $69bc: $00
    db $10                                        ; $69bd: $10
    inc b                                         ; $69be: $04
    nop                                           ; $69bf: $00
    nop                                           ; $69c0: $00
    jr @+$08                                      ; $69c1: $18 $06

    nop                                           ; $69c3: $00
    ld [$0800], sp                                ; $69c4: $08 $00 $08
    nop                                           ; $69c7: $00
    ld [$0a08], sp                                ; $69c8: $08 $08 $0a
    nop                                           ; $69cb: $00
    ld [$0c10], sp                                ; $69cc: $08 $10 $0c
    nop                                           ; $69cf: $00
    ld [$0e18], sp                                ; $69d0: $08 $18 $0e
    nop                                           ; $69d3: $00
    add b                                         ; $69d4: $80

Call_00c_69d5:
    ldh a, [$96]                                  ; $69d5: $f0 $96
    push af                                       ; $69d7: $f5
    ld a, $06                                     ; $69d8: $3e $06
    ldh [$96], a                                  ; $69da: $e0 $96
    ldh [rSVBK], a                                ; $69dc: $e0 $70
    ld hl, $d215                                  ; $69de: $21 $15 $d2
    ld a, [hl]                                    ; $69e1: $7e
    or a                                          ; $69e2: $b7
    jr nz, jr_00c_69ed                            ; $69e3: $20 $08

    ldh a, [$91]                                  ; $69e5: $f0 $91
    and $02                                       ; $69e7: $e6 $02
    jr nz, jr_00c_6a3a                            ; $69e9: $20 $4f

    jr jr_00c_6a40                                ; $69eb: $18 $53

jr_00c_69ed:
    ldh a, [$91]                                  ; $69ed: $f0 $91
    and $40                                       ; $69ef: $e6 $40
    jp z, Jump_00c_69fc                           ; $69f1: $ca $fc $69

    ld e, $00                                     ; $69f4: $1e $00
    call Call_00c_6a48                            ; $69f6: $cd $48 $6a
    jp Jump_00c_6a26                              ; $69f9: $c3 $26 $6a


Jump_00c_69fc:
    ldh a, [$91]                                  ; $69fc: $f0 $91
    and $20                                       ; $69fe: $e6 $20
    jp z, Jump_00c_6a0b                           ; $6a00: $ca $0b $6a

    ld e, $01                                     ; $6a03: $1e $01
    call Call_00c_6a48                            ; $6a05: $cd $48 $6a
    jp Jump_00c_6a26                              ; $6a08: $c3 $26 $6a


Jump_00c_6a0b:
    ldh a, [$91]                                  ; $6a0b: $f0 $91
    and $80                                       ; $6a0d: $e6 $80
    jp z, Jump_00c_6a1a                           ; $6a0f: $ca $1a $6a

    ld e, $02                                     ; $6a12: $1e $02
    call Call_00c_6a48                            ; $6a14: $cd $48 $6a
    jp Jump_00c_6a26                              ; $6a17: $c3 $26 $6a


Jump_00c_6a1a:
    ldh a, [$91]                                  ; $6a1a: $f0 $91
    and $10                                       ; $6a1c: $e6 $10
    jp z, Jump_00c_6a26                           ; $6a1e: $ca $26 $6a

    ld e, $03                                     ; $6a21: $1e $03
    call Call_00c_6a48                            ; $6a23: $cd $48 $6a

Jump_00c_6a26:
    ldh a, [$91]                                  ; $6a26: $f0 $91
    and $01                                       ; $6a28: $e6 $01
    jr nz, jr_00c_6a34                            ; $6a2a: $20 $08

    ldh a, [$91]                                  ; $6a2c: $f0 $91
    and $02                                       ; $6a2e: $e6 $02
    jr nz, jr_00c_6a3a                            ; $6a30: $20 $08

    jr jr_00c_6a40                                ; $6a32: $18 $0c

jr_00c_6a34:
    rst $08                                       ; $6a34: $cf
    ld e, h                                       ; $6a35: $5c
    ld a, $fe                                     ; $6a36: $3e $fe
    jr jr_00c_6a40                                ; $6a38: $18 $06

jr_00c_6a3a:
    rst $08                                       ; $6a3a: $cf
    ld e, l                                       ; $6a3b: $5d
    ld a, $ff                                     ; $6a3c: $3e $ff
    jr jr_00c_6a40                                ; $6a3e: $18 $00

jr_00c_6a40:
    ld b, a                                       ; $6a40: $47
    pop af                                        ; $6a41: $f1
    ldh [$96], a                                  ; $6a42: $e0 $96
    ldh [rSVBK], a                                ; $6a44: $e0 $70
    ld a, b                                       ; $6a46: $78
    ret                                           ; $6a47: $c9


Call_00c_6a48:
    rst $08                                       ; $6a48: $cf
    ld e, e                                       ; $6a49: $5b
    ld a, e                                       ; $6a4a: $7b
    cp $01                                        ; $6a4b: $fe $01
    jr jr_00c_6a5b                                ; $6a4d: $18 $0c

    cp $02                                        ; $6a4f: $fe $02
    jr jr_00c_6a5f                                ; $6a51: $18 $0c

    cp $03                                        ; $6a53: $fe $03
    jr jr_00c_6a63                                ; $6a55: $18 $0c

    ld c, $04                                     ; $6a57: $0e $04
    jr jr_00c_6a65                                ; $6a59: $18 $0a

jr_00c_6a5b:
    ld c, $05                                     ; $6a5b: $0e $05
    jr jr_00c_6a65                                ; $6a5d: $18 $06

jr_00c_6a5f:
    ld c, $04                                     ; $6a5f: $0e $04
    jr jr_00c_6a65                                ; $6a61: $18 $02

jr_00c_6a63:
    ld c, $05                                     ; $6a63: $0e $05

jr_00c_6a65:
    ld hl, $d214                                  ; $6a65: $21 $14 $d2
    ld a, [hl+]                                   ; $6a68: $2a
    ld h, [hl]                                    ; $6a69: $66
    ld l, a                                       ; $6a6a: $6f
    ld b, l                                       ; $6a6b: $45
    ld d, l                                       ; $6a6c: $55

jr_00c_6a6d:
    ld a, e                                       ; $6a6d: $7b
    cp $01                                        ; $6a6e: $fe $01
    jr z, jr_00c_6a88                             ; $6a70: $28 $16

    cp $02                                        ; $6a72: $fe $02
    jr z, jr_00c_6aa1                             ; $6a74: $28 $2b

    cp $03                                        ; $6a76: $fe $03
    jr z, jr_00c_6aad                             ; $6a78: $28 $33

    ld c, $02                                     ; $6a7a: $0e $02
    ld a, d                                       ; $6a7c: $7a
    add $fb                                       ; $6a7d: $c6 $fb
    bit 7, a                                      ; $6a7f: $cb $7f
    jr z, jr_00c_6ac6                             ; $6a81: $28 $43

    ld a, d                                       ; $6a83: $7a
    add $0f                                       ; $6a84: $c6 $0f
    jr jr_00c_6ac6                                ; $6a86: $18 $3e

jr_00c_6a88:
    ld a, d                                       ; $6a88: $7a
    dec a                                         ; $6a89: $3d
    cp $ff                                        ; $6a8a: $fe $ff
    jr z, jr_00c_6a9c                             ; $6a8c: $28 $0e

    cp $04                                        ; $6a8e: $fe $04
    jr z, jr_00c_6a9c                             ; $6a90: $28 $0a

    cp $09                                        ; $6a92: $fe $09
    jr z, jr_00c_6a9c                             ; $6a94: $28 $06

    cp $0e                                        ; $6a96: $fe $0e
    jr z, jr_00c_6a9c                             ; $6a98: $28 $02

    jr jr_00c_6ac6                                ; $6a9a: $18 $2a

jr_00c_6a9c:
    ld a, d                                       ; $6a9c: $7a
    add $04                                       ; $6a9d: $c6 $04
    jr jr_00c_6ac6                                ; $6a9f: $18 $25

jr_00c_6aa1:
    ld a, d                                       ; $6aa1: $7a
    add $05                                       ; $6aa2: $c6 $05
    cp $14                                        ; $6aa4: $fe $14
    jr c, jr_00c_6ac6                             ; $6aa6: $38 $1e

    ld a, d                                       ; $6aa8: $7a
    add $f1                                       ; $6aa9: $c6 $f1
    jr jr_00c_6ac6                                ; $6aab: $18 $19

jr_00c_6aad:
    ld a, d                                       ; $6aad: $7a
    inc a                                         ; $6aae: $3c
    cp $05                                        ; $6aaf: $fe $05
    jr z, jr_00c_6ac1                             ; $6ab1: $28 $0e

    cp $0a                                        ; $6ab3: $fe $0a
    jr z, jr_00c_6ac1                             ; $6ab5: $28 $0a

    cp $0f                                        ; $6ab7: $fe $0f
    jr z, jr_00c_6ac1                             ; $6ab9: $28 $06

    cp $14                                        ; $6abb: $fe $14
    jr z, jr_00c_6ac1                             ; $6abd: $28 $02

    jr jr_00c_6ac6                                ; $6abf: $18 $05

jr_00c_6ac1:
    ld a, d                                       ; $6ac1: $7a
    add $fc                                       ; $6ac2: $c6 $fc
    jr jr_00c_6ac6                                ; $6ac4: $18 $00

jr_00c_6ac6:
    ld d, a                                       ; $6ac6: $57
    ld hl, $d227                                  ; $6ac7: $21 $27 $d2
    add l                                         ; $6aca: $85
    ld l, a                                       ; $6acb: $6f
    jr nc, jr_00c_6acf                            ; $6acc: $30 $01

    inc h                                         ; $6ace: $24

jr_00c_6acf:
    ld a, [hl+]                                   ; $6acf: $2a
    ld h, [hl]                                    ; $6ad0: $66
    ld l, a                                       ; $6ad1: $6f
    ld a, l                                       ; $6ad2: $7d
    cp $ff                                        ; $6ad3: $fe $ff
    ld a, d                                       ; $6ad5: $7a
    jr nz, jr_00c_6adb                            ; $6ad6: $20 $03

    dec c                                         ; $6ad8: $0d
    jr nz, jr_00c_6a6d                            ; $6ad9: $20 $92

jr_00c_6adb:
    ld [$d214], a                                 ; $6adb: $ea $14 $d2
    ld [$ca7f], a                                 ; $6ade: $ea $7f $ca
    call Call_00c_6d76                            ; $6ae1: $cd $76 $6d
    ret                                           ; $6ae4: $c9


Call_00c_6ae5:
    ld a, $06                                     ; $6ae5: $3e $06
    ldh [$96], a                                  ; $6ae7: $e0 $96
    ldh [rSVBK], a                                ; $6ae9: $e0 $70
    ld a, [$d214]                                 ; $6aeb: $fa $14 $d2
    add a                                         ; $6aee: $87
    add a                                         ; $6aef: $87
    ld hl, $6b05                                  ; $6af0: $21 $05 $6b
    add l                                         ; $6af3: $85
    ld l, a                                       ; $6af4: $6f
    jr nc, jr_00c_6af8                            ; $6af5: $30 $01

    inc h                                         ; $6af7: $24

jr_00c_6af8:
    push hl                                       ; $6af8: $e5
    ld a, [hl+]                                   ; $6af9: $2a
    ld h, [hl]                                    ; $6afa: $66
    ld l, a                                       ; $6afb: $6f
    ld d, l                                       ; $6afc: $55
    pop hl                                        ; $6afd: $e1
    inc hl                                        ; $6afe: $23
    inc hl                                        ; $6aff: $23
    ld a, [hl+]                                   ; $6b00: $2a
    ld h, [hl]                                    ; $6b01: $66
    ld l, a                                       ; $6b02: $6f
    ld e, l                                       ; $6b03: $5d
    ret                                           ; $6b04: $c9


    ld e, $00                                     ; $6b05: $1e $00
    inc e                                         ; $6b07: $1c
    nop                                           ; $6b08: $00
    ld [hl], $00                                  ; $6b09: $36 $00
    inc e                                         ; $6b0b: $1c
    nop                                           ; $6b0c: $00
    ld c, [hl]                                    ; $6b0d: $4e
    nop                                           ; $6b0e: $00
    inc e                                         ; $6b0f: $1c
    nop                                           ; $6b10: $00
    ld h, [hl]                                    ; $6b11: $66
    nop                                           ; $6b12: $00
    inc e                                         ; $6b13: $1c
    nop                                           ; $6b14: $00
    ld a, [hl]                                    ; $6b15: $7e
    nop                                           ; $6b16: $00
    inc e                                         ; $6b17: $1c
    nop                                           ; $6b18: $00
    ld e, $00                                     ; $6b19: $1e $00
    inc [hl]                                      ; $6b1b: $34
    nop                                           ; $6b1c: $00
    ld [hl], $00                                  ; $6b1d: $36 $00
    inc [hl]                                      ; $6b1f: $34
    nop                                           ; $6b20: $00
    ld c, [hl]                                    ; $6b21: $4e
    nop                                           ; $6b22: $00
    inc [hl]                                      ; $6b23: $34
    nop                                           ; $6b24: $00
    ld h, [hl]                                    ; $6b25: $66
    nop                                           ; $6b26: $00
    inc [hl]                                      ; $6b27: $34
    nop                                           ; $6b28: $00
    ld a, [hl]                                    ; $6b29: $7e
    nop                                           ; $6b2a: $00
    inc [hl]                                      ; $6b2b: $34
    nop                                           ; $6b2c: $00
    ld e, $00                                     ; $6b2d: $1e $00
    ld c, h                                       ; $6b2f: $4c
    nop                                           ; $6b30: $00
    ld [hl], $00                                  ; $6b31: $36 $00
    ld c, h                                       ; $6b33: $4c
    nop                                           ; $6b34: $00
    ld c, [hl]                                    ; $6b35: $4e
    nop                                           ; $6b36: $00
    ld c, h                                       ; $6b37: $4c
    nop                                           ; $6b38: $00
    ld h, [hl]                                    ; $6b39: $66
    nop                                           ; $6b3a: $00
    ld c, h                                       ; $6b3b: $4c
    nop                                           ; $6b3c: $00
    ld a, [hl]                                    ; $6b3d: $7e
    nop                                           ; $6b3e: $00
    ld c, h                                       ; $6b3f: $4c
    nop                                           ; $6b40: $00
    ld e, $00                                     ; $6b41: $1e $00
    ld h, h                                       ; $6b43: $64
    nop                                           ; $6b44: $00
    ld [hl], $00                                  ; $6b45: $36 $00
    ld h, h                                       ; $6b47: $64
    nop                                           ; $6b48: $00
    ld c, [hl]                                    ; $6b49: $4e
    nop                                           ; $6b4a: $00
    ld h, h                                       ; $6b4b: $64
    nop                                           ; $6b4c: $00
    ld h, [hl]                                    ; $6b4d: $66
    nop                                           ; $6b4e: $00
    ld h, h                                       ; $6b4f: $64
    nop                                           ; $6b50: $00
    ld a, [hl]                                    ; $6b51: $7e
    nop                                           ; $6b52: $00
    ld h, h                                       ; $6b53: $64
    nop                                           ; $6b54: $00
    push af                                       ; $6b55: $f5
    push bc                                       ; $6b56: $c5
    push de                                       ; $6b57: $d5
    push hl                                       ; $6b58: $e5
    ldh a, [$96]                                  ; $6b59: $f0 $96
    push af                                       ; $6b5b: $f5
    ld a, $06                                     ; $6b5c: $3e $06
    ldh [$96], a                                  ; $6b5e: $e0 $96
    ldh [rSVBK], a                                ; $6b60: $e0 $70
    ld hl, $d218                                  ; $6b62: $21 $18 $d2
    inc hl                                        ; $6b65: $23
    inc hl                                        ; $6b66: $23
    push hl                                       ; $6b67: $e5
    ld hl, $d220                                  ; $6b68: $21 $20 $d2
    push hl                                       ; $6b6b: $e5
    ld a, [hl+]                                   ; $6b6c: $2a
    ld h, [hl]                                    ; $6b6d: $66
    ld l, a                                       ; $6b6e: $6f
    ld a, l                                       ; $6b6f: $7d
    inc a                                         ; $6b70: $3c
    and $1f                                       ; $6b71: $e6 $1f
    pop hl                                        ; $6b73: $e1
    ld [hl], a                                    ; $6b74: $77
    ld hl, $6bf6                                  ; $6b75: $21 $f6 $6b
    add l                                         ; $6b78: $85
    ld l, a                                       ; $6b79: $6f
    jr nc, jr_00c_6b7d                            ; $6b7a: $30 $01

    inc h                                         ; $6b7c: $24

jr_00c_6b7d:
    ld a, [hl+]                                   ; $6b7d: $2a
    ld h, [hl]                                    ; $6b7e: $66
    ld l, a                                       ; $6b7f: $6f
    ld a, l                                       ; $6b80: $7d
    and $1f                                       ; $6b81: $e6 $1f
    push af                                       ; $6b83: $f5
    ld hl, $d221                                  ; $6b84: $21 $21 $d2
    push hl                                       ; $6b87: $e5
    ld a, [hl+]                                   ; $6b88: $2a
    ld h, [hl]                                    ; $6b89: $66
    ld l, a                                       ; $6b8a: $6f
    ld a, l                                       ; $6b8b: $7d
    inc a                                         ; $6b8c: $3c
    and $1f                                       ; $6b8d: $e6 $1f
    pop hl                                        ; $6b8f: $e1
    ld [hl], a                                    ; $6b90: $77
    ld hl, $6bf6                                  ; $6b91: $21 $f6 $6b
    add l                                         ; $6b94: $85
    ld l, a                                       ; $6b95: $6f
    jr nc, jr_00c_6b99                            ; $6b96: $30 $01

    inc h                                         ; $6b98: $24

jr_00c_6b99:
    inc hl                                        ; $6b99: $23
    ld a, [hl+]                                   ; $6b9a: $2a
    ld h, [hl]                                    ; $6b9b: $66
    ld l, a                                       ; $6b9c: $6f
    ld a, l                                       ; $6b9d: $7d
    and $1f                                       ; $6b9e: $e6 $1f
    ld b, a                                       ; $6ba0: $47
    ld hl, $d222                                  ; $6ba1: $21 $22 $d2
    push hl                                       ; $6ba4: $e5
    ld a, [hl+]                                   ; $6ba5: $2a
    ld h, [hl]                                    ; $6ba6: $66
    ld l, a                                       ; $6ba7: $6f
    ld a, l                                       ; $6ba8: $7d
    inc a                                         ; $6ba9: $3c
    and $1f                                       ; $6baa: $e6 $1f
    pop hl                                        ; $6bac: $e1
    ld [hl], a                                    ; $6bad: $77
    ld hl, $6bf6                                  ; $6bae: $21 $f6 $6b
    add l                                         ; $6bb1: $85
    ld l, a                                       ; $6bb2: $6f
    jr nc, jr_00c_6bb6                            ; $6bb3: $30 $01

    inc h                                         ; $6bb5: $24

jr_00c_6bb6:
    inc hl                                        ; $6bb6: $23
    inc hl                                        ; $6bb7: $23
    ld a, [hl+]                                   ; $6bb8: $2a
    ld h, [hl]                                    ; $6bb9: $66
    ld l, a                                       ; $6bba: $6f
    ld a, l                                       ; $6bbb: $7d
    and $1f                                       ; $6bbc: $e6 $1f
    ld d, a                                       ; $6bbe: $57
    pop af                                        ; $6bbf: $f1
    pop hl                                        ; $6bc0: $e1
    push bc                                       ; $6bc1: $c5
    sla b                                         ; $6bc2: $cb $20
    sla b                                         ; $6bc4: $cb $20
    sla b                                         ; $6bc6: $cb $20
    sla b                                         ; $6bc8: $cb $20
    sla b                                         ; $6bca: $cb $20
    add b                                         ; $6bcc: $80
    pop bc                                        ; $6bcd: $c1
    push af                                       ; $6bce: $f5
    ld a, b                                       ; $6bcf: $78
    sra a                                         ; $6bd0: $cb $2f
    sra a                                         ; $6bd2: $cb $2f
    sra a                                         ; $6bd4: $cb $2f
    and $03                                       ; $6bd6: $e6 $03
    ld b, a                                       ; $6bd8: $47
    ld a, d                                       ; $6bd9: $7a
    sla a                                         ; $6bda: $cb $27
    sla a                                         ; $6bdc: $cb $27
    add b                                         ; $6bde: $80
    pop bc                                        ; $6bdf: $c1
    ld [hl], b                                    ; $6be0: $70
    inc hl                                        ; $6be1: $23
    ld [hl], a                                    ; $6be2: $77
    ld hl, $d218                                  ; $6be3: $21 $18 $d2
    ld de, $0a01                                  ; $6be6: $11 $01 $0a
    call Call_000_056c                            ; $6be9: $cd $6c $05
    pop af                                        ; $6bec: $f1
    ldh [$96], a                                  ; $6bed: $e0 $96
    ldh [rSVBK], a                                ; $6bef: $e0 $70
    pop hl                                        ; $6bf1: $e1
    pop de                                        ; $6bf2: $d1
    pop bc                                        ; $6bf3: $c1
    pop af                                        ; $6bf4: $f1
    ret                                           ; $6bf5: $c9


    rra                                           ; $6bf6: $1f
    nop                                           ; $6bf7: $00
    ld a, [de]                                    ; $6bf8: $1a
    rra                                           ; $6bf9: $1f
    ld [bc], a                                    ; $6bfa: $02
    inc e                                         ; $6bfb: $1c
    rra                                           ; $6bfc: $1f
    inc b                                         ; $6bfd: $04
    rra                                           ; $6bfe: $1f
    rra                                           ; $6bff: $1f
    ld b, $1f                                     ; $6c00: $06 $1f
    rra                                           ; $6c02: $1f
    ld [$1f1f], sp                                ; $6c03: $08 $1f $1f
    ld a, [bc]                                    ; $6c06: $0a
    rra                                           ; $6c07: $1f
    rra                                           ; $6c08: $1f
    inc c                                         ; $6c09: $0c
    rra                                           ; $6c0a: $1f
    rra                                           ; $6c0b: $1f
    ld c, $1f                                     ; $6c0c: $0e $1f
    rra                                           ; $6c0e: $1f
    db $10                                        ; $6c0f: $10
    rra                                           ; $6c10: $1f
    rra                                           ; $6c11: $1f
    ld c, $1f                                     ; $6c12: $0e $1f
    rra                                           ; $6c14: $1f
    inc c                                         ; $6c15: $0c
    rra                                           ; $6c16: $1f
    rra                                           ; $6c17: $1f
    ld a, [bc]                                    ; $6c18: $0a
    rra                                           ; $6c19: $1f
    rra                                           ; $6c1a: $1f
    ld [$1f1f], sp                                ; $6c1b: $08 $1f $1f
    ld b, $1f                                     ; $6c1e: $06 $1f
    rra                                           ; $6c20: $1f
    inc b                                         ; $6c21: $04
    rra                                           ; $6c22: $1f
    rra                                           ; $6c23: $1f
    ld [bc], a                                    ; $6c24: $02
    inc e                                         ; $6c25: $1c
    rra                                           ; $6c26: $1f
    nop                                           ; $6c27: $00
    ld a, [de]                                    ; $6c28: $1a

Call_00c_6c29:
    push af                                       ; $6c29: $f5
    push bc                                       ; $6c2a: $c5
    push de                                       ; $6c2b: $d5
    push hl                                       ; $6c2c: $e5
    ldh a, [$96]                                  ; $6c2d: $f0 $96
    push af                                       ; $6c2f: $f5
    ld c, $00                                     ; $6c30: $0e $00

jr_00c_6c32:
    rst $18                                       ; $6c32: $df
    inc a                                         ; $6c33: $3c
    dec bc                                        ; $6c34: $0b
    call Call_000_2b54                            ; $6c35: $cd $54 $2b
    cp $ff                                        ; $6c38: $fe $ff
    jr nz, jr_00c_6c41                            ; $6c3a: $20 $05

    call Call_00c_6c91                            ; $6c3c: $cd $91 $6c
    jr jr_00c_6c44                                ; $6c3f: $18 $03

jr_00c_6c41:
    call Call_00c_6c54                            ; $6c41: $cd $54 $6c

jr_00c_6c44:
    inc c                                         ; $6c44: $0c
    ld a, c                                       ; $6c45: $79
    cp $04                                        ; $6c46: $fe $04
    jr nz, jr_00c_6c32                            ; $6c48: $20 $e8

    pop af                                        ; $6c4a: $f1
    ldh [$96], a                                  ; $6c4b: $e0 $96
    ldh [rSVBK], a                                ; $6c4d: $e0 $70
    pop hl                                        ; $6c4f: $e1
    pop de                                        ; $6c50: $d1
    pop bc                                        ; $6c51: $c1
    pop af                                        ; $6c52: $f1
    ret                                           ; $6c53: $c9


Call_00c_6c54:
    push af                                       ; $6c54: $f5
    push bc                                       ; $6c55: $c5
    push de                                       ; $6c56: $d5
    push hl                                       ; $6c57: $e5
    ldh a, [$96]                                  ; $6c58: $f0 $96
    push af                                       ; $6c5a: $f5
    ld a, $06                                     ; $6c5b: $3e $06
    ldh [$96], a                                  ; $6c5d: $e0 $96
    ldh [rSVBK], a                                ; $6c5f: $e0 $70
    ld a, c                                       ; $6c61: $79
    add a                                         ; $6c62: $87
    add a                                         ; $6c63: $87
    add c                                         ; $6c64: $81
    ld hl, $d227                                  ; $6c65: $21 $27 $d2
    add l                                         ; $6c68: $85
    ld l, a                                       ; $6c69: $6f
    jr nc, jr_00c_6c6d                            ; $6c6a: $30 $01

    inc h                                         ; $6c6c: $24

jr_00c_6c6d:
    ld c, $00                                     ; $6c6d: $0e $00

jr_00c_6c6f:
    push bc                                       ; $6c6f: $c5
    rst $18                                       ; $6c70: $df
    ld b, b                                       ; $6c71: $40
    dec bc                                        ; $6c72: $0b
    ld a, b                                       ; $6c73: $78
    pop bc                                        ; $6c74: $c1
    or a                                          ; $6c75: $b7
    jr nz, jr_00c_6c7d                            ; $6c76: $20 $05

    ld a, $ff                                     ; $6c78: $3e $ff
    ld [hl+], a                                   ; $6c7a: $22
    jr jr_00c_6c81                                ; $6c7b: $18 $04

jr_00c_6c7d:
    rst $18                                       ; $6c7d: $df
    ld a, $0b                                     ; $6c7e: $3e $0b
    ld [hl+], a                                   ; $6c80: $22

jr_00c_6c81:
    inc c                                         ; $6c81: $0c
    ld a, c                                       ; $6c82: $79
    cp $05                                        ; $6c83: $fe $05
    jr nz, jr_00c_6c6f                            ; $6c85: $20 $e8

    pop af                                        ; $6c87: $f1
    ldh [$96], a                                  ; $6c88: $e0 $96
    ldh [rSVBK], a                                ; $6c8a: $e0 $70
    pop hl                                        ; $6c8c: $e1
    pop de                                        ; $6c8d: $d1
    pop bc                                        ; $6c8e: $c1
    pop af                                        ; $6c8f: $f1
    ret                                           ; $6c90: $c9


Call_00c_6c91:
    push af                                       ; $6c91: $f5
    push bc                                       ; $6c92: $c5
    push de                                       ; $6c93: $d5
    push hl                                       ; $6c94: $e5
    ldh a, [$96]                                  ; $6c95: $f0 $96
    push af                                       ; $6c97: $f5
    ld a, $06                                     ; $6c98: $3e $06
    ldh [$96], a                                  ; $6c9a: $e0 $96
    ldh [rSVBK], a                                ; $6c9c: $e0 $70
    ld a, c                                       ; $6c9e: $79
    add a                                         ; $6c9f: $87
    add a                                         ; $6ca0: $87
    add c                                         ; $6ca1: $81
    ld hl, $d227                                  ; $6ca2: $21 $27 $d2
    add l                                         ; $6ca5: $85
    ld l, a                                       ; $6ca6: $6f
    jr nc, jr_00c_6caa                            ; $6ca7: $30 $01

    inc h                                         ; $6ca9: $24

jr_00c_6caa:
    ld c, $05                                     ; $6caa: $0e $05
    ld a, $ff                                     ; $6cac: $3e $ff

jr_00c_6cae:
    ld [hl+], a                                   ; $6cae: $22
    dec c                                         ; $6caf: $0d
    jr nz, jr_00c_6cae                            ; $6cb0: $20 $fc

    pop af                                        ; $6cb2: $f1
    ldh [$96], a                                  ; $6cb3: $e0 $96
    ldh [rSVBK], a                                ; $6cb5: $e0 $70
    pop hl                                        ; $6cb7: $e1
    pop de                                        ; $6cb8: $d1
    pop bc                                        ; $6cb9: $c1
    pop af                                        ; $6cba: $f1
    ret                                           ; $6cbb: $c9


Call_00c_6cbc:
    push af                                       ; $6cbc: $f5
    push bc                                       ; $6cbd: $c5
    push de                                       ; $6cbe: $d5
    push hl                                       ; $6cbf: $e5
    ldh a, [$96]                                  ; $6cc0: $f0 $96
    push af                                       ; $6cc2: $f5
    ld a, $01                                     ; $6cc3: $3e $01
    ldh [$96], a                                  ; $6cc5: $e0 $96
    ldh [rSVBK], a                                ; $6cc7: $e0 $70
    ld hl, $4c10                                  ; $6cc9: $21 $10 $4c
    ld de, $d000                                  ; $6ccc: $11 $00 $d0
    call Call_000_0234                            ; $6ccf: $cd $34 $02
    ld hl, $4c0e                                  ; $6cd2: $21 $0e $4c
    ld de, $d400                                  ; $6cd5: $11 $00 $d4
    call Call_000_0234                            ; $6cd8: $cd $34 $02
    ld a, $06                                     ; $6cdb: $3e $06
    ldh [$96], a                                  ; $6cdd: $e0 $96
    ldh [rSVBK], a                                ; $6cdf: $e0 $70
    ld c, $00                                     ; $6ce1: $0e $00

jr_00c_6ce3:
    ld hl, $d227                                  ; $6ce3: $21 $27 $d2
    ld a, c                                       ; $6ce6: $79
    add a                                         ; $6ce7: $87
    add a                                         ; $6ce8: $87
    add c                                         ; $6ce9: $81
    add l                                         ; $6cea: $85
    ld l, a                                       ; $6ceb: $6f
    jr nc, jr_00c_6cef                            ; $6cec: $30 $01

    inc h                                         ; $6cee: $24

jr_00c_6cef:
    ld b, $05                                     ; $6cef: $06 $05
    ld de, $0044                                  ; $6cf1: $11 $44 $00

jr_00c_6cf4:
    push hl                                       ; $6cf4: $e5
    ld a, [hl]                                    ; $6cf5: $7e
    cp $ff                                        ; $6cf6: $fe $ff
    jr z, jr_00c_6d0e                             ; $6cf8: $28 $14

    push af                                       ; $6cfa: $f5
    ld a, c                                       ; $6cfb: $79
    add a                                         ; $6cfc: $87
    add c                                         ; $6cfd: $81
    ld h, $00                                     ; $6cfe: $26 $00
    ld l, a                                       ; $6d00: $6f
    add hl, hl                                    ; $6d01: $29
    add hl, hl                                    ; $6d02: $29
    add hl, hl                                    ; $6d03: $29
    add hl, hl                                    ; $6d04: $29
    add hl, hl                                    ; $6d05: $29
    add hl, de                                    ; $6d06: $19
    pop af                                        ; $6d07: $f1
    push bc                                       ; $6d08: $c5
    ld c, a                                       ; $6d09: $4f
    call Call_00c_5f32                            ; $6d0a: $cd $32 $5f
    pop bc                                        ; $6d0d: $c1

jr_00c_6d0e:
    pop hl                                        ; $6d0e: $e1
    ld a, e                                       ; $6d0f: $7b
    add $03                                       ; $6d10: $c6 $03
    ld e, a                                       ; $6d12: $5f
    xor a                                         ; $6d13: $af
    adc d                                         ; $6d14: $8a
    ld d, a                                       ; $6d15: $57
    inc hl                                        ; $6d16: $23
    dec b                                         ; $6d17: $05
    jr nz, jr_00c_6cf4                            ; $6d18: $20 $da

    inc c                                         ; $6d1a: $0c
    ld a, c                                       ; $6d1b: $79
    cp $04                                        ; $6d1c: $fe $04
    jr nz, jr_00c_6ce3                            ; $6d1e: $20 $c3

    call Call_00c_5ef6                            ; $6d20: $cd $f6 $5e
    pop af                                        ; $6d23: $f1
    ldh [$96], a                                  ; $6d24: $e0 $96
    ldh [rSVBK], a                                ; $6d26: $e0 $70
    pop hl                                        ; $6d28: $e1
    pop de                                        ; $6d29: $d1
    pop bc                                        ; $6d2a: $c1
    pop af                                        ; $6d2b: $f1
    ret                                           ; $6d2c: $c9


Call_00c_6d2d:
    push af                                       ; $6d2d: $f5
    push bc                                       ; $6d2e: $c5
    push de                                       ; $6d2f: $d5
    push hl                                       ; $6d30: $e5
    ldh a, [$96]                                  ; $6d31: $f0 $96
    push af                                       ; $6d33: $f5
    ld a, $06                                     ; $6d34: $3e $06
    ldh [$96], a                                  ; $6d36: $e0 $96
    ldh [rSVBK], a                                ; $6d38: $e0 $70
    ld a, [$ca7f]                                 ; $6d3a: $fa $7f $ca
    ld c, a                                       ; $6d3d: $4f
    ld hl, $d227                                  ; $6d3e: $21 $27 $d2
    add l                                         ; $6d41: $85
    ld l, a                                       ; $6d42: $6f
    jr nc, jr_00c_6d46                            ; $6d43: $30 $01

    inc h                                         ; $6d45: $24

jr_00c_6d46:
    ld a, [hl]                                    ; $6d46: $7e
    cp $ff                                        ; $6d47: $fe $ff
    jr nz, jr_00c_6d5b                            ; $6d49: $20 $10

    ld hl, $d227                                  ; $6d4b: $21 $27 $d2
    ld c, $00                                     ; $6d4e: $0e $00

jr_00c_6d50:
    ld a, [hl+]                                   ; $6d50: $2a
    cp $ff                                        ; $6d51: $fe $ff
    jr nz, jr_00c_6d5b                            ; $6d53: $20 $06

    inc c                                         ; $6d55: $0c
    ld a, c                                       ; $6d56: $79
    cp $14                                        ; $6d57: $fe $14
    jr nz, jr_00c_6d50                            ; $6d59: $20 $f5

jr_00c_6d5b:
    ld a, c                                       ; $6d5b: $79
    ld [$d214], a                                 ; $6d5c: $ea $14 $d2
    cp $14                                        ; $6d5f: $fe $14
    jr c, jr_00c_6d67                             ; $6d61: $38 $04

    ld a, $00                                     ; $6d63: $3e $00
    jr jr_00c_6d69                                ; $6d65: $18 $02

jr_00c_6d67:
    ld a, $01                                     ; $6d67: $3e $01

jr_00c_6d69:
    ld [$d215], a                                 ; $6d69: $ea $15 $d2
    pop af                                        ; $6d6c: $f1
    ldh [$96], a                                  ; $6d6d: $e0 $96
    ldh [rSVBK], a                                ; $6d6f: $e0 $70
    pop hl                                        ; $6d71: $e1
    pop de                                        ; $6d72: $d1
    pop bc                                        ; $6d73: $c1
    pop af                                        ; $6d74: $f1
    ret                                           ; $6d75: $c9


Call_00c_6d76:
    push af                                       ; $6d76: $f5
    push hl                                       ; $6d77: $e5
    push de                                       ; $6d78: $d5
    ldh a, [$96]                                  ; $6d79: $f0 $96
    push af                                       ; $6d7b: $f5
    ld a, $06                                     ; $6d7c: $3e $06
    ldh [$96], a                                  ; $6d7e: $e0 $96
    ldh [rSVBK], a                                ; $6d80: $e0 $70
    ld a, [$d215]                                 ; $6d82: $fa $15 $d2
    or a                                          ; $6d85: $b7
    jr z, jr_00c_6d9a                             ; $6d86: $28 $12

    call Call_00c_6da3                            ; $6d88: $cd $a3 $6d
    push bc                                       ; $6d8b: $c5
    ld c, b                                       ; $6d8c: $48
    rst $18                                       ; $6d8d: $df
    inc a                                         ; $6d8e: $3c
    dec bc                                        ; $6d8f: $0b
    call Call_000_2b54                            ; $6d90: $cd $54 $2b
    pop bc                                        ; $6d93: $c1
    rst $18                                       ; $6d94: $df
    ld b, b                                       ; $6d95: $40
    dec bc                                        ; $6d96: $0b
    call Call_00c_6dc8                            ; $6d97: $cd $c8 $6d

jr_00c_6d9a:
    pop af                                        ; $6d9a: $f1
    ldh [$96], a                                  ; $6d9b: $e0 $96
    ldh [rSVBK], a                                ; $6d9d: $e0 $70
    pop de                                        ; $6d9f: $d1
    pop hl                                        ; $6da0: $e1
    pop af                                        ; $6da1: $f1
    ret                                           ; $6da2: $c9


Call_00c_6da3:
    push af                                       ; $6da3: $f5
    push hl                                       ; $6da4: $e5
    push de                                       ; $6da5: $d5
    ldh a, [$96]                                  ; $6da6: $f0 $96
    push af                                       ; $6da8: $f5
    ld a, $06                                     ; $6da9: $3e $06
    ldh [$96], a                                  ; $6dab: $e0 $96
    ldh [rSVBK], a                                ; $6dad: $e0 $70
    ld b, $00                                     ; $6daf: $06 $00
    ld a, [$d214]                                 ; $6db1: $fa $14 $d2
    ld c, a                                       ; $6db4: $4f

jr_00c_6db5:
    sub $05                                       ; $6db5: $d6 $05
    bit 7, a                                      ; $6db7: $cb $7f
    jr nz, jr_00c_6dbf                            ; $6db9: $20 $04

    ld c, a                                       ; $6dbb: $4f
    inc b                                         ; $6dbc: $04
    jr jr_00c_6db5                                ; $6dbd: $18 $f6

jr_00c_6dbf:
    pop af                                        ; $6dbf: $f1
    ldh [$96], a                                  ; $6dc0: $e0 $96
    ldh [rSVBK], a                                ; $6dc2: $e0 $70
    pop de                                        ; $6dc4: $d1
    pop hl                                        ; $6dc5: $e1
    pop af                                        ; $6dc6: $f1
    ret                                           ; $6dc7: $c9


Call_00c_6dc8:
    push bc                                       ; $6dc8: $c5
    ld a, $01                                     ; $6dc9: $3e $01
    ldh [$96], a                                  ; $6dcb: $e0 $96
    ldh [rSVBK], a                                ; $6dcd: $e0 $70
    ld hl, $4c10                                  ; $6dcf: $21 $10 $4c
    ld de, $d000                                  ; $6dd2: $11 $00 $d0
    call Call_000_0234                            ; $6dd5: $cd $34 $02
    ld hl, $4c0e                                  ; $6dd8: $21 $0e $4c
    ld de, $d400                                  ; $6ddb: $11 $00 $d4
    call Call_000_0234                            ; $6dde: $cd $34 $02
    xor a                                         ; $6de1: $af
    ld c, $0a                                     ; $6de2: $0e $0a
    ld hl, $d1e1                                  ; $6de4: $21 $e1 $d1
    call Call_00c_6e7b                            ; $6de7: $cd $7b $6e
    ld c, $07                                     ; $6dea: $0e $07
    ld hl, $d1ec                                  ; $6dec: $21 $ec $d1
    call Call_00c_6e7b                            ; $6def: $cd $7b $6e
    ld c, $0b                                     ; $6df2: $0e $0b
    ld hl, $d201                                  ; $6df4: $21 $01 $d2
    call Call_00c_6e7b                            ; $6df7: $cd $7b $6e
    ld c, $07                                     ; $6dfa: $0e $07
    ld hl, $d20c                                  ; $6dfc: $21 $0c $d2
    call Call_00c_6e7b                            ; $6dff: $cd $7b $6e
    ld a, $03                                     ; $6e02: $3e $03
    ld c, $0a                                     ; $6e04: $0e $0a
    ld hl, $d5e1                                  ; $6e06: $21 $e1 $d5
    call Call_00c_6e7b                            ; $6e09: $cd $7b $6e
    ld c, $07                                     ; $6e0c: $0e $07
    ld hl, $d5ec                                  ; $6e0e: $21 $ec $d5
    call Call_00c_6e7b                            ; $6e11: $cd $7b $6e
    ld a, $20                                     ; $6e14: $3e $20
    ld c, $0b                                     ; $6e16: $0e $0b
    ld hl, $d601                                  ; $6e18: $21 $01 $d6
    call Call_00c_6e7b                            ; $6e1b: $cd $7b $6e
    ld c, $07                                     ; $6e1e: $0e $07
    ld hl, $d60c                                  ; $6e20: $21 $0c $d6
    call Call_00c_6e7b                            ; $6e23: $cd $7b $6e
    pop bc                                        ; $6e26: $c1
    push bc                                       ; $6e27: $c5
    rst $18                                       ; $6e28: $df
    ld a, [de]                                    ; $6e29: $1a
    inc bc                                        ; $6e2a: $03
    ld hl, $1424                                  ; $6e2b: $21 $24 $14
    ld a, b                                       ; $6e2e: $78
    dec a                                         ; $6e2f: $3d
    add l                                         ; $6e30: $85
    ld l, a                                       ; $6e31: $6f
    jr nc, jr_00c_6e35                            ; $6e32: $30 $01

    inc h                                         ; $6e34: $24

jr_00c_6e35:
    ld de, $d602                                  ; $6e35: $11 $02 $d6
    ld c, $20                                     ; $6e38: $0e $20
    rst $18                                       ; $6e3a: $df
    ld [hl+], a                                   ; $6e3b: $22
    dec b                                         ; $6e3c: $05
    pop bc                                        ; $6e3d: $c1
    ld h, $00                                     ; $6e3e: $26 $00
    ld l, c                                       ; $6e40: $69
    ld de, $d610                                  ; $6e41: $11 $10 $d6
    ld a, $02                                     ; $6e44: $3e $02
    call Call_000_21f0                            ; $6e46: $cd $f0 $21
    ld a, $20                                     ; $6e49: $3e $20
    ld hl, $d612                                  ; $6e4b: $21 $12 $d6
    ld [hl], a                                    ; $6e4e: $77
    ld hl, $1422                                  ; $6e4f: $21 $22 $14
    ld a, $01                                     ; $6e52: $3e $01
    add l                                         ; $6e54: $85
    ld l, a                                       ; $6e55: $6f
    jr nc, jr_00c_6e59                            ; $6e56: $30 $01

    inc h                                         ; $6e58: $24

jr_00c_6e59:
    ld de, $d60d                                  ; $6e59: $11 $0d $d6
    ld c, $20                                     ; $6e5c: $0e $20
    rst $18                                       ; $6e5e: $df
    ld [hl+], a                                   ; $6e5f: $22
    dec b                                         ; $6e60: $05
    rst $18                                       ; $6e61: $df
    inc h                                         ; $6e62: $24
    inc bc                                        ; $6e63: $03
    ld hl, $d1e0                                  ; $6e64: $21 $e0 $d1
    ld de, $b9e0                                  ; $6e67: $11 $e0 $b9
    ld c, $06                                     ; $6e6a: $0e $06
    call Call_000_0468                            ; $6e6c: $cd $68 $04
    ld hl, $d5e0                                  ; $6e6f: $21 $e0 $d5
    ld de, $99e0                                  ; $6e72: $11 $e0 $99
    ld c, $06                                     ; $6e75: $0e $06
    call Call_000_0468                            ; $6e77: $cd $68 $04
    ret                                           ; $6e7a: $c9


Call_00c_6e7b:
jr_00c_6e7b:
    ld [hl+], a                                   ; $6e7b: $22
    dec c                                         ; $6e7c: $0d
    jr nz, jr_00c_6e7b                            ; $6e7d: $20 $fc

    ret                                           ; $6e7f: $c9


    push af                                       ; $6e80: $f5
    push bc                                       ; $6e81: $c5
    push de                                       ; $6e82: $d5
    push hl                                       ; $6e83: $e5
    ld b, a                                       ; $6e84: $47
    ldh a, [$96]                                  ; $6e85: $f0 $96
    push af                                       ; $6e87: $f5
    ld a, b                                       ; $6e88: $78
    push de                                       ; $6e89: $d5
    push af                                       ; $6e8a: $f5
    ld a, a                                       ; $6e8b: $7f
    ld de, $0d02                                  ; $6e8c: $11 $02 $0d
    call Call_000_22a5                            ; $6e8f: $cd $a5 $22
    pop af                                        ; $6e92: $f1
    pop de                                        ; $6e93: $d1
    add a                                         ; $6e94: $87
    ld hl, $6ec3                                  ; $6e95: $21 $c3 $6e
    add l                                         ; $6e98: $85
    ld l, a                                       ; $6e99: $6f
    jr nc, jr_00c_6e9d                            ; $6e9a: $30 $01

    inc h                                         ; $6e9c: $24

jr_00c_6e9d:
    ld a, [hl+]                                   ; $6e9d: $2a
    ld h, [hl]                                    ; $6e9e: $66
    ld l, a                                       ; $6e9f: $6f
    call Call_000_2e3b                            ; $6ea0: $cd $3b $2e
    ld a, $03                                     ; $6ea3: $3e $03
    ldh [$96], a                                  ; $6ea5: $e0 $96
    ldh [rSVBK], a                                ; $6ea7: $e0 $70
    push de                                       ; $6ea9: $d5
    ld de, $d000                                  ; $6eaa: $11 $00 $d0
    call Call_000_0234                            ; $6ead: $cd $34 $02
    ld hl, $d000                                  ; $6eb0: $21 $00 $d0
    pop de                                        ; $6eb3: $d1
    ld c, $0a                                     ; $6eb4: $0e $0a
    call Call_000_0468                            ; $6eb6: $cd $68 $04
    pop af                                        ; $6eb9: $f1
    ldh [$96], a                                  ; $6eba: $e0 $96
    ldh [rSVBK], a                                ; $6ebc: $e0 $70
    pop hl                                        ; $6ebe: $e1
    pop de                                        ; $6ebf: $d1
    pop bc                                        ; $6ec0: $c1
    pop af                                        ; $6ec1: $f1
    ret                                           ; $6ec2: $c9


    jr @+$42                                      ; $6ec3: $18 $40

    ld a, [de]                                    ; $6ec5: $1a
    ld b, b                                       ; $6ec6: $40
    inc e                                         ; $6ec7: $1c
    ld b, b                                       ; $6ec8: $40
    ld e, $40                                     ; $6ec9: $1e $40
    jr nz, jr_00c_6f0d                            ; $6ecb: $20 $40

    ld [hl+], a                                   ; $6ecd: $22
    ld b, b                                       ; $6ece: $40
    push af                                       ; $6ecf: $f5
    push bc                                       ; $6ed0: $c5
    push de                                       ; $6ed1: $d5
    push hl                                       ; $6ed2: $e5
    ldh a, [$96]                                  ; $6ed3: $f0 $96
    push af                                       ; $6ed5: $f5
    pop af                                        ; $6ed6: $f1
    ldh [$96], a                                  ; $6ed7: $e0 $96
    ldh [rSVBK], a                                ; $6ed9: $e0 $70
    pop hl                                        ; $6edb: $e1
    pop de                                        ; $6edc: $d1
    pop bc                                        ; $6edd: $c1
    pop af                                        ; $6ede: $f1
    ret                                           ; $6edf: $c9


    call Call_00c_6f4b                            ; $6ee0: $cd $4b $6f
    xor a                                         ; $6ee3: $af
    ld [$d214], a                                 ; $6ee4: $ea $14 $d2
    rst $18                                       ; $6ee7: $df
    jr z, jr_00c_6ef5                             ; $6ee8: $28 $0b

    call Call_000_2b54                            ; $6eea: $cd $54 $2b
    ld b, $00                                     ; $6eed: $06 $00
    rst $18                                       ; $6eef: $df
    ld a, [hl+]                                   ; $6ef0: $2a
    dec bc                                        ; $6ef1: $0b
    rst $18                                       ; $6ef2: $df
    ld l, $0b                                     ; $6ef3: $2e $0b

jr_00c_6ef5:
    call Call_00c_7083                            ; $6ef5: $cd $83 $70
    ld a, [$d226]                                 ; $6ef8: $fa $26 $d2
    ld a, $0f                                     ; $6efb: $3e $0f
    ld hl, $705d                                  ; $6efd: $21 $5d $70
    call Call_000_23e8                            ; $6f00: $cd $e8 $23
    ld a, [$d226]                                 ; $6f03: $fa $26 $d2
    or a                                          ; $6f06: $b7
    jr z, jr_00c_6f15                             ; $6f07: $28 $0c

    cp $01                                        ; $6f09: $fe $01
    jr z, jr_00c_6f15                             ; $6f0b: $28 $08

jr_00c_6f0d:
    ld a, $1d                                     ; $6f0d: $3e $1d
    ld hl, $4894                                  ; $6f0f: $21 $94 $48
    call Call_000_23e8                            ; $6f12: $cd $e8 $23

jr_00c_6f15:
    call Call_000_2e3b                            ; $6f15: $cd $3b $2e
    ld c, $10                                     ; $6f18: $0e $10
    call Call_000_25af                            ; $6f1a: $cd $af $25
    call Call_000_2625                            ; $6f1d: $cd $25 $26

jr_00c_6f20:
    call Call_000_2e3b                            ; $6f20: $cd $3b $2e
    call Call_00c_6ff1                            ; $6f23: $cd $f1 $6f
    cp $ff                                        ; $6f26: $fe $ff
    jr nz, jr_00c_6f20                            ; $6f28: $20 $f6

    push af                                       ; $6f2a: $f5
    ld hl, $705d                                  ; $6f2b: $21 $5d $70
    call Call_000_2449                            ; $6f2e: $cd $49 $24
    ld a, [$d226]                                 ; $6f31: $fa $26 $d2
    or a                                          ; $6f34: $b7
    jr z, jr_00c_6f41                             ; $6f35: $28 $0a

    cp $01                                        ; $6f37: $fe $01
    jr z, jr_00c_6f41                             ; $6f39: $28 $06

    ld hl, $4894                                  ; $6f3b: $21 $94 $48
    call Call_000_2449                            ; $6f3e: $cd $49 $24

jr_00c_6f41:
    ld c, $10                                     ; $6f41: $0e $10
    call Call_000_25a1                            ; $6f43: $cd $a1 $25
    call Call_000_2625                            ; $6f46: $cd $25 $26
    pop af                                        ; $6f49: $f1
    ret                                           ; $6f4a: $c9


Call_00c_6f4b:
    ld a, $06                                     ; $6f4b: $3e $06
    ldh [$96], a                                  ; $6f4d: $e0 $96
    ldh [rSVBK], a                                ; $6f4f: $e0 $70
    xor a                                         ; $6f51: $af
    ldh [$8a], a                                  ; $6f52: $e0 $8a
    ldh [$8b], a                                  ; $6f54: $e0 $8b
    call Call_000_0341                            ; $6f56: $cd $41 $03
    call Call_000_23b6                            ; $6f59: $cd $b6 $23
    ld a, $01                                     ; $6f5c: $3e $01
    ldh [$96], a                                  ; $6f5e: $e0 $96
    ldh [rSVBK], a                                ; $6f60: $e0 $70
    ld hl, $4b20                                  ; $6f62: $21 $20 $4b
    ld de, $d000                                  ; $6f65: $11 $00 $d0
    call Call_000_0234                            ; $6f68: $cd $34 $02
    ld hl, $d000                                  ; $6f6b: $21 $00 $d0
    ld de, $8e00                                  ; $6f6e: $11 $00 $8e
    ld c, $04                                     ; $6f71: $0e $04
    call Call_000_04db                            ; $6f73: $cd $db $04
    ld hl, $419b                                  ; $6f76: $21 $9b $41
    ld de, $0801                                  ; $6f79: $11 $01 $08
    call Call_000_0595                            ; $6f7c: $cd $95 $05
    ld hl, $4d1a                                  ; $6f7f: $21 $1a $4d
    ld de, $d000                                  ; $6f82: $11 $00 $d0
    call Call_000_0234                            ; $6f85: $cd $34 $02
    ld hl, $d000                                  ; $6f88: $21 $00 $d0
    ld de, $b000                                  ; $6f8b: $11 $00 $b0
    ld c, $80                                     ; $6f8e: $0e $80
    call Call_000_04db                            ; $6f90: $cd $db $04
    ld hl, $d800                                  ; $6f93: $21 $00 $d8
    ld de, $a800                                  ; $6f96: $11 $00 $a8
    ld c, $80                                     ; $6f99: $0e $80
    call Call_000_04db                            ; $6f9b: $cd $db $04
    ld hl, $5c00                                  ; $6f9e: $21 $00 $5c
    ld de, $0008                                  ; $6fa1: $11 $08 $00
    call Call_000_0595                            ; $6fa4: $cd $95 $05
    ld hl, $4d1c                                  ; $6fa7: $21 $1c $4d
    ld de, $d000                                  ; $6faa: $11 $00 $d0
    call Call_000_0234                            ; $6fad: $cd $34 $02
    ld hl, $d000                                  ; $6fb0: $21 $00 $d0
    ld de, $b800                                  ; $6fb3: $11 $00 $b8
    ld c, $24                                     ; $6fb6: $0e $24
    call Call_000_04db                            ; $6fb8: $cd $db $04
    ld hl, $4d1e                                  ; $6fbb: $21 $1e $4d
    ld de, $d400                                  ; $6fbe: $11 $00 $d4
    call Call_000_0234                            ; $6fc1: $cd $34 $02
    ld hl, $d400                                  ; $6fc4: $21 $00 $d4
    ld de, $9800                                  ; $6fc7: $11 $00 $98
    ld c, $24                                     ; $6fca: $0e $24
    call Call_000_04db                            ; $6fcc: $cd $db $04
    ld a, $02                                     ; $6fcf: $3e $02
    ldh [$96], a                                  ; $6fd1: $e0 $96
    ldh [rSVBK], a                                ; $6fd3: $e0 $70
    ld hl, $4d20                                  ; $6fd5: $21 $20 $4d
    ld de, $d000                                  ; $6fd8: $11 $00 $d0
    call Call_000_0234                            ; $6fdb: $cd $34 $02
    ld hl, $4d22                                  ; $6fde: $21 $22 $4d
    ld de, $d400                                  ; $6fe1: $11 $00 $d4
    call Call_000_0234                            ; $6fe4: $cd $34 $02
    call Call_000_0371                            ; $6fe7: $cd $71 $03
    ld a, $06                                     ; $6fea: $3e $06
    ldh [$96], a                                  ; $6fec: $e0 $96
    ldh [rSVBK], a                                ; $6fee: $e0 $70
    ret                                           ; $6ff0: $c9


Call_00c_6ff1:
    push bc                                       ; $6ff1: $c5
    push hl                                       ; $6ff2: $e5
    push de                                       ; $6ff3: $d5
    ldh a, [$96]                                  ; $6ff4: $f0 $96
    push af                                       ; $6ff6: $f5
    ld a, $06                                     ; $6ff7: $3e $06
    ldh [$96], a                                  ; $6ff9: $e0 $96
    ldh [rSVBK], a                                ; $6ffb: $e0 $70
    ld a, [$d226]                                 ; $6ffd: $fa $26 $d2
    ld b, a                                       ; $7000: $47
    ldh a, [$91]                                  ; $7001: $f0 $91
    bit 5, a                                      ; $7003: $cb $6f
    jr z, jr_00c_7023                             ; $7005: $28 $1c

    ld a, [$d214]                                 ; $7007: $fa $14 $d2
    dec a                                         ; $700a: $3d
    bit 7, a                                      ; $700b: $cb $7f
    jr z, jr_00c_7011                             ; $700d: $28 $02

    ld a, b                                       ; $700f: $78
    dec a                                         ; $7010: $3d

jr_00c_7011:
    ld b, a                                       ; $7011: $47
    ld a, [$d214]                                 ; $7012: $fa $14 $d2
    cp b                                          ; $7015: $b8
    jr z, jr_00c_7021                             ; $7016: $28 $09

    ld a, b                                       ; $7018: $78
    ld [$d214], a                                 ; $7019: $ea $14 $d2
    call Call_00c_7083                            ; $701c: $cd $83 $70
    rst $08                                       ; $701f: $cf
    ld e, e                                       ; $7020: $5b

jr_00c_7021:
    jr jr_00c_7052                                ; $7021: $18 $2f

jr_00c_7023:
    bit 4, a                                      ; $7023: $cb $67
    jr z, jr_00c_7042                             ; $7025: $28 $1b

    ld a, [$d214]                                 ; $7027: $fa $14 $d2
    inc a                                         ; $702a: $3c
    cp b                                          ; $702b: $b8
    jr c, jr_00c_7030                             ; $702c: $38 $02

    ld a, $00                                     ; $702e: $3e $00

jr_00c_7030:
    ld b, a                                       ; $7030: $47
    ld a, [$d214]                                 ; $7031: $fa $14 $d2
    cp b                                          ; $7034: $b8
    jr z, jr_00c_7040                             ; $7035: $28 $09

    ld a, b                                       ; $7037: $78
    ld [$d214], a                                 ; $7038: $ea $14 $d2
    call Call_00c_7083                            ; $703b: $cd $83 $70
    rst $08                                       ; $703e: $cf
    ld e, e                                       ; $703f: $5b

jr_00c_7040:
    jr jr_00c_7052                                ; $7040: $18 $10

jr_00c_7042:
    bit 0, a                                      ; $7042: $cb $47
    jr z, jr_00c_7048                             ; $7044: $28 $02

    jr jr_00c_7052                                ; $7046: $18 $0a

jr_00c_7048:
    bit 1, a                                      ; $7048: $cb $4f
    jr z, jr_00c_7052                             ; $704a: $28 $06

    rst $08                                       ; $704c: $cf
    ld e, l                                       ; $704d: $5d
    ld a, $ff                                     ; $704e: $3e $ff
    jr jr_00c_7052                                ; $7050: $18 $00

jr_00c_7052:
    ld b, a                                       ; $7052: $47
    pop af                                        ; $7053: $f1
    ldh [$96], a                                  ; $7054: $e0 $96
    ldh [rSVBK], a                                ; $7056: $e0 $70
    ld a, b                                       ; $7058: $78
    pop de                                        ; $7059: $d1
    pop hl                                        ; $705a: $e1
    pop bc                                        ; $705b: $c1
    ret                                           ; $705c: $c9


    ld a, $06                                     ; $705d: $3e $06
    ldh [$96], a                                  ; $705f: $e0 $96
    ldh [rSVBK], a                                ; $7061: $e0 $70
    ld hl, $b220                                  ; $7063: $21 $20 $b2
    ld a, l                                       ; $7066: $7d
    ld [$d23e], a                                 ; $7067: $ea $3e $d2
    ld a, h                                       ; $706a: $7c
    ld [$d23f], a                                 ; $706b: $ea $3f $d2
    ld hl, $b240                                  ; $706e: $21 $40 $b2
    ld a, l                                       ; $7071: $7d
    ld [$d240], a                                 ; $7072: $ea $40 $d2
    ld a, h                                       ; $7075: $7c
    ld [$d241], a                                 ; $7076: $ea $41 $d2
    ld a, $01                                     ; $7079: $3e $01
    ldh [$96], a                                  ; $707b: $e0 $96
    ldh [rSVBK], a                                ; $707d: $e0 $70
    call Call_00c_436a                            ; $707f: $cd $6a $43
    ret                                           ; $7082: $c9


Call_00c_7083:
    push af                                       ; $7083: $f5
    push bc                                       ; $7084: $c5
    push de                                       ; $7085: $d5
    push hl                                       ; $7086: $e5
    ldh a, [$96]                                  ; $7087: $f0 $96
    push af                                       ; $7089: $f5
    ld a, $01                                     ; $708a: $3e $01
    ldh [$96], a                                  ; $708c: $e0 $96
    ldh [rSVBK], a                                ; $708e: $e0 $70
    ld hl, $4d1c                                  ; $7090: $21 $1c $4d
    ld de, $d000                                  ; $7093: $11 $00 $d0
    call Call_000_0234                            ; $7096: $cd $34 $02
    ld hl, $4d1e                                  ; $7099: $21 $1e $4d
    ld de, $d400                                  ; $709c: $11 $00 $d4
    call Call_000_0234                            ; $709f: $cd $34 $02
    ld a, $06                                     ; $70a2: $3e $06
    ldh [$96], a                                  ; $70a4: $e0 $96
    ldh [rSVBK], a                                ; $70a6: $e0 $70
    ld a, [$d214]                                 ; $70a8: $fa $14 $d2
    ld b, a                                       ; $70ab: $47
    ld de, $a860                                  ; $70ac: $11 $60 $a8
    call Call_00c_49c1                            ; $70af: $cd $c1 $49
    call Call_00c_70c2                            ; $70b2: $cd $c2 $70
    call Call_00c_5ef6                            ; $70b5: $cd $f6 $5e
    pop af                                        ; $70b8: $f1
    ldh [$96], a                                  ; $70b9: $e0 $96
    ldh [rSVBK], a                                ; $70bb: $e0 $70
    pop hl                                        ; $70bd: $e1
    pop de                                        ; $70be: $d1
    pop bc                                        ; $70bf: $c1
    pop af                                        ; $70c0: $f1
    ret                                           ; $70c1: $c9


Call_00c_70c2:
    push af                                       ; $70c2: $f5
    push bc                                       ; $70c3: $c5
    push de                                       ; $70c4: $d5
    push hl                                       ; $70c5: $e5
    ld a, $06                                     ; $70c6: $3e $06
    ldh [$96], a                                  ; $70c8: $e0 $96
    ldh [rSVBK], a                                ; $70ca: $e0 $70
    ld hl, $d227                                  ; $70cc: $21 $27 $d2
    ld a, $ff                                     ; $70cf: $3e $ff
    ld c, $14                                     ; $70d1: $0e $14

jr_00c_70d3:
    ld [hl+], a                                   ; $70d3: $22
    dec c                                         ; $70d4: $0d
    jr nz, jr_00c_70d3                            ; $70d5: $20 $fc

    ld hl, $d227                                  ; $70d7: $21 $27 $d2
    ld a, [$d214]                                 ; $70da: $fa $14 $d2
    ld b, a                                       ; $70dd: $47
    ld c, $00                                     ; $70de: $0e $00

jr_00c_70e0:
    rst $18                                       ; $70e0: $df
    ld [hl], $0b                                  ; $70e1: $36 $0b
    or a                                          ; $70e3: $b7
    jr z, jr_00c_70e8                             ; $70e4: $28 $02

    ld a, c                                       ; $70e6: $79
    ld [hl+], a                                   ; $70e7: $22

jr_00c_70e8:
    inc c                                         ; $70e8: $0c
    ld a, c                                       ; $70e9: $79
    cp $12                                        ; $70ea: $fe $12
    jr nz, jr_00c_70e0                            ; $70ec: $20 $f2

    pop hl                                        ; $70ee: $e1
    pop de                                        ; $70ef: $d1
    pop bc                                        ; $70f0: $c1
    pop af                                        ; $70f1: $f1
    call Call_00c_70fc                            ; $70f2: $cd $fc $70
    call Call_00c_7136                            ; $70f5: $cd $36 $71
    call Call_00c_7297                            ; $70f8: $cd $97 $72
    ret                                           ; $70fb: $c9


Call_00c_70fc:
    push af                                       ; $70fc: $f5
    push bc                                       ; $70fd: $c5
    push de                                       ; $70fe: $d5
    push hl                                       ; $70ff: $e5
    ld hl, $d227                                  ; $7100: $21 $27 $d2
    ld a, [$d214]                                 ; $7103: $fa $14 $d2
    ld b, a                                       ; $7106: $47

jr_00c_7107:
    ld a, [hl]                                    ; $7107: $7e
    cp $ff                                        ; $7108: $fe $ff
    jr z, jr_00c_7131                             ; $710a: $28 $25

    ld d, a                                       ; $710c: $57
    ld c, a                                       ; $710d: $4f
    rst $18                                       ; $710e: $df
    ld [hl], $0b                                  ; $710f: $36 $0b
    ld c, a                                       ; $7111: $4f
    push hl                                       ; $7112: $e5
    push bc                                       ; $7113: $c5
    inc hl                                        ; $7114: $23

jr_00c_7115:
    ld a, [hl]                                    ; $7115: $7e
    cp $ff                                        ; $7116: $fe $ff
    jr z, jr_00c_712b                             ; $7118: $28 $11

    ld e, a                                       ; $711a: $5f
    ld c, a                                       ; $711b: $4f
    rst $18                                       ; $711c: $df
    ld [hl], $0b                                  ; $711d: $36 $0b
    pop bc                                        ; $711f: $c1
    cp c                                          ; $7120: $b9
    jr nc, jr_00c_7127                            ; $7121: $30 $04

    ld c, a                                       ; $7123: $4f
    ld a, d                                       ; $7124: $7a
    ld d, e                                       ; $7125: $53
    ld [hl], a                                    ; $7126: $77

jr_00c_7127:
    push bc                                       ; $7127: $c5
    inc hl                                        ; $7128: $23
    jr jr_00c_7115                                ; $7129: $18 $ea

jr_00c_712b:
    pop bc                                        ; $712b: $c1
    pop hl                                        ; $712c: $e1
    ld a, d                                       ; $712d: $7a
    ld [hl+], a                                   ; $712e: $22
    jr jr_00c_7107                                ; $712f: $18 $d6

jr_00c_7131:
    pop hl                                        ; $7131: $e1
    pop de                                        ; $7132: $d1
    pop bc                                        ; $7133: $c1
    pop af                                        ; $7134: $f1
    ret                                           ; $7135: $c9


Call_00c_7136:
    push af                                       ; $7136: $f5
    push bc                                       ; $7137: $c5
    push de                                       ; $7138: $d5
    push hl                                       ; $7139: $e5
    ldh a, [$96]                                  ; $713a: $f0 $96
    push af                                       ; $713c: $f5
    ld hl, $d227                                  ; $713d: $21 $27 $d2
    ld c, $00                                     ; $7140: $0e $00

Jump_00c_7142:
    ld a, $06                                     ; $7142: $3e $06
    ldh [$96], a                                  ; $7144: $e0 $96
    ldh [rSVBK], a                                ; $7146: $e0 $70
    ld a, [hl+]                                   ; $7148: $2a
    cp $ff                                        ; $7149: $fe $ff
    jp z, Jump_00c_7265                           ; $714b: $ca $65 $72

    push hl                                       ; $714e: $e5
    push af                                       ; $714f: $f5
    ld a, $02                                     ; $7150: $3e $02
    ldh [$96], a                                  ; $7152: $e0 $96
    ldh [rSVBK], a                                ; $7154: $e0 $70
    pop af                                        ; $7156: $f1
    ld h, $00                                     ; $7157: $26 $00
    ld l, a                                       ; $7159: $6f
    add hl, hl                                    ; $715a: $29
    add hl, hl                                    ; $715b: $29
    ld d, h                                       ; $715c: $54
    ld e, l                                       ; $715d: $5d
    ld hl, $d000                                  ; $715e: $21 $00 $d0
    add hl, de                                    ; $7161: $19
    push hl                                       ; $7162: $e5
    ld a, $01                                     ; $7163: $3e $01
    ldh [$96], a                                  ; $7165: $e0 $96
    ldh [rSVBK], a                                ; $7167: $e0 $70
    ld a, c                                       ; $7169: $79
    add a                                         ; $716a: $87
    ld hl, $726f                                  ; $716b: $21 $6f $72
    add l                                         ; $716e: $85
    ld l, a                                       ; $716f: $6f
    jr nc, jr_00c_7173                            ; $7170: $30 $01

    inc h                                         ; $7172: $24

jr_00c_7173:
    ld a, [hl+]                                   ; $7173: $2a
    push af                                       ; $7174: $f5
    ld a, [hl]                                    ; $7175: $7e
    ld h, $00                                     ; $7176: $26 $00
    ld l, a                                       ; $7178: $6f
    add hl, hl                                    ; $7179: $29
    add hl, hl                                    ; $717a: $29
    add hl, hl                                    ; $717b: $29
    add hl, hl                                    ; $717c: $29
    add hl, hl                                    ; $717d: $29
    pop af                                        ; $717e: $f1
    add l                                         ; $717f: $85
    ld l, a                                       ; $7180: $6f
    jr nc, jr_00c_7184                            ; $7181: $30 $01

    inc h                                         ; $7183: $24

jr_00c_7184:
    ld de, $d000                                  ; $7184: $11 $00 $d0
    add hl, de                                    ; $7187: $19
    ld d, h                                       ; $7188: $54
    ld e, l                                       ; $7189: $5d
    ld a, $02                                     ; $718a: $3e $02
    ldh [$96], a                                  ; $718c: $e0 $96
    ldh [rSVBK], a                                ; $718e: $e0 $70
    pop hl                                        ; $7190: $e1
    ld a, [hl]                                    ; $7191: $7e
    push hl                                       ; $7192: $e5
    push af                                       ; $7193: $f5
    ld a, $01                                     ; $7194: $3e $01
    ldh [$96], a                                  ; $7196: $e0 $96
    ldh [rSVBK], a                                ; $7198: $e0 $70
    pop af                                        ; $719a: $f1
    ld h, d                                       ; $719b: $62
    ld l, e                                       ; $719c: $6b
    ld [hl], a                                    ; $719d: $77
    ld d, h                                       ; $719e: $54
    ld e, l                                       ; $719f: $5d
    pop hl                                        ; $71a0: $e1
    push hl                                       ; $71a1: $e5
    ld a, $04                                     ; $71a2: $3e $04
    add h                                         ; $71a4: $84
    ld h, a                                       ; $71a5: $67
    ld a, $02                                     ; $71a6: $3e $02
    ldh [$96], a                                  ; $71a8: $e0 $96
    ldh [rSVBK], a                                ; $71aa: $e0 $70
    ld a, [hl]                                    ; $71ac: $7e
    pop hl                                        ; $71ad: $e1
    inc hl                                        ; $71ae: $23
    push hl                                       ; $71af: $e5
    push af                                       ; $71b0: $f5
    ld a, $01                                     ; $71b1: $3e $01
    ldh [$96], a                                  ; $71b3: $e0 $96
    ldh [rSVBK], a                                ; $71b5: $e0 $70
    ld h, d                                       ; $71b7: $62
    ld l, e                                       ; $71b8: $6b
    ld a, $04                                     ; $71b9: $3e $04
    add h                                         ; $71bb: $84
    ld h, a                                       ; $71bc: $67
    pop af                                        ; $71bd: $f1
    ld [hl], a                                    ; $71be: $77
    inc de                                        ; $71bf: $13
    ld a, $02                                     ; $71c0: $3e $02
    ldh [$96], a                                  ; $71c2: $e0 $96
    ldh [rSVBK], a                                ; $71c4: $e0 $70
    pop hl                                        ; $71c6: $e1
    ld a, [hl]                                    ; $71c7: $7e
    push hl                                       ; $71c8: $e5
    push af                                       ; $71c9: $f5
    ld a, $01                                     ; $71ca: $3e $01
    ldh [$96], a                                  ; $71cc: $e0 $96
    ldh [rSVBK], a                                ; $71ce: $e0 $70
    pop af                                        ; $71d0: $f1
    ld h, d                                       ; $71d1: $62
    ld l, e                                       ; $71d2: $6b
    ld [hl], a                                    ; $71d3: $77
    pop hl                                        ; $71d4: $e1
    push hl                                       ; $71d5: $e5
    ld a, $04                                     ; $71d6: $3e $04
    add h                                         ; $71d8: $84
    ld h, a                                       ; $71d9: $67
    ld a, $02                                     ; $71da: $3e $02
    ldh [$96], a                                  ; $71dc: $e0 $96
    ldh [rSVBK], a                                ; $71de: $e0 $70
    ld a, [hl]                                    ; $71e0: $7e
    pop hl                                        ; $71e1: $e1
    inc hl                                        ; $71e2: $23
    push hl                                       ; $71e3: $e5
    push af                                       ; $71e4: $f5
    ld a, $01                                     ; $71e5: $3e $01
    ldh [$96], a                                  ; $71e7: $e0 $96
    ldh [rSVBK], a                                ; $71e9: $e0 $70
    ld h, d                                       ; $71eb: $62
    ld l, e                                       ; $71ec: $6b
    ld a, $04                                     ; $71ed: $3e $04
    add h                                         ; $71ef: $84
    ld h, a                                       ; $71f0: $67
    pop af                                        ; $71f1: $f1
    ld [hl], a                                    ; $71f2: $77
    pop hl                                        ; $71f3: $e1
    dec de                                        ; $71f4: $1b
    ld a, $20                                     ; $71f5: $3e $20
    add e                                         ; $71f7: $83
    ld e, a                                       ; $71f8: $5f
    jr nc, jr_00c_71fc                            ; $71f9: $30 $01

    inc d                                         ; $71fb: $14

jr_00c_71fc:
    ld a, $02                                     ; $71fc: $3e $02
    ldh [$96], a                                  ; $71fe: $e0 $96
    ldh [rSVBK], a                                ; $7200: $e0 $70
    ld a, [hl]                                    ; $7202: $7e
    push hl                                       ; $7203: $e5
    push af                                       ; $7204: $f5
    ld a, $01                                     ; $7205: $3e $01
    ldh [$96], a                                  ; $7207: $e0 $96
    ldh [rSVBK], a                                ; $7209: $e0 $70
    pop af                                        ; $720b: $f1
    ld h, d                                       ; $720c: $62
    ld l, e                                       ; $720d: $6b
    ld [hl], a                                    ; $720e: $77
    ld d, h                                       ; $720f: $54
    ld e, l                                       ; $7210: $5d
    pop hl                                        ; $7211: $e1
    push hl                                       ; $7212: $e5
    ld a, $04                                     ; $7213: $3e $04
    add h                                         ; $7215: $84
    ld h, a                                       ; $7216: $67
    ld a, $02                                     ; $7217: $3e $02
    ldh [$96], a                                  ; $7219: $e0 $96
    ldh [rSVBK], a                                ; $721b: $e0 $70
    ld a, [hl]                                    ; $721d: $7e
    pop hl                                        ; $721e: $e1
    inc hl                                        ; $721f: $23
    push hl                                       ; $7220: $e5
    push af                                       ; $7221: $f5
    ld a, $01                                     ; $7222: $3e $01
    ldh [$96], a                                  ; $7224: $e0 $96
    ldh [rSVBK], a                                ; $7226: $e0 $70
    ld h, d                                       ; $7228: $62
    ld l, e                                       ; $7229: $6b
    ld a, $04                                     ; $722a: $3e $04
    add h                                         ; $722c: $84
    ld h, a                                       ; $722d: $67
    pop af                                        ; $722e: $f1
    ld [hl], a                                    ; $722f: $77
    inc de                                        ; $7230: $13
    ld a, $02                                     ; $7231: $3e $02
    ldh [$96], a                                  ; $7233: $e0 $96
    ldh [rSVBK], a                                ; $7235: $e0 $70
    pop hl                                        ; $7237: $e1
    ld a, [hl]                                    ; $7238: $7e
    push hl                                       ; $7239: $e5
    push af                                       ; $723a: $f5
    ld a, $01                                     ; $723b: $3e $01
    ldh [$96], a                                  ; $723d: $e0 $96
    ldh [rSVBK], a                                ; $723f: $e0 $70
    pop af                                        ; $7241: $f1
    ld h, d                                       ; $7242: $62
    ld l, e                                       ; $7243: $6b
    ld [hl], a                                    ; $7244: $77
    pop hl                                        ; $7245: $e1
    ld a, $04                                     ; $7246: $3e $04
    add h                                         ; $7248: $84
    ld h, a                                       ; $7249: $67
    ld a, $02                                     ; $724a: $3e $02
    ldh [$96], a                                  ; $724c: $e0 $96
    ldh [rSVBK], a                                ; $724e: $e0 $70
    ld a, [hl]                                    ; $7250: $7e
    push af                                       ; $7251: $f5
    ld a, $01                                     ; $7252: $3e $01
    ldh [$96], a                                  ; $7254: $e0 $96
    ldh [rSVBK], a                                ; $7256: $e0 $70
    ld h, d                                       ; $7258: $62
    ld l, e                                       ; $7259: $6b
    ld a, $04                                     ; $725a: $3e $04
    add h                                         ; $725c: $84
    ld h, a                                       ; $725d: $67
    pop af                                        ; $725e: $f1
    ld [hl], a                                    ; $725f: $77
    pop hl                                        ; $7260: $e1
    inc c                                         ; $7261: $0c
    jp Jump_00c_7142                              ; $7262: $c3 $42 $71


Jump_00c_7265:
    pop af                                        ; $7265: $f1
    ldh [$96], a                                  ; $7266: $e0 $96
    ldh [rSVBK], a                                ; $7268: $e0 $70
    pop hl                                        ; $726a: $e1
    pop de                                        ; $726b: $d1
    pop bc                                        ; $726c: $c1
    pop af                                        ; $726d: $f1
    ret                                           ; $726e: $c9


    ld bc, $0105                                  ; $726f: $01 $05 $01
    rlca                                          ; $7272: $07
    ld bc, $0109                                  ; $7273: $01 $09 $01
    dec bc                                        ; $7276: $0b
    ld bc, $010d                                  ; $7277: $01 $0d $01
    rrca                                          ; $727a: $0f
    rlca                                          ; $727b: $07
    dec b                                         ; $727c: $05
    rlca                                          ; $727d: $07
    rlca                                          ; $727e: $07
    rlca                                          ; $727f: $07
    add hl, bc                                    ; $7280: $09
    rlca                                          ; $7281: $07
    dec bc                                        ; $7282: $0b
    rlca                                          ; $7283: $07
    dec c                                         ; $7284: $0d
    rlca                                          ; $7285: $07
    rrca                                          ; $7286: $0f
    dec c                                         ; $7287: $0d
    dec b                                         ; $7288: $05
    dec c                                         ; $7289: $0d
    rlca                                          ; $728a: $07
    dec c                                         ; $728b: $0d
    add hl, bc                                    ; $728c: $09
    dec c                                         ; $728d: $0d
    dec bc                                        ; $728e: $0b
    dec c                                         ; $728f: $0d
    dec c                                         ; $7290: $0d
    dec c                                         ; $7291: $0d
    rrca                                          ; $7292: $0f
    dec c                                         ; $7293: $0d
    rrca                                          ; $7294: $0f
    dec c                                         ; $7295: $0d
    rrca                                          ; $7296: $0f

Call_00c_7297:
    push af                                       ; $7297: $f5
    push bc                                       ; $7298: $c5
    push de                                       ; $7299: $d5
    push hl                                       ; $729a: $e5
    ldh a, [$96]                                  ; $729b: $f0 $96
    push af                                       ; $729d: $f5
    ld a, $06                                     ; $729e: $3e $06
    ldh [$96], a                                  ; $72a0: $e0 $96
    ldh [rSVBK], a                                ; $72a2: $e0 $70
    ld a, [$d214]                                 ; $72a4: $fa $14 $d2
    ld b, a                                       ; $72a7: $47
    ld hl, $d227                                  ; $72a8: $21 $27 $d2
    ld c, $00                                     ; $72ab: $0e $00

Jump_00c_72ad:
    ld a, $06                                     ; $72ad: $3e $06
    ldh [$96], a                                  ; $72af: $e0 $96
    ldh [rSVBK], a                                ; $72b1: $e0 $70
    ld a, [hl+]                                   ; $72b3: $2a
    cp $ff                                        ; $72b4: $fe $ff
    jp z, Jump_00c_731c                           ; $72b6: $ca $1c $73

    push hl                                       ; $72b9: $e5
    push bc                                       ; $72ba: $c5
    ld c, a                                       ; $72bb: $4f
    rst $18                                       ; $72bc: $df
    ld [hl], $0b                                  ; $72bd: $36 $0b
    pop bc                                        ; $72bf: $c1
    or a                                          ; $72c0: $b7
    jr z, jr_00c_7317                             ; $72c1: $28 $54

    bit 7, a                                      ; $72c3: $cb $7f
    jr nz, jr_00c_7317                            ; $72c5: $20 $50

    push af                                       ; $72c7: $f5
    ld a, c                                       ; $72c8: $79
    add a                                         ; $72c9: $87
    ld hl, $726f                                  ; $72ca: $21 $6f $72
    add l                                         ; $72cd: $85
    ld l, a                                       ; $72ce: $6f
    jr nc, jr_00c_72d2                            ; $72cf: $30 $01

    inc h                                         ; $72d1: $24

jr_00c_72d2:
    ld a, [hl+]                                   ; $72d2: $2a
    push af                                       ; $72d3: $f5
    ld a, [hl]                                    ; $72d4: $7e
    ld h, $00                                     ; $72d5: $26 $00
    ld l, a                                       ; $72d7: $6f
    add hl, hl                                    ; $72d8: $29
    add hl, hl                                    ; $72d9: $29
    add hl, hl                                    ; $72da: $29
    add hl, hl                                    ; $72db: $29
    add hl, hl                                    ; $72dc: $29
    pop af                                        ; $72dd: $f1
    add l                                         ; $72de: $85
    ld l, a                                       ; $72df: $6f
    jr nc, jr_00c_72e3                            ; $72e0: $30 $01

    inc h                                         ; $72e2: $24

jr_00c_72e3:
    ld de, $d423                                  ; $72e3: $11 $23 $d4
    add hl, de                                    ; $72e6: $19
    ld a, $01                                     ; $72e7: $3e $01
    ldh [$96], a                                  ; $72e9: $e0 $96
    ldh [rSVBK], a                                ; $72eb: $e0 $70
    pop af                                        ; $72ed: $f1
    sub $36                                       ; $72ee: $d6 $36
    or a                                          ; $72f0: $b7
    jr z, jr_00c_730b                             ; $72f1: $28 $18

    bit 7, a                                      ; $72f3: $cb $7f
    jr nz, jr_00c_72fe                            ; $72f5: $20 $07

    push af                                       ; $72f7: $f5
    ld a, $3d                                     ; $72f8: $3e $3d
    ld [hl+], a                                   ; $72fa: $22
    pop af                                        ; $72fb: $f1
    jr jr_00c_7310                                ; $72fc: $18 $12

jr_00c_72fe:
    add $36                                       ; $72fe: $c6 $36
    ld d, a                                       ; $7300: $57
    ld a, $36                                     ; $7301: $3e $36
    sub d                                         ; $7303: $92
    push af                                       ; $7304: $f5
    ld a, $3e                                     ; $7305: $3e $3e
    ld [hl+], a                                   ; $7307: $22
    pop af                                        ; $7308: $f1
    jr jr_00c_7310                                ; $7309: $18 $05

jr_00c_730b:
    push af                                       ; $730b: $f5
    ld a, $3f                                     ; $730c: $3e $3f
    ld [hl+], a                                   ; $730e: $22
    pop af                                        ; $730f: $f1

jr_00c_7310:
    push bc                                       ; $7310: $c5
    ld b, $33                                     ; $7311: $06 $33
    call Call_00c_7326                            ; $7313: $cd $26 $73
    pop bc                                        ; $7316: $c1

jr_00c_7317:
    inc c                                         ; $7317: $0c
    pop hl                                        ; $7318: $e1
    jp Jump_00c_72ad                              ; $7319: $c3 $ad $72


Jump_00c_731c:
    pop af                                        ; $731c: $f1
    ldh [$96], a                                  ; $731d: $e0 $96
    ldh [rSVBK], a                                ; $731f: $e0 $70
    pop hl                                        ; $7321: $e1
    pop de                                        ; $7322: $d1
    pop bc                                        ; $7323: $c1
    pop af                                        ; $7324: $f1
    ret                                           ; $7325: $c9


Call_00c_7326:
    push af                                       ; $7326: $f5
    push bc                                       ; $7327: $c5
    push de                                       ; $7328: $d5
    push hl                                       ; $7329: $e5
    cp $64                                        ; $732a: $fe $64
    jr c, jr_00c_7337                             ; $732c: $38 $09

    dec hl                                        ; $732e: $2b
    ld a, $0b                                     ; $732f: $3e $0b
    add b                                         ; $7331: $80
    ld [hl+], a                                   ; $7332: $22
    ld [hl+], a                                   ; $7333: $22
    ld [hl+], a                                   ; $7334: $22
    jr jr_00c_736d                                ; $7335: $18 $36

jr_00c_7337:
    push af                                       ; $7337: $f5
    ld a, $01                                     ; $7338: $3e $01
    ldh [$96], a                                  ; $733a: $e0 $96
    ldh [rSVBK], a                                ; $733c: $e0 $70
    pop af                                        ; $733e: $f1
    cp $0a                                        ; $733f: $fe $0a
    jr nc, jr_00c_7344                            ; $7341: $30 $01

    inc hl                                        ; $7343: $23

jr_00c_7344:
    ld c, $00                                     ; $7344: $0e $00
    ld d, $00                                     ; $7346: $16 $00
    ld e, $00                                     ; $7348: $1e $00
    push af                                       ; $734a: $f5
    cp $0a                                        ; $734b: $fe $0a
    jr c, jr_00c_7359                             ; $734d: $38 $0a

jr_00c_734f:
    add $f6                                       ; $734f: $c6 $f6
    bit 7, a                                      ; $7351: $cb $7f
    jr nz, jr_00c_7358                            ; $7353: $20 $03

    inc c                                         ; $7355: $0c
    jr jr_00c_734f                                ; $7356: $18 $f7

jr_00c_7358:
    ld d, c                                       ; $7358: $51

jr_00c_7359:
    ld a, c                                       ; $7359: $79
    add a                                         ; $735a: $87
    add a                                         ; $735b: $87
    add a                                         ; $735c: $87
    add c                                         ; $735d: $81
    add c                                         ; $735e: $81
    ld c, a                                       ; $735f: $4f
    pop af                                        ; $7360: $f1
    sub c                                         ; $7361: $91
    ld e, a                                       ; $7362: $5f
    ld a, d                                       ; $7363: $7a
    or a                                          ; $7364: $b7
    jr z, jr_00c_736a                             ; $7365: $28 $03

    ld a, d                                       ; $7367: $7a
    add b                                         ; $7368: $80
    ld [hl+], a                                   ; $7369: $22

jr_00c_736a:
    ld a, e                                       ; $736a: $7b
    add b                                         ; $736b: $80
    ld [hl], a                                    ; $736c: $77

jr_00c_736d:
    pop hl                                        ; $736d: $e1
    pop de                                        ; $736e: $d1
    pop bc                                        ; $736f: $c1
    pop af                                        ; $7370: $f1
    ret                                           ; $7371: $c9


    nop                                           ; $7372: $00
    nop                                           ; $7373: $00
    nop                                           ; $7374: $00
    nop                                           ; $7375: $00
    nop                                           ; $7376: $00
    nop                                           ; $7377: $00
    nop                                           ; $7378: $00
    nop                                           ; $7379: $00
    nop                                           ; $737a: $00
    nop                                           ; $737b: $00
    nop                                           ; $737c: $00
    nop                                           ; $737d: $00
    nop                                           ; $737e: $00
    nop                                           ; $737f: $00
    push af                                       ; $7380: $f5
    nop                                           ; $7381: $00
    rst $38                                       ; $7382: $ff
    db $e3                                        ; $7383: $e3
    rst $38                                       ; $7384: $ff
    ld hl, sp-$1b                                 ; $7385: $f8 $e5
    inc a                                         ; $7387: $3c
    inc a                                         ; $7388: $3c
    ld e, d                                       ; $7389: $5a
    ld h, [hl]                                    ; $738a: $66
    cp a                                          ; $738b: $bf
    ld a, [hl]                                    ; $738c: $7e
    ld b, d                                       ; $738d: $42
    ld e, d                                       ; $738e: $5a
    rst $20                                       ; $738f: $e7
    ld e, d                                       ; $7390: $5a
    ld h, [hl]                                    ; $7391: $66
    or $e1                                        ; $7392: $f6 $e1
    inc a                                         ; $7394: $3c
    rst $38                                       ; $7395: $ff
    rst $38                                       ; $7396: $ff
    ld l, h                                       ; $7397: $6c
    ld l, h                                       ; $7398: $6c
    cp $92                                        ; $7399: $fe $92
    cp $da                                        ; $739b: $fe $da
    jp c, $b7f7                                   ; $739d: $da $f7 $b7

    db $fc                                        ; $73a0: $fc
    db $fc                                        ; $73a1: $fc
    ret c                                         ; $73a2: $d8

    db $e3                                        ; $73a3: $e3
    inc h                                         ; $73a4: $24
    inc h                                         ; $73a5: $24
    ld a, [hl]                                    ; $73a6: $7e
    ld e, d                                       ; $73a7: $5a
    ld l, a                                       ; $73a8: $6f
    rst $38                                       ; $73a9: $ff
    add c                                         ; $73aa: $81
    ld a, [hl]                                    ; $73ab: $7e
    db $db                                        ; $73ac: $db
    ld a, [$5ae2]                                 ; $73ad: $fa $e2 $5a
    inc h                                         ; $73b0: $24
    ldh a, [$e2]                                  ; $73b1: $f0 $e2
    rst $38                                       ; $73b3: $ff
    cp a                                          ; $73b4: $bf
    pop bc                                        ; $73b5: $c1
    rst $38                                       ; $73b6: $ff
    sbc e                                         ; $73b7: $9b
    cp l                                          ; $73b8: $bd
    jp $d9ff                                      ; $73b9: $c3 $ff $d9


    rst $38                                       ; $73bc: $ff
    db $fd                                        ; $73bd: $fd
    add e                                         ; $73be: $83
    ld a, [hl]                                    ; $73bf: $7e
    rst $38                                       ; $73c0: $ff
    ld [hl], e                                    ; $73c1: $73
    ld [hl], e                                    ; $73c2: $73
    xor a                                         ; $73c3: $af
    db $dd                                        ; $73c4: $dd
    rst $38                                       ; $73c5: $ff
    db $fd                                        ; $73c6: $fd
    xor e                                         ; $73c7: $ab
    xor d                                         ; $73c8: $aa
    rst $10                                       ; $73c9: $d7
    ld [hl], l                                    ; $73ca: $75
    ld l, e                                       ; $73cb: $6b
    rst $28                                       ; $73cc: $ef
    push de                                       ; $73cd: $d5
    rst $38                                       ; $73ce: $ff
    push de                                       ; $73cf: $d5
    cp e                                          ; $73d0: $bb
    ld l, [hl]                                    ; $73d1: $6e
    rst $38                                       ; $73d2: $ff
    ld [hl], b                                    ; $73d3: $70
    ld [hl], b                                    ; $73d4: $70
    xor b                                         ; $73d5: $a8
    ret c                                         ; $73d6: $d8

    rst $38                                       ; $73d7: $ff
    ei                                            ; $73d8: $fb
    xor e                                         ; $73d9: $ab
    ld l, a                                       ; $73da: $6f
    db $dd                                        ; $73db: $dd
    db $dd                                        ; $73dc: $dd
    xor e                                         ; $73dd: $ab
    ld [$ffb6], a                                 ; $73de: $ea $b6 $ff
    cp [hl]                                       ; $73e1: $be
    jp z, $ff74                                   ; $73e2: $ca $74 $ff

    ld h, b                                       ; $73e5: $60
    ld h, b                                       ; $73e6: $60
    ldh a, [$90]                                  ; $73e7: $f0 $90
    cp a                                          ; $73e9: $bf

jr_00c_73ea:
    ldh a, [$d0]                                  ; $73ea: $f0 $d0
    ret nc                                        ; $73ec: $d0

    cp a                                          ; $73ed: $bf
    ldh [$e0], a                                  ; $73ee: $e0 $e0
    adc b                                         ; $73f0: $88
    db $e3                                        ; $73f1: $e3
    inc e                                         ; $73f2: $1c
    ld a, a                                       ; $73f3: $7f
    inc e                                         ; $73f4: $1c
    inc l                                         ; $73f5: $2c
    inc [hl]                                      ; $73f6: $34
    jr c, jr_00c_7421                             ; $73f7: $38 $28

    jr c, jr_00c_73ea                             ; $73f9: $38 $ef

    db $fc                                        ; $73fb: $fc
    ldh [rIE], a                                  ; $73fc: $e0 $ff
    jr z, jr_00c_742c                             ; $73fe: $28 $2c

    inc [hl]                                      ; $7400: $34
    jr @+$01                                      ; $7401: $18 $ff

    jr c, jr_00c_743d                             ; $7403: $38 $38

    inc [hl]                                      ; $7405: $34
    rst $18                                       ; $7406: $df
    inc l                                         ; $7407: $2c
    inc e                                         ; $7408: $1c
    inc d                                         ; $7409: $14
    inc e                                         ; $740a: $1c
    rst $30                                       ; $740b: $f7
    db $fc                                        ; $740c: $fc
    ldh [rNR14], a                                ; $740d: $e0 $14
    inc [hl]                                      ; $740f: $34
    rst $38                                       ; $7410: $ff
    inc l                                         ; $7411: $2c
    jr @+$01                                      ; $7412: $18 $ff

    jp $e7c3                                      ; $7414: $c3 $c3 $e7


    and l                                         ; $7417: $a5
    ld a, [hl]                                    ; $7418: $7e
    rst $28                                       ; $7419: $ef
    ld e, d                                       ; $741a: $5a
    inc a                                         ; $741b: $3c
    rst $20                                       ; $741c: $e7
    inc a                                         ; $741d: $3c
    adc b                                         ; $741e: $88
    ldh [$e7], a                                  ; $741f: $e0 $e7

jr_00c_7421:
    and l                                         ; $7421: $a5
    ld b, d                                       ; $7422: $42
    ld a, [hl]                                    ; $7423: $7e
    ld h, b                                       ; $7424: $60
    ldh [$3c], a                                  ; $7425: $e0 $3c
    inc h                                         ; $7427: $24
    rst $38                                       ; $7428: $ff

jr_00c_7429:
    rst $20                                       ; $7429: $e7
    rst $38                                       ; $742a: $ff
    add c                                         ; $742b: $81

jr_00c_742c:
    cp $e0                                        ; $742c: $fe $e0
    ld a, [$e0ec]                                 ; $742e: $fa $ec $e0
    inc a                                         ; $7431: $3c
    ld c, b                                       ; $7432: $48
    db $e4                                        ; $7433: $e4
    jr nc, @+$01                                  ; $7434: $30 $ff

    ld a, b                                       ; $7436: $78
    ld c, b                                       ; $7437: $48
    ld a, b                                       ; $7438: $78
    ld l, a                                       ; $7439: $6f
    ld l, b                                       ; $743a: $68
    ld l, b                                       ; $743b: $68
    ld e, b                                       ; $743c: $58

jr_00c_743d:
    jr nc, jr_00c_7477                            ; $743d: $30 $38

    ld [c], a                                     ; $743f: $e2
    rst $38                                       ; $7440: $ff
    rst $38                                       ; $7441: $ff
    ldh [$e2], a                                  ; $7442: $e0 $e2
    nop                                           ; $7444: $00
    inc l                                         ; $7445: $2c
    pop hl                                        ; $7446: $e1
    jr nc, jr_00c_7429                            ; $7447: $30 $e0

    jp nc, $c0e2                                  ; $7449: $d2 $e2 $c0

    ldh [$ea], a                                  ; $744c: $e0 $ea
    ld [c], a                                     ; $744e: $e2
    rst $38                                       ; $744f: $ff
    pop hl                                        ; $7450: $e1
    add $e1                                       ; $7451: $c6 $e1
    call nz, $fce1                                ; $7453: $c4 $e1 $fc
    cp $e1                                        ; $7456: $fe $e1
    db $10                                        ; $7458: $10
    ld [c], a                                     ; $7459: $e2
    cp l                                          ; $745a: $bd
    db $db                                        ; $745b: $db
    rst $28                                       ; $745c: $ef
    sub c                                         ; $745d: $91
    rst $30                                       ; $745e: $f7
    adc c                                         ; $745f: $89
    ei                                            ; $7460: $fb
    cp l                                          ; $7461: $bd
    db $db                                        ; $7462: $db
    db $10                                        ; $7463: $10
    pop hl                                        ; $7464: $e1
    inc a                                         ; $7465: $3c
    inc a                                         ; $7466: $3c
    ld e, h                                       ; $7467: $5c
    ld h, h                                       ; $7468: $64
    ld a, h                                       ; $7469: $7c
    di                                            ; $746a: $f3
    ld b, h                                       ; $746b: $44
    ld a, h                                       ; $746c: $7c
    sub b                                         ; $746d: $90
    pop hl                                        ; $746e: $e1
    ld hl, sp-$40                                 ; $746f: $f8 $c0
    inc a                                         ; $7471: $3c
    rst $38                                       ; $7472: $ff
    ld a, [hl]                                    ; $7473: $7e
    ld a, [hl]                                    ; $7474: $7e
    cp $26                                        ; $7475: $fe $26

jr_00c_7477:
    ldh [$99], a                                  ; $7477: $e0 $99
    rst $30                                       ; $7479: $f7
    ld sp, hl                                     ; $747a: $f9
    cp c                                          ; $747b: $b9
    rst $00                                       ; $747c: $c7
    rst $28                                       ; $747d: $ef
    sbc a                                         ; $747e: $9f
    db $fc                                        ; $747f: $fc
    ld [$f0e0], sp                                ; $7480: $08 $e0 $f0
    ld [c], a                                     ; $7483: $e2
    rst $30                                       ; $7484: $f7
    sbc c                                         ; $7485: $99
    ld a, [hl]                                    ; $7486: $7e
    db $e3                                        ; $7487: $e3
    rst $38                                       ; $7488: $ff
    ld sp, hl                                     ; $7489: $f9
    rst $38                                       ; $748a: $ff
    rst $38                                       ; $748b: $ff
    sbc c                                         ; $748c: $99
    cp l                                          ; $748d: $bd
    jp $ff7e                                      ; $748e: $c3 $7e $ff


    ld a, $3e                                     ; $7491: $3e $3e
    rst $38                                       ; $7493: $ff
    ld e, [hl]                                    ; $7494: $5e
    ld h, d                                       ; $7495: $62
    cp [hl]                                       ; $7496: $be
    jp nz, $93fe                                  ; $7497: $c2 $fe $93

    rst $38                                       ; $749a: $ff
    sub e                                         ; $749b: $93
    halt                                          ; $749c: $76
    ld l, h                                       ; $749d: $6c
    ldh [$f3], a                                  ; $749e: $e0 $f3
    inc c                                         ; $74a0: $0c
    and b                                         ; $74a1: $a0
    db $e3                                        ; $74a2: $e3
    sbc a                                         ; $74a3: $9f
    db $fd                                        ; $74a4: $fd
    add e                                         ; $74a5: $83
    ldh [$e5], a                                  ; $74a6: $e0 $e5
    dec hl                                        ; $74a8: $2b
    ld a, [hl]                                    ; $74a9: $7e
    ld a, [hl]                                    ; $74aa: $7e
    ld [c], a                                     ; $74ab: $e2
    ldh [$9e], a                                  ; $74ac: $e0 $9e
    ldh a, [$e0]                                  ; $74ae: $f0 $e0

jr_00c_74b0:
    sbc c                                         ; $74b0: $99
    ret nc                                        ; $74b1: $d0

    db $e3                                        ; $74b2: $e3
    ld h, h                                       ; $74b3: $64
    pop hl                                        ; $74b4: $e1
    cp a                                          ; $74b5: $bf

jr_00c_74b6:
    push af                                       ; $74b6: $f5
    ei                                            ; $74b7: $fb
    ld l, $f3                                     ; $74b8: $2e $f3
    ld a, [hl-]                                   ; $74ba: $3a
    ld h, $7e                                     ; $74bb: $26 $7e
    pop hl                                        ; $74bd: $e1
    jr jr_00c_74b0                                ; $74be: $18 $f0

    and b                                         ; $74c0: $a0
    db $e4                                        ; $74c1: $e4
    sbc h                                         ; $74c2: $9c
    pop hl                                        ; $74c3: $e1
    ret nc                                        ; $74c4: $d0

    push hl                                       ; $74c5: $e5
    db $f4                                        ; $74c6: $f4
    db $e3                                        ; $74c7: $e3
    cp a                                          ; $74c8: $bf
    pop bc                                        ; $74c9: $c1
    ld a, a                                       ; $74ca: $7f
    ld a, c                                       ; $74cb: $79
    add $a0                                       ; $74cc: $c6 $a0
    pop hl                                        ; $74ce: $e1
    nop                                           ; $74cf: $00
    nop                                           ; $74d0: $00
    ld c, $e1                                     ; $74d1: $0e $e1
    jr jr_00c_74b6                                ; $74d3: $18 $e1

    ld hl, sp-$1b                                 ; $74d5: $f8 $e5
    jr @+$1a                                      ; $74d7: $18 $18

    xor $48                                       ; $74d9: $ee $48
    ld [c], a                                     ; $74db: $e2
    inc h                                         ; $74dc: $24

jr_00c_74dd:
    inc a                                         ; $74dd: $3c
    inc [hl]                                      ; $74de: $34
    ldh [$c1], a                                  ; $74df: $e0 $c1
    ld a, [de]                                    ; $74e1: $1a
    ld d, $34                                     ; $74e2: $16 $34
    rst $38                                       ; $74e4: $ff
    inc l                                         ; $74e5: $2c
    ld l, b                                       ; $74e6: $68
    ld e, b                                       ; $74e7: $58
    ld l, b                                       ; $74e8: $68
    rst $18                                       ; $74e9: $df
    inc [hl]                                      ; $74ea: $34
    inc l                                         ; $74eb: $2c
    ld a, [de]                                    ; $74ec: $1a
    rst $20                                       ; $74ed: $e7
    ld d, $0e                                     ; $74ee: $16 $0e
    ld c, $38                                     ; $74f0: $0e $38
    pop bc                                        ; $74f2: $c1
    jr jr_00c_74dd                                ; $74f3: $18 $e8

    rst $38                                       ; $74f5: $ff
    nop                                           ; $74f6: $00
    rst $38                                       ; $74f7: $ff
    rst $38                                       ; $74f8: $ff
    ld e, b                                       ; $74f9: $58
    ld l, b                                       ; $74fa: $68
    inc l                                         ; $74fb: $2c
    inc [hl]                                      ; $74fc: $34
    ld d, $1a                                     ; $74fd: $16 $1a
    ld d, $fb                                     ; $74ff: $16 $fb
    ld a, a                                       ; $7501: $7f
    inc l                                         ; $7502: $2c
    inc [hl]                                      ; $7503: $34
    ld e, b                                       ; $7504: $58
    ld l, b                                       ; $7505: $68
    ld [hl], b                                    ; $7506: $70
    ld [hl], b                                    ; $7507: $70
    nop                                           ; $7508: $00
    jr nc, @-$1a                                  ; $7509: $30 $e4

    di                                            ; $750b: $f3
    db $eb                                        ; $750c: $eb
    rst $30                                       ; $750d: $f7
    call nz, Call_000_20c0                        ; $750e: $c4 $c0 $20
    jp nz, Jump_000_3c3c                          ; $7511: $c2 $3c $3c

    ld h, d                                       ; $7514: $62
    ld e, [hl]                                    ; $7515: $5e
    rst $38                                       ; $7516: $ff
    rst $18                                       ; $7517: $df
    cp c                                          ; $7518: $b9
    or e                                          ; $7519: $b3
    db $ed                                        ; $751a: $ed
    xor a                                         ; $751b: $af
    push af                                       ; $751c: $f5
    cp l                                          ; $751d: $bd
    db $db                                        ; $751e: $db
    db $e3                                        ; $751f: $e3
    ld [hl], d                                    ; $7520: $72
    ld c, [hl]                                    ; $7521: $4e
    ldh a, [$c5]                                  ; $7522: $f0 $c5
    ld d, d                                       ; $7524: $52
    pop hl                                        ; $7525: $e1
    sbc h                                         ; $7526: $9c
    ret nz                                        ; $7527: $c0

    sbc c                                         ; $7528: $99
    rst $20                                       ; $7529: $e7
    rst $38                                       ; $752a: $ff
    cp a                                          ; $752b: $bf
    db $fc                                        ; $752c: $fc
    db $fc                                        ; $752d: $fc
    ld a, [$fe86]                                 ; $752e: $fa $86 $fe
    sbc d                                         ; $7531: $9a
    ld b, b                                       ; $7532: $40
    db $e3                                        ; $7533: $e3
    db $fd                                        ; $7534: $fd
    adc e                                         ; $7535: $8b
    add e                                         ; $7536: $83
    cp $e0                                        ; $7537: $fe $e0
    push hl                                       ; $7539: $e5
    sbc a                                         ; $753a: $9f
    ld [bc], a                                    ; $753b: $02
    ldh [$d0], a                                  ; $753c: $e0 $d0
    jp nz, $e1e0                                  ; $753e: $c2 $e0 $e1

    db $fd                                        ; $7541: $fd
    cp l                                          ; $7542: $bd
    sbc e                                         ; $7543: $9b
    ld [c], a                                     ; $7544: $e2
    ld [c], a                                     ; $7545: $e2
    sbc e                                         ; $7546: $9b
    ld a, [$fc86]                                 ; $7547: $fa $86 $fc
    and b                                         ; $754a: $a0
    jp nz, Jump_00c_7ffe                          ; $754b: $c2 $fe $7f

    sbc [hl]                                      ; $754e: $9e
    cp $83                                        ; $754f: $fe $83
    db $fc                                        ; $7551: $fc
    sbc h                                         ; $7552: $9c
    cp $9e                                        ; $7553: $fe $9e
    sub b                                         ; $7555: $90
    push bc                                       ; $7556: $c5
    db $ec                                        ; $7557: $ec
    ldh a, [$e3]                                  ; $7558: $f0 $e3
    ld [$90c0], sp                                ; $755a: $08 $c0 $90
    ldh a, [$90]                                  ; $755d: $f0 $90
    call nz, $9ffe                                ; $755f: $c4 $fe $9f
    rst $38                                       ; $7562: $ff
    rst $38                                       ; $7563: $ff
    sub c                                         ; $7564: $91
    cp a                                          ; $7565: $bf
    reti                                          ; $7566: $d9


    ld e, e                                       ; $7567: $5b
    ld h, l                                       ; $7568: $65
    ccf                                           ; $7569: $3f
    rst $38                                       ; $756a: $ff
    rst $20                                       ; $756b: $e7
    jp hl                                         ; $756c: $e9


    rst $20                                       ; $756d: $e7
    sub h                                         ; $756e: $94
    push hl                                       ; $756f: $e5
    sbc $c1                                       ; $7570: $de $c1
    rst $20                                       ; $7572: $e7
    sub b                                         ; $7573: $90
    ret nz                                        ; $7574: $c0

    ld a, [hl]                                    ; $7575: $7e
    ld b, d                                       ; $7576: $42
    ld a, [hl]                                    ; $7577: $7e
    pop af                                        ; $7578: $f1
    ld h, [hl]                                    ; $7579: $66
    db $10                                        ; $757a: $10
    jp nz, $a078                                  ; $757b: $c2 $78 $a0

    ret nc                                        ; $757e: $d0

    jp $f3ff                                      ; $757f: $c3 $ff $f3


    ld a, [hl]                                    ; $7582: $7e
    di                                            ; $7583: $f3
    rst $38                                       ; $7584: $ff
    cp $92                                        ; $7585: $fe $92
    cp d                                          ; $7587: $ba
    add $54                                       ; $7588: $c6 $54
    ld l, h                                       ; $758a: $6c
    jr c, @+$01                                   ; $758b: $38 $ff

    rst $38                                       ; $758d: $ff
    xor $ee                                       ; $758e: $ee $ee
    rst $30                                       ; $7590: $f7
    sbc c                                         ; $7591: $99
    db $ed                                        ; $7592: $ed
    sub e                                         ; $7593: $93
    ld a, [$ff87]                                 ; $7594: $fa $87 $ff
    ld a, [$ed86]                                 ; $7597: $fa $86 $ed
    sub e                                         ; $759a: $93
    rst $30                                       ; $759b: $f7
    sbc c                                         ; $759c: $99
    xor $ff                                       ; $759d: $ee $ff
    dec sp                                        ; $759f: $3b
    ldh a, [$f0]                                  ; $75a0: $f0 $f0
    xor b                                         ; $75a2: $a8
    ld [c], a                                     ; $75a3: $e2
    sbc a                                         ; $75a4: $9f
    ldh a, [$90]                                  ; $75a5: $f0 $90
    ld l, h                                       ; $75a7: $6c
    ldh [$0c], a                                  ; $75a8: $e0 $0c
    ret nz                                        ; $75aa: $c0

    rst $38                                       ; $75ab: $ff
    rst $30                                       ; $75ac: $f7

jr_00c_75ad:
    rst $30                                       ; $75ad: $f7
    db $eb                                        ; $75ae: $eb
    sbc l                                         ; $75af: $9d

jr_00c_75b0:
    rst $30                                       ; $75b0: $f7
    adc c                                         ; $75b1: $89
    db $eb                                        ; $75b2: $eb
    sub l                                         ; $75b3: $95
    ld a, a                                       ; $75b4: $7f
    rst $30                                       ; $75b5: $f7
    sbc l                                         ; $75b6: $9d
    rst $38                                       ; $75b7: $ff
    sbc l                                         ; $75b8: $9d
    rst $30                                       ; $75b9: $f7
    sub l                                         ; $75ba: $95
    ld h, d                                       ; $75bb: $62
    and b                                         ; $75bc: $a0
    ld [c], a                                     ; $75bd: $e2
    rrca                                          ; $75be: $0f
    rst $28                                       ; $75bf: $ef
    sbc c                                         ; $75c0: $99
    rst $30                                       ; $75c1: $f7
    adc c                                         ; $75c2: $89
    ld e, $c0                                     ; $75c3: $1e $c0
    and b                                         ; $75c5: $a0
    ld [c], a                                     ; $75c6: $e2
    jr nz, jr_00c_75b0                            ; $75c7: $20 $e7

    ld b, b                                       ; $75c9: $40
    db $eb                                        ; $75ca: $eb
    ld [hl-], a                                   ; $75cb: $32
    ld b, d                                       ; $75cc: $42
    ld [c], a                                     ; $75cd: $e2
    sbc h                                         ; $75ce: $9c
    ld h, b                                       ; $75cf: $60
    push hl                                       ; $75d0: $e5
    ld [bc], a                                    ; $75d1: $02
    pop hl                                        ; $75d2: $e1
    cp l                                          ; $75d3: $bd
    db $db                                        ; $75d4: $db
    ld h, b                                       ; $75d5: $60

jr_00c_75d6:
    pop hl                                        ; $75d6: $e1
    ldh [$e9], a                                  ; $75d7: $e0 $e9

jr_00c_75d9:
    rst $30                                       ; $75d9: $f7
    rst $38                                       ; $75da: $ff
    sbc c                                         ; $75db: $99
    and $f0                                       ; $75dc: $e6 $f0
    and h                                         ; $75de: $a4
    or [hl]                                       ; $75df: $b6
    rst $08                                       ; $75e0: $cf
    ld l, l                                       ; $75e1: $6d
    ld [hl], e                                    ; $75e2: $73
    ret nz                                        ; $75e3: $c0

    jr nc, jr_00c_75ad                            ; $75e4: $30 $c7

    or b                                          ; $75e6: $b0
    xor c                                         ; $75e7: $a9
    add h                                         ; $75e8: $84
    and b                                         ; $75e9: $a0
    ld [hl], $e2                                  ; $75ea: $36 $e2
    ldh [$c5], a                                  ; $75ec: $e0 $c5
    ldh a, [$e5]                                  ; $75ee: $f0 $e5
    and l                                         ; $75f0: $a5
    db $db                                        ; $75f1: $db
    db $ec                                        ; $75f2: $ec
    xor d                                         ; $75f3: $aa
    add b                                         ; $75f4: $80
    or b                                          ; $75f5: $b0
    add b                                         ; $75f6: $80
    rst $30                                       ; $75f7: $f7
    rst $30                                       ; $75f8: $f7
    ld l, b                                       ; $75f9: $68
    ldh [$9d], a                                  ; $75fa: $e0 $9d
    xor e                                         ; $75fc: $ab
    push de                                       ; $75fd: $d5
    ld a, a                                       ; $75fe: $7f
    cp a                                          ; $75ff: $bf
    pop bc                                        ; $7600: $c1
    ld [hl], l                                    ; $7601: $75
    ld c, e                                       ; $7602: $4b
    ld a, [hl]                                    ; $7603: $7e
    ld c, d                                       ; $7604: $4a
    inc [hl]                                      ; $7605: $34
    nop                                           ; $7606: $00
    ld [c], a                                     ; $7607: $e2
    ld d, e                                       ; $7608: $53
    cp l                                          ; $7609: $bd
    jp $8190                                      ; $760a: $c3 $90 $81


    sbc b                                         ; $760d: $98
    and c                                         ; $760e: $a1
    rst $20                                       ; $760f: $e7
    ldh a, [$c4]                                  ; $7610: $f0 $c4
    and l                                         ; $7612: $a5
    ld [hl], h                                    ; $7613: $74
    and c                                         ; $7614: $a1
    cp $b0                                        ; $7615: $fe $b0
    push hl                                       ; $7617: $e5
    add c                                         ; $7618: $81
    ld l, l                                       ; $7619: $6d
    ld [hl], e                                    ; $761a: $73
    ld a, [hl-]                                   ; $761b: $3a
    rst $20                                       ; $761c: $e7
    ld e, h                                       ; $761d: $5c
    ld h, h                                       ; $761e: $64
    db $d3                                        ; $761f: $d3
    or a                                          ; $7620: $b7
    rst $08                                       ; $7621: $cf
    inc l                                         ; $7622: $2c
    and c                                         ; $7623: $a1
    ld a, [c]                                     ; $7624: $f2
    and d                                         ; $7625: $a2
    inc l                                         ; $7626: $2c
    ret nc                                        ; $7627: $d0

    add c                                         ; $7628: $81
    inc a                                         ; $7629: $3c
    inc l                                         ; $762a: $2c
    cp $00                                        ; $762b: $fe $00
    and c                                         ; $762d: $a1
    sub $ba                                       ; $762e: $d6 $ba
    cp d                                          ; $7630: $ba
    sub $54                                       ; $7631: $d6 $54
    ld l, h                                       ; $7633: $6c
    cp $ff                                        ; $7634: $fe $ff
    add e                                         ; $7636: $83
    cp $ee                                        ; $7637: $fe $ee
    cp $82                                        ; $7639: $fe $82
    cp $ee                                        ; $763b: $fe $ee
    jr c, jr_00c_75d9                             ; $763d: $38 $9a

    ldh [$e3], a                                  ; $763f: $e0 $e3
    inc [hl]                                      ; $7641: $34
    ret nz                                        ; $7642: $c0

    add c                                         ; $7643: $81
    inc a                                         ; $7644: $3c
    inc [hl]                                      ; $7645: $34
    ldh [$81], a                                  ; $7646: $e0 $81
    jp nc, Jump_00c_7ea1                          ; $7648: $d2 $a1 $7e

    jp Jump_00c_665a                              ; $764b: $c3 $5a $66


    jr nz, jr_00c_75d6                            ; $764e: $20 $86

    db $10                                        ; $7650: $10
    add a                                         ; $7651: $87
    ldh a, [$83]                                  ; $7652: $f0 $83
    ldh [$8d], a                                  ; $7654: $e0 $8d
    inc a                                         ; $7656: $3c
    inc a                                         ; $7657: $3c
    rst $38                                       ; $7658: $ff
    ld a, d                                       ; $7659: $7a
    ld b, [hl]                                    ; $765a: $46
    dec a                                         ; $765b: $3d
    dec sp                                        ; $765c: $3b
    ld e, a                                       ; $765d: $5f
    pop hl                                        ; $765e: $e1
    cp a                                          ; $765f: $bf
    reti                                          ; $7660: $d9


    rst $38                                       ; $7661: $ff
    rst $38                                       ; $7662: $ff
    sbc c                                         ; $7663: $99
    ld a, a                                       ; $7664: $7f
    ld b, c                                       ; $7665: $41
    ccf                                           ; $7666: $3f
    rst $38                                       ; $7667: $ff
    ldh [$e0], a                                  ; $7668: $e0 $e0
    cp a                                          ; $766a: $bf
    ldh a, [$90]                                  ; $766b: $f0 $90
    db $fc                                        ; $766d: $fc
    sbc h                                         ; $766e: $9c
    ld a, [$1c87]                                 ; $766f: $fa $87 $1c
    pop bc                                        ; $7672: $c1
    cp $fb                                        ; $7673: $fe $fb
    add d                                         ; $7675: $82
    db $fc                                        ; $7676: $fc
    ld [hl], b                                    ; $7677: $70
    and d                                         ; $7678: $a2
    ld e, [hl]                                    ; $7679: $5e
    ld h, d                                       ; $767a: $62
    cp a                                          ; $767b: $bf
    reti                                          ; $767c: $d9


    or $ff                                        ; $767d: $f6 $ff
    sub [hl]                                      ; $767f: $96
    cp a                                          ; $7680: $bf
    reti                                          ; $7681: $d9


    ld e, [hl]                                    ; $7682: $5e
    ld h, d                                       ; $7683: $62
    inc a                                         ; $7684: $3c
    rst $38                                       ; $7685: $ff
    rlca                                          ; $7686: $07
    rra                                           ; $7687: $1f
    rlca                                          ; $7688: $07
    rrca                                          ; $7689: $0f
    add hl, bc                                    ; $768a: $09
    ccf                                           ; $768b: $3f
    add hl, sp                                    ; $768c: $39
    ret nc                                        ; $768d: $d0

    rst $20                                       ; $768e: $e7
    ld d, b                                       ; $768f: $50
    and c                                         ; $7690: $a1
    cp [hl]                                       ; $7691: $be
    and d                                         ; $7692: $a2
    rst $30                                       ; $7693: $f7
    add c                                         ; $7694: $81
    cp [hl]                                       ; $7695: $be
    sbc $e0                                       ; $7696: $de $e0
    pop hl                                        ; $7698: $e1
    rrca                                          ; $7699: $0f
    rrca                                          ; $769a: $0f
    rla                                           ; $769b: $17
    add hl, de                                    ; $769c: $19
    xor a                                         ; $769d: $af
    cpl                                           ; $769e: $2f
    scf                                           ; $769f: $37
    cp $e7                                        ; $76a0: $fe $e7
    ld h, d                                       ; $76a2: $62
    ldh [$e6], a                                  ; $76a3: $e0 $e6
    ld d, b                                       ; $76a5: $50
    add c                                         ; $76a6: $81
    ccf                                           ; $76a7: $3f
    rst $30                                       ; $76a8: $f7
    ccf                                           ; $76a9: $3f
    ld e, e                                       ; $76aa: $5b
    ld h, l                                       ; $76ab: $65
    and h                                         ; $76ac: $a4
    db $e3                                        ; $76ad: $e3
    dec a                                         ; $76ae: $3d
    dec sp                                        ; $76af: $3b
    ld a, d                                       ; $76b0: $7a
    ld b, [hl]                                    ; $76b1: $46
    reti                                          ; $76b2: $d9


    inc a                                         ; $76b3: $3c
    and b                                         ; $76b4: $a0
    ld [$a190], a                                 ; $76b5: $ea $90 $a1
    ld a, b                                       ; $76b8: $78
    ld a, b                                       ; $76b9: $78
    ld [hl], $80                                  ; $76ba: $36 $80
    ld c, b                                       ; $76bc: $48
    ld a, b                                       ; $76bd: $78
    add sp, $30                                   ; $76be: $e8 $30
    add c                                         ; $76c0: $81
    ld hl, sp-$1e                                 ; $76c1: $f8 $e2
    ld [bc], a                                    ; $76c3: $02
    and d                                         ; $76c4: $a2
    inc a                                         ; $76c5: $3c
    nop                                           ; $76c6: $00
    add c                                         ; $76c7: $81
    db $f4                                        ; $76c8: $f4
    db $ec                                        ; $76c9: $ec
    add sp, -$05                                  ; $76ca: $e8 $fb
    sbc b                                         ; $76cc: $98
    ld [hl], b                                    ; $76cd: $70
    db $10                                        ; $76ce: $10
    ret nz                                        ; $76cf: $c0

    or $96                                        ; $76d0: $f6 $96
    rst $38                                       ; $76d2: $ff
    sbc c                                         ; $76d3: $99
    ei                                            ; $76d4: $fb
    ld d, a                                       ; $76d5: $57
    add a                                         ; $76d6: $87
    cp $8e                                        ; $76d7: $fe $8e
    ld [hl], b                                    ; $76d9: $70
    pop bc                                        ; $76da: $c1
    rst $30                                       ; $76db: $f7
    ret nc                                        ; $76dc: $d0

    push hl                                       ; $76dd: $e5
    rst $08                                       ; $76de: $cf
    ret nc                                        ; $76df: $d0

    push hl                                       ; $76e0: $e5
    inc d                                         ; $76e1: $14
    jr nc, jr_00c_7745                            ; $76e2: $30 $61

    ld c, h                                       ; $76e4: $4c
    and b                                         ; $76e5: $a0
    add a                                         ; $76e6: $87
    ld a, [hl]                                    ; $76e7: $7e
    add b                                         ; $76e8: $80
    xor c                                         ; $76e9: $a9
    cp $e0                                        ; $76ea: $fe $e0
    jr z, jr_00c_774e                             ; $76ec: $28 $60

    ld a, $a0                                     ; $76ee: $3e $a0
    rrca                                          ; $76f0: $0f
    and [hl]                                      ; $76f1: $a6
    db $fd                                        ; $76f2: $fd
    add e                                         ; $76f3: $83
    rst $28                                       ; $76f4: $ef
    and b                                         ; $76f5: $a0
    and h                                         ; $76f6: $a4
    ld h, b                                       ; $76f7: $60
    and $40                                       ; $76f8: $e6 $40
    xor c                                         ; $76fa: $a9
    ld h, d                                       ; $76fb: $62
    add b                                         ; $76fc: $80
    sbc $00                                       ; $76fd: $de $00
    push bc                                       ; $76ff: $c5
    ccf                                           ; $7700: $3f
    ccf                                           ; $7701: $3f
    ld e, a                                       ; $7702: $5f
    ld h, c                                       ; $7703: $61
    jr nc, jr_00c_7766                            ; $7704: $30 $60

    sbc c                                         ; $7706: $99
    cp a                                          ; $7707: $bf
    cp a                                          ; $7708: $bf
    reti                                          ; $7709: $d9


    ld e, a                                       ; $770a: $5f
    ld h, c                                       ; $770b: $61
    ccf                                           ; $770c: $3f
    add hl, sp                                    ; $770d: $39
    rrca                                          ; $770e: $0f
    or b                                          ; $770f: $b0
    add e                                         ; $7710: $83
    sub c                                         ; $7711: $91
    ld l, a                                       ; $7712: $6f
    rst $30                                       ; $7713: $f7
    adc a                                         ; $7714: $8f
    add sp, -$68                                  ; $7715: $e8 $98
    ld b, b                                       ; $7717: $40
    and e                                         ; $7718: $a3
    nop                                           ; $7719: $00
    nop                                           ; $771a: $00
    sbc $e2                                       ; $771b: $de $e2
    rst $18                                       ; $771d: $df
    rst $18                                       ; $771e: $df
    rst $38                                       ; $771f: $ff
    add c                                         ; $7720: $81
    db $fd                                        ; $7721: $fd
    ei                                            ; $7722: $fb
    db $10                                        ; $7723: $10
    and c                                         ; $7724: $a1
    inc a                                         ; $7725: $3c
    inc a                                         ; $7726: $3c
    ld a, h                                       ; $7727: $7c
    ld e, b                                       ; $7728: $58
    and d                                         ; $7729: $a2
    ld h, b                                       ; $772a: $60
    ld h, b                                       ; $772b: $60
    ld a, $26                                     ; $772c: $3e $26
    ld l, $32                                     ; $772e: $2e $32
    ld e, $b8                                     ; $7730: $1e $b8
    ld b, b                                       ; $7732: $40
    ld [$a42e], sp                                ; $7733: $08 $2e $a4
    cp [hl]                                       ; $7736: $be
    db $e3                                        ; $7737: $e3
    ldh a, [$e4]                                  ; $7738: $f0 $e4
    cp l                                          ; $773a: $bd
    ld [bc], a                                    ; $773b: $02
    jp $8010                                      ; $773c: $c3 $10 $80


    ld h, d                                       ; $773f: $62
    ld h, d                                       ; $7740: $62
    ld h, [hl]                                    ; $7741: $66
    ldh [$7f], a                                  ; $7742: $e0 $7f
    db $fd                                        ; $7744: $fd

jr_00c_7745:
    xor e                                         ; $7745: $ab
    cp $82                                        ; $7746: $fe $82
    ld a, d                                       ; $7748: $7a
    ld d, [hl]                                    ; $7749: $56
    inc l                                         ; $774a: $2c
    ldh [$e5], a                                  ; $774b: $e0 $e5
    dec bc                                        ; $774d: $0b

jr_00c_774e:
    jp Jump_000_007e                              ; $774e: $c3 $7e $00


    jp nz, $f0f7                                  ; $7751: $c2 $f7 $f0

    add h                                         ; $7754: $84
    add d                                         ; $7755: $82
    pop hl                                        ; $7756: $e1
    ldh [$c3], a                                  ; $7757: $e0 $c3
    ld [hl-], a                                   ; $7759: $32
    ld h, e                                       ; $775a: $63
    rra                                           ; $775b: $1f
    ld a, l                                       ; $775c: $7d
    di                                            ; $775d: $f3
    ld e, d                                       ; $775e: $5a
    ld h, [hl]                                    ; $775f: $66
    cp a                                          ; $7760: $bf
    nop                                           ; $7761: $00
    jp nz, Jump_00c_4450                          ; $7762: $c2 $50 $44

    rst $38                                       ; $7765: $ff

jr_00c_7766:
    rst $38                                       ; $7766: $ff
    db $fc                                        ; $7767: $fc
    rst $38                                       ; $7768: $ff
    rst $38                                       ; $7769: $ff
    dec b                                         ; $776a: $05
    ld b, d                                       ; $776b: $42
    ld b, b                                       ; $776c: $40
    nop                                           ; $776d: $00
    ld a, b                                       ; $776e: $78
    nop                                           ; $776f: $00

jr_00c_7770:
    db $fc                                        ; $7770: $fc
    inc a                                         ; $7771: $3c
    rst $38                                       ; $7772: $ff
    ld a, [hl]                                    ; $7773: $7e
    ld hl, $2faf                                  ; $7774: $21 $af $2f
    ldh [rLCDC], a                                ; $7777: $e0 $40
    sbc $40                                       ; $7779: $de $40
    rst $38                                       ; $777b: $ff

jr_00c_777c:
    ld c, a                                       ; $777c: $4f
    rst $38                                       ; $777d: $ff
    jr nz, jr_00c_7780                            ; $777e: $20 $00

jr_00c_7780:
    ld a, h                                       ; $7780: $7c
    nop                                           ; $7781: $00
    ld a, $1e                                     ; $7782: $3e $1e
    rst $38                                       ; $7784: $ff
    ld a, h                                       ; $7785: $7c
    add e                                         ; $7786: $83
    ld a, [hl]                                    ; $7787: $7e
    inc a                                         ; $7788: $3c
    inc hl                                        ; $7789: $23
    ld hl, $033f                                  ; $778a: $21 $3f $03
    cp $30                                        ; $778d: $fe $30
    pop hl                                        ; $778f: $e1
    inc a                                         ; $7790: $3c
    nop                                           ; $7791: $00
    sbc $1c                                       ; $7792: $de $1c
    ld h, e                                       ; $7794: $63
    db $fd                                        ; $7795: $fd
    inc bc                                        ; $7796: $03
    cp a                                          ; $7797: $bf
    ld bc, $0105                                  ; $7798: $01 $05 $01
    ld a, [hl-]                                   ; $779b: $3a
    ld [bc], a                                    ; $779c: $02
    inc e                                         ; $779d: $1c
    ret c                                         ; $779e: $d8

jr_00c_779f:
    jr nz, jr_00c_779f                            ; $779f: $20 $fe

    rst $38                                       ; $77a1: $ff
    nop                                           ; $77a2: $00
    ld a, a                                       ; $77a3: $7f
    ld h, a                                       ; $77a4: $67
    inc l                                         ; $77a5: $2c
    rst $18                                       ; $77a6: $df
    ld d, b                                       ; $77a7: $50
    db $10                                        ; $77a8: $10
    ld h, b                                       ; $77a9: $60
    rst $38                                       ; $77aa: $ff
    jr nz, jr_00c_77e9                            ; $77ab: $20 $3c

    nop                                           ; $77ad: $00
    ld e, $ff                                     ; $77ae: $1e $ff
    ld b, b                                       ; $77b0: $40
    nop                                           ; $77b1: $00
    inc l                                         ; $77b2: $2c
    rst $38                                       ; $77b3: $ff
    nop                                           ; $77b4: $00
    ld [hl], $06                                  ; $77b5: $36 $06
    ld e, b                                       ; $77b7: $58
    cp a                                          ; $77b8: $bf
    and b                                         ; $77b9: $a0
    jr nz, jr_00c_777c                            ; $77ba: $20 $c0

    ld sp, hl                                     ; $77bc: $f9
    ld b, b                                       ; $77bd: $40
    add $e0                                       ; $77be: $c6 $e0
    ldh a, [$e0]                                  ; $77c0: $f0 $e0
    ld l, h                                       ; $77c2: $6c
    nop                                           ; $77c3: $00
    or $34                                        ; $77c4: $f6 $34
    ld h, a                                       ; $77c6: $67
    rst $38                                       ; $77c7: $ff
    cp e                                          ; $77c8: $bb
    cp $62                                        ; $77c9: $fe $62
    xor $4a                                       ; $77cb: $ee $4a
    ld e, d                                       ; $77cd: $5a
    ld b, b                                       ; $77ce: $40
    dec c                                         ; $77cf: $0d
    cp $a8                                        ; $77d0: $fe $a8
    jr nz, jr_00c_7770                            ; $77d2: $20 $9c

    nop                                           ; $77d4: $00
    adc $4c                                       ; $77d5: $ce $4c
    pop bc                                        ; $77d7: $c1
    ld a, a                                       ; $77d8: $7f
    ret nz                                        ; $77d9: $c0

    rst $38                                       ; $77da: $ff
    ld b, b                                       ; $77db: $40
    ldh [rLCDC], a                                ; $77dc: $e0 $40
    ld e, [hl]                                    ; $77de: $5e
    nop                                           ; $77df: $00
    cpl                                           ; $77e0: $2f
    rst $38                                       ; $77e1: $ff
    db $10                                        ; $77e2: $10
    rst $38                                       ; $77e3: $ff
    nop                                           ; $77e4: $00
    ld e, b                                       ; $77e5: $58
    ld [$207c], sp                                ; $77e6: $08 $7c $20

jr_00c_77e9:
    ld a, [hl]                                    ; $77e9: $7e
    adc l                                         ; $77ea: $8d
    rst $38                                       ; $77eb: $ff
    cp a                                          ; $77ec: $bf
    ld e, c                                       ; $77ed: $59
    ei                                            ; $77ee: $fb
    ld d, c                                       ; $77ef: $51
    ld a, a                                       ; $77f0: $7f
    ld [hl-], a                                   ; $77f1: $32
    daa                                           ; $77f2: $27
    sub b                                         ; $77f3: $90
    ldh [$fc], a                                  ; $77f4: $e0 $fc
    rst $38                                       ; $77f6: $ff
    db $10                                        ; $77f7: $10
    ld a, [hl]                                    ; $77f8: $7e
    ld c, h                                       ; $77f9: $4c
    dec sp                                        ; $77fa: $3b
    db $dd                                        ; $77fb: $dd
    ld [hl], a                                    ; $77fc: $77
    ld de, $effb                                  ; $77fd: $11 $fb $ef
    ld d, c                                       ; $7800: $51
    ld [hl], a                                    ; $7801: $77
    ld d, d                                       ; $7802: $52
    inc de                                        ; $7803: $13
    ld a, b                                       ; $7804: $78
    jr nz, jr_00c_783f                            ; $7805: $20 $38

    nop                                           ; $7807: $00
    ld a, h                                       ; $7808: $7c
    rst $38                                       ; $7809: $ff
    jr z, @-$04                                   ; $780a: $28 $fa

    ld l, l                                       ; $780c: $6d
    db $db                                        ; $780d: $db
    ld c, c                                       ; $780e: $49
    ei                                            ; $780f: $fb
    ld e, c                                       ; $7810: $59
    ld [hl], a                                    ; $7811: $77
    rst $38                                       ; $7812: $ff
    inc sp                                        ; $7813: $33
    ld [hl+], a                                   ; $7814: $22
    rst $38                                       ; $7815: $ff
    inc b                                         ; $7816: $04

jr_00c_7817:
    nop                                           ; $7817: $00
    cp [hl]                                       ; $7818: $be
    nop                                           ; $7819: $00
    rst $18                                       ; $781a: $df
    rst $38                                       ; $781b: $ff
    ld e, e                                       ; $781c: $5b
    add $7b                                       ; $781d: $c6 $7b
    sbc $42                                       ; $781f: $de $42
    xor $4a                                       ; $7821: $ee $4a
    ld e, [hl]                                    ; $7823: $5e
    rst $38                                       ; $7824: $ff
    inc b                                         ; $7825: $04
    dec l                                         ; $7826: $2d
    rst $38                                       ; $7827: $ff
    ldh [rP1], a                                  ; $7828: $e0 $00
    ld [hl], h                                    ; $782a: $74
    ld d, b                                       ; $782b: $50
    halt                                          ; $782c: $76
    rst $38                                       ; $782d: $ff
    jr nc, jr_00c_7817                            ; $782e: $30 $e7

    ld a, e                                       ; $7830: $7b
    add $42                                       ; $7831: $c6 $42
    add $42                                       ; $7833: $c6 $42

jr_00c_7835:
    ld a, [hl]                                    ; $7835: $7e
    rst $38                                       ; $7836: $ff
    ld b, $3c                                     ; $7837: $06 $3c
    rst $38                                       ; $7839: $ff
    jr nc, jr_00c_783c                            ; $783a: $30 $00

jr_00c_783c:
    jr @+$12                                      ; $783c: $18 $10

    inc d                                         ; $783e: $14

jr_00c_783f:
    rst $38                                       ; $783f: $ff
    inc b                                         ; $7840: $04
    ld e, h                                       ; $7841: $5c
    xor e                                         ; $7842: $ab
    xor d                                         ; $7843: $aa
    jr nz, jr_00c_7835                            ; $7844: $20 $ef

    ld b, l                                       ; $7846: $45
    ld [hl], l                                    ; $7847: $75
    ei                                            ; $7848: $fb
    ld b, l                                       ; $7849: $45
    ld a, [de]                                    ; $784a: $1a
    jr c, jr_00c_786f                             ; $784b: $38 $22

    jr nz, jr_00c_784f                            ; $784d: $20 $00

jr_00c_784f:
    ld [hl], b                                    ; $784f: $70
    xor a                                         ; $7850: $af
    add sp, -$01                                  ; $7851: $e8 $ff
    ld h, b                                       ; $7853: $60
    ld b, [hl]                                    ; $7854: $46
    ld b, b                                       ; $7855: $40
    inc bc                                        ; $7856: $03
    inc bc                                        ; $7857: $03
    nop                                           ; $7858: $00
    rst $38                                       ; $7859: $ff
    ld e, $bf                                     ; $785a: $1e $bf
    nop                                           ; $785c: $00
    adc a                                         ; $785d: $8f
    dec bc                                        ; $785e: $0b
    sbc $40                                       ; $785f: $de $40
    rst $08                                       ; $7861: $cf
    ret nz                                        ; $7862: $c0

    ldh [$fe], a                                  ; $7863: $e0 $fe
    rst $28                                       ; $7865: $ef
    ld e, d                                       ; $7866: $5a
    ld a, [hl]                                    ; $7867: $7e
    inc h                                         ; $7868: $24
    dec l                                         ; $7869: $2d
    add b                                         ; $786a: $80
    ldh [$fc], a                                  ; $786b: $e0 $fc
    nop                                           ; $786d: $00
    ld a, [hl]                                    ; $786e: $7e

jr_00c_786f:
    rst $38                                       ; $786f: $ff
    ld l, [hl]                                    ; $7870: $6e
    db $fc                                        ; $7871: $fc
    inc bc                                        ; $7872: $03
    ld a, [hl]                                    ; $7873: $7e
    ld c, $f8                                     ; $7874: $0e $f8
    ld h, b                                       ; $7876: $60
    ld a, h                                       ; $7877: $7c
    rst $38                                       ; $7878: $ff
    jr jr_00c_78ad                                ; $7879: $18 $32

    rst $38                                       ; $787b: $ff
    ld a, b                                       ; $787c: $78
    nop                                           ; $787d: $00
    inc a                                         ; $787e: $3c

jr_00c_787f:
    inc l                                         ; $787f: $2c
    inc e                                         ; $7880: $1c
    rst $38                                       ; $7881: $ff
    ld [$837e], sp                                ; $7882: $08 $7e $83
    cp [hl]                                       ; $7885: $be
    jr jr_00c_787f                                ; $7886: $18 $f7

    ld d, e                                       ; $7888: $53
    ld e, d                                       ; $7889: $5a
    ei                                            ; $788a: $fb
    ld [de], a                                    ; $788b: $12
    inc h                                         ; $788c: $24
    nop                                           ; $788d: $00
    ldh [$74], a                                  ; $788e: $e0 $74
    nop                                           ; $7890: $00
    ld a, [hl-]                                   ; $7891: $3a
    jr @+$73                                      ; $7892: $18 $71

    rst $38                                       ; $7894: $ff
    sbc a                                         ; $7895: $9f
    or d                                          ; $7896: $b2
    db $10                                        ; $7897: $10
    ld [hl], e                                    ; $7898: $73
    ld de, $013d                                  ; $7899: $11 $3d $01
    ld e, $fe                                     ; $789c: $1e $fe
    ld d, b                                       ; $789e: $50
    ld [c], a                                     ; $789f: $e2
    ld a, b                                       ; $78a0: $78
    jr nz, jr_00c_790f                            ; $78a1: $20 $6c

    sbc e                                         ; $78a3: $9b
    or d                                          ; $78a4: $b2
    db $10                                        ; $78a5: $10
    di                                            ; $78a6: $f3
    rst $28                                       ; $78a7: $ef
    ld d, c                                       ; $78a8: $51
    ld e, l                                       ; $78a9: $5d
    ld de, $e026                                  ; $78aa: $11 $26 $e0

jr_00c_78ad:
    ret nz                                        ; $78ad: $c0

    inc a                                         ; $78ae: $3c
    nop                                           ; $78af: $00
    cp $ff                                        ; $78b0: $fe $ff
    ld e, $7c                                     ; $78b2: $1e $7c
    jp $1efe                                      ; $78b4: $c3 $fe $1e


    ld [hl], d                                    ; $78b7: $72
    ld d, b                                       ; $78b8: $50
    ccf                                           ; $78b9: $3f
    rst $38                                       ; $78ba: $ff
    inc hl                                        ; $78bb: $23

jr_00c_78bc:
    ld c, $ff                                     ; $78bc: $0e $ff
    ld c, b                                       ; $78be: $48
    nop                                           ; $78bf: $00
    ld a, h                                       ; $78c0: $7c
    jr nz, @-$10                                  ; $78c1: $20 $ee

    rst $38                                       ; $78c3: $ff
    inc c                                         ; $78c4: $0c
    ld [hl], e                                    ; $78c5: $73
    db $dd                                        ; $78c6: $dd
    scf                                           ; $78c7: $37
    inc de                                        ; $78c8: $13
    ld [de], a                                    ; $78c9: $12
    ld [bc], a                                    ; $78ca: $02
    jr jr_00c_78bc                                ; $78cb: $18 $ef

    ld [$ff08], sp                                ; $78cd: $08 $08 $ff
    ld [$e010], sp                                ; $78d0: $08 $10 $e0
    xor $44                                       ; $78d3: $ee $44
    rst $38                                       ; $78d5: $ff
    rst $38                                       ; $78d6: $ff

jr_00c_78d7:
    dec [hl]                                      ; $78d7: $35
    rst $38                                       ; $78d8: $ff
    ld d, l                                       ; $78d9: $55
    ld e, l                                       ; $78da: $5d
    ld b, c                                       ; $78db: $41
    ld e, $0e                                     ; $78dc: $1e $0e
    ld [$10fe], sp                                ; $78de: $08 $fe $10
    ldh [rNR32], a                                ; $78e1: $e0 $1c
    nop                                           ; $78e3: $00
    ld e, $0e                                     ; $78e4: $1e $0e
    jr jr_00c_78d7                                ; $78e6: $18 $ef

    ld a, b                                       ; $78e8: $78
    cp a                                          ; $78e9: $bf
    ld [$20b8], sp                                ; $78ea: $08 $b8 $20
    ld l, h                                       ; $78ed: $6c
    ld [$5032], sp                                ; $78ee: $08 $32 $50
    ld [c], a                                     ; $78f1: $e2
    inc l                                         ; $78f2: $2c
    ld sp, hl                                     ; $78f3: $f9
    inc c                                         ; $78f4: $0c
    and b                                         ; $78f5: $a0
    jp $e1a0                                      ; $78f6: $c3 $a0 $e1


    ld b, h                                       ; $78f9: $44
    nop                                           ; $78fa: $00
    ld h, [hl]                                    ; $78fb: $66
    ld [hl+], a                                   ; $78fc: $22
    ld h, [hl]                                    ; $78fd: $66
    rst $38                                       ; $78fe: $ff
    ld [hl+], a                                   ; $78ff: $22
    ld h, $db                                     ; $7900: $26 $db
    ld d, $12                                     ; $7902: $16 $12
    ld c, $06                                     ; $7904: $0e $06
    inc a                                         ; $7906: $3c
    di                                            ; $7907: $f3
    inc c                                         ; $7908: $0c
    jr jr_00c_797b                                ; $7909: $18 $70

    ld [c], a                                     ; $790b: $e2
    ld l, [hl]                                    ; $790c: $6e
    ret nz                                        ; $790d: $c0

    ld a, e                                       ; $790e: $7b

jr_00c_790f:
    ld h, d                                       ; $790f: $62
    ld b, b                                       ; $7910: $40
    ld [hl], a                                    ; $7911: $77
    rst $28                                       ; $7912: $ef
    inc hl                                        ; $7913: $23
    ld a, $06                                     ; $7914: $3e $06
    inc e                                         ; $7916: $1c
    ldh [$c7], a                                  ; $7917: $e0 $c7
    inc de                                        ; $7919: $13
    or $52                                        ; $791a: $f6 $52
    rst $30                                       ; $791c: $f7
    ld [hl], d                                    ; $791d: $72
    ld d, b                                       ; $791e: $50
    ld de, $e6e0                                  ; $791f: $11 $e0 $e6
    ld b, d                                       ; $7922: $42
    ld b, b                                       ; $7923: $40
    rlca                                          ; $7924: $07
    inc bc                                        ; $7925: $03
    cp $e0                                        ; $7926: $fe $e0
    push hl                                       ; $7928: $e5
    halt                                          ; $7929: $76
    ld b, h                                       ; $792a: $44
    dec sp                                        ; $792b: $3b
    db $dd                                        ; $792c: $dd
    ld [hl], e                                    ; $792d: $73
    ld de, $eff3                                  ; $792e: $11 $f3 $ef
    ld d, c                                       ; $7931: $51
    ld [hl], l                                    ; $7932: $75
    ld d, c                                       ; $7933: $51
    ld [de], a                                    ; $7934: $12
    and b                                         ; $7935: $a0
    ret nz                                        ; $7936: $c0

    jr @+$0a                                      ; $7937: $18 $08

    jr z, @+$01                                   ; $7939: $28 $ff

    ld [$cf30], sp                                ; $793b: $08 $30 $cf
    ld e, b                                       ; $793e: $58
    ld [$287a], sp                                ; $793f: $08 $7a $28
    xor l                                         ; $7942: $ad
    ei                                            ; $7943: $fb
    ld hl, $2846                                  ; $7944: $21 $46 $28
    ld [bc], a                                    ; $7947: $02
    ld a, [bc]                                    ; $7948: $0a
    nop                                           ; $7949: $00
    rrca                                          ; $794a: $0f
    push af                                       ; $794b: $f5
    dec b                                         ; $794c: $05
    db $fd                                        ; $794d: $fd
    dec b                                         ; $794e: $05
    nop                                           ; $794f: $00
    add l                                         ; $7950: $85
    ld c, $00                                     ; $7951: $0e $00
    rrca                                          ; $7953: $0f
    dec b                                         ; $7954: $05
    rrca                                          ; $7955: $0f
    pop af                                        ; $7956: $f1
    inc bc                                        ; $7957: $03
    rlca                                          ; $7958: $07

jr_00c_7959:
    rlca                                          ; $7959: $07
    ldh a, [rOCPS]                                ; $795a: $f0 $6a
    rst $10                                       ; $795c: $d7
    and [hl]                                      ; $795d: $a6
    call $fc20                                    ; $795e: $cd $20 $fc
    ld [$edef], a                                 ; $7961: $ea $ef $ed
    rst $38                                       ; $7964: $ff
    db $ed                                        ; $7965: $ed
    cp h                                          ; $7966: $bc
    sbc [hl]                                      ; $7967: $9e
    cp l                                          ; $7968: $bd
    jp nc, Jump_00c_7da0                          ; $7969: $d2 $a0 $7d

    rst $38                                       ; $796c: $ff
    ld bc, $c07f                                  ; $796d: $01 $7f $c0
    and b                                         ; $7970: $a0
    rlca                                          ; $7971: $07
    ld sp, hl                                     ; $7972: $f9
    inc bc                                        ; $7973: $03
    ld d, b                                       ; $7974: $50
    pop bc                                        ; $7975: $c1
    ld h, b                                       ; $7976: $60
    add d                                         ; $7977: $82
    nop                                           ; $7978: $00
    ld a, [hl]                                    ; $7979: $7e
    db $db                                        ; $797a: $db

jr_00c_797b:
    ld a, $06                                     ; $797b: $3e $06
    rst $18                                       ; $797d: $df
    inc a                                         ; $797e: $3c
    inc e                                         ; $797f: $1c
    ld [hl], b                                    ; $7980: $70
    jr nc, jr_00c_79a3                            ; $7981: $30 $20

    ld [hl], b                                    ; $7983: $70
    ld h, d                                       ; $7984: $62
    inc b                                         ; $7985: $04
    nop                                           ; $7986: $00
    ccf                                           ; $7987: $3f
    ld e, $e7                                     ; $7988: $1e $e7
    db $fc                                        ; $798a: $fc
    inc c                                         ; $798b: $0c
    ld a, b                                       ; $798c: $78
    ld l, b                                       ; $798d: $68
    ret nz                                        ; $798e: $c0

    pop bc                                        ; $798f: $c1
    ld b, b                                       ; $7990: $40
    jp $fc2f                                      ; $7991: $c3 $2f $fc


    inc bc                                        ; $7994: $03
    cp $7a                                        ; $7995: $fe $7a
    jr nz, jr_00c_7959                            ; $7997: $20 $c0

    ld b, [hl]                                    ; $7999: $46
    sub b                                         ; $799a: $90
    and c                                         ; $799b: $a1
    ld b, [hl]                                    ; $799c: $46
    ld h, c                                       ; $799d: $61
    ccf                                           ; $799e: $3f
    ld hl, sp+$07                                 ; $799f: $f8 $07
    ld a, h                                       ; $79a1: $7c
    ld e, h                                       ; $79a2: $5c

jr_00c_79a3:
    jr nc, @+$12                                  ; $79a3: $30 $10

    ld b, [hl]                                    ; $79a5: $46
    ret nz                                        ; $79a6: $c0

    ld b, b                                       ; $79a7: $40
    ld h, d                                       ; $79a8: $62
    ld a, c                                       ; $79a9: $79
    ld [$e0e0], sp                                ; $79aa: $08 $e0 $e0
    call c, $1420                                 ; $79ad: $dc $20 $14
    db $fc                                        ; $79b0: $fc
    inc [hl]                                      ; $79b1: $34
    ld h, h                                       ; $79b2: $64
    ret nc                                        ; $79b3: $d0

    and $7f                                       ; $79b4: $e6 $7f
    ld a, [hl]                                    ; $79b6: $7e
    ld e, d                                       ; $79b7: $5a
    ld a, $16                                     ; $79b8: $3e $16
    inc [hl]                                      ; $79ba: $34
    inc d                                         ; $79bb: $14
    db $10                                        ; $79bc: $10

jr_00c_79bd:
    ret nc                                        ; $79bd: $d0

    rst $20                                       ; $79be: $e7
    rst $30                                       ; $79bf: $f7
    ld [hl], h                                    ; $79c0: $74
    inc e                                         ; $79c1: $1c
    inc c                                         ; $79c2: $0c
    ret nc                                        ; $79c3: $d0

    push hl                                       ; $79c4: $e5
    ld hl, sp+$00                                 ; $79c5: $f8 $00
    ld a, h                                       ; $79c7: $7c
    rst $30                                       ; $79c8: $f7
    rst $08                                       ; $79c9: $cf
    db $fc                                        ; $79ca: $fc
    inc b                                         ; $79cb: $04
    ld a, h                                       ; $79cc: $7c
    ld [hl], h                                    ; $79cd: $74
    db $fc                                        ; $79ce: $fc
    ldh [rP1], a                                  ; $79cf: $e0 $00
    ld h, h                                       ; $79d1: $64
    and h                                         ; $79d2: $a4
    ld e, e                                       ; $79d3: $5b
    adc a                                         ; $79d4: $8f
    or $52                                        ; $79d5: $f6 $52
    ld a, [hl]                                    ; $79d7: $7e
    halt                                          ; $79d8: $76
    adc h                                         ; $79d9: $8c
    ldh [$f0], a                                  ; $79da: $e0 $f0
    ld b, [hl]                                    ; $79dc: $46
    ld a, [hl+]                                   ; $79dd: $2a
    and b                                         ; $79de: $a0
    ld a, a                                       ; $79df: $7f
    cp [hl]                                       ; $79e0: $be
    ld hl, sp-$1c                                 ; $79e1: $f8 $e4
    ld a, l                                       ; $79e3: $7d
    inc de                                        ; $79e4: $13
    ld bc, $e31d                                  ; $79e5: $01 $1d $e3
    ld c, h                                       ; $79e8: $4c
    ret nz                                        ; $79e9: $c0

    ld [$38f7], sp                                ; $79ea: $08 $f7 $38
    jr jr_00c_79ff                                ; $79ed: $18 $10

    add b                                         ; $79ef: $80
    and b                                         ; $79f0: $a0
    ld b, $02                                     ; $79f1: $06 $02

jr_00c_79f3:
    ld a, [bc]                                    ; $79f3: $0a
    ld [bc], a                                    ; $79f4: $02
    db $d3                                        ; $79f5: $d3
    db $f4                                        ; $79f6: $f4
    rrca                                          ; $79f7: $0f
    ld h, d                                       ; $79f8: $62
    pop hl                                        ; $79f9: $e1
    jr nz, jr_00c_79bd                            ; $79fa: $20 $c1

    stop                                          ; $79fc: $10 $00
    and b                                         ; $79fe: $a0

jr_00c_79ff:
    rst $38                                       ; $79ff: $ff
    ld a, l                                       ; $7a00: $7d
    jp hl                                         ; $7a01: $e9


    ld b, e                                       ; $7a02: $43
    jr nc, @-$1c                                  ; $7a03: $30 $e2

    ld h, b                                       ; $7a05: $60
    pop bc                                        ; $7a06: $c1
    nop                                           ; $7a07: $00
    ret nc                                        ; $7a08: $d0

    add c                                         ; $7a09: $81
    ld l, $18                                     ; $7a0a: $2e $18
    rst $28                                       ; $7a0c: $ef
    ldh a, [$e2]                                  ; $7a0d: $f0 $e2

jr_00c_7a0f:
    pop hl                                        ; $7a0f: $e1
    and $80                                       ; $7a10: $e6 $80
    nop                                           ; $7a12: $00
    ret nz                                        ; $7a13: $c0

    ldh [$81], a                                  ; $7a14: $e0 $81
    inc a                                         ; $7a16: $3c
    rst $10                                       ; $7a17: $d7
    inc a                                         ; $7a18: $3c
    inc d                                         ; $7a19: $14

jr_00c_7a1a:
    sbc a                                         ; $7a1a: $9f
    ld a, h                                       ; $7a1b: $7c
    inc [hl]                                      ; $7a1c: $34
    db $ec                                        ; $7a1d: $ec
    ld h, h                                       ; $7a1e: $64
    ld b, h                                       ; $7a1f: $44
    ld b, b                                       ; $7a20: $40
    ret nz                                        ; $7a21: $c0

    ret nc                                        ; $7a22: $d0

    add b                                         ; $7a23: $80
    ld e, l                                       ; $7a24: $5d

jr_00c_7a25:
    rst $38                                       ; $7a25: $ff
    inc sp                                        ; $7a26: $33
    db $dd                                        ; $7a27: $dd
    ld [hl], e                                    ; $7a28: $73
    ld sp, $2163                                  ; $7a29: $31 $63 $21
    rst $28                                       ; $7a2c: $ef
    ld h, c                                       ; $7a2d: $61
    reti                                          ; $7a2e: $d9


    ld b, a                                       ; $7a2f: $47

jr_00c_7a30:
    jr nc, jr_00c_79f3                            ; $7a30: $30 $c1

    add b                                         ; $7a32: $80
    and b                                         ; $7a33: $a0
    jr jr_00c_7a25                                ; $7a34: $18 $ef

    cp d                                          ; $7a36: $ba
    add b                                         ; $7a37: $80
    ld [hl], a                                    ; $7a38: $77
    inc c                                         ; $7a39: $0c
    ei                                            ; $7a3a: $fb
    inc b                                         ; $7a3b: $04
    inc b                                         ; $7a3c: $04
    jr nz, jr_00c_79ff                            ; $7a3d: $20 $c0

    ld a, $00                                     ; $7a3f: $3e $00
    ld a, a                                       ; $7a41: $7f
    dec a                                         ; $7a42: $3d
    db $e3                                        ; $7a43: $e3
    rst $20                                       ; $7a44: $e7
    ld a, l                                       ; $7a45: $7d
    ld b, e                                       ; $7a46: $43
    ld b, c                                       ; $7a47: $41
    jr nc, jr_00c_7a0f                            ; $7a48: $30 $c5

    ldh a, [$e0]                                  ; $7a4a: $f0 $e0
    dec sp                                        ; $7a4c: $3b
    and $7b                                       ; $7a4d: $e6 $7b
    db $d3                                        ; $7a4f: $d3
    ld b, [hl]                                    ; $7a50: $46
    ld b, d                                       ; $7a51: $42
    ldh a, [$a3]                                  ; $7a52: $f0 $a3
    cp [hl]                                       ; $7a54: $be
    jp $8003                                      ; $7a55: $c3 $03 $80


    add b                                         ; $7a58: $80

jr_00c_7a59:
    inc bc                                        ; $7a59: $03
    ld bc, $b8a8                                  ; $7a5a: $01 $a8 $b8
    ret nz                                        ; $7a5d: $c0

    ret nc                                        ; $7a5e: $d0

    and d                                         ; $7a5f: $a2
    ld a, [hl]                                    ; $7a60: $7e
    add b                                         ; $7a61: $80

jr_00c_7a62:
    cp e                                          ; $7a62: $bb
    call z, Call_000_22a0                         ; $7a63: $cc $a0 $22
    add b                                         ; $7a66: $80
    db $e3                                        ; $7a67: $e3
    ld [c], a                                     ; $7a68: $e2
    rst $38                                       ; $7a69: $ff
    nop                                           ; $7a6a: $00
    ld [hl], e                                    ; $7a6b: $73
    ld [hl], c                                    ; $7a6c: $71
    db $e3                                        ; $7a6d: $e3
    dec e                                         ; $7a6e: $1d
    ld [hl], e                                    ; $7a6f: $73
    ld [hl], c                                    ; $7a70: $71
    rlca                                          ; $7a71: $07
    rst $20                                       ; $7a72: $e7
    inc bc                                        ; $7a73: $03
    cp $06                                        ; $7a74: $fe $06
    jr nz, jr_00c_7a59                            ; $7a76: $20 $e1

    jr nz, jr_00c_7a1a                            ; $7a78: $20 $a0

    ld a, d                                       ; $7a7a: $7a
    ld c, $f7                                     ; $7a7b: $0e $f7
    ld a, a                                       ; $7a7d: $7f
    inc e                                         ; $7a7e: $1c
    inc c                                         ; $7a7f: $0c
    jr c, jr_00c_7a92                             ; $7a80: $38 $10

    or $30                                        ; $7a82: $f6 $30
    ld h, e                                       ; $7a84: $63
    ld h, b                                       ; $7a85: $60
    add b                                         ; $7a86: $80
    ei                                            ; $7a87: $fb
    ld h, b                                       ; $7a88: $60
    jr nz, jr_00c_7ad9                            ; $7a89: $20 $4e

    add b                                         ; $7a8b: $80
    cp l                                          ; $7a8c: $bd
    ld h, a                                       ; $7a8d: $67

jr_00c_7a8e:
    inc hl                                        ; $7a8e: $23
    ld h, d                                       ; $7a8f: $62
    ld [hl+], a                                   ; $7a90: $22
    rst $30                                       ; $7a91: $f7

jr_00c_7a92:
    ld a, $00                                     ; $7a92: $3e $00
    rra                                           ; $7a94: $1f
    nop                                           ; $7a95: $00
    ld b, b                                       ; $7a96: $40
    add d                                         ; $7a97: $82
    nop                                           ; $7a98: $00
    jp $cf41                                      ; $7a99: $c3 $41 $cf


    ld b, e                                       ; $7a9c: $43
    cp l                                          ; $7a9d: $bd
    inc hl                                        ; $7a9e: $23
    ld hl, $c370                                  ; $7a9f: $21 $70 $c3
    add b                                         ; $7aa2: $80
    pop hl                                        ; $7aa3: $e1
    ld e, a                                       ; $7aa4: $5f

jr_00c_7aa5:
    dec e                                         ; $7aa5: $1d
    cp a                                          ; $7aa6: $bf
    or e                                          ; $7aa7: $b3
    ld c, l                                       ; $7aa8: $4d
    ld e, a                                       ; $7aa9: $5f
    ld d, c                                       ; $7aaa: $51
    rlca                                          ; $7aab: $07
    inc bc                                        ; $7aac: $03
    jr nz, jr_00c_7a30                            ; $7aad: $20 $81

    inc c                                         ; $7aaf: $0c
    db $dd                                        ; $7ab0: $dd
    nop                                           ; $7ab1: $00
    xor d                                         ; $7ab2: $aa
    add b                                         ; $7ab3: $80
    inc [hl]                                      ; $7ab4: $34
    cp $01                                        ; $7ab5: $fe $01
    ld h, d                                       ; $7ab7: $62
    pop hl                                        ; $7ab8: $e1
    ld a, h                                       ; $7ab9: $7c
    inc c                                         ; $7aba: $0c
    db $fd                                        ; $7abb: $fd
    jr c, jr_00c_7a8e                             ; $7abc: $38 $d0

    jr nz, jr_00c_7a62                            ; $7abe: $20 $a2

    nop                                           ; $7ac0: $00
    di                                            ; $7ac1: $f3
    ld d, c                                       ; $7ac2: $51
    di                                            ; $7ac3: $f3
    ld e, l                                       ; $7ac4: $5d
    pop de                                        ; $7ac5: $d1
    ld d, e                                       ; $7ac6: $53
    ldh [$e0], a                                  ; $7ac7: $e0 $e0
    and b                                         ; $7ac9: $a0
    pop hl                                        ; $7aca: $e1
    ld [c], a                                     ; $7acb: $e2
    ld h, b                                       ; $7acc: $60
    ld a, $fe                                     ; $7acd: $3e $fe
    ld h, b                                       ; $7acf: $60
    rst $30                                       ; $7ad0: $f7
    inc c                                         ; $7ad1: $0c
    cp a                                          ; $7ad2: $bf
    inc b                                         ; $7ad3: $04
    inc e                                         ; $7ad4: $1c
    inc c                                         ; $7ad5: $0c
    ld a, b                                       ; $7ad6: $78
    jr @+$32                                      ; $7ad7: $18 $30

jr_00c_7ad9:
    and b                                         ; $7ad9: $a0
    ld [c], a                                     ; $7ada: $e2
    ld h, b                                       ; $7adb: $60
    rst $18                                       ; $7adc: $df
    nop                                           ; $7add: $00
    ld a, h                                       ; $7ade: $7c
    and e                                         ; $7adf: $a3
    ld l, [hl]                                    ; $7ae0: $6e
    ld l, $f8                                     ; $7ae1: $2e $f8
    ldh [rNR41], a                                ; $7ae3: $e0 $20
    jr nz, @+$28                                  ; $7ae5: $20 $26

    nop                                           ; $7ae7: $00
    and b                                         ; $7ae8: $a0
    inc c                                         ; $7ae9: $0c
    inc b                                         ; $7aea: $04
    ldh [$e9], a                                  ; $7aeb: $e0 $e9
    ldh [$c2], a                                  ; $7aed: $e0 $c2
    ld a, $88                                     ; $7aef: $3e $88
    inc hl                                        ; $7af1: $23
    ldh [$c1], a                                  ; $7af2: $e0 $c1
    sub $60                                       ; $7af4: $d6 $60
    db $e3                                        ; $7af6: $e3
    ld l, $d7                                     ; $7af7: $2e $d7
    ld h, b                                       ; $7af9: $60
    push hl                                       ; $7afa: $e5
    db $10                                        ; $7afb: $10
    sub b                                         ; $7afc: $90
    ld h, c                                       ; $7afd: $61
    ld [hl], $1c                                  ; $7afe: $36 $1c
    rst $38                                       ; $7b00: $ff
    rst $20                                       ; $7b01: $e7
    db $fc                                        ; $7b02: $fc
    ld [$687a], sp                                ; $7b03: $08 $7a $68
    add hl, de                                    ; $7b06: $19
    add hl, bc                                    ; $7b07: $09
    ld [$90dc], sp                                ; $7b08: $08 $dc $90
    jp nz, $e0fe                                  ; $7b0b: $c2 $fe $e0

    ei                                            ; $7b0e: $fb
    ld c, $06                                     ; $7b0f: $0e $06
    ret nz                                        ; $7b11: $c0

    push hl                                       ; $7b12: $e5
    ld c, b                                       ; $7b13: $48
    nop                                           ; $7b14: $00
    rst $38                                       ; $7b15: $ff
    ld h, h                                       ; $7b16: $64
    jr nz, @+$68                                  ; $7b17: $20 $66

    cp e                                          ; $7b19: $bb
    ld [c], a                                     ; $7b1a: $e2
    ld h, b                                       ; $7b1b: $60
    jp $f741                                      ; $7b1c: $c3 $41 $f7


    jp $4141                                      ; $7b1f: $c3 $41 $41


    ld b, b                                       ; $7b22: $40
    jr nz, jr_00c_7aa5                            ; $7b23: $20 $80

    nop                                           ; $7b25: $00
    adc $40                                       ; $7b26: $ce $40
    rst $38                                       ; $7b28: $ff
    rst $30                                       ; $7b29: $f7
    rrca                                          ; $7b2a: $0f
    ld hl, sp+$78                                 ; $7b2b: $f8 $78
    ret nz                                        ; $7b2d: $c0

    ld b, b                                       ; $7b2e: $40
    ld a, [hl]                                    ; $7b2f: $7e
    nop                                           ; $7b30: $00
    cp h                                          ; $7b31: $bc
    sub b                                         ; $7b32: $90
    ld hl, $c5e0                                  ; $7b33: $21 $e0 $c5
    dec b                                         ; $7b36: $05
    ld bc, $027a                                  ; $7b37: $01 $7a $02
    and b                                         ; $7b3a: $a0
    and e                                         ; $7b3b: $a3
    jr nz, @+$01                                  ; $7b3c: $20 $ff

    nop                                           ; $7b3e: $00
    ld d, b                                       ; $7b3f: $50
    xor a                                         ; $7b40: $af
    xor b                                         ; $7b41: $a8
    jr nz, @+$46                                  ; $7b42: $20 $44

    ld b, b                                       ; $7b44: $40
    ld [bc], a                                    ; $7b45: $02
    ei                                            ; $7b46: $fb
    nop                                           ; $7b47: $00
    ld bc, $c250                                  ; $7b48: $01 $50 $c2
    ld a, a                                       ; $7b4b: $7f
    ld l, a                                       ; $7b4c: $6f
    ld e, h                                       ; $7b4d: $5c

jr_00c_7b4e:
    xor e                                         ; $7b4e: $ab
    ld a, d                                       ; $7b4f: $7a
    cp a                                          ; $7b50: $bf
    jr z, jr_00c_7b4e                             ; $7b51: $28 $fb

    ld l, c                                       ; $7b53: $69
    db $db                                        ; $7b54: $db
    ld c, c                                       ; $7b55: $49
    ld c, c                                       ; $7b56: $49
    or b                                          ; $7b57: $b0
    call nz, $fd47                                ; $7b58: $c4 $47 $fd
    cp e                                          ; $7b5b: $bb
    and h                                         ; $7b5c: $a4
    add b                                         ; $7b5d: $80
    inc c                                         ; $7b5e: $0c
    ld [$0400], sp                                ; $7b5f: $08 $00 $04
    rst $38                                       ; $7b62: $ff
    ldh a, [rIE]                                  ; $7b63: $f0 $ff
    nop                                           ; $7b65: $00
    ld a, h                                       ; $7b66: $7c
    ld [hl], b                                    ; $7b67: $70
    ld a, [hl]                                    ; $7b68: $7e
    ld e, $38                                     ; $7b69: $1e $38
    rst $20                                       ; $7b6b: $e7
    inc e                                         ; $7b6c: $1c
    ccf                                           ; $7b6d: $3f
    inc e                                         ; $7b6e: $1c
    ldh [rP1], a                                  ; $7b6f: $e0 $00
    ld a, h                                       ; $7b71: $7c
    ld h, b                                       ; $7b72: $60
    ld c, $60                                     ; $7b73: $0e $60
    ld h, b                                       ; $7b75: $60
    jp nz, $ef80                                  ; $7b76: $c2 $80 $ef

    db $10                                        ; $7b79: $10
    ld e, b                                       ; $7b7a: $58
    or a                                          ; $7b7b: $b7
    ld h, h                                       ; $7b7c: $64
    jp z, $ffc0                                   ; $7b7d: $ca $c0 $ff

    ld a, l                                       ; $7b80: $7d
    ld b, c                                       ; $7b81: $41
    rst $38                                       ; $7b82: $ff
    rst $38                                       ; $7b83: $ff
    ld [bc], a                                    ; $7b84: $02
    nop                                           ; $7b85: $00
    inc bc                                        ; $7b86: $03
    ld bc, $0125                                  ; $7b87: $01 $25 $01
    ld d, $ff                                     ; $7b8a: $16 $ff
    db $eb                                        ; $7b8c: $eb
    ld a, [bc]                                    ; $7b8d: $0a
    ld [bc], a                                    ; $7b8e: $02
    inc [hl]                                      ; $7b8f: $34
    nop                                           ; $7b90: $00
    jp c, $601a                                   ; $7b91: $da $1a $60

    dec d                                         ; $7b94: $15
    rst $38                                       ; $7b95: $ff
    jp nz, Jump_000_3e60                          ; $7b96: $c2 $60 $3e

    cp [hl]                                       ; $7b99: $be
    ld h, b                                       ; $7b9a: $60
    cp a                                          ; $7b9b: $bf
    ld [de], a                                    ; $7b9c: $12
    pop hl                                        ; $7b9d: $e1
    nop                                           ; $7b9e: $00
    ld h, c                                       ; $7b9f: $61
    ld b, b                                       ; $7ba0: $40
    pop bc                                        ; $7ba1: $c1
    cp a                                          ; $7ba2: $bf
    rst $38                                       ; $7ba3: $ff
    dec e                                         ; $7ba4: $1d
    ld a, l                                       ; $7ba5: $7d
    db $eb                                        ; $7ba6: $eb
    ld a, [de]                                    ; $7ba7: $1a
    ld a, [bc]                                    ; $7ba8: $0a
    ld b, $e1                                     ; $7ba9: $06 $e1
    inc b                                         ; $7bab: $04
    cp $f0                                        ; $7bac: $fe $f0
    and e                                         ; $7bae: $a3
    ld a, [hl-]                                   ; $7baf: $3a
    rlca                                          ; $7bb0: $07
    ei                                            ; $7bb1: $fb
    ld a, [bc]                                    ; $7bb2: $0a
    ld [bc], a                                    ; $7bb3: $02
    ld c, $06                                     ; $7bb4: $0e $06
    db $fc                                        ; $7bb6: $fc
    db $10                                        ; $7bb7: $10
    db $e3                                        ; $7bb8: $e3
    ld e, d                                       ; $7bb9: $5a
    ldh [$3d], a                                  ; $7bba: $e0 $3d
    ccf                                           ; $7bbc: $3f
    pop bc                                        ; $7bbd: $c1
    rra                                           ; $7bbe: $1f
    dec e                                         ; $7bbf: $1d
    inc bc                                        ; $7bc0: $03
    adc a                                         ; $7bc1: $8f
    ld bc, $017f                                  ; $7bc2: $01 $7f $01
    ccf                                           ; $7bc5: $3f
    ret nz                                        ; $7bc6: $c0

    push bc                                       ; $7bc7: $c5
    ret nz                                        ; $7bc8: $c0

    and [hl]                                      ; $7bc9: $a6
    nop                                           ; $7bca: $00
    add h                                         ; $7bcb: $84
    ei                                            ; $7bcc: $fb
    pop af                                        ; $7bcd: $f1
    ld b, $d0                                     ; $7bce: $06 $d0
    ldh [rP1], a                                  ; $7bd0: $e0 $00
    add c                                         ; $7bd2: $81
    sub b                                         ; $7bd3: $90
    ld h, d                                       ; $7bd4: $62
    jr z, jr_00c_7c4f                             ; $7bd5: $28 $78

    xor a                                         ; $7bd7: $af
    ld a, d                                       ; $7bd8: $7a
    cp a                                          ; $7bd9: $bf
    jr z, @+$01                                   ; $7bda: $28 $ff

    ld l, e                                       ; $7bdc: $6b
    sbc $46                                       ; $7bdd: $de $46
    ld c, h                                       ; $7bdf: $4c
    and b                                         ; $7be0: $a0
    jp Jump_000_3d20                              ; $7be1: $c3 $20 $3d


    ld h, d                                       ; $7be4: $62
    ld b, b                                       ; $7be5: $40
    ret nz                                        ; $7be6: $c0

    ld a, [hl]                                    ; $7be7: $7e
    ld h, $7c                                     ; $7be8: $26 $7c
    inc e                                         ; $7bea: $1c
    ld [hl], b                                    ; $7beb: $70
    pop bc                                        ; $7bec: $c1
    add b                                         ; $7bed: $80
    and c                                         ; $7bee: $a1
    inc bc                                        ; $7bef: $03
    jp $f27d                                      ; $7bf0: $c3 $7d $f2


    pop bc                                        ; $7bf3: $c1
    ldh a, [$a1]                                  ; $7bf4: $f0 $a1
    ldh a, [$e3]                                  ; $7bf6: $f0 $e3
    ld [hl], b                                    ; $7bf8: $70
    xor c                                         ; $7bf9: $a9
    ldh a, [$a1]                                  ; $7bfa: $f0 $a1
    ret nc                                        ; $7bfc: $d0

    and c                                         ; $7bfd: $a1
    adc b                                         ; $7bfe: $88
    ldh a, [$a5]                                  ; $7bff: $f0 $a5
    db $fc                                        ; $7c01: $fc
    dec h                                         ; $7c02: $25
    ld a, [$0560]                                 ; $7c03: $fa $60 $05
    ld a, [$6464]                                 ; $7c06: $fa $64 $64
    add b                                         ; $7c09: $80
    ld a, [$0162]                                 ; $7c0a: $fa $62 $01
    ldh a, [$fa]                                  ; $7c0d: $f0 $fa
    ld h, h                                       ; $7c0f: $64
    reti                                          ; $7c10: $d9


    cpl                                           ; $7c11: $2f
    add sp, -$7a                                  ; $7c12: $e8 $86
    ldh a, [$ee]                                  ; $7c14: $f0 $ee
    scf                                           ; $7c16: $37
    nop                                           ; $7c17: $00
    add e                                         ; $7c18: $83
    nop                                           ; $7c19: $00
    push de                                       ; $7c1a: $d5
    xor a                                         ; $7c1b: $af
    db $fc                                        ; $7c1c: $fc
    ldh [$9f], a                                  ; $7c1d: $e0 $9f
    ld hl, sp-$20                                 ; $7c1f: $f8 $e0
    add a                                         ; $7c21: $87
    ret nz                                        ; $7c22: $c0

    ld l, l                                       ; $7c23: $6d
    rst $38                                       ; $7c24: $ff
    nop                                           ; $7c25: $00
    rst $38                                       ; $7c26: $ff
    ld [bc], a                                    ; $7c27: $02
    inc bc                                        ; $7c28: $03
    rrca                                          ; $7c29: $0f
    dec e                                         ; $7c2a: $1d
    rra                                           ; $7c2b: $1f
    db $10                                        ; $7c2c: $10
    rra                                           ; $7c2d: $1f
    db $10                                        ; $7c2e: $10
    or $fa                                        ; $7c2f: $f6 $fa
    ldh [$15], a                                  ; $7c31: $e0 $15
    ld a, [bc]                                    ; $7c33: $0a
    sub c                                         ; $7c34: $91
    and b                                         ; $7c35: $a0
    ld bc, $8303                                  ; $7c36: $01 $03 $83
    jp nz, $fbff                                  ; $7c39: $c2 $ff $fb

    ld a, [hl]                                    ; $7c3c: $7e
    rst $38                                       ; $7c3d: $ff
    ld b, [hl]                                    ; $7c3e: $46
    rst $38                                       ; $7c3f: $ff
    call nz, $7cff                                ; $7c40: $c4 $ff $7c
    ei                                            ; $7c43: $fb
    add e                                         ; $7c44: $83
    rst $00                                       ; $7c45: $c7
    ldh a, [$e0]                                  ; $7c46: $f0 $e0
    add b                                         ; $7c48: $80
    pop bc                                        ; $7c49: $c1
    ldh [$e1], a                                  ; $7c4a: $e0 $e1
    or b                                          ; $7c4c: $b0
    ld a, a                                       ; $7c4d: $7f
    pop af                                        ; $7c4e: $f1

jr_00c_7c4f:
    cp b                                          ; $7c4f: $b8
    ld sp, hl                                     ; $7c50: $f9
    adc b                                         ; $7c51: $88
    pop af                                        ; $7c52: $f1
    sbc b                                         ; $7c53: $98
    ld h, c                                       ; $7c54: $61
    or c                                          ; $7c55: $b1
    nop                                           ; $7c56: $00
    rst $38                                       ; $7c57: $ff
    rst $38                                       ; $7c58: $ff
    sub d                                         ; $7c59: $92
    cp e                                          ; $7c5a: $bb
    sub $d7                                       ; $7c5b: $d6 $d7
    xor $bf                                       ; $7c5d: $ee $bf
    xor $df                                       ; $7c5f: $ee $df
    cp e                                          ; $7c61: $bb
    xor $bb                                       ; $7c62: $ee $bb
    rst $38                                       ; $7c64: $ff
    add b                                         ; $7c65: $80
    xor [hl]                                      ; $7c66: $ae
    ld h, c                                       ; $7c67: $61
    db $10                                        ; $7c68: $10
    rst $38                                       ; $7c69: $ff
    push hl                                       ; $7c6a: $e5
    sub $fe                                       ; $7c6b: $d6 $fe
    ldh [rNR11], a                                ; $7c6d: $e0 $11
    ld a, [$92e0]                                 ; $7c6f: $fa $e0 $92
    ld h, d                                       ; $7c72: $62
    ld hl, sp-$71                                 ; $7c73: $f8 $8f
    db $fc                                        ; $7c75: $fc
    call $feb7                                    ; $7c76: $cd $b7 $fe
    pop hl                                        ; $7c79: $e1
    ld hl, sp-$71                                 ; $7c7a: $f8 $8f
    db $d3                                        ; $7c7c: $d3
    pop hl                                        ; $7c7d: $e1
    db $f4                                        ; $7c7e: $f4
    nop                                           ; $7c7f: $00
    add h                                         ; $7c80: $84
    rst $38                                       ; $7c81: $ff
    cp l                                          ; $7c82: $bd
    or l                                          ; $7c83: $b5
    cp $e0                                        ; $7c84: $fe $e0
    add h                                         ; $7c86: $84
    rst $38                                       ; $7c87: $ff
    cp l                                          ; $7c88: $bd
    rst $20                                       ; $7c89: $e7
    ret nc                                        ; $7c8a: $d0

    db $e3                                        ; $7c8b: $e3
    ld hl, $ffcb                                  ; $7c8c: $21 $cb $ff
    xor l                                         ; $7c8f: $ad
    cp $e0                                        ; $7c90: $fe $e0
    inc hl                                        ; $7c92: $23
    ld a, [$62e0]                                 ; $7c93: $fa $e0 $62
    ld h, e                                       ; $7c96: $63
    adc b                                         ; $7c97: $88
    rst $38                                       ; $7c98: $ff
    db $ed                                        ; $7c99: $ed
    db $db                                        ; $7c9a: $db
    cp $e2                                        ; $7c9b: $fe $e2
    ret c                                         ; $7c9d: $d8

    rst $38                                       ; $7c9e: $ff
    or b                                          ; $7c9f: $b0
    db $e3                                        ; $7ca0: $e3
    ld b, h                                       ; $7ca1: $44
    rst $38                                       ; $7ca2: $ff
    ld l, l                                       ; $7ca3: $6d
    ld a, [c]                                     ; $7ca4: $f2
    cp $e0                                        ; $7ca5: $fe $e0
    ld l, h                                       ; $7ca7: $6c
    ld a, [$b0e0]                                 ; $7ca8: $fa $e0 $b0
    db $e3                                        ; $7cab: $e3
    cpl                                           ; $7cac: $2f
    ld hl, sp-$51                                 ; $7cad: $f8 $af
    ld hl, sp-$41                                 ; $7caf: $f8 $bf
    xor a                                         ; $7cb1: $af
    cp $2f                                        ; $7cb2: $fe $2f
    cp $a3                                        ; $7cb4: $fe $a3
    cp $32                                        ; $7cb6: $fe $32
    ld h, d                                       ; $7cb8: $62
    nop                                           ; $7cb9: $00
    cp e                                          ; $7cba: $bb
    nop                                           ; $7cbb: $00
    inc bc                                        ; $7cbc: $03
    ld d, [hl]                                    ; $7cbd: $56
    ld h, d                                       ; $7cbe: $62
    inc bc                                        ; $7cbf: $03
    nop                                           ; $7cc0: $00
    ld b, $f1                                     ; $7cc1: $06 $f1

jr_00c_7cc3:
    ld b, h                                       ; $7cc3: $44
    pop bc                                        ; $7cc4: $c1
    cp d                                          ; $7cc5: $ba
    db $ec                                        ; $7cc6: $ec
    nop                                           ; $7cc7: $00
    ret nz                                        ; $7cc8: $c0

    dec de                                        ; $7cc9: $1b
    ldh [$60], a                                  ; $7cca: $e0 $60
    nop                                           ; $7ccc: $00
    jr nc, @-$1d                                  ; $7ccd: $30 $e1

    ld b, d                                       ; $7ccf: $42
    rst $00                                       ; $7cd0: $c7
    cp [hl]                                       ; $7cd1: $be
    or b                                          ; $7cd2: $b0
    jr nz, @+$25                                  ; $7cd3: $20 $23

    nop                                           ; $7cd5: $00
    pop hl                                        ; $7cd6: $e1
    nop                                           ; $7cd7: $00
    ld b, d                                       ; $7cd8: $42
    pop de                                        ; $7cd9: $d1
    ld b, h                                       ; $7cda: $44
    ret nz                                        ; $7cdb: $c0

    jp nc, Jump_000_00cc                          ; $7cdc: $d2 $cc $00

    ld b, b                                       ; $7cdf: $40
    ld a, d                                       ; $7ce0: $7a
    and b                                         ; $7ce1: $a0
    jp nc, $8544                                  ; $7ce2: $d2 $44 $85

    ld [hl], b                                    ; $7ce5: $70
    ld [c], a                                     ; $7ce6: $e2
    add l                                         ; $7ce7: $85
    rst $38                                       ; $7ce8: $ff
    cp l                                          ; $7ce9: $bd
    cp h                                          ; $7cea: $bc
    ld [hl], b                                    ; $7ceb: $70
    db $e4                                        ; $7cec: $e4
    and d                                         ; $7ced: $a2
    rst $38                                       ; $7cee: $ff
    or a                                          ; $7cef: $b7
    db $fd                                        ; $7cf0: $fd
    cp $e1                                        ; $7cf1: $fe $e1
    scf                                           ; $7cf3: $37
    db $fd                                        ; $7cf4: $fd
    db $fd                                        ; $7cf5: $fd
    jp nc, $2842                                  ; $7cf6: $d2 $42 $28

    db $fc                                        ; $7cf9: $fc
    ld a, l                                       ; $7cfa: $7d
    rst $10                                       ; $7cfb: $d7
    ld a, a                                       ; $7cfc: $7f
    jp c, $77ff                                   ; $7cfd: $da $ff $77

    sbc $7f                                       ; $7d00: $de $7f
    jp c, $e73d                                   ; $7d02: $da $3d $e7

    jr jr_00c_7cc3                                ; $7d05: $18 $bc

    cp a                                          ; $7d07: $bf
    rst $38                                       ; $7d08: $ff
    nop                                           ; $7d09: $00
    inc bc                                        ; $7d0a: $03
    rlca                                          ; $7d0b: $07
    ld b, a                                       ; $7d0c: $47
    db $ed                                        ; $7d0d: $ed
    dec d                                         ; $7d0e: $15
    ldh [rNR24], a                                ; $7d0f: $e0 $19
    rst $18                                       ; $7d11: $df
    rst $38                                       ; $7d12: $ff
    sub l                                         ; $7d13: $95
    rst $38                                       ; $7d14: $ff
    or h                                          ; $7d15: $b4
    ld e, e                                       ; $7d16: $5b
    pop bc                                        ; $7d17: $c1
    ld b, d                                       ; $7d18: $42
    inc l                                         ; $7d19: $2c
    ld a, [hl]                                    ; $7d1a: $7e
    ld a, a                                       ; $7d1b: $7f
    ld a, [hl]                                    ; $7d1c: $7e
    db $db                                        ; $7d1d: $db
    rst $30                                       ; $7d1e: $f7
    db $dd                                        ; $7d1f: $dd
    rst $38                                       ; $7d20: $ff
    ld c, l                                       ; $7d21: $4d
    cp [hl]                                       ; $7d22: $be
    ldh [$e2], a                                  ; $7d23: $e0 $e2
    sub l                                         ; $7d25: $95
    ld [$6022], sp                                ; $7d26: $08 $22 $60
    inc a                                         ; $7d29: $3c
    ld e, $60                                     ; $7d2a: $1e $60
    jr @-$7c                                      ; $7d2c: $18 $82

    ldh [$61], a                                  ; $7d2e: $e0 $61
    ld b, e                                       ; $7d30: $43
    inc a                                         ; $7d31: $3c
    adc d                                         ; $7d32: $8a
    ldh [rLCDC], a                                ; $7d33: $e0 $40
    inc [hl]                                      ; $7d35: $34
    cp d                                          ; $7d36: $ba
    jr nz, jr_00c_7d45                            ; $7d37: $20 $0c

    ret c                                         ; $7d39: $d8

    ld b, b                                       ; $7d3a: $40
    ldh a, [$e3]                                  ; $7d3b: $f0 $e3
    ld [c], a                                     ; $7d3d: $e2
    pop hl                                        ; $7d3e: $e1
    ld a, h                                       ; $7d3f: $7c
    ld l, [hl]                                    ; $7d40: $6e
    ld d, d                                       ; $7d41: $52
    ld b, l                                       ; $7d42: $45
    ret c                                         ; $7d43: $d8

    rst $38                                       ; $7d44: $ff

jr_00c_7d45:
    sbc e                                         ; $7d45: $9b
    ld [de], a                                    ; $7d46: $12
    ld [c], a                                     ; $7d47: $e2
    adc e                                         ; $7d48: $8b
    cp $80                                        ; $7d49: $fe $80
    ld [c], a                                     ; $7d4b: $e2
    db $eb                                        ; $7d4c: $eb
    ret nz                                        ; $7d4d: $c0

    ld a, a                                       ; $7d4e: $7f
    cp $e3                                        ; $7d4f: $fe $e3
    add b                                         ; $7d51: $80
    ld d, d                                       ; $7d52: $52
    ld b, l                                       ; $7d53: $45
    add h                                         ; $7d54: $84
    rst $38                                       ; $7d55: $ff
    push af                                       ; $7d56: $f5
    ld a, b                                       ; $7d57: $78
    ld h, d                                       ; $7d58: $62
    pop hl                                        ; $7d59: $e1
    ld e, b                                       ; $7d5a: $58
    ldh [$60], a                                  ; $7d5b: $e0 $60
    ld [c], a                                     ; $7d5d: $e2
    ldh [$3f], a                                  ; $7d5e: $e0 $3f
    ldh [$bf], a                                  ; $7d60: $e0 $bf
    cp $e0                                        ; $7d62: $fe $e0
    inc bc                                        ; $7d64: $03
    ccf                                           ; $7d65: $3f
    ret nz                                        ; $7d66: $c0

    ld [hl-], a                                   ; $7d67: $32
    ld b, h                                       ; $7d68: $44
    nop                                           ; $7d69: $00
    nop                                           ; $7d6a: $00
    nop                                           ; $7d6b: $00
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

Jump_00c_7da0:
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

Jump_00c_7ea1:
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

Jump_00c_7ffe:
    rst $38                                       ; $7ffe: $ff
    rst $38                                       ; $7fff: $ff
