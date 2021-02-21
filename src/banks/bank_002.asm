; Disassembly of "mgolf.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $002", ROMX[$4000], BANK[$2]

    ld [hl], d                                    ; $4000: $72
    ld b, c                                       ; $4001: $41

    db $f6, $41

    sbc e                                         ; $4004: $9b
    ld b, d                                       ; $4005: $42

    db $55, $43

    ld d, h                                       ; $4008: $54
    ld b, h                                       ; $4009: $44
    call z, $1d43                                 ; $400a: $cc $43 $1d
    ld b, e                                       ; $400d: $43

    db $f6, $51, $1a, $51, $8b, $51, $3d, $4e, $82, $4e

    ld a, [$3c4f]                                 ; $4018: $fa $4f $3c
    ld d, b                                       ; $401b: $50
    or $4e                                        ; $401c: $f6 $4e

    db $28, $4a

    cp d                                          ; $4020: $ba
    ld c, c                                       ; $4021: $49
    ld h, l                                       ; $4022: $65
    ld d, h                                       ; $4023: $54
    ld l, e                                       ; $4024: $6b
    ld d, h                                       ; $4025: $54

    db $b0, $46

    ld h, $46                                     ; $4028: $26 $46

    db $16, $46

    inc d                                         ; $402c: $14
    ld b, a                                       ; $402d: $47
    ld a, [hl-]                                   ; $402e: $3a
    ld c, b                                       ; $402f: $48

    db $b8, $48

    inc h                                         ; $4032: $24
    ld c, c                                       ; $4033: $49

    db $89, $44, $94, $49

    and a                                         ; $4038: $a7
    ld c, c                                       ; $4039: $49

    db $98, $54, $2d, $5a

    add l                                         ; $403e: $85
    ld e, c                                       ; $403f: $59
    rra                                           ; $4040: $1f
    ld b, [hl]                                    ; $4041: $46

    db $f2, $44

    ld [hl+], a                                   ; $4044: $22
    ld b, l                                       ; $4045: $45
    ld d, b                                       ; $4046: $50
    ld b, l                                       ; $4047: $45
    ld d, b                                       ; $4048: $50
    ld e, h                                       ; $4049: $5c
    and l                                         ; $404a: $a5
    ld e, h                                       ; $404b: $5c
    ld [hl], a                                    ; $404c: $77
    ld e, h                                       ; $404d: $5c
    ld c, l                                       ; $404e: $4d
    ld b, d                                       ; $404f: $42
    ld e, e                                       ; $4050: $5b
    ld e, e                                       ; $4051: $5b

    db $11, $54

    dec d                                         ; $4054: $15
    ld d, h                                       ; $4055: $54
    ld c, [hl]                                    ; $4056: $4e
    ld d, h                                       ; $4057: $54

    db $0a, $54

    push af                                       ; $405a: $f5
    ld d, e                                       ; $405b: $53

    db $12, $48, $2c, $48, $33, $48, $79, $46, $91, $46

    halt                                          ; $4066: $76
    ld h, c                                       ; $4067: $61
    cpl                                           ; $4068: $2f
    ld e, l                                       ; $4069: $5d

    db $d3, $45

    sub l                                         ; $406c: $95
    ld d, e                                       ; $406d: $53
    sbc h                                         ; $406e: $9c
    ld d, e                                       ; $406f: $53
    xor h                                         ; $4070: $ac
    ld d, e                                       ; $4071: $53
    or d                                          ; $4072: $b2
    ld d, e                                       ; $4073: $53

    db $4b, $53

    db $c4                                        ; $4076: $c4
    ld d, e                                       ; $4077: $53

Call_002_4078:
    push af                                       ; $4078: $f5
    push bc                                       ; $4079: $c5
    push de                                       ; $407a: $d5
    push hl                                       ; $407b: $e5
    ld a, $00                                     ; $407c: $3e $00
    ldh [$97], a                                  ; $407e: $e0 $97
    ld [$4000], a                                 ; $4080: $ea $00 $40
    ld hl, $4162                                  ; $4083: $21 $62 $41
    ld de, $a020                                  ; $4086: $11 $20 $a0
    call Call_002_427a                            ; $4089: $cd $7a $42
    ld hl, $a041                                  ; $408c: $21 $41 $a0
    ld [hl], $00                                  ; $408f: $36 $00
    inc hl                                        ; $4091: $23
    ld [hl], $00                                  ; $4092: $36 $00
    inc hl                                        ; $4094: $23
    ld [hl], $02                                  ; $4095: $36 $02
    inc hl                                        ; $4097: $23
    ld [hl], $00                                  ; $4098: $36 $00
    inc hl                                        ; $409a: $23
    ld [hl], $02                                  ; $409b: $36 $02
    ld hl, $a061                                  ; $409d: $21 $61 $a0
    ld [hl], $00                                  ; $40a0: $36 $00
    inc hl                                        ; $40a2: $23
    ld [hl], $00                                  ; $40a3: $36 $00
    inc hl                                        ; $40a5: $23
    ld [hl], $04                                  ; $40a6: $36 $04
    inc hl                                        ; $40a8: $23
    ld [hl], $00                                  ; $40a9: $36 $00
    inc hl                                        ; $40ab: $23
    ld [hl], $02                                  ; $40ac: $36 $02
    ld hl, $a081                                  ; $40ae: $21 $81 $a0
    ld [hl], $00                                  ; $40b1: $36 $00
    inc hl                                        ; $40b3: $23
    ld [hl], $00                                  ; $40b4: $36 $00
    inc hl                                        ; $40b6: $23
    ld [hl], $06                                  ; $40b7: $36 $06
    inc hl                                        ; $40b9: $23
    ld [hl], $00                                  ; $40ba: $36 $00
    inc hl                                        ; $40bc: $23
    ld [hl], $02                                  ; $40bd: $36 $02
    ld hl, $a0a1                                  ; $40bf: $21 $a1 $a0
    ld [hl], $00                                  ; $40c2: $36 $00
    inc hl                                        ; $40c4: $23
    ld [hl], $00                                  ; $40c5: $36 $00
    inc hl                                        ; $40c7: $23
    ld [hl], $08                                  ; $40c8: $36 $08
    inc hl                                        ; $40ca: $23
    ld [hl], $00                                  ; $40cb: $36 $00
    inc hl                                        ; $40cd: $23
    ld [hl], $04                                  ; $40ce: $36 $04
    ld hl, $a0c1                                  ; $40d0: $21 $c1 $a0
    ld [hl], $00                                  ; $40d3: $36 $00
    inc hl                                        ; $40d5: $23
    ld [hl], $00                                  ; $40d6: $36 $00
    inc hl                                        ; $40d8: $23
    ld [hl], $0c                                  ; $40d9: $36 $0c
    inc hl                                        ; $40db: $23
    ld [hl], $80                                  ; $40dc: $36 $80
    inc hl                                        ; $40de: $23
    ld [hl], $02                                  ; $40df: $36 $02
    ld hl, $a0e1                                  ; $40e1: $21 $e1 $a0
    ld [hl], $00                                  ; $40e4: $36 $00
    inc hl                                        ; $40e6: $23
    ld [hl], $80                                  ; $40e7: $36 $80
    inc hl                                        ; $40e9: $23
    ld [hl], $0e                                  ; $40ea: $36 $0e
    inc hl                                        ; $40ec: $23
    ld [hl], $80                                  ; $40ed: $36 $80
    inc hl                                        ; $40ef: $23
    ld [hl], $02                                  ; $40f0: $36 $02
    ld hl, $a101                                  ; $40f2: $21 $01 $a1
    ld [hl], $00                                  ; $40f5: $36 $00
    inc hl                                        ; $40f7: $23
    ld [hl], $00                                  ; $40f8: $36 $00
    inc hl                                        ; $40fa: $23
    ld [hl], $11                                  ; $40fb: $36 $11
    inc hl                                        ; $40fd: $23
    ld [hl], $80                                  ; $40fe: $36 $80
    inc hl                                        ; $4100: $23
    ld [hl], $02                                  ; $4101: $36 $02
    ld hl, $a121                                  ; $4103: $21 $21 $a1
    ld [hl], $00                                  ; $4106: $36 $00
    inc hl                                        ; $4108: $23
    ld [hl], $80                                  ; $4109: $36 $80
    inc hl                                        ; $410b: $23
    ld [hl], $13                                  ; $410c: $36 $13
    inc hl                                        ; $410e: $23
    ld [hl], $80                                  ; $410f: $36 $80
    inc hl                                        ; $4111: $23
    ld [hl], $02                                  ; $4112: $36 $02
    ld hl, $a141                                  ; $4114: $21 $41 $a1
    ld [hl], $00                                  ; $4117: $36 $00
    inc hl                                        ; $4119: $23
    ld [hl], $00                                  ; $411a: $36 $00
    inc hl                                        ; $411c: $23
    ld [hl], $18                                  ; $411d: $36 $18
    inc hl                                        ; $411f: $23
    ld [hl], $00                                  ; $4120: $36 $00
    inc hl                                        ; $4122: $23
    ld [hl], $02                                  ; $4123: $36 $02
    ld hl, $a161                                  ; $4125: $21 $61 $a1
    ld [hl], $00                                  ; $4128: $36 $00
    inc hl                                        ; $412a: $23
    ld [hl], $00                                  ; $412b: $36 $00
    inc hl                                        ; $412d: $23
    ld [hl], $1a                                  ; $412e: $36 $1a
    inc hl                                        ; $4130: $23
    ld [hl], $00                                  ; $4131: $36 $00
    inc hl                                        ; $4133: $23
    ld [hl], $02                                  ; $4134: $36 $02
    ld hl, $a181                                  ; $4136: $21 $81 $a1
    ld [hl], $00                                  ; $4139: $36 $00
    inc hl                                        ; $413b: $23
    ld [hl], $00                                  ; $413c: $36 $00
    inc hl                                        ; $413e: $23
    ld [hl], $1c                                  ; $413f: $36 $1c
    inc hl                                        ; $4141: $23
    ld [hl], $00                                  ; $4142: $36 $00
    inc hl                                        ; $4144: $23
    ld [hl], $02                                  ; $4145: $36 $02
    ld hl, $a1a1                                  ; $4147: $21 $a1 $a1
    ld [hl], $00                                  ; $414a: $36 $00
    inc hl                                        ; $414c: $23
    ld [hl], $00                                  ; $414d: $36 $00
    inc hl                                        ; $414f: $23
    ld [hl], $1e                                  ; $4150: $36 $1e
    inc hl                                        ; $4152: $23
    ld [hl], $00                                  ; $4153: $36 $00
    inc hl                                        ; $4155: $23
    ld [hl], $02                                  ; $4156: $36 $02
    ld hl, $a032                                  ; $4158: $21 $32 $a0
    ld [hl], $0c                                  ; $415b: $36 $0c
    pop hl                                        ; $415d: $e1
    pop de                                        ; $415e: $d1
    pop bc                                        ; $415f: $c1
    pop af                                        ; $4160: $f1
    ret                                           ; $4161: $c9


    db $43, $41, $4d, $45, $4c, $4f, $54, $20, $47, $41, $4d, $45, $42, $4f, $59, $00

Call_002_4172:
    ld e, $00                                     ; $4172: $1e $00

jr_002_4174:
    ld a, e                                       ; $4174: $7b
    ldh [$97], a                                  ; $4175: $e0 $97
    ld [$4000], a                                 ; $4177: $ea $00 $40
    ld bc, $0200                                  ; $417a: $01 $00 $02
    ld hl, $a000                                  ; $417d: $21 $00 $a0

jr_002_4180:
    xor a                                         ; $4180: $af
    ld [hl+], a                                   ; $4181: $22
    ld [hl+], a                                   ; $4182: $22
    ld [hl+], a                                   ; $4183: $22
    ld [hl+], a                                   ; $4184: $22
    ld [hl+], a                                   ; $4185: $22
    ld [hl+], a                                   ; $4186: $22
    ld [hl+], a                                   ; $4187: $22
    ld [hl+], a                                   ; $4188: $22
    ld [hl+], a                                   ; $4189: $22
    ld [hl+], a                                   ; $418a: $22
    ld [hl+], a                                   ; $418b: $22
    ld [hl+], a                                   ; $418c: $22
    ld [hl+], a                                   ; $418d: $22
    ld [hl+], a                                   ; $418e: $22
    ld [hl+], a                                   ; $418f: $22
    ld [hl+], a                                   ; $4190: $22
    dec bc                                        ; $4191: $0b
    ld a, c                                       ; $4192: $79
    or b                                          ; $4193: $b0
    jr nz, jr_002_4180                            ; $4194: $20 $ea

    inc e                                         ; $4196: $1c
    ld a, e                                       ; $4197: $7b
    cp $01                                        ; $4198: $fe $01
    jr c, jr_002_4174                             ; $419a: $38 $d8

    ret                                           ; $419c: $c9


Call_002_419d:
    push af                                       ; $419d: $f5
    push de                                       ; $419e: $d5
    push bc                                       ; $419f: $c5
    ld a, $00                                     ; $41a0: $3e $00
    ldh [$97], a                                  ; $41a2: $e0 $97
    ld [$4000], a                                 ; $41a4: $ea $00 $40
    ld hl, $0000                                  ; $41a7: $21 $00 $00
    ld de, $a032                                  ; $41aa: $11 $32 $a0
    ld bc, $018e                                  ; $41ad: $01 $8e $01

jr_002_41b0:
    ld a, [de]                                    ; $41b0: $1a
    inc de                                        ; $41b1: $13
    add l                                         ; $41b2: $85
    ld l, a                                       ; $41b3: $6f
    ld a, h                                       ; $41b4: $7c
    adc $00                                       ; $41b5: $ce $00
    ld h, a                                       ; $41b7: $67
    dec bc                                        ; $41b8: $0b
    ld a, b                                       ; $41b9: $78
    or c                                          ; $41ba: $b1
    jr nz, jr_002_41b0                            ; $41bb: $20 $f3

    pop bc                                        ; $41bd: $c1
    pop de                                        ; $41be: $d1
    pop af                                        ; $41bf: $f1
    ret                                           ; $41c0: $c9


Call_002_41c1:
    push af                                       ; $41c1: $f5
    push bc                                       ; $41c2: $c5
    push de                                       ; $41c3: $d5
    push hl                                       ; $41c4: $e5
    call Call_002_419d                            ; $41c5: $cd $9d $41
    ld a, l                                       ; $41c8: $7d
    ld [$a030], a                                 ; $41c9: $ea $30 $a0
    ld a, h                                       ; $41cc: $7c
    ld [$a031], a                                 ; $41cd: $ea $31 $a0
    ld hl, $a020                                  ; $41d0: $21 $20 $a0
    ld de, $b620                                  ; $41d3: $11 $20 $b6
    ld bc, $01a0                                  ; $41d6: $01 $a0 $01
    call Call_000_03d3                            ; $41d9: $cd $d3 $03
    pop hl                                        ; $41dc: $e1
    pop de                                        ; $41dd: $d1
    pop bc                                        ; $41de: $c1
    pop af                                        ; $41df: $f1
    ret                                           ; $41e0: $c9


Call_002_41e1:
    push hl                                       ; $41e1: $e5
    push de                                       ; $41e2: $d5
    call Call_002_419d                            ; $41e3: $cd $9d $41
    push hl                                       ; $41e6: $e5
    ld hl, $a030                                  ; $41e7: $21 $30 $a0
    ld a, [hl+]                                   ; $41ea: $2a
    ld h, [hl]                                    ; $41eb: $66
    ld l, a                                       ; $41ec: $6f
    pop de                                        ; $41ed: $d1
    call Call_000_08ac                            ; $41ee: $cd $ac $08
    ld a, h                                       ; $41f1: $7c
    or l                                          ; $41f2: $b5
    pop de                                        ; $41f3: $d1
    pop hl                                        ; $41f4: $e1
    ret                                           ; $41f5: $c9


    push hl                                       ; $41f6: $e5
    push de                                       ; $41f7: $d5
    push bc                                       ; $41f8: $c5
    ld a, $0a                                     ; $41f9: $3e $0a
    ld [$0000], a                                 ; $41fb: $ea $00 $00
    ld a, $00                                     ; $41fe: $3e $00
    ldh [$97], a                                  ; $4200: $e0 $97
    ld [$4000], a                                 ; $4202: $ea $00 $40
    ld hl, $a020                                  ; $4205: $21 $20 $a0
    ld de, $4162                                  ; $4208: $11 $62 $41
    call Call_002_4267                            ; $420b: $cd $67 $42
    jr nz, jr_002_4218                            ; $420e: $20 $08

    call Call_002_41e1                            ; $4210: $cd $e1 $41
    jr nz, jr_002_4218                            ; $4213: $20 $03

    xor a                                         ; $4215: $af
    jr jr_002_4243                                ; $4216: $18 $2b

jr_002_4218:
    ld hl, $b620                                  ; $4218: $21 $20 $b6
    ld de, $a020                                  ; $421b: $11 $20 $a0
    ld bc, $01a0                                  ; $421e: $01 $a0 $01
    call Call_000_03d3                            ; $4221: $cd $d3 $03
    ld hl, $a020                                  ; $4224: $21 $20 $a0
    ld de, $4162                                  ; $4227: $11 $62 $41
    call Call_002_4267                            ; $422a: $cd $67 $42
    jr nz, jr_002_4238                            ; $422d: $20 $09

    call Call_002_41e1                            ; $422f: $cd $e1 $41
    jr nz, jr_002_4238                            ; $4232: $20 $04

    ld a, $01                                     ; $4234: $3e $01
    jr jr_002_4243                                ; $4236: $18 $0b

jr_002_4238:
    call Call_002_4172                            ; $4238: $cd $72 $41
    call Call_002_4078                            ; $423b: $cd $78 $40
    call Call_002_41c1                            ; $423e: $cd $c1 $41
    ld a, $ff                                     ; $4241: $3e $ff

jr_002_4243:
    push af                                       ; $4243: $f5
    xor a                                         ; $4244: $af
    ld [$0000], a                                 ; $4245: $ea $00 $00
    pop af                                        ; $4248: $f1
    pop bc                                        ; $4249: $c1
    pop de                                        ; $424a: $d1
    pop hl                                        ; $424b: $e1
    ret                                           ; $424c: $c9


    ld a, $0a                                     ; $424d: $3e $0a
    ld [$0000], a                                 ; $424f: $ea $00 $00
    ld a, $00                                     ; $4252: $3e $00
    ldh [$97], a                                  ; $4254: $e0 $97
    ld [$4000], a                                 ; $4256: $ea $00 $40
    call Call_002_4172                            ; $4259: $cd $72 $41
    call Call_002_4078                            ; $425c: $cd $78 $40
    call Call_002_41c1                            ; $425f: $cd $c1 $41
    xor a                                         ; $4262: $af
    ld [$0000], a                                 ; $4263: $ea $00 $00
    ret                                           ; $4266: $c9


Call_002_4267:
    push de                                       ; $4267: $d5
    push hl                                       ; $4268: $e5

jr_002_4269:
    ld a, [de]                                    ; $4269: $1a
    cp [hl]                                       ; $426a: $be
    jr nz, jr_002_4274                            ; $426b: $20 $07

    or a                                          ; $426d: $b7
    jr z, jr_002_4276                             ; $426e: $28 $06

    inc de                                        ; $4270: $13
    inc hl                                        ; $4271: $23
    jr jr_002_4269                                ; $4272: $18 $f5

jr_002_4274:
    ld a, $01                                     ; $4274: $3e $01

jr_002_4276:
    pop hl                                        ; $4276: $e1
    pop de                                        ; $4277: $d1
    or a                                          ; $4278: $b7
    ret                                           ; $4279: $c9


Call_002_427a:
    push af                                       ; $427a: $f5
    push de                                       ; $427b: $d5
    push hl                                       ; $427c: $e5

jr_002_427d:
    ld a, [hl]                                    ; $427d: $7e
    ld [de], a                                    ; $427e: $12
    or a                                          ; $427f: $b7
    jr z, jr_002_4286                             ; $4280: $28 $04

    inc hl                                        ; $4282: $23
    inc de                                        ; $4283: $13
    jr jr_002_427d                                ; $4284: $18 $f7

jr_002_4286:
    pop hl                                        ; $4286: $e1
    pop de                                        ; $4287: $d1
    pop af                                        ; $4288: $f1
    ret                                           ; $4289: $c9


Call_002_428a:
    push hl                                       ; $428a: $e5
    add a                                         ; $428b: $87
    add a                                         ; $428c: $87
    add a                                         ; $428d: $87
    add a                                         ; $428e: $87
    add a                                         ; $428f: $87
    ld hl, $a040                                  ; $4290: $21 $40 $a0
    ld b, $00                                     ; $4293: $06 $00
    ld c, a                                       ; $4295: $4f
    add hl, bc                                    ; $4296: $09
    ld b, h                                       ; $4297: $44
    ld c, l                                       ; $4298: $4d
    pop hl                                        ; $4299: $e1
    ret                                           ; $429a: $c9


Call_002_429b:
    push hl                                       ; $429b: $e5
    push de                                       ; $429c: $d5
    push bc                                       ; $429d: $c5
    ld a, $0a                                     ; $429e: $3e $0a
    ld [$0000], a                                 ; $42a0: $ea $00 $00
    ld a, $00                                     ; $42a3: $3e $00
    ldh [$97], a                                  ; $42a5: $e0 $97
    ld [$4000], a                                 ; $42a7: $ea $00 $40
    call Call_002_4078                            ; $42aa: $cd $78 $40
    push de                                       ; $42ad: $d5
    ld a, b                                       ; $42ae: $78
    call Call_002_428a                            ; $42af: $cd $8a $42
    push bc                                       ; $42b2: $c5
    push hl                                       ; $42b3: $e5
    ld hl, $0001                                  ; $42b4: $21 $01 $00
    add hl, bc                                    ; $42b7: $09
    ld c, [hl]                                    ; $42b8: $4e
    inc hl                                        ; $42b9: $23
    ld a, [hl+]                                   ; $42ba: $2a
    ld e, a                                       ; $42bb: $5f
    ld a, [hl+]                                   ; $42bc: $2a
    ld d, a                                       ; $42bd: $57
    ld a, [hl+]                                   ; $42be: $2a
    ld b, [hl]                                    ; $42bf: $46
    ld c, a                                       ; $42c0: $4f
    ld hl, $a000                                  ; $42c1: $21 $00 $a0
    add hl, de                                    ; $42c4: $19
    ld d, h                                       ; $42c5: $54
    ld e, l                                       ; $42c6: $5d
    pop hl                                        ; $42c7: $e1
    ld a, c                                       ; $42c8: $79
    ldh [$97], a                                  ; $42c9: $e0 $97
    ld [$4000], a                                 ; $42cb: $ea $00 $40
    push hl                                       ; $42ce: $e5
    push bc                                       ; $42cf: $c5

jr_002_42d0:
    ld a, [hl+]                                   ; $42d0: $2a
    ld [de], a                                    ; $42d1: $12
    inc de                                        ; $42d2: $13
    dec bc                                        ; $42d3: $0b
    ld a, b                                       ; $42d4: $78
    or c                                          ; $42d5: $b1
    jr nz, jr_002_42d0                            ; $42d6: $20 $f8

    pop bc                                        ; $42d8: $c1
    pop hl                                        ; $42d9: $e1
    ld de, $0000                                  ; $42da: $11 $00 $00

jr_002_42dd:
    ld a, [hl+]                                   ; $42dd: $2a
    add e                                         ; $42de: $83
    ld e, a                                       ; $42df: $5f
    ld a, d                                       ; $42e0: $7a
    adc $00                                       ; $42e1: $ce $00
    ld d, a                                       ; $42e3: $57
    dec bc                                        ; $42e4: $0b
    ld a, b                                       ; $42e5: $78
    or c                                          ; $42e6: $b1
    jr nz, jr_002_42dd                            ; $42e7: $20 $f4

    ld a, $00                                     ; $42e9: $3e $00
    ldh [$97], a                                  ; $42eb: $e0 $97
    ld [$4000], a                                 ; $42ed: $ea $00 $40
    pop bc                                        ; $42f0: $c1
    ld a, $01                                     ; $42f1: $3e $01
    ld [bc], a                                    ; $42f3: $02
    ld hl, $0006                                  ; $42f4: $21 $06 $00
    add hl, bc                                    ; $42f7: $09
    ld [hl], e                                    ; $42f8: $73
    inc hl                                        ; $42f9: $23
    ld [hl], d                                    ; $42fa: $72
    inc hl                                        ; $42fb: $23
    pop de                                        ; $42fc: $d1
    ld c, $18                                     ; $42fd: $0e $18
    ld a, d                                       ; $42ff: $7a
    or e                                          ; $4300: $b3
    jr z, jr_002_430b                             ; $4301: $28 $08

jr_002_4303:
    ld a, [de]                                    ; $4303: $1a
    inc de                                        ; $4304: $13
    ld [hl+], a                                   ; $4305: $22
    dec c                                         ; $4306: $0d
    jr nz, jr_002_4303                            ; $4307: $20 $fa

    jr jr_002_430f                                ; $4309: $18 $04

jr_002_430b:
    ld [hl+], a                                   ; $430b: $22
    dec c                                         ; $430c: $0d
    jr nz, jr_002_430b                            ; $430d: $20 $fc

jr_002_430f:
    call Call_002_41c1                            ; $430f: $cd $c1 $41
    xor a                                         ; $4312: $af
    push af                                       ; $4313: $f5
    xor a                                         ; $4314: $af
    ld [$0000], a                                 ; $4315: $ea $00 $00
    pop af                                        ; $4318: $f1
    pop bc                                        ; $4319: $c1
    pop de                                        ; $431a: $d1
    pop hl                                        ; $431b: $e1
    ret                                           ; $431c: $c9


Call_002_431d:
    push hl                                       ; $431d: $e5
    push de                                       ; $431e: $d5
    push bc                                       ; $431f: $c5
    ld a, $0a                                     ; $4320: $3e $0a
    ld [$0000], a                                 ; $4322: $ea $00 $00
    ld a, $00                                     ; $4325: $3e $00
    ldh [$97], a                                  ; $4327: $e0 $97
    ld [$4000], a                                 ; $4329: $ea $00 $40
    call Call_002_4078                            ; $432c: $cd $78 $40
    ld a, b                                       ; $432f: $78
    call Call_002_428a                            ; $4330: $cd $8a $42
    xor a                                         ; $4333: $af
    ld [bc], a                                    ; $4334: $02
    ld de, $0000                                  ; $4335: $11 $00 $00
    ld hl, $0006                                  ; $4338: $21 $06 $00
    add hl, bc                                    ; $433b: $09
    ld [hl], e                                    ; $433c: $73
    inc hl                                        ; $433d: $23
    ld [hl], d                                    ; $433e: $72
    inc hl                                        ; $433f: $23
    ld c, $18                                     ; $4340: $0e $18
    xor a                                         ; $4342: $af

jr_002_4343:
    ld [hl+], a                                   ; $4343: $22
    dec c                                         ; $4344: $0d
    jr nz, jr_002_4343                            ; $4345: $20 $fc

    call Call_002_41c1                            ; $4347: $cd $c1 $41
    xor a                                         ; $434a: $af
    push af                                       ; $434b: $f5
    xor a                                         ; $434c: $af
    ld [$0000], a                                 ; $434d: $ea $00 $00
    pop af                                        ; $4350: $f1
    pop bc                                        ; $4351: $c1
    pop de                                        ; $4352: $d1
    pop hl                                        ; $4353: $e1
    ret                                           ; $4354: $c9


Call_002_4355:
    push hl                                       ; $4355: $e5
    push de                                       ; $4356: $d5
    push bc                                       ; $4357: $c5
    ld a, $0a                                     ; $4358: $3e $0a
    ld [$0000], a                                 ; $435a: $ea $00 $00
    ld a, $00                                     ; $435d: $3e $00
    ldh [$97], a                                  ; $435f: $e0 $97
    ld [$4000], a                                 ; $4361: $ea $00 $40
    ld a, b                                       ; $4364: $78
    call Call_002_428a                            ; $4365: $cd $8a $42
    ld a, [bc]                                    ; $4368: $0a
    or a                                          ; $4369: $b7
    jp nz, Jump_002_4372                          ; $436a: $c2 $72 $43

    ld a, $fe                                     ; $436d: $3e $fe
    jp Jump_002_43c2                              ; $436f: $c3 $c2 $43


Jump_002_4372:
    push bc                                       ; $4372: $c5
    push hl                                       ; $4373: $e5
    ld hl, $0001                                  ; $4374: $21 $01 $00
    add hl, bc                                    ; $4377: $09
    ld c, [hl]                                    ; $4378: $4e
    inc hl                                        ; $4379: $23
    ld a, [hl+]                                   ; $437a: $2a
    ld e, a                                       ; $437b: $5f
    ld a, [hl+]                                   ; $437c: $2a
    ld d, a                                       ; $437d: $57
    ld a, [hl+]                                   ; $437e: $2a
    ld b, [hl]                                    ; $437f: $46
    ld c, a                                       ; $4380: $4f
    ld hl, $a000                                  ; $4381: $21 $00 $a0
    add hl, de                                    ; $4384: $19
    ld d, h                                       ; $4385: $54
    ld e, l                                       ; $4386: $5d
    pop hl                                        ; $4387: $e1
    ld a, c                                       ; $4388: $79
    ldh [$97], a                                  ; $4389: $e0 $97
    ld [$4000], a                                 ; $438b: $ea $00 $40
    push hl                                       ; $438e: $e5
    push bc                                       ; $438f: $c5

jr_002_4390:
    ld a, [de]                                    ; $4390: $1a
    ld [hl+], a                                   ; $4391: $22
    inc de                                        ; $4392: $13
    dec bc                                        ; $4393: $0b
    ld a, b                                       ; $4394: $78
    or c                                          ; $4395: $b1
    jr nz, jr_002_4390                            ; $4396: $20 $f8

    pop bc                                        ; $4398: $c1
    pop hl                                        ; $4399: $e1
    ld de, $0000                                  ; $439a: $11 $00 $00

jr_002_439d:
    ld a, [hl+]                                   ; $439d: $2a
    add e                                         ; $439e: $83
    ld e, a                                       ; $439f: $5f
    ld a, d                                       ; $43a0: $7a
    adc $00                                       ; $43a1: $ce $00
    ld d, a                                       ; $43a3: $57
    dec bc                                        ; $43a4: $0b
    ld a, b                                       ; $43a5: $78
    or c                                          ; $43a6: $b1
    jr nz, jr_002_439d                            ; $43a7: $20 $f4

    ld a, $00                                     ; $43a9: $3e $00
    ldh [$97], a                                  ; $43ab: $e0 $97
    ld [$4000], a                                 ; $43ad: $ea $00 $40
    pop bc                                        ; $43b0: $c1
    ld hl, $0006                                  ; $43b1: $21 $06 $00
    add hl, bc                                    ; $43b4: $09
    ld a, [hl+]                                   ; $43b5: $2a
    ld h, [hl]                                    ; $43b6: $66
    ld l, a                                       ; $43b7: $6f
    ld a, h                                       ; $43b8: $7c
    xor d                                         ; $43b9: $aa
    ld h, a                                       ; $43ba: $67
    ld a, l                                       ; $43bb: $7d
    xor e                                         ; $43bc: $ab
    or h                                          ; $43bd: $b4
    jr z, jr_002_43c2                             ; $43be: $28 $02

    ld a, $ff                                     ; $43c0: $3e $ff

Jump_002_43c2:
jr_002_43c2:
    push af                                       ; $43c2: $f5
    xor a                                         ; $43c3: $af
    ld [$0000], a                                 ; $43c4: $ea $00 $00
    pop af                                        ; $43c7: $f1
    pop bc                                        ; $43c8: $c1
    pop de                                        ; $43c9: $d1
    pop hl                                        ; $43ca: $e1
    ret                                           ; $43cb: $c9


Call_002_43cc:
    push hl                                       ; $43cc: $e5
    push de                                       ; $43cd: $d5
    push bc                                       ; $43ce: $c5
    ld a, $0a                                     ; $43cf: $3e $0a
    ld [$0000], a                                 ; $43d1: $ea $00 $00
    ld a, $00                                     ; $43d4: $3e $00
    ldh [$97], a                                  ; $43d6: $e0 $97
    ld [$4000], a                                 ; $43d8: $ea $00 $40
    ld a, b                                       ; $43db: $78
    call Call_002_428a                            ; $43dc: $cd $8a $42
    ld a, [bc]                                    ; $43df: $0a
    or a                                          ; $43e0: $b7
    jp nz, Jump_002_43e9                          ; $43e1: $c2 $e9 $43

    ld a, $fe                                     ; $43e4: $3e $fe
    jp Jump_002_444a                              ; $43e6: $c3 $4a $44


Jump_002_43e9:
    push bc                                       ; $43e9: $c5
    push hl                                       ; $43ea: $e5
    ld hl, $0001                                  ; $43eb: $21 $01 $00
    add hl, bc                                    ; $43ee: $09
    ld c, [hl]                                    ; $43ef: $4e
    inc hl                                        ; $43f0: $23
    ld a, [hl+]                                   ; $43f1: $2a
    ld e, a                                       ; $43f2: $5f
    ld a, [hl+]                                   ; $43f3: $2a
    ld d, a                                       ; $43f4: $57
    ld a, [hl+]                                   ; $43f5: $2a
    ld b, [hl]                                    ; $43f6: $46
    ld c, a                                       ; $43f7: $4f
    ld hl, $a000                                  ; $43f8: $21 $00 $a0
    add hl, de                                    ; $43fb: $19
    ld d, h                                       ; $43fc: $54
    ld e, l                                       ; $43fd: $5d
    pop hl                                        ; $43fe: $e1
    ld a, c                                       ; $43ff: $79
    ldh [$97], a                                  ; $4400: $e0 $97
    ld [$4000], a                                 ; $4402: $ea $00 $40
    push de                                       ; $4405: $d5
    push bc                                       ; $4406: $c5

jr_002_4407:
    ld a, [de]                                    ; $4407: $1a
    cp [hl]                                       ; $4408: $be
    jr z, jr_002_4419                             ; $4409: $28 $0e

    ld a, $00                                     ; $440b: $3e $00
    ldh [$97], a                                  ; $440d: $e0 $97
    ld [$4000], a                                 ; $440f: $ea $00 $40
    add sp, $06                                   ; $4412: $e8 $06
    ld a, $fd                                     ; $4414: $3e $fd
    jp Jump_002_444a                              ; $4416: $c3 $4a $44


jr_002_4419:
    inc hl                                        ; $4419: $23
    inc de                                        ; $441a: $13
    dec bc                                        ; $441b: $0b
    ld a, b                                       ; $441c: $78
    or c                                          ; $441d: $b1
    jr nz, jr_002_4407                            ; $441e: $20 $e7

    pop bc                                        ; $4420: $c1
    pop hl                                        ; $4421: $e1
    ld de, $0000                                  ; $4422: $11 $00 $00

jr_002_4425:
    ld a, [hl+]                                   ; $4425: $2a
    add e                                         ; $4426: $83
    ld e, a                                       ; $4427: $5f
    ld a, d                                       ; $4428: $7a
    adc $00                                       ; $4429: $ce $00
    ld d, a                                       ; $442b: $57
    dec bc                                        ; $442c: $0b
    ld a, b                                       ; $442d: $78
    or c                                          ; $442e: $b1
    jr nz, jr_002_4425                            ; $442f: $20 $f4

    ld a, $00                                     ; $4431: $3e $00
    ldh [$97], a                                  ; $4433: $e0 $97
    ld [$4000], a                                 ; $4435: $ea $00 $40
    pop bc                                        ; $4438: $c1
    ld hl, $0006                                  ; $4439: $21 $06 $00
    add hl, bc                                    ; $443c: $09
    ld a, [hl+]                                   ; $443d: $2a
    ld h, [hl]                                    ; $443e: $66
    ld l, a                                       ; $443f: $6f
    ld a, h                                       ; $4440: $7c
    xor d                                         ; $4441: $aa
    ld h, a                                       ; $4442: $67
    ld a, l                                       ; $4443: $7d
    xor e                                         ; $4444: $ab
    or h                                          ; $4445: $b4
    jr z, jr_002_444a                             ; $4446: $28 $02

    ld a, $ff                                     ; $4448: $3e $ff

Jump_002_444a:
jr_002_444a:
    push af                                       ; $444a: $f5
    xor a                                         ; $444b: $af
    ld [$0000], a                                 ; $444c: $ea $00 $00
    pop af                                        ; $444f: $f1
    pop bc                                        ; $4450: $c1
    pop de                                        ; $4451: $d1
    pop hl                                        ; $4452: $e1
    ret                                           ; $4453: $c9


Call_002_4454:
    push hl                                       ; $4454: $e5
    push de                                       ; $4455: $d5
    push bc                                       ; $4456: $c5
    ld a, $0a                                     ; $4457: $3e $0a
    ld [$0000], a                                 ; $4459: $ea $00 $00
    ld a, $00                                     ; $445c: $3e $00
    ldh [$97], a                                  ; $445e: $e0 $97
    ld [$4000], a                                 ; $4460: $ea $00 $40
    ld a, b                                       ; $4463: $78
    call Call_002_428a                            ; $4464: $cd $8a $42
    ld a, [bc]                                    ; $4467: $0a
    or a                                          ; $4468: $b7
    jp nz, Jump_002_4471                          ; $4469: $c2 $71 $44

    ld a, $fe                                     ; $446c: $3e $fe
    jp Jump_002_447f                              ; $446e: $c3 $7f $44


Jump_002_4471:
    ld a, $08                                     ; $4471: $3e $08
    add c                                         ; $4473: $81
    ld e, a                                       ; $4474: $5f
    ld d, b                                       ; $4475: $50
    ld c, $18                                     ; $4476: $0e $18

jr_002_4478:
    ld a, [de]                                    ; $4478: $1a
    ld [hl+], a                                   ; $4479: $22
    inc de                                        ; $447a: $13
    dec c                                         ; $447b: $0d
    jr nz, jr_002_4478                            ; $447c: $20 $fa

    xor a                                         ; $447e: $af

