; Disassembly of "mgolf.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $033", ROMX[$4000], BANK[$33]

    db $0a, $40

    cp [hl]                                       ; $4002: $be
    ld d, [hl]                                    ; $4003: $56
    add $5a                                       ; $4004: $c6 $5a
    cp c                                          ; $4006: $b9
    ld l, a                                       ; $4007: $6f
    ld e, $78                                     ; $4008: $1e $78

    db $62, $41, $87, $41, $18, $40, $ea, $43, $c8, $44, $96, $45, $22, $47, $dd, $7b
    db $00, $03, $00, $35, $00, $00, $00, $80, $01, $16, $dd, $7b, $00, $0f, $00, $37
    db $00, $00, $00, $c0, $01, $0d, $dd, $7b, $00, $17, $00, $37, $00, $00, $00, $80
    db $01, $16, $dd, $7b, $00, $1d, $00, $33, $00, $00, $00, $40, $01, $0d, $dd, $7b
    db $00, $09, $00, $0b, $00, $00, $00, $40, $01, $15, $dd, $7b, $00, $09, $00, $41
    db $00, $00, $00, $80, $01, $0c, $dd, $7b, $40, $18, $c0, $0a, $00, $00, $00, $40
    db $01, $26, $dd, $7b, $40, $22, $c0, $0a, $00, $00, $00, $40, $01, $26, $dd, $7b
    db $40, $32, $c0, $0a, $00, $00, $00, $40, $01, $26, $dd, $7b, $00, $1d, $00, $0b
    db $00, $00, $00, $40, $01, $1f, $dd, $7b, $00, $0d, $00, $0b, $00, $00, $00, $40
    db $01, $1e, $bc, $48, $00, $0f, $00, $11, $00, $00, $00, $40, $01, $1e, $d1, $4e
    db $00, $17, $00, $11, $00, $00, $00, $40, $01, $1e, $dd, $7b, $00, $27, $00, $0b
    db $00, $00, $00, $40, $01, $1e, $dd, $7b, $00, $37, $00, $0b, $00, $00, $00, $40
    db $01, $1e, $dd, $7b, $00, $03, $00, $0d, $00, $00, $00, $00, $01, $1e, $00, $00
    db $00, $00, $00, $00, $00, $00, $ff, $dd, $7b, $00

    inc bc                                        ; $40e4: $03
    nop                                           ; $40e5: $00
    dec c                                         ; $40e6: $0d
    nop                                           ; $40e7: $00
    nop                                           ; $40e8: $00
    nop                                           ; $40e9: $00
    nop                                           ; $40ea: $00
    ld bc, $dd16                                  ; $40eb: $01 $16 $dd

jr_033_40ee:
    ld a, e                                       ; $40ee: $7b
    nop                                           ; $40ef: $00
    rrca                                          ; $40f0: $0f
    nop                                           ; $40f1: $00
    rrca                                          ; $40f2: $0f
    nop                                           ; $40f3: $00
    nop                                           ; $40f4: $00
    nop                                           ; $40f5: $00
    ret nz                                        ; $40f6: $c0

    ld bc, $bc0d                                  ; $40f7: $01 $0d $bc
    ld c, b                                       ; $40fa: $48
    nop                                           ; $40fb: $00
    rla                                           ; $40fc: $17
    nop                                           ; $40fd: $00
    ld de, $0000                                  ; $40fe: $11 $00 $00
    nop                                           ; $4101: $00
    add b                                         ; $4102: $80
    ld bc, $dd16                                  ; $4103: $01 $16 $dd
    ld a, e                                       ; $4106: $7b
    nop                                           ; $4107: $00
    dec e                                         ; $4108: $1d
    nop                                           ; $4109: $00
    dec c                                         ; $410a: $0d
    nop                                           ; $410b: $00
    nop                                           ; $410c: $00
    nop                                           ; $410d: $00
    add b                                         ; $410e: $80
    ld bc, $dd0d                                  ; $410f: $01 $0d $dd
    ld a, e                                       ; $4112: $7b
    nop                                           ; $4113: $00
    add hl, bc                                    ; $4114: $09
    nop                                           ; $4115: $00
    dec bc                                        ; $4116: $0b
    nop                                           ; $4117: $00
    nop                                           ; $4118: $00
    nop                                           ; $4119: $00
    ld b, b                                       ; $411a: $40
    ld bc, $dd1d                                  ; $411b: $01 $1d $dd
    ld a, e                                       ; $411e: $7b
    nop                                           ; $411f: $00
    add hl, bc                                    ; $4120: $09
    nop                                           ; $4121: $00
    ld b, c                                       ; $4122: $41
    nop                                           ; $4123: $00
    nop                                           ; $4124: $00
    nop                                           ; $4125: $00
    add b                                         ; $4126: $80
    ld bc, $dd0c                                  ; $4127: $01 $0c $dd
    ld a, e                                       ; $412a: $7b
    ld b, b                                       ; $412b: $40
    jr jr_033_40ee                                ; $412c: $18 $c0

    ld a, [bc]                                    ; $412e: $0a
    nop                                           ; $412f: $00
    nop                                           ; $4130: $00
    nop                                           ; $4131: $00
    ld b, b                                       ; $4132: $40
    ld bc, $dd26                                  ; $4133: $01 $26 $dd
    ld a, e                                       ; $4136: $7b
    ld b, b                                       ; $4137: $40
    ld [hl+], a                                   ; $4138: $22
    ret nz                                        ; $4139: $c0

    ld a, [bc]                                    ; $413a: $0a
    nop                                           ; $413b: $00
    nop                                           ; $413c: $00
    nop                                           ; $413d: $00
    ld b, b                                       ; $413e: $40
    ld bc, $dd26                                  ; $413f: $01 $26 $dd
    ld a, e                                       ; $4142: $7b
    ld b, b                                       ; $4143: $40
    ld [hl-], a                                   ; $4144: $32
    ret nz                                        ; $4145: $c0

    ld a, [bc]                                    ; $4146: $0a
    nop                                           ; $4147: $00
    nop                                           ; $4148: $00
    nop                                           ; $4149: $00
    ld b, b                                       ; $414a: $40
    ld bc, $dd26                                  ; $414b: $01 $26 $dd
    ld a, e                                       ; $414e: $7b
    nop                                           ; $414f: $00
    daa                                           ; $4150: $27
    nop                                           ; $4151: $00
    dec bc                                        ; $4152: $0b
    nop                                           ; $4153: $00
    nop                                           ; $4154: $00
    nop                                           ; $4155: $00
    ld b, b                                       ; $4156: $40
    ld bc, $0000                                  ; $4157: $01 $00 $00
    nop                                           ; $415a: $00
    nop                                           ; $415b: $00
    nop                                           ; $415c: $00
    nop                                           ; $415d: $00
    nop                                           ; $415e: $00
    nop                                           ; $415f: $00
    nop                                           ; $4160: $00
    rst $38                                       ; $4161: $ff

    db $01, $c0, $00, $08, $00, $0f

    ld [bc], a                                    ; $4168: $02
    ld b, b                                       ; $4169: $40
    nop                                           ; $416a: $00
    dec de                                        ; $416b: $1b
    nop                                           ; $416c: $00
    inc c                                         ; $416d: $0c
    inc bc                                        ; $416e: $03
    ld b, b                                       ; $416f: $40
    nop                                           ; $4170: $00
    dec h                                         ; $4171: $25
    nop                                           ; $4172: $00
    inc c                                         ; $4173: $0c
    inc b                                         ; $4174: $04
    ld b, b                                       ; $4175: $40
    nop                                           ; $4176: $00
    dec [hl]                                      ; $4177: $35
    nop                                           ; $4178: $00
    inc c                                         ; $4179: $0c
    dec b                                         ; $417a: $05
    add b                                         ; $417b: $80
    nop                                           ; $417c: $00
    dec a                                         ; $417d: $3d
    nop                                           ; $417e: $00
    dec c                                         ; $417f: $0d
    ld b, $c0                                     ; $4180: $06 $c0
    nop                                           ; $4182: $00
    ld bc, $0d00                                  ; $4183: $01 $00 $0d
    rst $38                                       ; $4186: $ff

    db $01, $ff

    nop                                           ; $4189: $00
    nop                                           ; $418a: $00
    nop                                           ; $418b: $00
    nop                                           ; $418c: $00
    inc bc                                        ; $418d: $03
    db $01                                        ; $418e: $01

    db $02, $ff

    nop                                           ; $4191: $00
    nop                                           ; $4192: $00
    nop                                           ; $4193: $00
    nop                                           ; $4194: $00
    inc c                                         ; $4195: $0c
    db $01                                        ; $4196: $01

    db $03, $ff, $00, $00, $00, $00, $0d, $01

    inc b                                         ; $419f: $04
    rst $38                                       ; $41a0: $ff
    nop                                           ; $41a1: $00
    nop                                           ; $41a2: $00
    nop                                           ; $41a3: $00
    nop                                           ; $41a4: $00
    ld c, $01                                     ; $41a5: $0e $01
    dec b                                         ; $41a7: $05
    rst $38                                       ; $41a8: $ff
    nop                                           ; $41a9: $00
    nop                                           ; $41aa: $00
    nop                                           ; $41ab: $00
    nop                                           ; $41ac: $00
    inc bc                                        ; $41ad: $03
    ld [bc], a                                    ; $41ae: $02
    ld b, $ff                                     ; $41af: $06 $ff
    nop                                           ; $41b1: $00
    nop                                           ; $41b2: $00
    nop                                           ; $41b3: $00
    nop                                           ; $41b4: $00
    jr jr_033_41b9                                ; $41b5: $18 $02

    rlca                                          ; $41b7: $07
    rst $38                                       ; $41b8: $ff

jr_033_41b9:
    nop                                           ; $41b9: $00
    nop                                           ; $41ba: $00
    nop                                           ; $41bb: $00
    nop                                           ; $41bc: $00
    jr jr_033_41c2                                ; $41bd: $18 $03

    ld [$00ff], sp                                ; $41bf: $08 $ff $00

jr_033_41c2:
    nop                                           ; $41c2: $00
    nop                                           ; $41c3: $00
    nop                                           ; $41c4: $00
    jr jr_033_41cb                                ; $41c5: $18 $04

    add hl, bc                                    ; $41c7: $09
    rst $38                                       ; $41c8: $ff
    nop                                           ; $41c9: $00
    nop                                           ; $41ca: $00

jr_033_41cb:
    nop                                           ; $41cb: $00
    nop                                           ; $41cc: $00
    jr nc, jr_033_41d0                            ; $41cd: $30 $01

    rst $38                                       ; $41cf: $ff

jr_033_41d0:
    ld bc, $00ff                                  ; $41d0: $01 $ff $00
    nop                                           ; $41d3: $00
    nop                                           ; $41d4: $00
    nop                                           ; $41d5: $00
    inc bc                                        ; $41d6: $03
    ld bc, $ff02                                  ; $41d7: $01 $02 $ff
    nop                                           ; $41da: $00
    nop                                           ; $41db: $00
    nop                                           ; $41dc: $00
    nop                                           ; $41dd: $00
    rrca                                          ; $41de: $0f
    ld bc, $ff03                                  ; $41df: $01 $03 $ff
    nop                                           ; $41e2: $00
    nop                                           ; $41e3: $00
    nop                                           ; $41e4: $00
    nop                                           ; $41e5: $00
    db $10                                        ; $41e6: $10
    ld bc, $ff04                                  ; $41e7: $01 $04 $ff
    nop                                           ; $41ea: $00
    nop                                           ; $41eb: $00
    nop                                           ; $41ec: $00
    nop                                           ; $41ed: $00
    ld de, $0502                                  ; $41ee: $11 $02 $05
    rst $38                                       ; $41f1: $ff
    nop                                           ; $41f2: $00
    nop                                           ; $41f3: $00
    nop                                           ; $41f4: $00
    nop                                           ; $41f5: $00
    ld [bc], a                                    ; $41f6: $02
    ld [bc], a                                    ; $41f7: $02
    ld b, $ff                                     ; $41f8: $06 $ff
    nop                                           ; $41fa: $00
    nop                                           ; $41fb: $00
    nop                                           ; $41fc: $00
    nop                                           ; $41fd: $00
    add hl, de                                    ; $41fe: $19
    ld [bc], a                                    ; $41ff: $02
    rlca                                          ; $4200: $07
    rst $38                                       ; $4201: $ff
    nop                                           ; $4202: $00
    nop                                           ; $4203: $00
    nop                                           ; $4204: $00
    nop                                           ; $4205: $00
    add hl, de                                    ; $4206: $19
    inc bc                                        ; $4207: $03
    ld [$00ff], sp                                ; $4208: $08 $ff $00
    nop                                           ; $420b: $00
    nop                                           ; $420c: $00
    nop                                           ; $420d: $00
    add hl, de                                    ; $420e: $19
    inc b                                         ; $420f: $04
    add hl, bc                                    ; $4210: $09
    rst $38                                       ; $4211: $ff
    nop                                           ; $4212: $00
    nop                                           ; $4213: $00
    nop                                           ; $4214: $00
    nop                                           ; $4215: $00
    jr nc, @+$04                                  ; $4216: $30 $02

    rst $38                                       ; $4218: $ff
    ld bc, $00ff                                  ; $4219: $01 $ff $00
    nop                                           ; $421c: $00
    nop                                           ; $421d: $00
    nop                                           ; $421e: $00
    inc bc                                        ; $421f: $03
    ld bc, $ff02                                  ; $4220: $01 $02 $ff
    nop                                           ; $4223: $00
    nop                                           ; $4224: $00
    nop                                           ; $4225: $00
    nop                                           ; $4226: $00
    ld [de], a                                    ; $4227: $12
    ld bc, $ff03                                  ; $4228: $01 $03 $ff
    nop                                           ; $422b: $00
    nop                                           ; $422c: $00
    nop                                           ; $422d: $00
    nop                                           ; $422e: $00
    inc de                                        ; $422f: $13
    ld bc, $ff04                                  ; $4230: $01 $04 $ff
    nop                                           ; $4233: $00
    nop                                           ; $4234: $00
    nop                                           ; $4235: $00
    nop                                           ; $4236: $00
    inc d                                         ; $4237: $14
    inc bc                                        ; $4238: $03
    dec b                                         ; $4239: $05
    rst $38                                       ; $423a: $ff
    nop                                           ; $423b: $00
    nop                                           ; $423c: $00
    nop                                           ; $423d: $00
    nop                                           ; $423e: $00
    ld [bc], a                                    ; $423f: $02
    inc bc                                        ; $4240: $03
    ld b, $ff                                     ; $4241: $06 $ff
    nop                                           ; $4243: $00
    nop                                           ; $4244: $00
    nop                                           ; $4245: $00
    nop                                           ; $4246: $00
    ld a, [de]                                    ; $4247: $1a
    ld [bc], a                                    ; $4248: $02
    rlca                                          ; $4249: $07
    rst $38                                       ; $424a: $ff
    nop                                           ; $424b: $00
    nop                                           ; $424c: $00
    nop                                           ; $424d: $00
    nop                                           ; $424e: $00
    ld a, [de]                                    ; $424f: $1a
    inc bc                                        ; $4250: $03
    ld [$00ff], sp                                ; $4251: $08 $ff $00
    nop                                           ; $4254: $00
    nop                                           ; $4255: $00
    nop                                           ; $4256: $00
    ld a, [de]                                    ; $4257: $1a
    inc b                                         ; $4258: $04
    add hl, bc                                    ; $4259: $09
    rst $38                                       ; $425a: $ff
    nop                                           ; $425b: $00
    nop                                           ; $425c: $00
    nop                                           ; $425d: $00
    nop                                           ; $425e: $00
    jr nc, @+$05                                  ; $425f: $30 $03

    rst $38                                       ; $4261: $ff
    ld bc, $00ff                                  ; $4262: $01 $ff $00
    nop                                           ; $4265: $00
    nop                                           ; $4266: $00
    nop                                           ; $4267: $00
    inc bc                                        ; $4268: $03
    ld bc, $ff02                                  ; $4269: $01 $02 $ff
    nop                                           ; $426c: $00
    nop                                           ; $426d: $00
    nop                                           ; $426e: $00
    nop                                           ; $426f: $00
    dec d                                         ; $4270: $15
    ld bc, $ff03                                  ; $4271: $01 $03 $ff
    nop                                           ; $4274: $00
    nop                                           ; $4275: $00
    nop                                           ; $4276: $00
    nop                                           ; $4277: $00
    ld d, $01                                     ; $4278: $16 $01
    inc b                                         ; $427a: $04
    rst $38                                       ; $427b: $ff
    nop                                           ; $427c: $00
    nop                                           ; $427d: $00
    nop                                           ; $427e: $00
    nop                                           ; $427f: $00
    rla                                           ; $4280: $17
    inc b                                         ; $4281: $04
    dec b                                         ; $4282: $05
    rst $38                                       ; $4283: $ff
    nop                                           ; $4284: $00
    nop                                           ; $4285: $00
    nop                                           ; $4286: $00
    nop                                           ; $4287: $00
    ld [bc], a                                    ; $4288: $02
    inc b                                         ; $4289: $04
    ld b, $ff                                     ; $428a: $06 $ff
    nop                                           ; $428c: $00
    nop                                           ; $428d: $00
    nop                                           ; $428e: $00
    nop                                           ; $428f: $00
    dec de                                        ; $4290: $1b
    ld [bc], a                                    ; $4291: $02
    rlca                                          ; $4292: $07
    rst $38                                       ; $4293: $ff
    nop                                           ; $4294: $00
    nop                                           ; $4295: $00
    nop                                           ; $4296: $00
    nop                                           ; $4297: $00
    dec de                                        ; $4298: $1b
    inc bc                                        ; $4299: $03
    ld [$00ff], sp                                ; $429a: $08 $ff $00
    nop                                           ; $429d: $00
    nop                                           ; $429e: $00
    nop                                           ; $429f: $00
    dec de                                        ; $42a0: $1b
    inc b                                         ; $42a1: $04
    add hl, bc                                    ; $42a2: $09
    rst $38                                       ; $42a3: $ff
    nop                                           ; $42a4: $00
    nop                                           ; $42a5: $00
    nop                                           ; $42a6: $00
    nop                                           ; $42a7: $00
    jr nc, jr_033_42ae                            ; $42a8: $30 $04

    rst $38                                       ; $42aa: $ff
    ld hl, $c4ba                                  ; $42ab: $21 $ba $c4

jr_033_42ae:
    ld de, $0857                                  ; $42ae: $11 $57 $08
    ld a, e                                       ; $42b1: $7b
    ld [hl+], a                                   ; $42b2: $22
    ld [hl], d                                    ; $42b3: $72
    ld a, $0c                                     ; $42b4: $3e $0c
    ld [$c4bc], a                                 ; $42b6: $ea $bc $c4
    call Call_033_4dff                            ; $42b9: $cd $ff $4d
    ret                                           ; $42bc: $c9


    ld hl, $c4ba                                  ; $42bd: $21 $ba $c4
    ld de, $085e                                  ; $42c0: $11 $5e $08
    ld a, e                                       ; $42c3: $7b
    ld [hl+], a                                   ; $42c4: $22
    ld [hl], d                                    ; $42c5: $72
    ld a, $0d                                     ; $42c6: $3e $0d
    ld [$c4bc], a                                 ; $42c8: $ea $bc $c4
    call Call_033_4dff                            ; $42cb: $cd $ff $4d
    ret                                           ; $42ce: $c9


    ld hl, $c4ba                                  ; $42cf: $21 $ba $c4
    ld de, $0865                                  ; $42d2: $11 $65 $08
    ld a, e                                       ; $42d5: $7b
    ld [hl+], a                                   ; $42d6: $22
    ld [hl], d                                    ; $42d7: $72
    ld a, $0e                                     ; $42d8: $3e $0e
    ld [$c4bc], a                                 ; $42da: $ea $bc $c4
    call Call_033_4dff                            ; $42dd: $cd $ff $4d
    ret                                           ; $42e0: $c9


    ld hl, $c4ba                                  ; $42e1: $21 $ba $c4
    ld de, $086c                                  ; $42e4: $11 $6c $08
    ld a, e                                       ; $42e7: $7b
    ld [hl+], a                                   ; $42e8: $22
    ld [hl], d                                    ; $42e9: $72
    ld a, $0f                                     ; $42ea: $3e $0f
    ld [$c4bc], a                                 ; $42ec: $ea $bc $c4
    call Call_033_4dff                            ; $42ef: $cd $ff $4d
    ret                                           ; $42f2: $c9


    ld hl, $c4ba                                  ; $42f3: $21 $ba $c4
    ld de, $0873                                  ; $42f6: $11 $73 $08
    ld a, e                                       ; $42f9: $7b
    ld [hl+], a                                   ; $42fa: $22
    ld [hl], d                                    ; $42fb: $72
    ld a, $10                                     ; $42fc: $3e $10
    ld [$c4bc], a                                 ; $42fe: $ea $bc $c4
    call Call_033_4dff                            ; $4301: $cd $ff $4d
    ret                                           ; $4304: $c9


    ld hl, $c4ba                                  ; $4305: $21 $ba $c4
    ld de, $087a                                  ; $4308: $11 $7a $08
    ld a, e                                       ; $430b: $7b
    ld [hl+], a                                   ; $430c: $22
    ld [hl], d                                    ; $430d: $72
    ld a, $11                                     ; $430e: $3e $11
    ld [$c4bc], a                                 ; $4310: $ea $bc $c4
    call Call_033_4dff                            ; $4313: $cd $ff $4d
    ret                                           ; $4316: $c9


    ld hl, $c4ba                                  ; $4317: $21 $ba $c4
    ld de, $08b7                                  ; $431a: $11 $b7 $08
    ld a, e                                       ; $431d: $7b
    ld [hl+], a                                   ; $431e: $22
    ld [hl], d                                    ; $431f: $72
    call Call_033_4cac                            ; $4320: $cd $ac $4c
    ld a, $02                                     ; $4323: $3e $02
    rst $18                                       ; $4325: $df
    ld [$c90a], sp                                ; $4326: $08 $0a $c9
    ld hl, $c4ba                                  ; $4329: $21 $ba $c4
    ld de, $08c9                                  ; $432c: $11 $c9 $08
    ld a, e                                       ; $432f: $7b
    ld [hl+], a                                   ; $4330: $22
    ld [hl], d                                    ; $4331: $72
    call Call_033_4cac                            ; $4332: $cd $ac $4c
    ld a, $03                                     ; $4335: $3e $03
    rst $18                                       ; $4337: $df
    ld [$c90a], sp                                ; $4338: $08 $0a $c9
    ld hl, $c4ba                                  ; $433b: $21 $ba $c4
    ld de, $08db                                  ; $433e: $11 $db $08
    ld a, e                                       ; $4341: $7b
    ld [hl+], a                                   ; $4342: $22
    ld [hl], d                                    ; $4343: $72
    call Call_033_4cac                            ; $4344: $cd $ac $4c
    ld a, $04                                     ; $4347: $3e $04
    rst $18                                       ; $4349: $df
    ld [$c90a], sp                                ; $434a: $08 $0a $c9
    ld hl, $c4ba                                  ; $434d: $21 $ba $c4
    ld de, $08ed                                  ; $4350: $11 $ed $08
    ld a, e                                       ; $4353: $7b
    ld [hl+], a                                   ; $4354: $22
    ld [hl], d                                    ; $4355: $72
    call Call_033_4cac                            ; $4356: $cd $ac $4c
    ld a, $05                                     ; $4359: $3e $05
    rst $18                                       ; $435b: $df
    ld [$c90a], sp                                ; $435c: $08 $0a $c9

    ld hl, $c800                                  ; $435f: $21 $00 $c8
    ld a, l                                       ; $4362: $7d
    add $12                                       ; $4363: $c6 $12
    ld l, a                                       ; $4365: $6f
    ld a, h                                       ; $4366: $7c
    adc $00                                       ; $4367: $ce $00
    ld h, a                                       ; $4369: $67
    ld a, [hl]                                    ; $436a: $7e
    cp $63                                        ; $436b: $fe $63
    jr nz, jr_033_4377                            ; $436d: $20 $08

    ld hl, $087f                                  ; $436f: $21 $7f $08
    rst $18                                       ; $4372: $df
    ld c, $0a                                     ; $4373: $0e $0a
    jr jr_033_4383                                ; $4375: $18 $0c

jr_033_4377:
    ld hl, $087e                                  ; $4377: $21 $7e $08
    rst $18                                       ; $437a: $df

    db $0e, $0a

    rst $18                                       ; $437d: $df

    db $3a, $02

    rst $18                                       ; $4380: $df

    db $56, $05

jr_033_4383:
    ld a, $0b                                     ; $4383: $3e $0b
    rst $18                                       ; $4385: $df

    db $08, $0a

    ret                                           ; $4388: $c9


    db $0c, $ff

    nop                                           ; $438b: $00
    nop                                           ; $438c: $00
    xor e                                         ; $438d: $ab
    ld b, d                                       ; $438e: $42
    db $01                                        ; $438f: $01
    nop                                           ; $4390: $00

    db $0d, $ff

    nop                                           ; $4393: $00
    nop                                           ; $4394: $00
    cp l                                          ; $4395: $bd
    ld b, d                                       ; $4396: $42
    db $01                                        ; $4397: $01
    nop                                           ; $4398: $00

    db $0e, $ff

    nop                                           ; $439b: $00
    nop                                           ; $439c: $00
    rst $08                                       ; $439d: $cf
    ld b, d                                       ; $439e: $42
    db $01                                        ; $439f: $01
    nop                                           ; $43a0: $00

    db $0f, $ff, $00, $00, $e1, $42, $01, $00, $10, $ff, $00, $00, $f3, $42, $01, $00
    db $11, $ff

    nop                                           ; $43b3: $00
    nop                                           ; $43b4: $00
    dec b                                         ; $43b5: $05
    ld b, e                                       ; $43b6: $43
    db $01                                        ; $43b7: $01
    nop                                           ; $43b8: $00

    db $06, $20

    nop                                           ; $43bb: $00
    nop                                           ; $43bc: $00
    db $ec                                        ; $43bd: $ec
    ld c, b                                       ; $43be: $48
    db $01                                        ; $43bf: $01
    nop                                           ; $43c0: $00

    db $06, $ff

    nop                                           ; $43c3: $00
    nop                                           ; $43c4: $00
    rst $28                                       ; $43c5: $ef
    ld c, b                                       ; $43c6: $48
    db $01                                        ; $43c7: $01
    nop                                           ; $43c8: $00

    db $0b, $ff, $00, $00, $5f, $43, $01, $00

    ld [$00ff], sp                                ; $43d1: $08 $ff $00
    nop                                           ; $43d4: $00
    dec sp                                        ; $43d5: $3b
    ld b, h                                       ; $43d6: $44
    ld bc, $0900                                  ; $43d7: $01 $00 $09
    rst $38                                       ; $43da: $ff
    nop                                           ; $43db: $00
    nop                                           ; $43dc: $00
    ld b, a                                       ; $43dd: $47
    ld b, h                                       ; $43de: $44
    ld bc, $0a00                                  ; $43df: $01 $00 $0a
    rst $38                                       ; $43e2: $ff
    nop                                           ; $43e3: $00
    nop                                           ; $43e4: $00
    ld d, e                                       ; $43e5: $53
    ld b, h                                       ; $43e6: $44
    ld bc, $ff00                                  ; $43e7: $01 $00 $ff
    ld [bc], a                                    ; $43ea: $02
    rst $38                                       ; $43eb: $ff
    nop                                           ; $43ec: $00
    nop                                           ; $43ed: $00
    rla                                           ; $43ee: $17
    ld b, e                                       ; $43ef: $43
    ld bc, $0300                                  ; $43f0: $01 $00 $03
    rst $38                                       ; $43f3: $ff
    nop                                           ; $43f4: $00
    nop                                           ; $43f5: $00
    add hl, hl                                    ; $43f6: $29
    ld b, e                                       ; $43f7: $43
    ld bc, $0400                                  ; $43f8: $01 $00 $04
    rst $38                                       ; $43fb: $ff
    nop                                           ; $43fc: $00
    nop                                           ; $43fd: $00
    dec sp                                        ; $43fe: $3b
    ld b, e                                       ; $43ff: $43
    ld bc, $0500                                  ; $4400: $01 $00 $05
    rst $38                                       ; $4403: $ff
    nop                                           ; $4404: $00
    nop                                           ; $4405: $00
    ld c, l                                       ; $4406: $4d
    ld b, e                                       ; $4407: $43
    ld bc, $0600                                  ; $4408: $01 $00 $06
    jr nz, jr_033_440d                            ; $440b: $20 $00

jr_033_440d:
    nop                                           ; $440d: $00
    db $ec                                        ; $440e: $ec
    ld c, b                                       ; $440f: $48
    ld bc, $0600                                  ; $4410: $01 $00 $06
    rst $38                                       ; $4413: $ff
    nop                                           ; $4414: $00
    nop                                           ; $4415: $00
    rst $28                                       ; $4416: $ef
    ld c, b                                       ; $4417: $48
    ld bc, $0800                                  ; $4418: $01 $00 $08
    rst $38                                       ; $441b: $ff
    nop                                           ; $441c: $00
    nop                                           ; $441d: $00
    dec sp                                        ; $441e: $3b
    ld b, h                                       ; $441f: $44
    ld bc, $0900                                  ; $4420: $01 $00 $09
    rst $38                                       ; $4423: $ff
    nop                                           ; $4424: $00
    nop                                           ; $4425: $00
    ld b, a                                       ; $4426: $47
    ld b, h                                       ; $4427: $44
    ld bc, $0a00                                  ; $4428: $01 $00 $0a
    rst $38                                       ; $442b: $ff
    nop                                           ; $442c: $00
    nop                                           ; $442d: $00
    ld d, e                                       ; $442e: $53
    ld b, h                                       ; $442f: $44
    ld bc, $0b00                                  ; $4430: $01 $00 $0b
    rst $38                                       ; $4433: $ff
    nop                                           ; $4434: $00
    nop                                           ; $4435: $00
    ld e, e                                       ; $4436: $5b
    inc c                                         ; $4437: $0c
    ld bc, $ff00                                  ; $4438: $01 $00 $ff
    ld hl, $08b3                                  ; $443b: $21 $b3 $08
    rst $18                                       ; $443e: $df
    ld c, $0a                                     ; $443f: $0e $0a
    ld a, $80                                     ; $4441: $3e $80
    rst $18                                       ; $4443: $df
    ld [$c90a], sp                                ; $4444: $08 $0a $c9
    ld hl, $08b4                                  ; $4447: $21 $b4 $08
    rst $18                                       ; $444a: $df
    ld c, $0a                                     ; $444b: $0e $0a
    ld a, $80                                     ; $444d: $3e $80
    rst $18                                       ; $444f: $df
    ld [$c90a], sp                                ; $4450: $08 $0a $c9
    ld hl, $08b5                                  ; $4453: $21 $b5 $08
    rst $18                                       ; $4456: $df
    ld c, $0a                                     ; $4457: $0e $0a
    ld a, $80                                     ; $4459: $3e $80
    rst $18                                       ; $445b: $df
    ld [$c90a], sp                                ; $445c: $08 $0a $c9
    ld a, [$c450]                                 ; $445f: $fa $50 $c4
    cp $0b                                        ; $4462: $fe $0b
    jr nz, jr_033_44c7                            ; $4464: $20 $61

    rst $30                                       ; $4466: $f7
    add b                                         ; $4467: $80
    ld de, $5c20                                  ; $4468: $11 $20 $5c
    ld a, [$c810]                                 ; $446b: $fa $10 $c8
    cp $00                                        ; $446e: $fe $00
    jr z, jr_033_44c7                             ; $4470: $28 $55

    rst $20                                       ; $4472: $e7
    add b                                         ; $4473: $80
    ld de, $5721                                  ; $4474: $11 $21 $57
    inc c                                         ; $4477: $0c
    rst $18                                       ; $4478: $df
    ld c, $0a                                     ; $4479: $0e $0a
    ld a, $0b                                     ; $447b: $3e $0b
    rst $18                                       ; $447d: $df
    ld [$3e0a], sp                                ; $447e: $08 $0a $3e
    dec bc                                        ; $4481: $0b
    ld bc, $2b00                                  ; $4482: $01 $00 $2b
    ld de, $0700                                  ; $4485: $11 $00 $07
    rst $18                                       ; $4488: $df
    jr nz, jr_033_4495                            ; $4489: $20 $0a

    ld a, $0b                                     ; $448b: $3e $0b
    ld b, $40                                     ; $448d: $06 $40
    ld de, $0100                                  ; $448f: $11 $00 $01
    rst $18                                       ; $4492: $df
    jr z, jr_033_449f                             ; $4493: $28 $0a

jr_033_4495:
    ld a, $0b                                     ; $4495: $3e $0b
    rst $18                                       ; $4497: $df
    ld e, $0a                                     ; $4498: $1e $0a
    ld a, $0b                                     ; $449a: $3e $0b
    ld de, $ff40                                  ; $449c: $11 $40 $ff

jr_033_449f:
    rst $18                                       ; $449f: $df
    ld b, b                                       ; $44a0: $40
    ld a, [bc]                                    ; $44a1: $0a
    ld a, $0b                                     ; $44a2: $3e $0b
    ld bc, $2700                                  ; $44a4: $01 $00 $27
    ld de, $0b00                                  ; $44a7: $11 $00 $0b
    rst $18                                       ; $44aa: $df
    ld [hl+], a                                   ; $44ab: $22
    ld a, [bc]                                    ; $44ac: $0a
    ld a, $0b                                     ; $44ad: $3e $0b
    rst $18                                       ; $44af: $df
    ld e, $0a                                     ; $44b0: $1e $0a
    ld a, $0b                                     ; $44b2: $3e $0b
    ld b, $40                                     ; $44b4: $06 $40
    rst $18                                       ; $44b6: $df
    inc l                                         ; $44b7: $2c
    ld a, [bc]                                    ; $44b8: $0a
    ld hl, $0c5b                                  ; $44b9: $21 $5b $0c
    rst $18                                       ; $44bc: $df
    ld c, $0a                                     ; $44bd: $0e $0a
    ld a, $0b                                     ; $44bf: $3e $0b
    rst $18                                       ; $44c1: $df
    ld [$cd0a], sp                                ; $44c2: $08 $0a $cd
    pop af                                        ; $44c5: $f1
    ld a, h                                       ; $44c6: $7c

jr_033_44c7:
    ret                                           ; $44c7: $c9


    ld bc, $00ff                                  ; $44c8: $01 $ff $00
    nop                                           ; $44cb: $00
    or e                                          ; $44cc: $b3
    ld [$0004], sp                                ; $44cd: $08 $04 $00
    ld [bc], a                                    ; $44d0: $02
    rst $38                                       ; $44d1: $ff
    nop                                           ; $44d2: $00
    nop                                           ; $44d3: $00
    or h                                          ; $44d4: $b4
    ld [$0004], sp                                ; $44d5: $08 $04 $00
    inc bc                                        ; $44d8: $03
    rst $38                                       ; $44d9: $ff
    nop                                           ; $44da: $00
    nop                                           ; $44db: $00
    or l                                          ; $44dc: $b5
    ld [$0004], sp                                ; $44dd: $08 $04 $00
    inc b                                         ; $44e0: $04
    rst $38                                       ; $44e1: $ff
    nop                                           ; $44e2: $00
    nop                                           ; $44e3: $00
    or [hl]                                       ; $44e4: $b6
    ld [$0004], sp                                ; $44e5: $08 $04 $00
    rrca                                          ; $44e8: $0f
    add b                                         ; $44e9: $80
    nop                                           ; $44ea: $00
    nop                                           ; $44eb: $00
    ld e, a                                       ; $44ec: $5f
    ld b, h                                       ; $44ed: $44
    ld b, $00                                     ; $44ee: $06 $00
    rst $38                                       ; $44f0: $ff
    call Call_033_4fe5                            ; $44f1: $cd $e5 $4f
    cp $01                                        ; $44f4: $fe $01
    jr z, jr_033_451a                             ; $44f6: $28 $22

    ld a, $00                                     ; $44f8: $3e $00
    ld bc, $0008                                  ; $44fa: $01 $08 $00
    rst $18                                       ; $44fd: $df
    ld d, $0a                                     ; $44fe: $16 $0a
    ld a, $00                                     ; $4500: $3e $00
    ld bc, $2520                                  ; $4502: $01 $20 $25
    ld de, $0b00                                  ; $4505: $11 $00 $0b
    rst $18                                       ; $4508: $df
    ld [hl+], a                                   ; $4509: $22
    ld a, [bc]                                    ; $450a: $0a
    ld a, $00                                     ; $450b: $3e $00
    rst $18                                       ; $450d: $df
    ld e, $0a                                     ; $450e: $1e $0a
    call Call_033_4566                            ; $4510: $cd $66 $45
    ld a, $02                                     ; $4513: $3e $02
    ld [$c441], a                                 ; $4515: $ea $41 $c4
    rst $08                                       ; $4518: $cf
    sub d                                         ; $4519: $92

jr_033_451a:
    ret                                           ; $451a: $c9


    call Call_033_4fe5                            ; $451b: $cd $e5 $4f
    cp $01                                        ; $451e: $fe $01
    jr z, jr_033_4544                             ; $4520: $28 $22

    ld a, $00                                     ; $4522: $3e $00
    ld bc, $0008                                  ; $4524: $01 $08 $00
    rst $18                                       ; $4527: $df

    db $16, $0a

    ld a, $00                                     ; $452a: $3e $00
    ld bc, $3520                                  ; $452c: $01 $20 $35
    ld de, $0b00                                  ; $452f: $11 $00 $0b
    rst $18                                       ; $4532: $df

    db $22, $0a

    ld a, $00                                     ; $4535: $3e $00
    rst $18                                       ; $4537: $df

    db $1e, $0a

    call Call_033_4566                            ; $453a: $cd $66 $45
    ld a, $03                                     ; $453d: $3e $03
    ld [$c441], a                                 ; $453f: $ea $41 $c4
    rst $08                                       ; $4542: $cf

    db $92

jr_033_4544:
    ret                                           ; $4544: $c9


    call Call_033_4fe5                            ; $4545: $cd $e5 $4f
    cp $01                                        ; $4548: $fe $01
    jr z, jr_033_4565                             ; $454a: $28 $19

    ld a, $00                                     ; $454c: $3e $00
    ld bc, $0008                                  ; $454e: $01 $08 $00
    rst $18                                       ; $4551: $df
    ld d, $0a                                     ; $4552: $16 $0a
    ld a, $00                                     ; $4554: $3e $00
    ld b, $00                                     ; $4556: $06 $00
    ld de, $0200                                  ; $4558: $11 $00 $02
    rst $18                                       ; $455b: $df
    jr z, jr_033_4568                             ; $455c: $28 $0a

    ld a, $04                                     ; $455e: $3e $04
    ld [$c441], a                                 ; $4560: $ea $41 $c4
    rst $08                                       ; $4563: $cf
    sub d                                         ; $4564: $92

jr_033_4565:
    ret                                           ; $4565: $c9


Call_033_4566:
    ld a, $00                                     ; $4566: $3e $00

jr_033_4568:
    ld b, $c0                                     ; $4568: $06 $c0
    rst $18                                       ; $456a: $df

    db $2c, $0a

    ld a, $00                                     ; $456d: $3e $00
    ld b, $c0                                     ; $456f: $06 $c0
    ld de, $0480                                  ; $4571: $11 $80 $04
    rst $18                                       ; $4574: $df

    db $28, $0a

    ld a, $00                                     ; $4577: $3e $00
    ld bc, $000b                                  ; $4579: $01 $0b $00
    rst $18                                       ; $457c: $df

    db $16, $0a

    push af                                       ; $457f: $f5
    ld a, $0a                                     ; $4580: $3e $0a
    rst $18                                       ; $4582: $df

    db $04, $0a

    pop af                                        ; $4585: $f1
    ld a, $00                                     ; $4586: $3e $00
    ld b, a                                       ; $4588: $47
    ld a, $0a                                     ; $4589: $3e $0a
    rst $18                                       ; $458b: $df

    db $32, $0a

    push af                                       ; $458e: $f5
    ld a, $23                                     ; $458f: $3e $23
    rst $18                                       ; $4591: $df

    db $04, $0a

    pop af                                        ; $4594: $f1
    ret                                           ; $4595: $c9


    db $01, $ff

    nop                                           ; $4598: $00
    nop                                           ; $4599: $00
    db $d3                                        ; $459a: $d3
    ld c, e                                       ; $459b: $4b
    nop                                           ; $459c: $00
    nop                                           ; $459d: $00

    db $02, $40

    nop                                           ; $45a0: $00
    nop                                           ; $45a1: $00
    pop af                                        ; $45a2: $f1
    ld b, h                                       ; $45a3: $44
    nop                                           ; $45a4: $00
    nop                                           ; $45a5: $00

    db $03, $40, $00, $00, $1b, $45, $00, $00

    inc b                                         ; $45ae: $04
    stop                                          ; $45af: $10 $00
    nop                                           ; $45b1: $00
    ld b, l                                       ; $45b2: $45
    ld b, l                                       ; $45b3: $45
    nop                                           ; $45b4: $00
    nop                                           ; $45b5: $00
    ld [bc], a                                    ; $45b6: $02
    rst $38                                       ; $45b7: $ff
    nop                                           ; $45b8: $00
    nop                                           ; $45b9: $00
    rst $00                                       ; $45ba: $c7
    ld b, l                                       ; $45bb: $45
    nop                                           ; $45bc: $00
    nop                                           ; $45bd: $00
    inc bc                                        ; $45be: $03
    rst $38                                       ; $45bf: $ff
    nop                                           ; $45c0: $00
    nop                                           ; $45c1: $00
    rst $00                                       ; $45c2: $c7
    ld b, l                                       ; $45c3: $45
    nop                                           ; $45c4: $00
    nop                                           ; $45c5: $00
    rst $38                                       ; $45c6: $ff
    ld a, $00                                     ; $45c7: $3e $00
    ld b, $01                                     ; $45c9: $06 $01
    rst $18                                       ; $45cb: $df
    ld a, [hl+]                                   ; $45cc: $2a
    ld a, [bc]                                    ; $45cd: $0a
    ld a, $00                                     ; $45ce: $3e $00
    ld b, $80                                     ; $45d0: $06 $80
    ld de, $0100                                  ; $45d2: $11 $00 $01
    rst $18                                       ; $45d5: $df
    jr z, @+$0c                                   ; $45d6: $28 $0a

    push af                                       ; $45d8: $f5
    ld a, $0a                                     ; $45d9: $3e $0a
    rst $18                                       ; $45db: $df
    inc b                                         ; $45dc: $04
    ld a, [bc]                                    ; $45dd: $0a
    pop af                                        ; $45de: $f1
    ld a, $00                                     ; $45df: $3e $00
    ld b, $40                                     ; $45e1: $06 $40
    ld de, $0080                                  ; $45e3: $11 $80 $00
    rst $18                                       ; $45e6: $df
    jr z, jr_033_45f3                             ; $45e7: $28 $0a

    ld a, $00                                     ; $45e9: $3e $00
    rst $18                                       ; $45eb: $df
    ld e, $0a                                     ; $45ec: $1e $0a
    ld a, $00                                     ; $45ee: $3e $00
    ld b, $00                                     ; $45f0: $06 $00
    rst $18                                       ; $45f2: $df

jr_033_45f3:
    ld a, [hl+]                                   ; $45f3: $2a
    ld a, [bc]                                    ; $45f4: $0a
    ret                                           ; $45f5: $c9


jr_033_45f6:
    rst $20                                       ; $45f6: $e7
    jr nz, jr_033_4617                            ; $45f7: $20 $1e

    ret                                           ; $45f9: $c9


jr_033_45fa:
    rst $20                                       ; $45fa: $e7
    ld h, b                                       ; $45fb: $60
    ld e, $c9                                     ; $45fc: $1e $c9

Call_033_45fe:
    ld a, [$c450]                                 ; $45fe: $fa $50 $c4
    cp $08                                        ; $4601: $fe $08
    jr nz, jr_033_4612                            ; $4603: $20 $0d

    ld a, $0b                                     ; $4605: $3e $0b
    ld bc, $19c0                                  ; $4607: $01 $c0 $19
    ld de, $0d00                                  ; $460a: $11 $00 $0d
    rst $18                                       ; $460d: $df
    jr nz, jr_033_461a                            ; $460e: $20 $0a

    jr jr_033_461d                                ; $4610: $18 $0b

jr_033_4612:
    ld a, $05                                     ; $4612: $3e $05
    ld bc, $19c0                                  ; $4614: $01 $c0 $19

jr_033_4617:
    ld de, $0d00                                  ; $4617: $11 $00 $0d

jr_033_461a:
    rst $18                                       ; $461a: $df
    jr nz, jr_033_4627                            ; $461b: $20 $0a

jr_033_461d:
    rst $20                                       ; $461d: $e7
    nop                                           ; $461e: $00
    ld e, $fa                                     ; $461f: $1e $fa
    ld l, h                                       ; $4621: $6c
    ret                                           ; $4622: $c9


    cp $01                                        ; $4623: $fe $01
    jr z, jr_033_45f6                             ; $4625: $28 $cf

jr_033_4627:
    cp $04                                        ; $4627: $fe $04
    jr nc, jr_033_45fa                            ; $4629: $30 $cf

    rst $20                                       ; $462b: $e7
    ld b, b                                       ; $462c: $40
    ld e, $c9                                     ; $462d: $1e $c9

Jump_033_462f:
    ld a, $64                                     ; $462f: $3e $64
    ld [$c967], a                                 ; $4631: $ea $67 $c9
    ld a, [$c96c]                                 ; $4634: $fa $6c $c9
    cp $00                                        ; $4637: $fe $00
    jp z, Jump_033_46ad                           ; $4639: $ca $ad $46

    ld a, [$c96c]                                 ; $463c: $fa $6c $c9
    cp $04                                        ; $463f: $fe $04
    jr nc, jr_033_46aa                            ; $4641: $30 $67

    ld a, [$c96c]                                 ; $4643: $fa $6c $c9
    add $05                                       ; $4646: $c6 $05
    ld [$c441], a                                 ; $4648: $ea $41 $c4
    ret                                           ; $464b: $c9


jr_033_464c:
    ld a, $00                                     ; $464c: $3e $00
    ld [$c967], a                                 ; $464e: $ea $67 $c9
    rst $30                                       ; $4651: $f7
    add b                                         ; $4652: $80
    rla                                           ; $4653: $17
    jr nz, jr_033_46ad                            ; $4654: $20 $57

    rst $30                                       ; $4656: $f7
    ret nz                                        ; $4657: $c0

    ld a, [bc]                                    ; $4658: $0a
    jr z, jr_033_46ad                             ; $4659: $28 $52

    ld a, $5a                                     ; $465b: $3e $5a
    ld [$c967], a                                 ; $465d: $ea $67 $c9
    ld a, $09                                     ; $4660: $3e $09
    ld [$c441], a                                 ; $4662: $ea $41 $c4
    ret                                           ; $4665: $c9


Jump_033_4666:
    ld a, [$c967]                                 ; $4666: $fa $67 $c9
    cp $00                                        ; $4669: $fe $00
    jr z, jr_033_4697                             ; $466b: $28 $2a

    ld a, [$c96c]                                 ; $466d: $fa $6c $c9
    cp $00                                        ; $4670: $fe $00
    jr nz, jr_033_4679                            ; $4672: $20 $05

    call Call_033_5138                            ; $4674: $cd $38 $51
    jr jr_033_46ad                                ; $4677: $18 $34

jr_033_4679:
    rst $28                                       ; $4679: $ef
    nop                                           ; $467a: $00
    ld [de], a                                    ; $467b: $12
    rst $28                                       ; $467c: $ef
    jr nz, jr_033_4691                            ; $467d: $20 $12

    rst $28                                       ; $467f: $ef
    ld b, b                                       ; $4680: $40
    ld [de], a                                    ; $4681: $12
    rst $28                                       ; $4682: $ef
    ld h, b                                       ; $4683: $60
    ld [de], a                                    ; $4684: $12
    ld a, [$c298]                                 ; $4685: $fa $98 $c2
    rst $18                                       ; $4688: $df
    ld a, [de]                                    ; $4689: $1a
    ld a, [bc]                                    ; $468a: $0a
    ld a, [$c298]                                 ; $468b: $fa $98 $c2
    ld bc, $3f00                                  ; $468e: $01 $00 $3f

jr_033_4691:
    ld de, $3f00                                  ; $4691: $11 $00 $3f
    rst $18                                       ; $4694: $df
    jr nz, @+$0c                                  ; $4695: $20 $0a

jr_033_4697:
    rst $28                                       ; $4697: $ef

    db $e0, $0e

    ld a, [$c967]                                 ; $469a: $fa $67 $c9
    cp $0a                                        ; $469d: $fe $0a
    jp z, Jump_033_462f                           ; $469f: $ca $2f $46

    cp $1e                                        ; $46a2: $fe $1e
    jr z, jr_033_464c                             ; $46a4: $28 $a6

    cp $64                                        ; $46a6: $fe $64
    jr nz, jr_033_46ad                            ; $46a8: $20 $03

jr_033_46aa:
    call Call_033_45fe                            ; $46aa: $cd $fe $45

Jump_033_46ad:
jr_033_46ad:
    rst $08                                       ; $46ad: $cf

    db $27

    ld a, [$c450]                                 ; $46af: $fa $50 $c4
    cp $08                                        ; $46b2: $fe $08
    jr z, jr_033_46e8                             ; $46b4: $28 $32

    ld a, $02                                     ; $46b6: $3e $02
    ld bc, $0100                                  ; $46b8: $01 $00 $01
    ld de, $3500                                  ; $46bb: $11 $00 $35
    rst $18                                       ; $46be: $df
    jr nz, @+$0c                                  ; $46bf: $20 $0a

    ld a, $02                                     ; $46c1: $3e $02
    ld bc, $0008                                  ; $46c3: $01 $08 $00
    rst $18                                       ; $46c6: $df
    ld d, $0a                                     ; $46c7: $16 $0a
    call Call_033_4864                            ; $46c9: $cd $64 $48
    ld a, $02                                     ; $46cc: $3e $02
    ld bc, $0100                                  ; $46ce: $01 $00 $01
    ld de, $0d00                                  ; $46d1: $11 $00 $0d
    rst $18                                       ; $46d4: $df
    jr nz, jr_033_46e1                            ; $46d5: $20 $0a

    ld a, $02                                     ; $46d7: $3e $02
    ld bc, $0300                                  ; $46d9: $01 $00 $03
    ld de, $0d00                                  ; $46dc: $11 $00 $0d
    rst $18                                       ; $46df: $df
    ld [hl+], a                                   ; $46e0: $22

jr_033_46e1:
    ld a, [bc]                                    ; $46e1: $0a
    ld a, $02                                     ; $46e2: $3e $02
    rst $18                                       ; $46e4: $df
    ld e, $0a                                     ; $46e5: $1e $0a
    ret                                           ; $46e7: $c9


jr_033_46e8:
    ld a, $11                                     ; $46e8: $3e $11
    ld bc, $0100                                  ; $46ea: $01 $00 $01
    ld de, $3500                                  ; $46ed: $11 $00 $35
    rst $18                                       ; $46f0: $df

    db $20, $0a

    ld a, $11                                     ; $46f3: $3e $11
    ld bc, $0008                                  ; $46f5: $01 $08 $00
    rst $18                                       ; $46f8: $df

    db $16, $0a

    call Call_033_4864                            ; $46fb: $cd $64 $48
    ld a, $11                                     ; $46fe: $3e $11
    ld bc, $0100                                  ; $4700: $01 $00 $01
    ld de, $0d00                                  ; $4703: $11 $00 $0d
    rst $18                                       ; $4706: $df

    db $20, $0a

    ld a, $11                                     ; $4709: $3e $11
    ld bc, $0300                                  ; $470b: $01 $00 $03
    ld de, $0d00                                  ; $470e: $11 $00 $0d
    rst $18                                       ; $4711: $df

    db $22, $0a

    ld a, $11                                     ; $4714: $3e $11
    rst $18                                       ; $4716: $df

    db $1e, $0a

    ret                                           ; $4719: $c9


Jump_033_471a:
    xor a                                         ; $471a: $af
    ld hl, $c4b4                                  ; $471b: $21 $b4 $c4
    ld [hl+], a                                   ; $471e: $22
    ld [hl+], a                                   ; $471f: $22
    jr jr_033_4752                                ; $4720: $18 $30

    rst $28                                       ; $4722: $ef

    db $00, $1c

    rst $28                                       ; $4725: $ef

    db $20, $1c

    rst $28                                       ; $4728: $ef

    db $c0, $0e

    rst $28                                       ; $472b: $ef

    db $c0, $17

    rst $28                                       ; $472e: $ef

    db $e0, $17

    rst $28                                       ; $4731: $ef

    db $00, $18

    rst $28                                       ; $4734: $ef

    db $20, $18

    rst $28                                       ; $4737: $ef

    db $a0, $0c

    rst $28                                       ; $473a: $ef

    db $c0, $0c

    ld a, [$c46a]                                 ; $473d: $fa $6a $c4
    cp $fa                                        ; $4740: $fe $fa
    jp z, Jump_033_471a                           ; $4742: $ca $1a $47

    ld a, [$c46a]                                 ; $4745: $fa $6a $c4
    cp $06                                        ; $4748: $fe $06
    jr nz, jr_033_4752                            ; $474a: $20 $06

    xor a                                         ; $474c: $af
    ld hl, $c4b4                                  ; $474d: $21 $b4 $c4
    ld [hl+], a                                   ; $4750: $22
    ld [hl+], a                                   ; $4751: $22

jr_033_4752:
    ld a, [$c450]                                 ; $4752: $fa $50 $c4
    cp $0b                                        ; $4755: $fe $0b
    jr nz, jr_033_47a5                            ; $4757: $20 $4c

    ldh a, [$95]                                  ; $4759: $f0 $95
    ld hl, $40e1                                  ; $475b: $21 $e1 $40
    rst $18                                       ; $475e: $df
    ld b, $0a                                     ; $475f: $06 $0a
    ld hl, $4262                                  ; $4761: $21 $62 $42
    ld de, $0008                                  ; $4764: $11 $08 $00
    rst $18                                       ; $4767: $df
    ld c, h                                       ; $4768: $4c
    ld a, [bc]                                    ; $4769: $0a

jr_033_476a:
    call Call_033_55db                            ; $476a: $cd $db $55
    rst $30                                       ; $476d: $f7
    add b                                         ; $476e: $80
    ld de, $0b20                                  ; $476f: $11 $20 $0b
    ld a, $0b                                     ; $4772: $3e $0b
    ld bc, $0100                                  ; $4774: $01 $00 $01
    ld de, $3500                                  ; $4777: $11 $00 $35
    rst $18                                       ; $477a: $df
    jr nz, jr_033_4787                            ; $477b: $20 $0a

    rst $30                                       ; $477d: $f7
    ld b, b                                       ; $477e: $40
    ld c, $28                                     ; $477f: $0e $28
    jr nz, jr_033_476a                            ; $4781: $20 $e7

    ld h, b                                       ; $4783: $60
    inc e                                         ; $4784: $1c
    ld a, $05                                     ; $4785: $3e $05

jr_033_4787:
    ld bc, $1d00                                  ; $4787: $01 $00 $1d
    ld de, $0b00                                  ; $478a: $11 $00 $0b
    rst $18                                       ; $478d: $df
    jr nz, @+$0c                                  ; $478e: $20 $0a

    ld a, $05                                     ; $4790: $3e $05
    ld b, $40                                     ; $4792: $06 $40
    rst $18                                       ; $4794: $df
    inc l                                         ; $4795: $2c
    ld a, [bc]                                    ; $4796: $0a
    rst $30                                       ; $4797: $f7
    ld h, b                                       ; $4798: $60
    ld de, $0628                                  ; $4799: $11 $28 $06
    rst $20                                       ; $479c: $e7
    ld b, b                                       ; $479d: $40
    inc e                                         ; $479e: $1c
    rst $28                                       ; $479f: $ef
    ld h, b                                       ; $47a0: $60
    inc e                                         ; $47a1: $1c
    jp Jump_033_4854                              ; $47a2: $c3 $54 $48


jr_033_47a5:
    cp $0a                                        ; $47a5: $fe $0a
    jr nz, jr_033_47ef                            ; $47a7: $20 $46

    call Call_033_55bf                            ; $47a9: $cd $bf $55
    ldh a, [$95]                                  ; $47ac: $f0 $95
    ld hl, $40e1                                  ; $47ae: $21 $e1 $40
    rst $18                                       ; $47b1: $df
    ld b, $0a                                     ; $47b2: $06 $0a
    ld hl, $4219                                  ; $47b4: $21 $19 $42
    ld de, $0008                                  ; $47b7: $11 $08 $00
    rst $18                                       ; $47ba: $df
    ld c, h                                       ; $47bb: $4c
    ld a, [bc]                                    ; $47bc: $0a
    rst $30                                       ; $47bd: $f7
    jr nz, jr_033_47ce                            ; $47be: $20 $0e

    jr z, jr_033_47e2                             ; $47c0: $28 $20

    rst $20                                       ; $47c2: $e7
    ld h, b                                       ; $47c3: $60
    inc e                                         ; $47c4: $1c
    ld a, $05                                     ; $47c5: $3e $05
    ld bc, $1d00                                  ; $47c7: $01 $00 $1d
    ld de, $0b00                                  ; $47ca: $11 $00 $0b
    rst $18                                       ; $47cd: $df

jr_033_47ce:
    jr nz, @+$0c                                  ; $47ce: $20 $0a

    ld a, $05                                     ; $47d0: $3e $05
    ld b, $40                                     ; $47d2: $06 $40
    rst $18                                       ; $47d4: $df
    inc l                                         ; $47d5: $2c
    ld a, [bc]                                    ; $47d6: $0a
    rst $30                                       ; $47d7: $f7
    ld b, b                                       ; $47d8: $40
    ld de, $0628                                  ; $47d9: $11 $28 $06
    rst $20                                       ; $47dc: $e7
    ld b, b                                       ; $47dd: $40
    inc e                                         ; $47de: $1c
    rst $28                                       ; $47df: $ef
    ld h, b                                       ; $47e0: $60
    inc e                                         ; $47e1: $1c

jr_033_47e2:
    ld a, $0b                                     ; $47e2: $3e $0b
    ld bc, $0100                                  ; $47e4: $01 $00 $01
    ld de, $3500                                  ; $47e7: $11 $00 $35
    rst $18                                       ; $47ea: $df
    jr nz, @+$0c                                  ; $47eb: $20 $0a

    jr jr_033_4854                                ; $47ed: $18 $65

jr_033_47ef:
    cp $09                                        ; $47ef: $fe $09
    jr nz, jr_033_4839                            ; $47f1: $20 $46

    ldh a, [$95]                                  ; $47f3: $f0 $95
    ld hl, $40e1                                  ; $47f5: $21 $e1 $40
    rst $18                                       ; $47f8: $df
    ld b, $0a                                     ; $47f9: $06 $0a
    ld hl, $41d0                                  ; $47fb: $21 $d0 $41
    ld de, $0008                                  ; $47fe: $11 $08 $00
    rst $18                                       ; $4801: $df
    ld c, h                                       ; $4802: $4c
    ld a, [bc]                                    ; $4803: $0a
    call Call_033_55a3                            ; $4804: $cd $a3 $55
    rst $30                                       ; $4807: $f7
    nop                                           ; $4808: $00
    ld c, $28                                     ; $4809: $0e $28
    jr nz, @-$17                                  ; $480b: $20 $e7

    ld h, b                                       ; $480d: $60
    inc e                                         ; $480e: $1c
    ld a, $05                                     ; $480f: $3e $05
    ld bc, $1d00                                  ; $4811: $01 $00 $1d
    ld de, $0b00                                  ; $4814: $11 $00 $0b
    rst $18                                       ; $4817: $df
    jr nz, jr_033_4824                            ; $4818: $20 $0a

    ld a, $05                                     ; $481a: $3e $05
    ld b, $40                                     ; $481c: $06 $40
    rst $18                                       ; $481e: $df
    inc l                                         ; $481f: $2c
    ld a, [bc]                                    ; $4820: $0a
    rst $30                                       ; $4821: $f7
    jr nz, jr_033_4835                            ; $4822: $20 $11

jr_033_4824:
    jr z, jr_033_482c                             ; $4824: $28 $06

    rst $20                                       ; $4826: $e7
    ld b, b                                       ; $4827: $40
    inc e                                         ; $4828: $1c
    rst $28                                       ; $4829: $ef
    ld h, b                                       ; $482a: $60
    inc e                                         ; $482b: $1c

jr_033_482c:
    ld a, $0b                                     ; $482c: $3e $0b
    ld bc, $0100                                  ; $482e: $01 $00 $01
    ld de, $3500                                  ; $4831: $11 $00 $35
    rst $18                                       ; $4834: $df

jr_033_4835:
    jr nz, jr_033_4841                            ; $4835: $20 $0a

    jr jr_033_4854                                ; $4837: $18 $1b

jr_033_4839:
    cp $08                                        ; $4839: $fe $08
    ld hl, $4389                                  ; $483b: $21 $89 $43
    ld de, $000c                                  ; $483e: $11 $0c $00

jr_033_4841:
    rst $18                                       ; $4841: $df

    db $4c, $0a

    rst $20                                       ; $4844: $e7

    db $60, $1c

    rst $30                                       ; $4847: $f7

    db $00, $11

    jr z, jr_033_4852                             ; $484a: $28 $06

    rst $20                                       ; $484c: $e7
    ld b, b                                       ; $484d: $40
    inc e                                         ; $484e: $1c
    rst $28                                       ; $484f: $ef
    ld h, b                                       ; $4850: $60
    inc e                                         ; $4851: $1c

jr_033_4852:
    jr jr_033_4854                                ; $4852: $18 $00

Jump_033_4854:
jr_033_4854:
    ld a, [$c46a]                                 ; $4854: $fa $6a $c4
    cp $06                                        ; $4857: $fe $06
    jp z, Jump_033_4666                           ; $4859: $ca $66 $46

    cp $fa                                        ; $485c: $fe $fa
    jp z, Jump_033_4666                           ; $485e: $ca $66 $46

    rst $08                                       ; $4861: $cf

    db $27

    ret                                           ; $4863: $c9


Call_033_4864:
    ld a, [$c46a]                                 ; $4864: $fa $6a $c4
    cp $fa                                        ; $4867: $fe $fa
    jp z, Jump_033_48bb                           ; $4869: $ca $bb $48

    rst $18                                       ; $486c: $df
    nop                                           ; $486d: $00
    ld a, [bc]                                    ; $486e: $0a
    ld c, $04                                     ; $486f: $0e $04
    call Call_000_25af                            ; $4871: $cd $af $25
    call Call_000_2625                            ; $4874: $cd $25 $26
    ld a, $00                                     ; $4877: $3e $00
    ld bc, $000c                                  ; $4879: $01 $0c $00
    rst $18                                       ; $487c: $df
    ld d, $0a                                     ; $487d: $16 $0a
    ld a, $00                                     ; $487f: $3e $00
    ld bc, $0900                                  ; $4881: $01 $00 $09
    ld de, $0d00                                  ; $4884: $11 $00 $0d
    rst $18                                       ; $4887: $df
    ld [hl+], a                                   ; $4888: $22
    ld a, [bc]                                    ; $4889: $0a
    ld a, $00                                     ; $488a: $3e $00
    rst $18                                       ; $488c: $df
    ld e, $0a                                     ; $488d: $1e $0a
    push af                                       ; $488f: $f5
    ld a, $0a                                     ; $4890: $3e $0a
    rst $18                                       ; $4892: $df
    inc b                                         ; $4893: $04
    ld a, [bc]                                    ; $4894: $0a
    pop af                                        ; $4895: $f1
    ld a, $06                                     ; $4896: $3e $06
    ld b, a                                       ; $4898: $47
    ld a, $00                                     ; $4899: $3e $00
    rst $18                                       ; $489b: $df
    ld l, $0a                                     ; $489c: $2e $0a
    ld a, $00                                     ; $489e: $3e $00
    ld b, $c0                                     ; $48a0: $06 $c0
    rst $18                                       ; $48a2: $df
    inc l                                         ; $48a3: $2c
    ld a, [bc]                                    ; $48a4: $0a
    ld a, [$c967]                                 ; $48a5: $fa $67 $c9
    cp $64                                        ; $48a8: $fe $64
    jr nz, jr_033_48b7                            ; $48aa: $20 $0b

    ld a, [$c450]                                 ; $48ac: $fa $50 $c4
    cp $08                                        ; $48af: $fe $08
    jp z, Jump_033_4d97                           ; $48b1: $ca $97 $4d

    jp Jump_033_4d25                              ; $48b4: $c3 $25 $4d


jr_033_48b7:
    rst $18                                       ; $48b7: $df
    ld [bc], a                                    ; $48b8: $02
    ld a, [bc]                                    ; $48b9: $0a
    ret                                           ; $48ba: $c9


Jump_033_48bb:
    ret                                           ; $48bb: $c9


    db $01, $0a, $0d, $0e, $05, $00, $0d, $1b, $01, $00, $07, $c0, $00, $02, $02, $01
    db $46, $07, $40, $00, $02, $02, $01, $46, $07, $c0, $00, $02, $02, $01, $5a, $07
    db $40, $00, $01, $02, $01, $46, $07, $c0, $00, $01, $02

    ld bc, $0c5a                                  ; $48e7: $01 $5a $0c
    db $e3                                        ; $48ea: $e3
    rst $38                                       ; $48eb: $ff
    rst $20                                       ; $48ec: $e7
    nop                                           ; $48ed: $00
    rra                                           ; $48ee: $1f

Call_033_48ef:
    rst $28                                       ; $48ef: $ef
    nop                                           ; $48f0: $00
    inc e                                         ; $48f1: $1c
    call Call_033_4c94                            ; $48f2: $cd $94 $4c
    call Call_033_4dbe                            ; $48f5: $cd $be $4d
    jp nz, $4abb                                  ; $48f8: $c2 $bb $4a

    rst $28                                       ; $48fb: $ef
    nop                                           ; $48fc: $00
    rra                                           ; $48fd: $1f
    ld a, $00                                     ; $48fe: $3e $00
    ld bc, $0900                                  ; $4900: $01 $00 $09
    ld de, $0d00                                  ; $4903: $11 $00 $0d
    rst $18                                       ; $4906: $df
    ld [hl+], a                                   ; $4907: $22
    ld a, [bc]                                    ; $4908: $0a
    ld a, $00                                     ; $4909: $3e $00
    rst $18                                       ; $490b: $df
    ld e, $0a                                     ; $490c: $1e $0a
    ld a, $06                                     ; $490e: $3e $06
    ld b, a                                       ; $4910: $47
    ld a, $00                                     ; $4911: $3e $00
    rst $18                                       ; $4913: $df
    jr nc, @+$0c                                  ; $4914: $30 $0a

    rst $30                                       ; $4916: $f7
    nop                                           ; $4917: $00
    ld e, $20                                     ; $4918: $1e $20
    inc bc                                        ; $491a: $03
    jp Jump_033_5166                              ; $491b: $c3 $66 $51


    ld a, [$c450]                                 ; $491e: $fa $50 $c4
    cp $08                                        ; $4921: $fe $08
    jp z, Jump_033_4d97                           ; $4923: $ca $97 $4d

    jp Jump_033_4d25                              ; $4926: $c3 $25 $4d


    rst $30                                       ; $4929: $f7
    ld h, b                                       ; $492a: $60
    inc e                                         ; $492b: $1c
    jp nz, Jump_033_4962                          ; $492c: $c2 $62 $49

    ld de, $0001                                  ; $492f: $11 $01 $00
    call Call_033_4c89                            ; $4932: $cd $89 $4c
    ld a, $06                                     ; $4935: $3e $06
    rst $18                                       ; $4937: $df
    ld a, [bc]                                    ; $4938: $0a
    ld a, [bc]                                    ; $4939: $0a
    push af                                       ; $493a: $f5
    ld a, $0a                                     ; $493b: $3e $0a
    rst $18                                       ; $493d: $df
    inc b                                         ; $493e: $04
    ld a, [bc]                                    ; $493f: $0a
    pop af                                        ; $4940: $f1
    rst $18                                       ; $4941: $df
    ld [de], a                                    ; $4942: $12
    ld a, [bc]                                    ; $4943: $0a
    rst $18                                       ; $4944: $df
    inc c                                         ; $4945: $0c
    ld a, [bc]                                    ; $4946: $0a
    push af                                       ; $4947: $f5
    ld a, $05                                     ; $4948: $3e $05
    rst $18                                       ; $494a: $df
    inc b                                         ; $494b: $04
    ld a, [bc]                                    ; $494c: $0a
    pop af                                        ; $494d: $f1
    and a                                         ; $494e: $a7
    jr z, jr_033_4957                             ; $494f: $28 $06

    ld a, $06                                     ; $4951: $3e $06
    rst $18                                       ; $4953: $df
    ld [$c90a], sp                                ; $4954: $08 $0a $c9

jr_033_4957:
    rst $18                                       ; $4957: $df
    db $10                                        ; $4958: $10
    ld a, [bc]                                    ; $4959: $0a
    ld a, $06                                     ; $495a: $3e $06
    rst $18                                       ; $495c: $df
    ld [$c30a], sp                                ; $495d: $08 $0a $c3
    cp e                                          ; $4960: $bb
    ld d, b                                       ; $4961: $50

Jump_033_4962:
    ld de, $0001                                  ; $4962: $11 $01 $00
    call Call_033_4c89                            ; $4965: $cd $89 $4c
    ld a, $06                                     ; $4968: $3e $06
    rst $18                                       ; $496a: $df
    ld a, [bc]                                    ; $496b: $0a
    ld a, [bc]                                    ; $496c: $0a
    push af                                       ; $496d: $f5
    ld a, $0a                                     ; $496e: $3e $0a
    rst $18                                       ; $4970: $df
    inc b                                         ; $4971: $04
    ld a, [bc]                                    ; $4972: $0a
    pop af                                        ; $4973: $f1
    rst $18                                       ; $4974: $df
    ld [de], a                                    ; $4975: $12
    ld a, [bc]                                    ; $4976: $0a
    rst $18                                       ; $4977: $df
    inc c                                         ; $4978: $0c
    ld a, [bc]                                    ; $4979: $0a
    push af                                       ; $497a: $f5
    ld a, $05                                     ; $497b: $3e $05
    rst $18                                       ; $497d: $df
    inc b                                         ; $497e: $04
    ld a, [bc]                                    ; $497f: $0a
    pop af                                        ; $4980: $f1
    and a                                         ; $4981: $a7
    jr z, jr_033_498a                             ; $4982: $28 $06

    ld a, $06                                     ; $4984: $3e $06
    rst $18                                       ; $4986: $df
    ld [$c90a], sp                                ; $4987: $08 $0a $c9

jr_033_498a:
    ld de, $000a                                  ; $498a: $11 $0a $00
    call Call_033_4c89                            ; $498d: $cd $89 $4c
    ld a, $06                                     ; $4990: $3e $06
    rst $18                                       ; $4992: $df
    ld [$cd0a], sp                                ; $4993: $08 $0a $cd
    ld d, a                                       ; $4996: $57
    ld d, d                                       ; $4997: $52
    call Call_033_5166                            ; $4998: $cd $66 $51
    push af                                       ; $499b: $f5
    ld a, $0a                                     ; $499c: $3e $0a
    rst $18                                       ; $499e: $df
    inc b                                         ; $499f: $04
    ld a, [bc]                                    ; $49a0: $0a
    pop af                                        ; $49a1: $f1
    rst $18                                       ; $49a2: $df
    ld [de], a                                    ; $49a3: $12
    ld a, [bc]                                    ; $49a4: $0a
    rst $18                                       ; $49a5: $df
    inc c                                         ; $49a6: $0c
    ld a, [bc]                                    ; $49a7: $0a
    push af                                       ; $49a8: $f5
    ld a, $05                                     ; $49a9: $3e $05
    rst $18                                       ; $49ab: $df
    inc b                                         ; $49ac: $04
    ld a, [bc]                                    ; $49ad: $0a
    pop af                                        ; $49ae: $f1
    and a                                         ; $49af: $a7
    jr z, jr_033_49b8                             ; $49b0: $28 $06

    ld a, $06                                     ; $49b2: $3e $06
    rst $18                                       ; $49b4: $df
    ld [$c90a], sp                                ; $49b5: $08 $0a $c9

jr_033_49b8:
    ld de, $0006                                  ; $49b8: $11 $06 $00
    call Call_033_4c89                            ; $49bb: $cd $89 $4c
    rst $30                                       ; $49be: $f7
    ld h, b                                       ; $49bf: $60
    inc e                                         ; $49c0: $1c
    jp nz, Jump_033_4a68                          ; $49c1: $c2 $68 $4a

    ld a, $06                                     ; $49c4: $3e $06
    rst $18                                       ; $49c6: $df
    ld a, [bc]                                    ; $49c7: $0a
    ld a, [bc]                                    ; $49c8: $0a
    push af                                       ; $49c9: $f5
    ld a, $0a                                     ; $49ca: $3e $0a
    rst $18                                       ; $49cc: $df
    inc b                                         ; $49cd: $04
    ld a, [bc]                                    ; $49ce: $0a
    pop af                                        ; $49cf: $f1
    rst $18                                       ; $49d0: $df
    ld [de], a                                    ; $49d1: $12
    ld a, [bc]                                    ; $49d2: $0a
    rst $18                                       ; $49d3: $df
    inc c                                         ; $49d4: $0c
    ld a, [bc]                                    ; $49d5: $0a
    push af                                       ; $49d6: $f5
    ld a, $05                                     ; $49d7: $3e $05
    rst $18                                       ; $49d9: $df
    inc b                                         ; $49da: $04
    ld a, [bc]                                    ; $49db: $0a
    pop af                                        ; $49dc: $f1
    and a                                         ; $49dd: $a7
    jr z, jr_033_49f6                             ; $49de: $28 $16

    call Call_033_4ddc                            ; $49e0: $cd $dc $4d
    ld a, $06                                     ; $49e3: $3e $06
    rst $18                                       ; $49e5: $df
    ld [$3e0a], sp                                ; $49e6: $08 $0a $3e
    nop                                           ; $49e9: $00
    ld b, a                                       ; $49ea: $47
    ld a, $07                                     ; $49eb: $3e $07
    rst $18                                       ; $49ed: $df
    ld [hl-], a                                   ; $49ee: $32
    ld a, [bc]                                    ; $49ef: $0a
    ld a, $00                                     ; $49f0: $3e $00
    rst $18                                       ; $49f2: $df
    inc [hl]                                      ; $49f3: $34
    ld a, [bc]                                    ; $49f4: $0a
    ret                                           ; $49f5: $c9


Jump_033_49f6:
jr_033_49f6:
    rst $20                                       ; $49f6: $e7
    nop                                           ; $49f7: $00
    inc e                                         ; $49f8: $1c
    rst $30                                       ; $49f9: $f7
    ld h, b                                       ; $49fa: $60
    inc e                                         ; $49fb: $1c
    jr nz, jr_033_4a39                            ; $49fc: $20 $3b

    rst $20                                       ; $49fe: $e7
    add b                                         ; $49ff: $80
    ld e, $11                                     ; $4a00: $1e $11
    ld [$cd00], sp                                ; $4a02: $08 $00 $cd
    adc c                                         ; $4a05: $89
    ld c, h                                       ; $4a06: $4c
    ld a, $06                                     ; $4a07: $3e $06
    rst $18                                       ; $4a09: $df
    ld a, [bc]                                    ; $4a0a: $0a
    ld a, [bc]                                    ; $4a0b: $0a
    rst $18                                       ; $4a0c: $df
    ld [de], a                                    ; $4a0d: $12
    ld a, [bc]                                    ; $4a0e: $0a
    rst $18                                       ; $4a0f: $df
    inc c                                         ; $4a10: $0c
    ld a, [bc]                                    ; $4a11: $0a
    push af                                       ; $4a12: $f5
    ld a, $05                                     ; $4a13: $3e $05
    rst $18                                       ; $4a15: $df
    inc b                                         ; $4a16: $04
    ld a, [bc]                                    ; $4a17: $0a
    pop af                                        ; $4a18: $f1
    and a                                         ; $4a19: $a7
    jr nz, jr_033_4a2a                            ; $4a1a: $20 $0e

    ld de, $0003                                  ; $4a1c: $11 $03 $00
    call Call_033_4c89                            ; $4a1f: $cd $89 $4c
    ld a, $06                                     ; $4a22: $3e $06
    rst $18                                       ; $4a24: $df
    ld [$c30a], sp                                ; $4a25: $08 $0a $c3
    cp e                                          ; $4a28: $bb
    ld d, b                                       ; $4a29: $50

jr_033_4a2a:
    rst $28                                       ; $4a2a: $ef
    nop                                           ; $4a2b: $00
    inc e                                         ; $4a2c: $1c
    ld de, $0002                                  ; $4a2d: $11 $02 $00
    call Call_033_4c89                            ; $4a30: $cd $89 $4c
    ld a, $06                                     ; $4a33: $3e $06
    rst $18                                       ; $4a35: $df
    ld [$c90a], sp                                ; $4a36: $08 $0a $c9

jr_033_4a39:
    rst $20                                       ; $4a39: $e7
    nop                                           ; $4a3a: $00
    inc e                                         ; $4a3b: $1c
    rst $20                                       ; $4a3c: $e7
    add b                                         ; $4a3d: $80
    ld e, $11                                     ; $4a3e: $1e $11
    add hl, bc                                    ; $4a40: $09
    nop                                           ; $4a41: $00
    call Call_033_4c89                            ; $4a42: $cd $89 $4c
    ld a, $06                                     ; $4a45: $3e $06
    rst $18                                       ; $4a47: $df
    ld a, [bc]                                    ; $4a48: $0a
    ld a, [bc]                                    ; $4a49: $0a
    rst $18                                       ; $4a4a: $df
    ld [de], a                                    ; $4a4b: $12
    ld a, [bc]                                    ; $4a4c: $0a
    rst $18                                       ; $4a4d: $df
    inc c                                         ; $4a4e: $0c
    ld a, [bc]                                    ; $4a4f: $0a
    push af                                       ; $4a50: $f5
    ld a, $05                                     ; $4a51: $3e $05
    rst $18                                       ; $4a53: $df
    inc b                                         ; $4a54: $04
    ld a, [bc]                                    ; $4a55: $0a
    pop af                                        ; $4a56: $f1
    and a                                         ; $4a57: $a7
    jr nz, jr_033_4a2a                            ; $4a58: $20 $d0

    ld de, $000a                                  ; $4a5a: $11 $0a $00
    call Call_033_4c89                            ; $4a5d: $cd $89 $4c
    ld a, $06                                     ; $4a60: $3e $06
    rst $18                                       ; $4a62: $df
    ld [$e70a], sp                                ; $4a63: $08 $0a $e7
    nop                                           ; $4a66: $00
    inc e                                         ; $4a67: $1c

Jump_033_4a68:
    ld de, $000b                                  ; $4a68: $11 $0b $00
    call Call_033_4c89                            ; $4a6b: $cd $89 $4c
    ld a, $06                                     ; $4a6e: $3e $06
    rst $18                                       ; $4a70: $df
    ld a, [bc]                                    ; $4a71: $0a
    ld a, [bc]                                    ; $4a72: $0a
    push af                                       ; $4a73: $f5
    ld a, $0a                                     ; $4a74: $3e $0a
    rst $18                                       ; $4a76: $df
    inc b                                         ; $4a77: $04
    ld a, [bc]                                    ; $4a78: $0a
    pop af                                        ; $4a79: $f1
    rst $18                                       ; $4a7a: $df
    ld [de], a                                    ; $4a7b: $12
    ld a, [bc]                                    ; $4a7c: $0a
    rst $18                                       ; $4a7d: $df
    inc c                                         ; $4a7e: $0c
    ld a, [bc]                                    ; $4a7f: $0a
    push af                                       ; $4a80: $f5
    ld a, $05                                     ; $4a81: $3e $05
    rst $18                                       ; $4a83: $df
    inc b                                         ; $4a84: $04
    ld a, [bc]                                    ; $4a85: $0a
    pop af                                        ; $4a86: $f1
    and a                                         ; $4a87: $a7
    jr z, jr_033_4ab3                             ; $4a88: $28 $29

    ld a, $06                                     ; $4a8a: $3e $06
    rst $18                                       ; $4a8c: $df
    ld a, [bc]                                    ; $4a8d: $0a
    ld a, [bc]                                    ; $4a8e: $0a
    push af                                       ; $4a8f: $f5
    ld a, $0a                                     ; $4a90: $3e $0a
    rst $18                                       ; $4a92: $df
    inc b                                         ; $4a93: $04
    ld a, [bc]                                    ; $4a94: $0a
    pop af                                        ; $4a95: $f1
    rst $18                                       ; $4a96: $df
    ld [de], a                                    ; $4a97: $12
    ld a, [bc]                                    ; $4a98: $0a
    rst $18                                       ; $4a99: $df
    inc c                                         ; $4a9a: $0c
    ld a, [bc]                                    ; $4a9b: $0a
    push af                                       ; $4a9c: $f5
    ld a, $05                                     ; $4a9d: $3e $05
    rst $18                                       ; $4a9f: $df
    inc b                                         ; $4aa0: $04
    ld a, [bc]                                    ; $4aa1: $0a
    pop af                                        ; $4aa2: $f1
    and a                                         ; $4aa3: $a7
    jp z, Jump_033_49f6                           ; $4aa4: $ca $f6 $49

    ld de, $0005                                  ; $4aa7: $11 $05 $00
    call Call_033_4c89                            ; $4aaa: $cd $89 $4c
    ld a, $06                                     ; $4aad: $3e $06
    rst $18                                       ; $4aaf: $df
    ld [$c90a], sp                                ; $4ab0: $08 $0a $c9

jr_033_4ab3:
    rst $18                                       ; $4ab3: $df
    db $10                                        ; $4ab4: $10
    ld a, [bc]                                    ; $4ab5: $0a
    ld a, $06                                     ; $4ab6: $3e $06
    rst $18                                       ; $4ab8: $df
    ld [$3e0a], sp                                ; $4ab9: $08 $0a $3e
    nop                                           ; $4abc: $00
    ld bc, $001a                                  ; $4abd: $01 $1a $00
    rst $18                                       ; $4ac0: $df
    ld d, $0a                                     ; $4ac1: $16 $0a
    ld a, [$c298]                                 ; $4ac3: $fa $98 $c2
    ld bc, $001a                                  ; $4ac6: $01 $1a $00
    rst $18                                       ; $4ac9: $df
    ld d, $0a                                     ; $4aca: $16 $0a
    ld de, $0013                                  ; $4acc: $11 $13 $00
    call Call_033_4c89                            ; $4acf: $cd $89 $4c
    ld a, $06                                     ; $4ad2: $3e $06
    rst $18                                       ; $4ad4: $df
    ld a, [bc]                                    ; $4ad5: $0a
    ld a, [bc]                                    ; $4ad6: $0a
    push af                                       ; $4ad7: $f5
    ld a, $0a                                     ; $4ad8: $3e $0a
    rst $18                                       ; $4ada: $df
    inc b                                         ; $4adb: $04
    ld a, [bc]                                    ; $4adc: $0a
    pop af                                        ; $4add: $f1
    rst $18                                       ; $4ade: $df
    ld [de], a                                    ; $4adf: $12
    ld a, [bc]                                    ; $4ae0: $0a
    rst $18                                       ; $4ae1: $df
    inc c                                         ; $4ae2: $0c
    ld a, [bc]                                    ; $4ae3: $0a
    push af                                       ; $4ae4: $f5
    ld a, $05                                     ; $4ae5: $3e $05
    rst $18                                       ; $4ae7: $df
    inc b                                         ; $4ae8: $04
    ld a, [bc]                                    ; $4ae9: $0a
    pop af                                        ; $4aea: $f1
    and a                                         ; $4aeb: $a7
    jp nz, Jump_033_4b91                          ; $4aec: $c2 $91 $4b

    ld de, $0003                                  ; $4aef: $11 $03 $00
    call Call_033_4c89                            ; $4af2: $cd $89 $4c
    ld a, $06                                     ; $4af5: $3e $06
    rst $18                                       ; $4af7: $df
    ld [$3e0a], sp                                ; $4af8: $08 $0a $3e
    ld b, $06                                     ; $4afb: $06 $06
    ld b, b                                       ; $4afd: $40
    rst $18                                       ; $4afe: $df
    inc l                                         ; $4aff: $2c
    ld a, [bc]                                    ; $4b00: $0a
    rst $30                                       ; $4b01: $f7
    nop                                           ; $4b02: $00
    rra                                           ; $4b03: $1f
    jr z, jr_033_4b18                             ; $4b04: $28 $12

    ld a, $00                                     ; $4b06: $3e $00
    ld bc, $0d00                                  ; $4b08: $01 $00 $0d
    ld de, $0d00                                  ; $4b0b: $11 $00 $0d
    rst $18                                       ; $4b0e: $df
    ld [hl+], a                                   ; $4b0f: $22
    ld a, [bc]                                    ; $4b10: $0a
    ld a, $00                                     ; $4b11: $3e $00
    rst $18                                       ; $4b13: $df
    ld e, $0a                                     ; $4b14: $1e $0a
    jr jr_033_4b52                                ; $4b16: $18 $3a

jr_033_4b18:
    ld a, $00                                     ; $4b18: $3e $00
    ld b, $01                                     ; $4b1a: $06 $01
    rst $18                                       ; $4b1c: $df
    ld a, [hl+]                                   ; $4b1d: $2a
    ld a, [bc]                                    ; $4b1e: $0a
    ld a, [$c298]                                 ; $4b1f: $fa $98 $c2
    ld b, $01                                     ; $4b22: $06 $01
    rst $18                                       ; $4b24: $df
    ld a, [hl+]                                   ; $4b25: $2a
    ld a, [bc]                                    ; $4b26: $0a
    ld a, [$c298]                                 ; $4b27: $fa $98 $c2
    ld bc, $0700                                  ; $4b2a: $01 $00 $07
    ld de, $0d00                                  ; $4b2d: $11 $00 $0d
    rst $18                                       ; $4b30: $df
    ld [hl+], a                                   ; $4b31: $22
    ld a, [bc]                                    ; $4b32: $0a
    ld a, $00                                     ; $4b33: $3e $00
    ld bc, $0900                                  ; $4b35: $01 $00 $09
    ld de, $0d00                                  ; $4b38: $11 $00 $0d
    rst $18                                       ; $4b3b: $df
    ld [hl+], a                                   ; $4b3c: $22
    ld a, [bc]                                    ; $4b3d: $0a
    ld a, $00                                     ; $4b3e: $3e $00
    rst $18                                       ; $4b40: $df
    ld e, $0a                                     ; $4b41: $1e $0a
    ld a, $00                                     ; $4b43: $3e $00
    ld b, $00                                     ; $4b45: $06 $00
    rst $18                                       ; $4b47: $df
    ld a, [hl+]                                   ; $4b48: $2a
    ld a, [bc]                                    ; $4b49: $0a
    ld a, [$c298]                                 ; $4b4a: $fa $98 $c2
    ld b, $00                                     ; $4b4d: $06 $00
    rst $18                                       ; $4b4f: $df
    ld a, [hl+]                                   ; $4b50: $2a
    ld a, [bc]                                    ; $4b51: $0a

jr_033_4b52:
    xor a                                         ; $4b52: $af
    ld bc, $1900                                  ; $4b53: $01 $00 $19
    ld de, $0b00                                  ; $4b56: $11 $00 $0b
    rst $18                                       ; $4b59: $df
    jr c, jr_033_4b66                             ; $4b5a: $38 $0a

    ld a, $00                                     ; $4b5c: $3e $00
    ld bc, $1a00                                  ; $4b5e: $01 $00 $1a
    ld de, $0d00                                  ; $4b61: $11 $00 $0d
    rst $18                                       ; $4b64: $df
    ld [hl+], a                                   ; $4b65: $22

jr_033_4b66:
    ld a, [bc]                                    ; $4b66: $0a
    ld a, $00                                     ; $4b67: $3e $00
    rst $18                                       ; $4b69: $df
    ld e, $0a                                     ; $4b6a: $1e $0a
    ldh a, [$95]                                  ; $4b6c: $f0 $95
    ld b, a                                       ; $4b6e: $47
    ld a, $00                                     ; $4b6f: $3e $00
    ld de, $5105                                  ; $4b71: $11 $05 $51
    rst $18                                       ; $4b74: $df
    jr jr_033_4b81                                ; $4b75: $18 $0a

    ldh a, [$95]                                  ; $4b77: $f0 $95
    ld b, a                                       ; $4b79: $47
    ld a, [$c298]                                 ; $4b7a: $fa $98 $c2
    ld de, $5123                                  ; $4b7d: $11 $23 $51
    rst $18                                       ; $4b80: $df

jr_033_4b81:
    jr jr_033_4b8d                                ; $4b81: $18 $0a

    push af                                       ; $4b83: $f5
    ld a, $fa                                     ; $4b84: $3e $fa
    rst $18                                       ; $4b86: $df
    inc b                                         ; $4b87: $04
    ld a, [bc]                                    ; $4b88: $0a
    pop af                                        ; $4b89: $f1
    rst $28                                       ; $4b8a: $ef
    nop                                           ; $4b8b: $00
    rra                                           ; $4b8c: $1f

jr_033_4b8d:
    call Call_033_4f4b                            ; $4b8d: $cd $4b $4f
    ret                                           ; $4b90: $c9


Jump_033_4b91:
    rst $28                                       ; $4b91: $ef
    nop                                           ; $4b92: $00
    rra                                           ; $4b93: $1f
    rst $28                                       ; $4b94: $ef
    ld h, b                                       ; $4b95: $60
    inc e                                         ; $4b96: $1c
    rst $28                                       ; $4b97: $ef
    jr nz, @+$1e                                  ; $4b98: $20 $1c

    ld a, $06                                     ; $4b9a: $3e $06
    rst $18                                       ; $4b9c: $df
    ld [$3e0a], sp                                ; $4b9d: $08 $0a $3e
    ld b, $06                                     ; $4ba0: $06 $06
    ld b, b                                       ; $4ba2: $40
    rst $18                                       ; $4ba3: $df
    inc l                                         ; $4ba4: $2c
    ld a, [bc]                                    ; $4ba5: $0a
    ret                                           ; $4ba6: $c9


    ld a, $02                                     ; $4ba7: $3e $02
    ld bc, $1500                                  ; $4ba9: $01 $00 $15
    ld de, $0d80                                  ; $4bac: $11 $80 $0d
    rst $18                                       ; $4baf: $df
    jr nz, @+$0c                                  ; $4bb0: $20 $0a

    ld a, $03                                     ; $4bb2: $3e $03
    ld bc, $1700                                  ; $4bb4: $01 $00 $17
    ld de, $0d80                                  ; $4bb7: $11 $80 $0d
    rst $18                                       ; $4bba: $df
    jr nz, @+$0c                                  ; $4bbb: $20 $0a

    ld a, $04                                     ; $4bbd: $3e $04
    ld bc, $1b00                                  ; $4bbf: $01 $00 $1b
    ld de, $0d80                                  ; $4bc2: $11 $80 $0d
    rst $18                                       ; $4bc5: $df
    jr nz, @+$0c                                  ; $4bc6: $20 $0a

    ld a, $05                                     ; $4bc8: $3e $05
    ld bc, $1900                                  ; $4bca: $01 $00 $19
    ld de, $0d80                                  ; $4bcd: $11 $80 $0d
    rst $18                                       ; $4bd0: $df
    jr nz, @+$0c                                  ; $4bd1: $20 $0a

    call Call_033_4c94                            ; $4bd3: $cd $94 $4c
    ld de, $0000                                  ; $4bd6: $11 $00 $00
    call Call_033_4c89                            ; $4bd9: $cd $89 $4c
    ld a, $06                                     ; $4bdc: $3e $06
    ld b, $00                                     ; $4bde: $06 $00
    rst $18                                       ; $4be0: $df
    inc l                                         ; $4be1: $2c
    ld a, [bc]                                    ; $4be2: $0a
    rst $30                                       ; $4be3: $f7
    ld b, b                                       ; $4be4: $40
    inc e                                         ; $4be5: $1c
    jr z, jr_033_4bee                             ; $4be6: $28 $06

    ld de, $0015                                  ; $4be8: $11 $15 $00
    call Call_033_4c89                            ; $4beb: $cd $89 $4c

jr_033_4bee:
    ld a, $06                                     ; $4bee: $3e $06
    rst $18                                       ; $4bf0: $df
    ld [$010a], sp                                ; $4bf1: $08 $0a $01
    ld b, b                                       ; $4bf4: $40
    nop                                           ; $4bf5: $00
    rst $18                                       ; $4bf6: $df
    ld [hl], $0a                                  ; $4bf7: $36 $0a
    rst $08                                       ; $4bf9: $cf
    adc d                                         ; $4bfa: $8a
    ld a, $00                                     ; $4bfb: $3e $00
    ld de, $ff80                                  ; $4bfd: $11 $80 $ff
    rst $18                                       ; $4c00: $df
    ld b, b                                       ; $4c01: $40
    ld a, [bc]                                    ; $4c02: $0a
    ld a, $00                                     ; $4c03: $3e $00

Jump_033_4c05:
    rst $18                                       ; $4c05: $df
    ld b, d                                       ; $4c06: $42
    ld a, [bc]                                    ; $4c07: $0a
    xor a                                         ; $4c08: $af
    ld bc, $0900                                  ; $4c09: $01 $00 $09
    ld de, $0b00                                  ; $4c0c: $11 $00 $0b
    rst $18                                       ; $4c0f: $df
    jr c, jr_033_4c1c                             ; $4c10: $38 $0a

    rst $18                                       ; $4c12: $df
    inc a                                         ; $4c13: $3c
    ld a, [bc]                                    ; $4c14: $0a
    push af                                       ; $4c15: $f5
    ld a, $05                                     ; $4c16: $3e $05
    rst $18                                       ; $4c18: $df
    inc b                                         ; $4c19: $04
    ld a, [bc]                                    ; $4c1a: $0a
    pop af                                        ; $4c1b: $f1

jr_033_4c1c:
    ld a, $00                                     ; $4c1c: $3e $00
    ld bc, $0d00                                  ; $4c1e: $01 $00 $0d
    ld de, $0d00                                  ; $4c21: $11 $00 $0d
    rst $18                                       ; $4c24: $df
    ld [hl+], a                                   ; $4c25: $22
    ld a, [bc]                                    ; $4c26: $0a
    ld a, $00                                     ; $4c27: $3e $00
    rst $18                                       ; $4c29: $df
    ld e, $0a                                     ; $4c2a: $1e $0a
    push af                                       ; $4c2c: $f5
    ld a, $05                                     ; $4c2d: $3e $05
    rst $18                                       ; $4c2f: $df
    inc b                                         ; $4c30: $04
    ld a, [bc]                                    ; $4c31: $0a
    pop af                                        ; $4c32: $f1
    ld a, $06                                     ; $4c33: $3e $06
    ld b, $40                                     ; $4c35: $06 $40
    rst $18                                       ; $4c37: $df
    inc l                                         ; $4c38: $2c
    ld a, [bc]                                    ; $4c39: $0a
    ld a, $00                                     ; $4c3a: $3e $00
    ld bc, $0900                                  ; $4c3c: $01 $00 $09
    ld de, $0d00                                  ; $4c3f: $11 $00 $0d
    rst $18                                       ; $4c42: $df
    ld [hl+], a                                   ; $4c43: $22
    ld a, [bc]                                    ; $4c44: $0a
    ld a, $00                                     ; $4c45: $3e $00
    rst $18                                       ; $4c47: $df
    ld e, $0a                                     ; $4c48: $1e $0a
    ld a, $06                                     ; $4c4a: $3e $06
    ld b, a                                       ; $4c4c: $47
    ld a, $00                                     ; $4c4d: $3e $00
    rst $18                                       ; $4c4f: $df
    jr nc, @+$0c                                  ; $4c50: $30 $0a

    call Call_033_48ef                            ; $4c52: $cd $ef $48
    rst $18                                       ; $4c55: $df
    ld [bc], a                                    ; $4c56: $02
    ld a, [bc]                                    ; $4c57: $0a
    ret                                           ; $4c58: $c9


    ld a, $00                                     ; $4c59: $3e $00
    ld b, $c0                                     ; $4c5b: $06 $c0
    rst $18                                       ; $4c5d: $df
    inc l                                         ; $4c5e: $2c
    ld a, [bc]                                    ; $4c5f: $0a
    ld a, $00                                     ; $4c60: $3e $00
    ld b, $c0                                     ; $4c62: $06 $c0
    ld de, $0480                                  ; $4c64: $11 $80 $04
    rst $18                                       ; $4c67: $df
    jr z, @+$0c                                   ; $4c68: $28 $0a

    ld a, $00                                     ; $4c6a: $3e $00
    ld bc, $000b                                  ; $4c6c: $01 $0b $00
    rst $18                                       ; $4c6f: $df
    ld d, $0a                                     ; $4c70: $16 $0a
    push af                                       ; $4c72: $f5
    ld a, $0a                                     ; $4c73: $3e $0a
    rst $18                                       ; $4c75: $df
    inc b                                         ; $4c76: $04
    ld a, [bc]                                    ; $4c77: $0a
    pop af                                        ; $4c78: $f1
    ld a, $00                                     ; $4c79: $3e $00
    ld b, a                                       ; $4c7b: $47
    ld a, $0a                                     ; $4c7c: $3e $0a
    rst $18                                       ; $4c7e: $df
    ld [hl-], a                                   ; $4c7f: $32
    ld a, [bc]                                    ; $4c80: $0a
    push af                                       ; $4c81: $f5
    ld a, $23                                     ; $4c82: $3e $23
    rst $18                                       ; $4c84: $df
    inc b                                         ; $4c85: $04
    ld a, [bc]                                    ; $4c86: $0a
    pop af                                        ; $4c87: $f1
    ret                                           ; $4c88: $c9


Call_033_4c89:
    ld hl, $c4ba                                  ; $4c89: $21 $ba $c4
    ld a, [hl+]                                   ; $4c8c: $2a
    ld h, [hl]                                    ; $4c8d: $66
    ld l, a                                       ; $4c8e: $6f
    add hl, de                                    ; $4c8f: $19
    rst $18                                       ; $4c90: $df
    ld c, $0a                                     ; $4c91: $0e $0a
    ret                                           ; $4c93: $c9


Call_033_4c94:
    ld hl, $c4ba                                  ; $4c94: $21 $ba $c4
    ld a, [$c450]                                 ; $4c97: $fa $50 $c4
    cp $08                                        ; $4c9a: $fe $08
    jr nz, jr_033_4ca5                            ; $4c9c: $20 $07

    ld de, $0c1b                                  ; $4c9e: $11 $1b $0c
    ld a, e                                       ; $4ca1: $7b
    ld [hl+], a                                   ; $4ca2: $22
    ld [hl], d                                    ; $4ca3: $72
    ret                                           ; $4ca4: $c9


jr_033_4ca5:
    ld de, $0893                                  ; $4ca5: $11 $93 $08
    ld a, e                                       ; $4ca8: $7b
    ld [hl+], a                                   ; $4ca9: $22
    ld [hl], d                                    ; $4caa: $72
    ret                                           ; $4cab: $c9


Call_033_4cac:
    ld hl, $c4ba                                  ; $4cac: $21 $ba $c4
    ld a, [hl+]                                   ; $4caf: $2a
    ld h, [hl]                                    ; $4cb0: $66
    ld l, a                                       ; $4cb1: $6f
    ld a, [$c450]                                 ; $4cb2: $fa $50 $c4
    cp $0b                                        ; $4cb5: $fe $0b
    jr nz, jr_033_4cc0                            ; $4cb7: $20 $07

    ld a, $0c                                     ; $4cb9: $3e $0c
    add l                                         ; $4cbb: $85
    ld l, a                                       ; $4cbc: $6f
    jr nc, jr_033_4cc0                            ; $4cbd: $30 $01

    inc h                                         ; $4cbf: $24

jr_033_4cc0:
    ld a, [$c450]                                 ; $4cc0: $fa $50 $c4
    cp $0a                                        ; $4cc3: $fe $0a
    jr nz, jr_033_4cce                            ; $4cc5: $20 $07

    ld a, $06                                     ; $4cc7: $3e $06
    add l                                         ; $4cc9: $85
    ld l, a                                       ; $4cca: $6f
    jr nc, jr_033_4cce                            ; $4ccb: $30 $01

    inc h                                         ; $4ccd: $24

jr_033_4cce:
    rst $30                                       ; $4cce: $f7
    nop                                           ; $4ccf: $00
    ld e, $28                                     ; $4cd0: $1e $28
    ld l, $f7                                     ; $4cd2: $2e $f7
    jr nz, jr_033_4cf4                            ; $4cd4: $20 $1e

    jr z, jr_033_4ce3                             ; $4cd6: $28 $0b

    ld a, $04                                     ; $4cd8: $3e $04
    add l                                         ; $4cda: $85
    ld l, a                                       ; $4cdb: $6f
    jr nc, jr_033_4cdf                            ; $4cdc: $30 $01

    inc h                                         ; $4cde: $24

jr_033_4cdf:
    rst $18                                       ; $4cdf: $df
    ld c, $0a                                     ; $4ce0: $0e $0a
    ret                                           ; $4ce2: $c9


jr_033_4ce3:
    rst $30                                       ; $4ce3: $f7
    ld b, b                                       ; $4ce4: $40
    ld e, $28                                     ; $4ce5: $1e $28
    dec bc                                        ; $4ce7: $0b
    ld a, $03                                     ; $4ce8: $3e $03
    add l                                         ; $4cea: $85
    ld l, a                                       ; $4ceb: $6f
    jr nc, jr_033_4cef                            ; $4cec: $30 $01

    inc h                                         ; $4cee: $24

jr_033_4cef:
    rst $18                                       ; $4cef: $df
    ld c, $0a                                     ; $4cf0: $0e $0a
    ret                                           ; $4cf2: $c9


    rst $30                                       ; $4cf3: $f7

jr_033_4cf4:
    ld h, b                                       ; $4cf4: $60
    ld e, $3e                                     ; $4cf5: $1e $3e
    ld [bc], a                                    ; $4cf7: $02
    add l                                         ; $4cf8: $85
    ld l, a                                       ; $4cf9: $6f
    jr nc, jr_033_4cfd                            ; $4cfa: $30 $01

    inc h                                         ; $4cfc: $24

jr_033_4cfd:
    rst $18                                       ; $4cfd: $df
    ld c, $0a                                     ; $4cfe: $0e $0a
    ret                                           ; $4d00: $c9


    rst $30                                       ; $4d01: $f7
    ld b, b                                       ; $4d02: $40
    inc e                                         ; $4d03: $1c
    jr z, jr_033_4d11                             ; $4d04: $28 $0b

    ld a, $05                                     ; $4d06: $3e $05
    add l                                         ; $4d08: $85
    ld l, a                                       ; $4d09: $6f
    jr nc, jr_033_4d0d                            ; $4d0a: $30 $01

    inc h                                         ; $4d0c: $24

jr_033_4d0d:
    rst $18                                       ; $4d0d: $df
    ld c, $0a                                     ; $4d0e: $0e $0a
    ret                                           ; $4d10: $c9


jr_033_4d11:
    rst $30                                       ; $4d11: $f7
    ld h, b                                       ; $4d12: $60
    inc e                                         ; $4d13: $1c
    jr z, jr_033_4d21                             ; $4d14: $28 $0b

    ld a, $01                                     ; $4d16: $3e $01
    add l                                         ; $4d18: $85
    ld l, a                                       ; $4d19: $6f
    jr nc, jr_033_4d1d                            ; $4d1a: $30 $01

    inc h                                         ; $4d1c: $24

jr_033_4d1d:
    rst $18                                       ; $4d1d: $df
    ld c, $0a                                     ; $4d1e: $0e $0a
    ret                                           ; $4d20: $c9


jr_033_4d21:
    rst $18                                       ; $4d21: $df
    ld c, $0a                                     ; $4d22: $0e $0a
    ret                                           ; $4d24: $c9


Jump_033_4d25:
    ld a, [$c450]                                 ; $4d25: $fa $50 $c4
    cp $0b                                        ; $4d28: $fe $0b
    jr nz, jr_033_4d34                            ; $4d2a: $20 $08

    ld hl, $0c39                                  ; $4d2c: $21 $39 $0c
    rst $18                                       ; $4d2f: $df
    ld c, $0a                                     ; $4d30: $0e $0a
    jr jr_033_4d4e                                ; $4d32: $18 $1a

jr_033_4d34:
    ld a, [$c450]                                 ; $4d34: $fa $50 $c4
    cp $0a                                        ; $4d37: $fe $0a
    jr nz, jr_033_4d43                            ; $4d39: $20 $08

    ld hl, $0c36                                  ; $4d3b: $21 $36 $0c
    rst $18                                       ; $4d3e: $df
    ld c, $0a                                     ; $4d3f: $0e $0a
    jr jr_033_4d4e                                ; $4d41: $18 $0b

jr_033_4d43:
    ld a, [$c450]                                 ; $4d43: $fa $50 $c4
    cp $09                                        ; $4d46: $fe $09
    ld hl, $0c33                                  ; $4d48: $21 $33 $0c
    rst $18                                       ; $4d4b: $df
    ld c, $0a                                     ; $4d4c: $0e $0a

jr_033_4d4e:
    rst $30                                       ; $4d4e: $f7
    jr nz, jr_033_4d6f                            ; $4d4f: $20 $1e

    jr z, jr_033_4d5b                             ; $4d51: $28 $08

    rst $18                                       ; $4d53: $df
    db $10                                        ; $4d54: $10
    ld a, [bc]                                    ; $4d55: $0a
    rst $18                                       ; $4d56: $df
    db $10                                        ; $4d57: $10
    ld a, [bc]                                    ; $4d58: $0a
    jr jr_033_4d63                                ; $4d59: $18 $08

jr_033_4d5b:
    rst $30                                       ; $4d5b: $f7
    ld b, b                                       ; $4d5c: $40
    ld e, $28                                     ; $4d5d: $1e $28
    inc bc                                        ; $4d5f: $03
    rst $18                                       ; $4d60: $df
    db $10                                        ; $4d61: $10
    ld a, [bc]                                    ; $4d62: $0a

jr_033_4d63:
    ld a, $06                                     ; $4d63: $3e $06
    rst $18                                       ; $4d65: $df
    ld [$c90a], sp                                ; $4d66: $08 $0a $c9

Jump_033_4d69:
    ld a, $06                                     ; $4d69: $3e $06
    rst $18                                       ; $4d6b: $df
    ld a, [bc]                                    ; $4d6c: $0a
    ld a, [bc]                                    ; $4d6d: $0a
    push af                                       ; $4d6e: $f5

jr_033_4d6f:
    ld a, $05                                     ; $4d6f: $3e $05
    rst $18                                       ; $4d71: $df
    inc b                                         ; $4d72: $04
    ld a, [bc]                                    ; $4d73: $0a
    pop af                                        ; $4d74: $f1
    rst $18                                       ; $4d75: $df
    ld [de], a                                    ; $4d76: $12
    ld a, [bc]                                    ; $4d77: $0a
    rst $18                                       ; $4d78: $df
    inc c                                         ; $4d79: $0c
    ld a, [bc]                                    ; $4d7a: $0a
    push af                                       ; $4d7b: $f5
    ld a, $05                                     ; $4d7c: $3e $05
    rst $18                                       ; $4d7e: $df
    inc b                                         ; $4d7f: $04
    ld a, [bc]                                    ; $4d80: $0a
    pop af                                        ; $4d81: $f1
    and a                                         ; $4d82: $a7
    jr z, jr_033_4d88                             ; $4d83: $28 $03

    rst $18                                       ; $4d85: $df
    db $10                                        ; $4d86: $10
    ld a, [bc]                                    ; $4d87: $0a

jr_033_4d88:
    ld a, $06                                     ; $4d88: $3e $06
    rst $18                                       ; $4d8a: $df
    ld [$c90a], sp                                ; $4d8b: $08 $0a $c9

jr_033_4d8e:
    rst $18                                       ; $4d8e: $df
    ld c, $0a                                     ; $4d8f: $0e $0a
    ld a, $06                                     ; $4d91: $3e $06
    rst $18                                       ; $4d93: $df
    ld [$c90a], sp                                ; $4d94: $08 $0a $c9

Jump_033_4d97:
    rst $30                                       ; $4d97: $f7
    jr nz, jr_033_4db8                            ; $4d98: $20 $1e

    jr z, jr_033_4da4                             ; $4d9a: $28 $08

    ld hl, $0883                                  ; $4d9c: $21 $83 $08
    rst $18                                       ; $4d9f: $df
    ld c, $0a                                     ; $4da0: $0e $0a
    jr jr_033_4d8e                                ; $4da2: $18 $ea

jr_033_4da4:
    rst $30                                       ; $4da4: $f7
    ld b, b                                       ; $4da5: $40
    ld e, $28                                     ; $4da6: $1e $28
    add hl, bc                                    ; $4da8: $09
    ld hl, $0880                                  ; $4da9: $21 $80 $08
    rst $18                                       ; $4dac: $df
    ld c, $0a                                     ; $4dad: $0e $0a
    jp Jump_033_4d69                              ; $4daf: $c3 $69 $4d


    ld hl, $0884                                  ; $4db2: $21 $84 $08
    rst $18                                       ; $4db5: $df
    ld c, $0a                                     ; $4db6: $0e $0a

jr_033_4db8:
    ld a, $06                                     ; $4db8: $3e $06
    rst $18                                       ; $4dba: $df
    ld [$c90a], sp                                ; $4dbb: $08 $0a $c9

Call_033_4dbe:
    rst $30                                       ; $4dbe: $f7

    db $00, $12

    jp nz, Jump_033_4dd9                          ; $4dc1: $c2 $d9 $4d

    rst $30                                       ; $4dc4: $f7

    db $20, $12

    jp nz, Jump_033_4dd9                          ; $4dc7: $c2 $d9 $4d

    rst $30                                       ; $4dca: $f7

    db $40, $12

    jp nz, Jump_033_4dd9                          ; $4dcd: $c2 $d9 $4d

    rst $30                                       ; $4dd0: $f7

    db $60, $12

    jp nz, Jump_033_4dd9                          ; $4dd3: $c2 $d9 $4d

    ld a, $00                                     ; $4dd6: $3e $00
    ret                                           ; $4dd8: $c9


Jump_033_4dd9:
    ld a, $01                                     ; $4dd9: $3e $01
    ret                                           ; $4ddb: $c9


Call_033_4ddc:
    ld a, [$c450]                                 ; $4ddc: $fa $50 $c4
    cp $0b                                        ; $4ddf: $fe $0b
    jr nz, jr_033_4de7                            ; $4de1: $20 $04

    ld a, $04                                     ; $4de3: $3e $04
    jr jr_033_4dfb                                ; $4de5: $18 $14

jr_033_4de7:
    cp $0a                                        ; $4de7: $fe $0a
    jr nz, jr_033_4def                            ; $4de9: $20 $04

    ld a, $03                                     ; $4deb: $3e $03
    jr jr_033_4dfb                                ; $4ded: $18 $0c

jr_033_4def:
    cp $09                                        ; $4def: $fe $09
    jr nz, jr_033_4df7                            ; $4df1: $20 $04

    ld a, $02                                     ; $4df3: $3e $02
    jr jr_033_4dfb                                ; $4df5: $18 $04

jr_033_4df7:
    cp $08                                        ; $4df7: $fe $08
    ld a, $01                                     ; $4df9: $3e $01

jr_033_4dfb:
    rst $18                                       ; $4dfb: $df
    ld e, d                                       ; $4dfc: $5a
    dec b                                         ; $4dfd: $05
    ret                                           ; $4dfe: $c9


Call_033_4dff:
    ld de, $0000                                  ; $4dff: $11 $00 $00
    call Call_033_4e8c                            ; $4e02: $cd $8c $4e
    rst $18                                       ; $4e05: $df

    db $12, $0a

    rst $18                                       ; $4e08: $df

    db $0c, $0a

    push af                                       ; $4e0b: $f5
    ld a, $05                                     ; $4e0c: $3e $05
    rst $18                                       ; $4e0e: $df

    db $04, $0a

    pop af                                        ; $4e11: $f1
    and a                                         ; $4e12: $a7
    jr z, jr_033_4e1c                             ; $4e13: $28 $07

    ld de, $0001                                  ; $4e15: $11 $01 $00
    call Call_033_4e74                            ; $4e18: $cd $74 $4e
    ret                                           ; $4e1b: $c9


jr_033_4e1c:
    ld c, $08                                     ; $4e1c: $0e $08
    call Call_000_25a1                            ; $4e1e: $cd $a1 $25
    call Call_000_2625                            ; $4e21: $cd $25 $26
    ld a, [$c4bc]                                 ; $4e24: $fa $bc $c4
    sub $0c                                       ; $4e27: $d6 $0c
    rst $18                                       ; $4e29: $df

    db $00, $3f

    ld a, $fa                                     ; $4e2c: $3e $fa
    ld [$c441], a                                 ; $4e2e: $ea $41 $c4
    ld a, $fa                                     ; $4e31: $3e $fa
    ld [$c46a], a                                 ; $4e33: $ea $6a $c4
    ld hl, $c2a0                                  ; $4e36: $21 $a0 $c2
    ld de, $c466                                  ; $4e39: $11 $66 $c4
    ld bc, $0004                                  ; $4e3c: $01 $04 $00
    call MemCopy                            ; $4e3f: $cd $d3 $03
    ld a, [$c2a4]                                 ; $4e42: $fa $a4 $c2
    ld [$c465], a                                 ; $4e45: $ea $65 $c4
    ret                                           ; $4e48: $c9


    ld c, $08                                     ; $4e49: $0e $08
    call Call_000_25af                            ; $4e4b: $cd $af $25
    call Call_000_2625                            ; $4e4e: $cd $25 $26
    ld hl, $087d                                  ; $4e51: $21 $7d $08
    rst $18                                       ; $4e54: $df
    ld c, $0a                                     ; $4e55: $0e $0a
    ld a, [$c4bc]                                 ; $4e57: $fa $bc $c4
    rst $18                                       ; $4e5a: $df
    ld a, [bc]                                    ; $4e5b: $0a
    ld a, [bc]                                    ; $4e5c: $0a
    push af                                       ; $4e5d: $f5
    ld a, $05                                     ; $4e5e: $3e $05
    rst $18                                       ; $4e60: $df
    inc b                                         ; $4e61: $04
    ld a, [bc]                                    ; $4e62: $0a
    pop af                                        ; $4e63: $f1
    rst $18                                       ; $4e64: $df
    ld [de], a                                    ; $4e65: $12
    ld a, [bc]                                    ; $4e66: $0a
    rst $18                                       ; $4e67: $df
    inc c                                         ; $4e68: $0c
    ld a, [bc]                                    ; $4e69: $0a
    push af                                       ; $4e6a: $f5
    ld a, $05                                     ; $4e6b: $3e $05
    rst $18                                       ; $4e6d: $df
    inc b                                         ; $4e6e: $04
    ld a, [bc]                                    ; $4e6f: $0a
    pop af                                        ; $4e70: $f1
    and a                                         ; $4e71: $a7
    jr z, jr_033_4e1c                             ; $4e72: $28 $a8

Call_033_4e74:
    ld hl, $c4ba                                  ; $4e74: $21 $ba $c4
    ld a, [hl+]                                   ; $4e77: $2a
    ld h, [hl]                                    ; $4e78: $66
    ld l, a                                       ; $4e79: $6f
    add hl, de                                    ; $4e7a: $19
    rst $18                                       ; $4e7b: $df

    db $0e, $0a

    ld a, [$c4bc]                                 ; $4e7e: $fa $bc $c4
    rst $18                                       ; $4e81: $df

    db $08, $0a

    push af                                       ; $4e84: $f5
    ld a, $0a                                     ; $4e85: $3e $0a
    rst $18                                       ; $4e87: $df

    db $04, $0a

    pop af                                        ; $4e8a: $f1
    ret                                           ; $4e8b: $c9


Call_033_4e8c:
    ld hl, $c4ba                                  ; $4e8c: $21 $ba $c4
    ld a, [hl+]                                   ; $4e8f: $2a
    ld h, [hl]                                    ; $4e90: $66
    ld l, a                                       ; $4e91: $6f
    add hl, de                                    ; $4e92: $19
    rst $18                                       ; $4e93: $df

    db $0e, $0a

    ld a, [$c4bc]                                 ; $4e96: $fa $bc $c4
    rst $18                                       ; $4e99: $df

    db $0a, $0a

    push af                                       ; $4e9c: $f5
    ld a, $05                                     ; $4e9d: $3e $05
    rst $18                                       ; $4e9f: $df

    db $04, $0a

    pop af                                        ; $4ea2: $f1
    ret                                           ; $4ea3: $c9


    ld bc, $0d0a                                  ; $4ea4: $01 $0a $0d
    ld c, $06                                     ; $4ea7: $0e $06
    nop                                           ; $4ea9: $00
    dec c                                         ; $4eaa: $0d
    dec de                                        ; $4eab: $1b
    ld bc, $0700                                  ; $4eac: $01 $00 $07
    ld b, b                                       ; $4eaf: $40
    nop                                           ; $4eb0: $00
    ld [bc], a                                    ; $4eb1: $02
    ld [bc], a                                    ; $4eb2: $02
    ld bc, $0732                                  ; $4eb3: $01 $32 $07
    ret nz                                        ; $4eb6: $c0

    nop                                           ; $4eb7: $00
    ld [bc], a                                    ; $4eb8: $02
    ld bc, $021e                                  ; $4eb9: $01 $1e $02
    ld bc, $073c                                  ; $4ebc: $01 $3c $07
    ld b, b                                       ; $4ebf: $40
    ld b, b                                       ; $4ec0: $40
    ld bc, $0102                                  ; $4ec1: $01 $02 $01
    ld [hl-], a                                   ; $4ec4: $32
    rlca                                          ; $4ec5: $07
    ret nz                                        ; $4ec6: $c0

    ld b, b                                       ; $4ec7: $40
    ld bc, $1e01                                  ; $4ec8: $01 $01 $1e
    ld [bc], a                                    ; $4ecb: $02
    ld bc, $0c5a                                  ; $4ecc: $01 $5a $0c
    rst $18                                       ; $4ecf: $df
    rst $38                                       ; $4ed0: $ff

    db $01, $32, $0d, $0e, $06, $00, $0d, $1b, $01, $00, $07, $c0, $00, $02, $02, $01
    db $64, $07, $40, $00, $02, $02, $01, $32, $07, $c0, $00, $02, $01, $1e, $02, $01
    db $50, $07, $40, $40, $01, $02, $01, $32, $07, $c0, $40, $01, $01, $1e, $02

    ld bc, $0c5a                                  ; $4f00: $01 $5a $0c
    rst $18                                       ; $4f03: $df
    rst $38                                       ; $4f04: $ff

Call_033_4f05:
    ld a, $0a                                     ; $4f05: $3e $0a
    ld [$c967], a                                 ; $4f07: $ea $67 $c9
    rst $18                                       ; $4f0a: $df
    inc e                                         ; $4f0b: $1c
    db $10                                        ; $4f0c: $10
    ld a, $01                                     ; $4f0d: $3e $01
    ld [$c834], a                                 ; $4f0f: $ea $34 $c8
    ld bc, $8000                                  ; $4f12: $01 $00 $80
    rst $18                                       ; $4f15: $df
    ld e, $02                                     ; $4f16: $1e $02
    ld bc, $ff01                                  ; $4f18: $01 $01 $ff
    rst $18                                       ; $4f1b: $df
    ld e, $02                                     ; $4f1c: $1e $02
    call Call_033_4f96                            ; $4f1e: $cd $96 $4f
    call Call_033_66cb                            ; $4f21: $cd $cb $66
    rst $18                                       ; $4f24: $df
    jr nc, @+$12                                  ; $4f25: $30 $10

    ret                                           ; $4f27: $c9


Call_033_4f28:
    ld a, $14                                     ; $4f28: $3e $14
    ld [$c967], a                                 ; $4f2a: $ea $67 $c9
    rst $18                                       ; $4f2d: $df
    inc e                                         ; $4f2e: $1c
    db $10                                        ; $4f2f: $10
    ld a, $03                                     ; $4f30: $3e $03
    ld [$c834], a                                 ; $4f32: $ea $34 $c8
    ld bc, $8000                                  ; $4f35: $01 $00 $80
    rst $18                                       ; $4f38: $df
    ld e, $02                                     ; $4f39: $1e $02
    ld bc, $ff01                                  ; $4f3b: $01 $01 $ff
    rst $18                                       ; $4f3e: $df
    ld e, $02                                     ; $4f3f: $1e $02
    call Call_033_4f96                            ; $4f41: $cd $96 $4f
    call Call_033_66cb                            ; $4f44: $cd $cb $66
    rst $18                                       ; $4f47: $df
    jr nc, @+$12                                  ; $4f48: $30 $10

    ret                                           ; $4f4a: $c9


Call_033_4f4b:
    ld a, $1e                                     ; $4f4b: $3e $1e
    ld [$c967], a                                 ; $4f4d: $ea $67 $c9
    rst $18                                       ; $4f50: $df
    inc e                                         ; $4f51: $1c
    db $10                                        ; $4f52: $10
    ld a, $02                                     ; $4f53: $3e $02
    ld [$c834], a                                 ; $4f55: $ea $34 $c8
    call Call_033_4f6b                            ; $4f58: $cd $6b $4f
    ld bc, $8000                                  ; $4f5b: $01 $00 $80
    rst $18                                       ; $4f5e: $df
    ld e, $02                                     ; $4f5f: $1e $02
    call Call_033_4f96                            ; $4f61: $cd $96 $4f
    call Call_033_66cb                            ; $4f64: $cd $cb $66
    rst $18                                       ; $4f67: $df
    jr nc, jr_033_4f7a                            ; $4f68: $30 $10

    ret                                           ; $4f6a: $c9


Call_033_4f6b:
    rst $30                                       ; $4f6b: $f7
    nop                                           ; $4f6c: $00
    ld [de], a                                    ; $4f6d: $12
    jr z, jr_033_4f77                             ; $4f6e: $28 $07

    ld bc, $0401                                  ; $4f70: $01 $01 $04
    rst $18                                       ; $4f73: $df
    ld e, $02                                     ; $4f74: $1e $02
    ret                                           ; $4f76: $c9


jr_033_4f77:
    rst $30                                       ; $4f77: $f7
    jr nz, jr_033_4f8c                            ; $4f78: $20 $12

jr_033_4f7a:
    jr z, jr_033_4f83                             ; $4f7a: $28 $07

    ld bc, $0501                                  ; $4f7c: $01 $01 $05
    rst $18                                       ; $4f7f: $df
    ld e, $02                                     ; $4f80: $1e $02
    ret                                           ; $4f82: $c9


jr_033_4f83:
    rst $30                                       ; $4f83: $f7
    ld b, b                                       ; $4f84: $40
    ld [de], a                                    ; $4f85: $12
    jr z, jr_033_4f8f                             ; $4f86: $28 $07

    ld bc, $0601                                  ; $4f88: $01 $01 $06
    rst $18                                       ; $4f8b: $df

jr_033_4f8c:
    ld e, $02                                     ; $4f8c: $1e $02
    ret                                           ; $4f8e: $c9


jr_033_4f8f:
    ld bc, $0701                                  ; $4f8f: $01 $01 $07
    rst $18                                       ; $4f92: $df
    ld e, $02                                     ; $4f93: $1e $02
    ret                                           ; $4f95: $c9


Call_033_4f96:
    ld a, [$c450]                                 ; $4f96: $fa $50 $c4
    cp $0b                                        ; $4f99: $fe $0b
    jr nz, jr_033_4fad                            ; $4f9b: $20 $10

    ld a, $0b                                     ; $4f9d: $3e $0b
    ld b, a                                       ; $4f9f: $47
    ld a, $06                                     ; $4fa0: $3e $06
    ld c, a                                       ; $4fa2: $4f
    rst $18                                       ; $4fa3: $df
    ld c, [hl]                                    ; $4fa4: $4e
    ld a, [bc]                                    ; $4fa5: $0a
    ld hl, $0401                                  ; $4fa6: $21 $01 $04
    rst $18                                       ; $4fa9: $df
    db $10                                        ; $4faa: $10
    db $10                                        ; $4fab: $10
    ret                                           ; $4fac: $c9


jr_033_4fad:
    cp $0a                                        ; $4fad: $fe $0a
    jr nz, jr_033_4fc1                            ; $4faf: $20 $10

    ld a, $0a                                     ; $4fb1: $3e $0a
    ld b, a                                       ; $4fb3: $47
    ld a, $06                                     ; $4fb4: $3e $06
    ld c, a                                       ; $4fb6: $4f
    rst $18                                       ; $4fb7: $df
    ld c, [hl]                                    ; $4fb8: $4e
    ld a, [bc]                                    ; $4fb9: $0a
    ld hl, $0301                                  ; $4fba: $21 $01 $03
    rst $18                                       ; $4fbd: $df
    db $10                                        ; $4fbe: $10
    db $10                                        ; $4fbf: $10
    ret                                           ; $4fc0: $c9


jr_033_4fc1:
    cp $09                                        ; $4fc1: $fe $09
    jr nz, jr_033_4fd5                            ; $4fc3: $20 $10

    ld a, $09                                     ; $4fc5: $3e $09
    ld b, a                                       ; $4fc7: $47
    ld a, $06                                     ; $4fc8: $3e $06
    ld c, a                                       ; $4fca: $4f
    rst $18                                       ; $4fcb: $df
    ld c, [hl]                                    ; $4fcc: $4e
    ld a, [bc]                                    ; $4fcd: $0a
    ld hl, $0201                                  ; $4fce: $21 $01 $02
    rst $18                                       ; $4fd1: $df
    db $10                                        ; $4fd2: $10
    db $10                                        ; $4fd3: $10
    ret                                           ; $4fd4: $c9


jr_033_4fd5:
    ld a, $08                                     ; $4fd5: $3e $08
    ld b, a                                       ; $4fd7: $47
    ld a, $06                                     ; $4fd8: $3e $06
    ld c, a                                       ; $4fda: $4f
    rst $18                                       ; $4fdb: $df
    ld c, [hl]                                    ; $4fdc: $4e
    ld a, [bc]                                    ; $4fdd: $0a
    ld hl, $0101                                  ; $4fde: $21 $01 $01
    rst $18                                       ; $4fe1: $df
    db $10                                        ; $4fe2: $10
    db $10                                        ; $4fe3: $10
    ret                                           ; $4fe4: $c9


Call_033_4fe5:
    call Call_033_4dbe                            ; $4fe5: $cd $be $4d
    cp $00                                        ; $4fe8: $fe $00
    jr nz, jr_033_4fef                            ; $4fea: $20 $03

    ld a, $00                                     ; $4fec: $3e $00
    ret                                           ; $4fee: $c9


jr_033_4fef:
    ld hl, $0c42                                  ; $4fef: $21 $42 $0c
    call Call_033_506f                            ; $4ff2: $cd $6f $50
    ld a, [$c298]                                 ; $4ff5: $fa $98 $c2
    rst $18                                       ; $4ff8: $df
    ld a, [bc]                                    ; $4ff9: $0a
    ld a, [bc]                                    ; $4ffa: $0a
    ld a, [$c298]                                 ; $4ffb: $fa $98 $c2
    ld b, a                                       ; $4ffe: $47
    ld a, $00                                     ; $4fff: $3e $00
    rst $18                                       ; $5001: $df
    ld l, $0a                                     ; $5002: $2e $0a
    rst $18                                       ; $5004: $df
    ld [de], a                                    ; $5005: $12
    ld a, [bc]                                    ; $5006: $0a
    rst $18                                       ; $5007: $df
    inc c                                         ; $5008: $0c
    ld a, [bc]                                    ; $5009: $0a
    push af                                       ; $500a: $f5
    ld a, $05                                     ; $500b: $3e $05
    rst $18                                       ; $500d: $df
    inc b                                         ; $500e: $04
    ld a, [bc]                                    ; $500f: $0a
    pop af                                        ; $5010: $f1
    and a                                         ; $5011: $a7
    jr nz, jr_033_5058                            ; $5012: $20 $44

    ld hl, $0c4a                                  ; $5014: $21 $4a $0c
    call Call_033_506f                            ; $5017: $cd $6f $50
    ld a, [$c298]                                 ; $501a: $fa $98 $c2
    rst $18                                       ; $501d: $df
    ld [$fa0a], sp                                ; $501e: $08 $0a $fa
    sbc b                                         ; $5021: $98
    jp nz, Jump_000_1adf                          ; $5022: $c2 $df $1a

    ld a, [bc]                                    ; $5025: $0a
    ld a, [$c298]                                 ; $5026: $fa $98 $c2
    ld b, $80                                     ; $5029: $06 $80
    ld de, $0600                                  ; $502b: $11 $00 $06
    rst $18                                       ; $502e: $df
    jr z, @+$0c                                   ; $502f: $28 $0a

    push af                                       ; $5031: $f5
    ld a, $1e                                     ; $5032: $3e $1e
    rst $18                                       ; $5034: $df
    inc b                                         ; $5035: $04
    ld a, [bc]                                    ; $5036: $0a
    pop af                                        ; $5037: $f1
    ld c, $08                                     ; $5038: $0e $08
    call Call_000_25a1                            ; $503a: $cd $a1 $25
    call Call_000_2625                            ; $503d: $cd $25 $26
    call Call_033_50a6                            ; $5040: $cd $a6 $50
    ld a, [$c298]                                 ; $5043: $fa $98 $c2
    rst $18                                       ; $5046: $df
    ld a, [de]                                    ; $5047: $1a
    ld a, [bc]                                    ; $5048: $0a
    ld a, [$c298]                                 ; $5049: $fa $98 $c2
    ld bc, $3f00                                  ; $504c: $01 $00 $3f
    ld de, $3f00                                  ; $504f: $11 $00 $3f
    rst $18                                       ; $5052: $df
    jr nz, @+$0c                                  ; $5053: $20 $0a

    ld a, $00                                     ; $5055: $3e $00
    ret                                           ; $5057: $c9


jr_033_5058:
    ld a, [$c28a]                                 ; $5058: $fa $8a $c2
    add $80                                       ; $505b: $c6 $80
    ld b, a                                       ; $505d: $47
    ld a, $00                                     ; $505e: $3e $00
    ld b, b                                       ; $5060: $40
    ld de, $0100                                  ; $5061: $11 $00 $01
    rst $18                                       ; $5064: $df
    jr z, jr_033_5071                             ; $5065: $28 $0a

    ld a, $00                                     ; $5067: $3e $00
    rst $18                                       ; $5069: $df
    ld e, $0a                                     ; $506a: $1e $0a
    ld a, $01                                     ; $506c: $3e $01
    ret                                           ; $506e: $c9


Call_033_506f:
    rst $30                                       ; $506f: $f7
    nop                                           ; $5070: $00

jr_033_5071:
    ld [de], a                                    ; $5071: $12
    jp z, Jump_033_5079                           ; $5072: $ca $79 $50

    ld a, $00                                     ; $5075: $3e $00
    jr jr_033_509a                                ; $5077: $18 $21

Jump_033_5079:
    rst $30                                       ; $5079: $f7
    jr nz, jr_033_508e                            ; $507a: $20 $12

    jp z, Jump_033_5083                           ; $507c: $ca $83 $50

    ld a, $01                                     ; $507f: $3e $01
    jr jr_033_509a                                ; $5081: $18 $17

Jump_033_5083:
    rst $30                                       ; $5083: $f7
    ld b, b                                       ; $5084: $40
    ld [de], a                                    ; $5085: $12
    jp z, Jump_033_508d                           ; $5086: $ca $8d $50

    ld a, $02                                     ; $5089: $3e $02
    jr jr_033_509a                                ; $508b: $18 $0d

Jump_033_508d:
    rst $30                                       ; $508d: $f7

jr_033_508e:
    ld h, b                                       ; $508e: $60
    ld [de], a                                    ; $508f: $12
    jp z, Jump_033_5097                           ; $5090: $ca $97 $50

    ld a, $03                                     ; $5093: $3e $03
    jr jr_033_509a                                ; $5095: $18 $03

Jump_033_5097:
    ld a, $05                                     ; $5097: $3e $05
    ret                                           ; $5099: $c9


jr_033_509a:
    ld [$c4bc], a                                 ; $509a: $ea $bc $c4
    add l                                         ; $509d: $85
    ld l, a                                       ; $509e: $6f
    jr nc, jr_033_50a2                            ; $509f: $30 $01

    inc h                                         ; $50a1: $24

jr_033_50a2:
    rst $18                                       ; $50a2: $df
    ld c, $0a                                     ; $50a3: $0e $0a
    ret                                           ; $50a5: $c9


Call_033_50a6:
    ld de, $0090                                  ; $50a6: $11 $90 $00
    ld a, [$c4bc]                                 ; $50a9: $fa $bc $c4
    ld h, $00                                     ; $50ac: $26 $00
    ld l, a                                       ; $50ae: $6f
    add hl, de                                    ; $50af: $19
    add hl, hl                                    ; $50b0: $29
    add hl, hl                                    ; $50b1: $29
    add hl, hl                                    ; $50b2: $29
    add hl, hl                                    ; $50b3: $29
    add hl, hl                                    ; $50b4: $29
    ld e, l                                       ; $50b5: $5d
    ld d, h                                       ; $50b6: $54
    call Call_000_2d49                            ; $50b7: $cd $49 $2d
    ret                                           ; $50ba: $c9


Jump_033_50bb:
    xor a                                         ; $50bb: $af
    ld bc, $1900                                  ; $50bc: $01 $00 $19
    ld de, $0b00                                  ; $50bf: $11 $00 $0b
    rst $18                                       ; $50c2: $df
    jr c, jr_033_50cf                             ; $50c3: $38 $0a

    ld a, $00                                     ; $50c5: $3e $00
    ld bc, $1a00                                  ; $50c7: $01 $00 $1a
    ld de, $0d80                                  ; $50ca: $11 $80 $0d
    rst $18                                       ; $50cd: $df
    ld [hl+], a                                   ; $50ce: $22

jr_033_50cf:
    ld a, [bc]                                    ; $50cf: $0a
    ld a, $00                                     ; $50d0: $3e $00
    rst $18                                       ; $50d2: $df
    ld e, $0a                                     ; $50d3: $1e $0a
    ldh a, [$95]                                  ; $50d5: $f0 $95
    ld b, a                                       ; $50d7: $47
    ld a, $00                                     ; $50d8: $3e $00
    ld de, $5105                                  ; $50da: $11 $05 $51
    rst $18                                       ; $50dd: $df
    jr jr_033_50ea                                ; $50de: $18 $0a

    ldh a, [$95]                                  ; $50e0: $f0 $95
    ld b, a                                       ; $50e2: $47
    ld a, [$c298]                                 ; $50e3: $fa $98 $c2
    ld de, $5105                                  ; $50e6: $11 $05 $51
    rst $18                                       ; $50e9: $df

jr_033_50ea:
    jr jr_033_50f6                                ; $50ea: $18 $0a

    push af                                       ; $50ec: $f5
    ld a, $c8                                     ; $50ed: $3e $c8
    rst $18                                       ; $50ef: $df
    inc b                                         ; $50f0: $04
    ld a, [bc]                                    ; $50f1: $0a
    pop af                                        ; $50f2: $f1
    rst $30                                       ; $50f3: $f7
    jr nz, jr_033_5112                            ; $50f4: $20 $1c

jr_033_50f6:
    jr z, jr_033_50fc                             ; $50f6: $28 $04

    call Call_033_4f4b                            ; $50f8: $cd $4b $4f
    ret                                           ; $50fb: $c9


jr_033_50fc:
    call Call_033_4f28                            ; $50fc: $cd $28 $4f
    ld c, $04                                     ; $50ff: $0e $04
    call Call_000_25a1                            ; $5101: $cd $a1 $25
    ret                                           ; $5104: $c9


    dec c                                         ; $5105: $0d
    ld c, $08                                     ; $5106: $0e $08
    nop                                           ; $5108: $00
    inc b                                         ; $5109: $04
    nop                                           ; $510a: $00
    dec de                                        ; $510b: $1b
    nop                                           ; $510c: $00
    dec c                                         ; $510d: $0d
    ld [bc], a                                    ; $510e: $02
    rlca                                          ; $510f: $07
    ret nz                                        ; $5110: $c0

    add b                                         ; $5111: $80

jr_033_5112:
    ld [bc], a                                    ; $5112: $02
    ld [bc], a                                    ; $5113: $02
    rlca                                          ; $5114: $07
    ret nz                                        ; $5115: $c0

    ld b, b                                       ; $5116: $40
    ld [bc], a                                    ; $5117: $02
    db $10                                        ; $5118: $10
    ld a, [bc]                                    ; $5119: $0a
    ld [bc], a                                    ; $511a: $02
    inc bc                                        ; $511b: $03
    nop                                           ; $511c: $00
    dec de                                        ; $511d: $1b
    nop                                           ; $511e: $00
    ld hl, $0201                                  ; $511f: $21 $01 $02
    nop                                           ; $5122: $00
    dec c                                         ; $5123: $0d
    ld c, $08                                     ; $5124: $0e $08
    nop                                           ; $5126: $00
    inc b                                         ; $5127: $04
    nop                                           ; $5128: $00
    dec de                                        ; $5129: $1b
    nop                                           ; $512a: $00
    dec c                                         ; $512b: $0d
    ld [bc], a                                    ; $512c: $02
    rlca                                          ; $512d: $07
    ret nz                                        ; $512e: $c0

    add b                                         ; $512f: $80
    ld [bc], a                                    ; $5130: $02
    ld [bc], a                                    ; $5131: $02
    rlca                                          ; $5132: $07
    ret nz                                        ; $5133: $c0

    ld b, b                                       ; $5134: $40
    ld [bc], a                                    ; $5135: $02
    ld [bc], a                                    ; $5136: $02
    nop                                           ; $5137: $00

Call_033_5138:
    ld a, [$c46a]                                 ; $5138: $fa $6a $c4
    cp $fa                                        ; $513b: $fe $fa
    jr z, jr_033_5165                             ; $513d: $28 $26

    ld a, $00                                     ; $513f: $3e $00
    ld bc, $0900                                  ; $5141: $01 $00 $09
    ld de, $0d00                                  ; $5144: $11 $00 $0d
    rst $18                                       ; $5147: $df
    jr nz, jr_033_5154                            ; $5148: $20 $0a

    ld a, [$c298]                                 ; $514a: $fa $98 $c2
    ld bc, $0900                                  ; $514d: $01 $00 $09
    ld de, $0f00                                  ; $5150: $11 $00 $0f
    rst $18                                       ; $5153: $df

jr_033_5154:
    jr nz, jr_033_5160                            ; $5154: $20 $0a

    ld a, $00                                     ; $5156: $3e $00
    ld b, $c0                                     ; $5158: $06 $c0
    rst $18                                       ; $515a: $df
    inc l                                         ; $515b: $2c
    ld a, [bc]                                    ; $515c: $0a
    ld a, [$c298]                                 ; $515d: $fa $98 $c2

jr_033_5160:
    ld b, $c0                                     ; $5160: $06 $c0
    rst $18                                       ; $5162: $df
    inc l                                         ; $5163: $2c
    ld a, [bc]                                    ; $5164: $0a

jr_033_5165:
    ret                                           ; $5165: $c9


Call_033_5166:
Jump_033_5166:
    rst $30                                       ; $5166: $f7
    ld b, b                                       ; $5167: $40
    inc e                                         ; $5168: $1c
    jp nz, Jump_033_54ca                          ; $5169: $c2 $ca $54

    ld de, $0004                                  ; $516c: $11 $04 $00
    call Call_033_4c89                            ; $516f: $cd $89 $4c
    call Call_033_4ddc                            ; $5172: $cd $dc $4d
    ld a, $06                                     ; $5175: $3e $06
    rst $18                                       ; $5177: $df
    ld [$f50a], sp                                ; $5178: $08 $0a $f5
    ld a, $14                                     ; $517b: $3e $14
    rst $18                                       ; $517d: $df
    inc b                                         ; $517e: $04
    ld a, [bc]                                    ; $517f: $0a
    pop af                                        ; $5180: $f1
    ld hl, $0892                                  ; $5181: $21 $92 $08
    ld de, $0501                                  ; $5184: $11 $01 $05
    rst $18                                       ; $5187: $df
    ld b, h                                       ; $5188: $44
    ld a, [bc]                                    ; $5189: $0a
    cp $ff                                        ; $518a: $fe $ff
    jr z, jr_033_519b                             ; $518c: $28 $0d

    cp $00                                        ; $518e: $fe $00
    jr z, jr_033_51a7                             ; $5190: $28 $15

    cp $01                                        ; $5192: $fe $01
    jr z, jr_033_51db                             ; $5194: $28 $45

    cp $02                                        ; $5196: $fe $02
    jr z, jr_033_519b                             ; $5198: $28 $01

    ret                                           ; $519a: $c9


jr_033_519b:
    ld de, $0005                                  ; $519b: $11 $05 $00
    call Call_033_4c89                            ; $519e: $cd $89 $4c
    ld a, $06                                     ; $51a1: $3e $06
    rst $18                                       ; $51a3: $df
    ld [$c90a], sp                                ; $51a4: $08 $0a $c9

jr_033_51a7:
    rst $28                                       ; $51a7: $ef
    nop                                           ; $51a8: $00
    inc e                                         ; $51a9: $1c
    rst $30                                       ; $51aa: $f7
    ld h, b                                       ; $51ab: $60
    inc e                                         ; $51ac: $1c
    jp nz, Jump_033_51cc                          ; $51ad: $c2 $cc $51

    ld de, $0007                                  ; $51b0: $11 $07 $00
    call Call_033_4c89                            ; $51b3: $cd $89 $4c
    call Call_033_4ddc                            ; $51b6: $cd $dc $4d
    ld a, $06                                     ; $51b9: $3e $06
    rst $18                                       ; $51bb: $df
    ld [$3e0a], sp                                ; $51bc: $08 $0a $3e
    nop                                           ; $51bf: $00
    ld b, a                                       ; $51c0: $47
    ld a, $07                                     ; $51c1: $3e $07
    rst $18                                       ; $51c3: $df
    ld [hl-], a                                   ; $51c4: $32
    ld a, [bc]                                    ; $51c5: $0a
    ld a, $00                                     ; $51c6: $3e $00
    rst $18                                       ; $51c8: $df
    inc [hl]                                      ; $51c9: $34
    ld a, [bc]                                    ; $51ca: $0a
    ret                                           ; $51cb: $c9


Jump_033_51cc:
    ld de, $000d                                  ; $51cc: $11 $0d $00
    call Call_033_4c89                            ; $51cf: $cd $89 $4c
    ld a, $06                                     ; $51d2: $3e $06
    rst $18                                       ; $51d4: $df
    ld [$cd0a], sp                                ; $51d5: $08 $0a $cd
    ld d, a                                       ; $51d8: $57
    ld d, d                                       ; $51d9: $52
    ret                                           ; $51da: $c9


Jump_033_51db:
jr_033_51db:
    rst $20                                       ; $51db: $e7
    nop                                           ; $51dc: $00
    inc e                                         ; $51dd: $1c
    rst $30                                       ; $51de: $f7
    ld h, b                                       ; $51df: $60
    inc e                                         ; $51e0: $1c
    jr nz, jr_033_5221                            ; $51e1: $20 $3e

    ld de, $0008                                  ; $51e3: $11 $08 $00
    call Call_033_4c89                            ; $51e6: $cd $89 $4c
    ld a, $06                                     ; $51e9: $3e $06
    rst $18                                       ; $51eb: $df
    ld a, [bc]                                    ; $51ec: $0a
    ld a, [bc]                                    ; $51ed: $0a
    rst $18                                       ; $51ee: $df
    ld [de], a                                    ; $51ef: $12
    ld a, [bc]                                    ; $51f0: $0a
    rst $18                                       ; $51f1: $df
    inc c                                         ; $51f2: $0c
    ld a, [bc]                                    ; $51f3: $0a
    push af                                       ; $51f4: $f5
    ld a, $05                                     ; $51f5: $3e $05
    rst $18                                       ; $51f7: $df
    inc b                                         ; $51f8: $04
    ld a, [bc]                                    ; $51f9: $0a
    pop af                                        ; $51fa: $f1
    and a                                         ; $51fb: $a7
    jr nz, jr_033_5212                            ; $51fc: $20 $14

    ld de, $0003                                  ; $51fe: $11 $03 $00
    call Call_033_4c89                            ; $5201: $cd $89 $4c
    ld a, $06                                     ; $5204: $3e $06
    rst $18                                       ; $5206: $df
    ld [$e70a], sp                                ; $5207: $08 $0a $e7
    ldh [$0e], a                                  ; $520a: $e0 $0e
    call Call_033_556c                            ; $520c: $cd $6c $55
    jp Jump_033_50bb                              ; $520f: $c3 $bb $50


jr_033_5212:
    ld de, $0002                                  ; $5212: $11 $02 $00
    call Call_033_4c89                            ; $5215: $cd $89 $4c
    ld a, $06                                     ; $5218: $3e $06
    rst $18                                       ; $521a: $df
    ld [$ef0a], sp                                ; $521b: $08 $0a $ef
    nop                                           ; $521e: $00
    inc e                                         ; $521f: $1c
    ret                                           ; $5220: $c9


jr_033_5221:
    rst $20                                       ; $5221: $e7
    nop                                           ; $5222: $00
    inc e                                         ; $5223: $1c
    ld de, $0009                                  ; $5224: $11 $09 $00
    call Call_033_4c89                            ; $5227: $cd $89 $4c
    ld a, $06                                     ; $522a: $3e $06
    rst $18                                       ; $522c: $df
    ld a, [bc]                                    ; $522d: $0a
    ld a, [bc]                                    ; $522e: $0a
    rst $18                                       ; $522f: $df
    ld [de], a                                    ; $5230: $12
    ld a, [bc]                                    ; $5231: $0a
    rst $18                                       ; $5232: $df
    inc c                                         ; $5233: $0c
    ld a, [bc]                                    ; $5234: $0a
    push af                                       ; $5235: $f5
    ld a, $05                                     ; $5236: $3e $05
    rst $18                                       ; $5238: $df
    inc b                                         ; $5239: $04
    ld a, [bc]                                    ; $523a: $0a
    pop af                                        ; $523b: $f1
    and a                                         ; $523c: $a7
    jr nz, jr_033_5212                            ; $523d: $20 $d3

    ld de, $000a                                  ; $523f: $11 $0a $00
    call Call_033_4c89                            ; $5242: $cd $89 $4c
    ld a, $06                                     ; $5245: $3e $06
    rst $18                                       ; $5247: $df
    ld [$e70a], sp                                ; $5248: $08 $0a $e7
    ldh [$0e], a                                  ; $524b: $e0 $0e
    rst $20                                       ; $524d: $e7
    nop                                           ; $524e: $00
    inc e                                         ; $524f: $1c
    call Call_033_5257                            ; $5250: $cd $57 $52
    call Call_033_5573                            ; $5253: $cd $73 $55
    ret                                           ; $5256: $c9


Call_033_5257:
    rst $30                                       ; $5257: $f7
    nop                                           ; $5258: $00
    inc e                                         ; $5259: $1c
    jr nz, jr_033_5267                            ; $525a: $20 $0b

    call Call_033_558e                            ; $525c: $cd $8e $55
    jr z, jr_033_5272                             ; $525f: $28 $11

    call Call_033_5522                            ; $5261: $cd $22 $55
    jp Jump_033_544c                              ; $5264: $c3 $4c $54


jr_033_5267:
    call Call_033_559c                            ; $5267: $cd $9c $55
    jr z, jr_033_5272                             ; $526a: $28 $06

    call Call_033_5522                            ; $526c: $cd $22 $55
    jp Jump_033_54bb                              ; $526f: $c3 $bb $54


jr_033_5272:
    ld de, $000e                                  ; $5272: $11 $0e $00
    call Call_033_4c89                            ; $5275: $cd $89 $4c
    rst $08                                       ; $5278: $cf
    ld h, l                                       ; $5279: $65
    ld a, $07                                     ; $527a: $3e $07
    rst $18                                       ; $527c: $df
    ld [$fa0a], sp                                ; $527d: $08 $0a $fa
    ld d, b                                       ; $5280: $50
    call nz, Call_000_08fe                        ; $5281: $c4 $fe $08
    jp nz, Jump_033_52c1                          ; $5284: $c2 $c1 $52

    ld a, $02                                     ; $5287: $3e $02
    ld bc, $1500                                  ; $5289: $01 $00 $15
    ld de, $0d80                                  ; $528c: $11 $80 $0d
    rst $18                                       ; $528f: $df
    jr nz, @+$0c                                  ; $5290: $20 $0a

    ld a, $03                                     ; $5292: $3e $03
    ld bc, $1700                                  ; $5294: $01 $00 $17
    ld de, $0d80                                  ; $5297: $11 $80 $0d
    rst $18                                       ; $529a: $df
    jr nz, @+$0c                                  ; $529b: $20 $0a

    ld a, $04                                     ; $529d: $3e $04
    ld bc, $1b00                                  ; $529f: $01 $00 $1b
    ld de, $0d80                                  ; $52a2: $11 $80 $0d
    rst $18                                       ; $52a5: $df
    jr nz, @+$0c                                  ; $52a6: $20 $0a

    ld a, $05                                     ; $52a8: $3e $05
    ld bc, $1900                                  ; $52aa: $01 $00 $19
    ld de, $0d80                                  ; $52ad: $11 $80 $0d
    rst $18                                       ; $52b0: $df
    jr nz, @+$0c                                  ; $52b1: $20 $0a

    ld a, $0b                                     ; $52b3: $3e $0b
    ld bc, $3f00                                  ; $52b5: $01 $00 $3f
    ld de, $3f00                                  ; $52b8: $11 $00 $3f
    rst $18                                       ; $52bb: $df
    jr nz, jr_033_52c8                            ; $52bc: $20 $0a

    jp Jump_033_536e                              ; $52be: $c3 $6e $53


Jump_033_52c1:
    ld a, $00                                     ; $52c1: $3e $00
    ld b, $01                                     ; $52c3: $06 $01
    rst $18                                       ; $52c5: $df
    ld a, [hl+]                                   ; $52c6: $2a
    ld a, [bc]                                    ; $52c7: $0a

jr_033_52c8:
    ld a, $00                                     ; $52c8: $3e $00
    ld b, $40                                     ; $52ca: $06 $40
    ld de, $0280                                  ; $52cc: $11 $80 $02
    rst $18                                       ; $52cf: $df
    jr z, jr_033_52dc                             ; $52d0: $28 $0a

    ld a, $00                                     ; $52d2: $3e $00
    rst $18                                       ; $52d4: $df
    ld e, $0a                                     ; $52d5: $1e $0a
    ldh a, [$95]                                  ; $52d7: $f0 $95
    ld b, a                                       ; $52d9: $47
    ld a, $04                                     ; $52da: $3e $04

jr_033_52dc:
    ld de, $7bde                                  ; $52dc: $11 $de $7b
    rst $18                                       ; $52df: $df
    jr @+$0c                                      ; $52e0: $18 $0a

    push af                                       ; $52e2: $f5
    ld a, $01                                     ; $52e3: $3e $01
    rst $18                                       ; $52e5: $df
    inc b                                         ; $52e6: $04
    ld a, [bc]                                    ; $52e7: $0a
    pop af                                        ; $52e8: $f1
    ld a, $02                                     ; $52e9: $3e $02
    ld bc, $0010                                  ; $52eb: $01 $10 $00
    rst $18                                       ; $52ee: $df
    ld d, $0a                                     ; $52ef: $16 $0a
    ld a, $03                                     ; $52f1: $3e $03
    ld bc, $0010                                  ; $52f3: $01 $10 $00
    rst $18                                       ; $52f6: $df
    ld d, $0a                                     ; $52f7: $16 $0a
    ld a, $04                                     ; $52f9: $3e $04
    ld bc, $0010                                  ; $52fb: $01 $10 $00
    rst $18                                       ; $52fe: $df
    ld d, $0a                                     ; $52ff: $16 $0a
    ld a, $05                                     ; $5301: $3e $05
    ld bc, $0010                                  ; $5303: $01 $10 $00
    rst $18                                       ; $5306: $df
    ld d, $0a                                     ; $5307: $16 $0a
    push af                                       ; $5309: $f5
    ld a, $01                                     ; $530a: $3e $01
    rst $18                                       ; $530c: $df
    inc b                                         ; $530d: $04
    ld a, [bc]                                    ; $530e: $0a
    pop af                                        ; $530f: $f1
    ld a, $02                                     ; $5310: $3e $02
    ld bc, $1580                                  ; $5312: $01 $80 $15
    ld de, $0d80                                  ; $5315: $11 $80 $0d
    rst $18                                       ; $5318: $df
    ld [hl+], a                                   ; $5319: $22
    ld a, [bc]                                    ; $531a: $0a
    ld a, $03                                     ; $531b: $3e $03
    ld b, $c0                                     ; $531d: $06 $c0
    ld de, $0200                                  ; $531f: $11 $00 $02
    rst $18                                       ; $5322: $df
    jr z, jr_033_532f                             ; $5323: $28 $0a

    ld a, $03                                     ; $5325: $3e $03
    rst $18                                       ; $5327: $df
    ld e, $0a                                     ; $5328: $1e $0a
    ld a, $03                                     ; $532a: $3e $03
    ld bc, $1700                                  ; $532c: $01 $00 $17

jr_033_532f:
    ld de, $0d80                                  ; $532f: $11 $80 $0d
    rst $18                                       ; $5332: $df
    ld [hl+], a                                   ; $5333: $22
    ld a, [bc]                                    ; $5334: $0a
    ld a, $04                                     ; $5335: $3e $04
    ld bc, $1a00                                  ; $5337: $01 $00 $1a
    ld de, $0d80                                  ; $533a: $11 $80 $0d
    rst $18                                       ; $533d: $df
    ld [hl+], a                                   ; $533e: $22
    ld a, [bc]                                    ; $533f: $0a
    ld a, $05                                     ; $5340: $3e $05
    ld bc, $1880                                  ; $5342: $01 $80 $18
    ld de, $0d80                                  ; $5345: $11 $80 $0d
    rst $18                                       ; $5348: $df
    ld [hl+], a                                   ; $5349: $22
    ld a, [bc]                                    ; $534a: $0a
    ld a, $05                                     ; $534b: $3e $05
    rst $18                                       ; $534d: $df
    ld e, $0a                                     ; $534e: $1e $0a
    ld a, $00                                     ; $5350: $3e $00
    ld b, $00                                     ; $5352: $06 $00
    rst $18                                       ; $5354: $df
    ld a, [hl+]                                   ; $5355: $2a
    ld a, [bc]                                    ; $5356: $0a
    push af                                       ; $5357: $f5
    ld a, $0f                                     ; $5358: $3e $0f
    rst $18                                       ; $535a: $df
    inc b                                         ; $535b: $04
    ld a, [bc]                                    ; $535c: $0a
    pop af                                        ; $535d: $f1
    ld a, $00                                     ; $535e: $3e $00
    ld bc, $0900                                  ; $5360: $01 $00 $09
    ld de, $0d00                                  ; $5363: $11 $00 $0d
    rst $18                                       ; $5366: $df
    ld [hl+], a                                   ; $5367: $22
    ld a, [bc]                                    ; $5368: $0a
    ld a, $00                                     ; $5369: $3e $00
    rst $18                                       ; $536b: $df
    ld e, $0a                                     ; $536c: $1e $0a

Jump_033_536e:
    call Call_033_5522                            ; $536e: $cd $22 $55
    ld a, $00                                     ; $5371: $3e $00
    ld b, a                                       ; $5373: $47
    ld a, $05                                     ; $5374: $3e $05
    rst $18                                       ; $5376: $df
    ld [hl-], a                                   ; $5377: $32
    ld a, [bc]                                    ; $5378: $0a
    push af                                       ; $5379: $f5
    ld a, $1e                                     ; $537a: $3e $1e
    rst $18                                       ; $537c: $df
    inc b                                         ; $537d: $04
    ld a, [bc]                                    ; $537e: $0a
    pop af                                        ; $537f: $f1
    ld bc, $0040                                  ; $5380: $01 $40 $00
    rst $18                                       ; $5383: $df
    ld [hl], $0a                                  ; $5384: $36 $0a
    xor a                                         ; $5386: $af
    ld bc, $1900                                  ; $5387: $01 $00 $19
    ld de, $0b00                                  ; $538a: $11 $00 $0b
    rst $18                                       ; $538d: $df
    jr c, jr_033_539a                             ; $538e: $38 $0a

    ld a, $02                                     ; $5390: $3e $02
    rst $18                                       ; $5392: $df
    ld e, $0a                                     ; $5393: $1e $0a
    ld a, $02                                     ; $5395: $3e $02
    ld b, $00                                     ; $5397: $06 $00
    rst $18                                       ; $5399: $df

jr_033_539a:
    inc l                                         ; $539a: $2c
    ld a, [bc]                                    ; $539b: $0a
    ld a, $03                                     ; $539c: $3e $03
    ld b, $00                                     ; $539e: $06 $00
    rst $18                                       ; $53a0: $df
    inc l                                         ; $53a1: $2c
    ld a, [bc]                                    ; $53a2: $0a
    ld a, $04                                     ; $53a3: $3e $04
    ld b, $00                                     ; $53a5: $06 $00
    rst $18                                       ; $53a7: $df
    inc l                                         ; $53a8: $2c
    ld a, [bc]                                    ; $53a9: $0a
    ld a, $05                                     ; $53aa: $3e $05
    ld b, $00                                     ; $53ac: $06 $00
    rst $18                                       ; $53ae: $df
    inc l                                         ; $53af: $2c
    ld a, [bc]                                    ; $53b0: $0a
    ld a, $07                                     ; $53b1: $3e $07
    ld bc, $1d00                                  ; $53b3: $01 $00 $1d
    ld de, $0b00                                  ; $53b6: $11 $00 $0b
    rst $18                                       ; $53b9: $df
    jr nz, jr_033_53c6                            ; $53ba: $20 $0a

    ld a, $00                                     ; $53bc: $3e $00
    ld bc, $000d                                  ; $53be: $01 $0d $00
    rst $18                                       ; $53c1: $df
    ld d, $0a                                     ; $53c2: $16 $0a
    rst $30                                       ; $53c4: $f7
    nop                                           ; $53c5: $00

jr_033_53c6:
    inc e                                         ; $53c6: $1c
    jr nz, jr_033_53d6                            ; $53c7: $20 $0d

    ld a, $04                                     ; $53c9: $3e $04
    ld bc, $3f00                                  ; $53cb: $01 $00 $3f
    ld de, $3f00                                  ; $53ce: $11 $00 $3f
    rst $18                                       ; $53d1: $df
    jr nz, jr_033_53de                            ; $53d2: $20 $0a

    jr jr_033_53d6                                ; $53d4: $18 $00

jr_033_53d6:
    ld a, $00                                     ; $53d6: $3e $00
    ld bc, $1280                                  ; $53d8: $01 $80 $12
    ld de, $0d80                                  ; $53db: $11 $80 $0d

jr_033_53de:
    rst $18                                       ; $53de: $df
    ld [hl+], a                                   ; $53df: $22
    ld a, [bc]                                    ; $53e0: $0a
    ld a, $07                                     ; $53e1: $3e $07
    rst $18                                       ; $53e3: $df
    ld [$f00a], sp                                ; $53e4: $08 $0a $f0
    sub l                                         ; $53e7: $95
    ld b, a                                       ; $53e8: $47
    ld a, $04                                     ; $53e9: $3e $04
    ld de, $5105                                  ; $53eb: $11 $05 $51
    rst $18                                       ; $53ee: $df
    jr jr_033_53fb                                ; $53ef: $18 $0a

    push af                                       ; $53f1: $f5
    ld a, $15                                     ; $53f2: $3e $15
    rst $18                                       ; $53f4: $df
    inc b                                         ; $53f5: $04
    ld a, [bc]                                    ; $53f6: $0a
    pop af                                        ; $53f7: $f1
    ldh a, [$95]                                  ; $53f8: $f0 $95
    ld b, a                                       ; $53fa: $47

jr_033_53fb:
    ld a, $05                                     ; $53fb: $3e $05
    ld de, $5105                                  ; $53fd: $11 $05 $51
    rst $18                                       ; $5400: $df
    jr jr_033_540d                                ; $5401: $18 $0a

    push af                                       ; $5403: $f5
    ld a, $01                                     ; $5404: $3e $01
    rst $18                                       ; $5406: $df
    inc b                                         ; $5407: $04
    ld a, [bc]                                    ; $5408: $0a
    pop af                                        ; $5409: $f1
    ldh a, [$95]                                  ; $540a: $f0 $95
    ld b, a                                       ; $540c: $47

jr_033_540d:
    ld a, $03                                     ; $540d: $3e $03
    ld de, $5105                                  ; $540f: $11 $05 $51
    rst $18                                       ; $5412: $df
    jr jr_033_541f                                ; $5413: $18 $0a

    push af                                       ; $5415: $f5
    ld a, $01                                     ; $5416: $3e $01
    rst $18                                       ; $5418: $df
    inc b                                         ; $5419: $04
    ld a, [bc]                                    ; $541a: $0a
    pop af                                        ; $541b: $f1
    ldh a, [$95]                                  ; $541c: $f0 $95
    ld b, a                                       ; $541e: $47

jr_033_541f:
    ld a, $02                                     ; $541f: $3e $02
    ld de, $5105                                  ; $5421: $11 $05 $51
    rst $18                                       ; $5424: $df
    jr jr_033_5431                                ; $5425: $18 $0a

    push af                                       ; $5427: $f5
    ld a, $01                                     ; $5428: $3e $01
    rst $18                                       ; $542a: $df
    inc b                                         ; $542b: $04
    ld a, [bc]                                    ; $542c: $0a
    pop af                                        ; $542d: $f1
    rst $30                                       ; $542e: $f7
    nop                                           ; $542f: $00
    inc e                                         ; $5430: $1c

jr_033_5431:
    jr nz, jr_033_545e                            ; $5431: $20 $2b

    ldh a, [$95]                                  ; $5433: $f0 $95
    ld b, a                                       ; $5435: $47
    ld a, $00                                     ; $5436: $3e $00
    ld de, $5105                                  ; $5438: $11 $05 $51
    rst $18                                       ; $543b: $df
    jr jr_033_5448                                ; $543c: $18 $0a

    push af                                       ; $543e: $f5
    ld a, $c8                                     ; $543f: $3e $c8
    rst $18                                       ; $5441: $df
    inc b                                         ; $5442: $04
    ld a, [bc]                                    ; $5443: $0a
    pop af                                        ; $5444: $f1
    push af                                       ; $5445: $f5
    ld a, $64                                     ; $5446: $3e $64

jr_033_5448:
    rst $18                                       ; $5448: $df
    inc b                                         ; $5449: $04
    ld a, [bc]                                    ; $544a: $0a
    pop af                                        ; $544b: $f1

Jump_033_544c:
    rst $28                                       ; $544c: $ef
    ldh [$0e], a                                  ; $544d: $e0 $0e
    call Call_033_5565                            ; $544f: $cd $65 $55
    ld c, $04                                     ; $5452: $0e $04
    call Call_000_25a1                            ; $5454: $cd $a1 $25
    call Call_000_2625                            ; $5457: $cd $25 $26
    call Call_033_4f05                            ; $545a: $cd $05 $4f
    ret                                           ; $545d: $c9


jr_033_545e:
    push af                                       ; $545e: $f5
    ld a, $c8                                     ; $545f: $3e $c8
    rst $18                                       ; $5461: $df
    inc b                                         ; $5462: $04
    ld a, [bc]                                    ; $5463: $0a
    pop af                                        ; $5464: $f1
    ld a, $00                                     ; $5465: $3e $00
    ld bc, $1980                                  ; $5467: $01 $80 $19
    ld de, $0d80                                  ; $546a: $11 $80 $0d
    rst $18                                       ; $546d: $df
    ld [hl+], a                                   ; $546e: $22
    ld a, [bc]                                    ; $546f: $0a
    ld a, $00                                     ; $5470: $3e $00
    rst $18                                       ; $5472: $df
    ld e, $0a                                     ; $5473: $1e $0a
    push af                                       ; $5475: $f5
    ld a, $1e                                     ; $5476: $3e $1e
    rst $18                                       ; $5478: $df
    inc b                                         ; $5479: $04
    ld a, [bc]                                    ; $547a: $0a
    pop af                                        ; $547b: $f1
    ld a, $00                                     ; $547c: $3e $00
    ld b, a                                       ; $547e: $47
    ld a, $07                                     ; $547f: $3e $07
    rst $18                                       ; $5481: $df
    ld l, $0a                                     ; $5482: $2e $0a
    ld a, $07                                     ; $5484: $3e $07
    ld b, a                                       ; $5486: $47
    ld a, $05                                     ; $5487: $3e $05
    rst $18                                       ; $5489: $df
    ld [hl-], a                                   ; $548a: $32
    ld a, [bc]                                    ; $548b: $0a
    push af                                       ; $548c: $f5
    ld a, $3c                                     ; $548d: $3e $3c
    rst $18                                       ; $548f: $df
    inc b                                         ; $5490: $04
    ld a, [bc]                                    ; $5491: $0a
    pop af                                        ; $5492: $f1
    ld a, $00                                     ; $5493: $3e $00
    ld b, a                                       ; $5495: $47
    ld a, $05                                     ; $5496: $3e $05
    rst $18                                       ; $5498: $df
    ld [hl-], a                                   ; $5499: $32
    ld a, [bc]                                    ; $549a: $0a
    push af                                       ; $549b: $f5
    ld a, $3c                                     ; $549c: $3e $3c
    rst $18                                       ; $549e: $df
    inc b                                         ; $549f: $04
    ld a, [bc]                                    ; $54a0: $0a
    pop af                                        ; $54a1: $f1
    ldh a, [$95]                                  ; $54a2: $f0 $95
    ld b, a                                       ; $54a4: $47
    ld a, $00                                     ; $54a5: $3e $00
    ld de, $5105                                  ; $54a7: $11 $05 $51
    rst $18                                       ; $54aa: $df
    jr jr_033_54b7                                ; $54ab: $18 $0a

    ld a, $07                                     ; $54ad: $3e $07
    ld b, $80                                     ; $54af: $06 $80
    rst $18                                       ; $54b1: $df
    inc l                                         ; $54b2: $2c
    ld a, [bc]                                    ; $54b3: $0a
    push af                                       ; $54b4: $f5
    ld a, $c8                                     ; $54b5: $3e $c8

jr_033_54b7:
    rst $18                                       ; $54b7: $df
    inc b                                         ; $54b8: $04
    ld a, [bc]                                    ; $54b9: $0a
    pop af                                        ; $54ba: $f1

Jump_033_54bb:
    rst $28                                       ; $54bb: $ef
    ldh [$0e], a                                  ; $54bc: $e0 $0e
    ld c, $04                                     ; $54be: $0e $04
    call Call_000_25a1                            ; $54c0: $cd $a1 $25
    call Call_000_2625                            ; $54c3: $cd $25 $26
    call Call_033_4f28                            ; $54c6: $cd $28 $4f
    ret                                           ; $54c9: $c9


Jump_033_54ca:
    ld de, $0016                                  ; $54ca: $11 $16 $00
    call Call_033_4c89                            ; $54cd: $cd $89 $4c
    rst $28                                       ; $54d0: $ef
    ld h, b                                       ; $54d1: $60
    inc e                                         ; $54d2: $1c
    call Call_033_4ddc                            ; $54d3: $cd $dc $4d
    ld a, $06                                     ; $54d6: $3e $06
    rst $18                                       ; $54d8: $df
    ld a, [bc]                                    ; $54d9: $0a
    ld a, [bc]                                    ; $54da: $0a
    push af                                       ; $54db: $f5
    ld a, $0a                                     ; $54dc: $3e $0a
    rst $18                                       ; $54de: $df
    inc b                                         ; $54df: $04
    ld a, [bc]                                    ; $54e0: $0a
    pop af                                        ; $54e1: $f1
    rst $18                                       ; $54e2: $df
    ld [de], a                                    ; $54e3: $12
    ld a, [bc]                                    ; $54e4: $0a
    rst $18                                       ; $54e5: $df
    inc c                                         ; $54e6: $0c
    ld a, [bc]                                    ; $54e7: $0a
    push af                                       ; $54e8: $f5
    ld a, $05                                     ; $54e9: $3e $05
    rst $18                                       ; $54eb: $df
    inc b                                         ; $54ec: $04
    ld a, [bc]                                    ; $54ed: $0a
    pop af                                        ; $54ee: $f1
    and a                                         ; $54ef: $a7
    jp z, Jump_033_51db                           ; $54f0: $ca $db $51

    call Call_000_0a61                            ; $54f3: $cd $61 $0a
    ld a, l                                       ; $54f6: $7d
    and $01                                       ; $54f7: $e6 $01
    ld hl, $08ab                                  ; $54f9: $21 $ab $08
    add l                                         ; $54fc: $85
    ld l, a                                       ; $54fd: $6f
    jr nc, jr_033_5501                            ; $54fe: $30 $01

    inc h                                         ; $5500: $24

jr_033_5501:
    ld a, [$c450]                                 ; $5501: $fa $50 $c4
    sub $08                                       ; $5504: $d6 $08
    add a                                         ; $5506: $87
    add l                                         ; $5507: $85
    ld l, a                                       ; $5508: $6f
    jr nc, jr_033_550c                            ; $5509: $30 $01

    inc h                                         ; $550b: $24

jr_033_550c:
    rst $18                                       ; $550c: $df
    ld c, $0a                                     ; $550d: $0e $0a
    ld a, $06                                     ; $550f: $3e $06
    rst $18                                       ; $5511: $df
    ld [$3e0a], sp                                ; $5512: $08 $0a $3e
    nop                                           ; $5515: $00
    ld b, a                                       ; $5516: $47
    ld a, $05                                     ; $5517: $3e $05
    rst $18                                       ; $5519: $df
    ld [hl-], a                                   ; $551a: $32
    ld a, [bc]                                    ; $551b: $0a
    ld a, $00                                     ; $551c: $3e $00
    rst $18                                       ; $551e: $df
    inc [hl]                                      ; $551f: $34
    ld a, [bc]                                    ; $5520: $0a
    ret                                           ; $5521: $c9


Call_033_5522:
    ld a, $06                                     ; $5522: $3e $06
    ld b, $00                                     ; $5524: $06 $00
    rst $18                                       ; $5526: $df
    inc l                                         ; $5527: $2c
    ld a, [bc]                                    ; $5528: $0a
    push af                                       ; $5529: $f5
    ld a, $1e                                     ; $552a: $3e $1e
    rst $18                                       ; $552c: $df
    inc b                                         ; $552d: $04
    ld a, [bc]                                    ; $552e: $0a
    pop af                                        ; $552f: $f1
    ld de, $000f                                  ; $5530: $11 $0f $00
    call Call_033_4c89                            ; $5533: $cd $89 $4c
    ld a, $06                                     ; $5536: $3e $06
    ld b, a                                       ; $5538: $47
    ld a, $00                                     ; $5539: $3e $00
    rst $18                                       ; $553b: $df
    jr nc, jr_033_5548                            ; $553c: $30 $0a

    ld a, $06                                     ; $553e: $3e $06
    rst $18                                       ; $5540: $df
    ld [$3e0a], sp                                ; $5541: $08 $0a $3e
    nop                                           ; $5544: $00
    ld b, a                                       ; $5545: $47
    ld a, $05                                     ; $5546: $3e $05

jr_033_5548:
    rst $18                                       ; $5548: $df
    ld [hl-], a                                   ; $5549: $32
    ld a, [bc]                                    ; $554a: $0a
    ld a, $00                                     ; $554b: $3e $00
    rst $18                                       ; $554d: $df
    inc [hl]                                      ; $554e: $34
    ld a, [bc]                                    ; $554f: $0a
    ret                                           ; $5550: $c9


Call_033_5551:
    ld a, [$c450]                                 ; $5551: $fa $50 $c4
    sub $08                                       ; $5554: $d6 $08
    ld h, $00                                     ; $5556: $26 $00
    ld l, a                                       ; $5558: $6f
    add hl, de                                    ; $5559: $19
    add hl, hl                                    ; $555a: $29
    add hl, hl                                    ; $555b: $29
    add hl, hl                                    ; $555c: $29
    add hl, hl                                    ; $555d: $29
    add hl, hl                                    ; $555e: $29
    ld e, l                                       ; $555f: $5d
    ld d, h                                       ; $5560: $54
    call Call_000_2d2e                            ; $5561: $cd $2e $2d
    ret                                           ; $5564: $c9


Call_033_5565:
    ld de, $00b0                                  ; $5565: $11 $b0 $00
    call Call_033_5551                            ; $5568: $cd $51 $55
    ret                                           ; $556b: $c9


Call_033_556c:
    ld de, $00b4                                  ; $556c: $11 $b4 $00
    call Call_033_5551                            ; $556f: $cd $51 $55
    ret                                           ; $5572: $c9


Call_033_5573:
    ld de, $00b8                                  ; $5573: $11 $b8 $00
    call Call_033_5551                            ; $5576: $cd $51 $55
    ret                                           ; $5579: $c9


Call_033_557a:
    ld a, [$c450]                                 ; $557a: $fa $50 $c4
    sub $08                                       ; $557d: $d6 $08
    ld h, $00                                     ; $557f: $26 $00
    ld l, a                                       ; $5581: $6f
    add hl, de                                    ; $5582: $19
    add hl, hl                                    ; $5583: $29
    add hl, hl                                    ; $5584: $29
    add hl, hl                                    ; $5585: $29
    add hl, hl                                    ; $5586: $29
    add hl, hl                                    ; $5587: $29
    ld e, l                                       ; $5588: $5d
    ld d, h                                       ; $5589: $54
    call Call_000_2d10                            ; $558a: $cd $10 $2d
    ret                                           ; $558d: $c9


Call_033_558e:
    ld de, $00b0                                  ; $558e: $11 $b0 $00
    call Call_033_557a                            ; $5591: $cd $7a $55
    ret                                           ; $5594: $c9


    ld de, $00b4                                  ; $5595: $11 $b4 $00
    call Call_033_557a                            ; $5598: $cd $7a $55
    ret                                           ; $559b: $c9


Call_033_559c:
    ld de, $00b8                                  ; $559c: $11 $b8 $00
    call Call_033_557a                            ; $559f: $cd $7a $55
    ret                                           ; $55a2: $c9


Call_033_55a3:
    rst $18                                       ; $55a3: $df
    inc a                                         ; $55a4: $3c
    ld a, [bc]                                    ; $55a5: $0a
    ld b, $01                                     ; $55a6: $06 $01
    ld c, $15                                     ; $55a8: $0e $15
    ld d, $01                                     ; $55aa: $16 $01
    ld e, $06                                     ; $55ac: $1e $06
    ld h, $3a                                     ; $55ae: $26 $3a
    ld l, $04                                     ; $55b0: $2e $04
    rst $18                                       ; $55b2: $df
    ld a, [bc]                                    ; $55b3: $0a
    dec bc                                        ; $55b4: $0b
    ld hl, $560e                                  ; $55b5: $21 $0e $56
    ld de, $0206                                  ; $55b8: $11 $06 $02
    call Call_000_0595                            ; $55bb: $cd $95 $05
    ret                                           ; $55be: $c9


Call_033_55bf:
    rst $18                                       ; $55bf: $df
    inc a                                         ; $55c0: $3c
    ld a, [bc]                                    ; $55c1: $0a
    ld b, $01                                     ; $55c2: $06 $01
    ld c, $1a                                     ; $55c4: $0e $1a
    ld d, $01                                     ; $55c6: $16 $01
    ld e, $06                                     ; $55c8: $1e $06
    ld h, $3a                                     ; $55ca: $26 $3a
    ld l, $04                                     ; $55cc: $2e $04
    rst $18                                       ; $55ce: $df
    ld a, [bc]                                    ; $55cf: $0a
    dec bc                                        ; $55d0: $0b
    ld hl, $564e                                  ; $55d1: $21 $4e $56
    ld de, $0206                                  ; $55d4: $11 $06 $02
    call Call_000_0595                            ; $55d7: $cd $95 $05
    ret                                           ; $55da: $c9


Call_033_55db:
    rst $18                                       ; $55db: $df
    inc a                                         ; $55dc: $3c
    ld a, [bc]                                    ; $55dd: $0a
    ld b, $01                                     ; $55de: $06 $01
    ld c, $1f                                     ; $55e0: $0e $1f
    ld d, $01                                     ; $55e2: $16 $01
    ld e, $06                                     ; $55e4: $1e $06
    ld h, $3a                                     ; $55e6: $26 $3a
    ld l, $04                                     ; $55e8: $2e $04
    rst $18                                       ; $55ea: $df
    ld a, [bc]                                    ; $55eb: $0a
    dec bc                                        ; $55ec: $0b
    ld hl, $568e                                  ; $55ed: $21 $8e $56
    ld de, $0206                                  ; $55f0: $11 $06 $02
    call Call_000_0595                            ; $55f3: $cd $95 $05
    push af                                       ; $55f6: $f5
    ld a, $0a                                     ; $55f7: $3e $0a
    rst $18                                       ; $55f9: $df
    inc b                                         ; $55fa: $04
    ld a, [bc]                                    ; $55fb: $0a
    pop af                                        ; $55fc: $f1
    ret                                           ; $55fd: $c9


    add b                                         ; $55fe: $80
    nop                                           ; $55ff: $00
    jr nz, @+$57                                  ; $5600: $20 $55

    and b                                         ; $5602: $a0
    ld a, [hl]                                    ; $5603: $7e
    rst $38                                       ; $5604: $ff
    ld a, a                                       ; $5605: $7f
    ld [$0825], sp                                ; $5606: $08 $25 $08
    dec h                                         ; $5609: $25
    ld [$0825], sp                                ; $560a: $08 $25 $08
    dec h                                         ; $560d: $25
    nop                                           ; $560e: $00
    dec hl                                        ; $560f: $2b
    rst $18                                       ; $5610: $df
    ld bc, $4bff                                  ; $5611: $01 $ff $4b
    xor c                                         ; $5614: $a9
    inc [hl]                                      ; $5615: $34
    rst $38                                       ; $5616: $ff
    ld c, e                                       ; $5617: $4b
    adc [hl]                                      ; $5618: $8e
    ld a, a                                       ; $5619: $7f
    nop                                           ; $561a: $00
    dec hl                                        ; $561b: $2b
    xor c                                         ; $561c: $a9
    inc [hl]                                      ; $561d: $34
    rst $38                                       ; $561e: $ff
    ld c, e                                       ; $561f: $4b
    rst $18                                       ; $5620: $df
    ld bc, $4bff                                  ; $5621: $01 $ff $4b
    xor c                                         ; $5624: $a9
    inc [hl]                                      ; $5625: $34
    rst $38                                       ; $5626: $ff
    ld a, a                                       ; $5627: $7f
    xor c                                         ; $5628: $a9
    inc [hl]                                      ; $5629: $34
    jr nz, jr_033_565a                            ; $562a: $20 $2e

    nop                                           ; $562c: $00
    dec hl                                        ; $562d: $2b
    adc [hl]                                      ; $562e: $8e
    ld a, a                                       ; $562f: $7f
    rst $38                                       ; $5630: $ff
    ld a, a                                       ; $5631: $7f
    rra                                           ; $5632: $1f
    ld bc, $44ad                                  ; $5633: $01 $ad $44
    ld [$0825], sp                                ; $5636: $08 $25 $08
    dec h                                         ; $5639: $25
    ld [$0825], sp                                ; $563a: $08 $25 $08
    dec h                                         ; $563d: $25
    add b                                         ; $563e: $80
    nop                                           ; $563f: $00
    jr nz, @+$57                                  ; $5640: $20 $55

    and b                                         ; $5642: $a0
    ld a, [hl]                                    ; $5643: $7e
    rst $38                                       ; $5644: $ff
    ld a, a                                       ; $5645: $7f
    ld [$0825], sp                                ; $5646: $08 $25 $08
    dec h                                         ; $5649: $25
    ld [$0825], sp                                ; $564a: $08 $25 $08
    dec h                                         ; $564d: $25
    ld c, h                                       ; $564e: $4c
    ld [bc], a                                    ; $564f: $02
    ld e, d                                       ; $5650: $5a
    nop                                           ; $5651: $00
    call c, $a912                                 ; $5652: $dc $12 $a9
    inc h                                         ; $5655: $24
    call c, $9f12                                 ; $5656: $dc $12 $9f
    ld [bc], a                                    ; $5659: $02

jr_033_565a:
    ld c, h                                       ; $565a: $4c
    ld [bc], a                                    ; $565b: $02
    xor c                                         ; $565c: $a9
    inc h                                         ; $565d: $24
    call c, $5a12                                 ; $565e: $dc $12 $5a
    nop                                           ; $5661: $00
    call c, $a912                                 ; $5662: $dc $12 $a9
    inc h                                         ; $5665: $24
    rra                                           ; $5666: $1f
    ld h, e                                       ; $5667: $63
    xor c                                         ; $5668: $a9
    inc h                                         ; $5669: $24
    jp z, Jump_033_4c05                           ; $566a: $ca $05 $4c

    ld [bc], a                                    ; $566d: $02
    sbc a                                         ; $566e: $9f
    ld [bc], a                                    ; $566f: $02
    rra                                           ; $5670: $1f
    ld h, e                                       ; $5671: $63
    rst $18                                       ; $5672: $df
    nop                                           ; $5673: $00
    jp z, Jump_000_0828                           ; $5674: $ca $28 $08

    dec h                                         ; $5677: $25
    ld [$0825], sp                                ; $5678: $08 $25 $08
    dec h                                         ; $567b: $25
    ld [$8025], sp                                ; $567c: $08 $25 $80
    nop                                           ; $567f: $00
    jr nz, @+$57                                  ; $5680: $20 $55

    and b                                         ; $5682: $a0
    ld a, [hl]                                    ; $5683: $7e
    rst $38                                       ; $5684: $ff
    ld a, a                                       ; $5685: $7f
    ld [$0825], sp                                ; $5686: $08 $25 $08
    dec h                                         ; $5689: $25
    ld [$0825], sp                                ; $568a: $08 $25 $08
    dec h                                         ; $568d: $25
    ldh [rSTAT], a                                ; $568e: $e0 $41
    db $f4                                        ; $5690: $f4
    inc d                                         ; $5691: $14
    call nc, $862a                                ; $5692: $d4 $2a $86
    inc l                                         ; $5695: $2c
    call nc, $5f2a                                ; $5696: $d4 $2a $5f
    ld h, c                                       ; $5699: $61
    ldh [rSTAT], a                                ; $569a: $e0 $41
    add [hl]                                      ; $569c: $86
    inc l                                         ; $569d: $2c
    call nc, $f42a                                ; $569e: $d4 $2a $f4
    inc d                                         ; $56a1: $14
    call nc, $862a                                ; $56a2: $d4 $2a $86
    inc l                                         ; $56a5: $2c
    rst $18                                       ; $56a6: $df
    ld a, [hl]                                    ; $56a7: $7e
    add [hl]                                      ; $56a8: $86
    inc l                                         ; $56a9: $2c
    dec h                                         ; $56aa: $25
    dec l                                         ; $56ab: $2d
    ldh [rSTAT], a                                ; $56ac: $e0 $41
    ld e, a                                       ; $56ae: $5f
    ld h, c                                       ; $56af: $61
    rst $18                                       ; $56b0: $df
    ld a, [hl]                                    ; $56b1: $7e
    inc d                                         ; $56b2: $14
    db $10                                        ; $56b3: $10
    ret z                                         ; $56b4: $c8

    inc [hl]                                      ; $56b5: $34
    ld [$0825], sp                                ; $56b6: $08 $25 $08
    dec h                                         ; $56b9: $25
    ld [$0825], sp                                ; $56ba: $08 $25 $08
    dec h                                         ; $56bd: $25
    ld de, $1857                                  ; $56be: $11 $57 $18
    ld d, a                                       ; $56c1: $57
    call z, Call_033_6b56                         ; $56c2: $cc $56 $6b
    ld d, a                                       ; $56c5: $57
    sbc l                                         ; $56c6: $9d
    ld d, a                                       ; $56c7: $57
    ld a, [hl]                                    ; $56c8: $7e
    ld e, b                                       ; $56c9: $58
    adc a                                         ; $56ca: $8f
    ld e, b                                       ; $56cb: $58
    db $dd                                        ; $56cc: $dd
    ld a, e                                       ; $56cd: $7b
    nop                                           ; $56ce: $00
    dec b                                         ; $56cf: $05
    nop                                           ; $56d0: $00
    dec e                                         ; $56d1: $1d
    nop                                           ; $56d2: $00
    nop                                           ; $56d3: $00
    nop                                           ; $56d4: $00
    nop                                           ; $56d5: $00
    ld bc, $dd13                                  ; $56d6: $01 $13 $dd
    ld a, e                                       ; $56d9: $7b
    nop                                           ; $56da: $00
    rlca                                          ; $56db: $07
    nop                                           ; $56dc: $00
    dec d                                         ; $56dd: $15
    nop                                           ; $56de: $00
    nop                                           ; $56df: $00
    nop                                           ; $56e0: $00
    nop                                           ; $56e1: $00
    ld bc, $dd13                                  ; $56e2: $01 $13 $dd
    ld a, e                                       ; $56e5: $7b
    nop                                           ; $56e6: $00
    dec c                                         ; $56e7: $0d
    nop                                           ; $56e8: $00
    dec d                                         ; $56e9: $15
    nop                                           ; $56ea: $00
    nop                                           ; $56eb: $00
    nop                                           ; $56ec: $00
    add b                                         ; $56ed: $80
    ld bc, $dd13                                  ; $56ee: $01 $13 $dd
    ld a, e                                       ; $56f1: $7b
    ret nz                                        ; $56f2: $c0

    ld [$0d80], sp                                ; $56f3: $08 $80 $0d
    nop                                           ; $56f6: $00
    nop                                           ; $56f7: $00
    nop                                           ; $56f8: $00
    ld b, b                                       ; $56f9: $40
    ld bc, $dd19                                  ; $56fa: $01 $19 $dd
    ld a, e                                       ; $56fd: $7b
    nop                                           ; $56fe: $00
    dec bc                                        ; $56ff: $0b
    nop                                           ; $5700: $00
    dec c                                         ; $5701: $0d
    nop                                           ; $5702: $00
    nop                                           ; $5703: $00
    nop                                           ; $5704: $00
    ld b, b                                       ; $5705: $40
    ld bc, $0026                                  ; $5706: $01 $26 $00
    nop                                           ; $5709: $00
    nop                                           ; $570a: $00
    nop                                           ; $570b: $00
    nop                                           ; $570c: $00
    nop                                           ; $570d: $00
    nop                                           ; $570e: $00
    nop                                           ; $570f: $00
    rst $38                                       ; $5710: $ff
    ld bc, $0080                                  ; $5711: $01 $80 $00
    add hl, bc                                    ; $5714: $09
    nop                                           ; $5715: $00
    ld hl, $01ff                                  ; $5716: $21 $ff $01
    rst $38                                       ; $5719: $ff
    nop                                           ; $571a: $00
    nop                                           ; $571b: $00
    nop                                           ; $571c: $00
    nop                                           ; $571d: $00
    dec e                                         ; $571e: $1d
    ld bc, $ff02                                  ; $571f: $01 $02 $ff
    nop                                           ; $5722: $00
    nop                                           ; $5723: $00
    nop                                           ; $5724: $00
    nop                                           ; $5725: $00
    ld [bc], a                                    ; $5726: $02
    dec b                                         ; $5727: $05
    rst $38                                       ; $5728: $ff
    rst $08                                       ; $5729: $cf
    adc d                                         ; $572a: $8a
    ld a, $00                                     ; $572b: $3e $00
    ld de, $ff40                                  ; $572d: $11 $40 $ff
    rst $18                                       ; $5730: $df
    ld b, b                                       ; $5731: $40
    ld a, [bc]                                    ; $5732: $0a
    call Call_033_57a6                            ; $5733: $cd $a6 $57
    ret                                           ; $5736: $c9


    rst $08                                       ; $5737: $cf
    adc d                                         ; $5738: $8a
    ld a, $00                                     ; $5739: $3e $00
    ld de, $ff40                                  ; $573b: $11 $40 $ff
    rst $18                                       ; $573e: $df
    ld b, b                                       ; $573f: $40
    ld a, [bc]                                    ; $5740: $0a
    ld a, $00                                     ; $5741: $3e $00
    ld bc, $0b00                                  ; $5743: $01 $00 $0b
    ld de, $0dc0                                  ; $5746: $11 $c0 $0d
    rst $18                                       ; $5749: $df
    ld [hl+], a                                   ; $574a: $22
    ld a, [bc]                                    ; $574b: $0a
    ld a, $00                                     ; $574c: $3e $00
    rst $18                                       ; $574e: $df
    ld e, $0a                                     ; $574f: $1e $0a
    ld a, $00                                     ; $5751: $3e $00
    ld b, $c0                                     ; $5753: $06 $c0
    rst $18                                       ; $5755: $df
    inc l                                         ; $5756: $2c
    ld a, [bc]                                    ; $5757: $0a
    ld a, $00                                     ; $5758: $3e $00
    ld b, a                                       ; $575a: $47
    ld a, $0a                                     ; $575b: $3e $0a
    rst $18                                       ; $575d: $df
    ld [hl-], a                                   ; $575e: $32
    ld a, [bc]                                    ; $575f: $0a
    push af                                       ; $5760: $f5
    ld a, $0a                                     ; $5761: $3e $0a
    rst $18                                       ; $5763: $df
    inc b                                         ; $5764: $04
    ld a, [bc]                                    ; $5765: $0a
    pop af                                        ; $5766: $f1
    call Call_033_57ce                            ; $5767: $cd $ce $57
    ret                                           ; $576a: $c9


    ld [bc], a                                    ; $576b: $02
    rst $38                                       ; $576c: $ff
    nop                                           ; $576d: $00
    nop                                           ; $576e: $00
    ld b, h                                       ; $576f: $44
    inc d                                         ; $5770: $14
    inc bc                                        ; $5771: $03
    nop                                           ; $5772: $00
    inc bc                                        ; $5773: $03
    rst $38                                       ; $5774: $ff
    nop                                           ; $5775: $00
    nop                                           ; $5776: $00
    ld b, l                                       ; $5777: $45
    inc d                                         ; $5778: $14
    ld bc, $0400                                  ; $5779: $01 $00 $04
    rst $38                                       ; $577c: $ff
    nop                                           ; $577d: $00
    nop                                           ; $577e: $00
    ld b, [hl]                                    ; $577f: $46
    inc d                                         ; $5780: $14
    ld bc, $0500                                  ; $5781: $01 $00 $05
    rst $38                                       ; $5784: $ff
    nop                                           ; $5785: $00
    nop                                           ; $5786: $00
    ld b, a                                       ; $5787: $47
    inc d                                         ; $5788: $14
    inc bc                                        ; $5789: $03
    nop                                           ; $578a: $00
    ld b, $20                                     ; $578b: $06 $20
    nop                                           ; $578d: $00
    nop                                           ; $578e: $00
    scf                                           ; $578f: $37
    ld d, a                                       ; $5790: $57
    inc bc                                        ; $5791: $03
    nop                                           ; $5792: $00
    ld b, $ff                                     ; $5793: $06 $ff
    nop                                           ; $5795: $00
    nop                                           ; $5796: $00
    add hl, hl                                    ; $5797: $29
    ld d, a                                       ; $5798: $57
    inc bc                                        ; $5799: $03
    nop                                           ; $579a: $00
    rst $38                                       ; $579b: $ff
    ret                                           ; $579c: $c9


    ld bc, $00ff                                  ; $579d: $01 $ff $00
    nop                                           ; $57a0: $00
    ld de, $040c                                  ; $57a1: $11 $0c $04
    nop                                           ; $57a4: $00
    rst $38                                       ; $57a5: $ff

Call_033_57a6:
    ld a, $00                                     ; $57a6: $3e $00
    ld bc, $0b00                                  ; $57a8: $01 $00 $0b
    ld de, $0dc0                                  ; $57ab: $11 $c0 $0d
    rst $18                                       ; $57ae: $df
    ld [hl+], a                                   ; $57af: $22
    ld a, [bc]                                    ; $57b0: $0a
    ld a, $00                                     ; $57b1: $3e $00
    ld b, $c0                                     ; $57b3: $06 $c0
    rst $18                                       ; $57b5: $df
    inc l                                         ; $57b6: $2c
    ld a, [bc]                                    ; $57b7: $0a
    push af                                       ; $57b8: $f5
    ld a, $05                                     ; $57b9: $3e $05
    rst $18                                       ; $57bb: $df
    inc b                                         ; $57bc: $04
    ld a, [bc]                                    ; $57bd: $0a
    pop af                                        ; $57be: $f1
    ld a, $00                                     ; $57bf: $3e $00
    ld b, a                                       ; $57c1: $47
    ld a, $0a                                     ; $57c2: $3e $0a
    rst $18                                       ; $57c4: $df
    ld [hl-], a                                   ; $57c5: $32
    ld a, [bc]                                    ; $57c6: $0a
    push af                                       ; $57c7: $f5
    ld a, $14                                     ; $57c8: $3e $14
    rst $18                                       ; $57ca: $df
    inc b                                         ; $57cb: $04
    ld a, [bc]                                    ; $57cc: $0a
    pop af                                        ; $57cd: $f1

Call_033_57ce:
    ld a, $00                                     ; $57ce: $3e $00
    ld b, $00                                     ; $57d0: $06 $00
    rst $18                                       ; $57d2: $df
    ld b, [hl]                                    ; $57d3: $46
    ld a, [bc]                                    ; $57d4: $0a
    push af                                       ; $57d5: $f5
    ld a, $0f                                     ; $57d6: $3e $0f
    rst $18                                       ; $57d8: $df
    inc b                                         ; $57d9: $04
    ld a, [bc]                                    ; $57da: $0a
    pop af                                        ; $57db: $f1
    ld a, $00                                     ; $57dc: $3e $00
    ld b, a                                       ; $57de: $47
    ld a, $02                                     ; $57df: $3e $02
    rst $18                                       ; $57e1: $df
    ld [hl-], a                                   ; $57e2: $32
    ld a, [bc]                                    ; $57e3: $0a
    ld a, $05                                     ; $57e4: $3e $05
    ld bc, $000c                                  ; $57e6: $01 $0c $00
    rst $18                                       ; $57e9: $df
    ld d, $0a                                     ; $57ea: $16 $0a
    ld a, $05                                     ; $57ec: $3e $05
    ld bc, $0900                                  ; $57ee: $01 $00 $09
    ld de, $1040                                  ; $57f1: $11 $40 $10
    rst $18                                       ; $57f4: $df
    ld [hl+], a                                   ; $57f5: $22
    ld a, [bc]                                    ; $57f6: $0a
    ld a, $05                                     ; $57f7: $3e $05
    rst $18                                       ; $57f9: $df
    ld e, $0a                                     ; $57fa: $1e $0a
    ld a, $05                                     ; $57fc: $3e $05
    ld bc, $0b00                                  ; $57fe: $01 $00 $0b
    ld de, $1080                                  ; $5801: $11 $80 $10
    rst $18                                       ; $5804: $df
    ld [hl+], a                                   ; $5805: $22
    ld a, [bc]                                    ; $5806: $0a
    ld a, $05                                     ; $5807: $3e $05
    rst $18                                       ; $5809: $df
    ld e, $0a                                     ; $580a: $1e $0a
    push af                                       ; $580c: $f5
    ld a, $0f                                     ; $580d: $3e $0f
    rst $18                                       ; $580f: $df
    inc b                                         ; $5810: $04
    ld a, [bc]                                    ; $5811: $0a
    pop af                                        ; $5812: $f1
    ld a, $05                                     ; $5813: $3e $05
    ld b, $c0                                     ; $5815: $06 $c0
    rst $18                                       ; $5817: $df
    inc l                                         ; $5818: $2c
    ld a, [bc]                                    ; $5819: $0a
    xor a                                         ; $581a: $af
    ld bc, $0b00                                  ; $581b: $01 $00 $0b
    ld de, $0700                                  ; $581e: $11 $00 $07
    rst $18                                       ; $5821: $df
    jr c, @+$0c                                   ; $5822: $38 $0a

    call Call_033_5899                            ; $5824: $cd $99 $58
    rst $18                                       ; $5827: $df
    inc a                                         ; $5828: $3c
    ld a, [bc]                                    ; $5829: $0a
    ld a, $05                                     ; $582a: $3e $05
    ld bc, $0b00                                  ; $582c: $01 $00 $0b
    ld de, $0f00                                  ; $582f: $11 $00 $0f
    rst $18                                       ; $5832: $df
    ld [hl+], a                                   ; $5833: $22
    ld a, [bc]                                    ; $5834: $0a
    ld a, $05                                     ; $5835: $3e $05
    rst $18                                       ; $5837: $df
    ld e, $0a                                     ; $5838: $1e $0a
    push af                                       ; $583a: $f5
    ld a, $0a                                     ; $583b: $3e $0a
    rst $18                                       ; $583d: $df
    inc b                                         ; $583e: $04
    ld a, [bc]                                    ; $583f: $0a
    pop af                                        ; $5840: $f1
    ld a, $05                                     ; $5841: $3e $05
    ld b, a                                       ; $5843: $47
    ld a, $07                                     ; $5844: $3e $07
    rst $18                                       ; $5846: $df
    ld [hl-], a                                   ; $5847: $32
    ld a, [bc]                                    ; $5848: $0a
    ld a, $05                                     ; $5849: $3e $05
    rst $18                                       ; $584b: $df
    inc [hl]                                      ; $584c: $34
    ld a, [bc]                                    ; $584d: $0a
    call Call_033_5912                            ; $584e: $cd $12 $59
    rst $08                                       ; $5851: $cf
    sbc h                                         ; $5852: $9c
    push af                                       ; $5853: $f5
    ld a, $2d                                     ; $5854: $3e $2d
    rst $18                                       ; $5856: $df
    inc b                                         ; $5857: $04
    ld a, [bc]                                    ; $5858: $0a
    pop af                                        ; $5859: $f1
    ld a, $00                                     ; $585a: $3e $00
    ld b, $00                                     ; $585c: $06 $00
    rst $18                                       ; $585e: $df
    ld b, [hl]                                    ; $585f: $46
    ld a, [bc]                                    ; $5860: $0a
    push af                                       ; $5861: $f5
    ld a, $14                                     ; $5862: $3e $14
    rst $18                                       ; $5864: $df
    inc b                                         ; $5865: $04
    ld a, [bc]                                    ; $5866: $0a
    pop af                                        ; $5867: $f1
    ld c, $02                                     ; $5868: $0e $02
    call Call_000_25a1                            ; $586a: $cd $a1 $25
    call Call_000_2625                            ; $586d: $cd $25 $26
    ld a, $01                                     ; $5870: $3e $01
    ld [$c441], a                                 ; $5872: $ea $41 $c4
    ret                                           ; $5875: $c9


    rst $08                                       ; $5876: $cf
    sbc c                                         ; $5877: $99
    ld a, $02                                     ; $5878: $3e $02
    ld [$c441], a                                 ; $587a: $ea $41 $c4
    ret                                           ; $587d: $c9


    ld bc, $00ff                                  ; $587e: $01 $ff $00
    nop                                           ; $5881: $00
    and [hl]                                      ; $5882: $a6
    ld d, a                                       ; $5883: $57
    nop                                           ; $5884: $00
    nop                                           ; $5885: $00
    ld [bc], a                                    ; $5886: $02
    ld b, b                                       ; $5887: $40
    nop                                           ; $5888: $00
    nop                                           ; $5889: $00
    halt                                          ; $588a: $76
    ld e, b                                       ; $588b: $58
    nop                                           ; $588c: $00
    nop                                           ; $588d: $00
    rst $38                                       ; $588e: $ff
    rst $20                                       ; $588f: $e7
    and b                                         ; $5890: $a0
    rrca                                          ; $5891: $0f
    xor a                                         ; $5892: $af
    ld hl, $c4b4                                  ; $5893: $21 $b4 $c4
    ld [hl+], a                                   ; $5896: $22
    ld [hl+], a                                   ; $5897: $22
    ret                                           ; $5898: $c9


Call_033_5899:
    ld b, $15                                     ; $5899: $06 $15
    ld c, $0b                                     ; $589b: $0e $0b
    ld d, $09                                     ; $589d: $16 $09
    ld e, $0b                                     ; $589f: $1e $0b
    ld h, $04                                     ; $58a1: $26 $04
    ld l, $04                                     ; $58a3: $2e $04
    rst $18                                       ; $58a5: $df
    ld a, [bc]                                    ; $58a6: $0a
    dec bc                                        ; $58a7: $0b
    rst $08                                       ; $58a8: $cf
    sbc d                                         ; $58a9: $9a
    push af                                       ; $58aa: $f5
    ld a, $1e                                     ; $58ab: $3e $1e
    rst $18                                       ; $58ad: $df
    inc b                                         ; $58ae: $04
    ld a, [bc]                                    ; $58af: $0a
    pop af                                        ; $58b0: $f1
    ld b, $1a                                     ; $58b1: $06 $1a
    ld c, $0b                                     ; $58b3: $0e $0b
    ld d, $09                                     ; $58b5: $16 $09
    ld e, $0b                                     ; $58b7: $1e $0b
    ld h, $04                                     ; $58b9: $26 $04
    ld l, $04                                     ; $58bb: $2e $04
    rst $18                                       ; $58bd: $df
    ld a, [bc]                                    ; $58be: $0a
    dec bc                                        ; $58bf: $0b
    rst $08                                       ; $58c0: $cf
    sbc d                                         ; $58c1: $9a
    push af                                       ; $58c2: $f5
    ld a, $1e                                     ; $58c3: $3e $1e
    rst $18                                       ; $58c5: $df
    inc b                                         ; $58c6: $04
    ld a, [bc]                                    ; $58c7: $0a
    pop af                                        ; $58c8: $f1
    ld b, $1f                                     ; $58c9: $06 $1f
    ld c, $0b                                     ; $58cb: $0e $0b
    ld d, $09                                     ; $58cd: $16 $09
    ld e, $0b                                     ; $58cf: $1e $0b
    ld h, $04                                     ; $58d1: $26 $04
    ld l, $04                                     ; $58d3: $2e $04
    rst $18                                       ; $58d5: $df
    ld a, [bc]                                    ; $58d6: $0a
    dec bc                                        ; $58d7: $0b
    rst $08                                       ; $58d8: $cf
    sbc d                                         ; $58d9: $9a
    push af                                       ; $58da: $f5
    ld a, $1e                                     ; $58db: $3e $1e
    rst $18                                       ; $58dd: $df
    inc b                                         ; $58de: $04
    ld a, [bc]                                    ; $58df: $0a
    pop af                                        ; $58e0: $f1
    ld b, $24                                     ; $58e1: $06 $24
    ld c, $0b                                     ; $58e3: $0e $0b
    ld d, $09                                     ; $58e5: $16 $09
    ld e, $0b                                     ; $58e7: $1e $0b
    ld h, $04                                     ; $58e9: $26 $04
    ld l, $04                                     ; $58eb: $2e $04
    rst $18                                       ; $58ed: $df
    ld a, [bc]                                    ; $58ee: $0a
    dec bc                                        ; $58ef: $0b
    rst $08                                       ; $58f0: $cf
    sbc d                                         ; $58f1: $9a
    push af                                       ; $58f2: $f5
    ld a, $1e                                     ; $58f3: $3e $1e
    rst $18                                       ; $58f5: $df
    inc b                                         ; $58f6: $04
    ld a, [bc]                                    ; $58f7: $0a
    pop af                                        ; $58f8: $f1
    ld b, $29                                     ; $58f9: $06 $29
    ld c, $0b                                     ; $58fb: $0e $0b
    ld d, $09                                     ; $58fd: $16 $09
    ld e, $0b                                     ; $58ff: $1e $0b
    ld h, $04                                     ; $5901: $26 $04
    ld l, $04                                     ; $5903: $2e $04
    rst $18                                       ; $5905: $df
    ld a, [bc]                                    ; $5906: $0a
    dec bc                                        ; $5907: $0b
    rst $08                                       ; $5908: $cf
    sbc d                                         ; $5909: $9a
    push af                                       ; $590a: $f5
    ld a, $0f                                     ; $590b: $3e $0f
    rst $18                                       ; $590d: $df
    inc b                                         ; $590e: $04
    ld a, [bc]                                    ; $590f: $0a
    pop af                                        ; $5910: $f1
    ret                                           ; $5911: $c9


Call_033_5912:
    ld b, $15                                     ; $5912: $06 $15
    ld c, $10                                     ; $5914: $0e $10
    ld d, $09                                     ; $5916: $16 $09
    ld e, $09                                     ; $5918: $1e $09
    ld h, $04                                     ; $591a: $26 $04
    ld l, $06                                     ; $591c: $2e $06
    rst $18                                       ; $591e: $df
    ld a, [bc]                                    ; $591f: $0a
    dec bc                                        ; $5920: $0b
    ld a, $00                                     ; $5921: $3e $00
    ld bc, $0b00                                  ; $5923: $01 $00 $0b
    ld de, $0a80                                  ; $5926: $11 $80 $0a
    rst $18                                       ; $5929: $df
    ld [hl+], a                                   ; $592a: $22
    ld a, [bc]                                    ; $592b: $0a
    rst $08                                       ; $592c: $cf
    sbc e                                         ; $592d: $9b
    push af                                       ; $592e: $f5
    ld a, $14                                     ; $592f: $3e $14
    rst $18                                       ; $5931: $df
    inc b                                         ; $5932: $04
    ld a, [bc]                                    ; $5933: $0a
    pop af                                        ; $5934: $f1
    ld a, $00                                     ; $5935: $3e $00
    ld bc, $001a                                  ; $5937: $01 $1a $00
    rst $18                                       ; $593a: $df
    ld d, $0a                                     ; $593b: $16 $0a
    ld a, $05                                     ; $593d: $3e $05
    ld bc, $001a                                  ; $593f: $01 $1a $00
    rst $18                                       ; $5942: $df
    ld d, $0a                                     ; $5943: $16 $0a
    ld a, $00                                     ; $5945: $3e $00
    ld b, $02                                     ; $5947: $06 $02
    rst $18                                       ; $5949: $df
    ld b, [hl]                                    ; $594a: $46
    ld a, [bc]                                    ; $594b: $0a
    ld a, $00                                     ; $594c: $3e $00
    ld bc, $0b00                                  ; $594e: $01 $00 $0b
    ld de, $0100                                  ; $5951: $11 $00 $01
    rst $18                                       ; $5954: $df
    ld [hl+], a                                   ; $5955: $22
    ld a, [bc]                                    ; $5956: $0a
    ld b, $1a                                     ; $5957: $06 $1a
    ld c, $10                                     ; $5959: $0e $10
    ld d, $09                                     ; $595b: $16 $09
    ld e, $09                                     ; $595d: $1e $09
    ld h, $04                                     ; $595f: $26 $04
    ld l, $06                                     ; $5961: $2e $06
    rst $18                                       ; $5963: $df
    ld a, [bc]                                    ; $5964: $0a
    dec bc                                        ; $5965: $0b
    ld b, $1f                                     ; $5966: $06 $1f
    ld c, $10                                     ; $5968: $0e $10
    ld d, $09                                     ; $596a: $16 $09
    ld e, $09                                     ; $596c: $1e $09
    ld h, $04                                     ; $596e: $26 $04
    ld l, $06                                     ; $5970: $2e $06
    rst $18                                       ; $5972: $df
    ld a, [bc]                                    ; $5973: $0a
    dec bc                                        ; $5974: $0b
    ld a, $05                                     ; $5975: $3e $05
    ld b, $01                                     ; $5977: $06 $01
    rst $18                                       ; $5979: $df
    ld a, [hl+]                                   ; $597a: $2a
    ld a, [bc]                                    ; $597b: $0a
    rst $08                                       ; $597c: $cf
    adc c                                         ; $597d: $89
    ld a, $05                                     ; $597e: $3e $05
    ld de, $ff40                                  ; $5980: $11 $40 $ff
    rst $18                                       ; $5983: $df
    ld b, b                                       ; $5984: $40
    ld a, [bc]                                    ; $5985: $0a
    ld a, $05                                     ; $5986: $3e $05
    ld bc, $0b00                                  ; $5988: $01 $00 $0b
    ld de, $1200                                  ; $598b: $11 $00 $12
    rst $18                                       ; $598e: $df
    ld [hl+], a                                   ; $598f: $22
    ld a, [bc]                                    ; $5990: $0a
    ld a, $05                                     ; $5991: $3e $05
    rst $18                                       ; $5993: $df
    ld e, $0a                                     ; $5994: $1e $0a
    ld a, $00                                     ; $5996: $3e $00
    ld bc, $0010                                  ; $5998: $01 $10 $00
    rst $18                                       ; $599b: $df
    ld d, $0a                                     ; $599c: $16 $0a
    ld a, $00                                     ; $599e: $3e $00
    ld b, a                                       ; $59a0: $47
    ld a, $0a                                     ; $59a1: $3e $0a
    rst $18                                       ; $59a3: $df
    ld [hl-], a                                   ; $59a4: $32
    ld a, [bc]                                    ; $59a5: $0a
    ld b, $24                                     ; $59a6: $06 $24
    ld c, $10                                     ; $59a8: $0e $10
    ld d, $09                                     ; $59aa: $16 $09
    ld e, $09                                     ; $59ac: $1e $09
    ld h, $04                                     ; $59ae: $26 $04
    ld l, $06                                     ; $59b0: $2e $06
    rst $18                                       ; $59b2: $df
    ld a, [bc]                                    ; $59b3: $0a
    dec bc                                        ; $59b4: $0b
    push af                                       ; $59b5: $f5
    ld a, $05                                     ; $59b6: $3e $05
    rst $18                                       ; $59b8: $df
    inc b                                         ; $59b9: $04
    ld a, [bc]                                    ; $59ba: $0a
    pop af                                        ; $59bb: $f1
    ld b, $29                                     ; $59bc: $06 $29
    ld c, $10                                     ; $59be: $0e $10
    ld d, $09                                     ; $59c0: $16 $09
    ld e, $09                                     ; $59c2: $1e $09
    ld h, $04                                     ; $59c4: $26 $04
    ld l, $06                                     ; $59c6: $2e $06
    rst $18                                       ; $59c8: $df
    ld a, [bc]                                    ; $59c9: $0a
    dec bc                                        ; $59ca: $0b
    push af                                       ; $59cb: $f5
    ld a, $0a                                     ; $59cc: $3e $0a
    rst $18                                       ; $59ce: $df
    inc b                                         ; $59cf: $04
    ld a, [bc]                                    ; $59d0: $0a
    pop af                                        ; $59d1: $f1
    ret                                           ; $59d2: $c9


    nop                                           ; $59d3: $00
    nop                                           ; $59d4: $00
    nop                                           ; $59d5: $00
    nop                                           ; $59d6: $00
    nop                                           ; $59d7: $00
    nop                                           ; $59d8: $00
    nop                                           ; $59d9: $00
    nop                                           ; $59da: $00
    nop                                           ; $59db: $00
    nop                                           ; $59dc: $00
    nop                                           ; $59dd: $00
    nop                                           ; $59de: $00
    nop                                           ; $59df: $00
    xor b                                         ; $59e0: $a8
    stop                                          ; $59e1: $10 $00
    nop                                           ; $59e3: $00
    xor l                                         ; $59e4: $ad
    dec [hl]                                      ; $59e5: $35
    sub h                                         ; $59e6: $94
    ld c, [hl]                                    ; $59e7: $4e
    xor b                                         ; $59e8: $a8
    stop                                          ; $59e9: $10 $00
    nop                                           ; $59eb: $00
    xor l                                         ; $59ec: $ad
    dec [hl]                                      ; $59ed: $35
    sub h                                         ; $59ee: $94
    ld c, [hl]                                    ; $59ef: $4e
    ret nz                                        ; $59f0: $c0

    ld a, [hl]                                    ; $59f1: $7e
    nop                                           ; $59f2: $00
    jr jr_033_5a55                                ; $59f3: $18 $60

    ld [bc], a                                    ; $59f5: $02
    rst $38                                       ; $59f6: $ff
    ld a, a                                       ; $59f7: $7f
    rra                                           ; $59f8: $1f
    ld c, h                                       ; $59f9: $4c
    nop                                           ; $59fa: $00
    jr jr_033_5a5d                                ; $59fb: $18 $60

    ld [bc], a                                    ; $59fd: $02
    rst $38                                       ; $59fe: $ff
    ld a, a                                       ; $59ff: $7f
    ccf                                           ; $5a00: $3f
    ld [bc], a                                    ; $5a01: $02
    nop                                           ; $5a02: $00
    jr jr_033_5a65                                ; $5a03: $18 $60

    ld [bc], a                                    ; $5a05: $02
    rst $38                                       ; $5a06: $ff
    ld a, a                                       ; $5a07: $7f
    cp l                                          ; $5a08: $bd
    inc bc                                        ; $5a09: $03
    nop                                           ; $5a0a: $00
    jr @+$62                                      ; $5a0b: $18 $60

    ld [bc], a                                    ; $5a0d: $02
    rst $38                                       ; $5a0e: $ff
    ld a, a                                       ; $5a0f: $7f
    ret nz                                        ; $5a10: $c0

    ld d, $00                                     ; $5a11: $16 $00
    jr jr_033_5a75                                ; $5a13: $18 $60

    ld [bc], a                                    ; $5a15: $02
    rst $38                                       ; $5a16: $ff
    ld a, a                                       ; $5a17: $7f
    xor b                                         ; $5a18: $a8
    stop                                          ; $5a19: $10 $00
    nop                                           ; $5a1b: $00
    xor l                                         ; $5a1c: $ad
    dec [hl]                                      ; $5a1d: $35
    sub h                                         ; $5a1e: $94
    ld c, [hl]                                    ; $5a1f: $4e
    xor b                                         ; $5a20: $a8
    stop                                          ; $5a21: $10 $00
    nop                                           ; $5a23: $00
    xor l                                         ; $5a24: $ad
    dec [hl]                                      ; $5a25: $35
    sub h                                         ; $5a26: $94
    ld c, [hl]                                    ; $5a27: $4e
    xor b                                         ; $5a28: $a8
    stop                                          ; $5a29: $10 $00
    nop                                           ; $5a2b: $00
    xor l                                         ; $5a2c: $ad
    dec [hl]                                      ; $5a2d: $35
    sub h                                         ; $5a2e: $94
    ld c, [hl]                                    ; $5a2f: $4e
    jp hl                                         ; $5a30: $e9


    ld a, a                                       ; $5a31: $7f
    xor h                                         ; $5a32: $ac
    ld b, b                                       ; $5a33: $40
    nop                                           ; $5a34: $00
    inc bc                                        ; $5a35: $03
    rst $38                                       ; $5a36: $ff
    ld a, a                                       ; $5a37: $7f
    ccf                                           ; $5a38: $3f
    ld d, $17                                     ; $5a39: $16 $17
    ld bc, $0300                                  ; $5a3b: $01 $00 $03
    ld l, d                                       ; $5a3e: $6a
    jr c, jr_033_5a60                             ; $5a3f: $38 $1f

    inc bc                                        ; $5a41: $03
    inc a                                         ; $5a42: $3c
    ld [bc], a                                    ; $5a43: $02
    nop                                           ; $5a44: $00
    inc bc                                        ; $5a45: $03
    di                                            ; $5a46: $f3
    inc bc                                        ; $5a47: $03
    rst $38                                       ; $5a48: $ff
    ld a, a                                       ; $5a49: $7f
    ld b, b                                       ; $5a4a: $40
    ld bc, $0300                                  ; $5a4b: $01 $00 $03
    di                                            ; $5a4e: $f3
    inc bc                                        ; $5a4f: $03
    ld d, $01                                     ; $5a50: $16 $01
    nop                                           ; $5a52: $00
    ld [bc], a                                    ; $5a53: $02
    nop                                           ; $5a54: $00

jr_033_5a55:
    inc bc                                        ; $5a55: $03
    ld c, c                                       ; $5a56: $49
    inc [hl]                                      ; $5a57: $34
    xor b                                         ; $5a58: $a8
    stop                                          ; $5a59: $10 $00
    nop                                           ; $5a5b: $00
    xor l                                         ; $5a5c: $ad

jr_033_5a5d:
    dec [hl]                                      ; $5a5d: $35
    sub h                                         ; $5a5e: $94
    ld c, [hl]                                    ; $5a5f: $4e

jr_033_5a60:
    ld a, $00                                     ; $5a60: $3e $00
    ld [$c3e0], a                                 ; $5a62: $ea $e0 $c3

jr_033_5a65:
    ld hl, $5a30                                  ; $5a65: $21 $30 $5a
    ld de, $0203                                  ; $5a68: $11 $03 $02
    call Call_000_056c                            ; $5a6b: $cd $6c $05
    push af                                       ; $5a6e: $f5
    ld a, $05                                     ; $5a6f: $3e $05
    rst $18                                       ; $5a71: $df
    inc b                                         ; $5a72: $04
    ld a, [bc]                                    ; $5a73: $0a
    pop af                                        ; $5a74: $f1

jr_033_5a75:
    ld a, [$c3e0]                                 ; $5a75: $fa $e0 $c3
    cp $03                                        ; $5a78: $fe $03
    jr z, jr_033_5ac5                             ; $5a7a: $28 $49

    ld hl, $59f0                                  ; $5a7c: $21 $f0 $59
    ld de, $0203                                  ; $5a7f: $11 $03 $02
    call Call_000_056c                            ; $5a82: $cd $6c $05
    push af                                       ; $5a85: $f5
    ld a, $05                                     ; $5a86: $3e $05
    rst $18                                       ; $5a88: $df
    inc b                                         ; $5a89: $04
    ld a, [bc]                                    ; $5a8a: $0a
    pop af                                        ; $5a8b: $f1
    ld hl, $59f8                                  ; $5a8c: $21 $f8 $59
    ld de, $0203                                  ; $5a8f: $11 $03 $02
    call Call_000_056c                            ; $5a92: $cd $6c $05
    push af                                       ; $5a95: $f5
    ld a, $05                                     ; $5a96: $3e $05
    rst $18                                       ; $5a98: $df
    inc b                                         ; $5a99: $04
    ld a, [bc]                                    ; $5a9a: $0a
    pop af                                        ; $5a9b: $f1
    ld hl, $5a00                                  ; $5a9c: $21 $00 $5a
    ld de, $0203                                  ; $5a9f: $11 $03 $02
    call Call_000_056c                            ; $5aa2: $cd $6c $05
    push af                                       ; $5aa5: $f5
    ld a, $05                                     ; $5aa6: $3e $05
    rst $18                                       ; $5aa8: $df
    inc b                                         ; $5aa9: $04
    ld a, [bc]                                    ; $5aaa: $0a
    pop af                                        ; $5aab: $f1
    ld hl, $5a08                                  ; $5aac: $21 $08 $5a
    ld de, $0203                                  ; $5aaf: $11 $03 $02
    call Call_000_056c                            ; $5ab2: $cd $6c $05
    push af                                       ; $5ab5: $f5
    ld a, $05                                     ; $5ab6: $3e $05
    rst $18                                       ; $5ab8: $df
    inc b                                         ; $5ab9: $04
    ld a, [bc]                                    ; $5aba: $0a
    pop af                                        ; $5abb: $f1
    ld a, [$c3e0]                                 ; $5abc: $fa $e0 $c3
    inc a                                         ; $5abf: $3c
    ld [$c3e0], a                                 ; $5ac0: $ea $e0 $c3
    jr jr_033_5a65                                ; $5ac3: $18 $a0

jr_033_5ac5:
    ret                                           ; $5ac5: $c9


    add l                                         ; $5ac6: $85
    ld e, e                                       ; $5ac7: $5b
    or b                                          ; $5ac8: $b0
    ld e, e                                       ; $5ac9: $5b
    call nc, Call_033_6b5a                        ; $5aca: $d4 $5a $6b
    ld e, [hl]                                    ; $5acd: $5e
    inc b                                         ; $5ace: $04
    ld e, a                                       ; $5acf: $5f
    add hl, sp                                    ; $5ad0: $39
    ld e, a                                       ; $5ad1: $5f
    ld b, d                                       ; $5ad2: $42
    ld e, a                                       ; $5ad3: $5f
    db $dd                                        ; $5ad4: $dd
    ld a, e                                       ; $5ad5: $7b
    nop                                           ; $5ad6: $00
    inc d                                         ; $5ad7: $14
    nop                                           ; $5ad8: $00
    ld a, [bc]                                    ; $5ad9: $0a
    nop                                           ; $5ada: $00
    nop                                           ; $5adb: $00
    nop                                           ; $5adc: $00
    ld b, b                                       ; $5add: $40
    ld bc, $dd11                                  ; $5ade: $01 $11 $dd
    ld a, e                                       ; $5ae1: $7b
    nop                                           ; $5ae2: $00
    ld de, $1300                                  ; $5ae3: $11 $00 $13
    nop                                           ; $5ae6: $00
    nop                                           ; $5ae7: $00
    nop                                           ; $5ae8: $00
    ret nz                                        ; $5ae9: $c0

    ld bc, $dd13                                  ; $5aea: $01 $13 $dd
    ld a, e                                       ; $5aed: $7b
    nop                                           ; $5aee: $00
    rla                                           ; $5aef: $17
    nop                                           ; $5af0: $00
    inc de                                        ; $5af1: $13
    nop                                           ; $5af2: $00
    nop                                           ; $5af3: $00
    nop                                           ; $5af4: $00
    ret nz                                        ; $5af5: $c0

    ld bc, $dd13                                  ; $5af6: $01 $13 $dd
    ld a, e                                       ; $5af9: $7b
    nop                                           ; $5afa: $00
    add hl, bc                                    ; $5afb: $09
    nop                                           ; $5afc: $00
    dec bc                                        ; $5afd: $0b
    nop                                           ; $5afe: $00
    nop                                           ; $5aff: $00
    nop                                           ; $5b00: $00
    ld b, b                                       ; $5b01: $40
    ld bc, $dd13                                  ; $5b02: $01 $13 $dd
    ld a, e                                       ; $5b05: $7b
    nop                                           ; $5b06: $00
    rra                                           ; $5b07: $1f
    nop                                           ; $5b08: $00
    add hl, bc                                    ; $5b09: $09
    nop                                           ; $5b0a: $00
    nop                                           ; $5b0b: $00
    nop                                           ; $5b0c: $00
    ld b, b                                       ; $5b0d: $40
    ld bc, $dd13                                  ; $5b0e: $01 $13 $dd
    ld a, e                                       ; $5b11: $7b
    nop                                           ; $5b12: $00
    ld [de], a                                    ; $5b13: $12
    nop                                           ; $5b14: $00
    ld a, [bc]                                    ; $5b15: $0a
    nop                                           ; $5b16: $00
    nop                                           ; $5b17: $00
    nop                                           ; $5b18: $00
    ld b, b                                       ; $5b19: $40
    ld bc, $dd08                                  ; $5b1a: $01 $08 $dd
    ld a, e                                       ; $5b1d: $7b
    nop                                           ; $5b1e: $00
    stop                                          ; $5b1f: $10 $00
    inc c                                         ; $5b21: $0c
    nop                                           ; $5b22: $00
    nop                                           ; $5b23: $00
    nop                                           ; $5b24: $00
    nop                                           ; $5b25: $00
    ld bc, $dd09                                  ; $5b26: $01 $09 $dd
    ld a, e                                       ; $5b29: $7b
    nop                                           ; $5b2a: $00
    jr jr_033_5b2d                                ; $5b2b: $18 $00

jr_033_5b2d:
    inc c                                         ; $5b2d: $0c
    nop                                           ; $5b2e: $00
    nop                                           ; $5b2f: $00
    nop                                           ; $5b30: $00
    add b                                         ; $5b31: $80
    ld bc, $dd1a                                  ; $5b32: $01 $1a $dd
    ld a, e                                       ; $5b35: $7b
    nop                                           ; $5b36: $00
    ld a, [de]                                    ; $5b37: $1a
    nop                                           ; $5b38: $00
    stop                                          ; $5b39: $10 $00
    nop                                           ; $5b3b: $00
    nop                                           ; $5b3c: $00
    add b                                         ; $5b3d: $80
    ld bc, $dd12                                  ; $5b3e: $01 $12 $dd
    ld a, e                                       ; $5b41: $7b
    nop                                           ; $5b42: $00
    ld a, [de]                                    ; $5b43: $1a
    nop                                           ; $5b44: $00
    ld c, $00                                     ; $5b45: $0e $00
    nop                                           ; $5b47: $00
    nop                                           ; $5b48: $00
    add b                                         ; $5b49: $80
    ld bc, $dd1b                                  ; $5b4a: $01 $1b $dd
    ld a, e                                       ; $5b4d: $7b
    nop                                           ; $5b4e: $00
    ld c, $00                                     ; $5b4f: $0e $00
    rrca                                          ; $5b51: $0f
    nop                                           ; $5b52: $00
    nop                                           ; $5b53: $00
    nop                                           ; $5b54: $00
    nop                                           ; $5b55: $00
    ld bc, $dd1c                                  ; $5b56: $01 $1c $dd
    ld a, e                                       ; $5b59: $7b
    nop                                           ; $5b5a: $00
    ld de, $1d00                                  ; $5b5b: $11 $00 $1d
    nop                                           ; $5b5e: $00
    nop                                           ; $5b5f: $00
    nop                                           ; $5b60: $00
    ret nz                                        ; $5b61: $c0

    ld bc, $dd19                                  ; $5b62: $01 $19 $dd
    ld a, e                                       ; $5b65: $7b
    nop                                           ; $5b66: $00
    dec d                                         ; $5b67: $15
    nop                                           ; $5b68: $00
    dec e                                         ; $5b69: $1d
    nop                                           ; $5b6a: $00
    nop                                           ; $5b6b: $00
    nop                                           ; $5b6c: $00
    ret nz                                        ; $5b6d: $c0

    ld bc, $dd26                                  ; $5b6e: $01 $26 $dd
    ld a, e                                       ; $5b71: $7b
    nop                                           ; $5b72: $00
    ld bc, $2500                                  ; $5b73: $01 $00 $25
    sbc [hl]                                      ; $5b76: $9e
    nop                                           ; $5b77: $00
    nop                                           ; $5b78: $00
    ret nz                                        ; $5b79: $c0

    ld bc, $000f                                  ; $5b7a: $01 $0f $00
    nop                                           ; $5b7d: $00
    nop                                           ; $5b7e: $00
    nop                                           ; $5b7f: $00
    nop                                           ; $5b80: $00
    nop                                           ; $5b81: $00
    nop                                           ; $5b82: $00
    nop                                           ; $5b83: $00
    rst $38                                       ; $5b84: $ff
    ld bc, $0040                                  ; $5b85: $01 $40 $00
    inc d                                         ; $5b88: $14
    nop                                           ; $5b89: $00
    add hl, bc                                    ; $5b8a: $09
    ld [bc], a                                    ; $5b8b: $02
    ld b, b                                       ; $5b8c: $40
    nop                                           ; $5b8d: $00
    rra                                           ; $5b8e: $1f
    nop                                           ; $5b8f: $00
    dec bc                                        ; $5b90: $0b
    inc bc                                        ; $5b91: $03
    ld b, b                                       ; $5b92: $40
    nop                                           ; $5b93: $00
    inc d                                         ; $5b94: $14
    nop                                           ; $5b95: $00
    rrca                                          ; $5b96: $0f
    ld b, $40                                     ; $5b97: $06 $40
    nop                                           ; $5b99: $00
    inc d                                         ; $5b9a: $14
    nop                                           ; $5b9b: $00
    ld d, $0a                                     ; $5b9c: $16 $0a
    ld b, b                                       ; $5b9e: $40
    nop                                           ; $5b9f: $00
    inc d                                         ; $5ba0: $14
    nop                                           ; $5ba1: $00
    ld d, $0b                                     ; $5ba2: $16 $0b
    ld b, b                                       ; $5ba4: $40
    nop                                           ; $5ba5: $00
    inc d                                         ; $5ba6: $14
    nop                                           ; $5ba7: $00
    ld d, $0c                                     ; $5ba8: $16 $0c
    ld b, b                                       ; $5baa: $40
    nop                                           ; $5bab: $00
    inc d                                         ; $5bac: $14
    nop                                           ; $5bad: $00
    ld d, $ff                                     ; $5bae: $16 $ff
    ld bc, $00ff                                  ; $5bb0: $01 $ff $00
    nop                                           ; $5bb3: $00
    nop                                           ; $5bb4: $00
    nop                                           ; $5bb5: $00
    ld [bc], a                                    ; $5bb6: $02
    dec b                                         ; $5bb7: $05
    ld [bc], a                                    ; $5bb8: $02
    rst $38                                       ; $5bb9: $ff
    nop                                           ; $5bba: $00
    nop                                           ; $5bbb: $00
    nop                                           ; $5bbc: $00
    nop                                           ; $5bbd: $00
    nop                                           ; $5bbe: $00
    ld [bc], a                                    ; $5bbf: $02
    inc bc                                        ; $5bc0: $03
    rst $38                                       ; $5bc1: $ff
    nop                                           ; $5bc2: $00
    nop                                           ; $5bc3: $00
    nop                                           ; $5bc4: $00
    nop                                           ; $5bc5: $00
    nop                                           ; $5bc6: $00
    inc bc                                        ; $5bc7: $03
    dec b                                         ; $5bc8: $05
    rst $38                                       ; $5bc9: $ff
    nop                                           ; $5bca: $00
    nop                                           ; $5bcb: $00
    nop                                           ; $5bcc: $00
    nop                                           ; $5bcd: $00
    dec e                                         ; $5bce: $1d
    inc bc                                        ; $5bcf: $03
    rst $38                                       ; $5bd0: $ff
    rst $08                                       ; $5bd1: $cf
    adc d                                         ; $5bd2: $8a
    ld a, $00                                     ; $5bd3: $3e $00
    ld de, $ff40                                  ; $5bd5: $11 $40 $ff
    rst $18                                       ; $5bd8: $df
    ld b, b                                       ; $5bd9: $40
    ld a, [bc]                                    ; $5bda: $0a
    push af                                       ; $5bdb: $f5
    ld a, $05                                     ; $5bdc: $3e $05
    rst $18                                       ; $5bde: $df
    inc b                                         ; $5bdf: $04
    ld a, [bc]                                    ; $5be0: $0a
    pop af                                        ; $5be1: $f1
    ld a, $00                                     ; $5be2: $3e $00
    ld bc, $1500                                  ; $5be4: $01 $00 $15
    ld de, $1d00                                  ; $5be7: $11 $00 $1d
    rst $18                                       ; $5bea: $df
    ld [hl+], a                                   ; $5beb: $22
    ld a, [bc]                                    ; $5bec: $0a
    ld a, $00                                     ; $5bed: $3e $00
    rst $18                                       ; $5bef: $df
    ld e, $0a                                     ; $5bf0: $1e $0a
    ld a, $00                                     ; $5bf2: $3e $00
    ld bc, $3f00                                  ; $5bf4: $01 $00 $3f
    ld de, $3f00                                  ; $5bf7: $11 $00 $3f
    rst $18                                       ; $5bfa: $df
    jr nz, jr_033_5c07                            ; $5bfb: $20 $0a

    call Call_033_5f25                            ; $5bfd: $cd $25 $5f
    ret                                           ; $5c00: $c9


    ld a, $02                                     ; $5c01: $3e $02
    ld b, a                                       ; $5c03: $47
    ld a, $05                                     ; $5c04: $3e $05
    rst $18                                       ; $5c06: $df

jr_033_5c07:
    ld [hl-], a                                   ; $5c07: $32
    ld a, [bc]                                    ; $5c08: $0a
    ld a, $02                                     ; $5c09: $3e $02
    rst $18                                       ; $5c0b: $df
    inc [hl]                                      ; $5c0c: $34
    ld a, [bc]                                    ; $5c0d: $0a
    ld a, $00                                     ; $5c0e: $3e $00
    ld bc, $1600                                  ; $5c10: $01 $00 $16
    ld de, $0840                                  ; $5c13: $11 $40 $08
    rst $18                                       ; $5c16: $df
    ld [hl+], a                                   ; $5c17: $22
    ld a, [bc]                                    ; $5c18: $0a
    ld a, $00                                     ; $5c19: $3e $00
    rst $18                                       ; $5c1b: $df
    ld e, $0a                                     ; $5c1c: $1e $0a
    ld a, $00                                     ; $5c1e: $3e $00
    ld bc, $1600                                  ; $5c20: $01 $00 $16
    ld de, $0d00                                  ; $5c23: $11 $00 $0d
    rst $18                                       ; $5c26: $df
    ld [hl+], a                                   ; $5c27: $22
    ld a, [bc]                                    ; $5c28: $0a
    ld a, $00                                     ; $5c29: $3e $00
    rst $18                                       ; $5c2b: $df
    ld e, $0a                                     ; $5c2c: $1e $0a
    ld a, $02                                     ; $5c2e: $3e $02
    ld b, $40                                     ; $5c30: $06 $40
    rst $18                                       ; $5c32: $df
    inc l                                         ; $5c33: $2c
    ld a, [bc]                                    ; $5c34: $0a
    ld a, $00                                     ; $5c35: $3e $00
    ld bc, $1400                                  ; $5c37: $01 $00 $14
    ld de, $0d00                                  ; $5c3a: $11 $00 $0d
    rst $18                                       ; $5c3d: $df
    ld [hl+], a                                   ; $5c3e: $22
    ld a, [bc]                                    ; $5c3f: $0a
    ld a, $00                                     ; $5c40: $3e $00
    rst $18                                       ; $5c42: $df
    ld e, $0a                                     ; $5c43: $1e $0a
    ld a, $02                                     ; $5c45: $3e $02
    ld b, a                                       ; $5c47: $47
    ld a, $00                                     ; $5c48: $3e $00
    rst $18                                       ; $5c4a: $df
    ld l, $0a                                     ; $5c4b: $2e $0a
    rst $30                                       ; $5c4d: $f7
    and b                                         ; $5c4e: $a0
    ld c, $20                                     ; $5c4f: $0e $20
    inc h                                         ; $5c51: $24
    rst $30                                       ; $5c52: $f7
    nop                                           ; $5c53: $00
    ld e, $28                                     ; $5c54: $1e $28
    ld c, a                                       ; $5c56: $4f
    rst $30                                       ; $5c57: $f7
    jr nz, @+$20                                  ; $5c58: $20 $1e

    jr z, @+$0f                                   ; $5c5a: $28 $0d

    ld hl, $1474                                  ; $5c5c: $21 $74 $14
    rst $18                                       ; $5c5f: $df
    ld c, $0a                                     ; $5c60: $0e $0a
    ld a, $02                                     ; $5c62: $3e $02
    rst $18                                       ; $5c64: $df
    ld [$180a], sp                                ; $5c65: $08 $0a $18
    jr nz, @-$07                                  ; $5c68: $20 $f7

    ld h, b                                       ; $5c6a: $60
    ld e, $28                                     ; $5c6b: $1e $28
    dec d                                         ; $5c6d: $15
    ld hl, $1470                                  ; $5c6e: $21 $70 $14
    rst $18                                       ; $5c71: $df
    ld c, $0a                                     ; $5c72: $0e $0a
    jr jr_033_5c89                                ; $5c74: $18 $13

    ld hl, $1474                                  ; $5c76: $21 $74 $14
    rst $18                                       ; $5c79: $df
    ld c, $0a                                     ; $5c7a: $0e $0a
    ld a, $02                                     ; $5c7c: $3e $02
    rst $18                                       ; $5c7e: $df
    ld [$180a], sp                                ; $5c7f: $08 $0a $18
    ld b, $21                                     ; $5c82: $06 $21
    ld [hl], d                                    ; $5c84: $72
    inc d                                         ; $5c85: $14
    rst $18                                       ; $5c86: $df
    ld c, $0a                                     ; $5c87: $0e $0a

jr_033_5c89:
    ld a, $02                                     ; $5c89: $3e $02
    rst $18                                       ; $5c8b: $df
    ld a, [bc]                                    ; $5c8c: $0a
    ld a, [bc]                                    ; $5c8d: $0a
    push af                                       ; $5c8e: $f5
    ld a, $0a                                     ; $5c8f: $3e $0a
    rst $18                                       ; $5c91: $df
    inc b                                         ; $5c92: $04
    ld a, [bc]                                    ; $5c93: $0a
    pop af                                        ; $5c94: $f1
    rst $18                                       ; $5c95: $df
    ld [de], a                                    ; $5c96: $12
    ld a, [bc]                                    ; $5c97: $0a
    rst $18                                       ; $5c98: $df
    inc c                                         ; $5c99: $0c
    ld a, [bc]                                    ; $5c9a: $0a
    push af                                       ; $5c9b: $f5
    ld a, $05                                     ; $5c9c: $3e $05
    rst $18                                       ; $5c9e: $df
    inc b                                         ; $5c9f: $04
    ld a, [bc]                                    ; $5ca0: $0a
    pop af                                        ; $5ca1: $f1
    and a                                         ; $5ca2: $a7
    jp nz, Jump_033_5caa                          ; $5ca3: $c2 $aa $5c

    call Call_033_66dc                            ; $5ca6: $cd $dc $66
    ret                                           ; $5ca9: $c9


Jump_033_5caa:
    ld a, $02                                     ; $5caa: $3e $02
    rst $18                                       ; $5cac: $df
    ld [$c90a], sp                                ; $5cad: $08 $0a $c9
    ld hl, $145a                                  ; $5cb0: $21 $5a $14
    rst $18                                       ; $5cb3: $df
    ld c, $0a                                     ; $5cb4: $0e $0a
    rst $30                                       ; $5cb6: $f7
    and b                                         ; $5cb7: $a0
    ld c, $28                                     ; $5cb8: $0e $28
    inc bc                                        ; $5cba: $03
    rst $18                                       ; $5cbb: $df
    db $10                                        ; $5cbc: $10
    ld a, [bc]                                    ; $5cbd: $0a
    ld a, $07                                     ; $5cbe: $3e $07
    rst $18                                       ; $5cc0: $df
    ld [$c90a], sp                                ; $5cc1: $08 $0a $c9
    ld hl, $1460                                  ; $5cc4: $21 $60 $14
    rst $18                                       ; $5cc7: $df
    ld c, $0a                                     ; $5cc8: $0e $0a
    rst $30                                       ; $5cca: $f7
    and b                                         ; $5ccb: $a0
    ld c, $20                                     ; $5ccc: $0e $20
    dec de                                        ; $5cce: $1b
    ld hl, $145e                                  ; $5ccf: $21 $5e $14
    rst $18                                       ; $5cd2: $df
    ld c, $0a                                     ; $5cd3: $0e $0a
    rst $30                                       ; $5cd5: $f7
    nop                                           ; $5cd6: $00
    ld e, $28                                     ; $5cd7: $1e $28
    db $10                                        ; $5cd9: $10
    rst $30                                       ; $5cda: $f7
    ld h, b                                       ; $5cdb: $60
    ld e, $20                                     ; $5cdc: $1e $20
    dec bc                                        ; $5cde: $0b
    rst $18                                       ; $5cdf: $df
    db $10                                        ; $5ce0: $10
    ld a, [bc]                                    ; $5ce1: $0a
    rst $30                                       ; $5ce2: $f7
    ld b, b                                       ; $5ce3: $40
    ld e, $20                                     ; $5ce4: $1e $20
    inc bc                                        ; $5ce6: $03
    rst $18                                       ; $5ce7: $df
    db $10                                        ; $5ce8: $10
    ld a, [bc]                                    ; $5ce9: $0a
    ld a, $08                                     ; $5cea: $3e $08
    rst $18                                       ; $5cec: $df
    ld [$c90a], sp                                ; $5ced: $08 $0a $c9
    ld hl, $145c                                  ; $5cf0: $21 $5c $14
    rst $18                                       ; $5cf3: $df
    ld c, $0a                                     ; $5cf4: $0e $0a
    ld a, $09                                     ; $5cf6: $3e $09
    rst $18                                       ; $5cf8: $df
    ld [$c90a], sp                                ; $5cf9: $08 $0a $c9
    rst $18                                       ; $5cfc: $df
    nop                                           ; $5cfd: $00
    ld a, [bc]                                    ; $5cfe: $0a
    ld hl, $145d                                  ; $5cff: $21 $5d $14
    rst $18                                       ; $5d02: $df
    ld c, $0a                                     ; $5d03: $0e $0a
    ld a, $0b                                     ; $5d05: $3e $0b
    rst $18                                       ; $5d07: $df
    ld [$df0a], sp                                ; $5d08: $08 $0a $df
    ld [bc], a                                    ; $5d0b: $02
    ld a, [bc]                                    ; $5d0c: $0a
    ret                                           ; $5d0d: $c9


    ld hl, $1459                                  ; $5d0e: $21 $59 $14
    rst $18                                       ; $5d11: $df
    ld c, $0a                                     ; $5d12: $0e $0a
    rst $08                                       ; $5d14: $cf
    sbc l                                         ; $5d15: $9d
    ld a, $83                                     ; $5d16: $3e $83
    rst $18                                       ; $5d18: $df
    ld [$c90a], sp                                ; $5d19: $08 $0a $c9
    ld hl, $1459                                  ; $5d1c: $21 $59 $14
    rst $18                                       ; $5d1f: $df
    ld c, $0a                                     ; $5d20: $0e $0a
    rst $08                                       ; $5d22: $cf
    sbc l                                         ; $5d23: $9d
    ld a, $81                                     ; $5d24: $3e $81
    rst $18                                       ; $5d26: $df
    ld [$c90a], sp                                ; $5d27: $08 $0a $c9
    ld hl, $1463                                  ; $5d2a: $21 $63 $14
    rst $18                                       ; $5d2d: $df
    ld c, $0a                                     ; $5d2e: $0e $0a
    rst $30                                       ; $5d30: $f7
    and b                                         ; $5d31: $a0
    ld c, $20                                     ; $5d32: $0e $20
    ld d, $21                                     ; $5d34: $16 $21
    ld h, c                                       ; $5d36: $61
    inc d                                         ; $5d37: $14
    rst $18                                       ; $5d38: $df
    ld c, $0a                                     ; $5d39: $0e $0a
    rst $30                                       ; $5d3b: $f7
    nop                                           ; $5d3c: $00
    ld e, $28                                     ; $5d3d: $1e $28
    dec bc                                        ; $5d3f: $0b
    rst $18                                       ; $5d40: $df
    db $10                                        ; $5d41: $10
    ld a, [bc]                                    ; $5d42: $0a
    rst $30                                       ; $5d43: $f7
    jr nz, @+$20                                  ; $5d44: $20 $1e

    jr z, jr_033_5d4b                             ; $5d46: $28 $03

    rst $18                                       ; $5d48: $df
    db $10                                        ; $5d49: $10
    ld a, [bc]                                    ; $5d4a: $0a

jr_033_5d4b:
    ld a, $0c                                     ; $5d4b: $3e $0c
    rst $18                                       ; $5d4d: $df
    ld [$c90a], sp                                ; $5d4e: $08 $0a $c9
    ld hl, $1464                                  ; $5d51: $21 $64 $14
    rst $18                                       ; $5d54: $df
    ld c, $0a                                     ; $5d55: $0e $0a
    rst $30                                       ; $5d57: $f7
    and b                                         ; $5d58: $a0
    ld c, $28                                     ; $5d59: $0e $28
    inc bc                                        ; $5d5b: $03
    rst $18                                       ; $5d5c: $df
    db $10                                        ; $5d5d: $10
    ld a, [bc]                                    ; $5d5e: $0a
    ld a, $05                                     ; $5d5f: $3e $05
    rst $18                                       ; $5d61: $df
    ld [$c90a], sp                                ; $5d62: $08 $0a $c9
    ld hl, $1466                                  ; $5d65: $21 $66 $14
    rst $18                                       ; $5d68: $df
    ld c, $0a                                     ; $5d69: $0e $0a
    rst $30                                       ; $5d6b: $f7
    and b                                         ; $5d6c: $a0
    ld c, $28                                     ; $5d6d: $0e $28
    inc bc                                        ; $5d6f: $03
    rst $18                                       ; $5d70: $df
    db $10                                        ; $5d71: $10
    ld a, [bc]                                    ; $5d72: $0a
    ld a, $04                                     ; $5d73: $3e $04
    rst $18                                       ; $5d75: $df
    ld [$c90a], sp                                ; $5d76: $08 $0a $c9
    ld hl, $1468                                  ; $5d79: $21 $68 $14
    rst $18                                       ; $5d7c: $df
    ld c, $0a                                     ; $5d7d: $0e $0a
    rst $30                                       ; $5d7f: $f7
    and b                                         ; $5d80: $a0
    ld c, $28                                     ; $5d81: $0e $28
    inc bc                                        ; $5d83: $03
    rst $18                                       ; $5d84: $df
    db $10                                        ; $5d85: $10
    ld a, [bc]                                    ; $5d86: $0a
    ld a, $05                                     ; $5d87: $3e $05
    rst $18                                       ; $5d89: $df
    ld [$c90a], sp                                ; $5d8a: $08 $0a $c9
    rst $18                                       ; $5d8d: $df
    nop                                           ; $5d8e: $00
    ld a, [bc]                                    ; $5d8f: $0a
    rst $30                                       ; $5d90: $f7
    ldh [rIF], a                                  ; $5d91: $e0 $0f
    jr nz, jr_033_5d9d                            ; $5d93: $20 $08

    ld hl, $146c                                  ; $5d95: $21 $6c $14
    rst $18                                       ; $5d98: $df
    ld c, $0a                                     ; $5d99: $0e $0a
    jr jr_033_5dc2                                ; $5d9b: $18 $25

jr_033_5d9d:
    ld hl, $146a                                  ; $5d9d: $21 $6a $14
    rst $18                                       ; $5da0: $df
    ld c, $0a                                     ; $5da1: $0e $0a
    ld a, $06                                     ; $5da3: $3e $06
    rst $18                                       ; $5da5: $df
    ld a, [bc]                                    ; $5da6: $0a
    ld a, [bc]                                    ; $5da7: $0a
    push af                                       ; $5da8: $f5
    ld a, $05                                     ; $5da9: $3e $05
    rst $18                                       ; $5dab: $df
    inc b                                         ; $5dac: $04
    ld a, [bc]                                    ; $5dad: $0a
    pop af                                        ; $5dae: $f1
    rst $18                                       ; $5daf: $df
    ld [de], a                                    ; $5db0: $12
    ld a, [bc]                                    ; $5db1: $0a
    rst $18                                       ; $5db2: $df
    inc c                                         ; $5db3: $0c
    ld a, [bc]                                    ; $5db4: $0a
    push af                                       ; $5db5: $f5
    ld a, $05                                     ; $5db6: $3e $05
    rst $18                                       ; $5db8: $df
    inc b                                         ; $5db9: $04
    ld a, [bc]                                    ; $5dba: $0a
    pop af                                        ; $5dbb: $f1
    and a                                         ; $5dbc: $a7
    jr z, jr_033_5dcb                             ; $5dbd: $28 $0c

    rst $18                                       ; $5dbf: $df
    db $10                                        ; $5dc0: $10
    ld a, [bc]                                    ; $5dc1: $0a

jr_033_5dc2:
    ld a, $06                                     ; $5dc2: $3e $06
    rst $18                                       ; $5dc4: $df
    ld [$df0a], sp                                ; $5dc5: $08 $0a $df
    ld [bc], a                                    ; $5dc8: $02
    ld a, [bc]                                    ; $5dc9: $0a
    ret                                           ; $5dca: $c9


jr_033_5dcb:
    push af                                       ; $5dcb: $f5
    ld a, $05                                     ; $5dcc: $3e $05
    rst $18                                       ; $5dce: $df
    inc b                                         ; $5dcf: $04
    ld a, [bc]                                    ; $5dd0: $0a
    pop af                                        ; $5dd1: $f1
    rst $08                                       ; $5dd2: $cf
    adc c                                         ; $5dd3: $89
    ld a, $06                                     ; $5dd4: $3e $06
    ld de, $ff40                                  ; $5dd6: $11 $40 $ff
    rst $18                                       ; $5dd9: $df
    ld b, b                                       ; $5dda: $40
    ld a, [bc]                                    ; $5ddb: $0a
    push af                                       ; $5ddc: $f5
    ld a, $0f                                     ; $5ddd: $3e $0f
    rst $18                                       ; $5ddf: $df
    inc b                                         ; $5de0: $04
    ld a, [bc]                                    ; $5de1: $0a
    pop af                                        ; $5de2: $f1
    ld a, $06                                     ; $5de3: $3e $06
    ld bc, $2100                                  ; $5de5: $01 $00 $21
    ld de, $0b00                                  ; $5de8: $11 $00 $0b
    rst $18                                       ; $5deb: $df
    ld [hl+], a                                   ; $5dec: $22
    ld a, [bc]                                    ; $5ded: $0a
    ld a, $06                                     ; $5dee: $3e $06
    rst $18                                       ; $5df0: $df
    ld e, $0a                                     ; $5df1: $1e $0a
    ld a, $06                                     ; $5df3: $3e $06
    ld b, $80                                     ; $5df5: $06 $80
    rst $18                                       ; $5df7: $df
    inc l                                         ; $5df8: $2c
    ld a, [bc]                                    ; $5df9: $0a
    ld a, $06                                     ; $5dfa: $3e $06
    rst $18                                       ; $5dfc: $df
    ld [$3e0a], sp                                ; $5dfd: $08 $0a $3e
    nop                                           ; $5e00: $00
    ld bc, $0008                                  ; $5e01: $01 $08 $00
    rst $18                                       ; $5e04: $df
    ld d, $0a                                     ; $5e05: $16 $0a
    ld a, $00                                     ; $5e07: $3e $00
    ld bc, $1f00                                  ; $5e09: $01 $00 $1f
    ld de, $0900                                  ; $5e0c: $11 $00 $09
    rst $18                                       ; $5e0f: $df
    ld [hl+], a                                   ; $5e10: $22
    ld a, [bc]                                    ; $5e11: $0a
    push af                                       ; $5e12: $f5
    ld a, $19                                     ; $5e13: $3e $19
    rst $18                                       ; $5e15: $df
    inc b                                         ; $5e16: $04
    ld a, [bc]                                    ; $5e17: $0a
    pop af                                        ; $5e18: $f1
    ld a, $00                                     ; $5e19: $3e $00
    ld b, a                                       ; $5e1b: $47
    ld a, $0a                                     ; $5e1c: $3e $0a
    rst $18                                       ; $5e1e: $df
    ld [hl-], a                                   ; $5e1f: $32
    ld a, [bc]                                    ; $5e20: $0a
    push af                                       ; $5e21: $f5
    ld a, $0a                                     ; $5e22: $3e $0a
    rst $18                                       ; $5e24: $df
    inc b                                         ; $5e25: $04
    ld a, [bc]                                    ; $5e26: $0a
    pop af                                        ; $5e27: $f1
    rst $08                                       ; $5e28: $cf
    sbc c                                         ; $5e29: $99
    push af                                       ; $5e2a: $f5
    ld a, $0a                                     ; $5e2b: $3e $0a
    rst $18                                       ; $5e2d: $df
    inc b                                         ; $5e2e: $04
    ld a, [bc]                                    ; $5e2f: $0a
    pop af                                        ; $5e30: $f1
    ld c, $04                                     ; $5e31: $0e $04
    call Call_000_25a1                            ; $5e33: $cd $a1 $25
    call Call_000_2625                            ; $5e36: $cd $25 $26
    ld a, $1e                                     ; $5e39: $3e $1e
    ld [$c967], a                                 ; $5e3b: $ea $67 $c9
    rst $18                                       ; $5e3e: $df
    inc e                                         ; $5e3f: $1c
    db $10                                        ; $5e40: $10
    ld a, $1d                                     ; $5e41: $3e $1d
    ld b, a                                       ; $5e43: $47
    ld a, $02                                     ; $5e44: $3e $02
    ld c, a                                       ; $5e46: $4f
    rst $18                                       ; $5e47: $df
    ld c, [hl]                                    ; $5e48: $4e
    ld a, [bc]                                    ; $5e49: $0a
    ld a, $03                                     ; $5e4a: $3e $03
    ld [$c834], a                                 ; $5e4c: $ea $34 $c8
    ld bc, $8000                                  ; $5e4f: $01 $00 $80
    rst $18                                       ; $5e52: $df
    ld e, $02                                     ; $5e53: $1e $02
    ld bc, $ff01                                  ; $5e55: $01 $01 $ff
    rst $18                                       ; $5e58: $df
    ld e, $02                                     ; $5e59: $1e $02
    ld hl, $0501                                  ; $5e5b: $21 $01 $05
    rst $18                                       ; $5e5e: $df
    db $10                                        ; $5e5f: $10
    db $10                                        ; $5e60: $10
    call Call_033_66cb                            ; $5e61: $cd $cb $66
    rst $18                                       ; $5e64: $df
    jr nc, jr_033_5e77                            ; $5e65: $30 $10

    rst $18                                       ; $5e67: $df
    ld [bc], a                                    ; $5e68: $02
    ld a, [bc]                                    ; $5e69: $0a
    ret                                           ; $5e6a: $c9


    ld [bc], a                                    ; $5e6b: $02
    ld h, b                                       ; $5e6c: $60
    nop                                           ; $5e6d: $00
    nop                                           ; $5e6e: $00
    ld c, l                                       ; $5e6f: $4d
    ld e, h                                       ; $5e70: $5c
    inc de                                        ; $5e71: $13
    nop                                           ; $5e72: $00
    ld [bc], a                                    ; $5e73: $02
    rst $38                                       ; $5e74: $ff
    nop                                           ; $5e75: $00
    nop                                           ; $5e76: $00

jr_033_5e77:
    ld bc, $135c                                  ; $5e77: $01 $5c $13
    nop                                           ; $5e7a: $00
    inc bc                                        ; $5e7b: $03
    rst $38                                       ; $5e7c: $ff
    nop                                           ; $5e7d: $00
    nop                                           ; $5e7e: $00
    ld d, c                                       ; $5e7f: $51
    ld e, l                                       ; $5e80: $5d
    inc bc                                        ; $5e81: $03
    nop                                           ; $5e82: $00
    inc b                                         ; $5e83: $04
    rst $38                                       ; $5e84: $ff
    nop                                           ; $5e85: $00
    nop                                           ; $5e86: $00
    ld h, l                                       ; $5e87: $65
    ld e, l                                       ; $5e88: $5d
    inc bc                                        ; $5e89: $03
    nop                                           ; $5e8a: $00
    dec b                                         ; $5e8b: $05
    rst $38                                       ; $5e8c: $ff
    nop                                           ; $5e8d: $00
    nop                                           ; $5e8e: $00
    ld a, c                                       ; $5e8f: $79
    ld e, l                                       ; $5e90: $5d
    inc bc                                        ; $5e91: $03
    nop                                           ; $5e92: $00
    ld b, $ff                                     ; $5e93: $06 $ff
    nop                                           ; $5e95: $00
    nop                                           ; $5e96: $00
    adc l                                         ; $5e97: $8d
    ld e, l                                       ; $5e98: $5d
    inc de                                        ; $5e99: $13
    nop                                           ; $5e9a: $00
    rlca                                          ; $5e9b: $07
    rst $38                                       ; $5e9c: $ff
    nop                                           ; $5e9d: $00
    nop                                           ; $5e9e: $00
    or b                                          ; $5e9f: $b0
    ld e, h                                       ; $5ea0: $5c
    inc bc                                        ; $5ea1: $03
    nop                                           ; $5ea2: $00
    ld [$00ff], sp                                ; $5ea3: $08 $ff $00
    nop                                           ; $5ea6: $00
    call nz, Call_000_035c                        ; $5ea7: $c4 $5c $03
    nop                                           ; $5eaa: $00
    add hl, bc                                    ; $5eab: $09
    rst $38                                       ; $5eac: $ff
    nop                                           ; $5ead: $00
    nop                                           ; $5eae: $00
    ldh a, [$5c]                                  ; $5eaf: $f0 $5c
    inc bc                                        ; $5eb1: $03
    nop                                           ; $5eb2: $00
    dec bc                                        ; $5eb3: $0b
    rst $38                                       ; $5eb4: $ff
    nop                                           ; $5eb5: $00
    nop                                           ; $5eb6: $00
    db $fc                                        ; $5eb7: $fc
    ld e, h                                       ; $5eb8: $5c
    inc bc                                        ; $5eb9: $03
    nop                                           ; $5eba: $00
    ld a, [bc]                                    ; $5ebb: $0a
    ld b, b                                       ; $5ebc: $40
    nop                                           ; $5ebd: $00
    nop                                           ; $5ebe: $00
    inc e                                         ; $5ebf: $1c
    ld e, l                                       ; $5ec0: $5d
    inc bc                                        ; $5ec1: $03
    nop                                           ; $5ec2: $00
    ld a, [bc]                                    ; $5ec3: $0a
    rst $38                                       ; $5ec4: $ff
    nop                                           ; $5ec5: $00
    nop                                           ; $5ec6: $00
    ld c, $5d                                     ; $5ec7: $0e $5d
    inc bc                                        ; $5ec9: $03
    nop                                           ; $5eca: $00
    inc c                                         ; $5ecb: $0c
    rst $38                                       ; $5ecc: $ff
    nop                                           ; $5ecd: $00
    nop                                           ; $5ece: $00
    ld a, [hl+]                                   ; $5ecf: $2a
    ld e, l                                       ; $5ed0: $5d
    inc bc                                        ; $5ed1: $03
    nop                                           ; $5ed2: $00
    dec c                                         ; $5ed3: $0d
    rst $38                                       ; $5ed4: $ff
    nop                                           ; $5ed5: $00
    nop                                           ; $5ed6: $00
    ld l, l                                       ; $5ed7: $6d
    inc d                                         ; $5ed8: $14
    inc bc                                        ; $5ed9: $03
    nop                                           ; $5eda: $00
    ld c, $ff                                     ; $5edb: $0e $ff
    nop                                           ; $5edd: $00
    nop                                           ; $5ede: $00
    pop de                                        ; $5edf: $d1
    ld e, e                                       ; $5ee0: $5b
    inc bc                                        ; $5ee1: $03
    nop                                           ; $5ee2: $00
    rst $38                                       ; $5ee3: $ff
    ret                                           ; $5ee4: $c9


    rst $08                                       ; $5ee5: $cf
    sbc [hl]                                      ; $5ee6: $9e
    rst $30                                       ; $5ee7: $f7
    ldh [rSC], a                                  ; $5ee8: $e0 $02
    jr nz, jr_033_5ef8                            ; $5eea: $20 $0c

    ld hl, $147e                                  ; $5eec: $21 $7e $14
    rst $18                                       ; $5eef: $df
    ld c, $0a                                     ; $5ef0: $0e $0a
    ld a, $80                                     ; $5ef2: $3e $80
    rst $18                                       ; $5ef4: $df
    ld [$c90a], sp                                ; $5ef5: $08 $0a $c9

jr_033_5ef8:
    ld hl, $147d                                  ; $5ef8: $21 $7d $14
    rst $18                                       ; $5efb: $df
    ld c, $0a                                     ; $5efc: $0e $0a
    ld a, $80                                     ; $5efe: $3e $80
    rst $18                                       ; $5f00: $df
    ld [$c90a], sp                                ; $5f01: $08 $0a $c9
    ld bc, $00ff                                  ; $5f04: $01 $ff $00
    nop                                           ; $5f07: $00
    pop de                                        ; $5f08: $d1
    ld e, e                                       ; $5f09: $5b
    rst $38                                       ; $5f0a: $ff
    nop                                           ; $5f0b: $00
    ld [bc], a                                    ; $5f0c: $02
    rst $38                                       ; $5f0d: $ff
    nop                                           ; $5f0e: $00
    nop                                           ; $5f0f: $00
    ld a, h                                       ; $5f10: $7c
    inc d                                         ; $5f11: $14
    rst $38                                       ; $5f12: $ff
    nop                                           ; $5f13: $00
    inc bc                                        ; $5f14: $03
    rst $38                                       ; $5f15: $ff
    nop                                           ; $5f16: $00
    nop                                           ; $5f17: $00
    push hl                                       ; $5f18: $e5
    ld e, [hl]                                    ; $5f19: $5e
    rst $38                                       ; $5f1a: $ff
    nop                                           ; $5f1b: $00
    inc b                                         ; $5f1c: $04
    rst $38                                       ; $5f1d: $ff
    sbc [hl]                                      ; $5f1e: $9e
    nop                                           ; $5f1f: $00
    ld b, a                                       ; $5f20: $47
    ld l, a                                       ; $5f21: $6f
    rlca                                          ; $5f22: $07
    nop                                           ; $5f23: $00
    rst $38                                       ; $5f24: $ff

Call_033_5f25:
    rst $08                                       ; $5f25: $cf
    sbc h                                         ; $5f26: $9c
    ld c, $08                                     ; $5f27: $0e $08
    call Call_000_25a1                            ; $5f29: $cd $a1 $25
    push af                                       ; $5f2c: $f5
    ld a, $1e                                     ; $5f2d: $3e $1e
    rst $18                                       ; $5f2f: $df
    inc b                                         ; $5f30: $04
    ld a, [bc]                                    ; $5f31: $0a
    pop af                                        ; $5f32: $f1
    ld a, $01                                     ; $5f33: $3e $01
    ld [$c441], a                                 ; $5f35: $ea $41 $c4
    ret                                           ; $5f38: $c9


    ld bc, $00ff                                  ; $5f39: $01 $ff $00
    nop                                           ; $5f3c: $00
    dec h                                         ; $5f3d: $25
    ld e, a                                       ; $5f3e: $5f
    nop                                           ; $5f3f: $00
    nop                                           ; $5f40: $00
    rst $38                                       ; $5f41: $ff
    xor a                                         ; $5f42: $af
    ld hl, $c4b4                                  ; $5f43: $21 $b4 $c4
    ld [hl+], a                                   ; $5f46: $22
    ld [hl+], a                                   ; $5f47: $22
    rst $20                                       ; $5f48: $e7
    and b                                         ; $5f49: $a0
    rrca                                          ; $5f4a: $0f
    call Call_033_5f5b                            ; $5f4b: $cd $5b $5f
    call Call_033_5f8f                            ; $5f4e: $cd $8f $5f
    call Call_033_63f9                            ; $5f51: $cd $f9 $63
    call Call_033_60b2                            ; $5f54: $cd $b2 $60
    call Call_033_672a                            ; $5f57: $cd $2a $67
    ret                                           ; $5f5a: $c9


Call_033_5f5b:
    ld a, [$c46a]                                 ; $5f5b: $fa $6a $c4
    cp $0a                                        ; $5f5e: $fe $0a
    jp nz, Jump_033_5f6a                          ; $5f60: $c2 $6a $5f

    ld a, $01                                     ; $5f63: $3e $01
    ld [$c96c], a                                 ; $5f65: $ea $6c $c9
    jr jr_033_5f86                                ; $5f68: $18 $1c

Jump_033_5f6a:
    ld a, [$c46a]                                 ; $5f6a: $fa $6a $c4
    cp $0b                                        ; $5f6d: $fe $0b
    jp nz, Jump_033_5f79                          ; $5f6f: $c2 $79 $5f

    ld a, $02                                     ; $5f72: $3e $02
    ld [$c96c], a                                 ; $5f74: $ea $6c $c9
    jr jr_033_5f86                                ; $5f77: $18 $0d

Jump_033_5f79:
    ld a, [$c46a]                                 ; $5f79: $fa $6a $c4
    cp $0c                                        ; $5f7c: $fe $0c
    jp nz, Jump_033_5f8e                          ; $5f7e: $c2 $8e $5f

    ld a, $03                                     ; $5f81: $3e $03
    ld [$c96c], a                                 ; $5f83: $ea $6c $c9

jr_033_5f86:
    rst $20                                       ; $5f86: $e7
    ret nz                                        ; $5f87: $c0

    rrca                                          ; $5f88: $0f
    ld a, $06                                     ; $5f89: $3e $06
    ld [$c46a], a                                 ; $5f8b: $ea $6a $c4

Jump_033_5f8e:
    ret                                           ; $5f8e: $c9


Call_033_5f8f:
    ld a, [$c46a]                                 ; $5f8f: $fa $6a $c4
    cp $06                                        ; $5f92: $fe $06
    jp z, Jump_033_5fa5                           ; $5f94: $ca $a5 $5f

    cp $fa                                        ; $5f97: $fe $fa
    jp nz, Jump_033_5f9f                          ; $5f99: $c2 $9f $5f

    jp Jump_033_5faf                              ; $5f9c: $c3 $af $5f


Jump_033_5f9f:
    rst $28                                       ; $5f9f: $ef
    ld b, b                                       ; $5fa0: $40
    dec c                                         ; $5fa1: $0d
    jp Jump_033_5faf                              ; $5fa2: $c3 $af $5f


Jump_033_5fa5:
    ld a, [$c96c]                                 ; $5fa5: $fa $6c $c9
    cp $00                                        ; $5fa8: $fe $00
    jr z, @+$23                                   ; $5faa: $28 $21

    rst $20                                       ; $5fac: $e7
    ld b, b                                       ; $5fad: $40
    dec c                                         ; $5fae: $0d

Jump_033_5faf:
    rst $30                                       ; $5faf: $f7
    ld b, b                                       ; $5fb0: $40
    dec c                                         ; $5fb1: $0d
    jr z, @+$05                                   ; $5fb2: $28 $03

    rst $20                                       ; $5fb4: $e7
    nop                                           ; $5fb5: $00
    ld e, $fa                                     ; $5fb6: $1e $fa
    ld l, h                                       ; $5fb8: $6c
    ret                                           ; $5fb9: $c9


    cp $01                                        ; $5fba: $fe $01
    jr z, jr_033_5fc6                             ; $5fbc: $28 $08

    cp $04                                        ; $5fbe: $fe $04
    jr nc, jr_033_5fca                            ; $5fc0: $30 $08

    rst $20                                       ; $5fc2: $e7
    ld b, b                                       ; $5fc3: $40
    ld e, $c9                                     ; $5fc4: $1e $c9

jr_033_5fc6:
    rst $20                                       ; $5fc6: $e7
    jr nz, @+$20                                  ; $5fc7: $20 $1e

    ret                                           ; $5fc9: $c9


jr_033_5fca:
    rst $20                                       ; $5fca: $e7
    ld h, b                                       ; $5fcb: $60
    ld e, $c9                                     ; $5fcc: $1e $c9

Jump_033_5fce:
    ld a, [$c46a]                                 ; $5fce: $fa $6a $c4
    cp $01                                        ; $5fd1: $fe $01
    jr nz, jr_033_603f                            ; $5fd3: $20 $6a

    rst $08                                       ; $5fd5: $cf
    sbc h                                         ; $5fd6: $9c
    ld a, $00                                     ; $5fd7: $3e $00
    ld de, $ff00                                  ; $5fd9: $11 $00 $ff
    rst $18                                       ; $5fdc: $df
    ld b, b                                       ; $5fdd: $40
    ld a, [bc]                                    ; $5fde: $0a
    push af                                       ; $5fdf: $f5
    ld a, $02                                     ; $5fe0: $3e $02
    rst $18                                       ; $5fe2: $df
    inc b                                         ; $5fe3: $04
    ld a, [bc]                                    ; $5fe4: $0a
    pop af                                        ; $5fe5: $f1
    ld c, $04                                     ; $5fe6: $0e $04
    call Call_000_25af                            ; $5fe8: $cd $af $25
    ld a, $00                                     ; $5feb: $3e $00
    ld b, $01                                     ; $5fed: $06 $01
    rst $18                                       ; $5fef: $df
    ld a, [hl+]                                   ; $5ff0: $2a
    ld a, [bc]                                    ; $5ff1: $0a
    xor a                                         ; $5ff2: $af
    ld bc, $1400                                  ; $5ff3: $01 $00 $14
    ld de, $1100                                  ; $5ff6: $11 $00 $11
    rst $18                                       ; $5ff9: $df
    jr c, jr_033_6006                             ; $5ffa: $38 $0a

    ld a, $00                                     ; $5ffc: $3e $00
    ld bc, $1400                                  ; $5ffe: $01 $00 $14
    ld de, $0f00                                  ; $6001: $11 $00 $0f
    rst $18                                       ; $6004: $df
    ld [hl+], a                                   ; $6005: $22

jr_033_6006:
    ld a, [bc]                                    ; $6006: $0a
    ld a, $00                                     ; $6007: $3e $00
    rst $18                                       ; $6009: $df
    ld e, $0a                                     ; $600a: $1e $0a
    push af                                       ; $600c: $f5
    ld a, $02                                     ; $600d: $3e $02
    rst $18                                       ; $600f: $df
    inc b                                         ; $6010: $04
    ld a, [bc]                                    ; $6011: $0a
    pop af                                        ; $6012: $f1
    rst $08                                       ; $6013: $cf
    adc d                                         ; $6014: $8a
    ld a, $00                                     ; $6015: $3e $00
    ld de, $ff80                                  ; $6017: $11 $80 $ff
    rst $18                                       ; $601a: $df
    ld b, b                                       ; $601b: $40
    ld a, [bc]                                    ; $601c: $0a
    ld a, $00                                     ; $601d: $3e $00
    rst $18                                       ; $601f: $df
    ld b, d                                       ; $6020: $42
    ld a, [bc]                                    ; $6021: $0a
    ld a, $00                                     ; $6022: $3e $00
    ld b, $00                                     ; $6024: $06 $00
    rst $18                                       ; $6026: $df
    ld a, [hl+]                                   ; $6027: $2a
    ld a, [bc]                                    ; $6028: $0a
    push af                                       ; $6029: $f5
    ld a, $02                                     ; $602a: $3e $02
    rst $18                                       ; $602c: $df
    inc b                                         ; $602d: $04
    ld a, [bc]                                    ; $602e: $0a
    pop af                                        ; $602f: $f1
    rst $08                                       ; $6030: $cf
    adc d                                         ; $6031: $8a
    ld a, $00                                     ; $6032: $3e $00
    ld de, $ff80                                  ; $6034: $11 $80 $ff
    rst $18                                       ; $6037: $df
    ld b, b                                       ; $6038: $40
    ld a, [bc]                                    ; $6039: $0a
    ld a, $00                                     ; $603a: $3e $00
    rst $18                                       ; $603c: $df
    ld b, d                                       ; $603d: $42
    ld a, [bc]                                    ; $603e: $0a

jr_033_603f:
    ret                                           ; $603f: $c9


Call_033_6040:
    ld a, $00                                     ; $6040: $3e $00
    ld de, $ff00                                  ; $6042: $11 $00 $ff
    rst $18                                       ; $6045: $df
    ld b, b                                       ; $6046: $40
    ld a, [bc]                                    ; $6047: $0a
    rst $08                                       ; $6048: $cf
    sbc h                                         ; $6049: $9c
    push af                                       ; $604a: $f5
    ld a, $02                                     ; $604b: $3e $02
    rst $18                                       ; $604d: $df
    inc b                                         ; $604e: $04
    ld a, [bc]                                    ; $604f: $0a
    pop af                                        ; $6050: $f1
    ld c, $04                                     ; $6051: $0e $04
    call Call_000_25af                            ; $6053: $cd $af $25
    ld a, $00                                     ; $6056: $3e $00
    ld b, $01                                     ; $6058: $06 $01
    rst $18                                       ; $605a: $df
    ld a, [hl+]                                   ; $605b: $2a
    ld a, [bc]                                    ; $605c: $0a
    xor a                                         ; $605d: $af
    ld bc, $1400                                  ; $605e: $01 $00 $14
    ld de, $1300                                  ; $6061: $11 $00 $13
    rst $18                                       ; $6064: $df
    jr c, @+$0c                                   ; $6065: $38 $0a

    push af                                       ; $6067: $f5
    ld a, $02                                     ; $6068: $3e $02
    rst $18                                       ; $606a: $df
    inc b                                         ; $606b: $04
    ld a, [bc]                                    ; $606c: $0a
    pop af                                        ; $606d: $f1
    ld a, $00                                     ; $606e: $3e $00
    ld bc, $1400                                  ; $6070: $01 $00 $14
    ld de, $0f00                                  ; $6073: $11 $00 $0f
    rst $18                                       ; $6076: $df
    ld [hl+], a                                   ; $6077: $22
    ld a, [bc]                                    ; $6078: $0a
    ld a, $00                                     ; $6079: $3e $00
    rst $18                                       ; $607b: $df
    ld e, $0a                                     ; $607c: $1e $0a
    push af                                       ; $607e: $f5
    ld a, $02                                     ; $607f: $3e $02
    rst $18                                       ; $6081: $df
    inc b                                         ; $6082: $04
    ld a, [bc]                                    ; $6083: $0a
    pop af                                        ; $6084: $f1
    rst $08                                       ; $6085: $cf
    adc d                                         ; $6086: $8a
    ld a, $00                                     ; $6087: $3e $00
    ld de, $ff80                                  ; $6089: $11 $80 $ff
    rst $18                                       ; $608c: $df
    ld b, b                                       ; $608d: $40
    ld a, [bc]                                    ; $608e: $0a
    ld a, $00                                     ; $608f: $3e $00
    rst $18                                       ; $6091: $df
    ld b, d                                       ; $6092: $42
    ld a, [bc]                                    ; $6093: $0a
    ld a, $00                                     ; $6094: $3e $00
    ld b, $00                                     ; $6096: $06 $00
    rst $18                                       ; $6098: $df
    ld a, [hl+]                                   ; $6099: $2a
    ld a, [bc]                                    ; $609a: $0a
    push af                                       ; $609b: $f5
    ld a, $02                                     ; $609c: $3e $02
    rst $18                                       ; $609e: $df
    inc b                                         ; $609f: $04
    ld a, [bc]                                    ; $60a0: $0a
    pop af                                        ; $60a1: $f1
    rst $08                                       ; $60a2: $cf
    adc d                                         ; $60a3: $8a
    ld a, $00                                     ; $60a4: $3e $00
    ld de, $ff80                                  ; $60a6: $11 $80 $ff
    rst $18                                       ; $60a9: $df
    ld b, b                                       ; $60aa: $40
    ld a, [bc]                                    ; $60ab: $0a
    ld a, $00                                     ; $60ac: $3e $00
    rst $18                                       ; $60ae: $df
    ld b, d                                       ; $60af: $42
    ld a, [bc]                                    ; $60b0: $0a
    ret                                           ; $60b1: $c9


Call_033_60b2:
    rst $30                                       ; $60b2: $f7
    add b                                         ; $60b3: $80
    ld c, $c2                                     ; $60b4: $0e $c2
    adc $5f                                       ; $60b6: $ce $5f
    rst $30                                       ; $60b8: $f7
    ldh [rIF], a                                  ; $60b9: $e0 $0f
    jp z, Jump_033_60c1                           ; $60bb: $ca $c1 $60

    rst $20                                       ; $60be: $e7
    ret nz                                        ; $60bf: $c0

    rrca                                          ; $60c0: $0f

Jump_033_60c1:
    rst $30                                       ; $60c1: $f7
    ret nz                                        ; $60c2: $c0

    rrca                                          ; $60c3: $0f
    jp nz, Jump_033_5fce                          ; $60c4: $c2 $ce $5f

    rst $08                                       ; $60c7: $cf
    db $10                                        ; $60c8: $10
    ld a, $02                                     ; $60c9: $3e $02
    ld bc, $1400                                  ; $60cb: $01 $00 $14
    ld de, $0700                                  ; $60ce: $11 $00 $07
    rst $18                                       ; $60d1: $df
    jr nz, @+$0c                                  ; $60d2: $20 $0a

    ld a, $06                                     ; $60d4: $3e $06
    ld bc, $1f00                                  ; $60d6: $01 $00 $1f
    ld de, $0b00                                  ; $60d9: $11 $00 $0b
    rst $18                                       ; $60dc: $df
    jr nz, jr_033_60e9                            ; $60dd: $20 $0a

    call Call_033_6040                            ; $60df: $cd $40 $60
    push af                                       ; $60e2: $f5
    ld a, $3c                                     ; $60e3: $3e $3c
    rst $18                                       ; $60e5: $df
    inc b                                         ; $60e6: $04
    ld a, [bc]                                    ; $60e7: $0a
    pop af                                        ; $60e8: $f1

jr_033_60e9:
    rst $20                                       ; $60e9: $e7
    ret nz                                        ; $60ea: $c0

    rrca                                          ; $60eb: $0f
    ld hl, $144a                                  ; $60ec: $21 $4a $14
    rst $18                                       ; $60ef: $df
    ld c, $0a                                     ; $60f0: $0e $0a
    rst $08                                       ; $60f2: $cf
    adc d                                         ; $60f3: $8a
    ld a, $03                                     ; $60f4: $3e $03
    ld de, $ff80                                  ; $60f6: $11 $80 $ff
    rst $18                                       ; $60f9: $df
    ld b, b                                       ; $60fa: $40
    ld a, [bc]                                    ; $60fb: $0a
    ld a, $03                                     ; $60fc: $3e $03
    rst $18                                       ; $60fe: $df
    ld b, d                                       ; $60ff: $42
    ld a, [bc]                                    ; $6100: $0a
    ld a, $03                                     ; $6101: $3e $03
    ld bc, $1280                                  ; $6103: $01 $80 $12
    ld de, $1100                                  ; $6106: $11 $00 $11
    rst $18                                       ; $6109: $df
    ld [hl+], a                                   ; $610a: $22
    ld a, [bc]                                    ; $610b: $0a
    ld a, $03                                     ; $610c: $3e $03
    rst $18                                       ; $610e: $df
    ld e, $0a                                     ; $610f: $1e $0a
    ld a, $00                                     ; $6111: $3e $00
    ld b, a                                       ; $6113: $47
    ld a, $03                                     ; $6114: $3e $03
    rst $18                                       ; $6116: $df
    ld l, $0a                                     ; $6117: $2e $0a
    push af                                       ; $6119: $f5
    ld a, $1e                                     ; $611a: $3e $1e
    rst $18                                       ; $611c: $df
    inc b                                         ; $611d: $04
    ld a, [bc]                                    ; $611e: $0a
    pop af                                        ; $611f: $f1
    ld a, $03                                     ; $6120: $3e $03
    ld b, a                                       ; $6122: $47
    ld a, $05                                     ; $6123: $3e $05
    rst $18                                       ; $6125: $df
    ld [hl-], a                                   ; $6126: $32
    ld a, [bc]                                    ; $6127: $0a
    ld a, $03                                     ; $6128: $3e $03
    rst $18                                       ; $612a: $df
    inc [hl]                                      ; $612b: $34
    ld a, [bc]                                    ; $612c: $0a
    ld a, $03                                     ; $612d: $3e $03
    rst $18                                       ; $612f: $df
    ld [$3e0a], sp                                ; $6130: $08 $0a $3e
    ld [bc], a                                    ; $6133: $02
    ld b, a                                       ; $6134: $47
    ld a, $03                                     ; $6135: $3e $03
    rst $18                                       ; $6137: $df
    ld l, $0a                                     ; $6138: $2e $0a
    ld a, $03                                     ; $613a: $3e $03
    rst $18                                       ; $613c: $df
    ld [$3e0a], sp                                ; $613d: $08 $0a $3e
    inc bc                                        ; $6140: $03
    ld b, $01                                     ; $6141: $06 $01
    rst $18                                       ; $6143: $df
    ld a, [hl+]                                   ; $6144: $2a
    ld a, [bc]                                    ; $6145: $0a
    ld a, $02                                     ; $6146: $3e $02
    ld b, $00                                     ; $6148: $06 $00
    rst $18                                       ; $614a: $df
    ld a, [hl-]                                   ; $614b: $3a
    ld a, [bc]                                    ; $614c: $0a
    ld a, $03                                     ; $614d: $3e $03
    ld bc, $1100                                  ; $614f: $01 $00 $11
    ld de, $1300                                  ; $6152: $11 $00 $13
    rst $18                                       ; $6155: $df
    ld [hl+], a                                   ; $6156: $22
    ld a, [bc]                                    ; $6157: $0a
    ld a, $03                                     ; $6158: $3e $03
    rst $18                                       ; $615a: $df
    ld e, $0a                                     ; $615b: $1e $0a
    ld a, $03                                     ; $615d: $3e $03
    ld b, $00                                     ; $615f: $06 $00
    rst $18                                       ; $6161: $df
    ld a, [hl+]                                   ; $6162: $2a
    ld a, [bc]                                    ; $6163: $0a
    ld a, $02                                     ; $6164: $3e $02
    ld b, a                                       ; $6166: $47
    ld a, $05                                     ; $6167: $3e $05
    rst $18                                       ; $6169: $df
    ld [hl-], a                                   ; $616a: $32
    ld a, [bc]                                    ; $616b: $0a
    ld a, $02                                     ; $616c: $3e $02
    rst $18                                       ; $616e: $df
    inc [hl]                                      ; $616f: $34
    ld a, [bc]                                    ; $6170: $0a
    push af                                       ; $6171: $f5
    ld a, $1e                                     ; $6172: $3e $1e
    rst $18                                       ; $6174: $df
    inc b                                         ; $6175: $04
    ld a, [bc]                                    ; $6176: $0a
    pop af                                        ; $6177: $f1
    ld a, $02                                     ; $6178: $3e $02
    ld b, a                                       ; $617a: $47
    ld a, $00                                     ; $617b: $3e $00
    rst $18                                       ; $617d: $df
    ld l, $0a                                     ; $617e: $2e $0a
    ld a, $02                                     ; $6180: $3e $02
    rst $18                                       ; $6182: $df
    ld [$3e0a], sp                                ; $6183: $08 $0a $3e
    ld [bc], a                                    ; $6186: $02
    ld b, a                                       ; $6187: $47
    ld a, $05                                     ; $6188: $3e $05
    rst $18                                       ; $618a: $df
    ld [hl-], a                                   ; $618b: $32
    ld a, [bc]                                    ; $618c: $0a
    ld a, $02                                     ; $618d: $3e $02
    rst $18                                       ; $618f: $df
    inc [hl]                                      ; $6190: $34
    ld a, [bc]                                    ; $6191: $0a
    ld a, $02                                     ; $6192: $3e $02
    rst $18                                       ; $6194: $df
    ld [$3e0a], sp                                ; $6195: $08 $0a $3e
    nop                                           ; $6198: $00
    ld b, a                                       ; $6199: $47
    ld a, $05                                     ; $619a: $3e $05
    rst $18                                       ; $619c: $df
    ld [hl-], a                                   ; $619d: $32
    ld a, [bc]                                    ; $619e: $0a
    ld a, $00                                     ; $619f: $3e $00
    rst $18                                       ; $61a1: $df
    inc [hl]                                      ; $61a2: $34
    ld a, [bc]                                    ; $61a3: $0a
    push af                                       ; $61a4: $f5
    ld a, $1e                                     ; $61a5: $3e $1e
    rst $18                                       ; $61a7: $df
    inc b                                         ; $61a8: $04
    ld a, [bc]                                    ; $61a9: $0a
    pop af                                        ; $61aa: $f1
    ld a, $02                                     ; $61ab: $3e $02
    ld b, a                                       ; $61ad: $47
    ld a, $07                                     ; $61ae: $3e $07
    rst $18                                       ; $61b0: $df
    ld [hl-], a                                   ; $61b1: $32
    ld a, [bc]                                    ; $61b2: $0a
    ld a, $02                                     ; $61b3: $3e $02
    rst $18                                       ; $61b5: $df
    inc [hl]                                      ; $61b6: $34
    ld a, [bc]                                    ; $61b7: $0a
    ld a, $02                                     ; $61b8: $3e $02
    ld bc, $1400                                  ; $61ba: $01 $00 $14
    ld de, $0a00                                  ; $61bd: $11 $00 $0a
    rst $18                                       ; $61c0: $df
    ld [hl+], a                                   ; $61c1: $22
    ld a, [bc]                                    ; $61c2: $0a
    ld a, $02                                     ; $61c3: $3e $02
    rst $18                                       ; $61c5: $df
    ld e, $0a                                     ; $61c6: $1e $0a
    ld a, $02                                     ; $61c8: $3e $02
    ld b, $80                                     ; $61ca: $06 $80
    rst $18                                       ; $61cc: $df
    inc l                                         ; $61cd: $2c
    ld a, [bc]                                    ; $61ce: $0a
    push af                                       ; $61cf: $f5
    ld a, $1e                                     ; $61d0: $3e $1e
    rst $18                                       ; $61d2: $df
    inc b                                         ; $61d3: $04
    ld a, [bc]                                    ; $61d4: $0a
    pop af                                        ; $61d5: $f1
    ld a, $02                                     ; $61d6: $3e $02
    ld b, $40                                     ; $61d8: $06 $40
    rst $18                                       ; $61da: $df
    inc l                                         ; $61db: $2c
    ld a, [bc]                                    ; $61dc: $0a
    push af                                       ; $61dd: $f5
    ld a, $1e                                     ; $61de: $3e $1e
    rst $18                                       ; $61e0: $df
    inc b                                         ; $61e1: $04
    ld a, [bc]                                    ; $61e2: $0a
    pop af                                        ; $61e3: $f1
    ld a, $02                                     ; $61e4: $3e $02
    ld b, $00                                     ; $61e6: $06 $00
    rst $18                                       ; $61e8: $df
    inc l                                         ; $61e9: $2c
    ld a, [bc]                                    ; $61ea: $0a
    push af                                       ; $61eb: $f5
    ld a, $1e                                     ; $61ec: $3e $1e
    rst $18                                       ; $61ee: $df
    inc b                                         ; $61ef: $04
    ld a, [bc]                                    ; $61f0: $0a
    pop af                                        ; $61f1: $f1
    ld a, $02                                     ; $61f2: $3e $02
    ld b, $40                                     ; $61f4: $06 $40
    rst $18                                       ; $61f6: $df
    inc l                                         ; $61f7: $2c
    ld a, [bc]                                    ; $61f8: $0a
    ld a, $00                                     ; $61f9: $3e $00
    ld b, $00                                     ; $61fb: $06 $00
    rst $18                                       ; $61fd: $df
    ld a, [hl-]                                   ; $61fe: $3a
    ld a, [bc]                                    ; $61ff: $0a
    rst $18                                       ; $6200: $df
    inc a                                         ; $6201: $3c
    ld a, [bc]                                    ; $6202: $0a
    ld a, $02                                     ; $6203: $3e $02
    rst $18                                       ; $6205: $df
    ld [$3e0a], sp                                ; $6206: $08 $0a $3e
    ld [bc], a                                    ; $6209: $02
    ld b, a                                       ; $620a: $47
    ld a, $05                                     ; $620b: $3e $05
    rst $18                                       ; $620d: $df
    ld [hl-], a                                   ; $620e: $32
    ld a, [bc]                                    ; $620f: $0a
    ld a, $02                                     ; $6210: $3e $02
    rst $18                                       ; $6212: $df
    inc [hl]                                      ; $6213: $34
    ld a, [bc]                                    ; $6214: $0a
    ld a, $02                                     ; $6215: $3e $02
    rst $18                                       ; $6217: $df
    ld [$3e0a], sp                                ; $6218: $08 $0a $3e
    inc c                                         ; $621b: $0c
    ld b, a                                       ; $621c: $47
    ld a, $07                                     ; $621d: $3e $07
    rst $18                                       ; $621f: $df
    ld [hl-], a                                   ; $6220: $32
    ld a, [bc]                                    ; $6221: $0a
    ld a, $0c                                     ; $6222: $3e $0c
    rst $18                                       ; $6224: $df
    inc [hl]                                      ; $6225: $34
    ld a, [bc]                                    ; $6226: $0a
    ld a, $0c                                     ; $6227: $3e $0c
    rst $18                                       ; $6229: $df
    ld [$3e0a], sp                                ; $622a: $08 $0a $3e
    nop                                           ; $622d: $00
    ld b, $80                                     ; $622e: $06 $80
    rst $18                                       ; $6230: $df
    inc l                                         ; $6231: $2c
    ld a, [bc]                                    ; $6232: $0a
    ld a, $0c                                     ; $6233: $3e $0c
    ld bc, $1000                                  ; $6235: $01 $00 $10
    ld de, $0f00                                  ; $6238: $11 $00 $0f
    rst $18                                       ; $623b: $df
    ld [hl+], a                                   ; $623c: $22
    ld a, [bc]                                    ; $623d: $0a
    ld a, $0c                                     ; $623e: $3e $0c
    rst $18                                       ; $6240: $df
    ld e, $0a                                     ; $6241: $1e $0a
    ld a, $0c                                     ; $6243: $3e $0c
    rst $18                                       ; $6245: $df
    ld [$3e0a], sp                                ; $6246: $08 $0a $3e
    inc c                                         ; $6249: $0c
    ld b, a                                       ; $624a: $47
    ld a, $06                                     ; $624b: $3e $06
    rst $18                                       ; $624d: $df
    ld [hl-], a                                   ; $624e: $32
    ld a, [bc]                                    ; $624f: $0a
    ld a, $0c                                     ; $6250: $3e $0c
    rst $18                                       ; $6252: $df
    inc [hl]                                      ; $6253: $34
    ld a, [bc]                                    ; $6254: $0a
    ld a, $0c                                     ; $6255: $3e $0c
    rst $18                                       ; $6257: $df
    ld [$cd0a], sp                                ; $6258: $08 $0a $cd
    ld e, l                                       ; $625b: $5d
    ld l, [hl]                                    ; $625c: $6e
    rst $08                                       ; $625d: $cf
    sbc l                                         ; $625e: $9d
    ld a, $0a                                     ; $625f: $3e $0a
    ld de, $ff80                                  ; $6261: $11 $80 $ff
    rst $18                                       ; $6264: $df
    ld b, b                                       ; $6265: $40
    ld a, [bc]                                    ; $6266: $0a
    ld a, $0a                                     ; $6267: $3e $0a
    ld bc, $1800                                  ; $6269: $01 $00 $18
    ld de, $1000                                  ; $626c: $11 $00 $10
    rst $18                                       ; $626f: $df
    ld [hl+], a                                   ; $6270: $22
    ld a, [bc]                                    ; $6271: $0a
    ld a, $0a                                     ; $6272: $3e $0a
    rst $18                                       ; $6274: $df
    ld e, $0a                                     ; $6275: $1e $0a
    ld a, $0a                                     ; $6277: $3e $0a
    ld b, a                                       ; $6279: $47
    ld a, $07                                     ; $627a: $3e $07
    rst $18                                       ; $627c: $df
    ld [hl-], a                                   ; $627d: $32
    ld a, [bc]                                    ; $627e: $0a
    ld a, $0a                                     ; $627f: $3e $0a
    rst $18                                       ; $6281: $df
    inc [hl]                                      ; $6282: $34
    ld a, [bc]                                    ; $6283: $0a
    ldh a, [$95]                                  ; $6284: $f0 $95
    ld b, a                                       ; $6286: $47
    ld a, $0a                                     ; $6287: $3e $0a
    ld de, $6f39                                  ; $6289: $11 $39 $6f
    rst $18                                       ; $628c: $df
    jr jr_033_6299                                ; $628d: $18 $0a

    call Call_033_6eaa                            ; $628f: $cd $aa $6e
    rst $08                                       ; $6292: $cf
    sbc l                                         ; $6293: $9d
    ld a, $0a                                     ; $6294: $3e $0a
    ld b, a                                       ; $6296: $47
    ld a, $06                                     ; $6297: $3e $06

jr_033_6299:
    rst $18                                       ; $6299: $df
    ld [hl-], a                                   ; $629a: $32
    ld a, [bc]                                    ; $629b: $0a
    ld a, $0a                                     ; $629c: $3e $0a
    rst $18                                       ; $629e: $df
    inc [hl]                                      ; $629f: $34
    ld a, [bc]                                    ; $62a0: $0a
    ld a, $0a                                     ; $62a1: $3e $0a
    ld b, a                                       ; $62a3: $47
    ld a, $06                                     ; $62a4: $3e $06
    rst $18                                       ; $62a6: $df
    ld [hl-], a                                   ; $62a7: $32
    ld a, [bc]                                    ; $62a8: $0a
    ld a, $0a                                     ; $62a9: $3e $0a
    ld de, $ff80                                  ; $62ab: $11 $80 $ff
    rst $18                                       ; $62ae: $df
    ld b, b                                       ; $62af: $40
    ld a, [bc]                                    ; $62b0: $0a
    ld a, $0a                                     ; $62b1: $3e $0a
    rst $18                                       ; $62b3: $df
    ld b, d                                       ; $62b4: $42
    ld a, [bc]                                    ; $62b5: $0a
    ld a, $0a                                     ; $62b6: $3e $0a
    ld b, a                                       ; $62b8: $47
    ld a, $07                                     ; $62b9: $3e $07
    rst $18                                       ; $62bb: $df
    ld [hl-], a                                   ; $62bc: $32
    ld a, [bc]                                    ; $62bd: $0a
    call Call_033_6eaa                            ; $62be: $cd $aa $6e
    push af                                       ; $62c1: $f5
    ld a, $0a                                     ; $62c2: $3e $0a
    rst $18                                       ; $62c4: $df
    inc b                                         ; $62c5: $04
    ld a, [bc]                                    ; $62c6: $0a
    pop af                                        ; $62c7: $f1
    rst $08                                       ; $62c8: $cf
    sbc l                                         ; $62c9: $9d
    ld a, $0a                                     ; $62ca: $3e $0a
    ld b, a                                       ; $62cc: $47
    ld a, $06                                     ; $62cd: $3e $06
    rst $18                                       ; $62cf: $df
    ld [hl-], a                                   ; $62d0: $32
    ld a, [bc]                                    ; $62d1: $0a
    call Call_033_6eaa                            ; $62d2: $cd $aa $6e
    ld a, $0a                                     ; $62d5: $3e $0a
    ld b, a                                       ; $62d7: $47
    ld a, $08                                     ; $62d8: $3e $08
    rst $18                                       ; $62da: $df
    ld l, $0a                                     ; $62db: $2e $0a
    ld a, $08                                     ; $62dd: $3e $08
    ld b, a                                       ; $62df: $47
    ld a, $05                                     ; $62e0: $3e $05
    rst $18                                       ; $62e2: $df
    ld [hl-], a                                   ; $62e3: $32
    ld a, [bc]                                    ; $62e4: $0a
    ld a, $08                                     ; $62e5: $3e $08
    rst $18                                       ; $62e7: $df
    inc [hl]                                      ; $62e8: $34
    ld a, [bc]                                    ; $62e9: $0a
    ld a, $0c                                     ; $62ea: $3e $0c
    ld b, a                                       ; $62ec: $47
    ld a, $08                                     ; $62ed: $3e $08
    rst $18                                       ; $62ef: $df
    ld l, $0a                                     ; $62f0: $2e $0a
    ld a, $08                                     ; $62f2: $3e $08
    rst $18                                       ; $62f4: $df
    ld [$3e0a], sp                                ; $62f5: $08 $0a $3e
    ld [$3e47], sp                                ; $62f8: $08 $47 $3e
    ld b, $df                                     ; $62fb: $06 $df
    ld [hl-], a                                   ; $62fd: $32
    ld a, [bc]                                    ; $62fe: $0a
    ld a, $08                                     ; $62ff: $3e $08
    rst $18                                       ; $6301: $df
    inc [hl]                                      ; $6302: $34
    ld a, [bc]                                    ; $6303: $0a
    ld a, $08                                     ; $6304: $3e $08
    ld bc, $1000                                  ; $6306: $01 $00 $10
    ld de, $0d00                                  ; $6309: $11 $00 $0d
    rst $18                                       ; $630c: $df
    ld [hl+], a                                   ; $630d: $22
    ld a, [bc]                                    ; $630e: $0a
    ld a, $08                                     ; $630f: $3e $08
    rst $18                                       ; $6311: $df
    ld e, $0a                                     ; $6312: $1e $0a
    ldh a, [$95]                                  ; $6314: $f0 $95
    ld b, a                                       ; $6316: $47
    ld a, $0a                                     ; $6317: $3e $0a
    ld de, $6f40                                  ; $6319: $11 $40 $6f
    rst $18                                       ; $631c: $df
    jr jr_033_6329                                ; $631d: $18 $0a

    ld a, $08                                     ; $631f: $3e $08
    ld b, a                                       ; $6321: $47
    ld a, $07                                     ; $6322: $3e $07
    rst $18                                       ; $6324: $df
    ld [hl-], a                                   ; $6325: $32
    ld a, [bc]                                    ; $6326: $0a
    ld a, $08                                     ; $6327: $3e $08

jr_033_6329:
    rst $18                                       ; $6329: $df
    inc [hl]                                      ; $632a: $34
    ld a, [bc]                                    ; $632b: $0a
    ld a, $08                                     ; $632c: $3e $08
    rst $18                                       ; $632e: $df
    ld [$3e0a], sp                                ; $632f: $08 $0a $3e
    ld [$3e47], sp                                ; $6332: $08 $47 $3e
    inc c                                         ; $6335: $0c
    rst $18                                       ; $6336: $df
    jr nc, jr_033_6343                            ; $6337: $30 $0a

    ld a, $0c                                     ; $6339: $3e $0c
    ld b, a                                       ; $633b: $47
    ld a, $07                                     ; $633c: $3e $07
    rst $18                                       ; $633e: $df
    ld [hl-], a                                   ; $633f: $32
    ld a, [bc]                                    ; $6340: $0a
    ld a, $0c                                     ; $6341: $3e $0c

jr_033_6343:
    rst $18                                       ; $6343: $df
    inc [hl]                                      ; $6344: $34
    ld a, [bc]                                    ; $6345: $0a
    ld a, $0c                                     ; $6346: $3e $0c
    rst $18                                       ; $6348: $df
    ld [$3e0a], sp                                ; $6349: $08 $0a $3e
    inc c                                         ; $634c: $0c
    ld b, a                                       ; $634d: $47
    ld a, $02                                     ; $634e: $3e $02
    rst $18                                       ; $6350: $df
    ld l, $0a                                     ; $6351: $2e $0a
    ld a, $02                                     ; $6353: $3e $02
    ld b, $00                                     ; $6355: $06 $00
    rst $18                                       ; $6357: $df
    ld a, [hl-]                                   ; $6358: $3a
    ld a, [bc]                                    ; $6359: $0a
    rst $18                                       ; $635a: $df
    inc a                                         ; $635b: $3c
    ld a, [bc]                                    ; $635c: $0a
    ld a, $02                                     ; $635d: $3e $02
    ld b, a                                       ; $635f: $47
    ld a, $05                                     ; $6360: $3e $05
    rst $18                                       ; $6362: $df
    ld [hl-], a                                   ; $6363: $32
    ld a, [bc]                                    ; $6364: $0a
    ld a, $02                                     ; $6365: $3e $02
    rst $18                                       ; $6367: $df
    inc [hl]                                      ; $6368: $34
    ld a, [bc]                                    ; $6369: $0a
    ld a, $02                                     ; $636a: $3e $02
    rst $18                                       ; $636c: $df
    ld [$3e0a], sp                                ; $636d: $08 $0a $3e
    inc c                                         ; $6370: $0c
    ld b, $00                                     ; $6371: $06 $00
    rst $18                                       ; $6373: $df
    inc l                                         ; $6374: $2c
    ld a, [bc]                                    ; $6375: $0a
    ld a, $08                                     ; $6376: $3e $08
    ld b, $00                                     ; $6378: $06 $00
    rst $18                                       ; $637a: $df
    inc l                                         ; $637b: $2c
    ld a, [bc]                                    ; $637c: $0a
    ld a, $08                                     ; $637d: $3e $08
    ld b, $01                                     ; $637f: $06 $01
    rst $18                                       ; $6381: $df
    ld a, [hl+]                                   ; $6382: $2a
    ld a, [bc]                                    ; $6383: $0a
    ld a, $08                                     ; $6384: $3e $08
    ld bc, $1000                                  ; $6386: $01 $00 $10
    ld de, $0c00                                  ; $6389: $11 $00 $0c
    rst $18                                       ; $638c: $df
    ld [hl+], a                                   ; $638d: $22
    ld a, [bc]                                    ; $638e: $0a
    ld a, $08                                     ; $638f: $3e $08
    rst $18                                       ; $6391: $df
    ld e, $0a                                     ; $6392: $1e $0a
    ld a, $00                                     ; $6394: $3e $00
    ld b, $c0                                     ; $6396: $06 $c0
    rst $18                                       ; $6398: $df
    inc l                                         ; $6399: $2c
    ld a, [bc]                                    ; $639a: $0a
    ld a, $08                                     ; $639b: $3e $08
    ld b, $00                                     ; $639d: $06 $00
    rst $18                                       ; $639f: $df
    ld a, [hl+]                                   ; $63a0: $2a
    ld a, [bc]                                    ; $63a1: $0a
    ld a, $08                                     ; $63a2: $3e $08
    ld b, $00                                     ; $63a4: $06 $00
    rst $18                                       ; $63a6: $df
    inc l                                         ; $63a7: $2c
    ld a, [bc]                                    ; $63a8: $0a
    push af                                       ; $63a9: $f5
    ld a, $14                                     ; $63aa: $3e $14
    rst $18                                       ; $63ac: $df
    inc b                                         ; $63ad: $04
    ld a, [bc]                                    ; $63ae: $0a
    pop af                                        ; $63af: $f1
    ld a, $07                                     ; $63b0: $3e $07
    ld b, a                                       ; $63b2: $47
    ld a, $02                                     ; $63b3: $3e $02
    rst $18                                       ; $63b5: $df
    jr nc, jr_033_63c2                            ; $63b6: $30 $0a

    push af                                       ; $63b8: $f5
    ld a, $28                                     ; $63b9: $3e $28
    rst $18                                       ; $63bb: $df
    inc b                                         ; $63bc: $04
    ld a, [bc]                                    ; $63bd: $0a
    pop af                                        ; $63be: $f1
    ld a, $07                                     ; $63bf: $3e $07
    ld b, a                                       ; $63c1: $47

jr_033_63c2:
    ld a, $05                                     ; $63c2: $3e $05
    rst $18                                       ; $63c4: $df
    ld [hl-], a                                   ; $63c5: $32
    ld a, [bc]                                    ; $63c6: $0a
    ld a, $02                                     ; $63c7: $3e $02
    ld b, a                                       ; $63c9: $47
    ld a, $05                                     ; $63ca: $3e $05
    rst $18                                       ; $63cc: $df
    ld [hl-], a                                   ; $63cd: $32
    ld a, [bc]                                    ; $63ce: $0a
    ld a, $02                                     ; $63cf: $3e $02
    rst $18                                       ; $63d1: $df
    inc [hl]                                      ; $63d2: $34
    ld a, [bc]                                    ; $63d3: $0a
    ld a, $00                                     ; $63d4: $3e $00
    ld b, $00                                     ; $63d6: $06 $00
    rst $18                                       ; $63d8: $df
    ld a, [hl-]                                   ; $63d9: $3a
    ld a, [bc]                                    ; $63da: $0a
    rst $18                                       ; $63db: $df
    inc a                                         ; $63dc: $3c
    ld a, [bc]                                    ; $63dd: $0a
    ld a, $00                                     ; $63de: $3e $00
    ld b, a                                       ; $63e0: $47
    ld a, $07                                     ; $63e1: $3e $07
    rst $18                                       ; $63e3: $df
    ld l, $0a                                     ; $63e4: $2e $0a
    ld a, $00                                     ; $63e6: $3e $00
    ld b, a                                       ; $63e8: $47
    ld a, $02                                     ; $63e9: $3e $02
    rst $18                                       ; $63eb: $df
    ld l, $0a                                     ; $63ec: $2e $0a
    push af                                       ; $63ee: $f5
    ld a, $1e                                     ; $63ef: $3e $1e
    rst $18                                       ; $63f1: $df
    inc b                                         ; $63f2: $04
    ld a, [bc]                                    ; $63f3: $0a
    pop af                                        ; $63f4: $f1
    call Call_033_66dc                            ; $63f5: $cd $dc $66
    ret                                           ; $63f8: $c9


Call_033_63f9:
    rst $30                                       ; $63f9: $f7
    ldh [rIF], a                                  ; $63fa: $e0 $0f
    jr z, jr_033_642b                             ; $63fc: $28 $2d

    ld b, $2a                                     ; $63fe: $06 $2a
    ld c, $06                                     ; $6400: $0e $06
    ld d, $1a                                     ; $6402: $16 $1a
    ld e, $06                                     ; $6404: $1e $06
    ld h, $08                                     ; $6406: $26 $08
    ld l, $05                                     ; $6408: $2e $05
    rst $18                                       ; $640a: $df
    ld a, [bc]                                    ; $640b: $0a
    dec bc                                        ; $640c: $0b
    ld b, $2a                                     ; $640d: $06 $2a
    ld c, $06                                     ; $640f: $0e $06
    ld d, $1a                                     ; $6411: $16 $1a
    ld e, $06                                     ; $6413: $1e $06
    ld h, $08                                     ; $6415: $26 $08
    ld l, $05                                     ; $6417: $2e $05
    rst $18                                       ; $6419: $df
    inc c                                         ; $641a: $0c
    dec bc                                        ; $641b: $0b
    ld b, $2a                                     ; $641c: $06 $2a
    ld c, $06                                     ; $641e: $0e $06
    ld d, $1a                                     ; $6420: $16 $1a
    ld e, $06                                     ; $6422: $1e $06
    ld h, $08                                     ; $6424: $26 $08
    ld l, $05                                     ; $6426: $2e $05
    rst $18                                       ; $6428: $df
    ld c, $0b                                     ; $6429: $0e $0b

jr_033_642b:
    ret                                           ; $642b: $c9


Jump_033_642c:
    rst $30                                       ; $642c: $f7
    ldh [rIF], a                                  ; $642d: $e0 $0f
    jp nz, Jump_033_668d                          ; $642f: $c2 $8d $66

    ld hl, $146e                                  ; $6432: $21 $6e $14
    rst $18                                       ; $6435: $df
    ld c, $0a                                     ; $6436: $0e $0a
    ld a, $02                                     ; $6438: $3e $02
    ld b, a                                       ; $643a: $47
    ld a, $07                                     ; $643b: $3e $07
    rst $18                                       ; $643d: $df
    jr nc, @+$0c                                  ; $643e: $30 $0a

    push af                                       ; $6440: $f5
    ld a, $1e                                     ; $6441: $3e $1e
    rst $18                                       ; $6443: $df
    inc b                                         ; $6444: $04
    ld a, [bc]                                    ; $6445: $0a
    pop af                                        ; $6446: $f1
    ld a, $07                                     ; $6447: $3e $07
    ld b, $00                                     ; $6449: $06 $00
    rst $18                                       ; $644b: $df
    inc l                                         ; $644c: $2c
    ld a, [bc]                                    ; $644d: $0a
    ld a, $02                                     ; $644e: $3e $02
    ld b, $00                                     ; $6450: $06 $00
    rst $18                                       ; $6452: $df
    inc l                                         ; $6453: $2c
    ld a, [bc]                                    ; $6454: $0a
    ld a, $02                                     ; $6455: $3e $02
    ld b, a                                       ; $6457: $47
    ld a, $05                                     ; $6458: $3e $05
    rst $18                                       ; $645a: $df
    ld [hl-], a                                   ; $645b: $32
    ld a, [bc]                                    ; $645c: $0a
    ld a, $07                                     ; $645d: $3e $07
    ld b, a                                       ; $645f: $47
    ld a, $05                                     ; $6460: $3e $05
    rst $18                                       ; $6462: $df
    ld [hl-], a                                   ; $6463: $32
    ld a, [bc]                                    ; $6464: $0a
    ld a, $07                                     ; $6465: $3e $07
    rst $18                                       ; $6467: $df
    inc [hl]                                      ; $6468: $34
    ld a, [bc]                                    ; $6469: $0a
    ld a, $06                                     ; $646a: $3e $06
    ld b, $80                                     ; $646c: $06 $80
    rst $18                                       ; $646e: $df
    inc l                                         ; $646f: $2c
    ld a, [bc]                                    ; $6470: $0a
    xor a                                         ; $6471: $af
    ld bc, $1f00                                  ; $6472: $01 $00 $1f
    ld de, $0b00                                  ; $6475: $11 $00 $0b
    rst $18                                       ; $6478: $df
    jr c, jr_033_6485                             ; $6479: $38 $0a

    rst $18                                       ; $647b: $df
    inc a                                         ; $647c: $3c
    ld a, [bc]                                    ; $647d: $0a
    ld a, $06                                     ; $647e: $3e $06
    ld b, $80                                     ; $6480: $06 $80
    rst $18                                       ; $6482: $df
    inc l                                         ; $6483: $2c
    ld a, [bc]                                    ; $6484: $0a

jr_033_6485:
    ld a, $06                                     ; $6485: $3e $06
    ld b, a                                       ; $6487: $47
    ld a, $05                                     ; $6488: $3e $05
    rst $18                                       ; $648a: $df
    ld [hl-], a                                   ; $648b: $32
    ld a, [bc]                                    ; $648c: $0a
    ld a, $06                                     ; $648d: $3e $06
    rst $18                                       ; $648f: $df
    inc [hl]                                      ; $6490: $34
    ld a, [bc]                                    ; $6491: $0a
    ld a, $06                                     ; $6492: $3e $06
    ld b, $c0                                     ; $6494: $06 $c0
    rst $18                                       ; $6496: $df
    inc l                                         ; $6497: $2c
    ld a, [bc]                                    ; $6498: $0a
    call Call_033_6e45                            ; $6499: $cd $45 $6e
    push af                                       ; $649c: $f5
    ld a, $1e                                     ; $649d: $3e $1e
    rst $18                                       ; $649f: $df
    inc b                                         ; $64a0: $04
    ld a, [bc]                                    ; $64a1: $0a
    pop af                                        ; $64a2: $f1
    ld a, $06                                     ; $64a3: $3e $06
    ld b, a                                       ; $64a5: $47
    ld a, $06                                     ; $64a6: $3e $06
    rst $18                                       ; $64a8: $df
    ld [hl-], a                                   ; $64a9: $32
    ld a, [bc]                                    ; $64aa: $0a
    ld a, $06                                     ; $64ab: $3e $06
    rst $18                                       ; $64ad: $df
    inc [hl]                                      ; $64ae: $34
    ld a, [bc]                                    ; $64af: $0a
    ld a, $06                                     ; $64b0: $3e $06
    ld b, a                                       ; $64b2: $47
    ld a, $06                                     ; $64b3: $3e $06
    rst $18                                       ; $64b5: $df
    ld [hl-], a                                   ; $64b6: $32
    ld a, [bc]                                    ; $64b7: $0a
    ld a, $06                                     ; $64b8: $3e $06
    rst $18                                       ; $64ba: $df
    inc [hl]                                      ; $64bb: $34
    ld a, [bc]                                    ; $64bc: $0a
    call Call_033_6b62                            ; $64bd: $cd $62 $6b
    ld c, $02                                     ; $64c0: $0e $02
    call Call_000_25a1                            ; $64c2: $cd $a1 $25
    ld a, $06                                     ; $64c5: $3e $06
    ld b, a                                       ; $64c7: $47
    ld a, $06                                     ; $64c8: $3e $06
    rst $18                                       ; $64ca: $df
    ld [hl-], a                                   ; $64cb: $32
    ld a, [bc]                                    ; $64cc: $0a
    ld a, $06                                     ; $64cd: $3e $06
    rst $18                                       ; $64cf: $df
    inc [hl]                                      ; $64d0: $34
    ld a, [bc]                                    ; $64d1: $0a
    rst $20                                       ; $64d2: $e7
    ldh [rIF], a                                  ; $64d3: $e0 $0f
    rst $18                                       ; $64d5: $df
    ld b, [hl]                                    ; $64d6: $46
    inc b                                         ; $64d7: $04
    call Call_033_63f9                            ; $64d8: $cd $f9 $63
    ld c, $02                                     ; $64db: $0e $02
    call Call_000_25af                            ; $64dd: $cd $af $25
    call Call_000_2625                            ; $64e0: $cd $25 $26
    ld a, $06                                     ; $64e3: $3e $06
    ld b, $80                                     ; $64e5: $06 $80
    rst $18                                       ; $64e7: $df
    inc l                                         ; $64e8: $2c
    ld a, [bc]                                    ; $64e9: $0a
    push af                                       ; $64ea: $f5
    ld a, $14                                     ; $64eb: $3e $14
    rst $18                                       ; $64ed: $df
    inc b                                         ; $64ee: $04
    ld a, [bc]                                    ; $64ef: $0a
    pop af                                        ; $64f0: $f1
    ld a, $06                                     ; $64f1: $3e $06
    ld b, $01                                     ; $64f3: $06 $01
    rst $18                                       ; $64f5: $df
    ld a, [hl+]                                   ; $64f6: $2a
    ld a, [bc]                                    ; $64f7: $0a
    ld a, $06                                     ; $64f8: $3e $06
    ld bc, $2100                                  ; $64fa: $01 $00 $21
    ld de, $0b00                                  ; $64fd: $11 $00 $0b
    rst $18                                       ; $6500: $df
    ld [hl+], a                                   ; $6501: $22
    ld a, [bc]                                    ; $6502: $0a
    ld a, $06                                     ; $6503: $3e $06
    rst $18                                       ; $6505: $df
    ld e, $0a                                     ; $6506: $1e $0a
    ld a, $06                                     ; $6508: $3e $06
    ld b, $00                                     ; $650a: $06 $00
    rst $18                                       ; $650c: $df
    ld a, [hl+]                                   ; $650d: $2a
    ld a, [bc]                                    ; $650e: $0a
    ld a, $06                                     ; $650f: $3e $06
    ld b, $80                                     ; $6511: $06 $80
    rst $18                                       ; $6513: $df
    inc l                                         ; $6514: $2c
    ld a, [bc]                                    ; $6515: $0a
    ld a, $02                                     ; $6516: $3e $02
    ld b, $00                                     ; $6518: $06 $00
    rst $18                                       ; $651a: $df
    ld a, [hl-]                                   ; $651b: $3a
    ld a, [bc]                                    ; $651c: $0a
    rst $18                                       ; $651d: $df
    inc a                                         ; $651e: $3c
    ld a, [bc]                                    ; $651f: $0a
    ld a, $00                                     ; $6520: $3e $00
    ld b, a                                       ; $6522: $47
    ld a, $02                                     ; $6523: $3e $02
    rst $18                                       ; $6525: $df
    ld l, $0a                                     ; $6526: $2e $0a
    ld a, $02                                     ; $6528: $3e $02
    rst $18                                       ; $652a: $df
    ld [$3e0a], sp                                ; $652b: $08 $0a $3e
    ld [bc], a                                    ; $652e: $02
    ld b, a                                       ; $652f: $47
    ld a, $05                                     ; $6530: $3e $05
    rst $18                                       ; $6532: $df
    ld [hl-], a                                   ; $6533: $32
    ld a, [bc]                                    ; $6534: $0a
    ld a, $02                                     ; $6535: $3e $02
    rst $18                                       ; $6537: $df
    inc [hl]                                      ; $6538: $34
    ld a, [bc]                                    ; $6539: $0a
    ld a, $02                                     ; $653a: $3e $02
    rst $18                                       ; $653c: $df
    ld [$cf0a], sp                                ; $653d: $08 $0a $cf
    adc c                                         ; $6540: $89
    ld a, $0b                                     ; $6541: $3e $0b
    ld de, $ff80                                  ; $6543: $11 $80 $ff
    rst $18                                       ; $6546: $df
    ld b, b                                       ; $6547: $40
    ld a, [bc]                                    ; $6548: $0a
    ldh a, [$95]                                  ; $6549: $f0 $95
    ld b, a                                       ; $654b: $47
    ld a, $0a                                     ; $654c: $3e $0a
    ld de, $6efa                                  ; $654e: $11 $fa $6e
    rst $18                                       ; $6551: $df
    jr jr_033_655e                                ; $6552: $18 $0a

    ld a, $07                                     ; $6554: $3e $07
    ld b, $40                                     ; $6556: $06 $40
    ld de, $0200                                  ; $6558: $11 $00 $02
    rst $18                                       ; $655b: $df
    jr z, jr_033_6568                             ; $655c: $28 $0a

jr_033_655e:
    rst $08                                       ; $655e: $cf
    adc d                                         ; $655f: $8a
    ld a, $09                                     ; $6560: $3e $09
    ld de, $ff40                                  ; $6562: $11 $40 $ff
    rst $18                                       ; $6565: $df
    ld b, b                                       ; $6566: $40
    ld a, [bc]                                    ; $6567: $0a

jr_033_6568:
    ld a, $09                                     ; $6568: $3e $09
    rst $18                                       ; $656a: $df
    ld b, d                                       ; $656b: $42
    ld a, [bc]                                    ; $656c: $0a
    rst $08                                       ; $656d: $cf
    adc c                                         ; $656e: $89
    ld a, $07                                     ; $656f: $3e $07
    ld de, $ff40                                  ; $6571: $11 $40 $ff
    rst $18                                       ; $6574: $df
    ld b, b                                       ; $6575: $40
    ld a, [bc]                                    ; $6576: $0a
    ld a, $07                                     ; $6577: $3e $07
    rst $18                                       ; $6579: $df
    ld b, d                                       ; $657a: $42
    ld a, [bc]                                    ; $657b: $0a
    ldh a, [$95]                                  ; $657c: $f0 $95
    ld b, a                                       ; $657e: $47
    ld a, $0a                                     ; $657f: $3e $0a
    ld de, $6f15                                  ; $6581: $11 $15 $6f
    rst $18                                       ; $6584: $df
    jr @+$0c                                      ; $6585: $18 $0a

    ldh a, [$95]                                  ; $6587: $f0 $95
    ld b, a                                       ; $6589: $47
    ld a, $09                                     ; $658a: $3e $09
    ld de, $6f15                                  ; $658c: $11 $15 $6f
    rst $18                                       ; $658f: $df
    jr @+$0c                                      ; $6590: $18 $0a

    ldh a, [$95]                                  ; $6592: $f0 $95
    ld b, a                                       ; $6594: $47
    ld a, $0b                                     ; $6595: $3e $0b
    ld de, $6f15                                  ; $6597: $11 $15 $6f
    rst $18                                       ; $659a: $df
    jr @+$0c                                      ; $659b: $18 $0a

    ldh a, [$95]                                  ; $659d: $f0 $95
    ld b, a                                       ; $659f: $47
    ld a, $07                                     ; $65a0: $3e $07
    ld de, $6f15                                  ; $65a2: $11 $15 $6f
    rst $18                                       ; $65a5: $df
    jr @+$0c                                      ; $65a6: $18 $0a

    ldh a, [$95]                                  ; $65a8: $f0 $95
    ld b, a                                       ; $65aa: $47
    ld a, $08                                     ; $65ab: $3e $08
    ld de, $6f15                                  ; $65ad: $11 $15 $6f
    rst $18                                       ; $65b0: $df
    jr @+$0c                                      ; $65b1: $18 $0a

    ldh a, [$95]                                  ; $65b3: $f0 $95
    ld b, a                                       ; $65b5: $47
    ld a, $0c                                     ; $65b6: $3e $0c
    ld de, $6f21                                  ; $65b8: $11 $21 $6f
    rst $18                                       ; $65bb: $df
    jr @+$0c                                      ; $65bc: $18 $0a

    push af                                       ; $65be: $f5
    ld a, $64                                     ; $65bf: $3e $64
    rst $18                                       ; $65c1: $df
    inc b                                         ; $65c2: $04
    ld a, [bc]                                    ; $65c3: $0a
    pop af                                        ; $65c4: $f1
    ld a, $02                                     ; $65c5: $3e $02
    ld bc, $0010                                  ; $65c7: $01 $10 $00
    rst $18                                       ; $65ca: $df
    ld d, $0a                                     ; $65cb: $16 $0a
    ld a, $00                                     ; $65cd: $3e $00
    ld bc, $0010                                  ; $65cf: $01 $10 $00
    rst $18                                       ; $65d2: $df
    ld d, $0a                                     ; $65d3: $16 $0a
    ld a, $02                                     ; $65d5: $3e $02
    ld bc, $1400                                  ; $65d7: $01 $00 $14
    ld de, $0c00                                  ; $65da: $11 $00 $0c
    rst $18                                       ; $65dd: $df
    ld [hl+], a                                   ; $65de: $22
    ld a, [bc]                                    ; $65df: $0a
    ld a, $02                                     ; $65e0: $3e $02
    rst $18                                       ; $65e2: $df
    ld e, $0a                                     ; $65e3: $1e $0a
    ld a, $02                                     ; $65e5: $3e $02
    ld b, a                                       ; $65e7: $47
    ld a, $05                                     ; $65e8: $3e $05
    rst $18                                       ; $65ea: $df
    ld [hl-], a                                   ; $65eb: $32
    ld a, [bc]                                    ; $65ec: $0a
    ld a, $02                                     ; $65ed: $3e $02
    rst $18                                       ; $65ef: $df
    inc [hl]                                      ; $65f0: $34
    ld a, [bc]                                    ; $65f1: $0a
    ld a, $02                                     ; $65f2: $3e $02
    ld bc, $1f00                                  ; $65f4: $01 $00 $1f
    ld de, $0b00                                  ; $65f7: $11 $00 $0b
    rst $18                                       ; $65fa: $df
    ld [hl+], a                                   ; $65fb: $22
    ld a, [bc]                                    ; $65fc: $0a
    ld bc, $0010                                  ; $65fd: $01 $10 $00
    rst $18                                       ; $6600: $df
    ld [hl], $0a                                  ; $6601: $36 $0a
    xor a                                         ; $6603: $af
    ld bc, $2100                                  ; $6604: $01 $00 $21
    ld de, $0b00                                  ; $6607: $11 $00 $0b
    rst $18                                       ; $660a: $df
    jr c, @+$0c                                   ; $660b: $38 $0a

    push af                                       ; $660d: $f5
    ld a, $1e                                     ; $660e: $3e $1e
    rst $18                                       ; $6610: $df
    inc b                                         ; $6611: $04
    ld a, [bc]                                    ; $6612: $0a
    pop af                                        ; $6613: $f1
    ld a, $00                                     ; $6614: $3e $00
    ld bc, $1f00                                  ; $6616: $01 $00 $1f
    ld de, $0d00                                  ; $6619: $11 $00 $0d
    rst $18                                       ; $661c: $df
    ld [hl+], a                                   ; $661d: $22
    ld a, [bc]                                    ; $661e: $0a
    ld a, $02                                     ; $661f: $3e $02
    rst $18                                       ; $6621: $df
    ld e, $0a                                     ; $6622: $1e $0a
    ld a, $02                                     ; $6624: $3e $02
    ld b, $c0                                     ; $6626: $06 $c0
    rst $18                                       ; $6628: $df
    inc l                                         ; $6629: $2c
    ld a, [bc]                                    ; $662a: $0a
    push af                                       ; $662b: $f5
    ld a, $03                                     ; $662c: $3e $03
    rst $18                                       ; $662e: $df
    inc b                                         ; $662f: $04
    ld a, [bc]                                    ; $6630: $0a
    pop af                                        ; $6631: $f1
    ld a, $02                                     ; $6632: $3e $02
    ld bc, $1f00                                  ; $6634: $01 $00 $1f
    ld de, $0800                                  ; $6637: $11 $00 $08
    rst $18                                       ; $663a: $df
    ld [hl+], a                                   ; $663b: $22
    ld a, [bc]                                    ; $663c: $0a
    push af                                       ; $663d: $f5
    ld a, $0a                                     ; $663e: $3e $0a
    rst $18                                       ; $6640: $df
    inc b                                         ; $6641: $04
    ld a, [bc]                                    ; $6642: $0a
    pop af                                        ; $6643: $f1
    ld a, $02                                     ; $6644: $3e $02
    ld b, a                                       ; $6646: $47
    ld a, $0a                                     ; $6647: $3e $0a
    rst $18                                       ; $6649: $df
    ld [hl-], a                                   ; $664a: $32
    ld a, [bc]                                    ; $664b: $0a
    push af                                       ; $664c: $f5
    ld a, $14                                     ; $664d: $3e $14
    rst $18                                       ; $664f: $df
    inc b                                         ; $6650: $04
    ld a, [bc]                                    ; $6651: $0a
    pop af                                        ; $6652: $f1
    ld a, $00                                     ; $6653: $3e $00
    ld bc, $1f00                                  ; $6655: $01 $00 $1f
    ld de, $0800                                  ; $6658: $11 $00 $08
    rst $18                                       ; $665b: $df
    ld [hl+], a                                   ; $665c: $22
    ld a, [bc]                                    ; $665d: $0a
    ld a, $02                                     ; $665e: $3e $02
    rst $18                                       ; $6660: $df
    ld e, $0a                                     ; $6661: $1e $0a
    ld a, $00                                     ; $6663: $3e $00
    ld b, a                                       ; $6665: $47
    ld a, $0a                                     ; $6666: $3e $0a
    rst $18                                       ; $6668: $df
    ld [hl-], a                                   ; $6669: $32
    ld a, [bc]                                    ; $666a: $0a
    ld a, $02                                     ; $666b: $3e $02
    ld bc, $1f00                                  ; $666d: $01 $00 $1f
    ld de, $3000                                  ; $6670: $11 $00 $30
    rst $18                                       ; $6673: $df
    jr nz, jr_033_6680                            ; $6674: $20 $0a

    push af                                       ; $6676: $f5
    ld a, $14                                     ; $6677: $3e $14
    rst $18                                       ; $6679: $df
    inc b                                         ; $667a: $04
    ld a, [bc]                                    ; $667b: $0a
    pop af                                        ; $667c: $f1
    ld a, $00                                     ; $667d: $3e $00
    rst $18                                       ; $667f: $df

jr_033_6680:
    ld e, $0a                                     ; $6680: $1e $0a
    ld a, $00                                     ; $6682: $3e $00
    ld bc, $1f00                                  ; $6684: $01 $00 $1f
    ld de, $3000                                  ; $6687: $11 $00 $30
    rst $18                                       ; $668a: $df
    jr nz, @+$0c                                  ; $668b: $20 $0a

Jump_033_668d:
    ld a, $00                                     ; $668d: $3e $00
    ld [$c96c], a                                 ; $668f: $ea $6c $c9
    rst $08                                       ; $6692: $cf
    sbc c                                         ; $6693: $99
    ld a, $0a                                     ; $6694: $3e $0a
    ld [$c967], a                                 ; $6696: $ea $67 $c9
    ld c, $04                                     ; $6699: $0e $04
    call Call_000_25a1                            ; $669b: $cd $a1 $25
    call Call_000_2625                            ; $669e: $cd $25 $26
    rst $18                                       ; $66a1: $df
    inc e                                         ; $66a2: $1c
    db $10                                        ; $66a3: $10
    ld a, $1d                                     ; $66a4: $3e $1d
    ld b, a                                       ; $66a6: $47
    ld a, $06                                     ; $66a7: $3e $06
    ld c, a                                       ; $66a9: $4f
    rst $18                                       ; $66aa: $df
    ld c, [hl]                                    ; $66ab: $4e
    ld a, [bc]                                    ; $66ac: $0a
    ld a, $01                                     ; $66ad: $3e $01
    ld [$c834], a                                 ; $66af: $ea $34 $c8
    ld bc, $8000                                  ; $66b2: $01 $00 $80
    rst $18                                       ; $66b5: $df
    ld e, $02                                     ; $66b6: $1e $02
    ld bc, $ff01                                  ; $66b8: $01 $01 $ff
    rst $18                                       ; $66bb: $df
    ld e, $02                                     ; $66bc: $1e $02
    ld hl, $0501                                  ; $66be: $21 $01 $05
    rst $18                                       ; $66c1: $df
    db $10                                        ; $66c2: $10
    db $10                                        ; $66c3: $10
    call Call_033_66cb                            ; $66c4: $cd $cb $66
    rst $18                                       ; $66c7: $df
    jr nc, jr_033_66da                            ; $66c8: $30 $10

    ret                                           ; $66ca: $c9


Call_033_66cb:
    rst $30                                       ; $66cb: $f7
    nop                                           ; $66cc: $00
    add hl, bc                                    ; $66cd: $09
    jr z, jr_033_66d6                             ; $66ce: $28 $06

    ld a, $01                                     ; $66d0: $3e $01
    rst $18                                       ; $66d2: $df
    ld [de], a                                    ; $66d3: $12
    db $10                                        ; $66d4: $10
    ret                                           ; $66d5: $c9


jr_033_66d6:
    ld a, $12                                     ; $66d6: $3e $12
    rst $18                                       ; $66d8: $df
    ld [de], a                                    ; $66d9: $12

jr_033_66da:
    db $10                                        ; $66da: $10
    ret                                           ; $66db: $c9


Call_033_66dc:
    ld hl, $1477                                  ; $66dc: $21 $77 $14
    rst $18                                       ; $66df: $df
    ld c, $0a                                     ; $66e0: $0e $0a
    ld a, $02                                     ; $66e2: $3e $02
    rst $18                                       ; $66e4: $df
    ld a, [bc]                                    ; $66e5: $0a
    ld a, [bc]                                    ; $66e6: $0a
    push af                                       ; $66e7: $f5
    ld a, $0a                                     ; $66e8: $3e $0a
    rst $18                                       ; $66ea: $df
    inc b                                         ; $66eb: $04
    ld a, [bc]                                    ; $66ec: $0a
    pop af                                        ; $66ed: $f1
    rst $18                                       ; $66ee: $df
    ld [de], a                                    ; $66ef: $12
    ld a, [bc]                                    ; $66f0: $0a
    rst $18                                       ; $66f1: $df
    inc c                                         ; $66f2: $0c
    ld a, [bc]                                    ; $66f3: $0a
    push af                                       ; $66f4: $f5
    ld a, $05                                     ; $66f5: $3e $05
    rst $18                                       ; $66f7: $df
    inc b                                         ; $66f8: $04
    ld a, [bc]                                    ; $66f9: $0a
    pop af                                        ; $66fa: $f1
    and a                                         ; $66fb: $a7
    jp z, Jump_033_6710                           ; $66fc: $ca $10 $67

    rst $30                                       ; $66ff: $f7
    nop                                           ; $6700: $00
    ld e, $28                                     ; $6701: $1e $28
    ld b, $21                                     ; $6703: $06 $21
    halt                                          ; $6705: $76
    inc d                                         ; $6706: $14
    rst $18                                       ; $6707: $df
    ld c, $0a                                     ; $6708: $0e $0a
    ld a, $02                                     ; $670a: $3e $02
    rst $18                                       ; $670c: $df
    ld [$c90a], sp                                ; $670d: $08 $0a $c9

Jump_033_6710:
    ld a, $00                                     ; $6710: $3e $00
    ld bc, $1400                                  ; $6712: $01 $00 $14
    ld de, $0f00                                  ; $6715: $11 $00 $0f
    rst $18                                       ; $6718: $df
    ld [hl+], a                                   ; $6719: $22
    ld a, [bc]                                    ; $671a: $0a
    ld a, $00                                     ; $671b: $3e $00
    rst $18                                       ; $671d: $df
    ld e, $0a                                     ; $671e: $1e $0a
    ld a, $00                                     ; $6720: $3e $00
    ld b, $c0                                     ; $6722: $06 $c0
    rst $18                                       ; $6724: $df
    inc l                                         ; $6725: $2c
    ld a, [bc]                                    ; $6726: $0a
    jp Jump_033_642c                              ; $6727: $c3 $2c $64


Call_033_672a:
    ld a, [$c46a]                                 ; $672a: $fa $6a $c4
    cp $06                                        ; $672d: $fe $06
    jp nz, Jump_033_69f5                          ; $672f: $c2 $f5 $69

    ld a, [$c96c]                                 ; $6732: $fa $6c $c9
    cp $00                                        ; $6735: $fe $00
    jp z, Jump_033_69f5                           ; $6737: $ca $f5 $69

    ld a, [$c96c]                                 ; $673a: $fa $6c $c9
    cp $04                                        ; $673d: $fe $04
    jp nc, Jump_033_69f5                          ; $673f: $d2 $f5 $69

    rst $30                                       ; $6742: $f7
    ldh [$0d], a                                  ; $6743: $e0 $0d
    jp nz, Jump_033_696b                          ; $6745: $c2 $6b $69

    ld a, [$c96c]                                 ; $6748: $fa $6c $c9
    cp $01                                        ; $674b: $fe $01
    jr nz, jr_033_675c                            ; $674d: $20 $0d

    rst $20                                       ; $674f: $e7
    ldh [$0d], a                                  ; $6750: $e0 $0d
    ld b, $00                                     ; $6752: $06 $00
    ld c, $fa                                     ; $6754: $0e $fa
    rst $18                                       ; $6756: $df
    ld c, [hl]                                    ; $6757: $4e
    ld a, [bc]                                    ; $6758: $0a
    rst $18                                       ; $6759: $df
    inc [hl]                                      ; $675a: $34
    ld [bc], a                                    ; $675b: $02

jr_033_675c:
    ld b, $2a                                     ; $675c: $06 $2a
    ld c, $10                                     ; $675e: $0e $10
    ld d, $10                                     ; $6760: $16 $10
    ld e, $11                                     ; $6762: $1e $11
    ld h, $02                                     ; $6764: $26 $02
    ld l, $02                                     ; $6766: $2e $02
    rst $18                                       ; $6768: $df
    ld a, [bc]                                    ; $6769: $0a
    dec bc                                        ; $676a: $0b
    ldh a, [$95]                                  ; $676b: $f0 $95
    ld hl, $6a00                                  ; $676d: $21 $00 $6a
    rst $18                                       ; $6770: $df
    ld b, $0a                                     ; $6771: $06 $0a
    ld bc, $0040                                  ; $6773: $01 $40 $00
    rst $18                                       ; $6776: $df
    ld [hl], $0a                                  ; $6777: $36 $0a
    ld a, $02                                     ; $6779: $3e $02
    ld b, $00                                     ; $677b: $06 $00
    rst $18                                       ; $677d: $df
    ld a, [hl-]                                   ; $677e: $3a
    ld a, [bc]                                    ; $677f: $0a
    ld a, $00                                     ; $6780: $3e $00
    ld bc, $1400                                  ; $6782: $01 $00 $14
    ld de, $0e00                                  ; $6785: $11 $00 $0e
    rst $18                                       ; $6788: $df
    jr nz, @+$0c                                  ; $6789: $20 $0a

    ld a, [$c96c]                                 ; $678b: $fa $6c $c9
    cp $01                                        ; $678e: $fe $01
    jr nz, jr_033_67ba                            ; $6790: $20 $28

    ld b, $2a                                     ; $6792: $06 $2a
    ld c, $0d                                     ; $6794: $0e $0d
    ld d, $13                                     ; $6796: $16 $13
    ld e, $0e                                     ; $6798: $1e $0e
    ld h, $02                                     ; $679a: $26 $02
    ld l, $02                                     ; $679c: $2e $02
    rst $18                                       ; $679e: $df
    ld a, [bc]                                    ; $679f: $0a
    dec bc                                        ; $67a0: $0b
    ld a, $0f                                     ; $67a1: $3e $0f
    ld b, $00                                     ; $67a3: $06 $00
    rst $18                                       ; $67a5: $df
    ld b, [hl]                                    ; $67a6: $46
    ld a, [bc]                                    ; $67a7: $0a
    ld a, $10                                     ; $67a8: $3e $10
    ld b, $00                                     ; $67aa: $06 $00
    rst $18                                       ; $67ac: $df
    ld b, [hl]                                    ; $67ad: $46
    ld a, [bc]                                    ; $67ae: $0a
    ld hl, $1479                                  ; $67af: $21 $79 $14
    rst $18                                       ; $67b2: $df
    ld c, $0a                                     ; $67b3: $0e $0a
    rst $20                                       ; $67b5: $e7
    jr nz, jr_033_67c7                            ; $67b6: $20 $0f

    jr jr_033_681d                                ; $67b8: $18 $63

jr_033_67ba:
    cp $02                                        ; $67ba: $fe $02
    jr nz, jr_033_67ec                            ; $67bc: $20 $2e

    rst $28                                       ; $67be: $ef
    jr nz, jr_033_67d0                            ; $67bf: $20 $0f

    ld b, $2d                                     ; $67c1: $06 $2d
    ld c, $0d                                     ; $67c3: $0e $0d
    ld d, $13                                     ; $67c5: $16 $13

jr_033_67c7:
    ld e, $0e                                     ; $67c7: $1e $0e
    ld h, $02                                     ; $67c9: $26 $02
    ld l, $02                                     ; $67cb: $2e $02
    rst $18                                       ; $67cd: $df
    ld a, [bc]                                    ; $67ce: $0a
    dec bc                                        ; $67cf: $0b

jr_033_67d0:
    ld hl, $147a                                  ; $67d0: $21 $7a $14
    rst $18                                       ; $67d3: $df
    ld c, $0a                                     ; $67d4: $0e $0a
    ld a, $0e                                     ; $67d6: $3e $0e
    ld b, $00                                     ; $67d8: $06 $00
    rst $18                                       ; $67da: $df
    ld b, [hl]                                    ; $67db: $46
    ld a, [bc]                                    ; $67dc: $0a
    ld a, $10                                     ; $67dd: $3e $10
    ld b, $00                                     ; $67df: $06 $00
    rst $18                                       ; $67e1: $df
    ld b, [hl]                                    ; $67e2: $46
    ld a, [bc]                                    ; $67e3: $0a
    ld hl, $0002                                  ; $67e4: $21 $02 $00
    rst $18                                       ; $67e7: $df
    ld d, [hl]                                    ; $67e8: $56
    dec b                                         ; $67e9: $05
    jr jr_033_681d                                ; $67ea: $18 $31

jr_033_67ec:
    cp $03                                        ; $67ec: $fe $03
    jp nz, Jump_033_69f5                          ; $67ee: $c2 $f5 $69

    rst $28                                       ; $67f1: $ef
    jr nz, jr_033_6803                            ; $67f2: $20 $0f

    ld b, $30                                     ; $67f4: $06 $30
    ld c, $0d                                     ; $67f6: $0e $0d
    ld d, $13                                     ; $67f8: $16 $13
    ld e, $0e                                     ; $67fa: $1e $0e
    ld h, $02                                     ; $67fc: $26 $02
    ld l, $02                                     ; $67fe: $2e $02
    rst $18                                       ; $6800: $df
    ld a, [bc]                                    ; $6801: $0a
    dec bc                                        ; $6802: $0b

jr_033_6803:
    ld hl, $147a                                  ; $6803: $21 $7a $14
    rst $18                                       ; $6806: $df
    ld c, $0a                                     ; $6807: $0e $0a
    ld a, $0e                                     ; $6809: $3e $0e
    ld b, $00                                     ; $680b: $06 $00
    rst $18                                       ; $680d: $df
    ld b, [hl]                                    ; $680e: $46
    ld a, [bc]                                    ; $680f: $0a
    ld a, $0f                                     ; $6810: $3e $0f
    ld b, $00                                     ; $6812: $06 $00
    rst $18                                       ; $6814: $df
    ld b, [hl]                                    ; $6815: $46
    ld a, [bc]                                    ; $6816: $0a
    ld hl, $0003                                  ; $6817: $21 $03 $00
    rst $18                                       ; $681a: $df
    ld d, [hl]                                    ; $681b: $56
    dec b                                         ; $681c: $05

jr_033_681d:
    rst $08                                       ; $681d: $cf
    inc b                                         ; $681e: $04
    rst $08                                       ; $681f: $cf
    sub e                                         ; $6820: $93
    rst $18                                       ; $6821: $df
    inc a                                         ; $6822: $3c
    ld a, [bc]                                    ; $6823: $0a
    ld c, $02                                     ; $6824: $0e $02
    call Call_000_25af                            ; $6826: $cd $af $25
    call Call_000_2625                            ; $6829: $cd $25 $26
    ld a, $02                                     ; $682c: $3e $02
    ld bc, $0008                                  ; $682e: $01 $08 $00
    rst $18                                       ; $6831: $df
    ld d, $0a                                     ; $6832: $16 $0a
    ld a, $0e                                     ; $6834: $3e $0e
    ld bc, $0008                                  ; $6836: $01 $08 $00
    rst $18                                       ; $6839: $df
    ld d, $0a                                     ; $683a: $16 $0a
    ld a, $0f                                     ; $683c: $3e $0f
    ld bc, $0008                                  ; $683e: $01 $08 $00
    rst $18                                       ; $6841: $df
    ld d, $0a                                     ; $6842: $16 $0a
    ld a, $10                                     ; $6844: $3e $10
    ld bc, $0008                                  ; $6846: $01 $08 $00
    rst $18                                       ; $6849: $df
    ld d, $0a                                     ; $684a: $16 $0a
    push af                                       ; $684c: $f5
    ld a, $96                                     ; $684d: $3e $96
    rst $18                                       ; $684f: $df
    inc b                                         ; $6850: $04
    ld a, [bc]                                    ; $6851: $0a
    pop af                                        ; $6852: $f1
    ld a, $02                                     ; $6853: $3e $02
    ld b, a                                       ; $6855: $47
    ld a, $05                                     ; $6856: $3e $05
    rst $18                                       ; $6858: $df
    ld [hl-], a                                   ; $6859: $32
    ld a, [bc]                                    ; $685a: $0a
    ld a, $02                                     ; $685b: $3e $02
    rst $18                                       ; $685d: $df
    inc [hl]                                      ; $685e: $34
    ld a, [bc]                                    ; $685f: $0a
    ld a, $02                                     ; $6860: $3e $02
    rst $18                                       ; $6862: $df
    ld [$3e0a], sp                                ; $6863: $08 $0a $3e
    ld [bc], a                                    ; $6866: $02
    ld bc, $1300                                  ; $6867: $01 $00 $13
    ld de, $1200                                  ; $686a: $11 $00 $12
    rst $18                                       ; $686d: $df
    ld [hl+], a                                   ; $686e: $22
    ld a, [bc]                                    ; $686f: $0a
    ld a, $02                                     ; $6870: $3e $02
    rst $18                                       ; $6872: $df
    ld e, $0a                                     ; $6873: $1e $0a
    ld a, $0e                                     ; $6875: $3e $0e
    ld bc, $1380                                  ; $6877: $01 $80 $13
    ld de, $1180                                  ; $687a: $11 $80 $11
    rst $18                                       ; $687d: $df
    ld [hl+], a                                   ; $687e: $22
    ld a, [bc]                                    ; $687f: $0a
    ld a, $0f                                     ; $6880: $3e $0f
    ld bc, $1380                                  ; $6882: $01 $80 $13
    ld de, $1180                                  ; $6885: $11 $80 $11
    rst $18                                       ; $6888: $df
    ld [hl+], a                                   ; $6889: $22
    ld a, [bc]                                    ; $688a: $0a
    ld a, $10                                     ; $688b: $3e $10
    ld bc, $1380                                  ; $688d: $01 $80 $13
    ld de, $1180                                  ; $6890: $11 $80 $11
    rst $18                                       ; $6893: $df
    ld [hl+], a                                   ; $6894: $22
    ld a, [bc]                                    ; $6895: $0a
    push af                                       ; $6896: $f5
    ld a, $1e                                     ; $6897: $3e $1e
    rst $18                                       ; $6899: $df
    inc b                                         ; $689a: $04
    ld a, [bc]                                    ; $689b: $0a
    pop af                                        ; $689c: $f1
    ld a, $02                                     ; $689d: $3e $02
    ld b, $c0                                     ; $689f: $06 $c0
    rst $18                                       ; $68a1: $df
    inc l                                         ; $68a2: $2c
    ld a, [bc]                                    ; $68a3: $0a
    ld a, $0e                                     ; $68a4: $3e $0e
    ld bc, $13c0                                  ; $68a6: $01 $c0 $13
    ld de, $1100                                  ; $68a9: $11 $00 $11
    rst $18                                       ; $68ac: $df
    jr nz, @+$0c                                  ; $68ad: $20 $0a

    ld a, $0f                                     ; $68af: $3e $0f
    ld bc, $13c0                                  ; $68b1: $01 $c0 $13
    ld de, $1100                                  ; $68b4: $11 $00 $11
    rst $18                                       ; $68b7: $df
    jr nz, @+$0c                                  ; $68b8: $20 $0a

    ld a, $10                                     ; $68ba: $3e $10
    ld bc, $13c0                                  ; $68bc: $01 $c0 $13
    ld de, $1100                                  ; $68bf: $11 $00 $11
    rst $18                                       ; $68c2: $df
    jr nz, jr_033_68cf                            ; $68c3: $20 $0a

    ld a, $02                                     ; $68c5: $3e $02
    ld bc, $1400                                  ; $68c7: $01 $00 $14
    ld de, $1080                                  ; $68ca: $11 $80 $10
    rst $18                                       ; $68cd: $df
    ld [hl+], a                                   ; $68ce: $22

jr_033_68cf:
    ld a, [bc]                                    ; $68cf: $0a
    push af                                       ; $68d0: $f5
    ld a, $0a                                     ; $68d1: $3e $0a
    rst $18                                       ; $68d3: $df
    inc b                                         ; $68d4: $04
    ld a, [bc]                                    ; $68d5: $0a
    pop af                                        ; $68d6: $f1
    ld a, $0e                                     ; $68d7: $3e $0e
    ld bc, $1400                                  ; $68d9: $01 $00 $14
    ld de, $1000                                  ; $68dc: $11 $00 $10
    rst $18                                       ; $68df: $df
    ld [hl+], a                                   ; $68e0: $22
    ld a, [bc]                                    ; $68e1: $0a
    ld a, $0f                                     ; $68e2: $3e $0f
    ld bc, $1400                                  ; $68e4: $01 $00 $14
    ld de, $1000                                  ; $68e7: $11 $00 $10
    rst $18                                       ; $68ea: $df
    ld [hl+], a                                   ; $68eb: $22
    ld a, [bc]                                    ; $68ec: $0a
    ld a, $10                                     ; $68ed: $3e $10
    ld bc, $1400                                  ; $68ef: $01 $00 $14
    ld de, $1000                                  ; $68f2: $11 $00 $10
    rst $18                                       ; $68f5: $df
    ld [hl+], a                                   ; $68f6: $22
    ld a, [bc]                                    ; $68f7: $0a
    ld a, $02                                     ; $68f8: $3e $02
    rst $18                                       ; $68fa: $df
    ld e, $0a                                     ; $68fb: $1e $0a
    ld a, $00                                     ; $68fd: $3e $00
    ld b, a                                       ; $68ff: $47
    ld a, $02                                     ; $6900: $3e $02
    rst $18                                       ; $6902: $df
    ld l, $0a                                     ; $6903: $2e $0a
    ld a, $02                                     ; $6905: $3e $02
    ld b, a                                       ; $6907: $47
    ld a, $05                                     ; $6908: $3e $05
    rst $18                                       ; $690a: $df
    ld [hl-], a                                   ; $690b: $32
    ld a, [bc]                                    ; $690c: $0a
    ld a, $02                                     ; $690d: $3e $02
    rst $18                                       ; $690f: $df
    inc [hl]                                      ; $6910: $34
    ld a, [bc]                                    ; $6911: $0a
    ld a, $00                                     ; $6912: $3e $00
    ld b, a                                       ; $6914: $47
    ld a, $05                                     ; $6915: $3e $05
    rst $18                                       ; $6917: $df
    ld [hl-], a                                   ; $6918: $32
    ld a, [bc]                                    ; $6919: $0a
    ld a, $00                                     ; $691a: $3e $00
    rst $18                                       ; $691c: $df
    inc [hl]                                      ; $691d: $34
    ld a, [bc]                                    ; $691e: $0a
    ld hl, $147b                                  ; $691f: $21 $7b $14
    rst $18                                       ; $6922: $df
    ld c, $0a                                     ; $6923: $0e $0a
    ld a, $02                                     ; $6925: $3e $02
    rst $18                                       ; $6927: $df
    ld [$cf0a], sp                                ; $6928: $08 $0a $cf
    sub e                                         ; $692b: $93
    ld a, $0e                                     ; $692c: $3e $0e
    ld bc, $1480                                  ; $692e: $01 $80 $14
    ld de, $0f40                                  ; $6931: $11 $40 $0f
    rst $18                                       ; $6934: $df
    ld [hl+], a                                   ; $6935: $22
    ld a, [bc]                                    ; $6936: $0a
    ld a, $0f                                     ; $6937: $3e $0f
    ld bc, $1480                                  ; $6939: $01 $80 $14
    ld de, $0f40                                  ; $693c: $11 $40 $0f
    rst $18                                       ; $693f: $df
    ld [hl+], a                                   ; $6940: $22
    ld a, [bc]                                    ; $6941: $0a
    ld a, $10                                     ; $6942: $3e $10
    ld bc, $1480                                  ; $6944: $01 $80 $14
    ld de, $0f40                                  ; $6947: $11 $40 $0f
    rst $18                                       ; $694a: $df
    ld [hl+], a                                   ; $694b: $22
    ld a, [bc]                                    ; $694c: $0a
    push af                                       ; $694d: $f5
    ld a, $1e                                     ; $694e: $3e $1e
    rst $18                                       ; $6950: $df
    inc b                                         ; $6951: $04
    ld a, [bc]                                    ; $6952: $0a
    pop af                                        ; $6953: $f1
    ld a, $00                                     ; $6954: $3e $00
    ld b, a                                       ; $6956: $47
    ld a, $07                                     ; $6957: $3e $07
    rst $18                                       ; $6959: $df
    ld [hl-], a                                   ; $695a: $32
    ld a, [bc]                                    ; $695b: $0a
    push af                                       ; $695c: $f5
    ld a, $96                                     ; $695d: $3e $96
    rst $18                                       ; $695f: $df
    inc b                                         ; $6960: $04
    ld a, [bc]                                    ; $6961: $0a
    pop af                                        ; $6962: $f1
    ld c, $04                                     ; $6963: $0e $04
    call Call_000_25a1                            ; $6965: $cd $a1 $25
    call Call_000_2625                            ; $6968: $cd $25 $26

Jump_033_696b:
    ld a, [$c96c]                                 ; $696b: $fa $6c $c9
    cp $01                                        ; $696e: $fe $01
    jr nz, jr_033_69a5                            ; $6970: $20 $33

    ld a, [$c810]                                 ; $6972: $fa $10 $c8
    rst $18                                       ; $6975: $df
    ld [bc], a                                    ; $6976: $02
    ld b, b                                       ; $6977: $40
    rst $18                                       ; $6978: $df
    ld h, h                                       ; $6979: $64
    ld a, [bc]                                    ; $697a: $0a
    rst $20                                       ; $697b: $e7
    ldh [$0d], a                                  ; $697c: $e0 $0d
    ld a, $00                                     ; $697e: $3e $00
    ld [$c450], a                                 ; $6980: $ea $50 $c4
    ld a, $02                                     ; $6983: $3e $02
    ld [$c46a], a                                 ; $6985: $ea $6a $c4
    xor a                                         ; $6988: $af
    ld [$c96d], a                                 ; $6989: $ea $6d $c9
    ld bc, $ffff                                  ; $698c: $01 $ff $ff
    rst $18                                       ; $698f: $df
    ld c, [hl]                                    ; $6990: $4e
    ld a, [bc]                                    ; $6991: $0a
    rst $18                                       ; $6992: $df
    inc [hl]                                      ; $6993: $34
    ld [bc], a                                    ; $6994: $02
    ld a, $00                                     ; $6995: $3e $00
    ld [$c450], a                                 ; $6997: $ea $50 $c4
    ld a, $03                                     ; $699a: $3e $03
    ld [$c46a], a                                 ; $699c: $ea $6a $c4
    ld a, $fa                                     ; $699f: $3e $fa
    ld [$c441], a                                 ; $69a1: $ea $41 $c4
    ret                                           ; $69a4: $c9


jr_033_69a5:
    ld a, [$c967]                                 ; $69a5: $fa $67 $c9
    cp $32                                        ; $69a8: $fe $32
    jr nz, jr_033_69b2                            ; $69aa: $20 $06

    ld a, $02                                     ; $69ac: $3e $02
    ld [$c441], a                                 ; $69ae: $ea $41 $c4
    ret                                           ; $69b1: $c9


jr_033_69b2:
    ldh a, [$95]                                  ; $69b2: $f0 $95
    ld hl, $6abd                                  ; $69b4: $21 $bd $6a
    rst $18                                       ; $69b7: $df
    ld b, $0a                                     ; $69b8: $06 $0a
    ld b, $2d                                     ; $69ba: $06 $2d
    ld c, $10                                     ; $69bc: $0e $10
    ld d, $13                                     ; $69be: $16 $13
    ld e, $0e                                     ; $69c0: $1e $0e
    ld h, $02                                     ; $69c2: $26 $02
    ld l, $02                                     ; $69c4: $2e $02
    rst $18                                       ; $69c6: $df
    ld a, [bc]                                    ; $69c7: $0a
    dec bc                                        ; $69c8: $0b
    ld b, $30                                     ; $69c9: $06 $30
    ld c, $10                                     ; $69cb: $0e $10
    ld d, $10                                     ; $69cd: $16 $10
    ld e, $11                                     ; $69cf: $1e $11
    ld h, $02                                     ; $69d1: $26 $02
    ld l, $02                                     ; $69d3: $2e $02
    rst $18                                       ; $69d5: $df
    ld a, [bc]                                    ; $69d6: $0a
    dec bc                                        ; $69d7: $0b
    rst $08                                       ; $69d8: $cf
    db $10                                        ; $69d9: $10
    ld a, $00                                     ; $69da: $3e $00
    ld bc, $1400                                  ; $69dc: $01 $00 $14
    ld de, $0f00                                  ; $69df: $11 $00 $0f
    rst $18                                       ; $69e2: $df
    jr nz, @+$0c                                  ; $69e3: $20 $0a

    push af                                       ; $69e5: $f5
    ld a, $3c                                     ; $69e6: $3e $3c
    rst $18                                       ; $69e8: $df
    inc b                                         ; $69e9: $04
    ld a, [bc]                                    ; $69ea: $0a
    pop af                                        ; $69eb: $f1
    ld c, $04                                     ; $69ec: $0e $04
    call Call_000_25af                            ; $69ee: $cd $af $25
    call Call_000_2625                            ; $69f1: $cd $25 $26
    ret                                           ; $69f4: $c9


Jump_033_69f5:
    ld a, [$c46a]                                 ; $69f5: $fa $6a $c4
    cp $06                                        ; $69f8: $fe $06
    jp nz, Jump_033_69fd                          ; $69fa: $c2 $fd $69

Jump_033_69fd:
    rst $08                                       ; $69fd: $cf
    db $10                                        ; $69fe: $10
    ret                                           ; $69ff: $c9


    db $dd                                        ; $6a00: $dd
    ld a, e                                       ; $6a01: $7b
    nop                                           ; $6a02: $00
    inc d                                         ; $6a03: $14
    nop                                           ; $6a04: $00
    inc de                                        ; $6a05: $13
    nop                                           ; $6a06: $00
    nop                                           ; $6a07: $00
    nop                                           ; $6a08: $00
    ret nz                                        ; $6a09: $c0

    ld bc, $dd11                                  ; $6a0a: $01 $11 $dd
    ld a, e                                       ; $6a0d: $7b
    nop                                           ; $6a0e: $00
    rrca                                          ; $6a0f: $0f
    nop                                           ; $6a10: $00
    dec d                                         ; $6a11: $15
    nop                                           ; $6a12: $00
    nop                                           ; $6a13: $00
    nop                                           ; $6a14: $00
    ret nz                                        ; $6a15: $c0

    ld bc, $dd13                                  ; $6a16: $01 $13 $dd
    ld a, e                                       ; $6a19: $7b
    nop                                           ; $6a1a: $00
    rla                                           ; $6a1b: $17
    nop                                           ; $6a1c: $00
    dec d                                         ; $6a1d: $15
    nop                                           ; $6a1e: $00
    nop                                           ; $6a1f: $00
    nop                                           ; $6a20: $00
    ret nz                                        ; $6a21: $c0

    ld bc, $dd13                                  ; $6a22: $01 $13 $dd
    ld a, e                                       ; $6a25: $7b
    nop                                           ; $6a26: $00
    ld de, $1500                                  ; $6a27: $11 $00 $15
    nop                                           ; $6a2a: $00
    nop                                           ; $6a2b: $00
    nop                                           ; $6a2c: $00
    ret nz                                        ; $6a2d: $c0

    ld bc, $dd13                                  ; $6a2e: $01 $13 $dd
    ld a, e                                       ; $6a31: $7b
    nop                                           ; $6a32: $00
    add hl, de                                    ; $6a33: $19
    nop                                           ; $6a34: $00
    dec d                                         ; $6a35: $15
    nop                                           ; $6a36: $00
    nop                                           ; $6a37: $00
    nop                                           ; $6a38: $00
    ret nz                                        ; $6a39: $c0

    ld bc, $dd13                                  ; $6a3a: $01 $13 $dd
    ld a, e                                       ; $6a3d: $7b
    nop                                           ; $6a3e: $00
    rrca                                          ; $6a3f: $0f
    nop                                           ; $6a40: $00
    rrca                                          ; $6a41: $0f
    nop                                           ; $6a42: $00
    nop                                           ; $6a43: $00
    nop                                           ; $6a44: $00
    nop                                           ; $6a45: $00
    ld bc, $dd08                                  ; $6a46: $01 $08 $dd
    ld a, e                                       ; $6a49: $7b
    nop                                           ; $6a4a: $00
    stop                                          ; $6a4b: $10 $00
    dec c                                         ; $6a4d: $0d
    nop                                           ; $6a4e: $00
    nop                                           ; $6a4f: $00
    nop                                           ; $6a50: $00
    nop                                           ; $6a51: $00
    ld bc, $dd09                                  ; $6a52: $01 $09 $dd
    ld a, e                                       ; $6a55: $7b
    nop                                           ; $6a56: $00
    add hl, de                                    ; $6a57: $19
    nop                                           ; $6a58: $00
    dec c                                         ; $6a59: $0d
    nop                                           ; $6a5a: $00
    nop                                           ; $6a5b: $00
    nop                                           ; $6a5c: $00
    add b                                         ; $6a5d: $80
    ld bc, $dd1a                                  ; $6a5e: $01 $1a $dd
    ld a, e                                       ; $6a61: $7b
    nop                                           ; $6a62: $00
    ld a, [de]                                    ; $6a63: $1a
    nop                                           ; $6a64: $00
    ld de, $0000                                  ; $6a65: $11 $00 $00
    nop                                           ; $6a68: $00
    add b                                         ; $6a69: $80
    ld bc, $dd12                                  ; $6a6a: $01 $12 $dd
    ld a, e                                       ; $6a6d: $7b
    nop                                           ; $6a6e: $00
    ld a, [de]                                    ; $6a6f: $1a
    nop                                           ; $6a70: $00
    rrca                                          ; $6a71: $0f
    nop                                           ; $6a72: $00
    nop                                           ; $6a73: $00
    nop                                           ; $6a74: $00
    add b                                         ; $6a75: $80
    ld bc, $dd1b                                  ; $6a76: $01 $1b $dd
    ld a, e                                       ; $6a79: $7b
    nop                                           ; $6a7a: $00
    rrca                                          ; $6a7b: $0f
    nop                                           ; $6a7c: $00
    ld de, $0000                                  ; $6a7d: $11 $00 $00
    nop                                           ; $6a80: $00
    nop                                           ; $6a81: $00
    ld bc, $dd1c                                  ; $6a82: $01 $1c $dd
    ld a, e                                       ; $6a85: $7b
    nop                                           ; $6a86: $00
    inc d                                         ; $6a87: $14
    nop                                           ; $6a88: $00
    rla                                           ; $6a89: $17
    nop                                           ; $6a8a: $00
    nop                                           ; $6a8b: $00
    nop                                           ; $6a8c: $00
    ret nz                                        ; $6a8d: $c0

    ld bc, $f319                                  ; $6a8e: $01 $19 $f3
    ld l, [hl]                                    ; $6a91: $6e
    nop                                           ; $6a92: $00
    ld de, $1180                                  ; $6a93: $11 $80 $11
    nop                                           ; $6a96: $00
    nop                                           ; $6a97: $00
    nop                                           ; $6a98: $00
    ld b, b                                       ; $6a99: $40
    ld bc, $f329                                  ; $6a9a: $01 $29 $f3
    ld l, [hl]                                    ; $6a9d: $6e
    nop                                           ; $6a9e: $00
    ld de, $1180                                  ; $6a9f: $11 $80 $11
    nop                                           ; $6aa2: $00
    nop                                           ; $6aa3: $00
    nop                                           ; $6aa4: $00
    ld b, b                                       ; $6aa5: $40
    ld bc, $f32a                                  ; $6aa6: $01 $2a $f3
    ld l, [hl]                                    ; $6aa9: $6e
    nop                                           ; $6aaa: $00
    ld de, $1180                                  ; $6aab: $11 $80 $11
    nop                                           ; $6aae: $00
    nop                                           ; $6aaf: $00
    nop                                           ; $6ab0: $00
    ld b, b                                       ; $6ab1: $40
    ld bc, $002b                                  ; $6ab2: $01 $2b $00
    nop                                           ; $6ab5: $00
    nop                                           ; $6ab6: $00
    nop                                           ; $6ab7: $00
    nop                                           ; $6ab8: $00
    nop                                           ; $6ab9: $00
    nop                                           ; $6aba: $00
    nop                                           ; $6abb: $00
    rst $38                                       ; $6abc: $ff
    db $dd                                        ; $6abd: $dd
    ld a, e                                       ; $6abe: $7b
    nop                                           ; $6abf: $00
    inc d                                         ; $6ac0: $14
    nop                                           ; $6ac1: $00
    ld a, [bc]                                    ; $6ac2: $0a
    nop                                           ; $6ac3: $00
    nop                                           ; $6ac4: $00
    nop                                           ; $6ac5: $00
    ld b, b                                       ; $6ac6: $40
    ld bc, $dd11                                  ; $6ac7: $01 $11 $dd
    ld a, e                                       ; $6aca: $7b
    nop                                           ; $6acb: $00
    ld de, $1300                                  ; $6acc: $11 $00 $13
    nop                                           ; $6acf: $00
    nop                                           ; $6ad0: $00
    nop                                           ; $6ad1: $00
    ret nz                                        ; $6ad2: $c0

    ld bc, $dd13                                  ; $6ad3: $01 $13 $dd
    ld a, e                                       ; $6ad6: $7b
    nop                                           ; $6ad7: $00
    rla                                           ; $6ad8: $17
    nop                                           ; $6ad9: $00
    inc de                                        ; $6ada: $13
    nop                                           ; $6adb: $00
    nop                                           ; $6adc: $00
    nop                                           ; $6add: $00
    ret nz                                        ; $6ade: $c0

    ld bc, $dd13                                  ; $6adf: $01 $13 $dd
    ld a, e                                       ; $6ae2: $7b
    nop                                           ; $6ae3: $00
    add hl, bc                                    ; $6ae4: $09
    nop                                           ; $6ae5: $00
    dec bc                                        ; $6ae6: $0b
    nop                                           ; $6ae7: $00
    nop                                           ; $6ae8: $00
    nop                                           ; $6ae9: $00
    ld b, b                                       ; $6aea: $40
    ld bc, $dd13                                  ; $6aeb: $01 $13 $dd
    ld a, e                                       ; $6aee: $7b
    nop                                           ; $6aef: $00
    rra                                           ; $6af0: $1f
    nop                                           ; $6af1: $00
    add hl, bc                                    ; $6af2: $09
    nop                                           ; $6af3: $00
    nop                                           ; $6af4: $00
    nop                                           ; $6af5: $00
    ld b, b                                       ; $6af6: $40
    ld bc, $dd13                                  ; $6af7: $01 $13 $dd
    ld a, e                                       ; $6afa: $7b
    nop                                           ; $6afb: $00
    ld [de], a                                    ; $6afc: $12
    nop                                           ; $6afd: $00
    ld a, [bc]                                    ; $6afe: $0a
    nop                                           ; $6aff: $00
    nop                                           ; $6b00: $00
    nop                                           ; $6b01: $00
    ld b, b                                       ; $6b02: $40
    ld bc, $dd08                                  ; $6b03: $01 $08 $dd
    ld a, e                                       ; $6b06: $7b
    nop                                           ; $6b07: $00
    stop                                          ; $6b08: $10 $00
    inc c                                         ; $6b0a: $0c
    nop                                           ; $6b0b: $00
    nop                                           ; $6b0c: $00
    nop                                           ; $6b0d: $00
    nop                                           ; $6b0e: $00
    ld bc, $dd09                                  ; $6b0f: $01 $09 $dd
    ld a, e                                       ; $6b12: $7b
    nop                                           ; $6b13: $00
    jr jr_033_6b16                                ; $6b14: $18 $00

jr_033_6b16:
    inc c                                         ; $6b16: $0c
    nop                                           ; $6b17: $00
    nop                                           ; $6b18: $00
    nop                                           ; $6b19: $00
    add b                                         ; $6b1a: $80
    ld bc, $dd1a                                  ; $6b1b: $01 $1a $dd
    ld a, e                                       ; $6b1e: $7b
    nop                                           ; $6b1f: $00
    ld a, [de]                                    ; $6b20: $1a
    nop                                           ; $6b21: $00
    stop                                          ; $6b22: $10 $00
    nop                                           ; $6b24: $00
    nop                                           ; $6b25: $00
    add b                                         ; $6b26: $80
    ld bc, $dd12                                  ; $6b27: $01 $12 $dd
    ld a, e                                       ; $6b2a: $7b
    nop                                           ; $6b2b: $00
    ld a, [de]                                    ; $6b2c: $1a
    nop                                           ; $6b2d: $00
    ld c, $00                                     ; $6b2e: $0e $00
    nop                                           ; $6b30: $00
    nop                                           ; $6b31: $00
    add b                                         ; $6b32: $80
    ld bc, $dd1b                                  ; $6b33: $01 $1b $dd
    ld a, e                                       ; $6b36: $7b
    nop                                           ; $6b37: $00
    ld c, $00                                     ; $6b38: $0e $00
    rrca                                          ; $6b3a: $0f
    nop                                           ; $6b3b: $00
    nop                                           ; $6b3c: $00
    nop                                           ; $6b3d: $00
    nop                                           ; $6b3e: $00
    ld bc, $dd1c                                  ; $6b3f: $01 $1c $dd
    ld a, e                                       ; $6b42: $7b
    nop                                           ; $6b43: $00
    ld de, $1d00                                  ; $6b44: $11 $00 $1d
    nop                                           ; $6b47: $00
    nop                                           ; $6b48: $00
    nop                                           ; $6b49: $00
    ret nz                                        ; $6b4a: $c0

    ld bc, $dd19                                  ; $6b4b: $01 $19 $dd
    ld a, e                                       ; $6b4e: $7b
    nop                                           ; $6b4f: $00
    dec d                                         ; $6b50: $15
    nop                                           ; $6b51: $00
    dec e                                         ; $6b52: $1d
    nop                                           ; $6b53: $00
    nop                                           ; $6b54: $00
    nop                                           ; $6b55: $00

Call_033_6b56:
    ret nz                                        ; $6b56: $c0

    ld bc, $0026                                  ; $6b57: $01 $26 $00

Call_033_6b5a:
    nop                                           ; $6b5a: $00
    nop                                           ; $6b5b: $00
    nop                                           ; $6b5c: $00
    nop                                           ; $6b5d: $00
    nop                                           ; $6b5e: $00
    nop                                           ; $6b5f: $00
    nop                                           ; $6b60: $00
    rst $38                                       ; $6b61: $ff

Call_033_6b62:
    ld a, $00                                     ; $6b62: $3e $00
    ld [$c3e2], a                                 ; $6b64: $ea $e2 $c3
    ld [$c3e0], a                                 ; $6b67: $ea $e0 $c3

jr_033_6b6a:
    ld a, [$c3e0]                                 ; $6b6a: $fa $e0 $c3
    cp $05                                        ; $6b6d: $fe $05
    jr z, jr_033_6bb2                             ; $6b6f: $28 $41

    ld a, [$c3e2]                                 ; $6b71: $fa $e2 $c3
    add $fe                                       ; $6b74: $c6 $fe
    ld [$c3e2], a                                 ; $6b76: $ea $e2 $c3
    ld bc, $0760                                  ; $6b79: $01 $60 $07
    call Call_033_6bb3                            ; $6b7c: $cd $b3 $6b
    ld a, [$c3e2]                                 ; $6b7f: $fa $e2 $c3
    add $fe                                       ; $6b82: $c6 $fe
    ld [$c3e2], a                                 ; $6b84: $ea $e2 $c3
    ld bc, $0762                                  ; $6b87: $01 $62 $07
    call Call_033_6bb3                            ; $6b8a: $cd $b3 $6b
    ld a, [$c3e2]                                 ; $6b8d: $fa $e2 $c3
    add $fe                                       ; $6b90: $c6 $fe
    ld [$c3e2], a                                 ; $6b92: $ea $e2 $c3
    ld bc, $0764                                  ; $6b95: $01 $64 $07
    call Call_033_6bb3                            ; $6b98: $cd $b3 $6b
    ld a, [$c3e2]                                 ; $6b9b: $fa $e2 $c3
    add $fe                                       ; $6b9e: $c6 $fe
    ld [$c3e2], a                                 ; $6ba0: $ea $e2 $c3
    ld bc, $0766                                  ; $6ba3: $01 $66 $07
    call Call_033_6bb3                            ; $6ba6: $cd $b3 $6b
    ld a, [$c3e0]                                 ; $6ba9: $fa $e0 $c3
    inc a                                         ; $6bac: $3c
    ld [$c3e0], a                                 ; $6bad: $ea $e0 $c3
    jr jr_033_6b6a                                ; $6bb0: $18 $b8

jr_033_6bb2:
    ret                                           ; $6bb2: $c9


Call_033_6bb3:
    ld h, $05                                     ; $6bb3: $26 $05

jr_033_6bb5:
    push hl                                       ; $6bb5: $e5
    push bc                                       ; $6bb6: $c5
    ld hl, $c320                                  ; $6bb7: $21 $20 $c3
    ld a, [hl+]                                   ; $6bba: $2a
    ld d, [hl]                                    ; $6bbb: $56
    ld e, a                                       ; $6bbc: $5f
    ld hl, $00e8                                  ; $6bbd: $21 $e8 $00
    ld a, $00                                     ; $6bc0: $3e $00
    add l                                         ; $6bc2: $85
    ld l, a                                       ; $6bc3: $6f
    jr nc, jr_033_6bc7                            ; $6bc4: $30 $01

    inc h                                         ; $6bc6: $24

jr_033_6bc7:
    add hl, hl                                    ; $6bc7: $29
    add hl, hl                                    ; $6bc8: $29
    add hl, hl                                    ; $6bc9: $29
    add hl, hl                                    ; $6bca: $29
    add hl, hl                                    ; $6bcb: $29
    call Call_000_08ac                            ; $6bcc: $cd $ac $08
    add hl, hl                                    ; $6bcf: $29
    add hl, hl                                    ; $6bd0: $29
    add hl, hl                                    ; $6bd1: $29
    push hl                                       ; $6bd2: $e5
    ld hl, $c322                                  ; $6bd3: $21 $22 $c3
    ld a, [hl+]                                   ; $6bd6: $2a
    ld d, [hl]                                    ; $6bd7: $56
    ld e, a                                       ; $6bd8: $5f
    ld hl, $0048                                  ; $6bd9: $21 $48 $00
    ld a, [$c3e2]                                 ; $6bdc: $fa $e2 $c3
    add l                                         ; $6bdf: $85
    ld l, a                                       ; $6be0: $6f
    jr nc, jr_033_6be4                            ; $6be1: $30 $01

    inc h                                         ; $6be3: $24

jr_033_6be4:
    add hl, hl                                    ; $6be4: $29
    add hl, hl                                    ; $6be5: $29
    add hl, hl                                    ; $6be6: $29
    add hl, hl                                    ; $6be7: $29
    add hl, hl                                    ; $6be8: $29
    call Call_000_08ac                            ; $6be9: $cd $ac $08
    add hl, hl                                    ; $6bec: $29
    add hl, hl                                    ; $6bed: $29
    add hl, hl                                    ; $6bee: $29
    ld e, h                                       ; $6bef: $5c
    pop hl                                        ; $6bf0: $e1
    ld d, h                                       ; $6bf1: $54
    ld hl, $6c90                                  ; $6bf2: $21 $90 $6c
    call Call_000_26ea                            ; $6bf5: $cd $ea $26
    call Call_000_2e3b                            ; $6bf8: $cd $3b $2e
    pop bc                                        ; $6bfb: $c1
    pop hl                                        ; $6bfc: $e1
    dec h                                         ; $6bfd: $25
    jr nz, jr_033_6bb5                            ; $6bfe: $20 $b5

    ret                                           ; $6c00: $c9


    nop                                           ; $6c01: $00
    nop                                           ; $6c02: $00
    nop                                           ; $6c03: $00
    nop                                           ; $6c04: $00
    nop                                           ; $6c05: $00
    nop                                           ; $6c06: $00
    nop                                           ; $6c07: $00
    nop                                           ; $6c08: $00
    nop                                           ; $6c09: $00
    nop                                           ; $6c0a: $00
    nop                                           ; $6c0b: $00
    nop                                           ; $6c0c: $00
    nop                                           ; $6c0d: $00
    nop                                           ; $6c0e: $00
    nop                                           ; $6c0f: $00
    nop                                           ; $6c10: $00
    nop                                           ; $6c11: $00
    ld b, b                                       ; $6c12: $40
    ld d, d                                       ; $6c13: $52
    stop                                          ; $6c14: $10 $00
    db $10                                        ; $6c16: $10
    jr z, jr_033_6c95                             ; $6c17: $28 $7c

    add d                                         ; $6c19: $82
    db $10                                        ; $6c1a: $10
    jr z, jr_033_6c2f                             ; $6c1b: $28 $12

    nop                                           ; $6c1d: $00
    nop                                           ; $6c1e: $00
    db $10                                        ; $6c1f: $10
    db $10                                        ; $6c20: $10
    db $10                                        ; $6c21: $10
    ld [bc], a                                    ; $6c22: $02
    ld [de], a                                    ; $6c23: $12
    jr z, jr_033_6c5e                             ; $6c24: $28 $38

    sub d                                         ; $6c26: $92
    xor $28                                       ; $6c27: $ee $28
    jr c, jr_033_6c2b                             ; $6c29: $38 $00

jr_033_6c2b:
    db $10                                        ; $6c2b: $10
    ld d, b                                       ; $6c2c: $50
    ld [de], a                                    ; $6c2d: $12
    nop                                           ; $6c2e: $00

jr_033_6c2f:
    nop                                           ; $6c2f: $00
    db $10                                        ; $6c30: $10
    db $10                                        ; $6c31: $10
    ld [bc], a                                    ; $6c32: $02
    ld [de], a                                    ; $6c33: $12
    jr z, jr_033_6c6e                             ; $6c34: $28 $38

    sub d                                         ; $6c36: $92
    xor $28                                       ; $6c37: $ee $28
    jr c, jr_033_6c3b                             ; $6c39: $38 $00

jr_033_6c3b:
    db $10                                        ; $6c3b: $10
    ld d, b                                       ; $6c3c: $50
    ld [de], a                                    ; $6c3d: $12
    nop                                           ; $6c3e: $00
    nop                                           ; $6c3f: $00
    nop                                           ; $6c40: $00
    nop                                           ; $6c41: $00
    ld c, b                                       ; $6c42: $48
    ld [$0808], sp                                ; $6c43: $08 $08 $08
    ld [hl], $3e                                  ; $6c46: $36 $3e
    ld [$0808], sp                                ; $6c48: $08 $08 $08
    ld [$4202], sp                                ; $6c4b: $08 $02 $42
    nop                                           ; $6c4e: $00
    nop                                           ; $6c4f: $00
    nop                                           ; $6c50: $00
    nop                                           ; $6c51: $00
    ld c, b                                       ; $6c52: $48
    ld [$0808], sp                                ; $6c53: $08 $08 $08
    ld [hl], $3e                                  ; $6c56: $36 $3e
    ld [$0808], sp                                ; $6c58: $08 $08 $08
    ld [$4202], sp                                ; $6c5b: $08 $02 $42

jr_033_6c5e:
    nop                                           ; $6c5e: $00
    nop                                           ; $6c5f: $00
    nop                                           ; $6c60: $00
    nop                                           ; $6c61: $00
    ld [bc], a                                    ; $6c62: $02
    ld b, b                                       ; $6c63: $40
    nop                                           ; $6c64: $00
    nop                                           ; $6c65: $00
    nop                                           ; $6c66: $00
    nop                                           ; $6c67: $00
    ld [$0008], sp                                ; $6c68: $08 $08 $00
    nop                                           ; $6c6b: $00
    ld b, b                                       ; $6c6c: $40
    ld b, b                                       ; $6c6d: $40

jr_033_6c6e:
    nop                                           ; $6c6e: $00
    nop                                           ; $6c6f: $00
    nop                                           ; $6c70: $00
    nop                                           ; $6c71: $00
    ld [bc], a                                    ; $6c72: $02
    ld b, b                                       ; $6c73: $40
    nop                                           ; $6c74: $00
    nop                                           ; $6c75: $00
    nop                                           ; $6c76: $00
    nop                                           ; $6c77: $00
    ld [$0008], sp                                ; $6c78: $08 $08 $00
    nop                                           ; $6c7b: $00
    ld b, b                                       ; $6c7c: $40
    ld b, b                                       ; $6c7d: $40
    nop                                           ; $6c7e: $00
    nop                                           ; $6c7f: $00
    db $10                                        ; $6c80: $10
    db $10                                        ; $6c81: $10
    ld [bc], a                                    ; $6c82: $02
    ld [de], a                                    ; $6c83: $12
    jr z, jr_033_6cbe                             ; $6c84: $28 $38

    sub d                                         ; $6c86: $92
    xor $28                                       ; $6c87: $ee $28
    jr c, jr_033_6c8b                             ; $6c89: $38 $00

jr_033_6c8b:
    db $10                                        ; $6c8b: $10
    ld d, b                                       ; $6c8c: $50
    ld [de], a                                    ; $6c8d: $12
    nop                                           ; $6c8e: $00
    nop                                           ; $6c8f: $00
    db $10                                        ; $6c90: $10
    ld [$0000], sp                                ; $6c91: $08 $00 $00
    db $10                                        ; $6c94: $10

jr_033_6c95:
    db $10                                        ; $6c95: $10
    ld [bc], a                                    ; $6c96: $02
    nop                                           ; $6c97: $00
    db $10                                        ; $6c98: $10
    jr jr_033_6c9f                                ; $6c99: $18 $04

    nop                                           ; $6c9b: $00
    db $10                                        ; $6c9c: $10
    jr nz, jr_033_6ca5                            ; $6c9d: $20 $06

jr_033_6c9f:
    nop                                           ; $6c9f: $00
    add b                                         ; $6ca0: $80
    ret nz                                        ; $6ca1: $c0

    ld bc, $7fff                                  ; $6ca2: $01 $ff $7f

jr_033_6ca5:
    ld a, [c]                                     ; $6ca5: $f2
    dec sp                                        ; $6ca6: $3b
    rst $38                                       ; $6ca7: $ff
    inc hl                                        ; $6ca8: $23
    nop                                           ; $6ca9: $00
    nop                                           ; $6caa: $00
    nop                                           ; $6cab: $00
    nop                                           ; $6cac: $00
    nop                                           ; $6cad: $00
    nop                                           ; $6cae: $00
    nop                                           ; $6caf: $00
    nop                                           ; $6cb0: $00
    nop                                           ; $6cb1: $00
    nop                                           ; $6cb2: $00
    nop                                           ; $6cb3: $00
    nop                                           ; $6cb4: $00
    nop                                           ; $6cb5: $00
    rrca                                          ; $6cb6: $0f
    rrca                                          ; $6cb7: $0f
    rra                                           ; $6cb8: $1f
    jr jr_033_6cda                                ; $6cb9: $18 $1f

    db $10                                        ; $6cbb: $10
    rra                                           ; $6cbc: $1f
    db $10                                        ; $6cbd: $10

jr_033_6cbe:
    ld a, a                                       ; $6cbe: $7f
    ld [hl], b                                    ; $6cbf: $70
    rst $38                                       ; $6cc0: $ff
    ret nz                                        ; $6cc1: $c0

    rst $38                                       ; $6cc2: $ff
    add b                                         ; $6cc3: $80
    rst $38                                       ; $6cc4: $ff
    add b                                         ; $6cc5: $80
    rst $38                                       ; $6cc6: $ff
    ret nz                                        ; $6cc7: $c0

    ld a, e                                       ; $6cc8: $7b
    ld a, h                                       ; $6cc9: $7c
    rrca                                          ; $6cca: $0f
    ld c, $03                                     ; $6ccb: $0e $03
    inc bc                                        ; $6ccd: $03
    ld bc, $0001                                  ; $6cce: $01 $01 $00
    nop                                           ; $6cd1: $00
    nop                                           ; $6cd2: $00
    nop                                           ; $6cd3: $00
    nop                                           ; $6cd4: $00
    nop                                           ; $6cd5: $00
    add b                                         ; $6cd6: $80
    add b                                         ; $6cd7: $80
    ret nz                                        ; $6cd8: $c0

    ret nz                                        ; $6cd9: $c0

jr_033_6cda:
    ret nz                                        ; $6cda: $c0

    ld b, b                                       ; $6cdb: $40
    ldh a, [rSVBK]                                ; $6cdc: $f0 $70
    ld hl, sp+$18                                 ; $6cde: $f8 $18
    ld hl, sp+$08                                 ; $6ce0: $f8 $08
    ld hl, sp+$08                                 ; $6ce2: $f8 $08
    ld hl, sp+$18                                 ; $6ce4: $f8 $18
    or b                                          ; $6ce6: $b0
    ld [hl], b                                    ; $6ce7: $70
    ldh [$60], a                                  ; $6ce8: $e0 $60
    ret nz                                        ; $6cea: $c0

    ld b, b                                       ; $6ceb: $40
    ret nz                                        ; $6cec: $c0

    ld b, b                                       ; $6ced: $40
    ret nz                                        ; $6cee: $c0

    ret nz                                        ; $6cef: $c0

    nop                                           ; $6cf0: $00
    nop                                           ; $6cf1: $00
    nop                                           ; $6cf2: $00
    nop                                           ; $6cf3: $00
    nop                                           ; $6cf4: $00
    nop                                           ; $6cf5: $00
    nop                                           ; $6cf6: $00
    nop                                           ; $6cf7: $00
    nop                                           ; $6cf8: $00
    nop                                           ; $6cf9: $00
    nop                                           ; $6cfa: $00
    nop                                           ; $6cfb: $00
    nop                                           ; $6cfc: $00
    nop                                           ; $6cfd: $00
    nop                                           ; $6cfe: $00
    nop                                           ; $6cff: $00
    nop                                           ; $6d00: $00
    nop                                           ; $6d01: $00
    nop                                           ; $6d02: $00
    nop                                           ; $6d03: $00
    nop                                           ; $6d04: $00
    nop                                           ; $6d05: $00
    nop                                           ; $6d06: $00
    nop                                           ; $6d07: $00
    nop                                           ; $6d08: $00
    nop                                           ; $6d09: $00
    nop                                           ; $6d0a: $00
    nop                                           ; $6d0b: $00
    nop                                           ; $6d0c: $00
    nop                                           ; $6d0d: $00
    nop                                           ; $6d0e: $00
    nop                                           ; $6d0f: $00
    nop                                           ; $6d10: $00
    nop                                           ; $6d11: $00
    nop                                           ; $6d12: $00
    nop                                           ; $6d13: $00
    nop                                           ; $6d14: $00
    nop                                           ; $6d15: $00
    ld bc, $0301                                  ; $6d16: $01 $01 $03
    inc bc                                        ; $6d19: $03
    inc bc                                        ; $6d1a: $03
    ld [bc], a                                    ; $6d1b: $02
    inc bc                                        ; $6d1c: $03
    ld [bc], a                                    ; $6d1d: $02
    inc bc                                        ; $6d1e: $03
    inc bc                                        ; $6d1f: $03
    ld bc, $0001                                  ; $6d20: $01 $01 $00
    nop                                           ; $6d23: $00
    nop                                           ; $6d24: $00
    nop                                           ; $6d25: $00
    nop                                           ; $6d26: $00
    nop                                           ; $6d27: $00
    nop                                           ; $6d28: $00
    nop                                           ; $6d29: $00
    nop                                           ; $6d2a: $00
    nop                                           ; $6d2b: $00
    nop                                           ; $6d2c: $00
    nop                                           ; $6d2d: $00
    nop                                           ; $6d2e: $00
    nop                                           ; $6d2f: $00
    ld a, $3e                                     ; $6d30: $3e $3e
    ld a, a                                       ; $6d32: $7f
    ld h, e                                       ; $6d33: $63
    ld a, a                                       ; $6d34: $7f
    ld b, c                                       ; $6d35: $41
    rst $38                                       ; $6d36: $ff
    pop bc                                        ; $6d37: $c1
    rst $38                                       ; $6d38: $ff
    nop                                           ; $6d39: $00
    rst $38                                       ; $6d3a: $ff
    nop                                           ; $6d3b: $00
    rst $38                                       ; $6d3c: $ff
    nop                                           ; $6d3d: $00
    rst $38                                       ; $6d3e: $ff
    nop                                           ; $6d3f: $00
    rst $38                                       ; $6d40: $ff
    db $e3                                        ; $6d41: $e3
    ld a, [hl+]                                   ; $6d42: $2a
    ld [hl], $3e                                  ; $6d43: $36 $3e
    ld [hl], $14                                  ; $6d45: $36 $14
    inc e                                         ; $6d47: $1c
    inc e                                         ; $6d48: $1c
    inc e                                         ; $6d49: $1c
    ld [$0008], sp                                ; $6d4a: $08 $08 $00
    nop                                           ; $6d4d: $00
    nop                                           ; $6d4e: $00
    nop                                           ; $6d4f: $00
    nop                                           ; $6d50: $00
    nop                                           ; $6d51: $00
    nop                                           ; $6d52: $00
    nop                                           ; $6d53: $00
    nop                                           ; $6d54: $00
    nop                                           ; $6d55: $00
    ret nz                                        ; $6d56: $c0

    ret nz                                        ; $6d57: $c0

    ldh [$60], a                                  ; $6d58: $e0 $60
    ldh [rNR41], a                                ; $6d5a: $e0 $20
    ldh [rNR41], a                                ; $6d5c: $e0 $20
    ldh [$60], a                                  ; $6d5e: $e0 $60
    ret nz                                        ; $6d60: $c0

    ret nz                                        ; $6d61: $c0

    nop                                           ; $6d62: $00
    nop                                           ; $6d63: $00
    nop                                           ; $6d64: $00
    nop                                           ; $6d65: $00
    nop                                           ; $6d66: $00
    nop                                           ; $6d67: $00
    nop                                           ; $6d68: $00
    nop                                           ; $6d69: $00
    nop                                           ; $6d6a: $00
    nop                                           ; $6d6b: $00
    nop                                           ; $6d6c: $00
    nop                                           ; $6d6d: $00
    nop                                           ; $6d6e: $00
    nop                                           ; $6d6f: $00
    nop                                           ; $6d70: $00
    nop                                           ; $6d71: $00
    nop                                           ; $6d72: $00
    nop                                           ; $6d73: $00
    nop                                           ; $6d74: $00
    nop                                           ; $6d75: $00
    nop                                           ; $6d76: $00
    nop                                           ; $6d77: $00
    nop                                           ; $6d78: $00
    nop                                           ; $6d79: $00
    nop                                           ; $6d7a: $00
    nop                                           ; $6d7b: $00
    nop                                           ; $6d7c: $00
    nop                                           ; $6d7d: $00
    nop                                           ; $6d7e: $00
    nop                                           ; $6d7f: $00
    nop                                           ; $6d80: $00
    nop                                           ; $6d81: $00
    nop                                           ; $6d82: $00
    nop                                           ; $6d83: $00
    nop                                           ; $6d84: $00
    nop                                           ; $6d85: $00
    nop                                           ; $6d86: $00
    nop                                           ; $6d87: $00
    nop                                           ; $6d88: $00
    nop                                           ; $6d89: $00
    nop                                           ; $6d8a: $00
    nop                                           ; $6d8b: $00
    nop                                           ; $6d8c: $00
    nop                                           ; $6d8d: $00
    nop                                           ; $6d8e: $00
    nop                                           ; $6d8f: $00
    nop                                           ; $6d90: $00
    nop                                           ; $6d91: $00
    nop                                           ; $6d92: $00
    nop                                           ; $6d93: $00
    nop                                           ; $6d94: $00
    nop                                           ; $6d95: $00
    ld bc, $0301                                  ; $6d96: $01 $01 $03
    inc bc                                        ; $6d99: $03
    inc bc                                        ; $6d9a: $03
    ld [bc], a                                    ; $6d9b: $02
    rrca                                          ; $6d9c: $0f
    ld c, $1f                                     ; $6d9d: $0e $1f
    jr jr_033_6dc0                                ; $6d9f: $18 $1f

    db $10                                        ; $6da1: $10
    rra                                           ; $6da2: $1f
    db $10                                        ; $6da3: $10
    rra                                           ; $6da4: $1f
    jr jr_033_6db4                                ; $6da5: $18 $0d

    ld c, $07                                     ; $6da7: $0e $07
    ld b, $03                                     ; $6da9: $06 $03
    ld [bc], a                                    ; $6dab: $02
    inc bc                                        ; $6dac: $03
    ld [bc], a                                    ; $6dad: $02
    inc bc                                        ; $6dae: $03
    inc bc                                        ; $6daf: $03
    nop                                           ; $6db0: $00
    nop                                           ; $6db1: $00
    nop                                           ; $6db2: $00
    nop                                           ; $6db3: $00

jr_033_6db4:
    nop                                           ; $6db4: $00
    nop                                           ; $6db5: $00
    ldh a, [$f0]                                  ; $6db6: $f0 $f0
    ld hl, sp+$18                                 ; $6db8: $f8 $18
    ld hl, sp+$08                                 ; $6dba: $f8 $08
    ld hl, sp+$08                                 ; $6dbc: $f8 $08
    cp $0e                                        ; $6dbe: $fe $0e

jr_033_6dc0:
    rst $38                                       ; $6dc0: $ff
    inc bc                                        ; $6dc1: $03
    rst $38                                       ; $6dc2: $ff
    ld bc, $01ff                                  ; $6dc3: $01 $ff $01
    rst $38                                       ; $6dc6: $ff
    inc bc                                        ; $6dc7: $03
    sbc $3e                                       ; $6dc8: $de $3e
    ldh a, [rSVBK]                                ; $6dca: $f0 $70
    ret nz                                        ; $6dcc: $c0

    ret nz                                        ; $6dcd: $c0

    add b                                         ; $6dce: $80
    add b                                         ; $6dcf: $80
    nop                                           ; $6dd0: $00
    nop                                           ; $6dd1: $00
    nop                                           ; $6dd2: $00
    nop                                           ; $6dd3: $00
    nop                                           ; $6dd4: $00
    nop                                           ; $6dd5: $00
    ld bc, $0301                                  ; $6dd6: $01 $01 $03
    inc bc                                        ; $6dd9: $03
    inc bc                                        ; $6dda: $03
    ld [bc], a                                    ; $6ddb: $02
    inc bc                                        ; $6ddc: $03
    ld [bc], a                                    ; $6ddd: $02
    inc bc                                        ; $6dde: $03
    inc bc                                        ; $6ddf: $03
    ld bc, $0001                                  ; $6de0: $01 $01 $00
    nop                                           ; $6de3: $00
    nop                                           ; $6de4: $00
    nop                                           ; $6de5: $00
    nop                                           ; $6de6: $00
    nop                                           ; $6de7: $00
    nop                                           ; $6de8: $00
    nop                                           ; $6de9: $00
    nop                                           ; $6dea: $00
    nop                                           ; $6deb: $00
    nop                                           ; $6dec: $00
    nop                                           ; $6ded: $00
    nop                                           ; $6dee: $00
    nop                                           ; $6def: $00
    ld a, $3e                                     ; $6df0: $3e $3e
    ld a, a                                       ; $6df2: $7f
    ld h, e                                       ; $6df3: $63
    ld a, a                                       ; $6df4: $7f
    ld b, c                                       ; $6df5: $41
    rst $38                                       ; $6df6: $ff
    pop bc                                        ; $6df7: $c1
    rst $38                                       ; $6df8: $ff
    nop                                           ; $6df9: $00
    rst $38                                       ; $6dfa: $ff
    nop                                           ; $6dfb: $00
    rst $38                                       ; $6dfc: $ff
    nop                                           ; $6dfd: $00
    rst $38                                       ; $6dfe: $ff
    nop                                           ; $6dff: $00
    rst $38                                       ; $6e00: $ff
    db $e3                                        ; $6e01: $e3
    ld a, [hl+]                                   ; $6e02: $2a
    ld [hl], $3e                                  ; $6e03: $36 $3e
    ld [hl], $14                                  ; $6e05: $36 $14
    inc e                                         ; $6e07: $1c
    inc e                                         ; $6e08: $1c
    inc e                                         ; $6e09: $1c
    ld [$0008], sp                                ; $6e0a: $08 $08 $00
    nop                                           ; $6e0d: $00
    nop                                           ; $6e0e: $00
    nop                                           ; $6e0f: $00
    nop                                           ; $6e10: $00
    nop                                           ; $6e11: $00
    nop                                           ; $6e12: $00
    nop                                           ; $6e13: $00
    nop                                           ; $6e14: $00
    nop                                           ; $6e15: $00
    ret nz                                        ; $6e16: $c0

    ret nz                                        ; $6e17: $c0

    ldh [$60], a                                  ; $6e18: $e0 $60
    ldh [rNR41], a                                ; $6e1a: $e0 $20
    ldh [rNR41], a                                ; $6e1c: $e0 $20
    ldh [$60], a                                  ; $6e1e: $e0 $60
    ret nz                                        ; $6e20: $c0

    ret nz                                        ; $6e21: $c0

    nop                                           ; $6e22: $00
    nop                                           ; $6e23: $00
    nop                                           ; $6e24: $00
    nop                                           ; $6e25: $00
    nop                                           ; $6e26: $00
    nop                                           ; $6e27: $00
    nop                                           ; $6e28: $00
    nop                                           ; $6e29: $00
    nop                                           ; $6e2a: $00
    nop                                           ; $6e2b: $00
    nop                                           ; $6e2c: $00
    nop                                           ; $6e2d: $00
    nop                                           ; $6e2e: $00
    nop                                           ; $6e2f: $00
    db $10                                        ; $6e30: $10
    ld [$0000], sp                                ; $6e31: $08 $00 $00
    db $10                                        ; $6e34: $10
    db $10                                        ; $6e35: $10
    ld [bc], a                                    ; $6e36: $02
    nop                                           ; $6e37: $00
    db $10                                        ; $6e38: $10
    jr @+$06                                      ; $6e39: $18 $04

    nop                                           ; $6e3b: $00
    add b                                         ; $6e3c: $80
    ret nz                                        ; $6e3d: $c0

    ld bc, $7fff                                  ; $6e3e: $01 $ff $7f
    ld c, e                                       ; $6e41: $4b
    ld b, e                                       ; $6e42: $43
    nop                                           ; $6e43: $00
    nop                                           ; $6e44: $00

Call_033_6e45:
    xor a                                         ; $6e45: $af
    ldh [rVBK], a                                 ; $6e46: $e0 $4f
    ld hl, $6c10                                  ; $6e48: $21 $10 $6c
    ld de, $8600                                  ; $6e4b: $11 $00 $86
    ld c, $08                                     ; $6e4e: $0e $08
    call Call_000_0468                            ; $6e50: $cd $68 $04
    ld hl, $6ca1                                  ; $6e53: $21 $a1 $6c
    ld de, $0f01                                  ; $6e56: $11 $01 $0f
    call Call_000_056c                            ; $6e59: $cd $6c $05
    ret                                           ; $6e5c: $c9


    xor a                                         ; $6e5d: $af
    ldh [rVBK], a                                 ; $6e5e: $e0 $4f
    ld hl, $6cb0                                  ; $6e60: $21 $b0 $6c
    ld de, $8500                                  ; $6e63: $11 $00 $85
    ld c, $18                                     ; $6e66: $0e $18
    call Call_000_0468                            ; $6e68: $cd $68 $04
    ld hl, $6e3d                                  ; $6e6b: $21 $3d $6e
    ld de, $0f01                                  ; $6e6e: $11 $01 $0f
    call Call_000_056c                            ; $6e71: $cd $6c $05
    ret                                           ; $6e74: $c9


Call_033_6e75:
    ld h, $06                                     ; $6e75: $26 $06

jr_033_6e77:
    push hl                                       ; $6e77: $e5
    push bc                                       ; $6e78: $c5
    ld hl, $c320                                  ; $6e79: $21 $20 $c3
    ld a, [hl+]                                   ; $6e7c: $2a
    ld d, [hl]                                    ; $6e7d: $56
    ld e, a                                       ; $6e7e: $5f
    ld hl, $1600                                  ; $6e7f: $21 $00 $16
    call Call_000_08ac                            ; $6e82: $cd $ac $08
    add hl, hl                                    ; $6e85: $29
    add hl, hl                                    ; $6e86: $29
    add hl, hl                                    ; $6e87: $29
    push hl                                       ; $6e88: $e5
    ld hl, $c322                                  ; $6e89: $21 $22 $c3
    ld a, [hl+]                                   ; $6e8c: $2a
    ld d, [hl]                                    ; $6e8d: $56
    ld e, a                                       ; $6e8e: $5f
    ld hl, $0c80                                  ; $6e8f: $21 $80 $0c
    call Call_000_08ac                            ; $6e92: $cd $ac $08
    add hl, hl                                    ; $6e95: $29
    add hl, hl                                    ; $6e96: $29
    add hl, hl                                    ; $6e97: $29
    ld e, h                                       ; $6e98: $5c
    pop hl                                        ; $6e99: $e1
    ld d, h                                       ; $6e9a: $54
    ld hl, $6e30                                  ; $6e9b: $21 $30 $6e
    call Call_000_26ea                            ; $6e9e: $cd $ea $26
    call Call_000_2e3b                            ; $6ea1: $cd $3b $2e
    pop bc                                        ; $6ea4: $c1
    pop hl                                        ; $6ea5: $e1
    dec h                                         ; $6ea6: $25
    jr nz, jr_033_6e77                            ; $6ea7: $20 $ce

    ret                                           ; $6ea9: $c9


Call_033_6eaa:
    ld bc, $0750                                  ; $6eaa: $01 $50 $07
    call Call_033_6e75                            ; $6ead: $cd $75 $6e
    ld bc, $0756                                  ; $6eb0: $01 $56 $07
    call Call_033_6e75                            ; $6eb3: $cd $75 $6e
    ld bc, $075c                                  ; $6eb6: $01 $5c $07
    call Call_033_6e75                            ; $6eb9: $cd $75 $6e
    ld bc, $0750                                  ; $6ebc: $01 $50 $07
    call Call_033_6e75                            ; $6ebf: $cd $75 $6e
    ld bc, $0756                                  ; $6ec2: $01 $56 $07
    call Call_033_6e75                            ; $6ec5: $cd $75 $6e
    ld bc, $075c                                  ; $6ec8: $01 $5c $07
    call Call_033_6e75                            ; $6ecb: $cd $75 $6e
    ld bc, $0750                                  ; $6ece: $01 $50 $07
    call Call_033_6e75                            ; $6ed1: $cd $75 $6e
    ld bc, $0756                                  ; $6ed4: $01 $56 $07
    call Call_033_6e75                            ; $6ed7: $cd $75 $6e
    ld bc, $075c                                  ; $6eda: $01 $5c $07
    call Call_033_6e75                            ; $6edd: $cd $75 $6e
    ld bc, $0750                                  ; $6ee0: $01 $50 $07
    call Call_033_6e75                            ; $6ee3: $cd $75 $6e
    ld bc, $0756                                  ; $6ee6: $01 $56 $07
    call Call_033_6e75                            ; $6ee9: $cd $75 $6e
    ld bc, $075c                                  ; $6eec: $01 $5c $07
    call Call_033_6e75                            ; $6eef: $cd $75 $6e
    ret                                           ; $6ef2: $c9


    db $10                                        ; $6ef3: $10
    ld a, [bc]                                    ; $6ef4: $0a
    ld bc, $0c32                                  ; $6ef5: $01 $32 $0c
    ei                                            ; $6ef8: $fb
    rst $38                                       ; $6ef9: $ff
    ld c, $10                                     ; $6efa: $0e $10
    ld b, b                                       ; $6efc: $40
    nop                                           ; $6efd: $00
    ld bc, $0e05                                  ; $6efe: $01 $05 $0e
    stop                                          ; $6f01: $10 $00
    nop                                           ; $6f03: $00
    ld bc, $0e05                                  ; $6f04: $01 $05 $0e
    db $10                                        ; $6f07: $10
    ret nz                                        ; $6f08: $c0

    nop                                           ; $6f09: $00
    ld bc, $0e05                                  ; $6f0a: $01 $05 $0e
    db $10                                        ; $6f0d: $10
    add b                                         ; $6f0e: $80
    nop                                           ; $6f0f: $00
    ld bc, $0c05                                  ; $6f10: $01 $05 $0c
    rst $20                                       ; $6f13: $e7
    rst $38                                       ; $6f14: $ff
    inc b                                         ; $6f15: $04
    nop                                           ; $6f16: $00
    rra                                           ; $6f17: $1f
    nop                                           ; $6f18: $00
    dec bc                                        ; $6f19: $0b
    ld [bc], a                                    ; $6f1a: $02
    inc bc                                        ; $6f1b: $03
    nop                                           ; $6f1c: $00
    ld bc, $1500                                  ; $6f1d: $01 $00 $15
    nop                                           ; $6f20: $00
    inc b                                         ; $6f21: $04
    nop                                           ; $6f22: $00
    ld [de], a                                    ; $6f23: $12
    nop                                           ; $6f24: $00
    ld de, $0402                                  ; $6f25: $11 $02 $04
    nop                                           ; $6f28: $00
    ld d, $00                                     ; $6f29: $16 $00
    ld de, $0402                                  ; $6f2b: $11 $02 $04
    nop                                           ; $6f2e: $00
    rra                                           ; $6f2f: $1f
    nop                                           ; $6f30: $00
    dec bc                                        ; $6f31: $0b
    ld [bc], a                                    ; $6f32: $02
    inc bc                                        ; $6f33: $03
    nop                                           ; $6f34: $00
    ld bc, $1500                                  ; $6f35: $01 $00 $15
    nop                                           ; $6f38: $00
    ld c, $35                                     ; $6f39: $0e $35
    ld [bc], a                                    ; $6f3b: $02
    nop                                           ; $6f3c: $00
    ld bc, $0005                                  ; $6f3d: $01 $05 $00
    ld c, $35                                     ; $6f40: $0e $35
    ld bc, $0100                                  ; $6f42: $01 $00 $01
    dec b                                         ; $6f45: $05
    nop                                           ; $6f46: $00
    ld hl, $c800                                  ; $6f47: $21 $00 $c8
    ld a, l                                       ; $6f4a: $7d
    add $12                                       ; $6f4b: $c6 $12
    ld l, a                                       ; $6f4d: $6f
    ld a, h                                       ; $6f4e: $7c
    adc $00                                       ; $6f4f: $ce $00
    ld h, a                                       ; $6f51: $67
    ld a, [hl]                                    ; $6f52: $7e
    cp $63                                        ; $6f53: $fe $63
    jr z, jr_033_6fb8                             ; $6f55: $28 $61

    rst $20                                       ; $6f57: $e7
    ret nz                                        ; $6f58: $c0

    inc de                                        ; $6f59: $13
    rst $18                                       ; $6f5a: $df
    ld a, [hl-]                                   ; $6f5b: $3a
    ld [bc], a                                    ; $6f5c: $02
    ld e, l                                       ; $6f5d: $5d
    ld d, h                                       ; $6f5e: $54
    rst $18                                       ; $6f5f: $df
    ld [hl+], a                                   ; $6f60: $22
    ld [bc], a                                    ; $6f61: $02
    ld a, $0f                                     ; $6f62: $3e $0f
    ld bc, $0b00                                  ; $6f64: $01 $00 $0b
    ld de, $1b00                                  ; $6f67: $11 $00 $1b
    rst $18                                       ; $6f6a: $df
    jr nz, jr_033_6f77                            ; $6f6b: $20 $0a

    rst $08                                       ; $6f6d: $cf
    ld h, e                                       ; $6f6e: $63
    ld a, $0f                                     ; $6f6f: $3e $0f
    ld de, $ff00                                  ; $6f71: $11 $00 $ff
    rst $18                                       ; $6f74: $df
    ld b, b                                       ; $6f75: $40
    ld a, [bc]                                    ; $6f76: $0a

jr_033_6f77:
    ld a, $0f                                     ; $6f77: $3e $0f
    rst $18                                       ; $6f79: $df
    ld b, d                                       ; $6f7a: $42
    ld a, [bc]                                    ; $6f7b: $0a
    push af                                       ; $6f7c: $f5
    ld a, $10                                     ; $6f7d: $3e $10
    rst $18                                       ; $6f7f: $df
    inc b                                         ; $6f80: $04
    ld a, [bc]                                    ; $6f81: $0a
    pop af                                        ; $6f82: $f1
    ld a, $0f                                     ; $6f83: $3e $0f
    ld bc, $3f00                                  ; $6f85: $01 $00 $3f
    ld de, $3f00                                  ; $6f88: $11 $00 $3f
    rst $18                                       ; $6f8b: $df
    jr nz, @+$0c                                  ; $6f8c: $20 $0a

    ld hl, $0c5f                                  ; $6f8e: $21 $5f $0c
    rst $18                                       ; $6f91: $df
    ld c, $0a                                     ; $6f92: $0e $0a
    ld a, $82                                     ; $6f94: $3e $82
    rst $18                                       ; $6f96: $df
    ld [$cd0a], sp                                ; $6f97: $08 $0a $cd
    or a                                          ; $6f9a: $b7
    ld a, h                                       ; $6f9b: $7c
    ld a, $fa                                     ; $6f9c: $3e $fa
    ld [$c441], a                                 ; $6f9e: $ea $41 $c4
    ld a, $fa                                     ; $6fa1: $3e $fa
    ld [$c46a], a                                 ; $6fa3: $ea $6a $c4
    ld hl, $c2a0                                  ; $6fa6: $21 $a0 $c2
    ld de, $c466                                  ; $6fa9: $11 $66 $c4
    ld bc, $0004                                  ; $6fac: $01 $04 $00
    call MemCopy                            ; $6faf: $cd $d3 $03
    ld a, [$c2a4]                                 ; $6fb2: $fa $a4 $c2
    ld [$c465], a                                 ; $6fb5: $ea $65 $c4

jr_033_6fb8:
    ret                                           ; $6fb8: $c9


    rst $18                                       ; $6fb9: $df
    ld l, a                                       ; $6fba: $6f
    cp $6f                                        ; $6fbb: $fe $6f
    rst $00                                       ; $6fbd: $c7
    ld l, a                                       ; $6fbe: $6f
    ret z                                         ; $6fbf: $c8

    ld [hl], b                                    ; $6fc0: $70
    rst $28                                       ; $6fc1: $ef
    ld [hl], b                                    ; $6fc2: $70
    ld e, e                                       ; $6fc3: $5b
    ld [hl], c                                    ; $6fc4: $71
    add h                                         ; $6fc5: $84
    ld [hl], c                                    ; $6fc6: $71
    db $dd                                        ; $6fc7: $dd
    ld a, e                                       ; $6fc8: $7b
    nop                                           ; $6fc9: $00
    inc hl                                        ; $6fca: $23
    nop                                           ; $6fcb: $00
    add hl, de                                    ; $6fcc: $19
    nop                                           ; $6fcd: $00
    nop                                           ; $6fce: $00
    nop                                           ; $6fcf: $00
    ld b, b                                       ; $6fd0: $40
    ld bc, $002c                                  ; $6fd1: $01 $2c $00
    nop                                           ; $6fd4: $00
    nop                                           ; $6fd5: $00
    nop                                           ; $6fd6: $00
    nop                                           ; $6fd7: $00
    nop                                           ; $6fd8: $00
    nop                                           ; $6fd9: $00
    nop                                           ; $6fda: $00
    rst $38                                       ; $6fdb: $ff
    db $10                                        ; $6fdc: $10
    ld a, [bc]                                    ; $6fdd: $0a
    nop                                           ; $6fde: $00
    ld bc, $00c0                                  ; $6fdf: $01 $c0 $00
    dec d                                         ; $6fe2: $15
    nop                                           ; $6fe3: $00
    add hl, sp                                    ; $6fe4: $39
    ld [bc], a                                    ; $6fe5: $02
    ld b, b                                       ; $6fe6: $40
    nop                                           ; $6fe7: $00
    inc hl                                        ; $6fe8: $23
    nop                                           ; $6fe9: $00
    jr jr_033_6fef                                ; $6fea: $18 $03

    ret nz                                        ; $6fec: $c0

    nop                                           ; $6fed: $00
    inc hl                                        ; $6fee: $23

jr_033_6fef:
    nop                                           ; $6fef: $00
    ld e, $0e                                     ; $6ff0: $1e $0e
    ret nz                                        ; $6ff2: $c0

    nop                                           ; $6ff3: $00
    inc hl                                        ; $6ff4: $23
    nop                                           ; $6ff5: $00
    ld e, $0f                                     ; $6ff6: $1e $0f
    ret nz                                        ; $6ff8: $c0

    nop                                           ; $6ff9: $00
    inc hl                                        ; $6ffa: $23
    nop                                           ; $6ffb: $00
    ld e, $ff                                     ; $6ffc: $1e $ff
    ld bc, $00ff                                  ; $6ffe: $01 $ff $00
    nop                                           ; $7001: $00
    nop                                           ; $7002: $00
    nop                                           ; $7003: $00
    ld [bc], a                                    ; $7004: $02
    ld b, $02                                     ; $7005: $06 $02
    rst $38                                       ; $7007: $ff
    nop                                           ; $7008: $00
    nop                                           ; $7009: $00
    nop                                           ; $700a: $00
    nop                                           ; $700b: $00
    cpl                                           ; $700c: $2f
    ld [bc], a                                    ; $700d: $02
    ld c, $ff                                     ; $700e: $0e $ff
    nop                                           ; $7010: $00
    nop                                           ; $7011: $00
    nop                                           ; $7012: $00
    nop                                           ; $7013: $00
    ld h, $0e                                     ; $7014: $26 $0e
    rrca                                          ; $7016: $0f
    rst $38                                       ; $7017: $ff
    nop                                           ; $7018: $00
    nop                                           ; $7019: $00
    nop                                           ; $701a: $00
    nop                                           ; $701b: $00
    ld h, $0f                                     ; $701c: $26 $0f
    rst $38                                       ; $701e: $ff

Call_033_701f:
    ld hl, $14c8                                  ; $701f: $21 $c8 $14
    rst $18                                       ; $7022: $df
    ld c, $0a                                     ; $7023: $0e $0a
    ld a, $02                                     ; $7025: $3e $02
    ld b, a                                       ; $7027: $47
    ld a, $06                                     ; $7028: $3e $06
    rst $18                                       ; $702a: $df
    ld [hl-], a                                   ; $702b: $32
    ld a, [bc]                                    ; $702c: $0a
    ld a, $02                                     ; $702d: $3e $02
    rst $18                                       ; $702f: $df
    inc [hl]                                      ; $7030: $34
    ld a, [bc]                                    ; $7031: $0a
    ld a, $02                                     ; $7032: $3e $02
    rst $18                                       ; $7034: $df
    ld [$f70a], sp                                ; $7035: $08 $0a $f7
    ldh [rNR23], a                                ; $7038: $e0 $18
    jr nz, jr_033_705c                            ; $703a: $20 $20

    rst $20                                       ; $703c: $e7
    ldh [rNR23], a                                ; $703d: $e0 $18
    ld a, $02                                     ; $703f: $3e $02
    ld b, $01                                     ; $7041: $06 $01
    rst $18                                       ; $7043: $df
    ld a, [hl+]                                   ; $7044: $2a
    ld a, [bc]                                    ; $7045: $0a
    ld a, $02                                     ; $7046: $3e $02
    ld b, $c0                                     ; $7048: $06 $c0
    ld de, $0300                                  ; $704a: $11 $00 $03
    rst $18                                       ; $704d: $df
    jr z, jr_033_705a                             ; $704e: $28 $0a

    ld a, $02                                     ; $7050: $3e $02
    rst $18                                       ; $7052: $df
    ld e, $0a                                     ; $7053: $1e $0a
    ld a, $02                                     ; $7055: $3e $02
    ld b, $00                                     ; $7057: $06 $00
    rst $18                                       ; $7059: $df

jr_033_705a:
    ld a, [hl+]                                   ; $705a: $2a
    ld a, [bc]                                    ; $705b: $0a

jr_033_705c:
    ret                                           ; $705c: $c9


    ld hl, $14c8                                  ; $705d: $21 $c8 $14
    rst $18                                       ; $7060: $df
    ld c, $0a                                     ; $7061: $0e $0a
    ld a, $02                                     ; $7063: $3e $02
    ld b, a                                       ; $7065: $47
    ld a, $06                                     ; $7066: $3e $06
    rst $18                                       ; $7068: $df
    ld [hl-], a                                   ; $7069: $32
    ld a, [bc]                                    ; $706a: $0a
    ld a, $02                                     ; $706b: $3e $02
    rst $18                                       ; $706d: $df
    inc [hl]                                      ; $706e: $34
    ld a, [bc]                                    ; $706f: $0a
    ld a, $02                                     ; $7070: $3e $02
    rst $18                                       ; $7072: $df
    ld [$f70a], sp                                ; $7073: $08 $0a $f7
    ldh [rNR23], a                                ; $7076: $e0 $18
    jr nz, jr_033_705c                            ; $7078: $20 $e2

    rst $20                                       ; $707a: $e7
    ldh [rNR23], a                                ; $707b: $e0 $18
    ld a, $02                                     ; $707d: $3e $02
    ld b, $00                                     ; $707f: $06 $00
    ld de, $0200                                  ; $7081: $11 $00 $02
    rst $18                                       ; $7084: $df
    jr z, @+$0c                                   ; $7085: $28 $0a

    ld a, $02                                     ; $7087: $3e $02
    rst $18                                       ; $7089: $df
    ld e, $0a                                     ; $708a: $1e $0a
    ld a, $02                                     ; $708c: $3e $02
    ld b, $c0                                     ; $708e: $06 $c0
    ld de, $0400                                  ; $7090: $11 $00 $04
    rst $18                                       ; $7093: $df
    jr z, @+$0c                                   ; $7094: $28 $0a

    ld a, $02                                     ; $7096: $3e $02
    rst $18                                       ; $7098: $df
    ld e, $0a                                     ; $7099: $1e $0a
    ld a, $02                                     ; $709b: $3e $02
    ld b, $80                                     ; $709d: $06 $80
    ld de, $0200                                  ; $709f: $11 $00 $02
    rst $18                                       ; $70a2: $df
    jr z, jr_033_70af                             ; $70a3: $28 $0a

    ld a, $02                                     ; $70a5: $3e $02
    rst $18                                       ; $70a7: $df
    ld e, $0a                                     ; $70a8: $1e $0a
    ld a, $02                                     ; $70aa: $3e $02
    ld b, $40                                     ; $70ac: $06 $40
    rst $18                                       ; $70ae: $df

jr_033_70af:
    inc l                                         ; $70af: $2c
    ld a, [bc]                                    ; $70b0: $0a
    ret                                           ; $70b1: $c9


    rst $30                                       ; $70b2: $f7
    jr nz, jr_033_70ce                            ; $70b3: $20 $19

    jp z, Jump_033_70bc                           ; $70b5: $ca $bc $70

    call Call_033_771a                            ; $70b8: $cd $1a $77
    ret                                           ; $70bb: $c9


Jump_033_70bc:
    ld hl, $14d5                                  ; $70bc: $21 $d5 $14
    rst $18                                       ; $70bf: $df
    ld c, $0a                                     ; $70c0: $0e $0a
    ld a, $02                                     ; $70c2: $3e $02
    rst $18                                       ; $70c4: $df
    ld [$c90a], sp                                ; $70c5: $08 $0a $c9
    ld [bc], a                                    ; $70c8: $02
    add b                                         ; $70c9: $80
    add $00                                       ; $70ca: $c6 $00
    ld e, l                                       ; $70cc: $5d
    ld [hl], b                                    ; $70cd: $70

jr_033_70ce:
    inc de                                        ; $70ce: $13
    nop                                           ; $70cf: $00
    ld [bc], a                                    ; $70d0: $02
    rst $38                                       ; $70d1: $ff
    add $00                                       ; $70d2: $c6 $00
    rra                                           ; $70d4: $1f
    ld [hl], b                                    ; $70d5: $70
    inc de                                        ; $70d6: $13
    nop                                           ; $70d7: $00
    ld [bc], a                                    ; $70d8: $02
    rst $38                                       ; $70d9: $ff
    nop                                           ; $70da: $00
    nop                                           ; $70db: $00
    or d                                          ; $70dc: $b2
    ld [hl], b                                    ; $70dd: $70
    inc de                                        ; $70de: $13
    nop                                           ; $70df: $00
    rst $38                                       ; $70e0: $ff
    rst $08                                       ; $70e1: $cf
    sbc [hl]                                      ; $70e2: $9e
    ld hl, $14d2                                  ; $70e3: $21 $d2 $14
    rst $18                                       ; $70e6: $df
    ld c, $0a                                     ; $70e7: $0e $0a
    ld a, $83                                     ; $70e9: $3e $83
    rst $18                                       ; $70eb: $df
    ld [$c90a], sp                                ; $70ec: $08 $0a $c9
    ld bc, $c6ff                                  ; $70ef: $01 $ff $c6
    nop                                           ; $70f2: $00
    pop hl                                        ; $70f3: $e1
    ld [hl], b                                    ; $70f4: $70
    ld b, $00                                     ; $70f5: $06 $00
    rst $38                                       ; $70f7: $ff
    rst $30                                       ; $70f8: $f7
    ldh [rNR23], a                                ; $70f9: $e0 $18
    jr nz, jr_033_7100                            ; $70fb: $20 $03

    call Call_033_701f                            ; $70fd: $cd $1f $70

jr_033_7100:
    ld a, $01                                     ; $7100: $3e $01
    ld [$c4bc], a                                 ; $7102: $ea $bc $c4
    call Call_033_72be                            ; $7105: $cd $be $72
    ret                                           ; $7108: $c9


    ld a, $02                                     ; $7109: $3e $02
    jr jr_033_710f                                ; $710b: $18 $02

    ld a, $03                                     ; $710d: $3e $03

jr_033_710f:
    ld [$c4bc], a                                 ; $710f: $ea $bc $c4
    call Call_033_72be                            ; $7112: $cd $be $72
    ret                                           ; $7115: $c9


    rst $30                                       ; $7116: $f7
    ret nz                                        ; $7117: $c0

    jr @+$22                                      ; $7118: $18 $20

    inc c                                         ; $711a: $0c
    ld hl, $14d2                                  ; $711b: $21 $d2 $14
    rst $18                                       ; $711e: $df
    ld c, $0a                                     ; $711f: $0e $0a
    ld a, $83                                     ; $7121: $3e $83
    rst $18                                       ; $7123: $df
    ld [$c90a], sp                                ; $7124: $08 $0a $c9
    ld a, $00                                     ; $7127: $3e $00
    ld b, $c0                                     ; $7129: $06 $c0
    ld de, $0100                                  ; $712b: $11 $00 $01
    rst $18                                       ; $712e: $df
    jr z, jr_033_713b                             ; $712f: $28 $0a

    ld a, $00                                     ; $7131: $3e $00
    rst $18                                       ; $7133: $df
    ld e, $0a                                     ; $7134: $1e $0a
    ld a, $02                                     ; $7136: $3e $02
    ld [$c441], a                                 ; $7138: $ea $41 $c4

jr_033_713b:
    rst $08                                       ; $713b: $cf
    sub d                                         ; $713c: $92
    ret                                           ; $713d: $c9


    rst $30                                       ; $713e: $f7
    ldh [rNR23], a                                ; $713f: $e0 $18
    jr z, @+$12                                   ; $7141: $28 $10

    rst $30                                       ; $7143: $f7
    ret nz                                        ; $7144: $c0

    jr jr_033_7167                                ; $7145: $18 $20

    dec bc                                        ; $7147: $0b
    ld hl, $14c9                                  ; $7148: $21 $c9 $14
    rst $18                                       ; $714b: $df
    ld c, $0a                                     ; $714c: $0e $0a
    ld a, $02                                     ; $714e: $3e $02
    rst $18                                       ; $7150: $df
    ld [$3e0a], sp                                ; $7151: $08 $0a $3e
    ld bc, $41ea                                  ; $7154: $01 $ea $41
    call nz, $92cf                                ; $7157: $c4 $cf $92
    ret                                           ; $715a: $c9


    ld bc, $00ff                                  ; $715b: $01 $ff $00
    nop                                           ; $715e: $00
    ld hl, sp+$70                                 ; $715f: $f8 $70
    ld bc, $0200                                  ; $7161: $01 $00 $02
    rst $38                                       ; $7164: $ff
    nop                                           ; $7165: $00
    nop                                           ; $7166: $00

jr_033_7167:
    add hl, bc                                    ; $7167: $09
    ld [hl], c                                    ; $7168: $71
    ld bc, $0300                                  ; $7169: $01 $00 $03
    rst $38                                       ; $716c: $ff
    nop                                           ; $716d: $00
    nop                                           ; $716e: $00
    dec c                                         ; $716f: $0d
    ld [hl], c                                    ; $7170: $71
    ld bc, $0400                                  ; $7171: $01 $00 $04
    ld b, b                                       ; $7174: $40
    add $80                                       ; $7175: $c6 $80
    ld d, $71                                     ; $7177: $16 $71
    nop                                           ; $7179: $00
    nop                                           ; $717a: $00
    dec b                                         ; $717b: $05
    add b                                         ; $717c: $80
    nop                                           ; $717d: $00
    nop                                           ; $717e: $00
    ld a, $71                                     ; $717f: $3e $71
    nop                                           ; $7181: $00
    nop                                           ; $7182: $00
    rst $38                                       ; $7183: $ff
    call Call_033_7813                            ; $7184: $cd $13 $78
    rst $30                                       ; $7187: $f7
    ldh [rNR23], a                                ; $7188: $e0 $18
    jr nz, jr_033_7197                            ; $718a: $20 $0b

    ld a, $02                                     ; $718c: $3e $02
    ld bc, $2300                                  ; $718e: $01 $00 $23
    ld de, $1e00                                  ; $7191: $11 $00 $1e
    rst $18                                       ; $7194: $df
    jr nz, jr_033_71a1                            ; $7195: $20 $0a

jr_033_7197:
    rst $30                                       ; $7197: $f7
    and b                                         ; $7198: $a0
    ld a, [de]                                    ; $7199: $1a
    jr nz, jr_033_71ac                            ; $719a: $20 $10

    rst $30                                       ; $719c: $f7
    ret nz                                        ; $719d: $c0

    jr @+$2a                                      ; $719e: $18 $28

    dec bc                                        ; $71a0: $0b

jr_033_71a1:
    ld a, $02                                     ; $71a1: $3e $02
    ld bc, $3f00                                  ; $71a3: $01 $00 $3f
    ld de, $3f00                                  ; $71a6: $11 $00 $3f
    rst $18                                       ; $71a9: $df
    jr nz, @+$0c                                  ; $71aa: $20 $0a

jr_033_71ac:
    ld a, [$c46a]                                 ; $71ac: $fa $6a $c4
    cp $fa                                        ; $71af: $fe $fa
    jr nz, jr_033_71bf                            ; $71b1: $20 $0c

    xor a                                         ; $71b3: $af
    ld hl, $c4b4                                  ; $71b4: $21 $b4 $c4
    ld [hl+], a                                   ; $71b7: $22
    ld [hl+], a                                   ; $71b8: $22
    call Call_033_73bb                            ; $71b9: $cd $bb $73
    call Call_033_755b                            ; $71bc: $cd $5b $75

jr_033_71bf:
    ld a, $00                                     ; $71bf: $3e $00
    ld [$c967], a                                 ; $71c1: $ea $67 $c9
    ld a, [$c46a]                                 ; $71c4: $fa $6a $c4
    cp $0f                                        ; $71c7: $fe $0f
    jr z, jr_033_71fa                             ; $71c9: $28 $2f

    cp $03                                        ; $71cb: $fe $03
    jr z, jr_033_71d5                             ; $71cd: $28 $06

    cp $0e                                        ; $71cf: $fe $0e
    jp z, Jump_033_72b2                           ; $71d1: $ca $b2 $72

    ret                                           ; $71d4: $c9


jr_033_71d5:
    xor a                                         ; $71d5: $af
    ld hl, $c4b4                                  ; $71d6: $21 $b4 $c4
    ld [hl+], a                                   ; $71d9: $22
    ld [hl+], a                                   ; $71da: $22
    rst $20                                       ; $71db: $e7
    and b                                         ; $71dc: $a0
    ld a, [de]                                    ; $71dd: $1a
    ld a, $02                                     ; $71de: $3e $02
    ld b, a                                       ; $71e0: $47
    ld a, $0a                                     ; $71e1: $3e $0a
    rst $18                                       ; $71e3: $df
    ld [hl-], a                                   ; $71e4: $32
    ld a, [bc]                                    ; $71e5: $0a
    ld c, $04                                     ; $71e6: $0e $04
    call Call_000_25af                            ; $71e8: $cd $af $25
    call Call_000_2625                            ; $71eb: $cd $25 $26
    ld hl, $14d5                                  ; $71ee: $21 $d5 $14
    rst $18                                       ; $71f1: $df
    ld c, $0a                                     ; $71f2: $0e $0a
    ld a, $02                                     ; $71f4: $3e $02
    rst $18                                       ; $71f6: $df
    ld [$c90a], sp                                ; $71f7: $08 $0a $c9

jr_033_71fa:
    xor a                                         ; $71fa: $af
    ld hl, $c4b4                                  ; $71fb: $21 $b4 $c4
    ld [hl+], a                                   ; $71fe: $22
    ld [hl+], a                                   ; $71ff: $22
    rst $30                                       ; $7200: $f7
    ld b, b                                       ; $7201: $40
    ld c, $20                                     ; $7202: $0e $20
    ld l, e                                       ; $7204: $6b
    rst $20                                       ; $7205: $e7
    ret nz                                        ; $7206: $c0

    jr jr_033_720f                                ; $7207: $18 $06

    nop                                           ; $7209: $00
    ld c, $fa                                     ; $720a: $0e $fa
    rst $18                                       ; $720c: $df
    ld c, [hl]                                    ; $720d: $4e
    ld a, [bc]                                    ; $720e: $0a

jr_033_720f:
    rst $18                                       ; $720f: $df
    inc [hl]                                      ; $7210: $34
    ld [bc], a                                    ; $7211: $02
    ld c, $04                                     ; $7212: $0e $04
    call Call_000_25af                            ; $7214: $cd $af $25
    call Call_000_2625                            ; $7217: $cd $25 $26
    ld hl, $14cf                                  ; $721a: $21 $cf $14
    rst $18                                       ; $721d: $df
    ld c, $0a                                     ; $721e: $0e $0a
    ld a, $02                                     ; $7220: $3e $02
    rst $18                                       ; $7222: $df
    ld [$3e0a], sp                                ; $7223: $08 $0a $3e
    ld [bc], a                                    ; $7226: $02
    ld bc, $000a                                  ; $7227: $01 $0a $00
    rst $18                                       ; $722a: $df
    ld d, $0a                                     ; $722b: $16 $0a
    ld a, $02                                     ; $722d: $3e $02
    ld b, a                                       ; $722f: $47
    ld a, $05                                     ; $7230: $3e $05
    rst $18                                       ; $7232: $df
    ld [hl-], a                                   ; $7233: $32
    ld a, [bc]                                    ; $7234: $0a
    ld a, $02                                     ; $7235: $3e $02
    rst $18                                       ; $7237: $df
    inc [hl]                                      ; $7238: $34
    ld a, [bc]                                    ; $7239: $0a
    ld a, $02                                     ; $723a: $3e $02
    ld bc, $2300                                  ; $723c: $01 $00 $23
    ld de, $1900                                  ; $723f: $11 $00 $19
    rst $18                                       ; $7242: $df
    ld [hl+], a                                   ; $7243: $22
    ld a, [bc]                                    ; $7244: $0a
    ld a, $02                                     ; $7245: $3e $02
    rst $18                                       ; $7247: $df
    ld e, $0a                                     ; $7248: $1e $0a
    ld a, $02                                     ; $724a: $3e $02
    ld b, a                                       ; $724c: $47
    ld a, $06                                     ; $724d: $3e $06
    rst $18                                       ; $724f: $df
    ld [hl-], a                                   ; $7250: $32
    ld a, [bc]                                    ; $7251: $0a
    ld a, $02                                     ; $7252: $3e $02
    rst $18                                       ; $7254: $df
    inc [hl]                                      ; $7255: $34
    ld a, [bc]                                    ; $7256: $0a
    ld a, $02                                     ; $7257: $3e $02
    ld bc, $2300                                  ; $7259: $01 $00 $23
    ld de, $1500                                  ; $725c: $11 $00 $15
    rst $18                                       ; $725f: $df
    ld [hl+], a                                   ; $7260: $22
    ld a, [bc]                                    ; $7261: $0a
    ld c, $04                                     ; $7262: $0e $04
    call Call_000_25a1                            ; $7264: $cd $a1 $25
    call Call_000_2625                            ; $7267: $cd $25 $26
    ld a, $01                                     ; $726a: $3e $01
    ld [$c441], a                                 ; $726c: $ea $41 $c4
    ret                                           ; $726f: $c9


    rst $20                                       ; $7270: $e7
    ret nz                                        ; $7271: $c0

    jr @-$17                                      ; $7272: $18 $e7

    nop                                           ; $7274: $00
    add hl, de                                    ; $7275: $19
    rst $20                                       ; $7276: $e7
    add b                                         ; $7277: $80
    ld a, [de]                                    ; $7278: $1a
    rst $20                                       ; $7279: $e7
    and b                                         ; $727a: $a0
    ld a, [de]                                    ; $727b: $1a
    ld b, $00                                     ; $727c: $06 $00
    ld c, $fa                                     ; $727e: $0e $fa
    rst $18                                       ; $7280: $df
    ld c, [hl]                                    ; $7281: $4e
    ld a, [bc]                                    ; $7282: $0a
    rst $18                                       ; $7283: $df
    inc [hl]                                      ; $7284: $34
    ld [bc], a                                    ; $7285: $02
    ld c, $04                                     ; $7286: $0e $04
    call Call_000_25af                            ; $7288: $cd $af $25
    call Call_000_2625                            ; $728b: $cd $25 $26
    ld hl, $14e9                                  ; $728e: $21 $e9 $14
    rst $18                                       ; $7291: $df
    ld c, $0a                                     ; $7292: $0e $0a
    ld a, $02                                     ; $7294: $3e $02
    rst $18                                       ; $7296: $df
    ld [$3e0a], sp                                ; $7297: $08 $0a $3e
    ld [bc], a                                    ; $729a: $02
    ld b, a                                       ; $729b: $47
    ld a, $06                                     ; $729c: $3e $06
    rst $18                                       ; $729e: $df
    ld [hl-], a                                   ; $729f: $32
    ld a, [bc]                                    ; $72a0: $0a
    ld a, $02                                     ; $72a1: $3e $02
    rst $18                                       ; $72a3: $df
    inc [hl]                                      ; $72a4: $34
    ld a, [bc]                                    ; $72a5: $0a
    ld hl, $14d5                                  ; $72a6: $21 $d5 $14
    rst $18                                       ; $72a9: $df
    ld c, $0a                                     ; $72aa: $0e $0a
    ld a, $02                                     ; $72ac: $3e $02
    rst $18                                       ; $72ae: $df
    ld [$c90a], sp                                ; $72af: $08 $0a $c9

Jump_033_72b2:
    ld c, $04                                     ; $72b2: $0e $04
    call Call_000_25af                            ; $72b4: $cd $af $25
    call Call_000_2625                            ; $72b7: $cd $25 $26
    call Call_033_7660                            ; $72ba: $cd $60 $76
    ret                                           ; $72bd: $c9


Call_033_72be:
    ld hl, $14d3                                  ; $72be: $21 $d3 $14
    rst $18                                       ; $72c1: $df
    ld c, $0a                                     ; $72c2: $0e $0a
    ld a, $80                                     ; $72c4: $3e $80
    rst $18                                       ; $72c6: $df
    ld a, [bc]                                    ; $72c7: $0a
    ld a, [bc]                                    ; $72c8: $0a
    push af                                       ; $72c9: $f5
    ld a, $05                                     ; $72ca: $3e $05
    rst $18                                       ; $72cc: $df
    inc b                                         ; $72cd: $04
    ld a, [bc]                                    ; $72ce: $0a
    pop af                                        ; $72cf: $f1
    rst $18                                       ; $72d0: $df
    ld [de], a                                    ; $72d1: $12
    ld a, [bc]                                    ; $72d2: $0a
    rst $18                                       ; $72d3: $df
    inc c                                         ; $72d4: $0c
    ld a, [bc]                                    ; $72d5: $0a
    push af                                       ; $72d6: $f5
    ld a, $05                                     ; $72d7: $3e $05
    rst $18                                       ; $72d9: $df
    inc b                                         ; $72da: $04
    ld a, [bc]                                    ; $72db: $0a
    pop af                                        ; $72dc: $f1
    and a                                         ; $72dd: $a7
    jr z, jr_033_72e1                             ; $72de: $28 $01

    ret                                           ; $72e0: $c9


jr_033_72e1:
    ld a, $0a                                     ; $72e1: $3e $0a
    ld [$c967], a                                 ; $72e3: $ea $67 $c9
    rst $18                                       ; $72e6: $df
    inc e                                         ; $72e7: $1c
    db $10                                        ; $72e8: $10
    ld bc, $8000                                  ; $72e9: $01 $00 $80
    rst $18                                       ; $72ec: $df
    ld e, $02                                     ; $72ed: $1e $02
    ld bc, $ff01                                  ; $72ef: $01 $01 $ff
    rst $18                                       ; $72f2: $df
    ld e, $02                                     ; $72f3: $1e $02
    call Call_033_730c                            ; $72f5: $cd $0c $73
    call Call_033_751b                            ; $72f8: $cd $1b $75
    ldh a, [$95]                                  ; $72fb: $f0 $95
    ld hl, $736f                                  ; $72fd: $21 $6f $73
    rst $18                                       ; $7300: $df
    ld a, [de]                                    ; $7301: $1a
    db $10                                        ; $7302: $10
    ld a, $01                                     ; $7303: $3e $01
    rst $18                                       ; $7305: $df
    ld [de], a                                    ; $7306: $12
    db $10                                        ; $7307: $10
    rst $18                                       ; $7308: $df
    jr nc, @+$12                                  ; $7309: $30 $10

    ret                                           ; $730b: $c9


Call_033_730c:
    ld a, [$c4bc]                                 ; $730c: $fa $bc $c4
    cp $01                                        ; $730f: $fe $01
    jr z, jr_033_732b                             ; $7311: $28 $18

    cp $02                                        ; $7313: $fe $02
    jr z, jr_033_735b                             ; $7315: $28 $44

    ld hl, $11e0                                  ; $7317: $21 $e0 $11
    ld de, $2ce0                                  ; $731a: $11 $e0 $2c
    rst $18                                       ; $731d: $df
    jr nz, @+$12                                  ; $731e: $20 $10

    ld a, $06                                     ; $7320: $3e $06
    ld [$c834], a                                 ; $7322: $ea $34 $c8
    ld a, $07                                     ; $7325: $3e $07
    ld [$c82c], a                                 ; $7327: $ea $2c $c8
    ret                                           ; $732a: $c9


jr_033_732b:
    ld hl, $2320                                  ; $732b: $21 $20 $23
    ld de, $1da0                                  ; $732e: $11 $a0 $1d
    rst $18                                       ; $7331: $df
    jr nz, @+$12                                  ; $7332: $20 $10

    rst $30                                       ; $7334: $f7
    jr nz, jr_033_7350                            ; $7335: $20 $19

    jr nz, jr_033_7350                            ; $7337: $20 $17

    rst $30                                       ; $7339: $f7
    ret nz                                        ; $733a: $c0

    jr @+$2a                                      ; $733b: $18 $28

    rlca                                          ; $733d: $07
    rst $30                                       ; $733e: $f7
    and b                                         ; $733f: $a0
    ld a, [de]                                    ; $7340: $1a
    jr nz, jr_033_7345                            ; $7341: $20 $02

    jr jr_033_7350                                ; $7343: $18 $0b

jr_033_7345:
    ld a, $05                                     ; $7345: $3e $05
    ld [$c834], a                                 ; $7347: $ea $34 $c8
    ld a, $28                                     ; $734a: $3e $28
    ld [$c82c], a                                 ; $734c: $ea $2c $c8
    ret                                           ; $734f: $c9


jr_033_7350:
    ld a, $06                                     ; $7350: $3e $06
    ld [$c834], a                                 ; $7352: $ea $34 $c8
    ld a, $07                                     ; $7355: $3e $07
    ld [$c82c], a                                 ; $7357: $ea $2c $c8
    ret                                           ; $735a: $c9


jr_033_735b:
    ld hl, $1ca0                                  ; $735b: $21 $a0 $1c
    ld de, $2980                                  ; $735e: $11 $80 $29
    rst $18                                       ; $7361: $df
    jr nz, jr_033_7374                            ; $7362: $20 $10

    ld a, $06                                     ; $7364: $3e $06
    ld [$c834], a                                 ; $7366: $ea $34 $c8
    ld a, $07                                     ; $7369: $3e $07
    ld [$c82c], a                                 ; $736b: $ea $2c $c8
    ret                                           ; $736e: $c9


    adc a                                         ; $736f: $8f
    ld [hl], e                                    ; $7370: $73
    sub b                                         ; $7371: $90
    ld [hl], e                                    ; $7372: $73
    nop                                           ; $7373: $00

jr_033_7374:
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
    nop                                           ; $7380: $00

jr_033_7381:
    nop                                           ; $7381: $00
    nop                                           ; $7382: $00
    nop                                           ; $7383: $00
    nop                                           ; $7384: $00
    nop                                           ; $7385: $00
    nop                                           ; $7386: $00
    nop                                           ; $7387: $00
    nop                                           ; $7388: $00
    nop                                           ; $7389: $00
    nop                                           ; $738a: $00
    nop                                           ; $738b: $00
    nop                                           ; $738c: $00
    nop                                           ; $738d: $00
    nop                                           ; $738e: $00
    ret                                           ; $738f: $c9


    ld a, $00                                     ; $7390: $3e $00
    ld [$c3e0], a                                 ; $7392: $ea $e0 $c3
    rst $18                                       ; $7395: $df
    ld a, [hl+]                                   ; $7396: $2a
    db $10                                        ; $7397: $10
    ld hl, $003c                                  ; $7398: $21 $3c $00
    call Call_033_7c72                            ; $739b: $cd $72 $7c
    or a                                          ; $739e: $b7
    jr nz, jr_033_73b2                            ; $739f: $20 $11

    ld a, $01                                     ; $73a1: $3e $01
    ld [$c3e0], a                                 ; $73a3: $ea $e0 $c3
    rst $28                                       ; $73a6: $ef
    ld h, b                                       ; $73a7: $60
    inc c                                         ; $73a8: $0c
    ld a, [$c8aa]                                 ; $73a9: $fa $aa $c8
    or a                                          ; $73ac: $b7
    jr z, jr_033_73b2                             ; $73ad: $28 $03

    rst $20                                       ; $73af: $e7
    ld h, b                                       ; $73b0: $60
    inc c                                         ; $73b1: $0c

jr_033_73b2:
    ld a, $80                                     ; $73b2: $3e $80
    rst $18                                       ; $73b4: $df
    ld l, $10                                     ; $73b5: $2e $10
    rst $18                                       ; $73b7: $df
    inc l                                         ; $73b8: $2c
    db $10                                        ; $73b9: $10
    ret                                           ; $73ba: $c9


Call_033_73bb:
    rst $30                                       ; $73bb: $f7
    ret nz                                        ; $73bc: $c0

    jr jr_033_7381                                ; $73bd: $18 $c2

    ld d, c                                       ; $73bf: $51
    ld [hl], h                                    ; $73c0: $74
    ld a, [$c967]                                 ; $73c1: $fa $67 $c9
    cp $0a                                        ; $73c4: $fe $0a
    jp nz, Jump_033_7451                          ; $73c6: $c2 $51 $74

    ld a, $02                                     ; $73c9: $3e $02
    ld b, a                                       ; $73cb: $47
    ld a, $00                                     ; $73cc: $3e $00
    rst $18                                       ; $73ce: $df
    ld l, $0a                                     ; $73cf: $2e $0a
    ld c, $04                                     ; $73d1: $0e $04
    call Call_000_25af                            ; $73d3: $cd $af $25
    call Call_000_2625                            ; $73d6: $cd $25 $26
    ld a, [$c4bc]                                 ; $73d9: $fa $bc $c4
    cp $01                                        ; $73dc: $fe $01
    jp nz, Jump_033_7473                          ; $73de: $c2 $73 $74

    ld a, [$c3e0]                                 ; $73e1: $fa $e0 $c3
    cp $01                                        ; $73e4: $fe $01
    jr nz, jr_033_7452                            ; $73e6: $20 $6a

    ld hl, $14cd                                  ; $73e8: $21 $cd $14
    rst $18                                       ; $73eb: $df
    ld c, $0a                                     ; $73ec: $0e $0a
    ld a, $02                                     ; $73ee: $3e $02
    ld de, $ff80                                  ; $73f0: $11 $80 $ff
    rst $18                                       ; $73f3: $df
    ld b, b                                       ; $73f4: $40
    ld a, [bc]                                    ; $73f5: $0a
    ld a, $02                                     ; $73f6: $3e $02
    rst $18                                       ; $73f8: $df
    ld b, d                                       ; $73f9: $42
    ld a, [bc]                                    ; $73fa: $0a
    ld a, $02                                     ; $73fb: $3e $02
    rst $18                                       ; $73fd: $df
    ld [$3e0a], sp                                ; $73fe: $08 $0a $3e
    ld [bc], a                                    ; $7401: $02
    ld b, a                                       ; $7402: $47
    ld a, $05                                     ; $7403: $3e $05
    rst $18                                       ; $7405: $df
    ld [hl-], a                                   ; $7406: $32
    ld a, [bc]                                    ; $7407: $0a
    ld a, $02                                     ; $7408: $3e $02
    rst $18                                       ; $740a: $df
    inc [hl]                                      ; $740b: $34
    ld a, [bc]                                    ; $740c: $0a
    ld a, $02                                     ; $740d: $3e $02
    rst $18                                       ; $740f: $df
    ld [$110a], sp                                ; $7410: $08 $0a $11
    jr z, jr_033_7415                             ; $7413: $28 $00

jr_033_7415:
    rst $30                                       ; $7415: $f7
    ld h, b                                       ; $7416: $60
    inc c                                         ; $7417: $0c
    jr z, jr_033_7427                             ; $7418: $28 $0d

    ld h, d                                       ; $741a: $62
    ld l, e                                       ; $741b: $6b
    sra h                                         ; $741c: $cb $2c
    rr l                                          ; $741e: $cb $1d
    sra h                                         ; $7420: $cb $2c
    rr l                                          ; $7422: $cb $1d
    add hl, de                                    ; $7424: $19
    ld d, h                                       ; $7425: $54
    ld e, l                                       ; $7426: $5d

jr_033_7427:
    push de                                       ; $7427: $d5
    rst $18                                       ; $7428: $df
    ld [hl+], a                                   ; $7429: $22
    ld [bc], a                                    ; $742a: $02
    pop hl                                        ; $742b: $e1
    rst $18                                       ; $742c: $df
    ld d, [hl]                                    ; $742d: $56
    dec b                                         ; $742e: $05
    rst $08                                       ; $742f: $cf
    jr c, @+$23                                   ; $7430: $38 $21

    dec de                                        ; $7432: $1b
    ld bc, $0edf                                  ; $7433: $01 $df $0e
    ld a, [bc]                                    ; $7436: $0a
    ld a, $80                                     ; $7437: $3e $80
    rst $18                                       ; $7439: $df
    ld [$cd0a], sp                                ; $743a: $08 $0a $cd
    rra                                           ; $743d: $1f
    inc l                                         ; $743e: $2c
    call Call_033_7cb7                            ; $743f: $cd $b7 $7c
    ld b, $00                                     ; $7442: $06 $00
    ld c, $fa                                     ; $7444: $0e $fa
    rst $18                                       ; $7446: $df
    ld c, [hl]                                    ; $7447: $4e
    ld a, [bc]                                    ; $7448: $0a
    rst $18                                       ; $7449: $df
    inc [hl]                                      ; $744a: $34
    ld [bc], a                                    ; $744b: $02
    ld a, $0f                                     ; $744c: $3e $0f
    ld [$c441], a                                 ; $744e: $ea $41 $c4

Jump_033_7451:
    ret                                           ; $7451: $c9


jr_033_7452:
    ld hl, $14cc                                  ; $7452: $21 $cc $14
    rst $18                                       ; $7455: $df
    ld c, $0a                                     ; $7456: $0e $0a
    ld a, $02                                     ; $7458: $3e $02
    ld b, a                                       ; $745a: $47
    ld a, $06                                     ; $745b: $3e $06
    rst $18                                       ; $745d: $df
    ld [hl-], a                                   ; $745e: $32
    ld a, [bc]                                    ; $745f: $0a
    ld a, $02                                     ; $7460: $3e $02
    rst $18                                       ; $7462: $df
    inc [hl]                                      ; $7463: $34
    ld a, [bc]                                    ; $7464: $0a
    ld a, $02                                     ; $7465: $3e $02
    rst $18                                       ; $7467: $df
    ld [$3e0a], sp                                ; $7468: $08 $0a $3e
    ld [bc], a                                    ; $746b: $02
    ld b, a                                       ; $746c: $47
    ld a, $06                                     ; $746d: $3e $06
    rst $18                                       ; $746f: $df
    ld [hl-], a                                   ; $7470: $32
    ld a, [bc]                                    ; $7471: $0a
    ret                                           ; $7472: $c9


Jump_033_7473:
    rst $30                                       ; $7473: $f7
    ldh [rNR23], a                                ; $7474: $e0 $18
    jr z, jr_033_747a                             ; $7476: $28 $02

    jr jr_033_74c8                                ; $7478: $18 $4e

jr_033_747a:
    ld hl, $14c7                                  ; $747a: $21 $c7 $14
    rst $18                                       ; $747d: $df
    ld c, $0a                                     ; $747e: $0e $0a
    ld a, $80                                     ; $7480: $3e $80
    rst $18                                       ; $7482: $df
    ld [$010a], sp                                ; $7483: $08 $0a $01
    ld c, b                                       ; $7486: $48
    nop                                           ; $7487: $00
    rst $18                                       ; $7488: $df
    ld [hl], $0a                                  ; $7489: $36 $0a
    ld a, $02                                     ; $748b: $3e $02
    ld b, $00                                     ; $748d: $06 $00
    rst $18                                       ; $748f: $df
    ld a, [hl-]                                   ; $7490: $3a
    ld a, [bc]                                    ; $7491: $0a
    rst $18                                       ; $7492: $df
    inc a                                         ; $7493: $3c
    ld a, [bc]                                    ; $7494: $0a
    ld a, $02                                     ; $7495: $3e $02
    ld b, a                                       ; $7497: $47
    ld a, $06                                     ; $7498: $3e $06
    rst $18                                       ; $749a: $df
    ld [hl-], a                                   ; $749b: $32
    ld a, [bc]                                    ; $749c: $0a
    ld a, $02                                     ; $749d: $3e $02
    rst $18                                       ; $749f: $df
    inc [hl]                                      ; $74a0: $34
    ld a, [bc]                                    ; $74a1: $0a
    ld a, $02                                     ; $74a2: $3e $02
    rst $18                                       ; $74a4: $df
    ld [$e70a], sp                                ; $74a5: $08 $0a $e7
    ldh [rNR23], a                                ; $74a8: $e0 $18
    ld a, $02                                     ; $74aa: $3e $02
    ld b, $01                                     ; $74ac: $06 $01
    rst $18                                       ; $74ae: $df
    ld a, [hl+]                                   ; $74af: $2a
    ld a, [bc]                                    ; $74b0: $0a
    ld a, $02                                     ; $74b1: $3e $02
    ld b, $c0                                     ; $74b3: $06 $c0
    ld de, $0300                                  ; $74b5: $11 $00 $03
    rst $18                                       ; $74b8: $df
    jr z, jr_033_74c5                             ; $74b9: $28 $0a

    ld a, $02                                     ; $74bb: $3e $02
    rst $18                                       ; $74bd: $df
    ld e, $0a                                     ; $74be: $1e $0a
    ld a, $02                                     ; $74c0: $3e $02
    ld b, $00                                     ; $74c2: $06 $00
    rst $18                                       ; $74c4: $df

jr_033_74c5:
    ld a, [hl+]                                   ; $74c5: $2a
    ld a, [bc]                                    ; $74c6: $0a
    ret                                           ; $74c7: $c9


jr_033_74c8:
    ld hl, $14ca                                  ; $74c8: $21 $ca $14
    rst $18                                       ; $74cb: $df
    ld c, $0a                                     ; $74cc: $0e $0a
    ld a, $80                                     ; $74ce: $3e $80
    rst $18                                       ; $74d0: $df
    ld [$010a], sp                                ; $74d1: $08 $0a $01
    ld c, b                                       ; $74d4: $48
    nop                                           ; $74d5: $00
    rst $18                                       ; $74d6: $df
    ld [hl], $0a                                  ; $74d7: $36 $0a
    ld a, $02                                     ; $74d9: $3e $02
    ld b, $00                                     ; $74db: $06 $00
    rst $18                                       ; $74dd: $df
    ld a, [hl-]                                   ; $74de: $3a
    ld a, [bc]                                    ; $74df: $0a
    rst $18                                       ; $74e0: $df
    inc a                                         ; $74e1: $3c
    ld a, [bc]                                    ; $74e2: $0a
    ld a, $02                                     ; $74e3: $3e $02
    ld b, a                                       ; $74e5: $47
    ld a, $06                                     ; $74e6: $3e $06
    rst $18                                       ; $74e8: $df
    ld [hl-], a                                   ; $74e9: $32
    ld a, [bc]                                    ; $74ea: $0a
    ld a, $02                                     ; $74eb: $3e $02
    rst $18                                       ; $74ed: $df
    inc [hl]                                      ; $74ee: $34
    ld a, [bc]                                    ; $74ef: $0a
    push af                                       ; $74f0: $f5
    ld a, $3c                                     ; $74f1: $3e $3c
    rst $18                                       ; $74f3: $df
    inc b                                         ; $74f4: $04
    ld a, [bc]                                    ; $74f5: $0a
    pop af                                        ; $74f6: $f1
    ld a, $02                                     ; $74f7: $3e $02
    ld de, $ff80                                  ; $74f9: $11 $80 $ff
    rst $18                                       ; $74fc: $df
    ld b, b                                       ; $74fd: $40
    ld a, [bc]                                    ; $74fe: $0a
    ld a, $02                                     ; $74ff: $3e $02
    rst $18                                       ; $7501: $df
    ld b, d                                       ; $7502: $42
    ld a, [bc]                                    ; $7503: $0a
    ld a, $02                                     ; $7504: $3e $02
    rst $18                                       ; $7506: $df
    ld [$3e0a], sp                                ; $7507: $08 $0a $3e
    nop                                           ; $750a: $00
    ld b, $00                                     ; $750b: $06 $00
    rst $18                                       ; $750d: $df
    ld a, [hl-]                                   ; $750e: $3a
    ld a, [bc]                                    ; $750f: $0a
    rst $18                                       ; $7510: $df
    inc a                                         ; $7511: $3c
    ld a, [bc]                                    ; $7512: $0a
    push af                                       ; $7513: $f5
    ld a, $1e                                     ; $7514: $3e $1e
    rst $18                                       ; $7516: $df
    inc b                                         ; $7517: $04
    ld a, [bc]                                    ; $7518: $0a
    pop af                                        ; $7519: $f1
    ret                                           ; $751a: $c9


Call_033_751b:
    call Call_000_0a61                            ; $751b: $cd $61 $0a
    ld a, l                                       ; $751e: $7d
    and $03                                       ; $751f: $e6 $03
    and a                                         ; $7521: $a7
    jr nz, jr_033_7526                            ; $7522: $20 $02

    ld a, $03                                     ; $7524: $3e $03

jr_033_7526:
    rst $30                                       ; $7526: $f7
    and b                                         ; $7527: $a0
    ld a, [de]                                    ; $7528: $1a
    jr nz, jr_033_753f                            ; $7529: $20 $14

    ld hl, $c006                                  ; $752b: $21 $06 $c0
    add l                                         ; $752e: $85
    ld l, a                                       ; $752f: $6f
    jr nc, jr_033_7533                            ; $7530: $30 $01

    inc h                                         ; $7532: $24

jr_033_7533:
    ld e, l                                       ; $7533: $5d
    ld d, h                                       ; $7534: $54
    rst $18                                       ; $7535: $df
    ld [hl+], a                                   ; $7536: $22
    db $10                                        ; $7537: $10
    ld hl, $0007                                  ; $7538: $21 $07 $00
    rst $18                                       ; $753b: $df
    db $10                                        ; $753c: $10
    db $10                                        ; $753d: $10
    ret                                           ; $753e: $c9


jr_033_753f:
    ld hl, $e006                                  ; $753f: $21 $06 $e0
    add l                                         ; $7542: $85
    ld l, a                                       ; $7543: $6f
    jr nc, jr_033_7547                            ; $7544: $30 $01

    inc h                                         ; $7546: $24

jr_033_7547:
    rst $30                                       ; $7547: $f7
    nop                                           ; $7548: $00
    add hl, bc                                    ; $7549: $09
    jr z, jr_033_754f                             ; $754a: $28 $03

    ld hl, $0000                                  ; $754c: $21 $00 $00

jr_033_754f:
    ld e, l                                       ; $754f: $5d
    ld d, h                                       ; $7550: $54
    rst $18                                       ; $7551: $df
    ld [hl+], a                                   ; $7552: $22
    db $10                                        ; $7553: $10
    ld hl, $080b                                  ; $7554: $21 $0b $08
    rst $18                                       ; $7557: $df
    db $10                                        ; $7558: $10
    db $10                                        ; $7559: $10
    ret                                           ; $755a: $c9


Call_033_755b:
    rst $30                                       ; $755b: $f7
    and b                                         ; $755c: $a0
    ld a, [de]                                    ; $755d: $1a
    jp z, Jump_033_75f0                           ; $755e: $ca $f0 $75

    rst $30                                       ; $7561: $f7
    jr nz, @+$1b                                  ; $7562: $20 $19

    jp nz, Jump_033_75f0                          ; $7564: $c2 $f0 $75

    ld a, [$c967]                                 ; $7567: $fa $67 $c9
    cp $0a                                        ; $756a: $fe $0a
    jp nz, Jump_033_75f0                          ; $756c: $c2 $f0 $75

    ld a, $02                                     ; $756f: $3e $02
    ld b, a                                       ; $7571: $47
    ld a, $00                                     ; $7572: $3e $00
    rst $18                                       ; $7574: $df
    ld l, $0a                                     ; $7575: $2e $0a
    ld c, $04                                     ; $7577: $0e $04
    call Call_000_25af                            ; $7579: $cd $af $25
    call Call_000_2625                            ; $757c: $cd $25 $26
    ld a, [$c4bc]                                 ; $757f: $fa $bc $c4
    cp $01                                        ; $7582: $fe $01
    jp nz, Jump_033_7612                          ; $7584: $c2 $12 $76

    ld a, [$c3e0]                                 ; $7587: $fa $e0 $c3
    cp $01                                        ; $758a: $fe $01
    jr nz, jr_033_75f1                            ; $758c: $20 $63

    ld hl, $14d9                                  ; $758e: $21 $d9 $14
    rst $18                                       ; $7591: $df
    ld c, $0a                                     ; $7592: $0e $0a
    ld a, $02                                     ; $7594: $3e $02
    ld de, $ff80                                  ; $7596: $11 $80 $ff
    rst $18                                       ; $7599: $df
    ld b, b                                       ; $759a: $40
    ld a, [bc]                                    ; $759b: $0a
    ld a, $02                                     ; $759c: $3e $02
    rst $18                                       ; $759e: $df
    ld b, d                                       ; $759f: $42
    ld a, [bc]                                    ; $75a0: $0a
    ld a, $02                                     ; $75a1: $3e $02
    rst $18                                       ; $75a3: $df
    ld [$3e0a], sp                                ; $75a4: $08 $0a $3e
    ld [bc], a                                    ; $75a7: $02
    ld b, a                                       ; $75a8: $47
    ld a, $05                                     ; $75a9: $3e $05
    rst $18                                       ; $75ab: $df
    ld [hl-], a                                   ; $75ac: $32
    ld a, [bc]                                    ; $75ad: $0a
    ld a, $02                                     ; $75ae: $3e $02
    rst $18                                       ; $75b0: $df
    inc [hl]                                      ; $75b1: $34
    ld a, [bc]                                    ; $75b2: $0a
    ld de, $00b4                                  ; $75b3: $11 $b4 $00
    rst $30                                       ; $75b6: $f7
    ld h, b                                       ; $75b7: $60
    inc c                                         ; $75b8: $0c
    jr z, jr_033_75c8                             ; $75b9: $28 $0d

    ld h, d                                       ; $75bb: $62
    ld l, e                                       ; $75bc: $6b
    sra h                                         ; $75bd: $cb $2c
    rr l                                          ; $75bf: $cb $1d
    sra h                                         ; $75c1: $cb $2c
    rr l                                          ; $75c3: $cb $1d
    add hl, de                                    ; $75c5: $19
    ld d, h                                       ; $75c6: $54
    ld e, l                                       ; $75c7: $5d

jr_033_75c8:
    rst $20                                       ; $75c8: $e7
    jr nz, @+$1b                                  ; $75c9: $20 $19

    push de                                       ; $75cb: $d5
    rst $18                                       ; $75cc: $df
    ld [hl+], a                                   ; $75cd: $22
    ld [bc], a                                    ; $75ce: $02
    pop hl                                        ; $75cf: $e1
    rst $18                                       ; $75d0: $df
    ld d, [hl]                                    ; $75d1: $56
    dec b                                         ; $75d2: $05
    ld hl, $011b                                  ; $75d3: $21 $1b $01
    rst $18                                       ; $75d6: $df
    ld c, $0a                                     ; $75d7: $0e $0a
    ld a, $80                                     ; $75d9: $3e $80
    rst $18                                       ; $75db: $df
    ld [$cd0a], sp                                ; $75dc: $08 $0a $cd
    or a                                          ; $75df: $b7
    ld a, h                                       ; $75e0: $7c
    ld b, $00                                     ; $75e1: $06 $00
    ld c, $fa                                     ; $75e3: $0e $fa
    rst $18                                       ; $75e5: $df
    ld c, [hl]                                    ; $75e6: $4e
    ld a, [bc]                                    ; $75e7: $0a
    rst $18                                       ; $75e8: $df
    inc [hl]                                      ; $75e9: $34
    ld [bc], a                                    ; $75ea: $02
    ld a, $0e                                     ; $75eb: $3e $0e
    ld [$c441], a                                 ; $75ed: $ea $41 $c4

Jump_033_75f0:
    ret                                           ; $75f0: $c9


jr_033_75f1:
    ld hl, $14d8                                  ; $75f1: $21 $d8 $14
    rst $18                                       ; $75f4: $df
    ld c, $0a                                     ; $75f5: $0e $0a
    ld a, $02                                     ; $75f7: $3e $02
    ld b, a                                       ; $75f9: $47
    ld a, $06                                     ; $75fa: $3e $06
    rst $18                                       ; $75fc: $df
    ld [hl-], a                                   ; $75fd: $32
    ld a, [bc]                                    ; $75fe: $0a
    ld a, $02                                     ; $75ff: $3e $02
    rst $18                                       ; $7601: $df
    inc [hl]                                      ; $7602: $34
    ld a, [bc]                                    ; $7603: $0a
    ld a, $02                                     ; $7604: $3e $02
    rst $18                                       ; $7606: $df
    ld [$3e0a], sp                                ; $7607: $08 $0a $3e
    ld [bc], a                                    ; $760a: $02
    ld b, a                                       ; $760b: $47
    ld a, $06                                     ; $760c: $3e $06
    rst $18                                       ; $760e: $df
    ld [hl-], a                                   ; $760f: $32
    ld a, [bc]                                    ; $7610: $0a
    ret                                           ; $7611: $c9


Jump_033_7612:
    ld hl, $14d7                                  ; $7612: $21 $d7 $14
    rst $18                                       ; $7615: $df
    ld c, $0a                                     ; $7616: $0e $0a
    ld bc, $0048                                  ; $7618: $01 $48 $00
    rst $18                                       ; $761b: $df
    ld [hl], $0a                                  ; $761c: $36 $0a
    ld a, $02                                     ; $761e: $3e $02
    ld b, $00                                     ; $7620: $06 $00
    rst $18                                       ; $7622: $df
    ld a, [hl-]                                   ; $7623: $3a
    ld a, [bc]                                    ; $7624: $0a
    rst $18                                       ; $7625: $df
    inc a                                         ; $7626: $3c
    ld a, [bc]                                    ; $7627: $0a
    ld a, $02                                     ; $7628: $3e $02
    ld b, a                                       ; $762a: $47
    ld a, $06                                     ; $762b: $3e $06
    rst $18                                       ; $762d: $df
    ld [hl-], a                                   ; $762e: $32
    ld a, [bc]                                    ; $762f: $0a
    ld a, $02                                     ; $7630: $3e $02
    rst $18                                       ; $7632: $df
    inc [hl]                                      ; $7633: $34
    ld a, [bc]                                    ; $7634: $0a
    push af                                       ; $7635: $f5
    ld a, $1e                                     ; $7636: $3e $1e
    rst $18                                       ; $7638: $df
    inc b                                         ; $7639: $04
    ld a, [bc]                                    ; $763a: $0a
    pop af                                        ; $763b: $f1
    ld a, $02                                     ; $763c: $3e $02
    ld de, $ff80                                  ; $763e: $11 $80 $ff
    rst $18                                       ; $7641: $df
    ld b, b                                       ; $7642: $40
    ld a, [bc]                                    ; $7643: $0a
    ld a, $02                                     ; $7644: $3e $02
    rst $18                                       ; $7646: $df
    ld b, d                                       ; $7647: $42
    ld a, [bc]                                    ; $7648: $0a
    ld a, $02                                     ; $7649: $3e $02
    rst $18                                       ; $764b: $df
    ld [$3e0a], sp                                ; $764c: $08 $0a $3e
    nop                                           ; $764f: $00
    ld b, $00                                     ; $7650: $06 $00
    rst $18                                       ; $7652: $df
    ld a, [hl-]                                   ; $7653: $3a
    ld a, [bc]                                    ; $7654: $0a
    rst $18                                       ; $7655: $df
    inc a                                         ; $7656: $3c
    ld a, [bc]                                    ; $7657: $0a
    push af                                       ; $7658: $f5
    ld a, $1e                                     ; $7659: $3e $1e
    rst $18                                       ; $765b: $df
    inc b                                         ; $765c: $04
    ld a, [bc]                                    ; $765d: $0a
    pop af                                        ; $765e: $f1
    ret                                           ; $765f: $c9


Call_033_7660:
    xor a                                         ; $7660: $af
    ld hl, $c4b4                                  ; $7661: $21 $b4 $c4
    ld [hl+], a                                   ; $7664: $22
    ld [hl+], a                                   ; $7665: $22
    rst $30                                       ; $7666: $f7
    nop                                           ; $7667: $00
    inc e                                         ; $7668: $1c
    jr z, jr_033_7673                             ; $7669: $28 $08

    ld hl, $14da                                  ; $766b: $21 $da $14
    rst $18                                       ; $766e: $df
    ld c, $0a                                     ; $766f: $0e $0a
    jr jr_033_7679                                ; $7671: $18 $06

jr_033_7673:
    ld hl, $14de                                  ; $7673: $21 $de $14
    rst $18                                       ; $7676: $df
    ld c, $0a                                     ; $7677: $0e $0a

jr_033_7679:
    ld a, $02                                     ; $7679: $3e $02
    rst $18                                       ; $767b: $df
    ld a, [bc]                                    ; $767c: $0a
    ld a, [bc]                                    ; $767d: $0a
    push af                                       ; $767e: $f5
    ld a, $0a                                     ; $767f: $3e $0a
    rst $18                                       ; $7681: $df
    inc b                                         ; $7682: $04
    ld a, [bc]                                    ; $7683: $0a
    pop af                                        ; $7684: $f1
    push af                                       ; $7685: $f5
    ld a, $05                                     ; $7686: $3e $05
    rst $18                                       ; $7688: $df
    inc b                                         ; $7689: $04
    ld a, [bc]                                    ; $768a: $0a
    pop af                                        ; $768b: $f1
    rst $18                                       ; $768c: $df
    ld [de], a                                    ; $768d: $12
    ld a, [bc]                                    ; $768e: $0a
    rst $18                                       ; $768f: $df
    inc c                                         ; $7690: $0c
    ld a, [bc]                                    ; $7691: $0a
    push af                                       ; $7692: $f5
    ld a, $05                                     ; $7693: $3e $05
    rst $18                                       ; $7695: $df
    inc b                                         ; $7696: $04
    ld a, [bc]                                    ; $7697: $0a
    pop af                                        ; $7698: $f1
    and a                                         ; $7699: $a7
    jr nz, jr_033_76ce                            ; $769a: $20 $32

    rst $18                                       ; $769c: $df
    db $10                                        ; $769d: $10
    ld a, [bc]                                    ; $769e: $0a
    ld a, $02                                     ; $769f: $3e $02
    rst $18                                       ; $76a1: $df
    ld a, [bc]                                    ; $76a2: $0a
    ld a, [bc]                                    ; $76a3: $0a
    push af                                       ; $76a4: $f5
    ld a, $0a                                     ; $76a5: $3e $0a
    rst $18                                       ; $76a7: $df
    inc b                                         ; $76a8: $04
    ld a, [bc]                                    ; $76a9: $0a
    pop af                                        ; $76aa: $f1
    push af                                       ; $76ab: $f5
    ld a, $05                                     ; $76ac: $3e $05
    rst $18                                       ; $76ae: $df
    inc b                                         ; $76af: $04
    ld a, [bc]                                    ; $76b0: $0a
    pop af                                        ; $76b1: $f1
    rst $18                                       ; $76b2: $df
    ld [de], a                                    ; $76b3: $12
    ld a, [bc]                                    ; $76b4: $0a
    rst $18                                       ; $76b5: $df
    inc c                                         ; $76b6: $0c
    ld a, [bc]                                    ; $76b7: $0a
    push af                                       ; $76b8: $f5
    ld a, $05                                     ; $76b9: $3e $05
    rst $18                                       ; $76bb: $df
    inc b                                         ; $76bc: $04
    ld a, [bc]                                    ; $76bd: $0a
    pop af                                        ; $76be: $f1
    and a                                         ; $76bf: $a7
    jr z, @+$15                                   ; $76c0: $28 $13

jr_033_76c2:
    ld hl, $14e7                                  ; $76c2: $21 $e7 $14
    rst $18                                       ; $76c5: $df
    ld c, $0a                                     ; $76c6: $0e $0a
    ld a, $02                                     ; $76c8: $3e $02
    rst $18                                       ; $76ca: $df
    ld [$c90a], sp                                ; $76cb: $08 $0a $c9

jr_033_76ce:
    ld a, $02                                     ; $76ce: $3e $02
    rst $18                                       ; $76d0: $df
    ld [$180a], sp                                ; $76d1: $08 $0a $18
    jp z, $dd21                                   ; $76d4: $ca $21 $dd

    inc d                                         ; $76d7: $14
    rst $18                                       ; $76d8: $df
    ld c, $0a                                     ; $76d9: $0e $0a
    ld a, $02                                     ; $76db: $3e $02
    rst $18                                       ; $76dd: $df
    ld a, [bc]                                    ; $76de: $0a
    ld a, [bc]                                    ; $76df: $0a
    push af                                       ; $76e0: $f5
    ld a, $0a                                     ; $76e1: $3e $0a
    rst $18                                       ; $76e3: $df
    inc b                                         ; $76e4: $04
    ld a, [bc]                                    ; $76e5: $0a
    pop af                                        ; $76e6: $f1
    push af                                       ; $76e7: $f5
    ld a, $05                                     ; $76e8: $3e $05
    rst $18                                       ; $76ea: $df
    inc b                                         ; $76eb: $04
    ld a, [bc]                                    ; $76ec: $0a
    pop af                                        ; $76ed: $f1
    rst $18                                       ; $76ee: $df
    ld [de], a                                    ; $76ef: $12
    ld a, [bc]                                    ; $76f0: $0a
    rst $18                                       ; $76f1: $df
    inc c                                         ; $76f2: $0c
    ld a, [bc]                                    ; $76f3: $0a
    push af                                       ; $76f4: $f5
    ld a, $05                                     ; $76f5: $3e $05
    rst $18                                       ; $76f7: $df
    inc b                                         ; $76f8: $04
    ld a, [bc]                                    ; $76f9: $0a
    pop af                                        ; $76fa: $f1
    and a                                         ; $76fb: $a7
    jr nz, jr_033_76c2                            ; $76fc: $20 $c4

    call Call_033_779f                            ; $76fe: $cd $9f $77
    rst $30                                       ; $7701: $f7
    nop                                           ; $7702: $00
    inc e                                         ; $7703: $1c
    jr z, jr_033_770e                             ; $7704: $28 $08

    ld hl, $14e4                                  ; $7706: $21 $e4 $14
    rst $18                                       ; $7709: $df
    ld c, $0a                                     ; $770a: $0e $0a
    jr jr_033_7714                                ; $770c: $18 $06

jr_033_770e:
    ld hl, $14e6                                  ; $770e: $21 $e6 $14
    rst $18                                       ; $7711: $df
    ld c, $0a                                     ; $7712: $0e $0a

jr_033_7714:
    ld a, $02                                     ; $7714: $3e $02
    rst $18                                       ; $7716: $df
    ld [$c90a], sp                                ; $7717: $08 $0a $c9

Call_033_771a:
    rst $30                                       ; $771a: $f7
    ret nz                                        ; $771b: $c0

    ld a, [de]                                    ; $771c: $1a
    jr z, jr_033_772b                             ; $771d: $28 $0c

    ld hl, $14e8                                  ; $771f: $21 $e8 $14
    rst $18                                       ; $7722: $df
    ld c, $0a                                     ; $7723: $0e $0a
    ld a, $02                                     ; $7725: $3e $02
    rst $18                                       ; $7727: $df
    ld [$c90a], sp                                ; $7728: $08 $0a $c9

jr_033_772b:
    ld hl, $14e2                                  ; $772b: $21 $e2 $14
    rst $18                                       ; $772e: $df
    ld c, $0a                                     ; $772f: $0e $0a
    ld a, $02                                     ; $7731: $3e $02
    rst $18                                       ; $7733: $df
    ld a, [bc]                                    ; $7734: $0a
    ld a, [bc]                                    ; $7735: $0a
    push af                                       ; $7736: $f5
    ld a, $0a                                     ; $7737: $3e $0a
    rst $18                                       ; $7739: $df
    inc b                                         ; $773a: $04
    ld a, [bc]                                    ; $773b: $0a
    pop af                                        ; $773c: $f1
    push af                                       ; $773d: $f5
    ld a, $05                                     ; $773e: $3e $05
    rst $18                                       ; $7740: $df
    inc b                                         ; $7741: $04
    ld a, [bc]                                    ; $7742: $0a
    pop af                                        ; $7743: $f1
    rst $18                                       ; $7744: $df
    ld [de], a                                    ; $7745: $12
    ld a, [bc]                                    ; $7746: $0a
    rst $18                                       ; $7747: $df
    inc c                                         ; $7748: $0c
    ld a, [bc]                                    ; $7749: $0a
    push af                                       ; $774a: $f5
    ld a, $05                                     ; $774b: $3e $05
    rst $18                                       ; $774d: $df
    inc b                                         ; $774e: $04
    ld a, [bc]                                    ; $774f: $0a
    pop af                                        ; $7750: $f1
    and a                                         ; $7751: $a7
    jr z, jr_033_7760                             ; $7752: $28 $0c

jr_033_7754:
    ld hl, $14e7                                  ; $7754: $21 $e7 $14
    rst $18                                       ; $7757: $df
    ld c, $0a                                     ; $7758: $0e $0a
    ld a, $02                                     ; $775a: $3e $02
    rst $18                                       ; $775c: $df
    ld [$c90a], sp                                ; $775d: $08 $0a $c9

jr_033_7760:
    rst $30                                       ; $7760: $f7
    nop                                           ; $7761: $00
    inc e                                         ; $7762: $1c
    jr z, jr_033_776d                             ; $7763: $28 $08

    ld hl, $14e3                                  ; $7765: $21 $e3 $14
    rst $18                                       ; $7768: $df
    ld c, $0a                                     ; $7769: $0e $0a
    jr jr_033_7773                                ; $776b: $18 $06

jr_033_776d:
    ld hl, $14e5                                  ; $776d: $21 $e5 $14
    rst $18                                       ; $7770: $df
    ld c, $0a                                     ; $7771: $0e $0a

jr_033_7773:
    ld a, $02                                     ; $7773: $3e $02
    rst $18                                       ; $7775: $df
    ld a, [bc]                                    ; $7776: $0a
    ld a, [bc]                                    ; $7777: $0a
    push af                                       ; $7778: $f5
    ld a, $0a                                     ; $7779: $3e $0a
    rst $18                                       ; $777b: $df
    inc b                                         ; $777c: $04
    ld a, [bc]                                    ; $777d: $0a
    pop af                                        ; $777e: $f1
    push af                                       ; $777f: $f5
    ld a, $05                                     ; $7780: $3e $05
    rst $18                                       ; $7782: $df
    inc b                                         ; $7783: $04
    ld a, [bc]                                    ; $7784: $0a
    pop af                                        ; $7785: $f1
    rst $18                                       ; $7786: $df
    ld [de], a                                    ; $7787: $12
    ld a, [bc]                                    ; $7788: $0a
    rst $18                                       ; $7789: $df
    inc c                                         ; $778a: $0c
    ld a, [bc]                                    ; $778b: $0a
    push af                                       ; $778c: $f5
    ld a, $05                                     ; $778d: $3e $05
    rst $18                                       ; $778f: $df
    inc b                                         ; $7790: $04
    ld a, [bc]                                    ; $7791: $0a
    pop af                                        ; $7792: $f1
    and a                                         ; $7793: $a7
    jr nz, jr_033_7754                            ; $7794: $20 $be

    call Call_033_779f                            ; $7796: $cd $9f $77
    ld a, $02                                     ; $7799: $3e $02
    rst $18                                       ; $779b: $df
    ld [$c90a], sp                                ; $779c: $08 $0a $c9

Call_033_779f:
    rst $20                                       ; $779f: $e7
    ret nz                                        ; $77a0: $c0

    ld a, [de]                                    ; $77a1: $1a
    rst $18                                       ; $77a2: $df
    ld [hl], b                                    ; $77a3: $70
    ld [bc], a                                    ; $77a4: $02
    xor $01                                       ; $77a5: $ee $01
    rst $18                                       ; $77a7: $df
    ld [hl], d                                    ; $77a8: $72
    ld [bc], a                                    ; $77a9: $02
    ld a, $02                                     ; $77aa: $3e $02
    ld b, a                                       ; $77ac: $47
    ld a, $06                                     ; $77ad: $3e $06
    rst $18                                       ; $77af: $df
    ld [hl-], a                                   ; $77b0: $32
    ld a, [bc]                                    ; $77b1: $0a
    ld c, $20                                     ; $77b2: $0e $20
    call Call_000_25a1                            ; $77b4: $cd $a1 $25
    call Call_000_2625                            ; $77b7: $cd $25 $26
    ld c, $20                                     ; $77ba: $0e $20
    call Call_000_25af                            ; $77bc: $cd $af $25
    call Call_000_2625                            ; $77bf: $cd $25 $26
    ld c, $20                                     ; $77c2: $0e $20
    call Call_000_25a1                            ; $77c4: $cd $a1 $25
    call Call_000_2625                            ; $77c7: $cd $25 $26
    ld c, $20                                     ; $77ca: $0e $20
    call Call_000_25af                            ; $77cc: $cd $af $25
    call Call_000_2625                            ; $77cf: $cd $25 $26
    ld c, $20                                     ; $77d2: $0e $20
    call Call_000_25a1                            ; $77d4: $cd $a1 $25
    call Call_000_2625                            ; $77d7: $cd $25 $26
    ld c, $20                                     ; $77da: $0e $20
    call Call_000_25af                            ; $77dc: $cd $af $25
    call Call_000_2625                            ; $77df: $cd $25 $26
    ld c, $20                                     ; $77e2: $0e $20
    call Call_000_25a1                            ; $77e4: $cd $a1 $25
    call Call_000_2625                            ; $77e7: $cd $25 $26
    ld c, $20                                     ; $77ea: $0e $20
    call Call_000_25af                            ; $77ec: $cd $af $25
    call Call_000_2625                            ; $77ef: $cd $25 $26
    ld c, $20                                     ; $77f2: $0e $20
    call Call_000_25a1                            ; $77f4: $cd $a1 $25
    call Call_000_2625                            ; $77f7: $cd $25 $26
    ld c, $20                                     ; $77fa: $0e $20
    call Call_000_25af                            ; $77fc: $cd $af $25
    call Call_000_2625                            ; $77ff: $cd $25 $26
    ld c, $20                                     ; $7802: $0e $20
    call Call_000_25a1                            ; $7804: $cd $a1 $25
    call Call_000_2625                            ; $7807: $cd $25 $26
    ld c, $20                                     ; $780a: $0e $20
    call Call_000_25af                            ; $780c: $cd $af $25
    call Call_000_2625                            ; $780f: $cd $25 $26
    ret                                           ; $7812: $c9


Call_033_7813:
    rst $18                                       ; $7813: $df
    ld [hl], b                                    ; $7814: $70
    ld [bc], a                                    ; $7815: $02
    cp $01                                        ; $7816: $fe $01
    jr nz, jr_033_781d                            ; $7818: $20 $03

    rst $20                                       ; $781a: $e7
    nop                                           ; $781b: $00
    inc e                                         ; $781c: $1c

jr_033_781d:
    ret                                           ; $781d: $c9


    ld e, h                                       ; $781e: $5c
    ld a, b                                       ; $781f: $78
    ld l, c                                       ; $7820: $69
    ld a, b                                       ; $7821: $78
    inc l                                         ; $7822: $2c
    ld a, b                                       ; $7823: $78
    ld bc, $1379                                  ; $7824: $01 $79 $13
    ld a, c                                       ; $7827: $79
    ld c, e                                       ; $7828: $4b
    ld a, c                                       ; $7829: $79
    ld e, h                                       ; $782a: $5c
    ld a, c                                       ; $782b: $79
    db $dd                                        ; $782c: $dd
    ld a, e                                       ; $782d: $7b
    nop                                           ; $782e: $00
    dec bc                                        ; $782f: $0b
    nop                                           ; $7830: $00
    add hl, bc                                    ; $7831: $09
    nop                                           ; $7832: $00
    nop                                           ; $7833: $00
    nop                                           ; $7834: $00
    add b                                         ; $7835: $80
    ld bc, $590e                                  ; $7836: $01 $0e $59
    ld a, b                                       ; $7839: $78
    nop                                           ; $783a: $00
    dec h                                         ; $783b: $25
    nop                                           ; $783c: $00
    dec bc                                        ; $783d: $0b
    nop                                           ; $783e: $00
    nop                                           ; $783f: $00
    nop                                           ; $7840: $00
    add b                                         ; $7841: $80
    ld bc, $dd2c                                  ; $7842: $01 $2c $dd
    ld a, e                                       ; $7845: $7b
    nop                                           ; $7846: $00
    ld bc, $1f00                                  ; $7847: $01 $00 $1f
    sbc l                                         ; $784a: $9d
    nop                                           ; $784b: $00
    nop                                           ; $784c: $00
    ret nz                                        ; $784d: $c0

    ld bc, $000f                                  ; $784e: $01 $0f $00
    nop                                           ; $7851: $00
    nop                                           ; $7852: $00
    nop                                           ; $7853: $00
    nop                                           ; $7854: $00
    nop                                           ; $7855: $00
    nop                                           ; $7856: $00
    nop                                           ; $7857: $00
    rst $38                                       ; $7858: $ff
    db $10                                        ; $7859: $10
    ld a, [bc]                                    ; $785a: $0a
    nop                                           ; $785b: $00
    ld bc, $00c0                                  ; $785c: $01 $c0 $00
    dec bc                                        ; $785f: $0b
    nop                                           ; $7860: $00
    rrca                                          ; $7861: $0f
    ld [bc], a                                    ; $7862: $02
    ret nz                                        ; $7863: $c0

    nop                                           ; $7864: $00
    dec h                                         ; $7865: $25
    nop                                           ; $7866: $00
    rrca                                          ; $7867: $0f
    rst $38                                       ; $7868: $ff
    ld bc, $00ff                                  ; $7869: $01 $ff $00
    nop                                           ; $786c: $00
    nop                                           ; $786d: $00
    nop                                           ; $786e: $00
    ld [bc], a                                    ; $786f: $02
    dec c                                         ; $7870: $0d
    ld [bc], a                                    ; $7871: $02
    rst $38                                       ; $7872: $ff
    nop                                           ; $7873: $00
    nop                                           ; $7874: $00
    nop                                           ; $7875: $00
    nop                                           ; $7876: $00
    ld h, $02                                     ; $7877: $26 $02
    inc bc                                        ; $7879: $03
    rst $38                                       ; $787a: $ff
    nop                                           ; $787b: $00
    nop                                           ; $787c: $00
    nop                                           ; $787d: $00
    nop                                           ; $787e: $00
    ld h, $03                                     ; $787f: $26 $03
    rst $38                                       ; $7881: $ff
    rst $30                                       ; $7882: $f7
    jr nz, jr_033_78a1                            ; $7883: $20 $1c

    jr nz, jr_033_7899                            ; $7885: $20 $12

    rst $30                                       ; $7887: $f7
    ldh [rNR30], a                                ; $7888: $e0 $1a
    jr nz, jr_033_7890                            ; $788a: $20 $04

    call Call_033_7990                            ; $788c: $cd $90 $79
    ret                                           ; $788f: $c9


jr_033_7890:
    rst $30                                       ; $7890: $f7
    nop                                           ; $7891: $00
    inc e                                         ; $7892: $1c
    jr nz, jr_033_7899                            ; $7893: $20 $04

    call Call_033_7a73                            ; $7895: $cd $73 $7a
    ret                                           ; $7898: $c9


jr_033_7899:
    rst $30                                       ; $7899: $f7
    nop                                           ; $789a: $00
    dec de                                        ; $789b: $1b
    jr nz, jr_033_78aa                            ; $789c: $20 $0c

    ld hl, $181a                                  ; $789e: $21 $1a $18

jr_033_78a1:
    rst $18                                       ; $78a1: $df
    ld c, $0a                                     ; $78a2: $0e $0a
    ld a, $02                                     ; $78a4: $3e $02
    rst $18                                       ; $78a6: $df
    ld [$c90a], sp                                ; $78a7: $08 $0a $c9

jr_033_78aa:
    ld hl, $1814                                  ; $78aa: $21 $14 $18
    rst $18                                       ; $78ad: $df
    ld c, $0a                                     ; $78ae: $0e $0a
    ld a, $02                                     ; $78b0: $3e $02
    rst $18                                       ; $78b2: $df
    ld [$c90a], sp                                ; $78b3: $08 $0a $c9
    rst $30                                       ; $78b6: $f7
    add b                                         ; $78b7: $80
    ld a, [de]                                    ; $78b8: $1a
    jr z, jr_033_78e4                             ; $78b9: $28 $29

    ld hl, $14d4                                  ; $78bb: $21 $d4 $14
    rst $18                                       ; $78be: $df
    ld c, $0a                                     ; $78bf: $0e $0a
    ld a, $03                                     ; $78c1: $3e $03
    ld b, a                                       ; $78c3: $47
    ld a, $05                                     ; $78c4: $3e $05
    rst $18                                       ; $78c6: $df
    ld [hl-], a                                   ; $78c7: $32
    ld a, [bc]                                    ; $78c8: $0a
    ld a, $03                                     ; $78c9: $3e $03
    rst $18                                       ; $78cb: $df
    inc [hl]                                      ; $78cc: $34
    ld a, [bc]                                    ; $78cd: $0a
    ld a, $02                                     ; $78ce: $3e $02
    ld b, a                                       ; $78d0: $47
    ld a, $0a                                     ; $78d1: $3e $0a
    rst $18                                       ; $78d3: $df
    ld [hl-], a                                   ; $78d4: $32
    ld a, [bc]                                    ; $78d5: $0a
    ld a, $03                                     ; $78d6: $3e $03
    rst $18                                       ; $78d8: $df
    ld [$e70a], sp                                ; $78d9: $08 $0a $e7
    and b                                         ; $78dc: $a0
    ld a, [de]                                    ; $78dd: $1a
    ld a, $03                                     ; $78de: $3e $03
    ld [$c441], a                                 ; $78e0: $ea $41 $c4
    ret                                           ; $78e3: $c9


jr_033_78e4:
    ld hl, $14d0                                  ; $78e4: $21 $d0 $14
    rst $18                                       ; $78e7: $df
    ld c, $0a                                     ; $78e8: $0e $0a
    rst $30                                       ; $78ea: $f7
    nop                                           ; $78eb: $00
    add hl, de                                    ; $78ec: $19
    jr z, jr_033_78f8                             ; $78ed: $28 $09

    rst $18                                       ; $78ef: $df
    db $10                                        ; $78f0: $10
    ld a, [bc]                                    ; $78f1: $0a
    ld a, $03                                     ; $78f2: $3e $03
    rst $18                                       ; $78f4: $df
    ld [$c90a], sp                                ; $78f5: $08 $0a $c9

jr_033_78f8:
    rst $20                                       ; $78f8: $e7
    nop                                           ; $78f9: $00
    add hl, de                                    ; $78fa: $19
    ld a, $03                                     ; $78fb: $3e $03
    rst $18                                       ; $78fd: $df
    ld [$c90a], sp                                ; $78fe: $08 $0a $c9
    ld [bc], a                                    ; $7901: $02
    rst $38                                       ; $7902: $ff
    nop                                           ; $7903: $00
    nop                                           ; $7904: $00
    add d                                         ; $7905: $82
    ld a, b                                       ; $7906: $78
    inc bc                                        ; $7907: $03
    nop                                           ; $7908: $00
    inc bc                                        ; $7909: $03
    rst $38                                       ; $790a: $ff
    nop                                           ; $790b: $00
    nop                                           ; $790c: $00
    or [hl]                                       ; $790d: $b6
    ld a, b                                       ; $790e: $78
    inc bc                                        ; $790f: $03
    nop                                           ; $7910: $00
    rst $38                                       ; $7911: $ff
    ret                                           ; $7912: $c9


    ld bc, $9dff                                  ; $7913: $01 $ff $9d
    nop                                           ; $7916: $00
    ld l, e                                       ; $7917: $6b
    ld a, e                                       ; $7918: $7b
    rlca                                          ; $7919: $07
    nop                                           ; $791a: $00
    rst $38                                       ; $791b: $ff
    rst $30                                       ; $791c: $f7
    jr nz, jr_033_793b                            ; $791d: $20 $1c

    jr z, jr_033_793f                             ; $791f: $28 $1e

    rst $30                                       ; $7921: $f7
    nop                                           ; $7922: $00
    dec de                                        ; $7923: $1b
    jr z, jr_033_793f                             ; $7924: $28 $19

    ld a, $02                                     ; $7926: $3e $02
    ld b, $40                                     ; $7928: $06 $40
    rst $18                                       ; $792a: $df
    inc l                                         ; $792b: $2c
    ld a, [bc]                                    ; $792c: $0a
    ld hl, $1815                                  ; $792d: $21 $15 $18
    rst $18                                       ; $7930: $df
    ld c, $0a                                     ; $7931: $0e $0a
    ld a, $02                                     ; $7933: $3e $02
    rst $18                                       ; $7935: $df
    ld [$f50a], sp                                ; $7936: $08 $0a $f5
    ld a, $1e                                     ; $7939: $3e $1e

jr_033_793b:
    rst $18                                       ; $793b: $df
    inc b                                         ; $793c: $04
    ld a, [bc]                                    ; $793d: $0a
    pop af                                        ; $793e: $f1

jr_033_793f:
    ld a, $01                                     ; $793f: $3e $01
    ld [$c441], a                                 ; $7941: $ea $41 $c4
    ret                                           ; $7944: $c9


    ld a, $02                                     ; $7945: $3e $02
    ld [$c441], a                                 ; $7947: $ea $41 $c4
    ret                                           ; $794a: $c9


    ld bc, $00ff                                  ; $794b: $01 $ff $00
    nop                                           ; $794e: $00
    inc e                                         ; $794f: $1c
    ld a, c                                       ; $7950: $79
    nop                                           ; $7951: $00
    nop                                           ; $7952: $00
    ld [bc], a                                    ; $7953: $02
    rst $38                                       ; $7954: $ff
    nop                                           ; $7955: $00
    nop                                           ; $7956: $00
    ld b, l                                       ; $7957: $45
    ld a, c                                       ; $7958: $79
    nop                                           ; $7959: $00
    nop                                           ; $795a: $00
    rst $38                                       ; $795b: $ff
    ld a, [$c46a]                                 ; $795c: $fa $6a $c4
    cp $fa                                        ; $795f: $fe $fa
    jr nz, jr_033_7969                            ; $7961: $20 $06

    xor a                                         ; $7963: $af
    ld hl, $c4b4                                  ; $7964: $21 $b4 $c4
    ld [hl+], a                                   ; $7967: $22
    ld [hl+], a                                   ; $7968: $22

jr_033_7969:
    ld a, [$c450]                                 ; $7969: $fa $50 $c4
    cp $2e                                        ; $796c: $fe $2e
    jp z, Jump_033_7977                           ; $796e: $ca $77 $79

    cp $2f                                        ; $7971: $fe $2f
    jp z, Jump_033_7985                           ; $7973: $ca $85 $79

    ret                                           ; $7976: $c9


Jump_033_7977:
    ld a, $01                                     ; $7977: $3e $01
    ld [$c329], a                                 ; $7979: $ea $29 $c3
    ld a, $15                                     ; $797c: $3e $15
    ld [$c32b], a                                 ; $797e: $ea $2b $c3
    rst $20                                       ; $7981: $e7
    add b                                         ; $7982: $80
    rrca                                          ; $7983: $0f
    ret                                           ; $7984: $c9


Jump_033_7985:
    ld a, $1b                                     ; $7985: $3e $1b
    ld [$c329], a                                 ; $7987: $ea $29 $c3
    ld a, $2f                                     ; $798a: $3e $2f
    ld [$c32b], a                                 ; $798c: $ea $2b $c3
    ret                                           ; $798f: $c9


Call_033_7990:
    ld hl, $180c                                  ; $7990: $21 $0c $18
    rst $18                                       ; $7993: $df
    ld c, $0a                                     ; $7994: $0e $0a
    ld a, $02                                     ; $7996: $3e $02
    rst $18                                       ; $7998: $df
    ld a, [bc]                                    ; $7999: $0a
    ld a, [bc]                                    ; $799a: $0a
    push af                                       ; $799b: $f5
    ld a, $0a                                     ; $799c: $3e $0a
    rst $18                                       ; $799e: $df
    inc b                                         ; $799f: $04
    ld a, [bc]                                    ; $79a0: $0a
    pop af                                        ; $79a1: $f1
    push af                                       ; $79a2: $f5
    ld a, $05                                     ; $79a3: $3e $05
    rst $18                                       ; $79a5: $df
    inc b                                         ; $79a6: $04
    ld a, [bc]                                    ; $79a7: $0a
    pop af                                        ; $79a8: $f1
    rst $18                                       ; $79a9: $df
    ld [de], a                                    ; $79aa: $12
    ld a, [bc]                                    ; $79ab: $0a
    rst $18                                       ; $79ac: $df
    inc c                                         ; $79ad: $0c
    ld a, [bc]                                    ; $79ae: $0a
    push af                                       ; $79af: $f5
    ld a, $05                                     ; $79b0: $3e $05
    rst $18                                       ; $79b2: $df
    inc b                                         ; $79b3: $04
    ld a, [bc]                                    ; $79b4: $0a
    pop af                                        ; $79b5: $f1
    and a                                         ; $79b6: $a7
    jr z, jr_033_79bf                             ; $79b7: $28 $06

    ld a, $02                                     ; $79b9: $3e $02
    rst $18                                       ; $79bb: $df
    ld [$c90a], sp                                ; $79bc: $08 $0a $c9

jr_033_79bf:
    rst $18                                       ; $79bf: $df
    db $10                                        ; $79c0: $10
    ld a, [bc]                                    ; $79c1: $0a
    ld a, $02                                     ; $79c2: $3e $02
    rst $18                                       ; $79c4: $df
    ld a, [bc]                                    ; $79c5: $0a
    ld a, [bc]                                    ; $79c6: $0a
    push af                                       ; $79c7: $f5
    ld a, $0a                                     ; $79c8: $3e $0a
    rst $18                                       ; $79ca: $df
    inc b                                         ; $79cb: $04
    ld a, [bc]                                    ; $79cc: $0a
    pop af                                        ; $79cd: $f1
    push af                                       ; $79ce: $f5
    ld a, $05                                     ; $79cf: $3e $05
    rst $18                                       ; $79d1: $df
    inc b                                         ; $79d2: $04
    ld a, [bc]                                    ; $79d3: $0a
    pop af                                        ; $79d4: $f1
    rst $18                                       ; $79d5: $df
    ld [de], a                                    ; $79d6: $12
    ld a, [bc]                                    ; $79d7: $0a
    rst $18                                       ; $79d8: $df
    inc c                                         ; $79d9: $0c
    ld a, [bc]                                    ; $79da: $0a
    push af                                       ; $79db: $f5
    ld a, $05                                     ; $79dc: $3e $05
    rst $18                                       ; $79de: $df
    inc b                                         ; $79df: $04
    ld a, [bc]                                    ; $79e0: $0a
    pop af                                        ; $79e1: $f1
    and a                                         ; $79e2: $a7
    jr z, jr_033_79f1                             ; $79e3: $28 $0c

jr_033_79e5:
    ld hl, $180f                                  ; $79e5: $21 $0f $18
    rst $18                                       ; $79e8: $df
    ld c, $0a                                     ; $79e9: $0e $0a
    ld a, $02                                     ; $79eb: $3e $02
    rst $18                                       ; $79ed: $df
    ld [$c90a], sp                                ; $79ee: $08 $0a $c9

jr_033_79f1:
    rst $18                                       ; $79f1: $df
    db $10                                        ; $79f2: $10
    ld a, [bc]                                    ; $79f3: $0a
    ld a, $02                                     ; $79f4: $3e $02
    rst $18                                       ; $79f6: $df
    ld [$210a], sp                                ; $79f7: $08 $0a $21
    ld de, $1118                                  ; $79fa: $11 $18 $11
    ld bc, $df01                                  ; $79fd: $01 $01 $df
    ld b, h                                       ; $7a00: $44
    ld a, [bc]                                    ; $7a01: $0a
    cp $ff                                        ; $7a02: $fe $ff
    jr z, jr_033_79e5                             ; $7a04: $28 $df

    ld de, $0000                                  ; $7a06: $11 $00 $00
    cp $00                                        ; $7a09: $fe $00
    jr z, jr_033_7a18                             ; $7a0b: $28 $0b

    ld de, $0001                                  ; $7a0d: $11 $01 $00
    cp $01                                        ; $7a10: $fe $01
    jr z, jr_033_7a18                             ; $7a12: $28 $04

    cp $02                                        ; $7a14: $fe $02
    jr z, jr_033_79e5                             ; $7a16: $28 $cd

jr_033_7a18:
    ld a, e                                       ; $7a18: $7b
    ld [$c3e0], a                                 ; $7a19: $ea $e0 $c3
    cp $01                                        ; $7a1c: $fe $01
    jr nz, jr_033_7a23                            ; $7a1e: $20 $03

    rst $20                                       ; $7a20: $e7
    jr nz, jr_033_7a3e                            ; $7a21: $20 $1b

jr_033_7a23:
    rst $20                                       ; $7a23: $e7
    ldh [rNR30], a                                ; $7a24: $e0 $1a
    rst $20                                       ; $7a26: $e7
    nop                                           ; $7a27: $00
    dec de                                        ; $7a28: $1b
    rst $20                                       ; $7a29: $e7
    jr nz, jr_033_7a48                            ; $7a2a: $20 $1c

    ld a, [$c3e0]                                 ; $7a2c: $fa $e0 $c3
    inc a                                         ; $7a2f: $3c
    rst $18                                       ; $7a30: $df
    ld l, [hl]                                    ; $7a31: $6e
    ld [bc], a                                    ; $7a32: $02
    ld hl, $1812                                  ; $7a33: $21 $12 $18
    ld a, [$c3e0]                                 ; $7a36: $fa $e0 $c3
    add l                                         ; $7a39: $85
    ld l, a                                       ; $7a3a: $6f
    jr nc, jr_033_7a3e                            ; $7a3b: $30 $01

    inc h                                         ; $7a3d: $24

jr_033_7a3e:
    rst $18                                       ; $7a3e: $df
    ld c, $0a                                     ; $7a3f: $0e $0a
    ld a, $00                                     ; $7a41: $3e $00
    ld b, $40                                     ; $7a43: $06 $40
    rst $18                                       ; $7a45: $df
    inc l                                         ; $7a46: $2c
    ld a, [bc]                                    ; $7a47: $0a

jr_033_7a48:
    ld a, $00                                     ; $7a48: $3e $00
    ld b, a                                       ; $7a4a: $47
    ld a, $0a                                     ; $7a4b: $3e $0a
    rst $18                                       ; $7a4d: $df
    ld [hl-], a                                   ; $7a4e: $32
    ld a, [bc]                                    ; $7a4f: $0a
    rst $08                                       ; $7a50: $cf
    sub h                                         ; $7a51: $94
    ld a, $80                                     ; $7a52: $3e $80
    rst $18                                       ; $7a54: $df
    ld [$3e0a], sp                                ; $7a55: $08 $0a $3e
    ld [bc], a                                    ; $7a58: $02
    ld b, a                                       ; $7a59: $47
    ld a, $00                                     ; $7a5a: $3e $00
    rst $18                                       ; $7a5c: $df
    ld l, $0a                                     ; $7a5d: $2e $0a
    ld a, $00                                     ; $7a5f: $3e $00
    ld b, a                                       ; $7a61: $47
    ld a, $01                                     ; $7a62: $3e $01
    rst $18                                       ; $7a64: $df
    ld [hl-], a                                   ; $7a65: $32
    ld a, [bc]                                    ; $7a66: $0a
    ld hl, $1814                                  ; $7a67: $21 $14 $18
    rst $18                                       ; $7a6a: $df
    ld c, $0a                                     ; $7a6b: $0e $0a
    ld a, $02                                     ; $7a6d: $3e $02
    rst $18                                       ; $7a6f: $df
    ld [$c90a], sp                                ; $7a70: $08 $0a $c9

Call_033_7a73:
    ld hl, $1816                                  ; $7a73: $21 $16 $18
    rst $18                                       ; $7a76: $df
    ld c, $0a                                     ; $7a77: $0e $0a
    ld a, $02                                     ; $7a79: $3e $02
    rst $18                                       ; $7a7b: $df
    ld a, [bc]                                    ; $7a7c: $0a
    ld a, [bc]                                    ; $7a7d: $0a
    push af                                       ; $7a7e: $f5
    ld a, $0a                                     ; $7a7f: $3e $0a
    rst $18                                       ; $7a81: $df
    inc b                                         ; $7a82: $04
    ld a, [bc]                                    ; $7a83: $0a
    pop af                                        ; $7a84: $f1
    push af                                       ; $7a85: $f5
    ld a, $05                                     ; $7a86: $3e $05
    rst $18                                       ; $7a88: $df
    inc b                                         ; $7a89: $04
    ld a, [bc]                                    ; $7a8a: $0a
    pop af                                        ; $7a8b: $f1
    rst $18                                       ; $7a8c: $df
    ld [de], a                                    ; $7a8d: $12
    ld a, [bc]                                    ; $7a8e: $0a
    rst $18                                       ; $7a8f: $df
    inc c                                         ; $7a90: $0c
    ld a, [bc]                                    ; $7a91: $0a
    push af                                       ; $7a92: $f5
    ld a, $05                                     ; $7a93: $3e $05
    rst $18                                       ; $7a95: $df
    inc b                                         ; $7a96: $04
    ld a, [bc]                                    ; $7a97: $0a
    pop af                                        ; $7a98: $f1
    and a                                         ; $7a99: $a7
    jr z, jr_033_7aa8                             ; $7a9a: $28 $0c

jr_033_7a9c:
    ld hl, $1817                                  ; $7a9c: $21 $17 $18
    rst $18                                       ; $7a9f: $df
    ld c, $0a                                     ; $7aa0: $0e $0a
    ld a, $02                                     ; $7aa2: $3e $02
    rst $18                                       ; $7aa4: $df
    ld [$c90a], sp                                ; $7aa5: $08 $0a $c9

jr_033_7aa8:
    rst $18                                       ; $7aa8: $df
    db $10                                        ; $7aa9: $10
    ld a, [bc]                                    ; $7aaa: $0a
    ld a, $02                                     ; $7aab: $3e $02
    rst $18                                       ; $7aad: $df
    ld a, [bc]                                    ; $7aae: $0a
    ld a, [bc]                                    ; $7aaf: $0a
    push af                                       ; $7ab0: $f5
    ld a, $0a                                     ; $7ab1: $3e $0a
    rst $18                                       ; $7ab3: $df
    inc b                                         ; $7ab4: $04
    ld a, [bc]                                    ; $7ab5: $0a
    pop af                                        ; $7ab6: $f1
    push af                                       ; $7ab7: $f5
    ld a, $05                                     ; $7ab8: $3e $05
    rst $18                                       ; $7aba: $df
    inc b                                         ; $7abb: $04
    ld a, [bc]                                    ; $7abc: $0a
    pop af                                        ; $7abd: $f1
    rst $18                                       ; $7abe: $df
    ld [de], a                                    ; $7abf: $12
    ld a, [bc]                                    ; $7ac0: $0a
    rst $18                                       ; $7ac1: $df
    inc c                                         ; $7ac2: $0c
    ld a, [bc]                                    ; $7ac3: $0a
    push af                                       ; $7ac4: $f5
    ld a, $05                                     ; $7ac5: $3e $05
    rst $18                                       ; $7ac7: $df
    inc b                                         ; $7ac8: $04
    ld a, [bc]                                    ; $7ac9: $0a
    pop af                                        ; $7aca: $f1
    and a                                         ; $7acb: $a7
    jr nz, jr_033_7a9c                            ; $7acc: $20 $ce

    rst $20                                       ; $7ace: $e7
    jr nz, @+$1e                                  ; $7acf: $20 $1c

    rst $30                                       ; $7ad1: $f7
    nop                                           ; $7ad2: $00
    dec de                                        ; $7ad3: $1b
    jr z, jr_033_7b18                             ; $7ad4: $28 $42

    rst $28                                       ; $7ad6: $ef
    nop                                           ; $7ad7: $00
    dec de                                        ; $7ad8: $1b
    ld a, $00                                     ; $7ad9: $3e $00
    rst $18                                       ; $7adb: $df
    ld l, [hl]                                    ; $7adc: $6e
    ld [bc], a                                    ; $7add: $02
    ld b, $00                                     ; $7ade: $06 $00
    ld c, $fa                                     ; $7ae0: $0e $fa
    rst $18                                       ; $7ae2: $df
    ld c, [hl]                                    ; $7ae3: $4e
    ld a, [bc]                                    ; $7ae4: $0a
    rst $18                                       ; $7ae5: $df
    inc [hl]                                      ; $7ae6: $34
    ld [bc], a                                    ; $7ae7: $02
    ld hl, $1819                                  ; $7ae8: $21 $19 $18
    rst $18                                       ; $7aeb: $df
    ld c, $0a                                     ; $7aec: $0e $0a
    ld a, $00                                     ; $7aee: $3e $00
    ld b, $40                                     ; $7af0: $06 $40
    rst $18                                       ; $7af2: $df
    inc l                                         ; $7af3: $2c
    ld a, [bc]                                    ; $7af4: $0a
    ld a, $00                                     ; $7af5: $3e $00
    ld b, a                                       ; $7af7: $47
    ld a, $0a                                     ; $7af8: $3e $0a
    rst $18                                       ; $7afa: $df
    ld [hl-], a                                   ; $7afb: $32
    ld a, [bc]                                    ; $7afc: $0a
    ld a, $80                                     ; $7afd: $3e $80
    rst $18                                       ; $7aff: $df
    ld [$3e0a], sp                                ; $7b00: $08 $0a $3e
    ld [bc], a                                    ; $7b03: $02
    ld b, a                                       ; $7b04: $47
    ld a, $00                                     ; $7b05: $3e $00
    rst $18                                       ; $7b07: $df
    ld l, $0a                                     ; $7b08: $2e $0a
    ld a, $00                                     ; $7b0a: $3e $00
    ld b, a                                       ; $7b0c: $47
    ld a, $01                                     ; $7b0d: $3e $01
    rst $18                                       ; $7b0f: $df
    ld [hl-], a                                   ; $7b10: $32
    ld a, [bc]                                    ; $7b11: $0a
    ld a, $02                                     ; $7b12: $3e $02
    rst $18                                       ; $7b14: $df
    ld [$c90a], sp                                ; $7b15: $08 $0a $c9

jr_033_7b18:
    rst $20                                       ; $7b18: $e7
    nop                                           ; $7b19: $00
    dec de                                        ; $7b1a: $1b
    rst $30                                       ; $7b1b: $f7
    jr nz, jr_033_7b39                            ; $7b1c: $20 $1b

    jr nz, jr_033_7b24                            ; $7b1e: $20 $04

    ld a, $01                                     ; $7b20: $3e $01
    jr jr_033_7b26                                ; $7b22: $18 $02

jr_033_7b24:
    ld a, $02                                     ; $7b24: $3e $02

jr_033_7b26:
    rst $18                                       ; $7b26: $df
    ld l, [hl]                                    ; $7b27: $6e
    ld [bc], a                                    ; $7b28: $02
    ld b, $00                                     ; $7b29: $06 $00
    ld c, $fa                                     ; $7b2b: $0e $fa
    rst $18                                       ; $7b2d: $df
    ld c, [hl]                                    ; $7b2e: $4e
    ld a, [bc]                                    ; $7b2f: $0a
    rst $18                                       ; $7b30: $df
    inc [hl]                                      ; $7b31: $34
    ld [bc], a                                    ; $7b32: $02
    ld hl, $181b                                  ; $7b33: $21 $1b $18
    rst $18                                       ; $7b36: $df
    ld c, $0a                                     ; $7b37: $0e $0a

jr_033_7b39:
    ld a, $00                                     ; $7b39: $3e $00
    ld b, $40                                     ; $7b3b: $06 $40
    rst $18                                       ; $7b3d: $df
    inc l                                         ; $7b3e: $2c
    ld a, [bc]                                    ; $7b3f: $0a
    ld a, $00                                     ; $7b40: $3e $00
    ld b, a                                       ; $7b42: $47
    ld a, $0a                                     ; $7b43: $3e $0a
    rst $18                                       ; $7b45: $df
    ld [hl-], a                                   ; $7b46: $32
    ld a, [bc]                                    ; $7b47: $0a
    rst $08                                       ; $7b48: $cf
    sub h                                         ; $7b49: $94
    ld a, $80                                     ; $7b4a: $3e $80
    rst $18                                       ; $7b4c: $df
    ld [$3e0a], sp                                ; $7b4d: $08 $0a $3e
    ld [bc], a                                    ; $7b50: $02
    ld b, a                                       ; $7b51: $47
    ld a, $00                                     ; $7b52: $3e $00
    rst $18                                       ; $7b54: $df
    ld l, $0a                                     ; $7b55: $2e $0a
    ld a, $00                                     ; $7b57: $3e $00
    ld b, a                                       ; $7b59: $47
    ld a, $01                                     ; $7b5a: $3e $01
    rst $18                                       ; $7b5c: $df
    ld [hl-], a                                   ; $7b5d: $32
    ld a, [bc]                                    ; $7b5e: $0a
    ld hl, $1814                                  ; $7b5f: $21 $14 $18
    rst $18                                       ; $7b62: $df
    ld c, $0a                                     ; $7b63: $0e $0a
    ld a, $02                                     ; $7b65: $3e $02
    rst $18                                       ; $7b67: $df
    ld [$c90a], sp                                ; $7b68: $08 $0a $c9
    rst $20                                       ; $7b6b: $e7
    and b                                         ; $7b6c: $a0
    inc de                                        ; $7b6d: $13
    ld hl, $c800                                  ; $7b6e: $21 $00 $c8
    ld a, l                                       ; $7b71: $7d
    add $12                                       ; $7b72: $c6 $12
    ld l, a                                       ; $7b74: $6f
    ld a, h                                       ; $7b75: $7c
    adc $00                                       ; $7b76: $ce $00
    ld h, a                                       ; $7b78: $67
    ld a, [hl]                                    ; $7b79: $7e
    cp $63                                        ; $7b7a: $fe $63
    jr z, jr_033_7bdc                             ; $7b7c: $28 $5e

    rst $18                                       ; $7b7e: $df
    ld a, [hl-]                                   ; $7b7f: $3a
    ld [bc], a                                    ; $7b80: $02
    ld e, l                                       ; $7b81: $5d
    ld d, h                                       ; $7b82: $54
    rst $18                                       ; $7b83: $df
    ld [hl+], a                                   ; $7b84: $22
    ld [bc], a                                    ; $7b85: $02
    ld a, $04                                     ; $7b86: $3e $04
    ld bc, $0500                                  ; $7b88: $01 $00 $05
    ld de, $0700                                  ; $7b8b: $11 $00 $07
    rst $18                                       ; $7b8e: $df
    jr nz, jr_033_7b9b                            ; $7b8f: $20 $0a

    rst $08                                       ; $7b91: $cf
    ld h, e                                       ; $7b92: $63
    ld a, $04                                     ; $7b93: $3e $04
    ld de, $ff00                                  ; $7b95: $11 $00 $ff
    rst $18                                       ; $7b98: $df
    ld b, b                                       ; $7b99: $40
    ld a, [bc]                                    ; $7b9a: $0a

jr_033_7b9b:
    ld a, $04                                     ; $7b9b: $3e $04
    rst $18                                       ; $7b9d: $df
    ld b, d                                       ; $7b9e: $42
    ld a, [bc]                                    ; $7b9f: $0a
    push af                                       ; $7ba0: $f5
    ld a, $10                                     ; $7ba1: $3e $10
    rst $18                                       ; $7ba3: $df
    inc b                                         ; $7ba4: $04
    ld a, [bc]                                    ; $7ba5: $0a
    pop af                                        ; $7ba6: $f1
    ld a, $04                                     ; $7ba7: $3e $04
    ld bc, $3f00                                  ; $7ba9: $01 $00 $3f
    ld de, $3f00                                  ; $7bac: $11 $00 $3f
    rst $18                                       ; $7baf: $df
    jr nz, @+$0c                                  ; $7bb0: $20 $0a

    ld hl, $0c5f                                  ; $7bb2: $21 $5f $0c
    rst $18                                       ; $7bb5: $df
    ld c, $0a                                     ; $7bb6: $0e $0a
    ld a, $88                                     ; $7bb8: $3e $88
    rst $18                                       ; $7bba: $df
    ld [$cd0a], sp                                ; $7bbb: $08 $0a $cd
    or a                                          ; $7bbe: $b7
    ld a, h                                       ; $7bbf: $7c
    ld a, $fa                                     ; $7bc0: $3e $fa
    ld [$c441], a                                 ; $7bc2: $ea $41 $c4
    ld a, $fa                                     ; $7bc5: $3e $fa
    ld [$c46a], a                                 ; $7bc7: $ea $6a $c4
    ld hl, $c2a0                                  ; $7bca: $21 $a0 $c2
    ld de, $c466                                  ; $7bcd: $11 $66 $c4
    ld bc, $0004                                  ; $7bd0: $01 $04 $00
    call MemCopy                            ; $7bd3: $cd $d3 $03
    ld a, [$c2a4]                                 ; $7bd6: $fa $a4 $c2
    ld [$c465], a                                 ; $7bd9: $ea $65 $c4

jr_033_7bdc:
    ret                                           ; $7bdc: $c9


    db $00

    dec c                                         ; $7bde: $0d
    dec de                                        ; $7bdf: $1b
    nop                                           ; $7be0: $00
    nop                                           ; $7be1: $00
    nop                                           ; $7be2: $00
    ld a, [bc]                                    ; $7be3: $0a
    ld bc, $0c01                                  ; $7be4: $01 $01 $0c
    db $fc                                        ; $7be7: $fc
    rst $38                                       ; $7be8: $ff
    inc de                                        ; $7be9: $13
    add hl, bc                                    ; $7bea: $09
    ld [bc], a                                    ; $7beb: $02
    ld bc, $0c28                                  ; $7bec: $01 $28 $0c
    ei                                            ; $7bef: $fb
    rst $38                                       ; $7bf0: $ff
    inc bc                                        ; $7bf1: $03
    nop                                           ; $7bf2: $00
    dec d                                         ; $7bf3: $15
    nop                                           ; $7bf4: $00
    dec d                                         ; $7bf5: $15
    ld bc, $0414                                  ; $7bf6: $01 $14 $04
    nop                                           ; $7bf9: $00
    rla                                           ; $7bfa: $17
    nop                                           ; $7bfb: $00
    dec d                                         ; $7bfc: $15
    ld [bc], a                                    ; $7bfd: $02
    ld bc, $0614                                  ; $7bfe: $01 $14 $06
    nop                                           ; $7c01: $00
    nop                                           ; $7c02: $00
    nop                                           ; $7c03: $00
    cp $02                                        ; $7c04: $fe $02
    ld bc, $0714                                  ; $7c06: $01 $14 $07
    add b                                         ; $7c09: $80
    nop                                           ; $7c0a: $00
    ld [bc], a                                    ; $7c0b: $02
    ld [bc], a                                    ; $7c0c: $02
    ld bc, $0814                                  ; $7c0d: $01 $14 $08
    ld b, b                                       ; $7c10: $40
    nop                                           ; $7c11: $00
    ld [bc], a                                    ; $7c12: $02
    ld [bc], a                                    ; $7c13: $02
    ld bc, $0d14                                  ; $7c14: $01 $14 $0d
    ld a, [bc]                                    ; $7c17: $0a
    nop                                           ; $7c18: $00
    add hl, de                                    ; $7c19: $19
    dec c                                         ; $7c1a: $0d
    ld [de], a                                    ; $7c1b: $12
    ld bc, $0200                                  ; $7c1c: $01 $00 $02
    ld bc, $0e14                                  ; $7c1f: $01 $14 $0e
    inc c                                         ; $7c22: $0c
    nop                                           ; $7c23: $00
    cp $0d                                        ; $7c24: $fe $0d
    ld [de], a                                    ; $7c26: $12
    ld bc, $0200                                  ; $7c27: $01 $00 $02
    ld bc, $1014                                  ; $7c2a: $01 $14 $10
    inc bc                                        ; $7c2d: $03
    ld bc, $1078                                  ; $7c2e: $01 $78 $10
    ld bc, $1401                                  ; $7c31: $01 $01 $14
    inc c                                         ; $7c34: $0c
    cp h                                          ; $7c35: $bc
    rst $38                                       ; $7c36: $ff
    ret                                           ; $7c37: $c9


    db $10                                        ; $7c38: $10
    inc bc                                        ; $7c39: $03
    ld bc, $10a0                                  ; $7c3a: $01 $a0 $10
    ld [bc], a                                    ; $7c3d: $02
    ld bc, $0c04                                  ; $7c3e: $01 $04 $0c
    rst $30                                       ; $7c41: $f7
    rst $38                                       ; $7c42: $ff
    ld bc, $1028                                  ; $7c43: $01 $28 $10
    inc bc                                        ; $7c46: $03
    ld bc, $0c78                                  ; $7c47: $01 $78 $0c
    ld sp, hl                                     ; $7c4a: $f9
    rst $38                                       ; $7c4b: $ff
    ld bc, $1050                                  ; $7c4c: $01 $50 $10
    inc bc                                        ; $7c4f: $03
    ld bc, $0c78                                  ; $7c50: $01 $78 $0c
    ld sp, hl                                     ; $7c53: $f9
    rst $38                                       ; $7c54: $ff
    ld bc, $108c                                  ; $7c55: $01 $8c $10
    inc bc                                        ; $7c58: $03
    ld bc, $0c78                                  ; $7c59: $01 $78 $0c
    ld sp, hl                                     ; $7c5c: $f9
    rst $38                                       ; $7c5d: $ff
    push de                                       ; $7c5e: $d5
    ld hl, $c880                                  ; $7c5f: $21 $80 $c8
    ld d, $00                                     ; $7c62: $16 $00
    ld e, a                                       ; $7c64: $5f
    ld a, [$c835]                                 ; $7c65: $fa $35 $c8
    or a                                          ; $7c68: $b7
    jr z, jr_033_7c6f                             ; $7c69: $28 $04

    ld a, $40                                     ; $7c6b: $3e $40
    add e                                         ; $7c6d: $83
    ld e, a                                       ; $7c6e: $5f

jr_033_7c6f:
    add hl, de                                    ; $7c6f: $19
    pop de                                        ; $7c70: $d1
    ret                                           ; $7c71: $c9


Call_033_7c72:
    push bc                                       ; $7c72: $c5
    push de                                       ; $7c73: $d5
    push hl                                       ; $7c74: $e5
    push hl                                       ; $7c75: $e5
    rst $18                                       ; $7c76: $df
    inc b                                         ; $7c77: $04
    db $10                                        ; $7c78: $10
    ld d, h                                       ; $7c79: $54
    ld e, l                                       ; $7c7a: $5d
    pop hl                                        ; $7c7b: $e1
    call Call_000_08ac                            ; $7c7c: $cd $ac $08
    bit 7, h                                      ; $7c7f: $cb $7c
    ld a, $01                                     ; $7c81: $3e $01
    jr nz, jr_033_7c86                            ; $7c83: $20 $01

    xor a                                         ; $7c85: $af

jr_033_7c86:
    pop hl                                        ; $7c86: $e1
    pop de                                        ; $7c87: $d1
    pop bc                                        ; $7c88: $c1
    ret                                           ; $7c89: $c9


    push af                                       ; $7c8a: $f5
    push bc                                       ; $7c8b: $c5
    ld hl, $c290                                  ; $7c8c: $21 $90 $c2
    ld a, [hl+]                                   ; $7c8f: $2a
    ld h, [hl]                                    ; $7c90: $66
    ld l, a                                       ; $7c91: $6f
    ld a, l                                       ; $7c92: $7d
    ldh [$e0], a                                  ; $7c93: $e0 $e0
    ld a, h                                       ; $7c95: $7c
    ldh [$e1], a                                  ; $7c96: $e0 $e1
    ld a, $04                                     ; $7c98: $3e $04
    ldh [$96], a                                  ; $7c9a: $e0 $96
    ldh [rSVBK], a                                ; $7c9c: $e0 $70
    ld hl, $ffe0                                  ; $7c9e: $21 $e0 $ff
    ld a, [hl+]                                   ; $7ca1: $2a
    ld h, [hl]                                    ; $7ca2: $66
    add $06                                       ; $7ca3: $c6 $06
    ld l, a                                       ; $7ca5: $6f
    ld a, [hl+]                                   ; $7ca6: $2a
    ld d, [hl]                                    ; $7ca7: $56
    ld e, a                                       ; $7ca8: $5f
    ld hl, $ffe0                                  ; $7ca9: $21 $e0 $ff
    ld a, [hl+]                                   ; $7cac: $2a
    ld h, [hl]                                    ; $7cad: $66
    add $04                                       ; $7cae: $c6 $04
    ld l, a                                       ; $7cb0: $6f
    ld a, [hl+]                                   ; $7cb1: $2a
    ld h, [hl]                                    ; $7cb2: $66
    ld l, a                                       ; $7cb3: $6f
    pop bc                                        ; $7cb4: $c1
    pop af                                        ; $7cb5: $f1
    ret                                           ; $7cb6: $c9


Call_033_7cb7:
    ld c, $08                                     ; $7cb7: $0e $08
    call Call_000_25a1                            ; $7cb9: $cd $a1 $25
    call Call_000_2625                            ; $7cbc: $cd $25 $26
    rst $18                                       ; $7cbf: $df
    nop                                           ; $7cc0: $00
    ld b, c                                       ; $7cc1: $41
    ret                                           ; $7cc2: $c9


    rst $30                                       ; $7cc3: $f7
    ld h, b                                       ; $7cc4: $60
    inc c                                         ; $7cc5: $0c
    jr z, jr_033_7cd5                             ; $7cc6: $28 $0d

    ld h, d                                       ; $7cc8: $62
    ld l, e                                       ; $7cc9: $6b
    sra h                                         ; $7cca: $cb $2c
    rr l                                          ; $7ccc: $cb $1d
    sra h                                         ; $7cce: $cb $2c
    rr l                                          ; $7cd0: $cb $1d
    add hl, de                                    ; $7cd2: $19
    ld d, h                                       ; $7cd3: $54
    ld e, l                                       ; $7cd4: $5d

jr_033_7cd5:
    push de                                       ; $7cd5: $d5
    rst $18                                       ; $7cd6: $df
    ld [hl+], a                                   ; $7cd7: $22
    ld [bc], a                                    ; $7cd8: $02
    pop hl                                        ; $7cd9: $e1
    rst $18                                       ; $7cda: $df
    ld d, [hl]                                    ; $7cdb: $56
    dec b                                         ; $7cdc: $05
    rst $08                                       ; $7cdd: $cf
    jr c, @+$23                                   ; $7cde: $38 $21

    dec de                                        ; $7ce0: $1b
    ld bc, $0edf                                  ; $7ce1: $01 $df $0e
    ld a, [bc]                                    ; $7ce4: $0a
    ld a, $80                                     ; $7ce5: $3e $80
    rst $18                                       ; $7ce7: $df
    ld [$cd0a], sp                                ; $7ce8: $08 $0a $cd
    rra                                           ; $7ceb: $1f
    inc l                                         ; $7cec: $2c
    call Call_033_7cb7                            ; $7ced: $cd $b7 $7c
    ret                                           ; $7cf0: $c9


    ld a, [$c810]                                 ; $7cf1: $fa $10 $c8
    cp $00                                        ; $7cf4: $fe $00
    jr z, jr_033_7cfd                             ; $7cf6: $28 $05

    rst $30                                       ; $7cf8: $f7
    add b                                         ; $7cf9: $80
    ld de, $6828                                  ; $7cfa: $11 $28 $68

jr_033_7cfd:
    ld a, [$c810]                                 ; $7cfd: $fa $10 $c8
    cp $01                                        ; $7d00: $fe $01
    jr z, jr_033_7d09                             ; $7d02: $28 $05

    rst $30                                       ; $7d04: $f7
    and b                                         ; $7d05: $a0
    ld de, $5c28                                  ; $7d06: $11 $28 $5c

jr_033_7d09:
    ld a, [$c810]                                 ; $7d09: $fa $10 $c8
    cp $02                                        ; $7d0c: $fe $02
    jr z, jr_033_7d15                             ; $7d0e: $28 $05

    rst $30                                       ; $7d10: $f7
    ret nz                                        ; $7d11: $c0

    ld de, $5028                                  ; $7d12: $11 $28 $50

jr_033_7d15:
    ld a, [$c810]                                 ; $7d15: $fa $10 $c8
    cp $03                                        ; $7d18: $fe $03
    jr z, jr_033_7d21                             ; $7d1a: $28 $05

    rst $30                                       ; $7d1c: $f7
    ldh [rNR11], a                                ; $7d1d: $e0 $11
    jr z, jr_033_7d65                             ; $7d1f: $28 $44

jr_033_7d21:
    ld de, $012c                                  ; $7d21: $11 $2c $01
    push de                                       ; $7d24: $d5
    rst $18                                       ; $7d25: $df
    ld [hl+], a                                   ; $7d26: $22
    ld [bc], a                                    ; $7d27: $02
    pop hl                                        ; $7d28: $e1
    rst $18                                       ; $7d29: $df
    ld d, [hl]                                    ; $7d2a: $56
    dec b                                         ; $7d2b: $05
    rst $08                                       ; $7d2c: $cf
    jr c, jr_033_7d50                             ; $7d2d: $38 $21

    dec de                                        ; $7d2f: $1b
    ld bc, $0edf                                  ; $7d30: $01 $df $0e
    ld a, [bc]                                    ; $7d33: $0a
    ld a, $80                                     ; $7d34: $3e $80
    rst $18                                       ; $7d36: $df
    ld [$cd0a], sp                                ; $7d37: $08 $0a $cd
    rra                                           ; $7d3a: $1f
    inc l                                         ; $7d3b: $2c
    call Call_033_7cb7                            ; $7d3c: $cd $b7 $7c
    ld b, $00                                     ; $7d3f: $06 $00
    ld c, $fa                                     ; $7d41: $0e $fa
    rst $18                                       ; $7d43: $df
    ld c, [hl]                                    ; $7d44: $4e
    ld a, [bc]                                    ; $7d45: $0a
    rst $18                                       ; $7d46: $df
    inc [hl]                                      ; $7d47: $34
    ld [bc], a                                    ; $7d48: $02
    ld a, $fa                                     ; $7d49: $3e $fa
    ld [$c441], a                                 ; $7d4b: $ea $41 $c4
    ld a, $fa                                     ; $7d4e: $3e $fa

jr_033_7d50:
    ld [$c46a], a                                 ; $7d50: $ea $6a $c4
    ld hl, $c2a0                                  ; $7d53: $21 $a0 $c2
    ld de, $c466                                  ; $7d56: $11 $66 $c4
    ld bc, $0004                                  ; $7d59: $01 $04 $00
    call MemCopy                            ; $7d5c: $cd $d3 $03
    ld a, [$c2a4]                                 ; $7d5f: $fa $a4 $c2
    ld [$c465], a                                 ; $7d62: $ea $65 $c4

jr_033_7d65:
    ret                                           ; $7d65: $c9


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