Jump_002_447f:
    push af                                       ; $447f: $f5
    xor a                                         ; $4480: $af
    ld [$0000], a                                 ; $4481: $ea $00 $00
    pop af                                        ; $4484: $f1
    pop bc                                        ; $4485: $c1
    pop de                                        ; $4486: $d1
    pop hl                                        ; $4487: $e1
    ret                                           ; $4488: $c9


    ld a, [$c2a5]                                 ; $4489: $fa $a5 $c2
    cp $03                                        ; $448c: $fe $03
    ret nc                                        ; $448e: $d0

    call Call_000_2cc3                            ; $448f: $cd $c3 $2c
    ld hl, $6392                                  ; $4492: $21 $92 $63
    ld de, $c94e                                  ; $4495: $11 $4e $c9
    ld bc, $000e                                  ; $4498: $01 $0e $00
    call Call_000_03d3                            ; $449b: $cd $d3 $03
    rst $18                                       ; $449e: $df

    db $0e, $02

    ld hl, $63a0                                  ; $44a1: $21 $a0 $63
    ld de, $c600                                  ; $44a4: $11 $00 $c6
    ld bc, $0018                                  ; $44a7: $01 $18 $00
    call Call_000_03d3                            ; $44aa: $cd $d3 $03
    ld a, [$c2a5]                                 ; $44ad: $fa $a5 $c2
    and $03                                       ; $44b0: $e6 $03
    ld b, a                                       ; $44b2: $47
    ld hl, $c800                                  ; $44b3: $21 $00 $c8
    ld de, $c600                                  ; $44b6: $11 $00 $c6
    call Call_002_429b                            ; $44b9: $cd $9b $42
    or a                                          ; $44bc: $b7
    ret nz                                        ; $44bd: $c0

    ld a, [$c2a5]                                 ; $44be: $fa $a5 $c2
    and $03                                       ; $44c1: $e6 $03
    ld b, a                                       ; $44c3: $47
    ld hl, $c800                                  ; $44c4: $21 $00 $c8
    call Call_002_43cc                            ; $44c7: $cd $cc $43
    ld a, [$c2a5]                                 ; $44ca: $fa $a5 $c2
    and $03                                       ; $44cd: $e6 $03
    add $08                                       ; $44cf: $c6 $08
    ld b, a                                       ; $44d1: $47
    ld hl, $c800                                  ; $44d2: $21 $00 $c8
    ld de, $c600                                  ; $44d5: $11 $00 $c6
    call Call_002_429b                            ; $44d8: $cd $9b $42
    ld a, [$c2a5]                                 ; $44db: $fa $a5 $c2
    and $03                                       ; $44de: $e6 $03
    add $08                                       ; $44e0: $c6 $08
    ld b, a                                       ; $44e2: $47
    ld hl, $c800                                  ; $44e3: $21 $00 $c8
    call Call_002_43cc                            ; $44e6: $cd $cc $43
    ret                                           ; $44e9: $c9


    db $80

    ld b, b                                       ; $44eb: $40

    db $20

    db $10                                        ; $44ed: $10

    db $08, $04, $02, $01

Call_002_44f2:
    push hl                                       ; $44f2: $e5
    push de                                       ; $44f3: $d5
    push bc                                       ; $44f4: $c5
    ld b, a                                       ; $44f5: $47
    ld a, $0a                                     ; $44f6: $3e $0a
    ld [$0000], a                                 ; $44f8: $ea $00 $00
    ld a, $00                                     ; $44fb: $3e $00
    ldh [$97], a                                  ; $44fd: $e0 $97
    ld [$4000], a                                 ; $44ff: $ea $00 $40
    ld hl, $44ea                                  ; $4502: $21 $ea $44
    ld a, e                                       ; $4505: $7b
    rlca                                          ; $4506: $07
    rlca                                          ; $4507: $07
    rlca                                          ; $4508: $07
    add l                                         ; $4509: $85
    ld l, a                                       ; $450a: $6f
    jr nc, jr_002_450e                            ; $450b: $30 $01

    inc h                                         ; $450d: $24

jr_002_450e:
    ld a, [hl]                                    ; $450e: $7e
    ld hl, $a038                                  ; $450f: $21 $38 $a0
    ld e, d                                       ; $4512: $5a
    ld d, $00                                     ; $4513: $16 $00
    add hl, de                                    ; $4515: $19
    and [hl]                                      ; $4516: $a6
    push af                                       ; $4517: $f5
    xor a                                         ; $4518: $af
    ld [$0000], a                                 ; $4519: $ea $00 $00
    pop af                                        ; $451c: $f1
    ld a, b                                       ; $451d: $78
    pop bc                                        ; $451e: $c1
    pop de                                        ; $451f: $d1
    pop hl                                        ; $4520: $e1
    ret                                           ; $4521: $c9


    push hl                                       ; $4522: $e5
    push af                                       ; $4523: $f5
    ld a, $0a                                     ; $4524: $3e $0a
    ld [$0000], a                                 ; $4526: $ea $00 $00
    ld a, $00                                     ; $4529: $3e $00
    ldh [$97], a                                  ; $452b: $e0 $97
    ld [$4000], a                                 ; $452d: $ea $00 $40
    ld hl, $44ea                                  ; $4530: $21 $ea $44
    ld a, e                                       ; $4533: $7b
    rlca                                          ; $4534: $07
    rlca                                          ; $4535: $07
    rlca                                          ; $4536: $07
    add l                                         ; $4537: $85
    ld l, a                                       ; $4538: $6f
    jr nc, jr_002_453c                            ; $4539: $30 $01

    inc h                                         ; $453b: $24

jr_002_453c:
    ld a, [hl]                                    ; $453c: $7e
    ld hl, $a038                                  ; $453d: $21 $38 $a0
    ld e, d                                       ; $4540: $5a
    ld d, $00                                     ; $4541: $16 $00
    add hl, de                                    ; $4543: $19
    or [hl]                                       ; $4544: $b6
    ld [hl], a                                    ; $4545: $77
    call Call_002_41c1                            ; $4546: $cd $c1 $41
    xor a                                         ; $4549: $af
    ld [$0000], a                                 ; $454a: $ea $00 $00
    pop af                                        ; $454d: $f1
    pop hl                                        ; $454e: $e1
    ret                                           ; $454f: $c9


    push hl                                       ; $4550: $e5
    push af                                       ; $4551: $f5
    ld a, $0a                                     ; $4552: $3e $0a
    ld [$0000], a                                 ; $4554: $ea $00 $00
    ld a, $00                                     ; $4557: $3e $00
    ldh [$97], a                                  ; $4559: $e0 $97
    ld [$4000], a                                 ; $455b: $ea $00 $40
    ld hl, $44ea                                  ; $455e: $21 $ea $44
    ld a, e                                       ; $4561: $7b
    rlca                                          ; $4562: $07
    rlca                                          ; $4563: $07
    rlca                                          ; $4564: $07
    add l                                         ; $4565: $85
    ld l, a                                       ; $4566: $6f
    jr nc, jr_002_456a                            ; $4567: $30 $01

    inc h                                         ; $4569: $24

jr_002_456a:
    ld a, [hl]                                    ; $456a: $7e
    ld hl, $a038                                  ; $456b: $21 $38 $a0
    ld e, d                                       ; $456e: $5a
    ld d, $00                                     ; $456f: $16 $00
    add hl, de                                    ; $4571: $19
    cpl                                           ; $4572: $2f
    and [hl]                                      ; $4573: $a6
    ld [hl], a                                    ; $4574: $77
    call Call_002_41c1                            ; $4575: $cd $c1 $41
    xor a                                         ; $4578: $af
    ld [$0000], a                                 ; $4579: $ea $00 $00
    pop af                                        ; $457c: $f1
    pop hl                                        ; $457d: $e1
    ret                                           ; $457e: $c9


Call_002_457f:
    ld hl, $d000                                  ; $457f: $21 $00 $d0
    call Call_002_4355                            ; $4582: $cd $55 $43
    cp $ff                                        ; $4585: $fe $ff
    ret nz                                        ; $4587: $c0

    push bc                                       ; $4588: $c5
    ld a, $08                                     ; $4589: $3e $08
    add b                                         ; $458b: $80
    ld b, $08                                     ; $458c: $06 $08
    call Call_002_4355                            ; $458e: $cd $55 $43
    or a                                          ; $4591: $b7
    jr nz, jr_002_45a5                            ; $4592: $20 $11

    ld hl, $d400                                  ; $4594: $21 $00 $d4
    call Call_002_4454                            ; $4597: $cd $54 $44
    pop bc                                        ; $459a: $c1
    ld hl, $d000                                  ; $459b: $21 $00 $d0
    ld de, $d400                                  ; $459e: $11 $00 $d4
    call Call_002_429b                            ; $45a1: $cd $9b $42
    ret                                           ; $45a4: $c9


jr_002_45a5:
    pop bc                                        ; $45a5: $c1
    call Call_002_431d                            ; $45a6: $cd $1d $43
    ret                                           ; $45a9: $c9


Call_002_45aa:
    ld hl, $d000                                  ; $45aa: $21 $00 $d0
    call Call_002_4355                            ; $45ad: $cd $55 $43
    cp $ff                                        ; $45b0: $fe $ff
    ret nz                                        ; $45b2: $c0

    call Call_002_431d                            ; $45b3: $cd $1d $43
    ret                                           ; $45b6: $c9


Call_002_45b7:
    ld hl, $d000                                  ; $45b7: $21 $00 $d0
    call Call_002_4355                            ; $45ba: $cd $55 $43
    or a                                          ; $45bd: $b7
    ret z                                         ; $45be: $c8

    push bc                                       ; $45bf: $c5
    ld hl, $d000                                  ; $45c0: $21 $00 $d0
    ld c, $28                                     ; $45c3: $0e $28
    call Call_000_03a7                            ; $45c5: $cd $a7 $03
    pop bc                                        ; $45c8: $c1
    ld hl, $d000                                  ; $45c9: $21 $00 $d0
    ld de, $0000                                  ; $45cc: $11 $00 $00
    call Call_002_429b                            ; $45cf: $cd $9b $42
    ret                                           ; $45d2: $c9


    ld a, $01                                     ; $45d3: $3e $01
    ldh [$96], a                                  ; $45d5: $e0 $96
    ldh [rSVBK], a                                ; $45d7: $e0 $70
    ld b, $00                                     ; $45d9: $06 $00
    call Call_002_457f                            ; $45db: $cd $7f $45
    ld b, $01                                     ; $45de: $06 $01
    call Call_002_457f                            ; $45e0: $cd $7f $45
    ld b, $02                                     ; $45e3: $06 $02
    call Call_002_457f                            ; $45e5: $cd $7f $45
    ld b, $03                                     ; $45e8: $06 $03
    call Call_002_45aa                            ; $45ea: $cd $aa $45
    ld b, $04                                     ; $45ed: $06 $04
    call Call_002_45b7                            ; $45ef: $cd $b7 $45
    ld b, $05                                     ; $45f2: $06 $05
    call Call_002_45b7                            ; $45f4: $cd $b7 $45
    ld b, $06                                     ; $45f7: $06 $06
    call Call_002_45b7                            ; $45f9: $cd $b7 $45
    ld b, $07                                     ; $45fc: $06 $07
    call Call_002_45b7                            ; $45fe: $cd $b7 $45
    ret                                           ; $4601: $c9


Call_002_4602:
    push de                                       ; $4602: $d5
    ld hl, $d680                                  ; $4603: $21 $80 $d6
    ld d, $00                                     ; $4606: $16 $00
    ld e, a                                       ; $4608: $5f
    ld a, [$c835]                                 ; $4609: $fa $35 $c8
    or a                                          ; $460c: $b7
    jr z, jr_002_4613                             ; $460d: $28 $04

    ld a, $40                                     ; $460f: $3e $40
    add e                                         ; $4611: $83
    ld e, a                                       ; $4612: $5f

jr_002_4613:
    add hl, de                                    ; $4613: $19
    pop de                                        ; $4614: $d1
    ret                                           ; $4615: $c9


    ld hl, $d680                                  ; $4616: $21 $80 $d6
    ld c, $08                                     ; $4619: $0e $08
    call Call_000_03a7                            ; $461b: $cd $a7 $03
    ret                                           ; $461e: $c9


    ld hl, $d5f8                                  ; $461f: $21 $f8 $d5
    call Call_002_463e                            ; $4622: $cd $3e $46
    ret                                           ; $4625: $c9


    ld a, $20                                     ; $4626: $3e $20
    rst $18                                       ; $4628: $df
    inc d                                         ; $4629: $14
    db $10                                        ; $462a: $10
    ld a, [hl]                                    ; $462b: $7e
    cp $04                                        ; $462c: $fe $04
    ret nc                                        ; $462e: $d0

    and $03                                       ; $462f: $e6 $03
    swap a                                        ; $4631: $cb $37
    push af                                       ; $4633: $f5
    xor a                                         ; $4634: $af
    call Call_002_4602                            ; $4635: $cd $02 $46
    pop af                                        ; $4638: $f1
    add l                                         ; $4639: $85
    ld l, a                                       ; $463a: $6f
    jr nc, jr_002_463e                            ; $463b: $30 $01

    inc h                                         ; $463d: $24

Call_002_463e:
jr_002_463e:
    ld de, $d400                                  ; $463e: $11 $00 $d4
    ld a, [hl+]                                   ; $4641: $2a
    ld [de], a                                    ; $4642: $12
    inc de                                        ; $4643: $13
    ld a, [hl+]                                   ; $4644: $2a
    ld [de], a                                    ; $4645: $12
    inc de                                        ; $4646: $13
    ld a, [hl+]                                   ; $4647: $2a
    ld [de], a                                    ; $4648: $12
    inc de                                        ; $4649: $13
    ld a, [hl+]                                   ; $464a: $2a
    ld [de], a                                    ; $464b: $12
    inc de                                        ; $464c: $13
    ld a, [hl+]                                   ; $464d: $2a
    ld [de], a                                    ; $464e: $12
    inc de                                        ; $464f: $13
    ld a, [hl+]                                   ; $4650: $2a
    ld [de], a                                    ; $4651: $12
    inc de                                        ; $4652: $13
    xor a                                         ; $4653: $af
    ld [de], a                                    ; $4654: $12
    inc de                                        ; $4655: $13
    ld [de], a                                    ; $4656: $12
    inc de                                        ; $4657: $13
    ld [de], a                                    ; $4658: $12
    ld a, [hl+]                                   ; $4659: $2a
    ld [$d418], a                                 ; $465a: $ea $18 $d4
    ld a, [hl+]                                   ; $465d: $2a
    ld [$d419], a                                 ; $465e: $ea $19 $d4
    ld a, [hl+]                                   ; $4661: $2a
    ld [$d329], a                                 ; $4662: $ea $29 $d3
    ld a, [hl+]                                   ; $4665: $2a
    ld [$d32a], a                                 ; $4666: $ea $2a $d3
    ld [$d32b], a                                 ; $4669: $ea $2b $d3
    ld a, [hl+]                                   ; $466c: $2a
    ld [$d4d8], a                                 ; $466d: $ea $d8 $d4
    ld a, [hl+]                                   ; $4670: $2a
    ld [$d4d9], a                                 ; $4671: $ea $d9 $d4
    ld a, [hl+]                                   ; $4674: $2a
    ld [$d4da], a                                 ; $4675: $ea $da $d4
    ret                                           ; $4678: $c9


    ld hl, $d5f8                                  ; $4679: $21 $f8 $d5
    ld de, $d400                                  ; $467c: $11 $00 $d4
    ld a, [de]                                    ; $467f: $1a
    ld [hl+], a                                   ; $4680: $22
    inc de                                        ; $4681: $13
    ld a, [de]                                    ; $4682: $1a
    ld [hl+], a                                   ; $4683: $22
    inc de                                        ; $4684: $13
    ld a, [de]                                    ; $4685: $1a
    ld [hl+], a                                   ; $4686: $22
    inc de                                        ; $4687: $13
    ld a, [de]                                    ; $4688: $1a
    ld [hl+], a                                   ; $4689: $22
    inc de                                        ; $468a: $13
    ld a, [de]                                    ; $468b: $1a
    ld [hl+], a                                   ; $468c: $22
    inc de                                        ; $468d: $13
    ld a, [de]                                    ; $468e: $1a
    ld [hl+], a                                   ; $468f: $22
    ret                                           ; $4690: $c9


    ld hl, $d5f8                                  ; $4691: $21 $f8 $d5
    ld de, $d400                                  ; $4694: $11 $00 $d4
    ld a, [hl+]                                   ; $4697: $2a
    ld [de], a                                    ; $4698: $12
    inc de                                        ; $4699: $13
    ld a, [hl+]                                   ; $469a: $2a
    ld [de], a                                    ; $469b: $12
    inc de                                        ; $469c: $13
    ld a, [hl+]                                   ; $469d: $2a
    ld [de], a                                    ; $469e: $12
    inc de                                        ; $469f: $13
    ld a, [hl+]                                   ; $46a0: $2a
    ld [de], a                                    ; $46a1: $12
    inc de                                        ; $46a2: $13
    ld a, [hl+]                                   ; $46a3: $2a
    ld [de], a                                    ; $46a4: $12
    inc de                                        ; $46a5: $13
    ld a, [hl+]                                   ; $46a6: $2a
    ld [de], a                                    ; $46a7: $12
    inc de                                        ; $46a8: $13
    xor a                                         ; $46a9: $af
    ld [de], a                                    ; $46aa: $12
    inc de                                        ; $46ab: $13
    ld [de], a                                    ; $46ac: $12
    inc de                                        ; $46ad: $13
    ld [de], a                                    ; $46ae: $12
    ret                                           ; $46af: $c9


    push af                                       ; $46b0: $f5
    push bc                                       ; $46b1: $c5
    push de                                       ; $46b2: $d5
    push hl                                       ; $46b3: $e5
    ld hl, $d5f8                                  ; $46b4: $21 $f8 $d5
    call Call_002_46e3                            ; $46b7: $cd $e3 $46
    pop hl                                        ; $46ba: $e1
    pop de                                        ; $46bb: $d1
    pop bc                                        ; $46bc: $c1
    pop af                                        ; $46bd: $f1
    ld a, [$c878]                                 ; $46be: $fa $78 $c8
    or a                                          ; $46c1: $b7
    ret nz                                        ; $46c2: $c0

    ld a, $13                                     ; $46c3: $3e $13
    rst $18                                       ; $46c5: $df

    db $14, $10

    ld a, [hl]                                    ; $46c8: $7e
    or a                                          ; $46c9: $b7
    ret nz                                        ; $46ca: $c0

    ld a, $20                                     ; $46cb: $3e $20
    rst $18                                       ; $46cd: $df

    db $14, $10

    ld a, [hl]                                    ; $46d0: $7e
    cp $04                                        ; $46d1: $fe $04
    ret nc                                        ; $46d3: $d0

    and $03                                       ; $46d4: $e6 $03
    swap a                                        ; $46d6: $cb $37
    push af                                       ; $46d8: $f5
    xor a                                         ; $46d9: $af
    call Call_002_4602                            ; $46da: $cd $02 $46
    pop af                                        ; $46dd: $f1
    add l                                         ; $46de: $85
    ld l, a                                       ; $46df: $6f
    jr nc, jr_002_46e3                            ; $46e0: $30 $01

    inc h                                         ; $46e2: $24

Call_002_46e3:
jr_002_46e3:
    ld de, $d400                                  ; $46e3: $11 $00 $d4
    ld a, [de]                                    ; $46e6: $1a
    ld [hl+], a                                   ; $46e7: $22
    inc de                                        ; $46e8: $13
    ld a, [de]                                    ; $46e9: $1a
    ld [hl+], a                                   ; $46ea: $22
    inc de                                        ; $46eb: $13
    ld a, [de]                                    ; $46ec: $1a
    ld [hl+], a                                   ; $46ed: $22
    inc de                                        ; $46ee: $13
    ld a, [de]                                    ; $46ef: $1a
    ld [hl+], a                                   ; $46f0: $22
    inc de                                        ; $46f1: $13
    ld a, [de]                                    ; $46f2: $1a
    ld [hl+], a                                   ; $46f3: $22
    inc de                                        ; $46f4: $13
    ld a, [de]                                    ; $46f5: $1a
    ld [hl+], a                                   ; $46f6: $22
    ld de, $d418                                  ; $46f7: $11 $18 $d4
    ld a, [de]                                    ; $46fa: $1a
    ld [hl+], a                                   ; $46fb: $22
    inc de                                        ; $46fc: $13
    ld a, [de]                                    ; $46fd: $1a
    ld [hl+], a                                   ; $46fe: $22
    ld a, [$d329]                                 ; $46ff: $fa $29 $d3
    ld [hl+], a                                   ; $4702: $22
    ld a, [$d32a]                                 ; $4703: $fa $2a $d3
    ld [hl+], a                                   ; $4706: $22
    ld a, [$d450]                                 ; $4707: $fa $50 $d4
    ld [hl+], a                                   ; $470a: $22
    ld a, [$d44f]                                 ; $470b: $fa $4f $d4
    ld [hl+], a                                   ; $470e: $22
    ld a, [$d44d]                                 ; $470f: $fa $4d $d4
    ld [hl+], a                                   ; $4712: $22
    ret                                           ; $4713: $c9


    ld a, [$c834]                                 ; $4714: $fa $34 $c8
    cp $01                                        ; $4717: $fe $01
    jr z, jr_002_4724                             ; $4719: $28 $09

    cp $02                                        ; $471b: $fe $02
    jr z, jr_002_4724                             ; $471d: $28 $05

    cp $03                                        ; $471f: $fe $03
    jr z, jr_002_4724                             ; $4721: $28 $01

    ret                                           ; $4723: $c9


jr_002_4724:
    ld a, $13                                     ; $4724: $3e $13
    rst $18                                       ; $4726: $df
    inc d                                         ; $4727: $14
    db $10                                        ; $4728: $10
    ld a, [hl]                                    ; $4729: $7e
    or a                                          ; $472a: $b7
    ret nz                                        ; $472b: $c0

    ld a, [$c878]                                 ; $472c: $fa $78 $c8
    or a                                          ; $472f: $b7
    ret nz                                        ; $4730: $c0

    ld a, $01                                     ; $4731: $3e $01
    ldh [$96], a                                  ; $4733: $e0 $96
    ldh [rSVBK], a                                ; $4735: $e0 $70
    ld a, $04                                     ; $4737: $3e $04
    add b                                         ; $4739: $80
    ld b, a                                       ; $473a: $47
    ld hl, $d080                                  ; $473b: $21 $80 $d0
    call Call_002_4355                            ; $473e: $cd $55 $43
    or a                                          ; $4741: $b7
    jr z, jr_002_474c                             ; $4742: $28 $08

    ld hl, $d080                                  ; $4744: $21 $80 $d0
    ld c, $28                                     ; $4747: $0e $28
    call Call_000_03a7                            ; $4749: $cd $a7 $03

jr_002_474c:
    ld a, $06                                     ; $474c: $3e $06
    ldh [$96], a                                  ; $474e: $e0 $96
    ldh [rSVBK], a                                ; $4750: $e0 $70
    ld hl, $c600                                  ; $4752: $21 $00 $c6
    ld c, $08                                     ; $4755: $0e $08
    call Call_000_03a7                            ; $4757: $cd $a7 $03
    ld a, $20                                     ; $475a: $3e $20
    rst $18                                       ; $475c: $df
    inc d                                         ; $475d: $14
    db $10                                        ; $475e: $10
    ld a, [hl]                                    ; $475f: $7e
    push af                                       ; $4760: $f5
    xor a                                         ; $4761: $af
    rst $18                                       ; $4762: $df
    inc d                                         ; $4763: $14
    db $10                                        ; $4764: $10
    ld de, $c600                                  ; $4765: $11 $00 $c6
    ld c, $02                                     ; $4768: $0e $02
    call Call_000_03eb                            ; $476a: $cd $eb $03
    ld hl, $c620                                  ; $476d: $21 $20 $c6
    ld a, [$c836]                                 ; $4770: $fa $36 $c8
    ld [hl+], a                                   ; $4773: $22
    ld a, [$c837]                                 ; $4774: $fa $37 $c8
    ld [hl+], a                                   ; $4777: $22
    ld a, [$c815]                                 ; $4778: $fa $15 $c8
    ld [hl+], a                                   ; $477b: $22
    ld a, [$c816]                                 ; $477c: $fa $16 $c8
    ld [hl+], a                                   ; $477f: $22
    ld a, [$c838]                                 ; $4780: $fa $38 $c8
    ld [hl+], a                                   ; $4783: $22
    pop af                                        ; $4784: $f1
    ld [hl+], a                                   ; $4785: $22
    xor a                                         ; $4786: $af
    call Call_002_4602                            ; $4787: $cd $02 $46
    ld de, $c640                                  ; $478a: $11 $40 $c6
    ld c, $04                                     ; $478d: $0e $04
    call Call_000_03eb                            ; $478f: $cd $eb $03
    ld a, $01                                     ; $4792: $3e $01
    ldh [$96], a                                  ; $4794: $e0 $96
    ldh [rSVBK], a                                ; $4796: $e0 $70
    ld hl, $c600                                  ; $4798: $21 $00 $c6
    ld de, $d000                                  ; $479b: $11 $00 $d0
    ld c, $08                                     ; $479e: $0e $08
    call Call_000_03eb                            ; $47a0: $cd $eb $03
    ld hl, $d000                                  ; $47a3: $21 $00 $d0
    ld de, $0000                                  ; $47a6: $11 $00 $00
    call Call_002_429b                            ; $47a9: $cd $9b $42
    or a                                          ; $47ac: $b7
    jr nz, jr_002_47b5                            ; $47ad: $20 $06

    ld hl, $d000                                  ; $47af: $21 $00 $d0
    call Call_002_43cc                            ; $47b2: $cd $cc $43

jr_002_47b5:
    push af                                       ; $47b5: $f5
    ld a, $06                                     ; $47b6: $3e $06
    ldh [$96], a                                  ; $47b8: $e0 $96
    ldh [rSVBK], a                                ; $47ba: $e0 $70
    pop af                                        ; $47bc: $f1
    ret                                           ; $47bd: $c9


Call_002_47be:
    push hl                                       ; $47be: $e5
    ld hl, $ff94                                  ; $47bf: $21 $94 $ff
    xor a                                         ; $47c2: $af
    inc a                                         ; $47c3: $3c
    bit 0, [hl]                                   ; $47c4: $cb $46
    jr nz, jr_002_47ec                            ; $47c6: $20 $24

    inc a                                         ; $47c8: $3c
    bit 1, [hl]                                   ; $47c9: $cb $4e
    jr nz, jr_002_47ec                            ; $47cb: $20 $1f

    inc a                                         ; $47cd: $3c
    bit 3, [hl]                                   ; $47ce: $cb $5e
    jr nz, jr_002_47ec                            ; $47d0: $20 $1a

    inc a                                         ; $47d2: $3c
    bit 2, [hl]                                   ; $47d3: $cb $56
    jr nz, jr_002_47ec                            ; $47d5: $20 $15

    inc a                                         ; $47d7: $3c
    bit 6, [hl]                                   ; $47d8: $cb $76
    jr nz, jr_002_47ec                            ; $47da: $20 $10

    inc a                                         ; $47dc: $3c
    bit 7, [hl]                                   ; $47dd: $cb $7e
    jr nz, jr_002_47ec                            ; $47df: $20 $0b

    inc a                                         ; $47e1: $3c
    bit 5, [hl]                                   ; $47e2: $cb $6e
    jr nz, jr_002_47ec                            ; $47e4: $20 $06

    inc a                                         ; $47e6: $3c
    bit 4, [hl]                                   ; $47e7: $cb $66
    jr nz, jr_002_47ec                            ; $47e9: $20 $01

    xor a                                         ; $47eb: $af

jr_002_47ec:
    pop hl                                        ; $47ec: $e1

Call_002_47ed:
    or a                                          ; $47ed: $b7
    ret z                                         ; $47ee: $c8

    push af                                       ; $47ef: $f5
    push hl                                       ; $47f0: $e5
    ld hl, $4802                                  ; $47f1: $21 $02 $48
    and $0f                                       ; $47f4: $e6 $0f
    add l                                         ; $47f6: $85
    ld l, a                                       ; $47f7: $6f
    jr nc, jr_002_47fb                            ; $47f8: $30 $01

    inc h                                         ; $47fa: $24

jr_002_47fb:
    ld a, [hl]                                    ; $47fb: $7e
    pop hl                                        ; $47fc: $e1
    call Call_000_2c19                            ; $47fd: $cd $19 $2c
    pop af                                        ; $4800: $f1
    ret                                           ; $4801: $c9


    ld b, b                                       ; $4802: $40
    ld e, a                                       ; $4803: $5f
    ld d, h                                       ; $4804: $54
    ld h, d                                       ; $4805: $62
    ld h, l                                       ; $4806: $65
    ld h, b                                       ; $4807: $60
    ld h, c                                       ; $4808: $61
    ld e, [hl]                                    ; $4809: $5e
    ld e, d                                       ; $480a: $5a
    ld b, b                                       ; $480b: $40
    ld b, b                                       ; $480c: $40
    ld b, b                                       ; $480d: $40
    ld b, b                                       ; $480e: $40
    ld b, b                                       ; $480f: $40
    ld b, b                                       ; $4810: $40
    ld b, b                                       ; $4811: $40

    push af                                       ; $4812: $f5
    ld a, [$c33f]                                 ; $4813: $fa $3f $c3
    or a                                          ; $4816: $b7
    jr z, jr_002_482a                             ; $4817: $28 $11

    ldh a, [$c0]                                  ; $4819: $f0 $c0
    and $f0                                       ; $481b: $e6 $f0
    cp $10                                        ; $481d: $fe $10
    jr nz, jr_002_482a                            ; $481f: $20 $09

    ldh a, [$c0]                                  ; $4821: $f0 $c0
    and $0f                                       ; $4823: $e6 $0f
    jr z, jr_002_482a                             ; $4825: $28 $03

    call Call_002_47ed                            ; $4827: $cd $ed $47

jr_002_482a:
    pop af                                        ; $482a: $f1
    ret                                           ; $482b: $c9


    push af                                       ; $482c: $f5
    ld a, $21                                     ; $482d: $3e $21
    ldh [$c1], a                                  ; $482f: $e0 $c1
    pop af                                        ; $4831: $f1
    ret                                           ; $4832: $c9


    push af                                       ; $4833: $f5
    ld a, $20                                     ; $4834: $3e $20
    ldh [$c1], a                                  ; $4836: $e0 $c1
    pop af                                        ; $4838: $f1
    ret                                           ; $4839: $c9


    call Call_000_2e3b                            ; $483a: $cd $3b $2e

jr_002_483d:
    call Call_000_2e3b                            ; $483d: $cd $3b $2e
    ldh a, [$c0]                                  ; $4840: $f0 $c0
    cp $2e                                        ; $4842: $fe $2e
    jp z, Jump_002_48b2                           ; $4844: $ca $b2 $48

    and $fe                                       ; $4847: $e6 $fe
    cp $20                                        ; $4849: $fe $20
    jr nz, jr_002_483d                            ; $484b: $20 $f0

    call Call_000_2e3b                            ; $484d: $cd $3b $2e

jr_002_4850:
    call Call_000_2e3b                            ; $4850: $cd $3b $2e
    ldh a, [$c0]                                  ; $4853: $f0 $c0
    cp $2e                                        ; $4855: $fe $2e
    jp z, Jump_002_48b2                           ; $4857: $ca $b2 $48

    cp $21                                        ; $485a: $fe $21
    jr nz, jr_002_4869                            ; $485c: $20 $0b

    call Call_002_47be                            ; $485e: $cd $be $47
    and $0f                                       ; $4861: $e6 $0f
    or $10                                        ; $4863: $f6 $10
    ldh [$c1], a                                  ; $4865: $e0 $c1
    jr jr_002_486d                                ; $4867: $18 $04

jr_002_4869:
    ld a, $10                                     ; $4869: $3e $10
    ldh [$c1], a                                  ; $486b: $e0 $c1

jr_002_486d:
    ldh a, [$c0]                                  ; $486d: $f0 $c0
    cp $2f                                        ; $486f: $fe $2f
    jr nz, jr_002_4850                            ; $4871: $20 $dd

    ld hl, $cb40                                  ; $4873: $21 $40 $cb
    ld de, $d400                                  ; $4876: $11 $00 $d4
    ld a, [hl+]                                   ; $4879: $2a
    ld [de], a                                    ; $487a: $12
    inc de                                        ; $487b: $13
    ld a, [hl+]                                   ; $487c: $2a
    ld [de], a                                    ; $487d: $12
    inc de                                        ; $487e: $13
    ld a, [hl+]                                   ; $487f: $2a
    ld [de], a                                    ; $4880: $12
    inc de                                        ; $4881: $13
    ld a, [hl+]                                   ; $4882: $2a
    ld [de], a                                    ; $4883: $12
    inc de                                        ; $4884: $13
    ld a, [hl+]                                   ; $4885: $2a
    ld [de], a                                    ; $4886: $12
    inc de                                        ; $4887: $13
    ld a, [hl+]                                   ; $4888: $2a
    ld [de], a                                    ; $4889: $12
    ld a, [hl+]                                   ; $488a: $2a
    ld [$d418], a                                 ; $488b: $ea $18 $d4
    ld a, [hl+]                                   ; $488e: $2a
    ld [$d419], a                                 ; $488f: $ea $19 $d4
    ld a, [hl+]                                   ; $4892: $2a
    ld [$d329], a                                 ; $4893: $ea $29 $d3
    ld a, [hl+]                                   ; $4896: $2a
    ld [$d32a], a                                 ; $4897: $ea $2a $d3
    ld [$d32b], a                                 ; $489a: $ea $2b $d3
    ld a, [hl+]                                   ; $489d: $2a
    ld [$d4d8], a                                 ; $489e: $ea $d8 $d4
    ld a, [hl+]                                   ; $48a1: $2a
    ld [$d4d9], a                                 ; $48a2: $ea $d9 $d4
    ld a, [hl+]                                   ; $48a5: $2a
    ld [$d4da], a                                 ; $48a6: $ea $da $d4
    ld a, [hl+]                                   ; $48a9: $2a
    ld [$d4db], a                                 ; $48aa: $ea $db $d4
    ld a, $20                                     ; $48ad: $3e $20
    ldh [$c1], a                                  ; $48af: $e0 $c1
    ret                                           ; $48b1: $c9


Jump_002_48b2:
    ld a, $80                                     ; $48b2: $3e $80
    ld [$d4db], a                                 ; $48b4: $ea $db $d4
    ret                                           ; $48b7: $c9


    ld a, $13                                     ; $48b8: $3e $13
    push de                                       ; $48ba: $d5
    ld hl, $c880                                  ; $48bb: $21 $80 $c8
    ld d, $00                                     ; $48be: $16 $00
    ld e, a                                       ; $48c0: $5f
    ld a, [$c835]                                 ; $48c1: $fa $35 $c8
    or a                                          ; $48c4: $b7
    jr nz, jr_002_48cb                            ; $48c5: $20 $04

    ld a, $40                                     ; $48c7: $3e $40
    add e                                         ; $48c9: $83
    ld e, a                                       ; $48ca: $5f

jr_002_48cb:
    add hl, de                                    ; $48cb: $19
    pop de                                        ; $48cc: $d1
    ld a, [hl]                                    ; $48cd: $7e
    cp $03                                        ; $48ce: $fe $03
    ret nz                                        ; $48d0: $c0

jr_002_48d1:
    ldh a, [$c0]                                  ; $48d1: $f0 $c0
    and $f0                                       ; $48d3: $e6 $f0
    cp $10                                        ; $48d5: $fe $10
    jr z, jr_002_48de                             ; $48d7: $28 $05

    call Call_000_2e3b                            ; $48d9: $cd $3b $2e
    jr jr_002_48d1                                ; $48dc: $18 $f3

jr_002_48de:
    call Call_000_2e3b                            ; $48de: $cd $3b $2e
    xor a                                         ; $48e1: $af
    ld [$cb4f], a                                 ; $48e2: $ea $4f $cb
    ld hl, $cb00                                  ; $48e5: $21 $00 $cb
    ld de, $d400                                  ; $48e8: $11 $00 $d4
    ld a, [de]                                    ; $48eb: $1a
    ld [hl+], a                                   ; $48ec: $22
    inc de                                        ; $48ed: $13
    ld a, [de]                                    ; $48ee: $1a
    ld [hl+], a                                   ; $48ef: $22
    inc de                                        ; $48f0: $13
    ld a, [de]                                    ; $48f1: $1a
    ld [hl+], a                                   ; $48f2: $22
    inc de                                        ; $48f3: $13
    ld a, [de]                                    ; $48f4: $1a
    ld [hl+], a                                   ; $48f5: $22
    inc de                                        ; $48f6: $13
    ld a, [de]                                    ; $48f7: $1a
    ld [hl+], a                                   ; $48f8: $22
    inc de                                        ; $48f9: $13
    ld a, [de]                                    ; $48fa: $1a
    ld [hl+], a                                   ; $48fb: $22
    ld de, $d418                                  ; $48fc: $11 $18 $d4
    ld a, [de]                                    ; $48ff: $1a
    ld [hl+], a                                   ; $4900: $22
    inc de                                        ; $4901: $13
    ld a, [de]                                    ; $4902: $1a
    ld [hl+], a                                   ; $4903: $22
    ld a, [$d329]                                 ; $4904: $fa $29 $d3
    ld [hl+], a                                   ; $4907: $22
    ld a, [$d32a]                                 ; $4908: $fa $2a $d3
    ld [hl+], a                                   ; $490b: $22
    ld a, [$d450]                                 ; $490c: $fa $50 $d4
    ld [hl+], a                                   ; $490f: $22
    ld a, [$d44f]                                 ; $4910: $fa $4f $d4
    ld [hl+], a                                   ; $4913: $22
    ld a, [$d44d]                                 ; $4914: $fa $4d $d4
    ld [hl+], a                                   ; $4917: $22
    xor a                                         ; $4918: $af
    ld [hl+], a                                   ; $4919: $22
    ld a, $2f                                     ; $491a: $3e $2f
    ldh [$c9], a                                  ; $491c: $e0 $c9
    ld a, $10                                     ; $491e: $3e $10
    call Call_000_3081                            ; $4920: $cd $81 $30
    ret                                           ; $4923: $c9


    ld b, a                                       ; $4924: $47
    ld a, $13                                     ; $4925: $3e $13
    push de                                       ; $4927: $d5
    ld hl, $c880                                  ; $4928: $21 $80 $c8
    ld d, $00                                     ; $492b: $16 $00
    ld e, a                                       ; $492d: $5f
    ld a, [$c835]                                 ; $492e: $fa $35 $c8
    or a                                          ; $4931: $b7
    jr nz, jr_002_4938                            ; $4932: $20 $04

    ld a, $40                                     ; $4934: $3e $40
    add e                                         ; $4936: $83
    ld e, a                                       ; $4937: $5f

jr_002_4938:
    add hl, de                                    ; $4938: $19
    pop de                                        ; $4939: $d1
    ld a, [hl]                                    ; $493a: $7e
    cp $03                                        ; $493b: $fe $03
    ret nz                                        ; $493d: $c0

jr_002_493e:
    ldh a, [$c0]                                  ; $493e: $f0 $c0
    and $f0                                       ; $4940: $e6 $f0
    cp $10                                        ; $4942: $fe $10
    jr z, jr_002_494b                             ; $4944: $28 $05

    call Call_000_2e3b                            ; $4946: $cd $3b $2e
    jr jr_002_493e                                ; $4949: $18 $f3

jr_002_494b:
    call Call_000_2e3b                            ; $494b: $cd $3b $2e
    xor a                                         ; $494e: $af
    ld [$cb4f], a                                 ; $494f: $ea $4f $cb
    ld hl, $cb00                                  ; $4952: $21 $00 $cb
    ld de, $d400                                  ; $4955: $11 $00 $d4
    ld a, [de]                                    ; $4958: $1a
    ld [hl+], a                                   ; $4959: $22
    inc de                                        ; $495a: $13
    ld a, [de]                                    ; $495b: $1a
    ld [hl+], a                                   ; $495c: $22
    inc de                                        ; $495d: $13
    ld a, [de]                                    ; $495e: $1a
    ld [hl+], a                                   ; $495f: $22
    inc de                                        ; $4960: $13
    ld a, [de]                                    ; $4961: $1a
    ld [hl+], a                                   ; $4962: $22
    inc de                                        ; $4963: $13
    ld a, [de]                                    ; $4964: $1a
    ld [hl+], a                                   ; $4965: $22
    inc de                                        ; $4966: $13
    ld a, [de]                                    ; $4967: $1a
    ld [hl+], a                                   ; $4968: $22
    ld de, $d418                                  ; $4969: $11 $18 $d4
    ld a, [de]                                    ; $496c: $1a
    ld [hl+], a                                   ; $496d: $22
    inc de                                        ; $496e: $13
    ld a, [de]                                    ; $496f: $1a
    ld [hl+], a                                   ; $4970: $22
    ld a, [$d329]                                 ; $4971: $fa $29 $d3
    ld [hl+], a                                   ; $4974: $22
    ld a, [$d32a]                                 ; $4975: $fa $2a $d3
    ld [hl+], a                                   ; $4978: $22
    ld a, [$d450]                                 ; $4979: $fa $50 $d4
    ld [hl+], a                                   ; $497c: $22
    ld a, [$d44f]                                 ; $497d: $fa $4f $d4
    ld [hl+], a                                   ; $4980: $22
    ld a, [$d44d]                                 ; $4981: $fa $4d $d4
    ld [hl+], a                                   ; $4984: $22
    ld a, b                                       ; $4985: $78
    ld [hl+], a                                   ; $4986: $22
    ld a, $2f                                     ; $4987: $3e $2f
    ldh [$c9], a                                  ; $4989: $e0 $c9
    ld a, $10                                     ; $498b: $3e $10
    call Call_000_3081                            ; $498d: $cd $81 $30
    call Call_000_30eb                            ; $4990: $cd $eb $30
    ret                                           ; $4993: $c9


    ld hl, $c880                                  ; $4994: $21 $80 $c8
    bit 0, c                                      ; $4997: $cb $41
    jr z, jr_002_499e                             ; $4999: $28 $03

    ld hl, $c8c0                                  ; $499b: $21 $c0 $c8

jr_002_499e:
    ld a, $13                                     ; $499e: $3e $13
    add l                                         ; $49a0: $85
    ld l, a                                       ; $49a1: $6f
    jr nc, jr_002_49a5                            ; $49a2: $30 $01

    inc h                                         ; $49a4: $24

jr_002_49a5:
    ld [hl], b                                    ; $49a5: $70
    ret                                           ; $49a6: $c9


    ld hl, $c880                                  ; $49a7: $21 $80 $c8
    bit 0, c                                      ; $49aa: $cb $41
    jr z, jr_002_49b1                             ; $49ac: $28 $03

    ld hl, $c8c0                                  ; $49ae: $21 $c0 $c8

jr_002_49b1:
    ld a, $11                                     ; $49b1: $3e $11
    add l                                         ; $49b3: $85
    ld l, a                                       ; $49b4: $6f
    jr nc, jr_002_49b8                            ; $49b5: $30 $01

    inc h                                         ; $49b7: $24

jr_002_49b8:
    ld [hl], b                                    ; $49b8: $70
    ret                                           ; $49b9: $c9


    ld a, b                                       ; $49ba: $78
    push af                                       ; $49bb: $f5
    ld de, $c880                                  ; $49bc: $11 $80 $c8
    bit 0, c                                      ; $49bf: $cb $41
    jr z, jr_002_49c6                             ; $49c1: $28 $03

    ld de, $c8c0                                  ; $49c3: $11 $c0 $c8

jr_002_49c6:
    pop af                                        ; $49c6: $f1
    cp $ff                                        ; $49c7: $fe $ff
    ret z                                         ; $49c9: $c8

    cp $82                                        ; $49ca: $fe $82
    ret z                                         ; $49cc: $c8

    cp $81                                        ; $49cd: $fe $81
    ret z                                         ; $49cf: $c8

    cp $80                                        ; $49d0: $fe $80
    jr nz, jr_002_49e1                            ; $49d2: $20 $0d

    ld a, [$c2a5]                                 ; $49d4: $fa $a5 $c2
    cp $0f                                        ; $49d7: $fe $0f
    ret z                                         ; $49d9: $c8

    ld hl, $c800                                  ; $49da: $21 $00 $c8
    call Call_002_4a0b                            ; $49dd: $cd $0b $4a
    ret                                           ; $49e0: $c9


jr_002_49e1:
    and $0f                                       ; $49e1: $e6 $0f
    add a                                         ; $49e3: $87
    ld hl, $4b1d                                  ; $49e4: $21 $1d $4b
    add l                                         ; $49e7: $85
    ld l, a                                       ; $49e8: $6f
    jr nc, jr_002_49ec                            ; $49e9: $30 $01

    inc h                                         ; $49eb: $24

jr_002_49ec:
    ld a, [hl+]                                   ; $49ec: $2a
    ld h, [hl]                                    ; $49ed: $66
    ld l, a                                       ; $49ee: $6f
    call Call_002_4a0b                            ; $49ef: $cd $0b $4a
    ld hl, $0010                                  ; $49f2: $21 $10 $00
    add hl, de                                    ; $49f5: $19
    ld a, [hl]                                    ; $49f6: $7e
    ld hl, $0043                                  ; $49f7: $21 $43 $00
    add l                                         ; $49fa: $85
    ld l, a                                       ; $49fb: $6f
    jr nc, jr_002_49ff                            ; $49fc: $30 $01

    inc h                                         ; $49fe: $24

jr_002_49ff:
    ldh a, [$96]                                  ; $49ff: $f0 $96
    push af                                       ; $4a01: $f5
    rst $18                                       ; $4a02: $df
    ld e, h                                       ; $4a03: $5c
    dec b                                         ; $4a04: $05
    pop af                                        ; $4a05: $f1
    ldh [$96], a                                  ; $4a06: $e0 $96
    ldh [rSVBK], a                                ; $4a08: $e0 $70
    ret                                           ; $4a0a: $c9


Call_002_4a0b:
    push de                                       ; $4a0b: $d5
    ld c, $14                                     ; $4a0c: $0e $14

jr_002_4a0e:
    ld a, [hl+]                                   ; $4a0e: $2a
    ld [de], a                                    ; $4a0f: $12
    inc de                                        ; $4a10: $13
    dec c                                         ; $4a11: $0d
    jr nz, jr_002_4a0e                            ; $4a12: $20 $fa

    inc hl                                        ; $4a14: $23
    inc de                                        ; $4a15: $13
    inc hl                                        ; $4a16: $23
    inc de                                        ; $4a17: $13
    inc hl                                        ; $4a18: $23
    inc de                                        ; $4a19: $13
    inc hl                                        ; $4a1a: $23
    inc de                                        ; $4a1b: $13
    inc hl                                        ; $4a1c: $23
    inc de                                        ; $4a1d: $13
    ld c, $07                                     ; $4a1e: $0e $07

jr_002_4a20:
    ld a, [hl+]                                   ; $4a20: $2a
    ld [de], a                                    ; $4a21: $12
    inc de                                        ; $4a22: $13
    dec c                                         ; $4a23: $0d
    jr nz, jr_002_4a20                            ; $4a24: $20 $fa

    pop de                                        ; $4a26: $d1
    ret                                           ; $4a27: $c9


Call_002_4a28:
    ld a, b                                       ; $4a28: $78
    ld hl, $c880                                  ; $4a29: $21 $80 $c8
    bit 0, c                                      ; $4a2c: $cb $41
    jr z, jr_002_4a33                             ; $4a2e: $28 $03

    ld hl, $c8c0                                  ; $4a30: $21 $c0 $c8

jr_002_4a33:
    cp $ff                                        ; $4a33: $fe $ff
    jr z, jr_002_4aac                             ; $4a35: $28 $75

    cp $82                                        ; $4a37: $fe $82
    jr z, jr_002_4a6c                             ; $4a39: $28 $31

    cp $81                                        ; $4a3b: $fe $81
    jr z, jr_002_4a8c                             ; $4a3d: $28 $4d

    cp $80                                        ; $4a3f: $fe $80
    jr nz, jr_002_4aba                            ; $4a41: $20 $77

    ld a, [$c2a5]                                 ; $4a43: $fa $a5 $c2
    cp $0f                                        ; $4a46: $fe $0f
    jr z, jr_002_4a62                             ; $4a48: $28 $18

    push hl                                       ; $4a4a: $e5
    ld c, $04                                     ; $4a4b: $0e $04
    call Call_000_03a7                            ; $4a4d: $cd $a7 $03
    pop de                                        ; $4a50: $d1
    ld hl, $0028                                  ; $4a51: $21 $28 $00
    add hl, de                                    ; $4a54: $19
    ld a, [$c825]                                 ; $4a55: $fa $25 $c8
    ld [hl], a                                    ; $4a58: $77
    ld hl, $c800                                  ; $4a59: $21 $00 $c8
    ld c, $02                                     ; $4a5c: $0e $02
    call Call_000_03eb                            ; $4a5e: $cd $eb $03
    ret                                           ; $4a61: $c9


jr_002_4a62:
    ld a, $28                                     ; $4a62: $3e $28
    add l                                         ; $4a64: $85
    ld l, a                                       ; $4a65: $6f
    jr nc, jr_002_4a69                            ; $4a66: $30 $01

    inc h                                         ; $4a68: $24

jr_002_4a69:
    ld [hl], $06                                  ; $4a69: $36 $06
    ret                                           ; $4a6b: $c9


jr_002_4a6c:
    push hl                                       ; $4a6c: $e5
    ld c, $04                                     ; $4a6d: $0e $04
    call Call_000_03a7                            ; $4a6f: $cd $a7 $03
    pop de                                        ; $4a72: $d1
    ld hl, $0028                                  ; $4a73: $21 $28 $00
    add hl, de                                    ; $4a76: $19
    ld a, [$c825]                                 ; $4a77: $fa $25 $c8
    ld [hl], a                                    ; $4a7a: $77
    push de                                       ; $4a7b: $d5
    ld hl, $cb40                                  ; $4a7c: $21 $40 $cb
    ld c, $02                                     ; $4a7f: $0e $02
    call Call_000_03eb                            ; $4a81: $cd $eb $03
    pop de                                        ; $4a84: $d1
    ld hl, $0013                                  ; $4a85: $21 $13 $00
    add hl, de                                    ; $4a88: $19
    ld [hl], $03                                  ; $4a89: $36 $03
    ret                                           ; $4a8b: $c9


jr_002_4a8c:
    push hl                                       ; $4a8c: $e5
    ld c, $04                                     ; $4a8d: $0e $04
    call Call_000_03a7                            ; $4a8f: $cd $a7 $03
    pop de                                        ; $4a92: $d1
    ld hl, $0028                                  ; $4a93: $21 $28 $00
    add hl, de                                    ; $4a96: $19
    ld a, [$c825]                                 ; $4a97: $fa $25 $c8
    ld [hl], a                                    ; $4a9a: $77
    push de                                       ; $4a9b: $d5
    ld hl, $c600                                  ; $4a9c: $21 $00 $c6
    ld c, $02                                     ; $4a9f: $0e $02
    call Call_000_03eb                            ; $4aa1: $cd $eb $03
    pop de                                        ; $4aa4: $d1
    ld hl, $0013                                  ; $4aa5: $21 $13 $00
    add hl, de                                    ; $4aa8: $19
    ld [hl], $02                                  ; $4aa9: $36 $02
    ret                                           ; $4aab: $c9


jr_002_4aac:
    push hl                                       ; $4aac: $e5
    ld c, $04                                     ; $4aad: $0e $04
    call Call_000_03a7                            ; $4aaf: $cd $a7 $03
    pop de                                        ; $4ab2: $d1
    ld hl, $0010                                  ; $4ab3: $21 $10 $00
    add hl, de                                    ; $4ab6: $19
    ld [hl], $ff                                  ; $4ab7: $36 $ff
    ret                                           ; $4ab9: $c9


jr_002_4aba:
    push af                                       ; $4aba: $f5
    push hl                                       ; $4abb: $e5
    ld c, $04                                     ; $4abc: $0e $04
    call Call_000_03a7                            ; $4abe: $cd $a7 $03
    pop de                                        ; $4ac1: $d1
    pop af                                        ; $4ac2: $f1
    push af                                       ; $4ac3: $f5
    push de                                       ; $4ac4: $d5
    and $0f                                       ; $4ac5: $e6 $0f
    add a                                         ; $4ac7: $87
    ld hl, $4b1d                                  ; $4ac8: $21 $1d $4b
    add l                                         ; $4acb: $85
    ld l, a                                       ; $4acc: $6f
    jr nc, jr_002_4ad0                            ; $4acd: $30 $01

    inc h                                         ; $4acf: $24

jr_002_4ad0:
    ld a, [hl+]                                   ; $4ad0: $2a
    ld h, [hl]                                    ; $4ad1: $66
    ld l, a                                       ; $4ad2: $6f
    push de                                       ; $4ad3: $d5
    ld c, $02                                     ; $4ad4: $0e $02
    call Call_000_03eb                            ; $4ad6: $cd $eb $03
    pop de                                        ; $4ad9: $d1
    ld hl, $0028                                  ; $4ada: $21 $28 $00
    add hl, de                                    ; $4add: $19
    ld [hl], $06                                  ; $4ade: $36 $06
    ld hl, $0010                                  ; $4ae0: $21 $10 $00
    add hl, de                                    ; $4ae3: $19
    ld a, [hl]                                    ; $4ae4: $7e
    ld hl, $0043                                  ; $4ae5: $21 $43 $00
    add l                                         ; $4ae8: $85
    ld l, a                                       ; $4ae9: $6f
    jr nc, jr_002_4aed                            ; $4aea: $30 $01

    inc h                                         ; $4aec: $24

jr_002_4aed:
    ldh a, [$96]                                  ; $4aed: $f0 $96
    push af                                       ; $4aef: $f5
    rst $18                                       ; $4af0: $df

    db $5c, $05

    pop af                                        ; $4af3: $f1
    ldh [$96], a                                  ; $4af4: $e0 $96
    ldh [rSVBK], a                                ; $4af6: $e0 $70
    pop de                                        ; $4af8: $d1
    pop af                                        ; $4af9: $f1
    bit 6, a                                      ; $4afa: $cb $77
    ret z                                         ; $4afc: $c8

    ld hl, $0013                                  ; $4afd: $21 $13 $00
    add hl, de                                    ; $4b00: $19
    ld [hl], $02                                  ; $4b01: $36 $02
    ldh a, [$96]                                  ; $4b03: $f0 $96
    push af                                       ; $4b05: $f5
    ld a, $06                                     ; $4b06: $3e $06
    ldh [$96], a                                  ; $4b08: $e0 $96
    ldh [rSVBK], a                                ; $4b0a: $e0 $70
    ld hl, $c600                                  ; $4b0c: $21 $00 $c6
    ld de, $d680                                  ; $4b0f: $11 $80 $d6
    ld c, $04                                     ; $4b12: $0e $04
    call Call_000_03eb                            ; $4b14: $cd $eb $03
    pop af                                        ; $4b17: $f1
    ldh [$96], a                                  ; $4b18: $e0 $96
    ldh [rSVBK], a                                ; $4b1a: $e0 $70
    ret                                           ; $4b1c: $c9


    dec a                                         ; $4b1d: $3d
    ld c, e                                       ; $4b1e: $4b
    ld e, l                                       ; $4b1f: $5d
    ld c, e                                       ; $4b20: $4b
    ld a, l                                       ; $4b21: $7d
    ld c, e                                       ; $4b22: $4b
    sbc l                                         ; $4b23: $9d
    ld c, e                                       ; $4b24: $4b
    cp l                                          ; $4b25: $bd
    ld c, e                                       ; $4b26: $4b
    db $dd                                        ; $4b27: $dd
    ld c, e                                       ; $4b28: $4b
    db $fd                                        ; $4b29: $fd
    ld c, e                                       ; $4b2a: $4b
    dec e                                         ; $4b2b: $1d
    ld c, h                                       ; $4b2c: $4c

    db $3d, $4c, $5d, $4c

    ld a, l                                       ; $4b31: $7d
    ld c, h                                       ; $4b32: $4c
    sbc l                                         ; $4b33: $9d
    ld c, h                                       ; $4b34: $4c
    cp l                                          ; $4b35: $bd
    ld c, h                                       ; $4b36: $4c
    db $dd                                        ; $4b37: $dd
    ld c, h                                       ; $4b38: $4c
    db $fd                                        ; $4b39: $fd
    ld c, h                                       ; $4b3a: $4c
    dec e                                         ; $4b3b: $1d
    ld c, l                                       ; $4b3c: $4d
    nop                                           ; $4b3d: $00
    nop                                           ; $4b3e: $00
    nop                                           ; $4b3f: $00
    nop                                           ; $4b40: $00
    nop                                           ; $4b41: $00
    nop                                           ; $4b42: $00
    nop                                           ; $4b43: $00
    nop                                           ; $4b44: $00
    nop                                           ; $4b45: $00
    nop                                           ; $4b46: $00
    nop                                           ; $4b47: $00
    nop                                           ; $4b48: $00
    nop                                           ; $4b49: $00
    nop                                           ; $4b4a: $00
    nop                                           ; $4b4b: $00
    nop                                           ; $4b4c: $00
    nop                                           ; $4b4d: $00
    nop                                           ; $4b4e: $00
    ld bc, $0001                                  ; $4b4f: $01 $01 $00
    nop                                           ; $4b52: $00
    nop                                           ; $4b53: $00
    nop                                           ; $4b54: $00
    nop                                           ; $4b55: $00
    nop                                           ; $4b56: $00
    call $fe00                                    ; $4b57: $cd $00 $fe
    ld bc, $0202                                  ; $4b5a: $01 $02 $02
    nop                                           ; $4b5d: $00
    nop                                           ; $4b5e: $00
    nop                                           ; $4b5f: $00
    nop                                           ; $4b60: $00
    nop                                           ; $4b61: $00
    nop                                           ; $4b62: $00
    nop                                           ; $4b63: $00
    nop                                           ; $4b64: $00
    nop                                           ; $4b65: $00
    nop                                           ; $4b66: $00
    nop                                           ; $4b67: $00
    nop                                           ; $4b68: $00
    nop                                           ; $4b69: $00
    nop                                           ; $4b6a: $00
    nop                                           ; $4b6b: $00
    nop                                           ; $4b6c: $00
    ld bc, $0100                                  ; $4b6d: $01 $00 $01
    ld bc, $0000                                  ; $4b70: $01 $00 $00
    nop                                           ; $4b73: $00
    nop                                           ; $4b74: $00
    nop                                           ; $4b75: $00
    nop                                           ; $4b76: $00
    rst $08                                       ; $4b77: $cf
    nop                                           ; $4b78: $00
    cp $00                                        ; $4b79: $fe $00
    ld [bc], a                                    ; $4b7b: $02
    inc bc                                        ; $4b7c: $03
    nop                                           ; $4b7d: $00
    nop                                           ; $4b7e: $00
    nop                                           ; $4b7f: $00
    nop                                           ; $4b80: $00
    nop                                           ; $4b81: $00
    nop                                           ; $4b82: $00
    nop                                           ; $4b83: $00
    nop                                           ; $4b84: $00
    nop                                           ; $4b85: $00
    nop                                           ; $4b86: $00
    nop                                           ; $4b87: $00
    nop                                           ; $4b88: $00
    nop                                           ; $4b89: $00
    nop                                           ; $4b8a: $00
    nop                                           ; $4b8b: $00
    nop                                           ; $4b8c: $00
    ld [bc], a                                    ; $4b8d: $02
    nop                                           ; $4b8e: $00
    ld bc, $0001                                  ; $4b8f: $01 $01 $00
    nop                                           ; $4b92: $00
    nop                                           ; $4b93: $00
    nop                                           ; $4b94: $00
    nop                                           ; $4b95: $00
    nop                                           ; $4b96: $00
    jp nc, $fe00                                  ; $4b97: $d2 $00 $fe

    rst $38                                       ; $4b9a: $ff
    ld [bc], a                                    ; $4b9b: $02
    ld [bc], a                                    ; $4b9c: $02
    nop                                           ; $4b9d: $00
    nop                                           ; $4b9e: $00
    nop                                           ; $4b9f: $00
    nop                                           ; $4ba0: $00
    nop                                           ; $4ba1: $00
    nop                                           ; $4ba2: $00
    nop                                           ; $4ba3: $00
    nop                                           ; $4ba4: $00
    nop                                           ; $4ba5: $00
    nop                                           ; $4ba6: $00
    nop                                           ; $4ba7: $00
    nop                                           ; $4ba8: $00
    nop                                           ; $4ba9: $00
    nop                                           ; $4baa: $00
    nop                                           ; $4bab: $00
    nop                                           ; $4bac: $00
    inc bc                                        ; $4bad: $03
    nop                                           ; $4bae: $00
    ld bc, $0001                                  ; $4baf: $01 $01 $00
    nop                                           ; $4bb2: $00
    nop                                           ; $4bb3: $00
    nop                                           ; $4bb4: $00
    nop                                           ; $4bb5: $00
    nop                                           ; $4bb6: $00
    jp nc, $fe00                                  ; $4bb7: $d2 $00 $fe

    ld [bc], a                                    ; $4bba: $02
    ld bc, $0001                                  ; $4bbb: $01 $01 $00
    nop                                           ; $4bbe: $00
    nop                                           ; $4bbf: $00
    nop                                           ; $4bc0: $00
    nop                                           ; $4bc1: $00
    nop                                           ; $4bc2: $00
    nop                                           ; $4bc3: $00
    nop                                           ; $4bc4: $00
    nop                                           ; $4bc5: $00
    nop                                           ; $4bc6: $00
    nop                                           ; $4bc7: $00
    nop                                           ; $4bc8: $00
    nop                                           ; $4bc9: $00
    nop                                           ; $4bca: $00
    nop                                           ; $4bcb: $00
    nop                                           ; $4bcc: $00
    inc b                                         ; $4bcd: $04
    nop                                           ; $4bce: $00
    inc d                                         ; $4bcf: $14
    ld bc, $0000                                  ; $4bd0: $01 $00 $00
    nop                                           ; $4bd3: $00
    nop                                           ; $4bd4: $00
    nop                                           ; $4bd5: $00
    nop                                           ; $4bd6: $00
    ret z                                         ; $4bd7: $c8

    nop                                           ; $4bd8: $00
    rst $38                                       ; $4bd9: $ff
    ld bc, $0000                                  ; $4bda: $01 $00 $00
    nop                                           ; $4bdd: $00
    nop                                           ; $4bde: $00
    nop                                           ; $4bdf: $00
    nop                                           ; $4be0: $00
    nop                                           ; $4be1: $00
    nop                                           ; $4be2: $00
    nop                                           ; $4be3: $00
    nop                                           ; $4be4: $00
    nop                                           ; $4be5: $00
    nop                                           ; $4be6: $00
    nop                                           ; $4be7: $00
    nop                                           ; $4be8: $00
    nop                                           ; $4be9: $00
    nop                                           ; $4bea: $00
    nop                                           ; $4beb: $00
    nop                                           ; $4bec: $00
    dec b                                         ; $4bed: $05
    nop                                           ; $4bee: $00
    ld e, $01                                     ; $4bef: $1e $01
    nop                                           ; $4bf1: $00
    nop                                           ; $4bf2: $00
    nop                                           ; $4bf3: $00
    nop                                           ; $4bf4: $00
    nop                                           ; $4bf5: $00
    nop                                           ; $4bf6: $00
    call c, $0000                                 ; $4bf7: $dc $00 $00
    nop                                           ; $4bfa: $00
    nop                                           ; $4bfb: $00
    nop                                           ; $4bfc: $00
    nop                                           ; $4bfd: $00
    nop                                           ; $4bfe: $00
    nop                                           ; $4bff: $00
    nop                                           ; $4c00: $00
    nop                                           ; $4c01: $00
    nop                                           ; $4c02: $00
    nop                                           ; $4c03: $00
    nop                                           ; $4c04: $00
    nop                                           ; $4c05: $00
    nop                                           ; $4c06: $00
    nop                                           ; $4c07: $00
    nop                                           ; $4c08: $00
    nop                                           ; $4c09: $00
    nop                                           ; $4c0a: $00
    nop                                           ; $4c0b: $00
    nop                                           ; $4c0c: $00
    ld b, $00                                     ; $4c0d: $06 $00
    jr z, jr_002_4c12                             ; $4c0f: $28 $01

    nop                                           ; $4c11: $00

jr_002_4c12:
    nop                                           ; $4c12: $00
    nop                                           ; $4c13: $00
    nop                                           ; $4c14: $00
    nop                                           ; $4c15: $00
    nop                                           ; $4c16: $00
    ld a, [$0300]                                 ; $4c17: $fa $00 $03
    ld bc, $fefe                                  ; $4c1a: $01 $fe $fe
    nop                                           ; $4c1d: $00
    nop                                           ; $4c1e: $00
    nop                                           ; $4c1f: $00
    nop                                           ; $4c20: $00
    nop                                           ; $4c21: $00
    nop                                           ; $4c22: $00
    nop                                           ; $4c23: $00
    nop                                           ; $4c24: $00
    nop                                           ; $4c25: $00
    nop                                           ; $4c26: $00
    nop                                           ; $4c27: $00
    nop                                           ; $4c28: $00
    nop                                           ; $4c29: $00
    nop                                           ; $4c2a: $00
    nop                                           ; $4c2b: $00
    nop                                           ; $4c2c: $00
    rlca                                          ; $4c2d: $07
    nop                                           ; $4c2e: $00
    ld [hl-], a                                   ; $4c2f: $32
    ld bc, $0000                                  ; $4c30: $01 $00 $00
    nop                                           ; $4c33: $00
    nop                                           ; $4c34: $00
    nop                                           ; $4c35: $00
    nop                                           ; $4c36: $00
    ldh a, [rP1]                                  ; $4c37: $f0 $00
    ld bc, $02ff                                  ; $4c39: $01 $ff $02
    ld [bc], a                                    ; $4c3c: $02

    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $08, $00, $50, $01, $00, $00, $00, $00, $00, $00, $0e, $01, $02, $01, $01, $01
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $09, $00, $0a, $01, $00, $00, $00, $00, $00, $00, $dc, $00, $00, $ff, $01, $01

    nop                                           ; $4c7d: $00
    nop                                           ; $4c7e: $00
    nop                                           ; $4c7f: $00
    nop                                           ; $4c80: $00
    nop                                           ; $4c81: $00
    nop                                           ; $4c82: $00
    nop                                           ; $4c83: $00
    nop                                           ; $4c84: $00
    nop                                           ; $4c85: $00
    nop                                           ; $4c86: $00
    nop                                           ; $4c87: $00
    nop                                           ; $4c88: $00
    nop                                           ; $4c89: $00
    nop                                           ; $4c8a: $00
    nop                                           ; $4c8b: $00
    nop                                           ; $4c8c: $00
    ld a, [bc]                                    ; $4c8d: $0a
    nop                                           ; $4c8e: $00
    ld a, [bc]                                    ; $4c8f: $0a
    ld bc, $0000                                  ; $4c90: $01 $00 $00
    nop                                           ; $4c93: $00
    nop                                           ; $4c94: $00
    nop                                           ; $4c95: $00
    nop                                           ; $4c96: $00
    ld a, [$0100]                                 ; $4c97: $fa $00 $01
    rst $38                                       ; $4c9a: $ff
    rst $38                                       ; $4c9b: $ff
    rst $38                                       ; $4c9c: $ff
    nop                                           ; $4c9d: $00
    nop                                           ; $4c9e: $00
    nop                                           ; $4c9f: $00
    nop                                           ; $4ca0: $00
    nop                                           ; $4ca1: $00
    nop                                           ; $4ca2: $00
    nop                                           ; $4ca3: $00
    nop                                           ; $4ca4: $00
    nop                                           ; $4ca5: $00
    nop                                           ; $4ca6: $00
    nop                                           ; $4ca7: $00
    nop                                           ; $4ca8: $00
    nop                                           ; $4ca9: $00
    nop                                           ; $4caa: $00
    nop                                           ; $4cab: $00
    nop                                           ; $4cac: $00
    dec bc                                        ; $4cad: $0b
    nop                                           ; $4cae: $00
    dec b                                         ; $4caf: $05
    ld bc, $0000                                  ; $4cb0: $01 $00 $00
    nop                                           ; $4cb3: $00
    nop                                           ; $4cb4: $00
    nop                                           ; $4cb5: $00
    nop                                           ; $4cb6: $00
    jp nc, $0000                                  ; $4cb7: $d2 $00 $00

    nop                                           ; $4cba: $00
    nop                                           ; $4cbb: $00
    nop                                           ; $4cbc: $00
    nop                                           ; $4cbd: $00
    nop                                           ; $4cbe: $00
    nop                                           ; $4cbf: $00
    nop                                           ; $4cc0: $00
    nop                                           ; $4cc1: $00
    nop                                           ; $4cc2: $00
    nop                                           ; $4cc3: $00
    nop                                           ; $4cc4: $00
    nop                                           ; $4cc5: $00
    nop                                           ; $4cc6: $00
    nop                                           ; $4cc7: $00
    nop                                           ; $4cc8: $00
    nop                                           ; $4cc9: $00
    nop                                           ; $4cca: $00
    nop                                           ; $4ccb: $00
    nop                                           ; $4ccc: $00
    inc c                                         ; $4ccd: $0c
    nop                                           ; $4cce: $00
    dec b                                         ; $4ccf: $05
    ld bc, $0000                                  ; $4cd0: $01 $00 $00
    nop                                           ; $4cd3: $00
    nop                                           ; $4cd4: $00
    nop                                           ; $4cd5: $00
    nop                                           ; $4cd6: $00
    ld a, [$0000]                                 ; $4cd7: $fa $00 $00
    nop                                           ; $4cda: $00
    nop                                           ; $4cdb: $00
    nop                                           ; $4cdc: $00
    nop                                           ; $4cdd: $00
    nop                                           ; $4cde: $00
    nop                                           ; $4cdf: $00
    nop                                           ; $4ce0: $00
    nop                                           ; $4ce1: $00
    nop                                           ; $4ce2: $00
    nop                                           ; $4ce3: $00
    nop                                           ; $4ce4: $00
    nop                                           ; $4ce5: $00
    nop                                           ; $4ce6: $00
    nop                                           ; $4ce7: $00
    nop                                           ; $4ce8: $00
    nop                                           ; $4ce9: $00
    nop                                           ; $4cea: $00
    nop                                           ; $4ceb: $00
    nop                                           ; $4cec: $00
    dec c                                         ; $4ced: $0d
    nop                                           ; $4cee: $00
    dec b                                         ; $4cef: $05
    ld bc, $0000                                  ; $4cf0: $01 $00 $00
    nop                                           ; $4cf3: $00
    nop                                           ; $4cf4: $00
    nop                                           ; $4cf5: $00
    nop                                           ; $4cf6: $00
    call $0000                                    ; $4cf7: $cd $00 $00
    nop                                           ; $4cfa: $00
    nop                                           ; $4cfb: $00
    nop                                           ; $4cfc: $00
    nop                                           ; $4cfd: $00
    nop                                           ; $4cfe: $00
    nop                                           ; $4cff: $00
    nop                                           ; $4d00: $00
    nop                                           ; $4d01: $00
    nop                                           ; $4d02: $00
    nop                                           ; $4d03: $00
    nop                                           ; $4d04: $00
    nop                                           ; $4d05: $00
    nop                                           ; $4d06: $00
    nop                                           ; $4d07: $00
    nop                                           ; $4d08: $00
    nop                                           ; $4d09: $00
    nop                                           ; $4d0a: $00
    nop                                           ; $4d0b: $00
    nop                                           ; $4d0c: $00
    ld c, $00                                     ; $4d0d: $0e $00
    dec b                                         ; $4d0f: $05
    ld bc, $0000                                  ; $4d10: $01 $00 $00
    nop                                           ; $4d13: $00
    nop                                           ; $4d14: $00
    nop                                           ; $4d15: $00
    nop                                           ; $4d16: $00
    ret z                                         ; $4d17: $c8

    nop                                           ; $4d18: $00
    cp $00                                        ; $4d19: $fe $00
    ld [bc], a                                    ; $4d1b: $02
    ld [bc], a                                    ; $4d1c: $02
    nop                                           ; $4d1d: $00
    nop                                           ; $4d1e: $00
    nop                                           ; $4d1f: $00
    nop                                           ; $4d20: $00
    nop                                           ; $4d21: $00
    nop                                           ; $4d22: $00
    nop                                           ; $4d23: $00
    nop                                           ; $4d24: $00
    nop                                           ; $4d25: $00
    nop                                           ; $4d26: $00
    nop                                           ; $4d27: $00
    nop                                           ; $4d28: $00
    nop                                           ; $4d29: $00
    nop                                           ; $4d2a: $00
    nop                                           ; $4d2b: $00
    nop                                           ; $4d2c: $00
    rrca                                          ; $4d2d: $0f
    nop                                           ; $4d2e: $00
    dec b                                         ; $4d2f: $05
    ld bc, $0000                                  ; $4d30: $01 $00 $00
    nop                                           ; $4d33: $00
    nop                                           ; $4d34: $00
    nop                                           ; $4d35: $00
    nop                                           ; $4d36: $00
    ret z                                         ; $4d37: $c8

    nop                                           ; $4d38: $00
    cp $00                                        ; $4d39: $fe $00
    ld [bc], a                                    ; $4d3b: $02
    ld [bc], a                                    ; $4d3c: $02

    db $45, $4d, $82, $4d

    cp a                                          ; $4d41: $bf
    ld c, l                                       ; $4d42: $4d
    db $fc                                        ; $4d43: $fc
    ld c, l                                       ; $4d44: $4d

    db $ca, $00, $de, $00

    ld a, [c]                                     ; $4d49: $f2
    nop                                           ; $4d4a: $00
    ld a, [bc]                                    ; $4d4b: $0a
    ld bc, $011e                                  ; $4d4c: $01 $1e $01
    dec l                                         ; $4d4f: $2d
    ld bc, $013a                                  ; $4d50: $01 $3a $01
    ld b, a                                       ; $4d53: $47
    ld bc, $0150                                  ; $4d54: $01 $50 $01
    ld e, b                                       ; $4d57: $58
    ld bc, $015e                                  ; $4d58: $01 $5e $01
    ld h, e                                       ; $4d5b: $63
    ld bc, $0166                                  ; $4d5c: $01 $66 $01
    ld l, b                                       ; $4d5f: $68
    db $01                                        ; $4d60: $01

    db $04, $01, $fe

    ei                                            ; $4d64: $fb
    rst $30                                       ; $4d65: $f7
    ld a, [c]                                     ; $4d66: $f2
    db $ec                                        ; $4d67: $ec
    push hl                                       ; $4d68: $e5
    add c                                         ; $4d69: $81

    db $04, $fc

    db $f4                                        ; $4d6c: $f4
    db $ea                                        ; $4d6d: $ea
    add c                                         ; $4d6e: $81

    db $0e, $0b, $05, $fe

    db $fc                                        ; $4d73: $fc
    ld hl, sp-$0d                                 ; $4d74: $f8 $f3
    add sp, -$7f                                  ; $4d76: $e8 $81
    inc b                                         ; $4d78: $04
    inc b                                         ; $4d79: $04
    inc bc                                        ; $4d7a: $03

    db $02

    ld bc, $ff00                                  ; $4d7c: $01 $00 $ff
    db $fd                                        ; $4d7f: $fd
    db $fc                                        ; $4d80: $fc

    db $00, $c8, $00, $db, $00

    db $ed                                        ; $4d86: $ed
    nop                                           ; $4d87: $00
    nop                                           ; $4d88: $00
    ld bc, $0111                                  ; $4d89: $01 $11 $01
    ld hl, $3101                                  ; $4d8c: $21 $01 $31
    ld bc, $0140                                  ; $4d8f: $01 $40 $01
    ld c, d                                       ; $4d92: $4a
    ld bc, $0152                                  ; $4d93: $01 $52 $01
    ld e, b                                       ; $4d96: $58
    ld bc, $015c                                  ; $4d97: $01 $5c $01
    ld e, [hl]                                    ; $4d9a: $5e
    ld bc, $0160                                  ; $4d9b: $01 $60 $01

    db $06, $04, $02, $ff

    db $fc                                        ; $4da2: $fc
    ld hl, sp-$0d                                 ; $4da3: $f8 $f3
    db $ed                                        ; $4da5: $ed
    add c                                         ; $4da6: $81

    db $fd

    or $ec                                        ; $4da8: $f6 $ec
    ldh [$81], a                                  ; $4daa: $e0 $81

    db $06, $fe

    db $fc                                        ; $4dae: $fc
    ld hl, sp-$0d                                 ; $4daf: $f8 $f3
    db $ed                                        ; $4db1: $ed
    and $de                                       ; $4db2: $e6 $de
    add c                                         ; $4db4: $81
    inc b                                         ; $4db5: $04

    db $03

    ld [bc], a                                    ; $4db7: $02
    ld bc, $ff00                                  ; $4db8: $01 $00 $ff
    cp $fd                                        ; $4dbb: $fe $fd
    db $fc                                        ; $4dbd: $fc

    db $02

    call z, $df00                                 ; $4dbf: $cc $00 $df
    nop                                           ; $4dc2: $00
    ldh a, [rP1]                                  ; $4dc3: $f0 $00
    ld [bc], a                                    ; $4dc5: $02
    ld bc, $0114                                  ; $4dc6: $01 $14 $01
    inc h                                         ; $4dc9: $24
    ld bc, $0132                                  ; $4dca: $01 $32 $01
    ld a, $01                                     ; $4dcd: $3e $01
    ld c, b                                       ; $4dcf: $48
    ld bc, $0150                                  ; $4dd0: $01 $50 $01
    ld d, [hl]                                    ; $4dd3: $56
    ld bc, $015a                                  ; $4dd4: $01 $5a $01
    ld e, h                                       ; $4dd7: $5c
    ld bc, $015e                                  ; $4dd8: $01 $5e $01
    dec b                                         ; $4ddb: $05
    inc bc                                        ; $4ddc: $03
    ld bc, $fbfe                                  ; $4ddd: $01 $fe $fb
    rst $30                                       ; $4de0: $f7
    pop af                                        ; $4de1: $f1
    ld [$0181], a                                 ; $4de2: $ea $81 $01
    ld a, [$e5f0]                                 ; $4de5: $fa $f0 $e5
    add c                                         ; $4de8: $81
    rlca                                          ; $4de9: $07
    ld bc, $fcfe                                  ; $4dea: $01 $fe $fc
    ld hl, sp-$0e                                 ; $4ded: $f8 $f2
    ld [$81e0], a                                 ; $4def: $ea $e0 $81
    inc b                                         ; $4df2: $04
    inc bc                                        ; $4df3: $03
    inc bc                                        ; $4df4: $03
    ld [bc], a                                    ; $4df5: $02
    ld bc, $ff00                                  ; $4df6: $01 $00 $ff
    db $fd                                        ; $4df9: $fd
    db $fc                                        ; $4dfa: $fc
    ld bc, $00cd                                  ; $4dfb: $01 $cd $00
    ld [c], a                                     ; $4dfe: $e2
    nop                                           ; $4dff: $00
    or $00                                        ; $4e00: $f6 $00
    ld b, $01                                     ; $4e02: $06 $01
    jr @+$03                                      ; $4e04: $18 $01

    jr z, @+$03                                   ; $4e06: $28 $01

    ld [hl], $01                                  ; $4e08: $36 $01
    ld b, e                                       ; $4e0a: $43
    ld bc, HeaderMaskROMVersion                   ; $4e0b: $01 $4c $01
    ld d, h                                       ; $4e0e: $54
    ld bc, $015a                                  ; $4e0f: $01 $5a $01
    ld e, [hl]                                    ; $4e12: $5e
    ld bc, $0161                                  ; $4e13: $01 $61 $01
    ld h, e                                       ; $4e16: $63
    ld bc, $0103                                  ; $4e17: $01 $03 $01
    db $fd                                        ; $4e1a: $fd
    ld sp, hl                                     ; $4e1b: $f9
    db $f4                                        ; $4e1c: $f4
    xor $e7                                       ; $4e1d: $ee $e7
    rst $18                                       ; $4e1f: $df
    add c                                         ; $4e20: $81
    ld b, $01                                     ; $4e21: $06 $01
    ld hl, sp-$14                                 ; $4e23: $f8 $ec
    add c                                         ; $4e25: $81
    ld a, [bc]                                    ; $4e26: $0a
    inc b                                         ; $4e27: $04
    rst $38                                       ; $4e28: $ff
    db $fd                                        ; $4e29: $fd
    ld sp, hl                                     ; $4e2a: $f9
    db $f4                                        ; $4e2b: $f4
    xor $e7                                       ; $4e2c: $ee $e7
    add c                                         ; $4e2e: $81
    inc b                                         ; $4e2f: $04
    inc bc                                        ; $4e30: $03
    ld [bc], a                                    ; $4e31: $02
    ld bc, $ff00                                  ; $4e32: $01 $00 $ff
    cp $fd                                        ; $4e35: $fe $fd
    db $fc                                        ; $4e37: $fc
    nop                                           ; $4e38: $00

Call_002_4e39:
    ld bc, $c800                                  ; $4e39: $01 $00 $c8
    ret                                           ; $4e3c: $c9


    ld hl, $c800                                  ; $4e3d: $21 $00 $c8
    ld c, $20                                     ; $4e40: $0e $20
    call Call_000_03a7                            ; $4e42: $cd $a7 $03
    ld a, $00                                     ; $4e45: $3e $00
    ld d, $00                                     ; $4e47: $16 $00
    call Call_002_4e82                            ; $4e49: $cd $82 $4e
    ld hl, $c450                                  ; $4e4c: $21 $50 $c4
    ld [hl], $00                                  ; $4e4f: $36 $00
    ld hl, $c46a                                  ; $4e51: $21 $6a $c4
    ld [hl], $02                                  ; $4e54: $36 $02
    rst $28                                       ; $4e56: $ef

    db $c0, $01

    rst $20                                       ; $4e59: $e7

    db $e0, $01

    ret                                           ; $4e5c: $c9


Call_002_4e5d:
    push af                                       ; $4e5d: $f5
    ld hl, $0010                                  ; $4e5e: $21 $10 $00
    add hl, bc                                    ; $4e61: $09
    ld a, [hl]                                    ; $4e62: $7e
    and $03                                       ; $4e63: $e6 $03
    add a                                         ; $4e65: $87
    ld hl, $4d3d                                  ; $4e66: $21 $3d $4d
    add l                                         ; $4e69: $85
    ld l, a                                       ; $4e6a: $6f
    jr nc, jr_002_4e6e                            ; $4e6b: $30 $01

    inc h                                         ; $4e6d: $24

jr_002_4e6e:
    ld a, [hl+]                                   ; $4e6e: $2a
    ld h, [hl]                                    ; $4e6f: $66
    ld l, a                                       ; $4e70: $6f
    pop af                                        ; $4e71: $f1
    add l                                         ; $4e72: $85
    ld l, a                                       ; $4e73: $6f
    jr nc, jr_002_4e77                            ; $4e74: $30 $01

    inc h                                         ; $4e76: $24

jr_002_4e77:
    ret                                           ; $4e77: $c9


Call_002_4e78:
    bit 7, l                                      ; $4e78: $cb $7d
    jr nz, jr_002_4e7f                            ; $4e7a: $20 $03

    ld h, $00                                     ; $4e7c: $26 $00
    ret                                           ; $4e7e: $c9


jr_002_4e7f:
    ld h, $ff                                     ; $4e7f: $26 $ff
    ret                                           ; $4e81: $c9


Call_002_4e82:
    push af                                       ; $4e82: $f5
    ld e, d                                       ; $4e83: $5a
    ld a, d                                       ; $4e84: $7a
    and $03                                       ; $4e85: $e6 $03
    ld d, a                                       ; $4e87: $57
    pop af                                        ; $4e88: $f1
    call Call_002_4e39                            ; $4e89: $cd $39 $4e
    push bc                                       ; $4e8c: $c5
    ld l, c                                       ; $4e8d: $69
    ld h, b                                       ; $4e8e: $60
    ld c, $04                                     ; $4e8f: $0e $04
    call Call_000_03a7                            ; $4e91: $cd $a7 $03
    pop bc                                        ; $4e94: $c1
    ld hl, $0010                                  ; $4e95: $21 $10 $00
    add hl, bc                                    ; $4e98: $09
    ld [hl], e                                    ; $4e99: $73
    ld a, d                                       ; $4e9a: $7a
    ld hl, $0043                                  ; $4e9b: $21 $43 $00
    add l                                         ; $4e9e: $85
    ld l, a                                       ; $4e9f: $6f
    jr nc, jr_002_4ea3                            ; $4ea0: $30 $01

    inc h                                         ; $4ea2: $24

jr_002_4ea3:
    ld de, $c800                                  ; $4ea3: $11 $00 $c8
    rst $18                                       ; $4ea6: $df

    db $5c, $05

    ld hl, $0012                                  ; $4ea9: $21 $12 $00
    add hl, bc                                    ; $4eac: $09
    ld [hl], $00                                  ; $4ead: $36 $00
    ld hl, $0025                                  ; $4eaf: $21 $25 $00
    add hl, bc                                    ; $4eb2: $09
    ld [hl], $06                                  ; $4eb3: $36 $06
    ld a, $3c                                     ; $4eb5: $3e $3c
    call Call_002_4e5d                            ; $4eb7: $cd $5d $4e
    ld a, [hl]                                    ; $4eba: $7e
    cp $02                                        ; $4ebb: $fe $02
    jr c, jr_002_4ec3                             ; $4ebd: $38 $04

    call Call_000_0a61                            ; $4ebf: $cd $61 $0a
    ld a, h                                       ; $4ec2: $7c

jr_002_4ec3:
    and $01                                       ; $4ec3: $e6 $01
    ld d, a                                       ; $4ec5: $57
    ld hl, $0019                                  ; $4ec6: $21 $19 $00
    add hl, bc                                    ; $4ec9: $09
    ld a, [hl]                                    ; $4eca: $7e
    and $fe                                       ; $4ecb: $e6 $fe
    or d                                          ; $4ecd: $b2
    ld [hl], a                                    ; $4ece: $77
    ld d, $ff                                     ; $4ecf: $16 $ff
    call Call_002_4ffa                            ; $4ed1: $cd $fa $4f
    ld a, $01                                     ; $4ed4: $3e $01
    ld [$c82d], a                                 ; $4ed6: $ea $2d $c8
    ret                                           ; $4ed9: $c9


Call_002_4eda:
    push hl                                       ; $4eda: $e5
    ld de, $ff88                                  ; $4edb: $11 $88 $ff
    add hl, de                                    ; $4ede: $19
    bit 7, h                                      ; $4edf: $cb $7c
    pop hl                                        ; $4ee1: $e1
    jr z, jr_002_4ef0                             ; $4ee2: $28 $0c

    push hl                                       ; $4ee4: $e5
    ld de, $0078                                  ; $4ee5: $11 $78 $00
    add hl, de                                    ; $4ee8: $19
    bit 7, h                                      ; $4ee9: $cb $7c
    pop hl                                        ; $4eeb: $e1
    jr nz, jr_002_4ef0                            ; $4eec: $20 $02

    ld d, l                                       ; $4eee: $55
    ret                                           ; $4eef: $c9


jr_002_4ef0:
    ld d, $78                                     ; $4ef0: $16 $78
    ret                                           ; $4ef2: $c9


    ld d, $88                                     ; $4ef3: $16 $88
    ret                                           ; $4ef5: $c9


Call_002_4ef6:
    call Call_002_4e39                            ; $4ef6: $cd $39 $4e
    ld hl, $0012                                  ; $4ef9: $21 $12 $00
    add hl, bc                                    ; $4efc: $09
    dec [hl]                                      ; $4efd: $35
    call Call_002_4f07                            ; $4efe: $cd $07 $4f
    ld hl, $0012                                  ; $4f01: $21 $12 $00
    add hl, bc                                    ; $4f04: $09
    inc [hl]                                      ; $4f05: $34
    ret                                           ; $4f06: $c9


Call_002_4f07:
    ld hl, $0020                                  ; $4f07: $21 $20 $00
    add hl, bc                                    ; $4f0a: $09
    ld a, [hl]                                    ; $4f0b: $7e
    and $07                                       ; $4f0c: $e6 $07
    push af                                       ; $4f0e: $f5
    ld a, [hl]                                    ; $4f0f: $7e
    srl a                                         ; $4f10: $cb $3f
    srl a                                         ; $4f12: $cb $3f
    srl a                                         ; $4f14: $cb $3f
    push af                                       ; $4f16: $f5
    ld a, $00                                     ; $4f17: $3e $00
    call Call_002_4e5d                            ; $4f19: $cd $5d $4e
    pop af                                        ; $4f1c: $f1
    add a                                         ; $4f1d: $87
    add l                                         ; $4f1e: $85
    ld l, a                                       ; $4f1f: $6f
    jr nc, jr_002_4f23                            ; $4f20: $30 $01

    inc h                                         ; $4f22: $24

jr_002_4f23:
    ld e, [hl]                                    ; $4f23: $5e
    inc hl                                        ; $4f24: $23
    ld d, [hl]                                    ; $4f25: $56
    inc hl                                        ; $4f26: $23
    ld a, [hl+]                                   ; $4f27: $2a
    ld h, [hl]                                    ; $4f28: $66
    ld l, a                                       ; $4f29: $6f
    call Call_000_08ac                            ; $4f2a: $cd $ac $08
    pop af                                        ; $4f2d: $f1
    call Call_000_08b9                            ; $4f2e: $cd $b9 $08
    srl h                                         ; $4f31: $cb $3c
    rr l                                          ; $4f33: $cb $1d
    srl h                                         ; $4f35: $cb $3c
    rr l                                          ; $4f37: $cb $1d
    srl h                                         ; $4f39: $cb $3c
    rr l                                          ; $4f3b: $cb $1d
    add hl, de                                    ; $4f3d: $19
    ld e, l                                       ; $4f3e: $5d
    ld d, h                                       ; $4f3f: $54
    ld hl, $001a                                  ; $4f40: $21 $1a $00
    add hl, bc                                    ; $4f43: $09
    ld [hl], e                                    ; $4f44: $73
    inc hl                                        ; $4f45: $23
    ld [hl], d                                    ; $4f46: $72
    ld hl, $0012                                  ; $4f47: $21 $12 $00
    add hl, bc                                    ; $4f4a: $09
    ld e, [hl]                                    ; $4f4b: $5e
    ld d, $00                                     ; $4f4c: $16 $00
    ld hl, $0021                                  ; $4f4e: $21 $21 $00
    add hl, bc                                    ; $4f51: $09
    ld l, [hl]                                    ; $4f52: $6e
    call Call_002_4e78                            ; $4f53: $cd $78 $4e
    ld a, $03                                     ; $4f56: $3e $03
    call Call_000_0bb5                            ; $4f58: $cd $b5 $0b
    call Call_000_08ac                            ; $4f5b: $cd $ac $08
    call Call_002_4eda                            ; $4f5e: $cd $da $4e
    ld a, $1c                                     ; $4f61: $3e $1c
    call Call_002_4e5d                            ; $4f63: $cd $5d $4e
    ld e, $00                                     ; $4f66: $1e $00

jr_002_4f68:
    ld a, d                                       ; $4f68: $7a
    sub [hl]                                      ; $4f69: $96
    bit 7, a                                      ; $4f6a: $cb $7f
    jr z, jr_002_4f72                             ; $4f6c: $28 $04

    inc e                                         ; $4f6e: $1c
    inc hl                                        ; $4f6f: $23
    jr jr_002_4f68                                ; $4f70: $18 $f6

jr_002_4f72:
    ld hl, $001c                                  ; $4f72: $21 $1c $00
    add hl, bc                                    ; $4f75: $09
    ld a, e                                       ; $4f76: $7b
    sub $04                                       ; $4f77: $d6 $04
    ld [hl], a                                    ; $4f79: $77
    ld hl, $0012                                  ; $4f7a: $21 $12 $00
    add hl, bc                                    ; $4f7d: $09
    ld e, [hl]                                    ; $4f7e: $5e
    ld d, $00                                     ; $4f7f: $16 $00
    ld hl, $0022                                  ; $4f81: $21 $22 $00
    add hl, bc                                    ; $4f84: $09
    ld l, [hl]                                    ; $4f85: $6e
    call Call_002_4e78                            ; $4f86: $cd $78 $4e
    ld a, $04                                     ; $4f89: $3e $04
    call Call_000_0bb5                            ; $4f8b: $cd $b5 $0b
    call Call_000_08ac                            ; $4f8e: $cd $ac $08
    call Call_002_4eda                            ; $4f91: $cd $da $4e
    ld a, $25                                     ; $4f94: $3e $25
    call Call_002_4e5d                            ; $4f96: $cd $5d $4e
    ld e, $00                                     ; $4f99: $1e $00

jr_002_4f9b:
    ld a, d                                       ; $4f9b: $7a
    sub [hl]                                      ; $4f9c: $96
    bit 7, a                                      ; $4f9d: $cb $7f
    jr z, jr_002_4fa5                             ; $4f9f: $28 $04

    inc e                                         ; $4fa1: $1c
    inc hl                                        ; $4fa2: $23
    jr jr_002_4f9b                                ; $4fa3: $18 $f6

jr_002_4fa5:
    ld hl, $0019                                  ; $4fa5: $21 $19 $00
    add hl, bc                                    ; $4fa8: $09
    bit 0, [hl]                                   ; $4fa9: $cb $46
    jr z, jr_002_4fb1                             ; $4fab: $28 $04

    ld a, e                                       ; $4fad: $7b
    cpl                                           ; $4fae: $2f
    inc a                                         ; $4faf: $3c
    ld e, a                                       ; $4fb0: $5f

jr_002_4fb1:
    ld hl, $001d                                  ; $4fb1: $21 $1d $00
    add hl, bc                                    ; $4fb4: $09
    ld [hl], e                                    ; $4fb5: $73
    ld hl, $0012                                  ; $4fb6: $21 $12 $00
    add hl, bc                                    ; $4fb9: $09
    ld e, [hl]                                    ; $4fba: $5e
    ld d, $00                                     ; $4fbb: $16 $00
    ld hl, $0024                                  ; $4fbd: $21 $24 $00
    add hl, bc                                    ; $4fc0: $09
    ld l, [hl]                                    ; $4fc1: $6e
    call Call_002_4e78                            ; $4fc2: $cd $78 $4e
    ld a, $05                                     ; $4fc5: $3e $05
    call Call_000_0bb5                            ; $4fc7: $cd $b5 $0b
    call Call_000_08ac                            ; $4fca: $cd $ac $08
    call Call_002_4eda                            ; $4fcd: $cd $da $4e
    ld a, $2a                                     ; $4fd0: $3e $2a
    call Call_002_4e5d                            ; $4fd2: $cd $5d $4e
    ld e, $00                                     ; $4fd5: $1e $00

jr_002_4fd7:
    ld a, d                                       ; $4fd7: $7a
    sub [hl]                                      ; $4fd8: $96
    bit 7, a                                      ; $4fd9: $cb $7f
    jr z, jr_002_4fe1                             ; $4fdb: $28 $04

    inc e                                         ; $4fdd: $1c
    inc hl                                        ; $4fde: $23
    jr jr_002_4fd7                                ; $4fdf: $18 $f6

jr_002_4fe1:
    ld hl, $001f                                  ; $4fe1: $21 $1f $00
    add hl, bc                                    ; $4fe4: $09
    ld a, e                                       ; $4fe5: $7b
    sub $04                                       ; $4fe6: $d6 $04
    cpl                                           ; $4fe8: $2f
    inc a                                         ; $4fe9: $3c
    ld [hl], a                                    ; $4fea: $77
    ld a, $33                                     ; $4feb: $3e $33
    call Call_002_4e5d                            ; $4fed: $cd $5d $4e
    ld d, $00                                     ; $4ff0: $16 $00
    add hl, de                                    ; $4ff2: $19
    ld d, [hl]                                    ; $4ff3: $56
    ld hl, $001e                                  ; $4ff4: $21 $1e $00
    add hl, bc                                    ; $4ff7: $09
    ld [hl], d                                    ; $4ff8: $72
    ret                                           ; $4ff9: $c9


Call_002_4ffa:
    call Call_002_4e39                            ; $4ffa: $cd $39 $4e

Call_002_4ffd:
    ld hl, $0012                                  ; $4ffd: $21 $12 $00
    add hl, bc                                    ; $5000: $09
    ld a, [hl]                                    ; $5001: $7e
    cp $63                                        ; $5002: $fe $63
    jp nc, Jump_002_503b                          ; $5004: $d2 $3b $50

    ld a, d                                       ; $5007: $7a
    or a                                          ; $5008: $b7
    jr nz, jr_002_5012                            ; $5009: $20 $07

    ld hl, $0020                                  ; $500b: $21 $20 $00
    add hl, bc                                    ; $500e: $09
    inc [hl]                                      ; $500f: $34
    jr jr_002_5033                                ; $5010: $18 $21

jr_002_5012:
    cp $01                                        ; $5012: $fe $01
    jr nz, jr_002_501d                            ; $5014: $20 $07

    ld hl, $0021                                  ; $5016: $21 $21 $00
    add hl, bc                                    ; $5019: $09
    inc [hl]                                      ; $501a: $34
    jr jr_002_5033                                ; $501b: $18 $16

jr_002_501d:
    cp $02                                        ; $501d: $fe $02
    jr nz, jr_002_5028                            ; $501f: $20 $07

    ld hl, $0022                                  ; $5021: $21 $22 $00
    add hl, bc                                    ; $5024: $09
    inc [hl]                                      ; $5025: $34
    jr jr_002_5033                                ; $5026: $18 $0b

jr_002_5028:
    cp $03                                        ; $5028: $fe $03
    jr nz, jr_002_5033                            ; $502a: $20 $07

    ld hl, $0024                                  ; $502c: $21 $24 $00
    add hl, bc                                    ; $502f: $09
    inc [hl]                                      ; $5030: $34
    jr jr_002_5033                                ; $5031: $18 $00

jr_002_5033:
    call Call_002_4f07                            ; $5033: $cd $07 $4f
    ld hl, $0012                                  ; $5036: $21 $12 $00
    add hl, bc                                    ; $5039: $09
    inc [hl]                                      ; $503a: $34

Jump_002_503b:
    ret                                           ; $503b: $c9


    ld e, a                                       ; $503c: $5f
    ld a, l                                       ; $503d: $7d
    ldh [$b0], a                                  ; $503e: $e0 $b0
    ld a, h                                       ; $5040: $7c
    ldh [$b1], a                                  ; $5041: $e0 $b1
    add sp, -$30                                  ; $5043: $e8 $d0
    ld hl, sp+$00                                 ; $5045: $f8 $00
    ld a, l                                       ; $5047: $7d
    ldh [$b2], a                                  ; $5048: $e0 $b2
    ld a, h                                       ; $504a: $7c
    ldh [$b3], a                                  ; $504b: $e0 $b3
    ld a, e                                       ; $504d: $7b
    call Call_002_4e39                            ; $504e: $cd $39 $4e
    push bc                                       ; $5051: $c5
    push de                                       ; $5052: $d5
    ld e, l                                       ; $5053: $5d
    ld d, h                                       ; $5054: $54
    ld l, c                                       ; $5055: $69
    ld h, b                                       ; $5056: $60
    ld bc, $0003                                  ; $5057: $01 $03 $00
    call Call_000_03eb                            ; $505a: $cd $eb $03
    pop de                                        ; $505d: $d1
    pop bc                                        ; $505e: $c1
    call Call_002_4ffd                            ; $505f: $cd $fd $4f
    ld hl, $ffb2                                  ; $5062: $21 $b2 $ff
    ld a, [hl+]                                   ; $5065: $2a
    ld h, [hl]                                    ; $5066: $66
    ld l, a                                       ; $5067: $6f
    ld de, $001a                                  ; $5068: $11 $1a $00
    add hl, de                                    ; $506b: $19
    ld a, [hl+]                                   ; $506c: $2a
    ld h, [hl]                                    ; $506d: $66
    ld l, a                                       ; $506e: $6f
    push hl                                       ; $506f: $e5
    ld hl, $001a                                  ; $5070: $21 $1a $00
    add hl, bc                                    ; $5073: $09
    ld a, [hl+]                                   ; $5074: $2a
    ld h, [hl]                                    ; $5075: $66
    ld l, a                                       ; $5076: $6f
    pop de                                        ; $5077: $d1
    call Call_000_08ac                            ; $5078: $cd $ac $08
    ld d, l                                       ; $507b: $55
    ld hl, $ffb0                                  ; $507c: $21 $b0 $ff
    ld a, [hl+]                                   ; $507f: $2a
    ld h, [hl]                                    ; $5080: $66
    ld l, a                                       ; $5081: $6f
    ld [hl], d                                    ; $5082: $72
    ld a, l                                       ; $5083: $7d
    ldh [$b0], a                                  ; $5084: $e0 $b0
    ld a, h                                       ; $5086: $7c
    ldh [$b1], a                                  ; $5087: $e0 $b1
    ld hl, $ffb2                                  ; $5089: $21 $b2 $ff
    ld a, [hl+]                                   ; $508c: $2a
    ld h, [hl]                                    ; $508d: $66
    ld l, a                                       ; $508e: $6f
    ld de, $001c                                  ; $508f: $11 $1c $00
    add hl, de                                    ; $5092: $19
    ld d, [hl]                                    ; $5093: $56
    ld hl, $001c                                  ; $5094: $21 $1c $00
    add hl, bc                                    ; $5097: $09
    ld a, [hl]                                    ; $5098: $7e
    sub d                                         ; $5099: $92
    ld d, a                                       ; $509a: $57
    ld hl, $ffb0                                  ; $509b: $21 $b0 $ff
    ld a, [hl+]                                   ; $509e: $2a
    ld h, [hl]                                    ; $509f: $66
    ld l, a                                       ; $50a0: $6f
    inc hl                                        ; $50a1: $23
    ld [hl], d                                    ; $50a2: $72
    ld a, l                                       ; $50a3: $7d
    ldh [$b0], a                                  ; $50a4: $e0 $b0
    ld a, h                                       ; $50a6: $7c
    ldh [$b1], a                                  ; $50a7: $e0 $b1
    ld hl, $ffb2                                  ; $50a9: $21 $b2 $ff
    ld a, [hl+]                                   ; $50ac: $2a
    ld h, [hl]                                    ; $50ad: $66
    ld l, a                                       ; $50ae: $6f
    ld de, $001d                                  ; $50af: $11 $1d $00
    add hl, de                                    ; $50b2: $19
    ld d, [hl]                                    ; $50b3: $56
    ld hl, $001d                                  ; $50b4: $21 $1d $00
    add hl, bc                                    ; $50b7: $09
    ld a, [hl]                                    ; $50b8: $7e
    sub d                                         ; $50b9: $92
    ld d, a                                       ; $50ba: $57
    ld hl, $ffb0                                  ; $50bb: $21 $b0 $ff
    ld a, [hl+]                                   ; $50be: $2a
    ld h, [hl]                                    ; $50bf: $66
    ld l, a                                       ; $50c0: $6f
    inc hl                                        ; $50c1: $23
    ld [hl], d                                    ; $50c2: $72
    ld a, l                                       ; $50c3: $7d
    ldh [$b0], a                                  ; $50c4: $e0 $b0
    ld a, h                                       ; $50c6: $7c
    ldh [$b1], a                                  ; $50c7: $e0 $b1
    ld hl, $ffb2                                  ; $50c9: $21 $b2 $ff
    ld a, [hl+]                                   ; $50cc: $2a
    ld h, [hl]                                    ; $50cd: $66
    ld l, a                                       ; $50ce: $6f
    ld de, $001e                                  ; $50cf: $11 $1e $00
    add hl, de                                    ; $50d2: $19
    ld d, [hl]                                    ; $50d3: $56
    ld hl, $001e                                  ; $50d4: $21 $1e $00
    add hl, bc                                    ; $50d7: $09
    ld a, [hl]                                    ; $50d8: $7e
    sub d                                         ; $50d9: $92
    ld d, a                                       ; $50da: $57
    ld hl, $ffb0                                  ; $50db: $21 $b0 $ff
    ld a, [hl+]                                   ; $50de: $2a
    ld h, [hl]                                    ; $50df: $66
    ld l, a                                       ; $50e0: $6f
    inc hl                                        ; $50e1: $23
    ld [hl], d                                    ; $50e2: $72
    ld a, l                                       ; $50e3: $7d
    ldh [$b0], a                                  ; $50e4: $e0 $b0
    ld a, h                                       ; $50e6: $7c
    ldh [$b1], a                                  ; $50e7: $e0 $b1
    ld hl, $ffb2                                  ; $50e9: $21 $b2 $ff
    ld a, [hl+]                                   ; $50ec: $2a
    ld h, [hl]                                    ; $50ed: $66
    ld l, a                                       ; $50ee: $6f
    ld de, $001f                                  ; $50ef: $11 $1f $00
    add hl, de                                    ; $50f2: $19
    ld d, [hl]                                    ; $50f3: $56
    ld hl, $001f                                  ; $50f4: $21 $1f $00
    add hl, bc                                    ; $50f7: $09
    ld a, [hl]                                    ; $50f8: $7e
    sub d                                         ; $50f9: $92
    ld d, a                                       ; $50fa: $57
    ld hl, $ffb0                                  ; $50fb: $21 $b0 $ff
    ld a, [hl+]                                   ; $50fe: $2a
    ld h, [hl]                                    ; $50ff: $66
    ld l, a                                       ; $5100: $6f
    inc hl                                        ; $5101: $23
    ld [hl], d                                    ; $5102: $72
    ld a, l                                       ; $5103: $7d
    ldh [$b0], a                                  ; $5104: $e0 $b0
    ld a, h                                       ; $5106: $7c
    ldh [$b1], a                                  ; $5107: $e0 $b1
    ld hl, $ffb2                                  ; $5109: $21 $b2 $ff
    ld a, [hl+]                                   ; $510c: $2a
    ld h, [hl]                                    ; $510d: $66
    ld l, a                                       ; $510e: $6f
    ld e, c                                       ; $510f: $59
    ld d, b                                       ; $5110: $50
    ld bc, $0003                                  ; $5111: $01 $03 $00
    call Call_000_03eb                            ; $5114: $cd $eb $03
    add sp, $30                                   ; $5117: $e8 $30
    ret                                           ; $5119: $c9


Call_002_511a:
    or a                                          ; $511a: $b7
    jr z, jr_002_513d                             ; $511b: $28 $20

    push af                                       ; $511d: $f5
    push bc                                       ; $511e: $c5
    push de                                       ; $511f: $d5
    push hl                                       ; $5120: $e5
    ld hl, $5171                                  ; $5121: $21 $71 $51
    add a                                         ; $5124: $87
    add l                                         ; $5125: $85
    ld l, a                                       ; $5126: $6f
    ld a, h                                       ; $5127: $7c
    adc $00                                       ; $5128: $ce $00
    ld h, a                                       ; $512a: $67
    ld a, [hl+]                                   ; $512b: $2a
    ld d, [hl]                                    ; $512c: $56
    ld e, a                                       ; $512d: $5f
    pop hl                                        ; $512e: $e1
    call Call_000_0cb5                            ; $512f: $cd $b5 $0c
    ldh a, [$a9]                                  ; $5132: $f0 $a9
    bit 7, a                                      ; $5134: $cb $7f
    jr z, jr_002_5139                             ; $5136: $28 $01

    inc hl                                        ; $5138: $23

jr_002_5139:
    pop de                                        ; $5139: $d1
    pop bc                                        ; $513a: $c1
    pop af                                        ; $513b: $f1
    ret                                           ; $513c: $c9


jr_002_513d:
    push af                                       ; $513d: $f5
    push bc                                       ; $513e: $c5
    push de                                       ; $513f: $d5
    bit 1, b                                      ; $5140: $cb $48
    jr z, jr_002_515c                             ; $5142: $28 $18

    push hl                                       ; $5144: $e5
    ld de, $1999                                  ; $5145: $11 $99 $19
    call Call_000_0cb5                            ; $5148: $cd $b5 $0c
    pop de                                        ; $514b: $d1
    add hl, de                                    ; $514c: $19
    push hl                                       ; $514d: $e5
    ld de, $fe70                                  ; $514e: $11 $70 $fe
    add hl, de                                    ; $5151: $19
    bit 7, h                                      ; $5152: $cb $7c
    pop hl                                        ; $5154: $e1
    jr nz, jr_002_516d                            ; $5155: $20 $16

    ld hl, $0190                                  ; $5157: $21 $90 $01
    jr jr_002_516d                                ; $515a: $18 $11

jr_002_515c:
    bit 2, b                                      ; $515c: $cb $50
    jr z, jr_002_516d                             ; $515e: $28 $0d

    ld de, $f333                                  ; $5160: $11 $33 $f3
    call Call_000_0cb5                            ; $5163: $cd $b5 $0c
    ldh a, [$a9]                                  ; $5166: $f0 $a9
    bit 7, a                                      ; $5168: $cb $7f
    jr z, jr_002_516d                             ; $516a: $28 $01

    inc hl                                        ; $516c: $23

jr_002_516d:
    pop de                                        ; $516d: $d1
    pop bc                                        ; $516e: $c1
    pop af                                        ; $516f: $f1
    ret                                           ; $5170: $c9


    nop                                           ; $5171: $00
    nop                                           ; $5172: $00

    db $8c, $ee, $17, $dd, $a3, $cb, $00, $c0, $5d, $b4, $ba, $a8, $17, $9d, $74, $91
    db $d1, $85, $2f, $7a, $ba, $68, $74, $51

Call_002_518b:
    cp $0d                                        ; $518b: $fe $0d
    jr z, jr_002_51b8                             ; $518d: $28 $29

    push af                                       ; $518f: $f5
    push bc                                       ; $5190: $c5
    push de                                       ; $5191: $d5
    push hl                                       ; $5192: $e5
    ld hl, $51dc                                  ; $5193: $21 $dc $51
    add a                                         ; $5196: $87
    add l                                         ; $5197: $85
    ld l, a                                       ; $5198: $6f
    ld a, h                                       ; $5199: $7c
    adc $00                                       ; $519a: $ce $00
    ld h, a                                       ; $519c: $67
    ld a, [hl+]                                   ; $519d: $2a
    ld d, [hl]                                    ; $519e: $56
    ld e, a                                       ; $519f: $5f
    pop hl                                        ; $51a0: $e1
    ld a, l                                       ; $51a1: $7d
    add $08                                       ; $51a2: $c6 $08
    and $0f                                       ; $51a4: $e6 $0f
    ld hl, $51bc                                  ; $51a6: $21 $bc $51
    add a                                         ; $51a9: $87
    add l                                         ; $51aa: $85
    ld l, a                                       ; $51ab: $6f
    ld a, h                                       ; $51ac: $7c
    adc $00                                       ; $51ad: $ce $00
    ld h, a                                       ; $51af: $67
    ld a, [hl+]                                   ; $51b0: $2a
    ld h, [hl]                                    ; $51b1: $66
    ld l, a                                       ; $51b2: $6f
    add hl, de                                    ; $51b3: $19
    pop de                                        ; $51b4: $d1
    pop bc                                        ; $51b5: $c1
    pop af                                        ; $51b6: $f1
    ret                                           ; $51b7: $c9


jr_002_51b8:
    ld hl, $0000                                  ; $51b8: $21 $00 $00

jr_002_51bb:
    ret                                           ; $51bb: $c9


    jr z, jr_002_51bb                             ; $51bc: $28 $fd

    jr z, @-$01                                   ; $51be: $28 $fd

    jr z, @-$01                                   ; $51c0: $28 $fd

    jr z, @-$01                                   ; $51c2: $28 $fd

    jr z, @-$01                                   ; $51c4: $28 $fd

    sbc $fd                                       ; $51c6: $de $fd
    sub h                                         ; $51c8: $94
    db $fe                                        ; $51c9: $fe

    db $4a, $ff, $00, $00

    or [hl]                                       ; $51ce: $b6
    nop                                           ; $51cf: $00

    db $11, $01

    ld l, h                                       ; $51d2: $6c
    ld bc, $0222                                  ; $51d3: $01 $22 $02
    ld l, h                                       ; $51d6: $6c
    ld bc, $016c                                  ; $51d7: $01 $6c $01
    ld l, h                                       ; $51da: $6c
    db $01                                        ; $51db: $01

    db $e4, $08, $f5, $09, $ab, $0a, $cd, $0c, $39, $0e, $ef, $0e, $a5, $0f, $5b, $10
    db $11, $11, $c7, $11, $c1, $16, $9a, $19, $72, $1c

    ld bc, $000d                                  ; $51f6: $01 $0d $00
    ld de, $c900                                  ; $51f9: $11 $00 $c9

Jump_002_51fc:
    ld hl, $c81a                                  ; $51fc: $21 $1a $c8
    ld a, [hl+]                                   ; $51ff: $2a
    ld h, [hl]                                    ; $5200: $66
    ld l, a                                       ; $5201: $6f
    ld a, b                                       ; $5202: $78
    push bc                                       ; $5203: $c5
    push af                                       ; $5204: $f5
    ld a, [$c819]                                 ; $5205: $fa $19 $c8
    ld b, a                                       ; $5208: $47
    pop af                                        ; $5209: $f1
    call Call_002_511a                            ; $520a: $cd $1a $51
    pop bc                                        ; $520d: $c1
    ld a, l                                       ; $520e: $7d
    ld [de], a                                    ; $520f: $12
    inc de                                        ; $5210: $13
    ld a, h                                       ; $5211: $7c
    ld [de], a                                    ; $5212: $12
    inc de                                        ; $5213: $13
    ld a, [$c81c]                                 ; $5214: $fa $1c $c8
    ld l, a                                       ; $5217: $6f
    ld a, b                                       ; $5218: $78
    call Call_002_518b                            ; $5219: $cd $8b $51
    ld a, l                                       ; $521c: $7d
    ld [de], a                                    ; $521d: $12
    inc de                                        ; $521e: $13
    ld a, h                                       ; $521f: $7c
    ld [de], a                                    ; $5220: $12
    inc de                                        ; $5221: $13
    ld a, [$c81e]                                 ; $5222: $fa $1e $c8
    ld [de], a                                    ; $5225: $12
    inc de                                        ; $5226: $13
    ld a, [$c819]                                 ; $5227: $fa $19 $c8
    push de                                       ; $522a: $d5
    ld e, a                                       ; $522b: $5f
    ld d, b                                       ; $522c: $50
    ld a, [$c81d]                                 ; $522d: $fa $1d $c8
    call Call_002_534b                            ; $5230: $cd $4b $53
    pop de                                        ; $5233: $d1
    add $08                                       ; $5234: $c6 $08
    and $0f                                       ; $5236: $e6 $0f
    add a                                         ; $5238: $87
    ld hl, $5253                                  ; $5239: $21 $53 $52
    add l                                         ; $523c: $85
    ld l, a                                       ; $523d: $6f
    jr nc, jr_002_5241                            ; $523e: $30 $01

    inc h                                         ; $5240: $24

jr_002_5241:
    ld a, [hl+]                                   ; $5241: $2a
    ld h, [hl]                                    ; $5242: $66
    ld l, a                                       ; $5243: $6f
    ld a, b                                       ; $5244: $78
    add l                                         ; $5245: $85
    ld l, a                                       ; $5246: $6f
    jr nc, jr_002_524a                            ; $5247: $30 $01

    inc h                                         ; $5249: $24

jr_002_524a:
    ld a, [hl]                                    ; $524a: $7e
    ld [de], a                                    ; $524b: $12
    inc de                                        ; $524c: $13
    inc b                                         ; $524d: $04
    dec c                                         ; $524e: $0d
    jp nz, Jump_002_51fc                          ; $524f: $c2 $fc $51

    ret                                           ; $5252: $c9


    di                                            ; $5253: $f3
    ld d, d                                       ; $5254: $52
    di                                            ; $5255: $f3
    ld d, d                                       ; $5256: $52
    di                                            ; $5257: $f3
    ld d, d                                       ; $5258: $52
    di                                            ; $5259: $f3
    ld d, d                                       ; $525a: $52
    di                                            ; $525b: $f3
    ld d, d                                       ; $525c: $52
    db $e3                                        ; $525d: $e3
    ld d, d                                       ; $525e: $52
    db $d3                                        ; $525f: $d3
    ld d, d                                       ; $5260: $52
    db $c3                                        ; $5261: $c3
    ld d, d                                       ; $5262: $52

    db $73, $52

    add e                                         ; $5265: $83
    ld d, d                                       ; $5266: $52
    sub e                                         ; $5267: $93
    ld d, d                                       ; $5268: $52
    and e                                         ; $5269: $a3
    ld d, d                                       ; $526a: $52
    or e                                          ; $526b: $b3
    ld d, d                                       ; $526c: $52
    or e                                          ; $526d: $b3
    ld d, d                                       ; $526e: $52
    or e                                          ; $526f: $b3
    ld d, d                                       ; $5270: $52
    or e                                          ; $5271: $b3
    ld d, d                                       ; $5272: $52

    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00

    nop                                           ; $5280: $00
    nop                                           ; $5281: $00
    nop                                           ; $5282: $00
    ld a, [bc]                                    ; $5283: $0a
    add hl, bc                                    ; $5284: $09
    ld [$0004], sp                                ; $5285: $08 $04 $00
    nop                                           ; $5288: $00
    nop                                           ; $5289: $00
    nop                                           ; $528a: $00
    nop                                           ; $528b: $00
    nop                                           ; $528c: $00
    nop                                           ; $528d: $00
    nop                                           ; $528e: $00
    nop                                           ; $528f: $00
    nop                                           ; $5290: $00
    nop                                           ; $5291: $00
    nop                                           ; $5292: $00
    db $10                                        ; $5293: $10
    ld c, $0c                                     ; $5294: $0e $0c
    inc c                                         ; $5296: $0c
    ld a, [bc]                                    ; $5297: $0a
    ld [$0004], sp                                ; $5298: $08 $04 $00
    nop                                           ; $529b: $00
    nop                                           ; $529c: $00
    nop                                           ; $529d: $00
    nop                                           ; $529e: $00
    nop                                           ; $529f: $00
    nop                                           ; $52a0: $00
    nop                                           ; $52a1: $00
    nop                                           ; $52a2: $00
    ld d, $14                                     ; $52a3: $16 $14
    ld [de], a                                    ; $52a5: $12
    ld [de], a                                    ; $52a6: $12
    db $10                                        ; $52a7: $10
    ld c, $0c                                     ; $52a8: $0e $0c
    ld a, [bc]                                    ; $52aa: $0a
    ld [$0004], sp                                ; $52ab: $08 $04 $00
    nop                                           ; $52ae: $00
    nop                                           ; $52af: $00
    nop                                           ; $52b0: $00
    nop                                           ; $52b1: $00
    nop                                           ; $52b2: $00
    jr nz, jr_002_52d0                            ; $52b3: $20 $1b

    jr jr_002_52cf                                ; $52b5: $18 $18

    ld d, $14                                     ; $52b7: $16 $14
    ld [de], a                                    ; $52b9: $12
    db $10                                        ; $52ba: $10
    ld c, $0c                                     ; $52bb: $0e $0c
    ld a, [bc]                                    ; $52bd: $0a
    ld [$0004], sp                                ; $52be: $08 $04 $00
    nop                                           ; $52c1: $00
    nop                                           ; $52c2: $00
    or $f7                                        ; $52c3: $f6 $f7
    ld hl, sp-$04                                 ; $52c5: $f8 $fc
    nop                                           ; $52c7: $00
    nop                                           ; $52c8: $00
    nop                                           ; $52c9: $00
    nop                                           ; $52ca: $00
    nop                                           ; $52cb: $00
    nop                                           ; $52cc: $00
    nop                                           ; $52cd: $00
    nop                                           ; $52ce: $00

jr_002_52cf:
    nop                                           ; $52cf: $00

jr_002_52d0:
    nop                                           ; $52d0: $00
    nop                                           ; $52d1: $00
    nop                                           ; $52d2: $00
    ldh a, [$f2]                                  ; $52d3: $f0 $f2
    db $f4                                        ; $52d5: $f4
    db $f4                                        ; $52d6: $f4
    or $f8                                        ; $52d7: $f6 $f8
    db $fc                                        ; $52d9: $fc
    nop                                           ; $52da: $00
    nop                                           ; $52db: $00
    nop                                           ; $52dc: $00
    nop                                           ; $52dd: $00
    nop                                           ; $52de: $00
    nop                                           ; $52df: $00
    nop                                           ; $52e0: $00
    nop                                           ; $52e1: $00
    nop                                           ; $52e2: $00
    ld [$eeec], a                                 ; $52e3: $ea $ec $ee
    xor $f0                                       ; $52e6: $ee $f0
    ld a, [c]                                     ; $52e8: $f2
    db $f4                                        ; $52e9: $f4
    or $f8                                        ; $52ea: $f6 $f8
    db $fc                                        ; $52ec: $fc
    nop                                           ; $52ed: $00
    nop                                           ; $52ee: $00
    nop                                           ; $52ef: $00
    nop                                           ; $52f0: $00
    nop                                           ; $52f1: $00
    nop                                           ; $52f2: $00
    ldh [$e5], a                                  ; $52f3: $e0 $e5
    add sp, -$18                                  ; $52f5: $e8 $e8
    ld [$eeec], a                                 ; $52f7: $ea $ec $ee
    ldh a, [$f2]                                  ; $52fa: $f0 $f2
    db $f4                                        ; $52fc: $f4
    or $f8                                        ; $52fd: $f6 $f8
    db $fc                                        ; $52ff: $fc
    nop                                           ; $5300: $00
    nop                                           ; $5301: $00
    nop                                           ; $5302: $00
    ld bc, $0101                                  ; $5303: $01 $01 $01
    ld bc, $0201                                  ; $5306: $01 $01 $02
    dec b                                         ; $5309: $05
    dec b                                         ; $530a: $05
    ld bc, $0101                                  ; $530b: $01 $01 $01
    ld [bc], a                                    ; $530e: $02
    ld [bc], a                                    ; $530f: $02
    inc bc                                        ; $5310: $03
    dec b                                         ; $5311: $05
    dec b                                         ; $5312: $05
    ld bc, $0101                                  ; $5313: $01 $01 $01
    ld [bc], a                                    ; $5316: $02
    inc bc                                        ; $5317: $03
    inc b                                         ; $5318: $04
    dec b                                         ; $5319: $05
    dec b                                         ; $531a: $05
    ld bc, $0201                                  ; $531b: $01 $01 $02
    ld [bc], a                                    ; $531e: $02
    inc bc                                        ; $531f: $03
    inc b                                         ; $5320: $04
    dec b                                         ; $5321: $05
    dec b                                         ; $5322: $05
    ld bc, $0201                                  ; $5323: $01 $01 $02
    inc bc                                        ; $5326: $03
    inc b                                         ; $5327: $04
    dec b                                         ; $5328: $05
    dec b                                         ; $5329: $05
    dec b                                         ; $532a: $05
    ld bc, $0201                                  ; $532b: $01 $01 $02
    inc bc                                        ; $532e: $03
    dec b                                         ; $532f: $05
    dec b                                         ; $5330: $05
    dec b                                         ; $5331: $05
    dec b                                         ; $5332: $05
    ld bc, $0201                                  ; $5333: $01 $01 $02
    inc b                                         ; $5336: $04
    dec b                                         ; $5337: $05
    dec b                                         ; $5338: $05
    dec b                                         ; $5339: $05
    dec b                                         ; $533a: $05
    ld bc, $0301                                  ; $533b: $01 $01 $03
    inc b                                         ; $533e: $04
    dec b                                         ; $533f: $05
    dec b                                         ; $5340: $05
    dec b                                         ; $5341: $05
    dec b                                         ; $5342: $05
    ld bc, $0302                                  ; $5343: $01 $02 $03
    dec b                                         ; $5346: $05
    dec b                                         ; $5347: $05
    dec b                                         ; $5348: $05
    dec b                                         ; $5349: $05
    dec b                                         ; $534a: $05

Call_002_534b:
    push hl                                       ; $534b: $e5
    ld h, a                                       ; $534c: $67
    ld a, d                                       ; $534d: $7a
    or a                                          ; $534e: $b7
    jr nz, jr_002_5392                            ; $534f: $20 $41

    bit 1, e                                      ; $5351: $cb $4b
    jr z, jr_002_5373                             ; $5353: $28 $1e

    bit 0, e                                      ; $5355: $cb $43
    jr nz, jr_002_5366                            ; $5357: $20 $0d

    ld a, h                                       ; $5359: $7c
    cp $04                                        ; $535a: $fe $04
    jr z, jr_002_5393                             ; $535c: $28 $35

    inc a                                         ; $535e: $3c
    cp $04                                        ; $535f: $fe $04
    jr z, jr_002_5393                             ; $5361: $28 $30

    inc a                                         ; $5363: $3c
    jr jr_002_5393                                ; $5364: $18 $2d

jr_002_5366:
    ld a, h                                       ; $5366: $7c
    cp $fc                                        ; $5367: $fe $fc
    jr z, jr_002_5393                             ; $5369: $28 $28

    dec a                                         ; $536b: $3d
    cp $fc                                        ; $536c: $fe $fc
    jr z, jr_002_5393                             ; $536e: $28 $23

    dec a                                         ; $5370: $3d
    jr jr_002_5393                                ; $5371: $18 $20

jr_002_5373:
    bit 2, e                                      ; $5373: $cb $53
    jr z, jr_002_5392                             ; $5375: $28 $1b

    xor a                                         ; $5377: $af
    jr jr_002_5393                                ; $5378: $18 $19

    bit 0, e                                      ; $537a: $cb $43
    jr nz, jr_002_5388                            ; $537c: $20 $0a

    ld a, h                                       ; $537e: $7c
    or a                                          ; $537f: $b7
    jr z, jr_002_5393                             ; $5380: $28 $11

    dec a                                         ; $5382: $3d
    jr z, jr_002_5393                             ; $5383: $28 $0e

    dec a                                         ; $5385: $3d
    jr jr_002_5393                                ; $5386: $18 $0b

jr_002_5388:
    ld a, h                                       ; $5388: $7c
    or a                                          ; $5389: $b7
    jr z, jr_002_5393                             ; $538a: $28 $07

    inc a                                         ; $538c: $3c
    jr z, jr_002_5393                             ; $538d: $28 $04

    inc a                                         ; $538f: $3c
    jr jr_002_5393                                ; $5390: $18 $01

jr_002_5392:
    ld a, h                                       ; $5392: $7c

jr_002_5393:
    pop hl                                        ; $5393: $e1
    ret                                           ; $5394: $c9


    ld a, [$c819]                                 ; $5395: $fa $19 $c8
    and $06                                       ; $5398: $e6 $06
    rrca                                          ; $539a: $0f
    ret                                           ; $539b: $c9


    push hl                                       ; $539c: $e5
    rlca                                          ; $539d: $07
    and $06                                       ; $539e: $e6 $06
    ld h, a                                       ; $53a0: $67
    ld a, [$c819]                                 ; $53a1: $fa $19 $c8
    and $f9                                       ; $53a4: $e6 $f9
    or h                                          ; $53a6: $b4
    ld [$c819], a                                 ; $53a7: $ea $19 $c8
    pop hl                                        ; $53aa: $e1
    ret                                           ; $53ab: $c9


    ld a, [$c819]                                 ; $53ac: $fa $19 $c8
    and $01                                       ; $53af: $e6 $01
    ret                                           ; $53b1: $c9


    push hl                                       ; $53b2: $e5
    and $01                                       ; $53b3: $e6 $01
    ld h, a                                       ; $53b5: $67
    ld a, [$c819]                                 ; $53b6: $fa $19 $c8
    and $fe                                       ; $53b9: $e6 $fe
    or h                                          ; $53bb: $b4
    ld [$c819], a                                 ; $53bc: $ea $19 $c8
    call Call_002_4ef6                            ; $53bf: $cd $f6 $4e
    pop hl                                        ; $53c2: $e1
    ret                                           ; $53c3: $c9


Jump_002_53c4:
    ld a, [hl]                                    ; $53c4: $7e
    add e                                         ; $53c5: $83
    ld [hl+], a                                   ; $53c6: $22
    ld a, [hl]                                    ; $53c7: $7e
    adc d                                         ; $53c8: $8a
    ld [hl+], a                                   ; $53c9: $22
    ld a, [hl]                                    ; $53ca: $7e
    adc $00                                       ; $53cb: $ce $00
    ld [hl], a                                    ; $53cd: $77
    dec hl                                        ; $53ce: $2b
    dec hl                                        ; $53cf: $2b
    ld de, $53e4                                  ; $53d0: $11 $e4 $53
    call $53e8                                    ; $53d3: $cd $e8 $53
    ret z                                         ; $53d6: $c8

    dec hl                                        ; $53d7: $2b
    dec hl                                        ; $53d8: $2b
    dec de                                        ; $53d9: $1b
    dec de                                        ; $53da: $1b
    ld a, [de]                                    ; $53db: $1a
    ld [hl+], a                                   ; $53dc: $22
    inc de                                        ; $53dd: $13
    ld a, [de]                                    ; $53de: $1a
    ld [hl+], a                                   ; $53df: $22
    inc de                                        ; $53e0: $13
    ld a, [de]                                    ; $53e1: $1a
    ld [hl], a                                    ; $53e2: $77
    ret                                           ; $53e3: $c9


    sbc a                                         ; $53e4: $9f
    add [hl]                                      ; $53e5: $86
    ld bc, $1ac9                                  ; $53e6: $01 $c9 $1a
    inc de                                        ; $53e9: $13
    sub [hl]                                      ; $53ea: $96
    inc hl                                        ; $53eb: $23
    ld a, [de]                                    ; $53ec: $1a
    inc de                                        ; $53ed: $13
    sbc [hl]                                      ; $53ee: $9e
    inc hl                                        ; $53ef: $23
    ld a, [de]                                    ; $53f0: $1a
    sbc [hl]                                      ; $53f1: $9e
    bit 7, a                                      ; $53f2: $cb $7f
    ret                                           ; $53f4: $c9


    call Call_002_5c19                            ; $53f5: $cd $19 $5c
    jr z, jr_002_5409                             ; $53f8: $28 $0f

    ld hl, $d4f1                                  ; $53fa: $21 $f1 $d4
    ld a, [hl+]                                   ; $53fd: $2a
    ld h, [hl]                                    ; $53fe: $66
    ld l, a                                       ; $53ff: $6f
    add hl, de                                    ; $5400: $19
    ld a, l                                       ; $5401: $7d
    ld [$d4f1], a                                 ; $5402: $ea $f1 $d4
    ld a, h                                       ; $5405: $7c
    ld [$d4f2], a                                 ; $5406: $ea $f2 $d4

jr_002_5409:
    ret                                           ; $5409: $c9


    xor a                                         ; $540a: $af
    ld hl, $c83c                                  ; $540b: $21 $3c $c8
    ld [hl+], a                                   ; $540e: $22
    ld [hl+], a                                   ; $540f: $22
    ret                                           ; $5410: $c9


    call Call_002_5c19                            ; $5411: $cd $19 $5c
    ret z                                         ; $5414: $c8

    ld hl, $543e                                  ; $5415: $21 $3e $54
    ld a, [$c836]                                 ; $5418: $fa $36 $c8
    and $0f                                       ; $541b: $e6 $0f
    add l                                         ; $541d: $85
    ld l, a                                       ; $541e: $6f
    jr nc, jr_002_5422                            ; $541f: $30 $01

    inc h                                         ; $5421: $24

jr_002_5422:
    ld a, [hl]                                    ; $5422: $7e
    ld h, d                                       ; $5423: $62
    ld l, e                                       ; $5424: $6b
    call Call_000_08b9                            ; $5425: $cd $b9 $08
    srl h                                         ; $5428: $cb $3c
    rr l                                          ; $542a: $cb $1d
    push hl                                       ; $542c: $e5
    ld hl, $c83c                                  ; $542d: $21 $3c $c8
    ld a, [hl+]                                   ; $5430: $2a
    ld d, [hl]                                    ; $5431: $56
    ld e, a                                       ; $5432: $5f
    pop hl                                        ; $5433: $e1
    add hl, de                                    ; $5434: $19
    ld a, l                                       ; $5435: $7d
    ld [$c83c], a                                 ; $5436: $ea $3c $c8
    ld a, h                                       ; $5439: $7c
    ld [$c83d], a                                 ; $543a: $ea $3d $c8
    ret                                           ; $543d: $c9


    ld [bc], a                                    ; $543e: $02
    ld [bc], a                                    ; $543f: $02

    db $03

    inc b                                         ; $5441: $04
    dec b                                         ; $5442: $05
    rlca                                          ; $5443: $07
    ld b, $02                                     ; $5444: $06 $02
    ld [bc], a                                    ; $5446: $02
    ld [bc], a                                    ; $5447: $02
    inc bc                                        ; $5448: $03
    inc b                                         ; $5449: $04
    dec b                                         ; $544a: $05
    rlca                                          ; $544b: $07
    ld b, $02                                     ; $544c: $06 $02
    ld hl, $c83c                                  ; $544e: $21 $3c $c8
    ld a, [hl+]                                   ; $5451: $2a
    ld h, [hl]                                    ; $5452: $66
    ld l, a                                       ; $5453: $6f
    add hl, de                                    ; $5454: $19
    bit 7, h                                      ; $5455: $cb $7c
    jr z, jr_002_545c                             ; $5457: $28 $03

    ld hl, $0000                                  ; $5459: $21 $00 $00

jr_002_545c:
    ld a, l                                       ; $545c: $7d
    ld [$c83c], a                                 ; $545d: $ea $3c $c8
    ld a, h                                       ; $5460: $7c
    ld [$c83d], a                                 ; $5461: $ea $3d $c8
    ret                                           ; $5464: $c9


Call_002_5465:
    ld hl, $c826                                  ; $5465: $21 $26 $c8
    jp Jump_002_53c4                              ; $5468: $c3 $c4 $53


Call_002_546b:
    ld a, [$c812]                                 ; $546b: $fa $12 $c8
    cp $63                                        ; $546e: $fe $63
    jp nc, Jump_002_5494                          ; $5470: $d2 $94 $54

    ld h, $00                                     ; $5473: $26 $00
    ld l, a                                       ; $5475: $6f
    ld d, h                                       ; $5476: $54
    ld e, l                                       ; $5477: $5d
    add hl, hl                                    ; $5478: $29
    add hl, de                                    ; $5479: $19
    push hl                                       ; $547a: $e5
    ld a, [$c810]                                 ; $547b: $fa $10 $c8
    and $03                                       ; $547e: $e6 $03
    add a                                         ; $5480: $87
    ld hl, $54cd                                  ; $5481: $21 $cd $54
    add l                                         ; $5484: $85
    ld l, a                                       ; $5485: $6f
    jr nc, jr_002_5489                            ; $5486: $30 $01

    inc h                                         ; $5488: $24

jr_002_5489:
    ld a, [hl+]                                   ; $5489: $2a
    ld h, [hl]                                    ; $548a: $66
    ld l, a                                       ; $548b: $6f
    pop de                                        ; $548c: $d1
    add hl, de                                    ; $548d: $19
    ld de, $c826                                  ; $548e: $11 $26 $c8
    jp $53e8                                      ; $5491: $c3 $e8 $53


Jump_002_5494:
    ld a, $80                                     ; $5494: $3e $80
    or a                                          ; $5496: $b7
    ret                                           ; $5497: $c9


    ld a, [$c812]                                 ; $5498: $fa $12 $c8
    cp $63                                        ; $549b: $fe $63
    jp nc, Jump_002_54c9                          ; $549d: $d2 $c9 $54

    ld h, $00                                     ; $54a0: $26 $00
    ld l, a                                       ; $54a2: $6f
    ld d, h                                       ; $54a3: $54
    ld e, l                                       ; $54a4: $5d
    add hl, hl                                    ; $54a5: $29
    add hl, de                                    ; $54a6: $19
    push hl                                       ; $54a7: $e5
    ld a, [$c810]                                 ; $54a8: $fa $10 $c8
    and $03                                       ; $54ab: $e6 $03
    add a                                         ; $54ad: $87
    ld hl, $54cd                                  ; $54ae: $21 $cd $54
    add l                                         ; $54b1: $85
    ld l, a                                       ; $54b2: $6f
    jr nc, jr_002_54b6                            ; $54b3: $30 $01

    inc h                                         ; $54b5: $24

jr_002_54b6:
    ld a, [hl+]                                   ; $54b6: $2a
    ld h, [hl]                                    ; $54b7: $66
    ld l, a                                       ; $54b8: $6f
    pop de                                        ; $54b9: $d1
    add hl, de                                    ; $54ba: $19
    ld a, [hl+]                                   ; $54bb: $2a
    ld h, [hl]                                    ; $54bc: $66
    ld l, a                                       ; $54bd: $6f
    push hl                                       ; $54be: $e5
    ld hl, $c826                                  ; $54bf: $21 $26 $c8
    ld a, [hl+]                                   ; $54c2: $2a
    ld d, [hl]                                    ; $54c3: $56
    ld e, a                                       ; $54c4: $5f
    pop hl                                        ; $54c5: $e1
    jp Jump_000_08ac                              ; $54c6: $c3 $ac $08


Jump_002_54c9:
    ld hl, $0000                                  ; $54c9: $21 $00 $00
    ret                                           ; $54cc: $c9


    push de                                       ; $54cd: $d5
    ld d, h                                       ; $54ce: $54

    db $01, $56

    dec l                                         ; $54d1: $2d
    ld d, a                                       ; $54d2: $57
    ld e, c                                       ; $54d3: $59
    ld e, b                                       ; $54d4: $58
    nop                                           ; $54d5: $00
    nop                                           ; $54d6: $00
    nop                                           ; $54d7: $00
    ld c, $00                                     ; $54d8: $0e $00
    nop                                           ; $54da: $00
    inc l                                         ; $54db: $2c
    nop                                           ; $54dc: $00
    nop                                           ; $54dd: $00
    ld e, b                                       ; $54de: $58
    nop                                           ; $54df: $00
    nop                                           ; $54e0: $00
    adc b                                         ; $54e1: $88
    nop                                           ; $54e2: $00
    nop                                           ; $54e3: $00
    cp h                                          ; $54e4: $bc
    nop                                           ; $54e5: $00
    nop                                           ; $54e6: $00
    db $f4                                        ; $54e7: $f4
    nop                                           ; $54e8: $00
    nop                                           ; $54e9: $00
    jr nc, jr_002_54ed                            ; $54ea: $30 $01

    nop                                           ; $54ec: $00

jr_002_54ed:
    ld [hl], c                                    ; $54ed: $71
    ld bc, $b700                                  ; $54ee: $01 $00 $b7
    ld bc, $0300                                  ; $54f1: $01 $00 $03
    ld [bc], a                                    ; $54f4: $02
    nop                                           ; $54f5: $00
    ld d, l                                       ; $54f6: $55
    ld [bc], a                                    ; $54f7: $02
    nop                                           ; $54f8: $00
    xor [hl]                                      ; $54f9: $ae
    ld [bc], a                                    ; $54fa: $02
    nop                                           ; $54fb: $00
    ld c, $03                                     ; $54fc: $0e $03
    nop                                           ; $54fe: $00
    halt                                          ; $54ff: $76
    inc bc                                        ; $5500: $03
    nop                                           ; $5501: $00
    and $03                                       ; $5502: $e6 $03
    nop                                           ; $5504: $00
    ld e, a                                       ; $5505: $5f
    inc b                                         ; $5506: $04
    nop                                           ; $5507: $00
    ld [c], a                                     ; $5508: $e2
    inc b                                         ; $5509: $04
    nop                                           ; $550a: $00
    ld l, [hl]                                    ; $550b: $6e
    dec b                                         ; $550c: $05
    nop                                           ; $550d: $00
    inc b                                         ; $550e: $04
    ld b, $00                                     ; $550f: $06 $00
    and l                                         ; $5511: $a5
    ld b, $00                                     ; $5512: $06 $00
    ld d, b                                       ; $5514: $50
    rlca                                          ; $5515: $07
    nop                                           ; $5516: $00
    dec b                                         ; $5517: $05
    ld [$c500], sp                                ; $5518: $08 $00 $c5
    ld [$9100], sp                                ; $551b: $08 $00 $91
    add hl, bc                                    ; $551e: $09
    nop                                           ; $551f: $00
    ld l, c                                       ; $5520: $69
    ld a, [bc]                                    ; $5521: $0a
    nop                                           ; $5522: $00
    ld c, [hl]                                    ; $5523: $4e
    dec bc                                        ; $5524: $0b
    nop                                           ; $5525: $00
    ld b, c                                       ; $5526: $41
    inc c                                         ; $5527: $0c
    nop                                           ; $5528: $00
    ld b, e                                       ; $5529: $43
    dec c                                         ; $552a: $0d
    nop                                           ; $552b: $00
    ld d, d                                       ; $552c: $52
    ld c, $00                                     ; $552d: $0e $00
    ld l, a                                       ; $552f: $6f
    rrca                                          ; $5530: $0f
    nop                                           ; $5531: $00
    sbc d                                         ; $5532: $9a
    stop                                          ; $5533: $10 $00
    pop de                                        ; $5535: $d1
    ld de, $1400                                  ; $5536: $11 $00 $14
    inc de                                        ; $5539: $13
    nop                                           ; $553a: $00
    ld h, h                                       ; $553b: $64
    inc d                                         ; $553c: $14
    nop                                           ; $553d: $00
    cp e                                          ; $553e: $bb
    dec d                                         ; $553f: $15
    nop                                           ; $5540: $00
    dec d                                         ; $5541: $15
    rla                                           ; $5542: $17
    nop                                           ; $5543: $00
    ld [hl], d                                    ; $5544: $72
    jr jr_002_5547                                ; $5545: $18 $00

jr_002_5547:
    ret nc                                        ; $5547: $d0

    add hl, de                                    ; $5548: $19
    nop                                           ; $5549: $00
    ld l, $1b                                     ; $554a: $2e $1b
    nop                                           ; $554c: $00
    adc h                                         ; $554d: $8c
    inc e                                         ; $554e: $1c
    nop                                           ; $554f: $00
    ld [$001d], a                                 ; $5550: $ea $1d $00
    ld c, b                                       ; $5553: $48
    rra                                           ; $5554: $1f
    nop                                           ; $5555: $00
    and [hl]                                      ; $5556: $a6
    jr nz, jr_002_5559                            ; $5557: $20 $00

jr_002_5559:
    inc b                                         ; $5559: $04
    ld [hl+], a                                   ; $555a: $22
    nop                                           ; $555b: $00
    ld h, d                                       ; $555c: $62
    inc hl                                        ; $555d: $23
    nop                                           ; $555e: $00
    ret nz                                        ; $555f: $c0

    inc h                                         ; $5560: $24
    nop                                           ; $5561: $00
    ld e, $26                                     ; $5562: $1e $26
    nop                                           ; $5564: $00
    ld a, h                                       ; $5565: $7c
    daa                                           ; $5566: $27
    nop                                           ; $5567: $00
    jp c, RST_28                                  ; $5568: $da $28 $00

    jr c, jr_002_5597                             ; $556b: $38 $2a

    nop                                           ; $556d: $00
    sub [hl]                                      ; $556e: $96
    dec hl                                        ; $556f: $2b
    nop                                           ; $5570: $00
    db $f4                                        ; $5571: $f4
    inc l                                         ; $5572: $2c
    nop                                           ; $5573: $00
    ld d, d                                       ; $5574: $52
    ld l, $00                                     ; $5575: $2e $00
    or b                                          ; $5577: $b0
    cpl                                           ; $5578: $2f
    nop                                           ; $5579: $00
    ld c, $31                                     ; $557a: $0e $31
    nop                                           ; $557c: $00
    ld l, h                                       ; $557d: $6c
    ld [hl-], a                                   ; $557e: $32
    nop                                           ; $557f: $00
    jp z, Jump_000_0033                           ; $5580: $ca $33 $00

    jr z, @+$37                                   ; $5583: $28 $35

    nop                                           ; $5585: $00
    add [hl]                                      ; $5586: $86
    ld [hl], $00                                  ; $5587: $36 $00
    db $e4                                        ; $5589: $e4
    scf                                           ; $558a: $37
    nop                                           ; $558b: $00
    ld b, d                                       ; $558c: $42
    add hl, sp                                    ; $558d: $39
    nop                                           ; $558e: $00
    and b                                         ; $558f: $a0
    ld a, [hl-]                                   ; $5590: $3a
    nop                                           ; $5591: $00
    cp $3b                                        ; $5592: $fe $3b
    nop                                           ; $5594: $00
    ld e, h                                       ; $5595: $5c
    dec a                                         ; $5596: $3d

jr_002_5597:
    nop                                           ; $5597: $00
    cp d                                          ; $5598: $ba
    ld a, $00                                     ; $5599: $3e $00
    jr jr_002_55dd                                ; $559b: $18 $40

    nop                                           ; $559d: $00
    halt                                          ; $559e: $76
    ld b, c                                       ; $559f: $41
    nop                                           ; $55a0: $00
    call nc, $0042                                ; $55a1: $d4 $42 $00
    ld [hl-], a                                   ; $55a4: $32
    ld b, h                                       ; $55a5: $44
    nop                                           ; $55a6: $00
    sub b                                         ; $55a7: $90
    ld b, l                                       ; $55a8: $45
    nop                                           ; $55a9: $00
    xor $46                                       ; $55aa: $ee $46
    nop                                           ; $55ac: $00
    ld c, h                                       ; $55ad: $4c
    ld c, b                                       ; $55ae: $48
    nop                                           ; $55af: $00
    xor d                                         ; $55b0: $aa
    ld c, c                                       ; $55b1: $49
    nop                                           ; $55b2: $00
    ld [$004b], sp                                ; $55b3: $08 $4b $00
    ld h, [hl]                                    ; $55b6: $66
    ld c, h                                       ; $55b7: $4c
    nop                                           ; $55b8: $00
    call nz, Call_000_004d                        ; $55b9: $c4 $4d $00
    ld [hl+], a                                   ; $55bc: $22
    ld c, a                                       ; $55bd: $4f
    nop                                           ; $55be: $00
    add b                                         ; $55bf: $80
    ld d, b                                       ; $55c0: $50
    nop                                           ; $55c1: $00
    sbc $51                                       ; $55c2: $de $51
    nop                                           ; $55c4: $00
    inc a                                         ; $55c5: $3c
    ld d, e                                       ; $55c6: $53
    nop                                           ; $55c7: $00
    sbc d                                         ; $55c8: $9a
    ld d, h                                       ; $55c9: $54
    nop                                           ; $55ca: $00
    ld hl, sp+$55                                 ; $55cb: $f8 $55
    nop                                           ; $55cd: $00
    ld d, [hl]                                    ; $55ce: $56
    ld d, a                                       ; $55cf: $57
    nop                                           ; $55d0: $00
    or h                                          ; $55d1: $b4
    ld e, b                                       ; $55d2: $58
    nop                                           ; $55d3: $00
    ld [de], a                                    ; $55d4: $12
    ld e, d                                       ; $55d5: $5a
    nop                                           ; $55d6: $00
    ld [hl], b                                    ; $55d7: $70
    ld e, e                                       ; $55d8: $5b
    nop                                           ; $55d9: $00
    adc $5c                                       ; $55da: $ce $5c
    nop                                           ; $55dc: $00

jr_002_55dd:
    inc l                                         ; $55dd: $2c
    ld e, [hl]                                    ; $55de: $5e
    nop                                           ; $55df: $00
    adc d                                         ; $55e0: $8a
    ld e, a                                       ; $55e1: $5f
    nop                                           ; $55e2: $00
    add sp, $60                                   ; $55e3: $e8 $60
    nop                                           ; $55e5: $00
    ld b, [hl]                                    ; $55e6: $46
    ld h, d                                       ; $55e7: $62
    nop                                           ; $55e8: $00
    and h                                         ; $55e9: $a4
    ld h, e                                       ; $55ea: $63
    nop                                           ; $55eb: $00
    ld [bc], a                                    ; $55ec: $02
    ld h, l                                       ; $55ed: $65
    nop                                           ; $55ee: $00
    ld h, b                                       ; $55ef: $60
    ld h, [hl]                                    ; $55f0: $66
    nop                                           ; $55f1: $00
    cp [hl]                                       ; $55f2: $be
    ld h, a                                       ; $55f3: $67
    nop                                           ; $55f4: $00
    inc e                                         ; $55f5: $1c
    ld l, c                                       ; $55f6: $69
    nop                                           ; $55f7: $00
    ld a, d                                       ; $55f8: $7a
    ld l, d                                       ; $55f9: $6a
    nop                                           ; $55fa: $00
    ret c                                         ; $55fb: $d8

    ld l, e                                       ; $55fc: $6b
    nop                                           ; $55fd: $00
    rst $38                                       ; $55fe: $ff
    rst $38                                       ; $55ff: $ff
    rst $38                                       ; $5600: $ff
    nop                                           ; $5601: $00
    nop                                           ; $5602: $00
    nop                                           ; $5603: $00

    db $0d, $00

    nop                                           ; $5606: $00
    dec hl                                        ; $5607: $2b
    nop                                           ; $5608: $00
    nop                                           ; $5609: $00
    ld d, a                                       ; $560a: $57
    nop                                           ; $560b: $00
    nop                                           ; $560c: $00
    adc b                                         ; $560d: $88
    nop                                           ; $560e: $00
    nop                                           ; $560f: $00
    cp a                                          ; $5610: $bf
    nop                                           ; $5611: $00
    nop                                           ; $5612: $00
    ei                                            ; $5613: $fb
    nop                                           ; $5614: $00
    nop                                           ; $5615: $00
    dec sp                                        ; $5616: $3b
    ld bc, $7f00                                  ; $5617: $01 $00 $7f
    ld bc, $c700                                  ; $561a: $01 $00 $c7
    ld bc, $1300                                  ; $561d: $01 $00 $13
    ld [bc], a                                    ; $5620: $02
    nop                                           ; $5621: $00
    ld h, h                                       ; $5622: $64
    ld [bc], a                                    ; $5623: $02
    nop                                           ; $5624: $00
    cp e                                          ; $5625: $bb
    ld [bc], a                                    ; $5626: $02
    nop                                           ; $5627: $00
    dec de                                        ; $5628: $1b
    inc bc                                        ; $5629: $03
    nop                                           ; $562a: $00
    add l                                         ; $562b: $85
    inc bc                                        ; $562c: $03
    nop                                           ; $562d: $00
    ld a, [$0003]                                 ; $562e: $fa $03 $00
    ld a, e                                       ; $5631: $7b
    inc b                                         ; $5632: $04
    nop                                           ; $5633: $00
    add hl, bc                                    ; $5634: $09
    dec b                                         ; $5635: $05
    nop                                           ; $5636: $00
    and l                                         ; $5637: $a5
    dec b                                         ; $5638: $05
    nop                                           ; $5639: $00
    ld d, c                                       ; $563a: $51
    ld b, $00                                     ; $563b: $06 $00
    ld c, $07                                     ; $563d: $0e $07
    nop                                           ; $563f: $00
    call nc, Call_000_0007                        ; $5640: $d4 $07 $00
    and d                                         ; $5643: $a2
    ld [$7600], sp                                ; $5644: $08 $00 $76
    add hl, bc                                    ; $5647: $09
    nop                                           ; $5648: $00
    ld d, b                                       ; $5649: $50
    ld a, [bc]                                    ; $564a: $0a
    nop                                           ; $564b: $00
    ld l, $0b                                     ; $564c: $2e $0b
    nop                                           ; $564e: $00
    db $10                                        ; $564f: $10
    inc c                                         ; $5650: $0c
    nop                                           ; $5651: $00
    rst $30                                       ; $5652: $f7
    inc c                                         ; $5653: $0c
    nop                                           ; $5654: $00
    db $e3                                        ; $5655: $e3
    dec c                                         ; $5656: $0d
    nop                                           ; $5657: $00
    ret c                                         ; $5658: $d8

    ld c, $00                                     ; $5659: $0e $00
    rst $10                                       ; $565b: $d7
    rrca                                          ; $565c: $0f
    nop                                           ; $565d: $00
    db $e3                                        ; $565e: $e3
    stop                                          ; $565f: $10 $00
    db $fc                                        ; $5661: $fc
    ld de, $2300                                  ; $5662: $11 $00 $23
    inc de                                        ; $5665: $13
    nop                                           ; $5666: $00
    ld e, c                                       ; $5667: $59
    inc d                                         ; $5668: $14
    nop                                           ; $5669: $00
    sbc a                                         ; $566a: $9f
    dec d                                         ; $566b: $15
    nop                                           ; $566c: $00
    push af                                       ; $566d: $f5
    ld d, $00                                     ; $566e: $16 $00
    ld d, e                                       ; $5670: $53
    jr jr_002_5673                                ; $5671: $18 $00

jr_002_5673:
    or c                                          ; $5673: $b1
    add hl, de                                    ; $5674: $19
    nop                                           ; $5675: $00
    rrca                                          ; $5676: $0f
    dec de                                        ; $5677: $1b
    nop                                           ; $5678: $00
    ld l, l                                       ; $5679: $6d
    inc e                                         ; $567a: $1c
    nop                                           ; $567b: $00
    rr l                                          ; $567c: $cb $1d
    nop                                           ; $567e: $00
    add hl, hl                                    ; $567f: $29
    rra                                           ; $5680: $1f
    nop                                           ; $5681: $00
    add a                                         ; $5682: $87
    jr nz, jr_002_5685                            ; $5683: $20 $00

jr_002_5685:
    push hl                                       ; $5685: $e5
    ld hl, $4300                                  ; $5686: $21 $00 $43
    inc hl                                        ; $5689: $23
    nop                                           ; $568a: $00
    and c                                         ; $568b: $a1
    inc h                                         ; $568c: $24
    nop                                           ; $568d: $00
    rst $38                                       ; $568e: $ff
    dec h                                         ; $568f: $25
    nop                                           ; $5690: $00
    ld e, l                                       ; $5691: $5d
    daa                                           ; $5692: $27
    nop                                           ; $5693: $00
    cp e                                          ; $5694: $bb
    jr z, jr_002_5697                             ; $5695: $28 $00

jr_002_5697:
    add hl, de                                    ; $5697: $19
    ld a, [hl+]                                   ; $5698: $2a
    nop                                           ; $5699: $00
    ld [hl], a                                    ; $569a: $77
    dec hl                                        ; $569b: $2b
    nop                                           ; $569c: $00
    push de                                       ; $569d: $d5
    inc l                                         ; $569e: $2c
    nop                                           ; $569f: $00
    inc sp                                        ; $56a0: $33
    ld l, $00                                     ; $56a1: $2e $00
    sub c                                         ; $56a3: $91
    cpl                                           ; $56a4: $2f
    nop                                           ; $56a5: $00
    rst $28                                       ; $56a6: $ef
    jr nc, jr_002_56a9                            ; $56a7: $30 $00

jr_002_56a9:
    ld c, l                                       ; $56a9: $4d
    ld [hl-], a                                   ; $56aa: $32
    nop                                           ; $56ab: $00
    xor e                                         ; $56ac: $ab
    inc sp                                        ; $56ad: $33
    nop                                           ; $56ae: $00
    add hl, bc                                    ; $56af: $09
    dec [hl]                                      ; $56b0: $35
    nop                                           ; $56b1: $00
    ld h, a                                       ; $56b2: $67
    ld [hl], $00                                  ; $56b3: $36 $00
    push bc                                       ; $56b5: $c5
    scf                                           ; $56b6: $37
    nop                                           ; $56b7: $00
    inc hl                                        ; $56b8: $23
    add hl, sp                                    ; $56b9: $39
    nop                                           ; $56ba: $00
    add c                                         ; $56bb: $81
    ld a, [hl-]                                   ; $56bc: $3a
    nop                                           ; $56bd: $00
    rst $18                                       ; $56be: $df
    dec sp                                        ; $56bf: $3b
    nop                                           ; $56c0: $00
    dec a                                         ; $56c1: $3d
    dec a                                         ; $56c2: $3d
    nop                                           ; $56c3: $00
    sbc e                                         ; $56c4: $9b
    ld a, $00                                     ; $56c5: $3e $00
    ld sp, hl                                     ; $56c7: $f9
    ccf                                           ; $56c8: $3f
    nop                                           ; $56c9: $00
    ld d, a                                       ; $56ca: $57
    ld b, c                                       ; $56cb: $41
    nop                                           ; $56cc: $00
    or l                                          ; $56cd: $b5
    ld b, d                                       ; $56ce: $42
    nop                                           ; $56cf: $00
    inc de                                        ; $56d0: $13
    ld b, h                                       ; $56d1: $44
    nop                                           ; $56d2: $00
    ld [hl], c                                    ; $56d3: $71
    ld b, l                                       ; $56d4: $45
    nop                                           ; $56d5: $00
    rst $08                                       ; $56d6: $cf
    ld b, [hl]                                    ; $56d7: $46
    nop                                           ; $56d8: $00
    dec l                                         ; $56d9: $2d
    ld c, b                                       ; $56da: $48
    nop                                           ; $56db: $00
    adc e                                         ; $56dc: $8b
    ld c, c                                       ; $56dd: $49
    nop                                           ; $56de: $00
    jp hl                                         ; $56df: $e9


    ld c, d                                       ; $56e0: $4a
    nop                                           ; $56e1: $00
    ld b, a                                       ; $56e2: $47
    ld c, h                                       ; $56e3: $4c
    nop                                           ; $56e4: $00
    and l                                         ; $56e5: $a5
    ld c, l                                       ; $56e6: $4d
    nop                                           ; $56e7: $00
    inc bc                                        ; $56e8: $03
    ld c, a                                       ; $56e9: $4f
    nop                                           ; $56ea: $00
    ld h, c                                       ; $56eb: $61
    ld d, b                                       ; $56ec: $50
    nop                                           ; $56ed: $00
    cp a                                          ; $56ee: $bf
    ld d, c                                       ; $56ef: $51
    nop                                           ; $56f0: $00
    dec e                                         ; $56f1: $1d
    ld d, e                                       ; $56f2: $53
    nop                                           ; $56f3: $00
    ld a, e                                       ; $56f4: $7b
    ld d, h                                       ; $56f5: $54
    nop                                           ; $56f6: $00
    reti                                          ; $56f7: $d9


    ld d, l                                       ; $56f8: $55
    nop                                           ; $56f9: $00
    scf                                           ; $56fa: $37
    ld d, a                                       ; $56fb: $57
    nop                                           ; $56fc: $00
    sub l                                         ; $56fd: $95
    ld e, b                                       ; $56fe: $58
    nop                                           ; $56ff: $00
    di                                            ; $5700: $f3
    ld e, c                                       ; $5701: $59
    nop                                           ; $5702: $00
    ld d, c                                       ; $5703: $51
    ld e, e                                       ; $5704: $5b
    nop                                           ; $5705: $00
    xor a                                         ; $5706: $af
    ld e, h                                       ; $5707: $5c
    nop                                           ; $5708: $00
    dec c                                         ; $5709: $0d
    ld e, [hl]                                    ; $570a: $5e
    nop                                           ; $570b: $00
    ld l, e                                       ; $570c: $6b
    ld e, a                                       ; $570d: $5f
    nop                                           ; $570e: $00
    ret                                           ; $570f: $c9


    ld h, b                                       ; $5710: $60
    nop                                           ; $5711: $00
    daa                                           ; $5712: $27
    ld h, d                                       ; $5713: $62
    nop                                           ; $5714: $00
    add l                                         ; $5715: $85
    ld h, e                                       ; $5716: $63
    nop                                           ; $5717: $00
    db $e3                                        ; $5718: $e3
    ld h, h                                       ; $5719: $64
    nop                                           ; $571a: $00
    ld b, c                                       ; $571b: $41
    ld h, [hl]                                    ; $571c: $66
    nop                                           ; $571d: $00
    sbc a                                         ; $571e: $9f
    ld h, a                                       ; $571f: $67
    nop                                           ; $5720: $00
    db $fd                                        ; $5721: $fd
    ld l, b                                       ; $5722: $68
    nop                                           ; $5723: $00
    ld e, e                                       ; $5724: $5b
    ld l, d                                       ; $5725: $6a
    nop                                           ; $5726: $00
    cp c                                          ; $5727: $b9
    ld l, e                                       ; $5728: $6b
    nop                                           ; $5729: $00
    rst $38                                       ; $572a: $ff
    rst $38                                       ; $572b: $ff
    rst $38                                       ; $572c: $ff
    nop                                           ; $572d: $00
    nop                                           ; $572e: $00
    nop                                           ; $572f: $00
    rrca                                          ; $5730: $0f
    nop                                           ; $5731: $00
    nop                                           ; $5732: $00
    dec l                                         ; $5733: $2d
    nop                                           ; $5734: $00
    nop                                           ; $5735: $00
    ld e, d                                       ; $5736: $5a
    nop                                           ; $5737: $00
    nop                                           ; $5738: $00
    sub b                                         ; $5739: $90
    nop                                           ; $573a: $00
    nop                                           ; $573b: $00
    call z, $0000                                 ; $573c: $cc $00 $00
    ld c, $01                                     ; $573f: $0e $01
    nop                                           ; $5741: $00
    ld d, l                                       ; $5742: $55
    ld bc, $a100                                  ; $5743: $01 $00 $a1
    ld bc, $f200                                  ; $5746: $01 $00 $f2
    ld bc, $4900                                  ; $5749: $01 $00 $49
    ld [bc], a                                    ; $574c: $02
    nop                                           ; $574d: $00
    and [hl]                                      ; $574e: $a6
    ld [bc], a                                    ; $574f: $02
    nop                                           ; $5750: $00
    add hl, bc                                    ; $5751: $09
    inc bc                                        ; $5752: $03
    nop                                           ; $5753: $00
    ld [hl], d                                    ; $5754: $72
    inc bc                                        ; $5755: $03
    nop                                           ; $5756: $00
    pop hl                                        ; $5757: $e1
    inc bc                                        ; $5758: $03
    nop                                           ; $5759: $00
    ld d, a                                       ; $575a: $57
    inc b                                         ; $575b: $04
    nop                                           ; $575c: $00
    call nc, Call_000_0004                        ; $575d: $d4 $04 $00
    ld e, c                                       ; $5760: $59
    dec b                                         ; $5761: $05
    nop                                           ; $5762: $00
    and $05                                       ; $5763: $e6 $05
    nop                                           ; $5765: $00
    ld a, e                                       ; $5766: $7b
    ld b, $00                                     ; $5767: $06 $00
    add hl, de                                    ; $5769: $19
    rlca                                          ; $576a: $07
    nop                                           ; $576b: $00
    ret nz                                        ; $576c: $c0

    rlca                                          ; $576d: $07
    nop                                           ; $576e: $00
    ld [hl], c                                    ; $576f: $71
    ld [$2d00], sp                                ; $5770: $08 $00 $2d
    add hl, bc                                    ; $5773: $09
    nop                                           ; $5774: $00
    db $f4                                        ; $5775: $f4
    add hl, bc                                    ; $5776: $09
    nop                                           ; $5777: $00
    rst $00                                       ; $5778: $c7
    ld a, [bc]                                    ; $5779: $0a
    nop                                           ; $577a: $00
    and a                                         ; $577b: $a7
    dec bc                                        ; $577c: $0b
    nop                                           ; $577d: $00
    sub h                                         ; $577e: $94
    inc c                                         ; $577f: $0c
    nop                                           ; $5780: $00
    adc a                                         ; $5781: $8f
    dec c                                         ; $5782: $0d
    nop                                           ; $5783: $00
    sbc c                                         ; $5784: $99
    ld c, $00                                     ; $5785: $0e $00
    or e                                          ; $5787: $b3
    rrca                                          ; $5788: $0f
    nop                                           ; $5789: $00
    db $db                                        ; $578a: $db
    stop                                          ; $578b: $10 $00
    rrca                                          ; $578d: $0f
    ld [de], a                                    ; $578e: $12
    nop                                           ; $578f: $00
    ld c, a                                       ; $5790: $4f
    inc de                                        ; $5791: $13
    nop                                           ; $5792: $00
    sbc h                                         ; $5793: $9c
    inc d                                         ; $5794: $14
    nop                                           ; $5795: $00
    di                                            ; $5796: $f3
    dec d                                         ; $5797: $15
    nop                                           ; $5798: $00
    ld d, c                                       ; $5799: $51
    rla                                           ; $579a: $17
    nop                                           ; $579b: $00
    xor a                                         ; $579c: $af
    jr jr_002_579f                                ; $579d: $18 $00

jr_002_579f:
    dec c                                         ; $579f: $0d
    ld a, [de]                                    ; $57a0: $1a
    nop                                           ; $57a1: $00
    ld l, e                                       ; $57a2: $6b
    dec de                                        ; $57a3: $1b
    nop                                           ; $57a4: $00
    ret                                           ; $57a5: $c9


    inc e                                         ; $57a6: $1c
    nop                                           ; $57a7: $00
    daa                                           ; $57a8: $27
    ld e, $00                                     ; $57a9: $1e $00
    add l                                         ; $57ab: $85
    rra                                           ; $57ac: $1f
    nop                                           ; $57ad: $00
    db $e3                                        ; $57ae: $e3
    jr nz, jr_002_57b1                            ; $57af: $20 $00

jr_002_57b1:
    ld b, c                                       ; $57b1: $41
    ld [hl+], a                                   ; $57b2: $22
    nop                                           ; $57b3: $00
    sbc a                                         ; $57b4: $9f
    inc hl                                        ; $57b5: $23
    nop                                           ; $57b6: $00
    db $fd                                        ; $57b7: $fd
    inc h                                         ; $57b8: $24
    nop                                           ; $57b9: $00
    ld e, e                                       ; $57ba: $5b
    ld h, $00                                     ; $57bb: $26 $00
    cp c                                          ; $57bd: $b9
    daa                                           ; $57be: $27
    nop                                           ; $57bf: $00
    rla                                           ; $57c0: $17
    add hl, hl                                    ; $57c1: $29
    nop                                           ; $57c2: $00
    ld [hl], l                                    ; $57c3: $75
    ld a, [hl+]                                   ; $57c4: $2a
    nop                                           ; $57c5: $00
    db $d3                                        ; $57c6: $d3
    dec hl                                        ; $57c7: $2b
    nop                                           ; $57c8: $00
    ld sp, $002d                                  ; $57c9: $31 $2d $00
    adc a                                         ; $57cc: $8f
    ld l, $00                                     ; $57cd: $2e $00
    db $ed                                        ; $57cf: $ed
    cpl                                           ; $57d0: $2f
    nop                                           ; $57d1: $00
    ld c, e                                       ; $57d2: $4b
    ld sp, $a900                                  ; $57d3: $31 $00 $a9
    ld [hl-], a                                   ; $57d6: $32
    nop                                           ; $57d7: $00
    rlca                                          ; $57d8: $07
    inc [hl]                                      ; $57d9: $34
    nop                                           ; $57da: $00
    ld h, l                                       ; $57db: $65
    dec [hl]                                      ; $57dc: $35
    nop                                           ; $57dd: $00
    jp Jump_000_0036                              ; $57de: $c3 $36 $00


    ld hl, $0038                                  ; $57e1: $21 $38 $00
    ld a, a                                       ; $57e4: $7f
    add hl, sp                                    ; $57e5: $39
    nop                                           ; $57e6: $00
    db $dd                                        ; $57e7: $dd
    ld a, [hl-]                                   ; $57e8: $3a
    nop                                           ; $57e9: $00
    dec sp                                        ; $57ea: $3b
    inc a                                         ; $57eb: $3c
    nop                                           ; $57ec: $00
    sbc c                                         ; $57ed: $99
    dec a                                         ; $57ee: $3d
    nop                                           ; $57ef: $00
    rst $30                                       ; $57f0: $f7
    ld a, $00                                     ; $57f1: $3e $00
    ld d, l                                       ; $57f3: $55
    ld b, b                                       ; $57f4: $40
    nop                                           ; $57f5: $00
    or e                                          ; $57f6: $b3
    ld b, c                                       ; $57f7: $41
    nop                                           ; $57f8: $00
    ld de, $0043                                  ; $57f9: $11 $43 $00
    ld l, a                                       ; $57fc: $6f
    ld b, h                                       ; $57fd: $44
    nop                                           ; $57fe: $00
    call Call_000_0045                            ; $57ff: $cd $45 $00
    dec hl                                        ; $5802: $2b
    ld b, a                                       ; $5803: $47
    nop                                           ; $5804: $00
    adc c                                         ; $5805: $89
    ld c, b                                       ; $5806: $48
    nop                                           ; $5807: $00
    rst $20                                       ; $5808: $e7
    ld c, c                                       ; $5809: $49
    nop                                           ; $580a: $00
    ld b, l                                       ; $580b: $45
    ld c, e                                       ; $580c: $4b
    nop                                           ; $580d: $00
    and e                                         ; $580e: $a3
    ld c, h                                       ; $580f: $4c
    nop                                           ; $5810: $00
    ld bc, $004e                                  ; $5811: $01 $4e $00
    ld e, a                                       ; $5814: $5f
    ld c, a                                       ; $5815: $4f
    nop                                           ; $5816: $00
    cp l                                          ; $5817: $bd
    ld d, b                                       ; $5818: $50
    nop                                           ; $5819: $00
    dec de                                        ; $581a: $1b
    ld d, d                                       ; $581b: $52
    nop                                           ; $581c: $00
    ld a, c                                       ; $581d: $79
    ld d, e                                       ; $581e: $53
    nop                                           ; $581f: $00
    rst $10                                       ; $5820: $d7
    ld d, h                                       ; $5821: $54
    nop                                           ; $5822: $00
    dec [hl]                                      ; $5823: $35
    ld d, [hl]                                    ; $5824: $56
    nop                                           ; $5825: $00
    sub e                                         ; $5826: $93
    ld d, a                                       ; $5827: $57
    nop                                           ; $5828: $00
    pop af                                        ; $5829: $f1
    ld e, b                                       ; $582a: $58
    nop                                           ; $582b: $00
    ld c, a                                       ; $582c: $4f
    ld e, d                                       ; $582d: $5a
    nop                                           ; $582e: $00
    xor l                                         ; $582f: $ad
    ld e, e                                       ; $5830: $5b
    nop                                           ; $5831: $00
    dec bc                                        ; $5832: $0b
    ld e, l                                       ; $5833: $5d
    nop                                           ; $5834: $00
    ld l, c                                       ; $5835: $69
    ld e, [hl]                                    ; $5836: $5e
    nop                                           ; $5837: $00
    rst $00                                       ; $5838: $c7
    ld e, a                                       ; $5839: $5f
    nop                                           ; $583a: $00
    dec h                                         ; $583b: $25
    ld h, c                                       ; $583c: $61
    nop                                           ; $583d: $00
    add e                                         ; $583e: $83
    ld h, d                                       ; $583f: $62
    nop                                           ; $5840: $00
    pop hl                                        ; $5841: $e1
    ld h, e                                       ; $5842: $63
    nop                                           ; $5843: $00
    ccf                                           ; $5844: $3f
    ld h, l                                       ; $5845: $65
    nop                                           ; $5846: $00
    sbc l                                         ; $5847: $9d
    ld h, [hl]                                    ; $5848: $66
    nop                                           ; $5849: $00
    ei                                            ; $584a: $fb
    ld h, a                                       ; $584b: $67
    nop                                           ; $584c: $00
    ld e, c                                       ; $584d: $59
    ld l, c                                       ; $584e: $69
    nop                                           ; $584f: $00
    or a                                          ; $5850: $b7
    ld l, d                                       ; $5851: $6a
    nop                                           ; $5852: $00
    dec d                                         ; $5853: $15
    ld l, h                                       ; $5854: $6c
    nop                                           ; $5855: $00
    rst $38                                       ; $5856: $ff
    rst $38                                       ; $5857: $ff
    rst $38                                       ; $5858: $ff
    nop                                           ; $5859: $00
    nop                                           ; $585a: $00
    nop                                           ; $585b: $00
    stop                                          ; $585c: $10 $00
    nop                                           ; $585e: $00
    cpl                                           ; $585f: $2f
    nop                                           ; $5860: $00
    nop                                           ; $5861: $00
    ld e, l                                       ; $5862: $5d
    nop                                           ; $5863: $00
    nop                                           ; $5864: $00
    sub l                                         ; $5865: $95
    nop                                           ; $5866: $00
    nop                                           ; $5867: $00
    reti                                          ; $5868: $d9


    nop                                           ; $5869: $00
    nop                                           ; $586a: $00
    inc h                                         ; $586b: $24
    ld bc, $7500                                  ; $586c: $01 $00 $75
    ld bc, $cc00                                  ; $586f: $01 $00 $cc
    ld bc, $2900                                  ; $5872: $01 $00 $29
    ld [bc], a                                    ; $5875: $02
    nop                                           ; $5876: $00
    adc h                                         ; $5877: $8c
    ld [bc], a                                    ; $5878: $02
    nop                                           ; $5879: $00
    push af                                       ; $587a: $f5
    ld [bc], a                                    ; $587b: $02
    nop                                           ; $587c: $00
    ld h, h                                       ; $587d: $64
    inc bc                                        ; $587e: $03
    nop                                           ; $587f: $00
    jp c, $0003                                   ; $5880: $da $03 $00

    ld d, a                                       ; $5883: $57
    inc b                                         ; $5884: $04
    nop                                           ; $5885: $00
    jp c, Jump_000_0004                           ; $5886: $da $04 $00

    ld h, h                                       ; $5889: $64
    dec b                                         ; $588a: $05
    nop                                           ; $588b: $00
    push af                                       ; $588c: $f5
    dec b                                         ; $588d: $05
    nop                                           ; $588e: $00
    adc l                                         ; $588f: $8d
    ld b, $00                                     ; $5890: $06 $00
    dec l                                         ; $5892: $2d
    rlca                                          ; $5893: $07
    nop                                           ; $5894: $00
    push de                                       ; $5895: $d5
    rlca                                          ; $5896: $07
    nop                                           ; $5897: $00
    add l                                         ; $5898: $85
    ld [$3e00], sp                                ; $5899: $08 $00 $3e
    add hl, bc                                    ; $589c: $09
    nop                                           ; $589d: $00
    nop                                           ; $589e: $00
    ld a, [bc]                                    ; $589f: $0a
    nop                                           ; $58a0: $00
    jp z, $000a                                   ; $58a1: $ca $0a $00

    sbc h                                         ; $58a4: $9c
    dec bc                                        ; $58a5: $0b
    nop                                           ; $58a6: $00
    halt                                          ; $58a7: $76
    inc c                                         ; $58a8: $0c
    nop                                           ; $58a9: $00
    ld e, c                                       ; $58aa: $59
    dec c                                         ; $58ab: $0d
    nop                                           ; $58ac: $00
    ld b, l                                       ; $58ad: $45
    ld c, $00                                     ; $58ae: $0e $00
    ld a, [hl-]                                   ; $58b0: $3a
    rrca                                          ; $58b1: $0f
    nop                                           ; $58b2: $00
    dec sp                                        ; $58b3: $3b
    stop                                          ; $58b4: $10 $00
    ld c, c                                       ; $58b6: $49
    ld de, $6500                                  ; $58b7: $11 $00 $65
    ld [de], a                                    ; $58ba: $12
    nop                                           ; $58bb: $00
    adc a                                         ; $58bc: $8f
    inc de                                        ; $58bd: $13
    nop                                           ; $58be: $00
    ret z                                         ; $58bf: $c8

    inc d                                         ; $58c0: $14
    nop                                           ; $58c1: $00
    inc d                                         ; $58c2: $14
    ld d, $00                                     ; $58c3: $16 $00
    ld [hl], d                                    ; $58c5: $72
    rla                                           ; $58c6: $17
    nop                                           ; $58c7: $00
    ret nc                                        ; $58c8: $d0

    jr jr_002_58cb                                ; $58c9: $18 $00

jr_002_58cb:
    ld l, $1a                                     ; $58cb: $2e $1a
    nop                                           ; $58cd: $00
    adc h                                         ; $58ce: $8c
    dec de                                        ; $58cf: $1b
    nop                                           ; $58d0: $00
    ld [$001c], a                                 ; $58d1: $ea $1c $00
    ld c, b                                       ; $58d4: $48
    ld e, $00                                     ; $58d5: $1e $00
    and [hl]                                      ; $58d7: $a6
    rra                                           ; $58d8: $1f
    nop                                           ; $58d9: $00
    inc b                                         ; $58da: $04
    ld hl, $6200                                  ; $58db: $21 $00 $62
    ld [hl+], a                                   ; $58de: $22
    nop                                           ; $58df: $00
    ret nz                                        ; $58e0: $c0

    inc hl                                        ; $58e1: $23
    nop                                           ; $58e2: $00
    ld e, $25                                     ; $58e3: $1e $25
    nop                                           ; $58e5: $00
    ld a, h                                       ; $58e6: $7c
    ld h, $00                                     ; $58e7: $26 $00
    jp c, Jump_000_0027                           ; $58e9: $da $27 $00

    jr c, jr_002_5917                             ; $58ec: $38 $29

    nop                                           ; $58ee: $00
    sub [hl]                                      ; $58ef: $96
    ld a, [hl+]                                   ; $58f0: $2a
    nop                                           ; $58f1: $00
    db $f4                                        ; $58f2: $f4
    dec hl                                        ; $58f3: $2b
    nop                                           ; $58f4: $00
    ld d, d                                       ; $58f5: $52
    dec l                                         ; $58f6: $2d
    nop                                           ; $58f7: $00
    or b                                          ; $58f8: $b0
    ld l, $00                                     ; $58f9: $2e $00
    ld c, $30                                     ; $58fb: $0e $30
    nop                                           ; $58fd: $00
    ld l, h                                       ; $58fe: $6c
    ld sp, $ca00                                  ; $58ff: $31 $00 $ca
    ld [hl-], a                                   ; $5902: $32
    nop                                           ; $5903: $00
    jr z, jr_002_593a                             ; $5904: $28 $34

    nop                                           ; $5906: $00
    add [hl]                                      ; $5907: $86
    dec [hl]                                      ; $5908: $35
    nop                                           ; $5909: $00
    db $e4                                        ; $590a: $e4
    ld [hl], $00                                  ; $590b: $36 $00
    ld b, d                                       ; $590d: $42
    jr c, jr_002_5910                             ; $590e: $38 $00

jr_002_5910:
    and b                                         ; $5910: $a0
    add hl, sp                                    ; $5911: $39
    nop                                           ; $5912: $00
    cp $3a                                        ; $5913: $fe $3a
    nop                                           ; $5915: $00
    ld e, h                                       ; $5916: $5c

jr_002_5917:
    inc a                                         ; $5917: $3c
    nop                                           ; $5918: $00
    cp d                                          ; $5919: $ba
    dec a                                         ; $591a: $3d
    nop                                           ; $591b: $00
    jr jr_002_595d                                ; $591c: $18 $3f

    nop                                           ; $591e: $00
    halt                                          ; $591f: $76
    ld b, b                                       ; $5920: $40
    nop                                           ; $5921: $00
    call nc, $0041                                ; $5922: $d4 $41 $00
    ld [hl-], a                                   ; $5925: $32
    ld b, e                                       ; $5926: $43
    nop                                           ; $5927: $00
    sub b                                         ; $5928: $90
    ld b, h                                       ; $5929: $44
    nop                                           ; $592a: $00
    xor $45                                       ; $592b: $ee $45
    nop                                           ; $592d: $00
    ld c, h                                       ; $592e: $4c
    ld b, a                                       ; $592f: $47
    nop                                           ; $5930: $00
    xor d                                         ; $5931: $aa
    ld c, b                                       ; $5932: $48
    nop                                           ; $5933: $00
    ld [$004a], sp                                ; $5934: $08 $4a $00
    ld h, [hl]                                    ; $5937: $66
    ld c, e                                       ; $5938: $4b
    nop                                           ; $5939: $00

jr_002_593a:
    call nz, Call_000_004c                        ; $593a: $c4 $4c $00
    ld [hl+], a                                   ; $593d: $22
    ld c, [hl]                                    ; $593e: $4e
    nop                                           ; $593f: $00
    add b                                         ; $5940: $80
    ld c, a                                       ; $5941: $4f
    nop                                           ; $5942: $00
    sbc $50                                       ; $5943: $de $50
    nop                                           ; $5945: $00
    inc a                                         ; $5946: $3c
    ld d, d                                       ; $5947: $52
    nop                                           ; $5948: $00
    sbc d                                         ; $5949: $9a
    ld d, e                                       ; $594a: $53
    nop                                           ; $594b: $00
    ld hl, sp+$54                                 ; $594c: $f8 $54
    nop                                           ; $594e: $00
    ld d, [hl]                                    ; $594f: $56
    ld d, [hl]                                    ; $5950: $56
    nop                                           ; $5951: $00
    or h                                          ; $5952: $b4
    ld d, a                                       ; $5953: $57
    nop                                           ; $5954: $00
    ld [de], a                                    ; $5955: $12
    ld e, c                                       ; $5956: $59
    nop                                           ; $5957: $00
    ld [hl], b                                    ; $5958: $70
    ld e, d                                       ; $5959: $5a
    nop                                           ; $595a: $00
    adc $5b                                       ; $595b: $ce $5b

jr_002_595d:
    nop                                           ; $595d: $00
    inc l                                         ; $595e: $2c
    ld e, l                                       ; $595f: $5d
    nop                                           ; $5960: $00
    adc d                                         ; $5961: $8a
    ld e, [hl]                                    ; $5962: $5e
    nop                                           ; $5963: $00
    add sp, $5f                                   ; $5964: $e8 $5f
    nop                                           ; $5966: $00
    ld b, [hl]                                    ; $5967: $46
    ld h, c                                       ; $5968: $61
    nop                                           ; $5969: $00
    and h                                         ; $596a: $a4
    ld h, d                                       ; $596b: $62
    nop                                           ; $596c: $00
    ld [bc], a                                    ; $596d: $02
    ld h, h                                       ; $596e: $64
    nop                                           ; $596f: $00
    ld h, b                                       ; $5970: $60
    ld h, l                                       ; $5971: $65
    nop                                           ; $5972: $00
    cp [hl]                                       ; $5973: $be
    ld h, [hl]                                    ; $5974: $66
    nop                                           ; $5975: $00
    inc e                                         ; $5976: $1c
    ld l, b                                       ; $5977: $68
    nop                                           ; $5978: $00
    ld a, d                                       ; $5979: $7a
    ld l, c                                       ; $597a: $69
    nop                                           ; $597b: $00
    ret c                                         ; $597c: $d8

    ld l, d                                       ; $597d: $6a
    nop                                           ; $597e: $00
    ld [hl], $6c                                  ; $597f: $36 $6c
    nop                                           ; $5981: $00
    rst $38                                       ; $5982: $ff
    rst $38                                       ; $5983: $ff
    rst $38                                       ; $5984: $ff
    ld a, $06                                     ; $5985: $3e $06
    ldh [$96], a                                  ; $5987: $e0 $96
    ldh [rSVBK], a                                ; $5989: $e0 $70
    ld a, $00                                     ; $598b: $3e $00
    call Call_002_5a24                            ; $598d: $cd $24 $5a
    call Call_002_5afb                            ; $5990: $cd $fb $5a
    ld a, $01                                     ; $5993: $3e $01
    call Call_002_5a24                            ; $5995: $cd $24 $5a
    call Call_002_5afb                            ; $5998: $cd $fb $5a
    ld a, $02                                     ; $599b: $3e $02
    call Call_002_5a24                            ; $599d: $cd $24 $5a
    call Call_002_5afb                            ; $59a0: $cd $fb $5a
    ld bc, $0900                                  ; $59a3: $01 $00 $09
    call Call_002_5a17                            ; $59a6: $cd $17 $5a
    ld bc, $0f03                                  ; $59a9: $01 $03 $0f
    call Call_002_5afb                            ; $59ac: $cd $fb $5a
    ld hl, $1160                                  ; $59af: $21 $60 $11
    ld bc, $0800                                  ; $59b2: $01 $00 $08
    call Call_002_5a07                            ; $59b5: $cd $07 $5a
    ld bc, $0f04                                  ; $59b8: $01 $04 $0f
    call Call_002_5afb                            ; $59bb: $cd $fb $5a
    ld bc, $0400                                  ; $59be: $01 $00 $04
    call Call_002_5a17                            ; $59c1: $cd $17 $5a
    ld bc, $0f05                                  ; $59c4: $01 $05 $0f
    call Call_002_5afb                            ; $59c7: $cd $fb $5a
    ld hl, $0a00                                  ; $59ca: $21 $00 $0a
    ld bc, $0500                                  ; $59cd: $01 $00 $05
    call Call_002_5a07                            ; $59d0: $cd $07 $5a
    ld bc, $0f06                                  ; $59d3: $01 $06 $0f
    call Call_002_5afb                            ; $59d6: $cd $fb $5a
    ld hl, $0a40                                  ; $59d9: $21 $40 $0a
    ld bc, $0600                                  ; $59dc: $01 $00 $06
    call Call_002_5a07                            ; $59df: $cd $07 $5a
    ld bc, $0f07                                  ; $59e2: $01 $07 $0f
    call Call_002_5afb                            ; $59e5: $cd $fb $5a
    ld hl, $0a80                                  ; $59e8: $21 $80 $0a
    ld bc, $0700                                  ; $59eb: $01 $00 $07
    call Call_002_5a07                            ; $59ee: $cd $07 $5a
    ld bc, $0f08                                  ; $59f1: $01 $08 $0f
    call Call_002_5afb                            ; $59f4: $cd $fb $5a
    ld hl, $0ea0                                  ; $59f7: $21 $a0 $0e
    ld bc, $0a00                                  ; $59fa: $01 $00 $0a
    call Call_002_5a07                            ; $59fd: $cd $07 $5a
    ld bc, $0f09                                  ; $5a00: $01 $09 $0f
    call Call_002_5afb                            ; $5a03: $cd $fb $5a
    ret                                           ; $5a06: $c9


Call_002_5a07:
    push de                                       ; $5a07: $d5
    ldh a, [$cf]                                  ; $5a08: $f0 $cf
    or a                                          ; $5a0a: $b7
    jr nz, jr_002_5a18                            ; $5a0b: $20 $0b

    ld d, h                                       ; $5a0d: $54
    ld e, l                                       ; $5a0e: $5d
    call Call_000_2d10                            ; $5a0f: $cd $10 $2d
    jp z, Jump_002_5a1d                           ; $5a12: $ca $1d $5a

    jr jr_002_5a18                                ; $5a15: $18 $01

Call_002_5a17:
    push de                                       ; $5a17: $d5

jr_002_5a18:
    call Call_002_4a28                            ; $5a18: $cd $28 $4a
    pop de                                        ; $5a1b: $d1
    ret                                           ; $5a1c: $c9


Jump_002_5a1d:
    ld a, $ff                                     ; $5a1d: $3e $ff
    ld [$c890], a                                 ; $5a1f: $ea $90 $c8
    pop de                                        ; $5a22: $d1
    ret                                           ; $5a23: $c9


Call_002_5a24:
    ld c, a                                       ; $5a24: $4f
    ld b, $0f                                     ; $5a25: $06 $0f
    ld a, $ff                                     ; $5a27: $3e $ff
    ld [$c890], a                                 ; $5a29: $ea $90 $c8
    ret                                           ; $5a2c: $c9


    ld a, $06                                     ; $5a2d: $3e $06
    ldh [$96], a                                  ; $5a2f: $e0 $96
    ldh [rSVBK], a                                ; $5a31: $e0 $70
    ld a, $00                                     ; $5a33: $3e $00
    call Call_002_5aca                            ; $5a35: $cd $ca $5a
    call Call_002_5afb                            ; $5a38: $cd $fb $5a
    ld a, $01                                     ; $5a3b: $3e $01
    call Call_002_5aca                            ; $5a3d: $cd $ca $5a
    call Call_002_5afb                            ; $5a40: $cd $fb $5a
    ld a, $02                                     ; $5a43: $3e $02
    call Call_002_5aca                            ; $5a45: $cd $ca $5a
    call Call_002_5afb                            ; $5a48: $cd $fb $5a
    ld bc, $0900                                  ; $5a4b: $01 $00 $09
    call Call_002_5aa6                            ; $5a4e: $cd $a6 $5a
    ld bc, $0f03                                  ; $5a51: $01 $03 $0f
    call Call_002_5afb                            ; $5a54: $cd $fb $5a
    ld bc, $0800                                  ; $5a57: $01 $00 $08
    call Call_002_5aa6                            ; $5a5a: $cd $a6 $5a
    ld bc, $0f04                                  ; $5a5d: $01 $04 $0f
    call Call_002_5afb                            ; $5a60: $cd $fb $5a
    ld bc, $0400                                  ; $5a63: $01 $00 $04
    call Call_002_5aa9                            ; $5a66: $cd $a9 $5a
    ld bc, $0f05                                  ; $5a69: $01 $05 $0f
    call Call_002_5afb                            ; $5a6c: $cd $fb $5a
    ld bc, $0500                                  ; $5a6f: $01 $00 $05
    call Call_002_5aa9                            ; $5a72: $cd $a9 $5a
    ld bc, $0f06                                  ; $5a75: $01 $06 $0f
    call Call_002_5afb                            ; $5a78: $cd $fb $5a
    ld bc, $0600                                  ; $5a7b: $01 $00 $06
    call Call_002_5aa9                            ; $5a7e: $cd $a9 $5a
    ld bc, $0f07                                  ; $5a81: $01 $07 $0f
    call Call_002_5afb                            ; $5a84: $cd $fb $5a
    ld bc, $0700                                  ; $5a87: $01 $00 $07
    call Call_002_5aa9                            ; $5a8a: $cd $a9 $5a
    ld bc, $0f08                                  ; $5a8d: $01 $08 $0f
    call Call_002_5afb                            ; $5a90: $cd $fb $5a
    ld bc, $0a00                                  ; $5a93: $01 $00 $0a
    call Call_002_5aa9                            ; $5a96: $cd $a9 $5a
    ld bc, $0f09                                  ; $5a99: $01 $09 $0f
    call Call_002_5afb                            ; $5a9c: $cd $fb $5a
    push af                                       ; $5a9f: $f5
    xor a                                         ; $5aa0: $af
    ld [$c818], a                                 ; $5aa1: $ea $18 $c8
    pop af                                        ; $5aa4: $f1
    ret                                           ; $5aa5: $c9


Call_002_5aa6:
    push de                                       ; $5aa6: $d5
    jr jr_002_5abe                                ; $5aa7: $18 $15

Call_002_5aa9:
    push de                                       ; $5aa9: $d5
    ldh a, [$cf]                                  ; $5aaa: $f0 $cf
    or a                                          ; $5aac: $b7
    jr nz, jr_002_5abe                            ; $5aad: $20 $0f

    ld h, $00                                     ; $5aaf: $26 $00
    ld l, b                                       ; $5ab1: $68
    add hl, hl                                    ; $5ab2: $29
    add hl, hl                                    ; $5ab3: $29
    add hl, hl                                    ; $5ab4: $29
    add hl, hl                                    ; $5ab5: $29
    add hl, hl                                    ; $5ab6: $29
    ld d, h                                       ; $5ab7: $54
    ld e, l                                       ; $5ab8: $5d
    call Call_002_44f2                            ; $5ab9: $cd $f2 $44
    jr z, jr_002_5ac3                             ; $5abc: $28 $05

jr_002_5abe:
    call Call_002_4a28                            ; $5abe: $cd $28 $4a
    pop de                                        ; $5ac1: $d1
    ret                                           ; $5ac2: $c9


jr_002_5ac3:
    ld a, $ff                                     ; $5ac3: $3e $ff
    ld [$c890], a                                 ; $5ac5: $ea $90 $c8
    pop de                                        ; $5ac8: $d1
    ret                                           ; $5ac9: $c9


Call_002_5aca:
    push de                                       ; $5aca: $d5
    ld hl, $c800                                  ; $5acb: $21 $00 $c8
    ld b, a                                       ; $5ace: $47
    ld c, a                                       ; $5acf: $4f
    push bc                                       ; $5ad0: $c5
    rst $18                                       ; $5ad1: $df

    db $06, $02

    pop bc                                        ; $5ad4: $c1
    pop de                                        ; $5ad5: $d1
    or a                                          ; $5ad6: $b7
    jr z, jr_002_5aec                             ; $5ad7: $28 $13

    ld a, [$c33f]                                 ; $5ad9: $fa $3f $c3
    or a                                          ; $5adc: $b7
    ld a, h                                       ; $5add: $7c
    jr nz, jr_002_5ae6                            ; $5ade: $20 $06

    ld a, $0f                                     ; $5ae0: $3e $0f
    ld [$c890], a                                 ; $5ae2: $ea $90 $c8
    ret                                           ; $5ae5: $c9


jr_002_5ae6:
    ld a, $ff                                     ; $5ae6: $3e $ff
    ld [$c890], a                                 ; $5ae8: $ea $90 $c8
    ret                                           ; $5aeb: $c9


jr_002_5aec:
    push bc                                       ; $5aec: $c5
    push de                                       ; $5aed: $d5
    xor a                                         ; $5aee: $af
    ld [$c2a5], a                                 ; $5aef: $ea $a5 $c2
    ld bc, $8000                                  ; $5af2: $01 $00 $80
    call Call_002_4a28                            ; $5af5: $cd $28 $4a
    pop de                                        ; $5af8: $d1
    pop bc                                        ; $5af9: $c1
    ret                                           ; $5afa: $c9


Call_002_5afb:
    push de                                       ; $5afb: $d5
    ld h, $00                                     ; $5afc: $26 $00
    ld l, c                                       ; $5afe: $69
    add hl, hl                                    ; $5aff: $29
    add hl, hl                                    ; $5b00: $29
    add hl, hl                                    ; $5b01: $29
    add hl, hl                                    ; $5b02: $29
    add hl, hl                                    ; $5b03: $29
    add hl, de                                    ; $5b04: $19
    push hl                                       ; $5b05: $e5
    ld c, $02                                     ; $5b06: $0e $02
    call Call_000_03a7                            ; $5b08: $cd $a7 $03
    pop de                                        ; $5b0b: $d1
    ld a, [$c890]                                 ; $5b0c: $fa $90 $c8
    ld [de], a                                    ; $5b0f: $12
    inc de                                        ; $5b10: $13
    ld a, b                                       ; $5b11: $78
    ld [de], a                                    ; $5b12: $12
    inc de                                        ; $5b13: $13
    ld hl, $c880                                  ; $5b14: $21 $80 $c8
    ld bc, $000b                                  ; $5b17: $01 $0b $00
    call Call_000_03d3                            ; $5b1a: $cd $d3 $03
    ld a, [$c892]                                 ; $5b1d: $fa $92 $c8
    ld [de], a                                    ; $5b20: $12
    inc de                                        ; $5b21: $13
    ld a, [$c89a]                                 ; $5b22: $fa $9a $c8
    ld [de], a                                    ; $5b25: $12
    inc de                                        ; $5b26: $13
    ld a, [$c89b]                                 ; $5b27: $fa $9b $c8
    ld [de], a                                    ; $5b2a: $12
    inc de                                        ; $5b2b: $13
    ld a, [$c891]                                 ; $5b2c: $fa $91 $c8
    ld [de], a                                    ; $5b2f: $12
    inc de                                        ; $5b30: $13
    ld a, [$c89d]                                 ; $5b31: $fa $9d $c8
    ld [de], a                                    ; $5b34: $12
    inc de                                        ; $5b35: $13
    pop de                                        ; $5b36: $d1
    ret                                           ; $5b37: $c9


Call_002_5b38:
    push de                                       ; $5b38: $d5
    ld hl, $c800                                  ; $5b39: $21 $00 $c8
    ld b, a                                       ; $5b3c: $47
    ld c, a                                       ; $5b3d: $4f
    push bc                                       ; $5b3e: $c5
    rst $18                                       ; $5b3f: $df
    ld b, $02                                     ; $5b40: $06 $02
    pop bc                                        ; $5b42: $c1
    pop de                                        ; $5b43: $d1
    or a                                          ; $5b44: $b7
    jr z, jr_002_5b4f                             ; $5b45: $28 $08

    ld a, $ff                                     ; $5b47: $3e $ff
    ld [$c890], a                                 ; $5b49: $ea $90 $c8
    ld a, $ff                                     ; $5b4c: $3e $ff
    ret                                           ; $5b4e: $c9


jr_002_5b4f:
    push bc                                       ; $5b4f: $c5
    push de                                       ; $5b50: $d5
    ld bc, $8000                                  ; $5b51: $01 $00 $80
    call Call_002_4a28                            ; $5b54: $cd $28 $4a
    pop de                                        ; $5b57: $d1
    pop bc                                        ; $5b58: $c1
    xor a                                         ; $5b59: $af
    ret                                           ; $5b5a: $c9


    ld a, $06                                     ; $5b5b: $3e $06
    ldh [$96], a                                  ; $5b5d: $e0 $96
    ldh [rSVBK], a                                ; $5b5f: $e0 $70
    xor a                                         ; $5b61: $af
    push af                                       ; $5b62: $f5
    ld a, $00                                     ; $5b63: $3e $00
    call Call_002_5b38                            ; $5b65: $cd $38 $5b
    cp $00                                        ; $5b68: $fe $00
    jr z, jr_002_5b76                             ; $5b6a: $28 $0a

    ld a, $00                                     ; $5b6c: $3e $00
    call Call_002_5a24                            ; $5b6e: $cd $24 $5a
    call Call_002_5afb                            ; $5b71: $cd $fb $5a
    jr jr_002_5b7c                                ; $5b74: $18 $06

jr_002_5b76:
    call Call_002_5afb                            ; $5b76: $cd $fb $5a
    pop af                                        ; $5b79: $f1
    inc a                                         ; $5b7a: $3c
    push af                                       ; $5b7b: $f5

jr_002_5b7c:
    ld a, $01                                     ; $5b7c: $3e $01
    call Call_002_5b38                            ; $5b7e: $cd $38 $5b
    cp $00                                        ; $5b81: $fe $00
    jr z, jr_002_5b8f                             ; $5b83: $28 $0a

    ld a, $01                                     ; $5b85: $3e $01
    call Call_002_5a24                            ; $5b87: $cd $24 $5a
    call Call_002_5afb                            ; $5b8a: $cd $fb $5a
    jr jr_002_5b95                                ; $5b8d: $18 $06

jr_002_5b8f:
    call Call_002_5afb                            ; $5b8f: $cd $fb $5a
    pop af                                        ; $5b92: $f1
    inc a                                         ; $5b93: $3c
    push af                                       ; $5b94: $f5

jr_002_5b95:
    ld a, $02                                     ; $5b95: $3e $02
    call Call_002_5b38                            ; $5b97: $cd $38 $5b
    cp $00                                        ; $5b9a: $fe $00
    jr z, jr_002_5ba8                             ; $5b9c: $28 $0a

    ld a, $02                                     ; $5b9e: $3e $02
    call Call_002_5a24                            ; $5ba0: $cd $24 $5a
    call Call_002_5afb                            ; $5ba3: $cd $fb $5a
    jr jr_002_5bae                                ; $5ba6: $18 $06

jr_002_5ba8:
    call Call_002_5afb                            ; $5ba8: $cd $fb $5a
    pop af                                        ; $5bab: $f1
    inc a                                         ; $5bac: $3c
    push af                                       ; $5bad: $f5

jr_002_5bae:
    ld a, $03                                     ; $5bae: $3e $03
    call Call_002_5a24                            ; $5bb0: $cd $24 $5a
    call Call_002_5afb                            ; $5bb3: $cd $fb $5a
    ld a, $04                                     ; $5bb6: $3e $04
    call Call_002_5a24                            ; $5bb8: $cd $24 $5a
    call Call_002_5afb                            ; $5bbb: $cd $fb $5a
    ld a, $05                                     ; $5bbe: $3e $05
    call Call_002_5a24                            ; $5bc0: $cd $24 $5a
    call Call_002_5afb                            ; $5bc3: $cd $fb $5a
    ld a, $06                                     ; $5bc6: $3e $06
    call Call_002_5a24                            ; $5bc8: $cd $24 $5a
    call Call_002_5afb                            ; $5bcb: $cd $fb $5a
    ld a, $07                                     ; $5bce: $3e $07
    call Call_002_5a24                            ; $5bd0: $cd $24 $5a
    call Call_002_5afb                            ; $5bd3: $cd $fb $5a
    ld a, $08                                     ; $5bd6: $3e $08
    call Call_002_5a24                            ; $5bd8: $cd $24 $5a
    call Call_002_5afb                            ; $5bdb: $cd $fb $5a
    ld a, $09                                     ; $5bde: $3e $09
    call Call_002_5a24                            ; $5be0: $cd $24 $5a
    call Call_002_5afb                            ; $5be3: $cd $fb $5a
    xor a                                         ; $5be6: $af
    ld [$c818], a                                 ; $5be7: $ea $18 $c8
    pop af                                        ; $5bea: $f1
    ret                                           ; $5beb: $c9


Call_002_5bec:
    ld a, [$c836]                                 ; $5bec: $fa $36 $c8
    or a                                          ; $5bef: $b7
    jr z, jr_002_5c17                             ; $5bf0: $28 $25

    cp $06                                        ; $5bf2: $fe $06
    jr nc, jr_002_5c17                            ; $5bf4: $30 $21

    ld a, [$c834]                                 ; $5bf6: $fa $34 $c8
    cp $01                                        ; $5bf9: $fe $01
    jr z, jr_002_5bff                             ; $5bfb: $28 $02

    jr jr_002_5c17                                ; $5bfd: $18 $18

jr_002_5bff:
    ld hl, $c880                                  ; $5bff: $21 $80 $c8
    ld a, [$c835]                                 ; $5c02: $fa $35 $c8
    and $01                                       ; $5c05: $e6 $01
    swap a                                        ; $5c07: $cb $37
    add a                                         ; $5c09: $87
    add a                                         ; $5c0a: $87
    add l                                         ; $5c0b: $85
    add $13                                       ; $5c0c: $c6 $13
    ld l, a                                       ; $5c0e: $6f
    ld a, [hl]                                    ; $5c0f: $7e
    or a                                          ; $5c10: $b7
    jr nz, jr_002_5c17                            ; $5c11: $20 $04

    ld a, $01                                     ; $5c13: $3e $01
    or a                                          ; $5c15: $b7
    ret                                           ; $5c16: $c9


jr_002_5c17:
    xor a                                         ; $5c17: $af
    ret                                           ; $5c18: $c9


Call_002_5c19:
    ld a, [$c834]                                 ; $5c19: $fa $34 $c8
    cp $01                                        ; $5c1c: $fe $01
    jr z, jr_002_5c36                             ; $5c1e: $28 $16

    cp $02                                        ; $5c20: $fe $02
    jr z, jr_002_5c36                             ; $5c22: $28 $12

    cp $03                                        ; $5c24: $fe $03
    jr z, jr_002_5c36                             ; $5c26: $28 $0e

    cp $05                                        ; $5c28: $fe $05
    jr z, jr_002_5c36                             ; $5c2a: $28 $0a

    cp $0a                                        ; $5c2c: $fe $0a
    jr z, jr_002_5c36                             ; $5c2e: $28 $06

    cp $0b                                        ; $5c30: $fe $0b
    jr z, jr_002_5c36                             ; $5c32: $28 $02

    jr jr_002_5c4e                                ; $5c34: $18 $18

jr_002_5c36:
    ld hl, $c880                                  ; $5c36: $21 $80 $c8
    ld a, [$c835]                                 ; $5c39: $fa $35 $c8
    and $01                                       ; $5c3c: $e6 $01
    swap a                                        ; $5c3e: $cb $37
    add a                                         ; $5c40: $87
    add a                                         ; $5c41: $87
    add l                                         ; $5c42: $85
    add $13                                       ; $5c43: $c6 $13
    ld l, a                                       ; $5c45: $6f
    ld a, [hl]                                    ; $5c46: $7e
    or a                                          ; $5c47: $b7
    jr nz, jr_002_5c4e                            ; $5c48: $20 $04

    ld a, $01                                     ; $5c4a: $3e $01
    or a                                          ; $5c4c: $b7
    ret                                           ; $5c4d: $c9


jr_002_5c4e:
    xor a                                         ; $5c4e: $af
    ret                                           ; $5c4f: $c9


    call Call_002_5bec                            ; $5c50: $cd $ec $5b
    jr z, jr_002_5c75                             ; $5c53: $28 $20

    ld a, [$c836]                                 ; $5c55: $fa $36 $c8
    dec a                                         ; $5c58: $3d
    ld h, $00                                     ; $5c59: $26 $00
    ld l, a                                       ; $5c5b: $6f
    ld d, h                                       ; $5c5c: $54
    ld e, l                                       ; $5c5d: $5d
    add hl, hl                                    ; $5c5e: $29
    add hl, de                                    ; $5c5f: $19
    add hl, hl                                    ; $5c60: $29
    add hl, hl                                    ; $5c61: $29
    add hl, hl                                    ; $5c62: $29
    add l                                         ; $5c63: $85
    ld l, a                                       ; $5c64: $6f
    jr nc, jr_002_5c68                            ; $5c65: $30 $01

    inc h                                         ; $5c67: $24

jr_002_5c68:
    ld de, $c996                                  ; $5c68: $11 $96 $c9
    add hl, de                                    ; $5c6b: $19
    ld a, [$c837]                                 ; $5c6c: $fa $37 $c8
    call Call_002_5cd3                            ; $5c6f: $cd $d3 $5c
    ld a, $01                                     ; $5c72: $3e $01
    ret                                           ; $5c74: $c9


jr_002_5c75:
    xor a                                         ; $5c75: $af
    ret                                           ; $5c76: $c9


    ld a, h                                       ; $5c77: $7c
    or a                                          ; $5c78: $b7
    jr z, jr_002_5ca3                             ; $5c79: $28 $28

    cp $06                                        ; $5c7b: $fe $06
    jr nc, jr_002_5ca3                            ; $5c7d: $30 $24

    ld a, l                                       ; $5c7f: $7d
    cp $18                                        ; $5c80: $fe $18
    jr nc, jr_002_5ca3                            ; $5c82: $30 $1f

    push hl                                       ; $5c84: $e5
    push de                                       ; $5c85: $d5
    push af                                       ; $5c86: $f5
    ld a, h                                       ; $5c87: $7c
    dec a                                         ; $5c88: $3d
    ld l, a                                       ; $5c89: $6f
    ld h, $00                                     ; $5c8a: $26 $00
    ld d, h                                       ; $5c8c: $54
    ld e, l                                       ; $5c8d: $5d
    add hl, hl                                    ; $5c8e: $29
    add hl, de                                    ; $5c8f: $19
    add hl, hl                                    ; $5c90: $29
    add hl, hl                                    ; $5c91: $29
    add hl, hl                                    ; $5c92: $29
    add l                                         ; $5c93: $85
    ld l, a                                       ; $5c94: $6f
    jr nc, jr_002_5c98                            ; $5c95: $30 $01

    inc h                                         ; $5c97: $24

jr_002_5c98:
    ld de, $c996                                  ; $5c98: $11 $96 $c9
    add hl, de                                    ; $5c9b: $19
    pop af                                        ; $5c9c: $f1
    call $5d11                                    ; $5c9d: $cd $11 $5d
    pop de                                        ; $5ca0: $d1
    pop hl                                        ; $5ca1: $e1
    ret                                           ; $5ca2: $c9


jr_002_5ca3:
    xor a                                         ; $5ca3: $af
    ret                                           ; $5ca4: $c9


    ld a, h                                       ; $5ca5: $7c
    or a                                          ; $5ca6: $b7
    jr z, jr_002_5cd1                             ; $5ca7: $28 $28

    cp $06                                        ; $5ca9: $fe $06
    jr nc, jr_002_5cd1                            ; $5cab: $30 $24

    ld a, l                                       ; $5cad: $7d
    cp $18                                        ; $5cae: $fe $18
    jr nc, jr_002_5cd1                            ; $5cb0: $30 $1f

    push hl                                       ; $5cb2: $e5
    push de                                       ; $5cb3: $d5
    push af                                       ; $5cb4: $f5
    ld a, h                                       ; $5cb5: $7c
    dec a                                         ; $5cb6: $3d
    ld l, a                                       ; $5cb7: $6f
    ld h, $00                                     ; $5cb8: $26 $00
    ld d, h                                       ; $5cba: $54
    ld e, l                                       ; $5cbb: $5d
    add hl, hl                                    ; $5cbc: $29
    add hl, de                                    ; $5cbd: $19
    add hl, hl                                    ; $5cbe: $29
    add hl, hl                                    ; $5cbf: $29
    add hl, hl                                    ; $5cc0: $29
    add l                                         ; $5cc1: $85
    ld l, a                                       ; $5cc2: $6f
    jr nc, jr_002_5cc6                            ; $5cc3: $30 $01

    inc h                                         ; $5cc5: $24

jr_002_5cc6:
    ld de, $c996                                  ; $5cc6: $11 $96 $c9
    add hl, de                                    ; $5cc9: $19
    pop af                                        ; $5cca: $f1
    call Call_002_5cd3                            ; $5ccb: $cd $d3 $5c
    pop de                                        ; $5cce: $d1
    pop hl                                        ; $5ccf: $e1
    ret                                           ; $5cd0: $c9


jr_002_5cd1:
    xor a                                         ; $5cd1: $af
    ret                                           ; $5cd2: $c9


Call_002_5cd3:
jr_002_5cd3:
    cp $08                                        ; $5cd3: $fe $08
    jr c, jr_002_5cdc                             ; $5cd5: $38 $05

    sub $08                                       ; $5cd7: $d6 $08
    inc hl                                        ; $5cd9: $23
    jr jr_002_5cd3                                ; $5cda: $18 $f7

jr_002_5cdc:
    push hl                                       ; $5cdc: $e5
    ld hl, $5cea                                  ; $5cdd: $21 $ea $5c
    add l                                         ; $5ce0: $85
    ld l, a                                       ; $5ce1: $6f
    jr nc, jr_002_5ce5                            ; $5ce2: $30 $01

    inc h                                         ; $5ce4: $24

jr_002_5ce5:
    ld a, [hl]                                    ; $5ce5: $7e
    pop hl                                        ; $5ce6: $e1
    or [hl]                                       ; $5ce7: $b6
    ld [hl], a                                    ; $5ce8: $77
    ret                                           ; $5ce9: $c9


    add b                                         ; $5cea: $80
    ld b, b                                       ; $5ceb: $40
    jr nz, @+$12                                  ; $5cec: $20 $10

    ld [$0204], sp                                ; $5cee: $08 $04 $02
    ld bc, $08fe                                  ; $5cf1: $01 $fe $08
    jr c, jr_002_5cfb                             ; $5cf4: $38 $05

    sub $08                                       ; $5cf6: $d6 $08
    inc hl                                        ; $5cf8: $23
    jr @-$07                                      ; $5cf9: $18 $f7

jr_002_5cfb:
    push hl                                       ; $5cfb: $e5
    ld hl, $5d09                                  ; $5cfc: $21 $09 $5d
    add l                                         ; $5cff: $85
    ld l, a                                       ; $5d00: $6f
    jr nc, jr_002_5d04                            ; $5d01: $30 $01

    inc h                                         ; $5d03: $24

jr_002_5d04:
    ld a, [hl]                                    ; $5d04: $7e
    pop hl                                        ; $5d05: $e1
    and [hl]                                      ; $5d06: $a6
    ld [hl], a                                    ; $5d07: $77
    ret                                           ; $5d08: $c9


    ld a, a                                       ; $5d09: $7f
    cp a                                          ; $5d0a: $bf
    rst $18                                       ; $5d0b: $df
    rst $28                                       ; $5d0c: $ef
    rst $30                                       ; $5d0d: $f7
    ei                                            ; $5d0e: $fb
    db $fd                                        ; $5d0f: $fd
    cp $fe                                        ; $5d10: $fe $fe
    ld [$0538], sp                                ; $5d12: $08 $38 $05
    sub $08                                       ; $5d15: $d6 $08
    inc hl                                        ; $5d17: $23
    jr @-$07                                      ; $5d18: $18 $f7

    push hl                                       ; $5d1a: $e5
    ld hl, $5d27                                  ; $5d1b: $21 $27 $5d
    add l                                         ; $5d1e: $85
    ld l, a                                       ; $5d1f: $6f
    jr nc, jr_002_5d23                            ; $5d20: $30 $01

    inc h                                         ; $5d22: $24

jr_002_5d23:
    ld a, [hl]                                    ; $5d23: $7e
    pop hl                                        ; $5d24: $e1
    and [hl]                                      ; $5d25: $a6
    ret                                           ; $5d26: $c9


    add b                                         ; $5d27: $80
    ld b, b                                       ; $5d28: $40
    jr nz, jr_002_5d3b                            ; $5d29: $20 $10

    ld [$0204], sp                                ; $5d2b: $08 $04 $02
    ld bc, $02df                                  ; $5d2e: $01 $df $02
    ld [bc], a                                    ; $5d31: $02
    or a                                          ; $5d32: $b7
    jr jr_002_5d42                                ; $5d33: $18 $0d

    ld hl, $5d8f                                  ; $5d35: $21 $8f $5d
    ld de, $0408                                  ; $5d38: $11 $08 $04

jr_002_5d3b:
    call Call_000_20b1                            ; $5d3b: $cd $b1 $20
    call Call_000_2ed5                            ; $5d3e: $cd $d5 $2e
    inc a                                         ; $5d41: $3c

jr_002_5d42:
    ld a, $03                                     ; $5d42: $3e $03
    ldh [$9e], a                                  ; $5d44: $e0 $9e
    ld a, $01                                     ; $5d46: $3e $01
    ldh [$96], a                                  ; $5d48: $e0 $96
    ldh [rSVBK], a                                ; $5d4a: $e0 $70
    ld hl, $d000                                  ; $5d4c: $21 $00 $d0
    ld b, $03                                     ; $5d4f: $06 $03
    rst $18                                       ; $5d51: $df
    ld b, $02                                     ; $5d52: $06 $02
    or a                                          ; $5d54: $b7
    jr z, jr_002_5da0                             ; $5d55: $28 $49

    cp $ff                                        ; $5d57: $fe $ff
    jr nz, jr_002_5d69                            ; $5d59: $20 $0e

    ld hl, $5d7f                                  ; $5d5b: $21 $7f $5d
    ld de, $0408                                  ; $5d5e: $11 $08 $04
    call Call_000_20b1                            ; $5d61: $cd $b1 $20
    call Call_000_2e3b                            ; $5d64: $cd $3b $2e

jr_002_5d67:
    jr jr_002_5d67                                ; $5d67: $18 $fe

jr_002_5d69:
    ld hl, $5d77                                  ; $5d69: $21 $77 $5d
    ld de, $0408                                  ; $5d6c: $11 $08 $04
    call Call_000_20b1                            ; $5d6f: $cd $b1 $20
    call Call_000_2e3b                            ; $5d72: $cd $3b $2e

jr_002_5d75:
    jr jr_002_5d75                                ; $5d75: $18 $fe

    ld c, [hl]                                    ; $5d77: $4e
    ld c, a                                       ; $5d78: $4f
    jr nz, jr_002_5dc1                            ; $5d79: $20 $46

    ld c, c                                       ; $5d7b: $49
    ld c, h                                       ; $5d7c: $4c
    ld b, l                                       ; $5d7d: $45
    nop                                           ; $5d7e: $00
    ld b, e                                       ; $5d7f: $43
    ld c, b                                       ; $5d80: $48
    ld b, l                                       ; $5d81: $45
    ld b, e                                       ; $5d82: $43
    ld c, e                                       ; $5d83: $4b
    jr nz, @+$55                                  ; $5d84: $20 $53

    ld d, l                                       ; $5d86: $55
    ld c, l                                       ; $5d87: $4d
    jr nz, @+$47                                  ; $5d88: $20 $45

    ld d, d                                       ; $5d8a: $52
    ld d, d                                       ; $5d8b: $52
    ld c, a                                       ; $5d8c: $4f
    ld d, d                                       ; $5d8d: $52
    nop                                           ; $5d8e: $00
    ld b, [hl]                                    ; $5d8f: $46
    ld b, c                                       ; $5d90: $41
    ld d, h                                       ; $5d91: $54
    jr nz, jr_002_5ddd                            ; $5d92: $20 $49

    ld c, [hl]                                    ; $5d94: $4e
    ld c, c                                       ; $5d95: $49
    ld d, h                                       ; $5d96: $54
    cpl                                           ; $5d97: $2f
    ld d, d                                       ; $5d98: $52
    ld b, l                                       ; $5d99: $45
    ld b, e                                       ; $5d9a: $43
    ld c, a                                       ; $5d9b: $4f
    ld d, [hl]                                    ; $5d9c: $56
    ld b, l                                       ; $5d9d: $45
    ld d, d                                       ; $5d9e: $52
    nop                                           ; $5d9f: $00

jr_002_5da0:
    rst $08                                       ; $5da0: $cf
    ld bc, $0006                                  ; $5da1: $01 $06 $00

jr_002_5da4:
    push bc                                       ; $5da4: $c5
    call Call_002_5dce                            ; $5da5: $cd $ce $5d
    pop bc                                        ; $5da8: $c1

jr_002_5da9:
    call Call_000_2e3b                            ; $5da9: $cd $3b $2e
    ldh a, [$91]                                  ; $5dac: $f0 $91
    bit 5, a                                      ; $5dae: $cb $6f
    jr z, jr_002_5dbd                             ; $5db0: $28 $0b

    ld a, b                                       ; $5db2: $78
    dec a                                         ; $5db3: $3d
    bit 7, a                                      ; $5db4: $cb $7f
    jr z, jr_002_5dba                             ; $5db6: $28 $02

    ld a, $09                                     ; $5db8: $3e $09

jr_002_5dba:
    ld b, a                                       ; $5dba: $47
    jr jr_002_5da4                                ; $5dbb: $18 $e7

jr_002_5dbd:
    bit 4, a                                      ; $5dbd: $cb $67
    jr z, jr_002_5dcc                             ; $5dbf: $28 $0b

jr_002_5dc1:
    ld a, b                                       ; $5dc1: $78
    inc a                                         ; $5dc2: $3c
    cp $0a                                        ; $5dc3: $fe $0a
    jr c, jr_002_5dc9                             ; $5dc5: $38 $02

    ld a, $00                                     ; $5dc7: $3e $00

jr_002_5dc9:
    ld b, a                                       ; $5dc9: $47
    jr jr_002_5da4                                ; $5dca: $18 $d8

jr_002_5dcc:
    jr jr_002_5da9                                ; $5dcc: $18 $db

Call_002_5dce:
    call Call_002_60f0                            ; $5dce: $cd $f0 $60
    ld a, b                                       ; $5dd1: $78
    add a                                         ; $5dd2: $87
    ld hl, $5ddf                                  ; $5dd3: $21 $df $5d
    add l                                         ; $5dd6: $85
    ld l, a                                       ; $5dd7: $6f
    jr nc, jr_002_5ddb                            ; $5dd8: $30 $01

    inc h                                         ; $5dda: $24

jr_002_5ddb:
    ld a, [hl+]                                   ; $5ddb: $2a
    ld h, [hl]                                    ; $5ddc: $66

jr_002_5ddd:
    ld l, a                                       ; $5ddd: $6f
    jp hl                                         ; $5dde: $e9


    inc bc                                        ; $5ddf: $03
    ld e, [hl]                                    ; $5de0: $5e
    inc bc                                        ; $5de1: $03
    ld e, [hl]                                    ; $5de2: $5e
    inc bc                                        ; $5de3: $03
    ld e, [hl]                                    ; $5de4: $5e
    inc bc                                        ; $5de5: $03
    ld e, [hl]                                    ; $5de6: $5e
    inc bc                                        ; $5de7: $03
    ld e, [hl]                                    ; $5de8: $5e
    inc bc                                        ; $5de9: $03
    ld e, [hl]                                    ; $5dea: $5e
    di                                            ; $5deb: $f3
    ld e, l                                       ; $5dec: $5d
    adc d                                         ; $5ded: $8a
    ld e, a                                       ; $5dee: $5f
    adc $5f                                       ; $5def: $ce $5f
    ld e, d                                       ; $5df1: $5a
    ld h, b                                       ; $5df2: $60
    ld a, b                                       ; $5df3: $78
    ld hl, $5dff                                  ; $5df4: $21 $ff $5d
    ld de, $0101                                  ; $5df7: $11 $01 $01
    call Call_000_20b1                            ; $5dfa: $cd $b1 $20
    jr jr_002_5e0b                                ; $5dfd: $18 $0c

    ld b, c                                       ; $5dff: $41
    ld c, h                                       ; $5e00: $4c
    ld c, h                                       ; $5e01: $4c
    nop                                           ; $5e02: $00
    ld a, b                                       ; $5e03: $78
    inc a                                         ; $5e04: $3c
    ld de, $0001                                  ; $5e05: $11 $01 $00
    call Call_000_22d2                            ; $5e08: $cd $d2 $22

jr_002_5e0b:
    ld h, $00                                     ; $5e0b: $26 $00
    ld l, b                                       ; $5e0d: $68
    ld a, $32                                     ; $5e0e: $3e $32
    call Call_000_08b9                            ; $5e10: $cd $b9 $08
    ld de, $d000                                  ; $5e13: $11 $00 $d0
    add hl, de                                    ; $5e16: $19
    ld b, h                                       ; $5e17: $44
    ld c, l                                       ; $5e18: $4d
    ld a, $00                                     ; $5e19: $3e $00
    ld de, $0102                                  ; $5e1b: $11 $02 $01
    call Call_002_60b7                            ; $5e1e: $cd $b7 $60
    ld a, $02                                     ; $5e21: $3e $02
    ld de, $0303                                  ; $5e23: $11 $03 $03
    call Call_002_608e                            ; $5e26: $cd $8e $60
    ld a, $03                                     ; $5e29: $3e $03
    ld de, $0304                                  ; $5e2b: $11 $04 $03
    call Call_002_60ac                            ; $5e2e: $cd $ac $60
    ld a, $04                                     ; $5e31: $3e $04
    ld de, $0802                                  ; $5e33: $11 $02 $08
    call Call_002_60b7                            ; $5e36: $cd $b7 $60
    ld a, $06                                     ; $5e39: $3e $06
    ld de, $0803                                  ; $5e3b: $11 $03 $08
    call Call_002_60b7                            ; $5e3e: $cd $b7 $60
    ld a, $08                                     ; $5e41: $3e $08
    ld de, $0a04                                  ; $5e43: $11 $04 $0a
    call Call_002_60ac                            ; $5e46: $cd $ac $60
    ld a, $09                                     ; $5e49: $3e $09
    ld de, $0f02                                  ; $5e4b: $11 $02 $0f
    call Call_002_60ac                            ; $5e4e: $cd $ac $60
    ld a, $0a                                     ; $5e51: $3e $0a
    ld de, $0f03                                  ; $5e53: $11 $03 $0f
    call Call_002_60ac                            ; $5e56: $cd $ac $60
    ld a, $0b                                     ; $5e59: $3e $0b
    ld de, $0f04                                  ; $5e5b: $11 $04 $0f
    call Call_002_60ac                            ; $5e5e: $cd $ac $60
    ld a, $0c                                     ; $5e61: $3e $0c
    ld de, $0f05                                  ; $5e63: $11 $05 $0f
    call Call_002_60ac                            ; $5e66: $cd $ac $60
    ld a, $0d                                     ; $5e69: $3e $0d
    ld de, $0305                                  ; $5e6b: $11 $05 $03
    call Call_002_60c4                            ; $5e6e: $cd $c4 $60
    ld a, $0e                                     ; $5e71: $3e $0e
    ld de, $0007                                  ; $5e73: $11 $07 $00
    call Call_002_608e                            ; $5e76: $cd $8e $60
    ld a, $0f                                     ; $5e79: $3e $0f
    ld de, $0507                                  ; $5e7b: $11 $07 $05
    call Call_002_608e                            ; $5e7e: $cd $8e $60
    ld a, $10                                     ; $5e81: $3e $10
    ld de, $0a07                                  ; $5e83: $11 $07 $0a
    call Call_002_608e                            ; $5e86: $cd $8e $60
    ld a, $11                                     ; $5e89: $3e $11
    ld de, $0f07                                  ; $5e8b: $11 $07 $0f
    call Call_002_608e                            ; $5e8e: $cd $8e $60
    ld a, $12                                     ; $5e91: $3e $12
    ld de, $0008                                  ; $5e93: $11 $08 $00
    call Call_002_608e                            ; $5e96: $cd $8e $60
    ld a, $13                                     ; $5e99: $3e $13
    ld de, $0508                                  ; $5e9b: $11 $08 $05
    call Call_002_608e                            ; $5e9e: $cd $8e $60
    ld a, $14                                     ; $5ea1: $3e $14
    ld de, $0a08                                  ; $5ea3: $11 $08 $0a
    call Call_002_608e                            ; $5ea6: $cd $8e $60
    ld a, $15                                     ; $5ea9: $3e $15
    ld de, $0f08                                  ; $5eab: $11 $08 $0f
    call Call_002_608e                            ; $5eae: $cd $8e $60
    ld a, $16                                     ; $5eb1: $3e $16
    ld de, $0009                                  ; $5eb3: $11 $09 $00
    call Call_002_608e                            ; $5eb6: $cd $8e $60
    ld a, $17                                     ; $5eb9: $3e $17
    ld de, $0509                                  ; $5ebb: $11 $09 $05
    call Call_002_608e                            ; $5ebe: $cd $8e $60
    ld a, $18                                     ; $5ec1: $3e $18
    ld de, $0a09                                  ; $5ec3: $11 $09 $0a
    call Call_002_608e                            ; $5ec6: $cd $8e $60
    ld a, $19                                     ; $5ec9: $3e $19
    ld de, $0f09                                  ; $5ecb: $11 $09 $0f
    call Call_002_608e                            ; $5ece: $cd $8e $60
    ld a, $1a                                     ; $5ed1: $3e $1a
    ld de, $000a                                  ; $5ed3: $11 $0a $00
    call Call_002_608e                            ; $5ed6: $cd $8e $60
    ld a, $1c                                     ; $5ed9: $3e $1c
    ld de, $000b                                  ; $5edb: $11 $0b $00
    call Call_002_608e                            ; $5ede: $cd $8e $60
    ld a, $1d                                     ; $5ee1: $3e $1d
    ld de, $050b                                  ; $5ee3: $11 $0b $05
    call Call_002_608e                            ; $5ee6: $cd $8e $60
    ld a, $1e                                     ; $5ee9: $3e $1e
    ld de, $0a0b                                  ; $5eeb: $11 $0b $0a
    call Call_002_608e                            ; $5eee: $cd $8e $60
    ld a, $1f                                     ; $5ef1: $3e $1f
    ld de, $0f0b                                  ; $5ef3: $11 $0b $0f
    call Call_002_608e                            ; $5ef6: $cd $8e $60
    ld a, $20                                     ; $5ef9: $3e $20
    ld de, $000d                                  ; $5efb: $11 $0d $00
    call Call_002_60ac                            ; $5efe: $cd $ac $60
    ld a, $21                                     ; $5f01: $3e $21
    ld de, $040d                                  ; $5f03: $11 $0d $04
    call Call_002_60ac                            ; $5f06: $cd $ac $60
    ld a, $22                                     ; $5f09: $3e $22
    ld de, $080d                                  ; $5f0b: $11 $0d $08
    call Call_002_60ac                            ; $5f0e: $cd $ac $60
    ld a, $23                                     ; $5f11: $3e $23
    ld de, $0c0d                                  ; $5f13: $11 $0d $0c
    call Call_002_60ac                            ; $5f16: $cd $ac $60
    ld a, $24                                     ; $5f19: $3e $24
    ld de, $100d                                  ; $5f1b: $11 $0d $10
    call Call_002_608e                            ; $5f1e: $cd $8e $60
    ld a, $25                                     ; $5f21: $3e $25
    ld de, $000e                                  ; $5f23: $11 $0e $00
    call Call_002_60ac                            ; $5f26: $cd $ac $60
    ld a, $26                                     ; $5f29: $3e $26
    ld de, $040e                                  ; $5f2b: $11 $0e $04
    call Call_002_60ac                            ; $5f2e: $cd $ac $60
    ld a, $27                                     ; $5f31: $3e $27
    ld de, $080e                                  ; $5f33: $11 $0e $08
    call Call_002_60ac                            ; $5f36: $cd $ac $60
    ld a, $28                                     ; $5f39: $3e $28
    ld de, $0c0e                                  ; $5f3b: $11 $0e $0c
    call Call_002_60ac                            ; $5f3e: $cd $ac $60
    ld a, $29                                     ; $5f41: $3e $29
    ld de, $100e                                  ; $5f43: $11 $0e $10
    call Call_002_608e                            ; $5f46: $cd $8e $60
    ld a, $2a                                     ; $5f49: $3e $2a
    ld de, $000f                                  ; $5f4b: $11 $0f $00
    call Call_002_60ac                            ; $5f4e: $cd $ac $60
    ld a, $2b                                     ; $5f51: $3e $2b
    ld de, $040f                                  ; $5f53: $11 $0f $04
    call Call_002_60ac                            ; $5f56: $cd $ac $60
    ld a, $2c                                     ; $5f59: $3e $2c
    ld de, $080f                                  ; $5f5b: $11 $0f $08
    call Call_002_60ac                            ; $5f5e: $cd $ac $60
    ld a, $2d                                     ; $5f61: $3e $2d
    ld de, $0c0f                                  ; $5f63: $11 $0f $0c
    call Call_002_60ac                            ; $5f66: $cd $ac $60
    ld a, $2e                                     ; $5f69: $3e $2e
    ld de, $100f                                  ; $5f6b: $11 $0f $10
    call Call_002_608e                            ; $5f6e: $cd $8e $60
    ld a, $2f                                     ; $5f71: $3e $2f
    ld de, $0111                                  ; $5f73: $11 $11 $01
    call Call_002_60c4                            ; $5f76: $cd $c4 $60
    ld a, $30                                     ; $5f79: $3e $30
    ld de, $0711                                  ; $5f7b: $11 $11 $07
    call Call_002_60c4                            ; $5f7e: $cd $c4 $60
    ld a, $31                                     ; $5f81: $3e $31
    ld de, $0d11                                  ; $5f83: $11 $11 $0d
    call Call_002_60c4                            ; $5f86: $cd $c4 $60
    ret                                           ; $5f89: $c9


    ld bc, $d15e                                  ; $5f8a: $01 $5e $d1
    ld a, $00                                     ; $5f8d: $3e $00
    ld de, $0102                                  ; $5f8f: $11 $02 $01
    call Call_002_60c4                            ; $5f92: $cd $c4 $60
    ld a, $01                                     ; $5f95: $3e $01
    ld de, HeaderLogo                             ; $5f97: $11 $04 $01
    call Call_002_60c4                            ; $5f9a: $cd $c4 $60
    ld a, $02                                     ; $5f9d: $3e $02
    ld de, $0105                                  ; $5f9f: $11 $05 $01
    call Call_002_60c4                            ; $5fa2: $cd $c4 $60
    ld a, $03                                     ; $5fa5: $3e $03
    ld de, $0106                                  ; $5fa7: $11 $06 $01
    call Call_002_60c4                            ; $5faa: $cd $c4 $60
    ld a, $04                                     ; $5fad: $3e $04
    ld de, $0107                                  ; $5faf: $11 $07 $01
    call Call_002_60c4                            ; $5fb2: $cd $c4 $60
    ld a, $05                                     ; $5fb5: $3e $05
    ld de, $0108                                  ; $5fb7: $11 $08 $01
    call Call_002_60c4                            ; $5fba: $cd $c4 $60
    ld a, $06                                     ; $5fbd: $3e $06
    ld de, $0109                                  ; $5fbf: $11 $09 $01
    call Call_002_60c4                            ; $5fc2: $cd $c4 $60
    ld a, $07                                     ; $5fc5: $3e $07
    ld de, $010b                                  ; $5fc7: $11 $0b $01
    call Call_002_60ac                            ; $5fca: $cd $ac $60
    ret                                           ; $5fcd: $c9


    ld bc, $d166                                  ; $5fce: $01 $66 $d1
    ld a, $00                                     ; $5fd1: $3e $00
    ld de, $0101                                  ; $5fd3: $11 $01 $01
    call Call_002_60cf                            ; $5fd6: $cd $cf $60
    ld a, $04                                     ; $5fd9: $3e $04
    ld de, $0102                                  ; $5fdb: $11 $02 $01
    call Call_002_60cf                            ; $5fde: $cd $cf $60
    ld a, $08                                     ; $5fe1: $3e $08
    ld de, $0103                                  ; $5fe3: $11 $03 $01
    call Call_002_60cf                            ; $5fe6: $cd $cf $60
    ld a, $0c                                     ; $5fe9: $3e $0c
    ld de, HeaderLogo                             ; $5feb: $11 $04 $01
    call Call_002_60cf                            ; $5fee: $cd $cf $60
    ld a, $10                                     ; $5ff1: $3e $10
    ld de, $0105                                  ; $5ff3: $11 $05 $01
    call Call_002_60cf                            ; $5ff6: $cd $cf $60
    ld a, $14                                     ; $5ff9: $3e $14
    ld de, $0106                                  ; $5ffb: $11 $06 $01
    call Call_002_60cf                            ; $5ffe: $cd $cf $60
    ld a, $18                                     ; $6001: $3e $18
    ld de, $0107                                  ; $6003: $11 $07 $01
    call Call_002_60cf                            ; $6006: $cd $cf $60
    ld a, $1c                                     ; $6009: $3e $1c
    ld de, $0108                                  ; $600b: $11 $08 $01
    call Call_002_60cf                            ; $600e: $cd $cf $60
    ld a, $20                                     ; $6011: $3e $20
    ld de, $0109                                  ; $6013: $11 $09 $01
    call Call_002_60cf                            ; $6016: $cd $cf $60
    ld a, $24                                     ; $6019: $3e $24
    ld de, $010a                                  ; $601b: $11 $0a $01
    call Call_002_60cf                            ; $601e: $cd $cf $60
    ld a, $28                                     ; $6021: $3e $28
    ld de, $010b                                  ; $6023: $11 $0b $01
    call Call_002_60cf                            ; $6026: $cd $cf $60
    ld a, $2c                                     ; $6029: $3e $2c
    ld de, $010c                                  ; $602b: $11 $0c $01
    call Call_002_60cf                            ; $602e: $cd $cf $60
    ld a, $30                                     ; $6031: $3e $30
    ld de, $010d                                  ; $6033: $11 $0d $01
    call Call_002_60cf                            ; $6036: $cd $cf $60
    ld a, $34                                     ; $6039: $3e $34
    ld de, $010e                                  ; $603b: $11 $0e $01
    call Call_002_60cf                            ; $603e: $cd $cf $60
    ld a, $38                                     ; $6041: $3e $38
    ld de, $010f                                  ; $6043: $11 $0f $01
    call Call_002_60cf                            ; $6046: $cd $cf $60
    ld a, $3c                                     ; $6049: $3e $3c
    ld de, $0110                                  ; $604b: $11 $10 $01
    call Call_002_60cf                            ; $604e: $cd $cf $60
    ld a, $40                                     ; $6051: $3e $40
    ld de, $0111                                  ; $6053: $11 $11 $01
    call Call_002_60cf                            ; $6056: $cd $cf $60
    ret                                           ; $6059: $c9


    ld bc, $d400                                  ; $605a: $01 $00 $d4
    ld a, $00                                     ; $605d: $3e $00
    ld de, $0101                                  ; $605f: $11 $01 $01
    call Call_002_60b7                            ; $6062: $cd $b7 $60
    ld a, $02                                     ; $6065: $3e $02
    ld de, $0801                                  ; $6067: $11 $01 $08
    call Call_002_60c4                            ; $606a: $cd $c4 $60
    ld a, $03                                     ; $606d: $3e $03
    ld de, $0102                                  ; $606f: $11 $02 $01
    call Call_002_60b7                            ; $6072: $cd $b7 $60
    ld a, $05                                     ; $6075: $3e $05
    ld de, $0802                                  ; $6077: $11 $02 $08
    call Call_002_60c4                            ; $607a: $cd $c4 $60
    ld a, $06                                     ; $607d: $3e $06
    ld de, $0103                                  ; $607f: $11 $03 $01
    call Call_002_60b7                            ; $6082: $cd $b7 $60
    ld a, $08                                     ; $6085: $3e $08
    ld de, $0803                                  ; $6087: $11 $03 $08
    call Call_002_60c4                            ; $608a: $cd $c4 $60
    ret                                           ; $608d: $c9


Call_002_608e:
    push hl                                       ; $608e: $e5
    add c                                         ; $608f: $81
    ld l, a                                       ; $6090: $6f
    ld a, b                                       ; $6091: $78
    adc $00                                       ; $6092: $ce $00
    ld h, a                                       ; $6094: $67
    ld a, [hl]                                    ; $6095: $7e
    pop hl                                        ; $6096: $e1
    or a                                          ; $6097: $b7
    jr z, jr_002_60a0                             ; $6098: $28 $06

    sub $36                                       ; $609a: $d6 $36
    call Call_000_22e9                            ; $609c: $cd $e9 $22
    ret                                           ; $609f: $c9


jr_002_60a0:
    ld hl, $60a7                                  ; $60a0: $21 $a7 $60
    call Call_000_20b1                            ; $60a3: $cd $b1 $20
    ret                                           ; $60a6: $c9


    jr nz, jr_002_60c9                            ; $60a7: $20 $20

    jr nz, jr_002_60d8                            ; $60a9: $20 $2d

    nop                                           ; $60ab: $00

Call_002_60ac:
    add c                                         ; $60ac: $81
    ld l, a                                       ; $60ad: $6f
    ld a, b                                       ; $60ae: $78
    adc $00                                       ; $60af: $ce $00
    ld h, a                                       ; $60b1: $67
    ld a, [hl]                                    ; $60b2: $7e
    call Call_000_22e9                            ; $60b3: $cd $e9 $22
    ret                                           ; $60b6: $c9


Call_002_60b7:
    add c                                         ; $60b7: $81
    ld l, a                                       ; $60b8: $6f
    ld a, b                                       ; $60b9: $78
    adc $00                                       ; $60ba: $ce $00
    ld h, a                                       ; $60bc: $67
    ld a, [hl+]                                   ; $60bd: $2a
    ld h, [hl]                                    ; $60be: $66
    ld l, a                                       ; $60bf: $6f
    call Call_000_2303                            ; $60c0: $cd $03 $23
    ret                                           ; $60c3: $c9


Call_002_60c4:
    add c                                         ; $60c4: $81
    ld l, a                                       ; $60c5: $6f
    ld a, b                                       ; $60c6: $78
    adc $00                                       ; $60c7: $ce $00

jr_002_60c9:
    ld h, a                                       ; $60c9: $67
    ld a, [hl]                                    ; $60ca: $7e
    call Call_000_22a5                            ; $60cb: $cd $a5 $22
    ret                                           ; $60ce: $c9


Call_002_60cf:
    add c                                         ; $60cf: $81
    ld l, a                                       ; $60d0: $6f
    ld a, b                                       ; $60d1: $78
    adc $00                                       ; $60d2: $ce $00
    ld h, a                                       ; $60d4: $67
    push hl                                       ; $60d5: $e5
    push de                                       ; $60d6: $d5
    ld a, [hl+]                                   ; $60d7: $2a

jr_002_60d8:
    ld h, [hl]                                    ; $60d8: $66
    ld l, a                                       ; $60d9: $6f
    call Call_000_22bc                            ; $60da: $cd $bc $22
    pop de                                        ; $60dd: $d1
    pop hl                                        ; $60de: $e1
    inc hl                                        ; $60df: $23
    inc hl                                        ; $60e0: $23
    inc d                                         ; $60e1: $14
    inc d                                         ; $60e2: $14
    inc d                                         ; $60e3: $14
    inc d                                         ; $60e4: $14
    inc d                                         ; $60e5: $14
    inc d                                         ; $60e6: $14
    inc d                                         ; $60e7: $14
    inc d                                         ; $60e8: $14
    ld a, [hl+]                                   ; $60e9: $2a
    ld h, [hl]                                    ; $60ea: $66
    ld l, a                                       ; $60eb: $6f
    call Call_000_22bc                            ; $60ec: $cd $bc $22
    ret                                           ; $60ef: $c9


Call_002_60f0:
    push af                                       ; $60f0: $f5
    push bc                                       ; $60f1: $c5
    push de                                       ; $60f2: $d5
    push hl                                       ; $60f3: $e5
    ld bc, $0111                                  ; $60f4: $01 $11 $01

jr_002_60f7:
    ld hl, $6109                                  ; $60f7: $21 $09 $61
    ld d, $00                                     ; $60fa: $16 $00
    ld e, b                                       ; $60fc: $58
    call Call_000_20b1                            ; $60fd: $cd $b1 $20
    inc b                                         ; $6100: $04
    dec c                                         ; $6101: $0d
    jr nz, jr_002_60f7                            ; $6102: $20 $f3

    pop hl                                        ; $6104: $e1
    pop de                                        ; $6105: $d1
    pop bc                                        ; $6106: $c1
    pop af                                        ; $6107: $f1
    ret                                           ; $6108: $c9


    jr nz, jr_002_612b                            ; $6109: $20 $20

    jr nz, @+$22                                  ; $610b: $20 $20

    jr nz, @+$22                                  ; $610d: $20 $20

    jr nz, jr_002_6131                            ; $610f: $20 $20

    jr nz, @+$22                                  ; $6111: $20 $20

    jr nz, @+$22                                  ; $6113: $20 $20

    jr nz, jr_002_6137                            ; $6115: $20 $20

    jr nz, jr_002_6139                            ; $6117: $20 $20

    jr nz, @+$22                                  ; $6119: $20 $20

    jr nz, jr_002_613d                            ; $611b: $20 $20

    nop                                           ; $611d: $00
    ld a, $01                                     ; $611e: $3e $01
    ldh [$96], a                                  ; $6120: $e0 $96
    ldh [rSVBK], a                                ; $6122: $e0 $70
    ld a, $03                                     ; $6124: $3e $03
    ldh [$9e], a                                  ; $6126: $e0 $9e
    rst $18                                       ; $6128: $df
    inc d                                         ; $6129: $14
    ld [bc], a                                    ; $612a: $02

Jump_002_612b:
jr_002_612b:
    ld a, [$c828]                                 ; $612b: $fa $28 $c8
    ld de, $0202                                  ; $612e: $11 $02 $02

jr_002_6131:
    call Call_000_22a5                            ; $6131: $cd $a5 $22
    ld hl, $c826                                  ; $6134: $21 $26 $c8

jr_002_6137:
    ld a, [hl+]                                   ; $6137: $2a
    ld h, [hl]                                    ; $6138: $66

jr_002_6139:
    ld l, a                                       ; $6139: $6f
    ld de, $0602                                  ; $613a: $11 $02 $06

jr_002_613d:
    call Call_000_22bc                            ; $613d: $cd $bc $22
    ld a, [$c812]                                 ; $6140: $fa $12 $c8
    ld de, $0603                                  ; $6143: $11 $03 $06
    call Call_000_22d2                            ; $6146: $cd $d2 $22
    call Call_000_2e3b                            ; $6149: $cd $3b $2e
    ldh a, [$91]                                  ; $614c: $f0 $91
    bit 0, a                                      ; $614e: $cb $47
    jr z, jr_002_615b                             ; $6150: $28 $09

    ld de, $000a                                  ; $6152: $11 $0a $00
    call Call_002_5465                            ; $6155: $cd $65 $54
    jp Jump_002_6168                              ; $6158: $c3 $68 $61


jr_002_615b:
    bit 1, a                                      ; $615b: $cb $4f
    jr z, jr_002_6168                             ; $615d: $28 $09

    ld de, $0064                                  ; $615f: $11 $64 $00
    call Call_002_5465                            ; $6162: $cd $65 $54
    jp Jump_002_6168                              ; $6165: $c3 $68 $61


Jump_002_6168:
jr_002_6168:
    call Call_002_546b                            ; $6168: $cd $6b $54
    jp nz, Jump_002_612b                          ; $616b: $c2 $2b $61

    ld d, $00                                     ; $616e: $16 $00
    call Call_002_4ffa                            ; $6170: $cd $fa $4f
    jp Jump_002_612b                              ; $6173: $c3 $2b $61


    rst $08                                       ; $6176: $cf
    dec b                                         ; $6177: $05
    ld a, $01                                     ; $6178: $3e $01
    ldh [$96], a                                  ; $617a: $e0 $96
    ldh [rSVBK], a                                ; $617c: $e0 $70
    ld a, $03                                     ; $617e: $3e $03
    ldh [$9e], a                                  ; $6180: $e0 $9e
    xor a                                         ; $6182: $af
    ld [$ca80], a                                 ; $6183: $ea $80 $ca
    call Call_000_0341                            ; $6186: $cd $41 $03
    rst $18                                       ; $6189: $df
    nop                                           ; $618a: $00
    ld b, $df                                     ; $618b: $06 $df
    inc b                                         ; $618d: $04
    ld b, $cd                                     ; $618e: $06 $cd
    ld [hl], c                                    ; $6190: $71
    inc bc                                        ; $6191: $03
    rst $18                                       ; $6192: $df
    nop                                           ; $6193: $00
    dec b                                         ; $6194: $05
    call Call_000_0371                            ; $6195: $cd $71 $03
    ld c, $7f                                     ; $6198: $0e $7f
    call Call_000_25a1                            ; $619a: $cd $a1 $25
    ld c, $7f                                     ; $619d: $0e $7f
    call Call_000_25af                            ; $619f: $cd $af $25
    rst $18                                       ; $61a2: $df
    inc d                                         ; $61a3: $14
    ld [bc], a                                    ; $61a4: $02
    ld d, $00                                     ; $61a5: $16 $00

Jump_002_61a7:
    push de                                       ; $61a7: $d5
    ld bc, $c800                                  ; $61a8: $01 $00 $c8
    ld hl, $0010                                  ; $61ab: $21 $10 $00
    add hl, bc                                    ; $61ae: $09
    ld a, [hl]                                    ; $61af: $7e
    ld de, $0204                                  ; $61b0: $11 $04 $02
    call Call_000_22d2                            ; $61b3: $cd $d2 $22
    ld hl, $0018                                  ; $61b6: $21 $18 $00
    add hl, bc                                    ; $61b9: $09
    ld a, [hl]                                    ; $61ba: $7e
    ld de, $0206                                  ; $61bb: $11 $06 $02
    call Call_000_22d2                            ; $61be: $cd $d2 $22
    ld hl, $0012                                  ; $61c1: $21 $12 $00
    add hl, bc                                    ; $61c4: $09
    ld a, [hl]                                    ; $61c5: $7e
    ld de, $0205                                  ; $61c6: $11 $05 $02
    call Call_000_22d2                            ; $61c9: $cd $d2 $22
    ld hl, $0011                                  ; $61cc: $21 $11 $00
    add hl, bc                                    ; $61cf: $09
    ld a, [hl]                                    ; $61d0: $7e
    ld de, $0207                                  ; $61d1: $11 $07 $02
    call Call_000_22d2                            ; $61d4: $cd $d2 $22
    ld hl, $0020                                  ; $61d7: $21 $20 $00
    add hl, bc                                    ; $61da: $09
    ld a, [hl]                                    ; $61db: $7e
    ld de, $0704                                  ; $61dc: $11 $04 $07
    call Call_000_22d2                            ; $61df: $cd $d2 $22
    ld hl, $001a                                  ; $61e2: $21 $1a $00
    add hl, bc                                    ; $61e5: $09
    ld a, [hl+]                                   ; $61e6: $2a
    ld h, [hl]                                    ; $61e7: $66
    ld l, a                                       ; $61e8: $6f
    ld de, $0c04                                  ; $61e9: $11 $04 $0c
    call Call_000_2303                            ; $61ec: $cd $03 $23
    ld hl, $0021                                  ; $61ef: $21 $21 $00
    add hl, bc                                    ; $61f2: $09
    ld a, [hl]                                    ; $61f3: $7e
    ld de, $0705                                  ; $61f4: $11 $05 $07
    call Call_000_22d2                            ; $61f7: $cd $d2 $22
    ld hl, $001c                                  ; $61fa: $21 $1c $00
    add hl, bc                                    ; $61fd: $09
    ld l, [hl]                                    ; $61fe: $6e
    call Call_002_4e78                            ; $61ff: $cd $78 $4e
    ld de, $0c05                                  ; $6202: $11 $05 $0c
    call Call_000_2303                            ; $6205: $cd $03 $23
    ld hl, $0022                                  ; $6208: $21 $22 $00
    add hl, bc                                    ; $620b: $09
    ld a, [hl]                                    ; $620c: $7e
    ld de, $0706                                  ; $620d: $11 $06 $07
    call Call_000_22d2                            ; $6210: $cd $d2 $22
    ld hl, $001d                                  ; $6213: $21 $1d $00
    add hl, bc                                    ; $6216: $09
    ld l, [hl]                                    ; $6217: $6e
    call Call_002_4e78                            ; $6218: $cd $78 $4e
    ld de, $0c06                                  ; $621b: $11 $06 $0c
    call Call_000_2303                            ; $621e: $cd $03 $23
    ld hl, $0024                                  ; $6221: $21 $24 $00
    add hl, bc                                    ; $6224: $09
    ld a, [hl]                                    ; $6225: $7e
    ld de, $0707                                  ; $6226: $11 $07 $07
    call Call_000_22d2                            ; $6229: $cd $d2 $22
    ld hl, $001f                                  ; $622c: $21 $1f $00
    add hl, bc                                    ; $622f: $09
    ld l, [hl]                                    ; $6230: $6e
    call Call_002_4e78                            ; $6231: $cd $78 $4e
    ld de, $0c07                                  ; $6234: $11 $07 $0c
    call Call_000_2303                            ; $6237: $cd $03 $23
    ld hl, $001e                                  ; $623a: $21 $1e $00
    add hl, bc                                    ; $623d: $09
    ld l, [hl]                                    ; $623e: $6e
    call Call_002_4e78                            ; $623f: $cd $78 $4e
    ld de, $0c08                                  ; $6242: $11 $08 $0c
    call Call_000_2303                            ; $6245: $cd $03 $23
    ld a, [$ca80]                                 ; $6248: $fa $80 $ca
    ld de, $020a                                  ; $624b: $11 $0a $02
    call Call_000_22d2                            ; $624e: $cd $d2 $22
    ld hl, $0012                                  ; $6251: $21 $12 $00
    add hl, bc                                    ; $6254: $09
    ld a, [hl]                                    ; $6255: $7e
    and $07                                       ; $6256: $e6 $07
    ld hl, $003e                                  ; $6258: $21 $3e $00
    add hl, bc                                    ; $625b: $09
    ld [hl], a                                    ; $625c: $77
    pop de                                        ; $625d: $d1

Jump_002_625e:
    call Call_000_2e3b                            ; $625e: $cd $3b $2e
    call Call_000_0a61                            ; $6261: $cd $61 $0a
    ldh a, [$91]                                  ; $6264: $f0 $91
    bit 6, a                                      ; $6266: $cb $77
    jr z, jr_002_6278                             ; $6268: $28 $0e

    push de                                       ; $626a: $d5
    ld a, $00                                     ; $626b: $3e $00
    ld d, $00                                     ; $626d: $16 $00
    rst $18                                       ; $626f: $df
    jr jr_002_6274                                ; $6270: $18 $02

    pop de                                        ; $6272: $d1
    rst $08                                       ; $6273: $cf

jr_002_6274:
    ld e, e                                       ; $6274: $5b
    jp Jump_002_61a7                              ; $6275: $c3 $a7 $61


jr_002_6278:
    bit 5, a                                      ; $6278: $cb $6f
    jr z, jr_002_628a                             ; $627a: $28 $0e

    push de                                       ; $627c: $d5
    ld a, $00                                     ; $627d: $3e $00
    ld d, $01                                     ; $627f: $16 $01
    rst $18                                       ; $6281: $df
    jr jr_002_6286                                ; $6282: $18 $02

    pop de                                        ; $6284: $d1
    rst $08                                       ; $6285: $cf

jr_002_6286:
    ld e, e                                       ; $6286: $5b
    jp Jump_002_61a7                              ; $6287: $c3 $a7 $61


jr_002_628a:
    bit 4, a                                      ; $628a: $cb $67
    jr z, jr_002_629c                             ; $628c: $28 $0e

    push de                                       ; $628e: $d5
    ld a, $00                                     ; $628f: $3e $00
    ld d, $02                                     ; $6291: $16 $02
    rst $18                                       ; $6293: $df
    jr jr_002_6298                                ; $6294: $18 $02

    pop de                                        ; $6296: $d1
    rst $08                                       ; $6297: $cf

jr_002_6298:
    ld e, e                                       ; $6298: $5b
    jp Jump_002_61a7                              ; $6299: $c3 $a7 $61


jr_002_629c:
    bit 7, a                                      ; $629c: $cb $7f
    jr z, jr_002_62ae                             ; $629e: $28 $0e

    push de                                       ; $62a0: $d5
    ld a, $00                                     ; $62a1: $3e $00
    ld d, $03                                     ; $62a3: $16 $03
    rst $18                                       ; $62a5: $df
    jr jr_002_62aa                                ; $62a6: $18 $02

    pop de                                        ; $62a8: $d1
    rst $08                                       ; $62a9: $cf

jr_002_62aa:
    ld e, e                                       ; $62aa: $5b
    jp Jump_002_61a7                              ; $62ab: $c3 $a7 $61


jr_002_62ae:
    bit 1, a                                      ; $62ae: $cb $4f
    jr z, jr_002_62d3                             ; $62b0: $28 $21

    push de                                       ; $62b2: $d5
    res 2, d                                      ; $62b3: $cb $92
    rst $18                                       ; $62b5: $df
    ld d, $02                                     ; $62b6: $16 $02
    pop de                                        ; $62b8: $d1
    bit 2, d                                      ; $62b9: $cb $52
    jp z, Jump_002_62c3                           ; $62bb: $ca $c3 $62

    ld a, $01                                     ; $62be: $3e $01
    ld [$c811], a                                 ; $62c0: $ea $11 $c8

Jump_002_62c3:
    push de                                       ; $62c3: $d5
    ld a, $01                                     ; $62c4: $3e $01
    ldh [$9e], a                                  ; $62c6: $e0 $9e
    rst $18                                       ; $62c8: $df
    ld [bc], a                                    ; $62c9: $02
    ld b, $3e                                     ; $62ca: $06 $3e
    inc bc                                        ; $62cc: $03
    ldh [$9e], a                                  ; $62cd: $e0 $9e
    pop de                                        ; $62cf: $d1
    jp Jump_002_61a7                              ; $62d0: $c3 $a7 $61


jr_002_62d3:
    bit 0, a                                      ; $62d3: $cb $47
    jr z, jr_002_62f1                             ; $62d5: $28 $1a

    ld a, d                                       ; $62d7: $7a
    inc a                                         ; $62d8: $3c
    and $07                                       ; $62d9: $e6 $07
    ld d, a                                       ; $62db: $57
    xor a                                         ; $62dc: $af
    push de                                       ; $62dd: $d5
    res 2, d                                      ; $62de: $cb $92
    rst $18                                       ; $62e0: $df
    ld d, $02                                     ; $62e1: $16 $02
    pop de                                        ; $62e3: $d1
    bit 2, d                                      ; $62e4: $cb $52
    jp z, Jump_002_61a7                           ; $62e6: $ca $a7 $61

    ld a, $01                                     ; $62e9: $3e $01
    ld [$c811], a                                 ; $62eb: $ea $11 $c8
    jp Jump_002_61a7                              ; $62ee: $c3 $a7 $61


jr_002_62f1:
    bit 2, a                                      ; $62f1: $cb $57
    jr z, jr_002_6306                             ; $62f3: $28 $11

    rst $08                                       ; $62f5: $cf
    add hl, sp                                    ; $62f6: $39
    ld a, [$ca80]                                 ; $62f7: $fa $80 $ca
    inc a                                         ; $62fa: $3c
    cp $03                                        ; $62fb: $fe $03
    jr c, jr_002_6300                             ; $62fd: $38 $01

    xor a                                         ; $62ff: $af

jr_002_6300:
    ld [$ca80], a                                 ; $6300: $ea $80 $ca
    jp Jump_002_61a7                              ; $6303: $c3 $a7 $61


jr_002_6306:
    bit 3, a                                      ; $6306: $cb $5f
    jr z, jr_002_6381                             ; $6308: $28 $77

    rst $08                                       ; $630a: $cf
    ld e, h                                       ; $630b: $5c
    call Call_000_2c1f                            ; $630c: $cd $1f $2c
    push de                                       ; $630f: $d5
    ld hl, $6384                                  ; $6310: $21 $84 $63
    ld de, $020b                                  ; $6313: $11 $0b $02
    call Call_000_20b1                            ; $6316: $cd $b1 $20
    call Call_000_0a61                            ; $6319: $cd $61 $0a
    ld a, h                                       ; $631c: $7c
    ld [$c80b], a                                 ; $631d: $ea $0b $c8
    call Call_000_0a61                            ; $6320: $cd $61 $0a
    ld a, h                                       ; $6323: $7c
    ld [$c80c], a                                 ; $6324: $ea $0c $c8
    call Call_000_0a61                            ; $6327: $cd $61 $0a
    ld a, h                                       ; $632a: $7c
    ld [$c80d], a                                 ; $632b: $ea $0d $c8
    call Call_000_0a61                            ; $632e: $cd $61 $0a
    ld a, h                                       ; $6331: $7c
    ld [$c80e], a                                 ; $6332: $ea $0e $c8
    call Call_000_0a61                            ; $6335: $cd $61 $0a
    ld a, h                                       ; $6338: $7c
    ld [$c80f], a                                 ; $6339: $ea $0f $c8
    ld hl, $6392                                  ; $633c: $21 $92 $63
    ld de, $c94e                                  ; $633f: $11 $4e $c9
    ld bc, $000e                                  ; $6342: $01 $0e $00
    call Call_000_03d3                            ; $6345: $cd $d3 $03
    rst $18                                       ; $6348: $df
    ld c, $02                                     ; $6349: $0e $02
    ld bc, $ffff                                  ; $634b: $01 $ff $ff
    rst $18                                       ; $634e: $df
    ld c, [hl]                                    ; $634f: $4e
    ld a, [bc]                                    ; $6350: $0a
    ld a, $01                                     ; $6351: $3e $01
    ldh [$96], a                                  ; $6353: $e0 $96
    ldh [rSVBK], a                                ; $6355: $e0 $70
    ld hl, $63a0                                  ; $6357: $21 $a0 $63
    ld de, $d000                                  ; $635a: $11 $00 $d0
    ld bc, $0018                                  ; $635d: $01 $18 $00
    call Call_000_03d3                            ; $6360: $cd $d3 $03
    ld a, [$ca80]                                 ; $6363: $fa $80 $ca
    ld b, a                                       ; $6366: $47
    ld hl, $c800                                  ; $6367: $21 $00 $c8
    ld de, $d000                                  ; $636a: $11 $00 $d0
    rst $18                                       ; $636d: $df
    inc b                                         ; $636e: $04
    ld [bc], a                                    ; $636f: $02
    call Call_000_2ed5                            ; $6370: $cd $d5 $2e
    ld a, [bc]                                    ; $6373: $0a
    ld hl, $638b                                  ; $6374: $21 $8b $63
    ld de, $020b                                  ; $6377: $11 $0b $02
    call Call_000_20b1                            ; $637a: $cd $b1 $20
    pop de                                        ; $637d: $d1
    jp Jump_002_61a7                              ; $637e: $c3 $a7 $61


jr_002_6381:
    jp Jump_002_625e                              ; $6381: $c3 $5e $62


    ld d, e                                       ; $6384: $53
    ld b, c                                       ; $6385: $41
    ld d, [hl]                                    ; $6386: $56
    ld c, c                                       ; $6387: $49
    ld c, [hl]                                    ; $6388: $4e
    ld b, a                                       ; $6389: $47
    nop                                           ; $638a: $00
    jr nz, @+$22                                  ; $638b: $20 $20

    jr nz, @+$22                                  ; $638d: $20 $20

    jr nz, @+$22                                  ; $638f: $20 $20

    nop                                           ; $6391: $00

    db $00, $01, $02, $03, $04, $05, $06, $07, $08, $09, $0a, $0b, $0c, $0d, $00, $00
    db $00, $00, $00, $00, $00, $00, $4d, $41, $52, $49, $4f, $20, $47, $4f, $4c, $46
    db $20, $47, $42, $20, $43, $48

    call Call_000_304d                            ; $63b8: $cd $4d $30
    rst $08                                       ; $63bb: $cf
    ld bc, $3bcd                                  ; $63bc: $01 $cd $3b
    ld l, $f0                                     ; $63bf: $2e $f0
    ret nz                                        ; $63c1: $c0

    ld de, $0803                                  ; $63c2: $11 $03 $08
    call Call_000_22a5                            ; $63c5: $cd $a5 $22
    ldh a, [$c0]                                  ; $63c8: $f0 $c0
    cp $81                                        ; $63ca: $fe $81
    jp z, Jump_002_63ec                           ; $63cc: $ca $ec $63

    ldh a, [$94]                                  ; $63cf: $f0 $94
    bit 0, a                                      ; $63d1: $cb $47
    jr z, @-$16                                   ; $63d3: $28 $e8

    call Call_000_306e                            ; $63d5: $cd $6e $30
    call Call_000_2e3b                            ; $63d8: $cd $3b $2e
    ldh a, [$c2]                                  ; $63db: $f0 $c2
    cp $01                                        ; $63dd: $fe $01
    jr nz, @-$22                                  ; $63df: $20 $dc

    ld hl, $646e                                  ; $63e1: $21 $6e $64
    ld de, $0802                                  ; $63e4: $11 $02 $08
    call Call_000_20b1                            ; $63e7: $cd $b1 $20
    jr jr_002_63f5                                ; $63ea: $18 $09

Jump_002_63ec:
    ld hl, $6475                                  ; $63ec: $21 $75 $64
    ld de, $0802                                  ; $63ef: $11 $02 $08
    call Call_000_20b1                            ; $63f2: $cd $b1 $20

jr_002_63f5:
    call Call_000_2e3b                            ; $63f5: $cd $3b $2e
    ldh a, [$c0]                                  ; $63f8: $f0 $c0
    ld de, $0803                                  ; $63fa: $11 $03 $08
    call Call_000_22a5                            ; $63fd: $cd $a5 $22
    ldh a, [$c3]                                  ; $6400: $f0 $c3
    ld de, $0804                                  ; $6402: $11 $04 $08
    call Call_000_22a5                            ; $6405: $cd $a5 $22
    ld hl, $647b                                  ; $6408: $21 $7b $64
    ld de, $0205                                  ; $640b: $11 $05 $02
    call Call_000_20b1                            ; $640e: $cd $b1 $20
    ld hl, $cb40                                  ; $6411: $21 $40 $cb
    ld de, $0205                                  ; $6414: $11 $05 $02
    call Call_000_20b1                            ; $6417: $cd $b1 $20
    ldh a, [$c0]                                  ; $641a: $f0 $c0
    and $0f                                       ; $641c: $e6 $0f
    jr z, jr_002_6422                             ; $641e: $28 $02

    rst $08                                       ; $6420: $cf
    ld e, a                                       ; $6421: $5f

jr_002_6422:
    ldh a, [$94]                                  ; $6422: $f0 $94
    and $0f                                       ; $6424: $e6 $0f
    ldh [$c1], a                                  ; $6426: $e0 $c1
    ldh a, [$94]                                  ; $6428: $f0 $94
    bit 4, a                                      ; $642a: $cb $67
    jr z, jr_002_643e                             ; $642c: $28 $10

    ld hl, $6454                                  ; $642e: $21 $54 $64
    ld de, $cb00                                  ; $6431: $11 $00 $cb
    ld c, $02                                     ; $6434: $0e $02
    call Call_000_03eb                            ; $6436: $cd $eb $03
    ld a, $10                                     ; $6439: $3e $10
    call Call_000_3081                            ; $643b: $cd $81 $30

jr_002_643e:
    bit 5, a                                      ; $643e: $cb $6f
    jr z, jr_002_6452                             ; $6440: $28 $10

    ld hl, $647b                                  ; $6442: $21 $7b $64
    ld de, $cb00                                  ; $6445: $11 $00 $cb
    ld c, $02                                     ; $6448: $0e $02
    call Call_000_03eb                            ; $644a: $cd $eb $03
    ld a, $10                                     ; $644d: $3e $10
    call Call_000_3081                            ; $644f: $cd $81 $30

jr_002_6452:
    jr jr_002_63f5                                ; $6452: $18 $a1

    ld c, l                                       ; $6454: $4d
    ld b, c                                       ; $6455: $41
    ld d, d                                       ; $6456: $52
    ld c, c                                       ; $6457: $49
    ld c, a                                       ; $6458: $4f
    jr nz, jr_002_64a2                            ; $6459: $20 $47

    ld c, a                                       ; $645b: $4f
    ld c, h                                       ; $645c: $4c
    ld b, [hl]                                    ; $645d: $46
    jr nz, jr_002_64a7                            ; $645e: $20 $47

    ld b, d                                       ; $6460: $42
    ld sp, $3332                                  ; $6461: $31 $32 $33
    inc [hl]                                      ; $6464: $34
    nop                                           ; $6465: $00
    nop                                           ; $6466: $00
    nop                                           ; $6467: $00
    nop                                           ; $6468: $00
    nop                                           ; $6469: $00
    nop                                           ; $646a: $00
    nop                                           ; $646b: $00
    nop                                           ; $646c: $00
    nop                                           ; $646d: $00
    ld c, l                                       ; $646e: $4d
    ld b, c                                       ; $646f: $41
    ld d, e                                       ; $6470: $53
    ld d, h                                       ; $6471: $54
    ld b, l                                       ; $6472: $45
    ld d, d                                       ; $6473: $52
    nop                                           ; $6474: $00
    ld d, e                                       ; $6475: $53
    ld c, h                                       ; $6476: $4c
    ld b, c                                       ; $6477: $41
    ld d, [hl]                                    ; $6478: $56
    ld b, l                                       ; $6479: $45
    nop                                           ; $647a: $00
    jr nz, jr_002_649d                            ; $647b: $20 $20

    jr nz, jr_002_649f                            ; $647d: $20 $20

    jr nz, jr_002_64a1                            ; $647f: $20 $20

    jr nz, jr_002_64a3                            ; $6481: $20 $20

    jr nz, jr_002_64a5                            ; $6483: $20 $20

    jr nz, jr_002_64a7                            ; $6485: $20 $20

    jr nz, jr_002_64a9                            ; $6487: $20 $20

    jr nz, jr_002_64ab                            ; $6489: $20 $20

    jr nz, jr_002_64ad                            ; $648b: $20 $20

    jr nz, jr_002_648f                            ; $648d: $20 $00

jr_002_648f:
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

jr_002_649d:
    rst $38                                       ; $649d: $ff
    rst $38                                       ; $649e: $ff

jr_002_649f:
    rst $38                                       ; $649f: $ff
    rst $38                                       ; $64a0: $ff

jr_002_64a1:
    rst $38                                       ; $64a1: $ff

jr_002_64a2:
    rst $38                                       ; $64a2: $ff

jr_002_64a3:
    rst $38                                       ; $64a3: $ff
    rst $38                                       ; $64a4: $ff

jr_002_64a5:
    rst $38                                       ; $64a5: $ff
    rst $38                                       ; $64a6: $ff

jr_002_64a7:
    rst $38                                       ; $64a7: $ff
    rst $38                                       ; $64a8: $ff

jr_002_64a9:
    rst $38                                       ; $64a9: $ff
    rst $38                                       ; $64aa: $ff

jr_002_64ab:
    rst $38                                       ; $64ab: $ff
    rst $38                                       ; $64ac: $ff

jr_002_64ad:
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

Jump_002_7352:
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
