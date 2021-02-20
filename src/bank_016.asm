; Disassembly of "mgolf.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $016", ROMX[$4000], BANK[$16]

    db $04, $40, $58, $40

    ld hl, $4010                                  ; $4004: $21 $10 $40
    ld de, $c400                                  ; $4007: $11 $00 $c4
    ld c, $01                                     ; $400a: $0e $01
    call Call_000_03eb                            ; $400c: $cd $eb $03
    ret                                           ; $400f: $c9


    db $06, $00, $05, $03, $00, $00, $04, $00, $00, $06, $00, $00, $00, $00, $06, $0f

Call_016_4020:
    ld d, $c4                                     ; $4020: $16 $c4
    ld c, $04                                     ; $4022: $0e $04

jr_016_4024:
    ld e, [hl]                                    ; $4024: $5e
    ld a, [de]                                    ; $4025: $1a
    ld [hl+], a                                   ; $4026: $22
    ld e, [hl]                                    ; $4027: $5e
    ld a, [de]                                    ; $4028: $1a
    ld [hl+], a                                   ; $4029: $22
    ld e, [hl]                                    ; $402a: $5e
    ld a, [de]                                    ; $402b: $1a
    ld [hl+], a                                   ; $402c: $22
    ld e, [hl]                                    ; $402d: $5e
    ld a, [de]                                    ; $402e: $1a
    ld [hl+], a                                   ; $402f: $22
    ld e, [hl]                                    ; $4030: $5e
    ld a, [de]                                    ; $4031: $1a
    ld [hl+], a                                   ; $4032: $22
    ld e, [hl]                                    ; $4033: $5e
    ld a, [de]                                    ; $4034: $1a
    ld [hl+], a                                   ; $4035: $22
    ld e, [hl]                                    ; $4036: $5e
    ld a, [de]                                    ; $4037: $1a
    ld [hl+], a                                   ; $4038: $22
    ld e, [hl]                                    ; $4039: $5e
    ld a, [de]                                    ; $403a: $1a
    ld [hl+], a                                   ; $403b: $22
    ld e, [hl]                                    ; $403c: $5e
    ld a, [de]                                    ; $403d: $1a
    ld [hl+], a                                   ; $403e: $22
    ld e, [hl]                                    ; $403f: $5e
    ld a, [de]                                    ; $4040: $1a
    ld [hl+], a                                   ; $4041: $22
    ld e, [hl]                                    ; $4042: $5e
    ld a, [de]                                    ; $4043: $1a
    ld [hl+], a                                   ; $4044: $22
    ld e, [hl]                                    ; $4045: $5e
    ld a, [de]                                    ; $4046: $1a
    ld [hl+], a                                   ; $4047: $22
    ld e, [hl]                                    ; $4048: $5e
    ld a, [de]                                    ; $4049: $1a
    ld [hl+], a                                   ; $404a: $22
    ld e, [hl]                                    ; $404b: $5e
    ld a, [de]                                    ; $404c: $1a
    ld [hl+], a                                   ; $404d: $22
    ld e, [hl]                                    ; $404e: $5e
    ld a, [de]                                    ; $404f: $1a
    ld [hl+], a                                   ; $4050: $22
    ld e, [hl]                                    ; $4051: $5e
    ld a, [de]                                    ; $4052: $1a
    ld [hl+], a                                   ; $4053: $22
    dec c                                         ; $4054: $0d
    jr nz, jr_016_4024                            ; $4055: $20 $cd

    ret                                           ; $4057: $c9


    ld a, $ff                                     ; $4058: $3e $ff
    ld [$c47e], a                                 ; $405a: $ea $7e $c4
    ld a, $00                                     ; $405d: $3e $00
    ld de, $cf80                                  ; $405f: $11 $80 $cf
    ld bc, $deff                                  ; $4062: $01 $ff $de
    call Call_016_41a9                            ; $4065: $cd $a9 $41
    ld a, $00                                     ; $4068: $3e $00
    ld [$c47e], a                                 ; $406a: $ea $7e $c4
    ld a, $01                                     ; $406d: $3e $01
    ld de, $d000                                  ; $406f: $11 $00 $d0
    ld bc, $df00                                  ; $4072: $01 $00 $df
    call Call_016_41ad                            ; $4075: $cd $ad $41
    ld a, $01                                     ; $4078: $3e $01
    ld [$c47e], a                                 ; $407a: $ea $7e $c4
    ld a, $02                                     ; $407d: $3e $02
    ld de, $d080                                  ; $407f: $11 $80 $d0
    ld bc, $df01                                  ; $4082: $01 $01 $df
    call Call_016_41ad                            ; $4085: $cd $ad $41
    ld a, $02                                     ; $4088: $3e $02
    ld [$c47e], a                                 ; $408a: $ea $7e $c4
    ld a, $03                                     ; $408d: $3e $03
    ld de, $d100                                  ; $408f: $11 $00 $d1
    ld bc, $df02                                  ; $4092: $01 $02 $df
    call Call_016_41ad                            ; $4095: $cd $ad $41
    ld a, $03                                     ; $4098: $3e $03
    ld [$c47e], a                                 ; $409a: $ea $7e $c4
    ld a, $04                                     ; $409d: $3e $04
    ld de, $d180                                  ; $409f: $11 $80 $d1
    ld bc, $df03                                  ; $40a2: $01 $03 $df
    call Call_016_41ad                            ; $40a5: $cd $ad $41
    ld a, $04                                     ; $40a8: $3e $04
    ld [$c47e], a                                 ; $40aa: $ea $7e $c4
    ld a, $05                                     ; $40ad: $3e $05
    ld de, $d200                                  ; $40af: $11 $00 $d2
    ld bc, $df04                                  ; $40b2: $01 $04 $df
    call Call_016_41ad                            ; $40b5: $cd $ad $41
    ld a, $05                                     ; $40b8: $3e $05
    ld [$c47e], a                                 ; $40ba: $ea $7e $c4
    ld a, $06                                     ; $40bd: $3e $06
    ld de, $d280                                  ; $40bf: $11 $80 $d2
    ld bc, $df05                                  ; $40c2: $01 $05 $df
    call Call_016_41ad                            ; $40c5: $cd $ad $41
    ld a, $06                                     ; $40c8: $3e $06
    ld [$c47e], a                                 ; $40ca: $ea $7e $c4
    ld a, $07                                     ; $40cd: $3e $07
    ld de, $d300                                  ; $40cf: $11 $00 $d3
    ld bc, $df06                                  ; $40d2: $01 $06 $df
    call Call_016_41ad                            ; $40d5: $cd $ad $41
    ld a, $07                                     ; $40d8: $3e $07
    ld [$c47e], a                                 ; $40da: $ea $7e $c4
    ld a, $08                                     ; $40dd: $3e $08
    ld de, $d380                                  ; $40df: $11 $80 $d3
    ld bc, $df07                                  ; $40e2: $01 $07 $df
    call Call_016_41ad                            ; $40e5: $cd $ad $41
    ld a, $08                                     ; $40e8: $3e $08
    ld [$c47e], a                                 ; $40ea: $ea $7e $c4
    ld a, $09                                     ; $40ed: $3e $09
    ld de, $d400                                  ; $40ef: $11 $00 $d4
    ld bc, $df08                                  ; $40f2: $01 $08 $df
    call Call_016_41ad                            ; $40f5: $cd $ad $41
    ld a, $09                                     ; $40f8: $3e $09
    ld [$c47e], a                                 ; $40fa: $ea $7e $c4
    ld a, $0a                                     ; $40fd: $3e $0a
    ld de, $d480                                  ; $40ff: $11 $80 $d4
    ld bc, $df09                                  ; $4102: $01 $09 $df
    call Call_016_41ad                            ; $4105: $cd $ad $41
    ld a, $0a                                     ; $4108: $3e $0a
    ld [$c47e], a                                 ; $410a: $ea $7e $c4
    ld a, $0b                                     ; $410d: $3e $0b
    ld de, $d500                                  ; $410f: $11 $00 $d5
    ld bc, $df0a                                  ; $4112: $01 $0a $df
    call Call_016_41ad                            ; $4115: $cd $ad $41
    ld a, $0b                                     ; $4118: $3e $0b
    ld [$c47e], a                                 ; $411a: $ea $7e $c4
    ld a, $0c                                     ; $411d: $3e $0c
    ld de, $d580                                  ; $411f: $11 $80 $d5
    ld bc, $df0b                                  ; $4122: $01 $0b $df
    call Call_016_41ad                            ; $4125: $cd $ad $41
    ld a, $0c                                     ; $4128: $3e $0c
    ld [$c47e], a                                 ; $412a: $ea $7e $c4
    ld a, $0d                                     ; $412d: $3e $0d
    ld de, $d600                                  ; $412f: $11 $00 $d6
    ld bc, $df0c                                  ; $4132: $01 $0c $df
    call Call_016_41ad                            ; $4135: $cd $ad $41
    ld a, $0d                                     ; $4138: $3e $0d
    ld [$c47e], a                                 ; $413a: $ea $7e $c4
    ld a, $0e                                     ; $413d: $3e $0e
    ld de, $d680                                  ; $413f: $11 $80 $d6
    ld bc, $df0d                                  ; $4142: $01 $0d $df
    call Call_016_41ad                            ; $4145: $cd $ad $41
    ld a, $0e                                     ; $4148: $3e $0e
    ld [$c47e], a                                 ; $414a: $ea $7e $c4
    ld a, $0f                                     ; $414d: $3e $0f
    ld de, $d700                                  ; $414f: $11 $00 $d7
    ld bc, $df0e                                  ; $4152: $01 $0e $df
    call Call_016_41ad                            ; $4155: $cd $ad $41
    ld a, $0f                                     ; $4158: $3e $0f
    ld [$c47e], a                                 ; $415a: $ea $7e $c4
    ld a, $10                                     ; $415d: $3e $10
    ld de, $d780                                  ; $415f: $11 $80 $d7
    ld bc, $df0f                                  ; $4162: $01 $0f $df
    call Call_016_41ad                            ; $4165: $cd $ad $41
    ld a, $10                                     ; $4168: $3e $10
    ld [$c47e], a                                 ; $416a: $ea $7e $c4
    ld a, $11                                     ; $416d: $3e $11
    ld de, $d800                                  ; $416f: $11 $00 $d8
    ld bc, $df10                                  ; $4172: $01 $10 $df
    call Call_016_41ad                            ; $4175: $cd $ad $41
    ld a, $11                                     ; $4178: $3e $11
    ld [$c47e], a                                 ; $417a: $ea $7e $c4
    ld a, $12                                     ; $417d: $3e $12
    ld de, $d880                                  ; $417f: $11 $80 $d8
    ld bc, $df11                                  ; $4182: $01 $11 $df
    call Call_016_41ad                            ; $4185: $cd $ad $41
    ld a, $12                                     ; $4188: $3e $12
    ld [$c47e], a                                 ; $418a: $ea $7e $c4
    ld a, $13                                     ; $418d: $3e $13
    ld de, $d900                                  ; $418f: $11 $00 $d9
    ld bc, $df12                                  ; $4192: $01 $12 $df
    call Call_016_41ad                            ; $4195: $cd $ad $41
    ld a, $13                                     ; $4198: $3e $13
    ld [$c47e], a                                 ; $419a: $ea $7e $c4
    ld a, $14                                     ; $419d: $3e $14
    ld de, $d980                                  ; $419f: $11 $80 $d9
    ld bc, $df13                                  ; $41a2: $01 $13 $df
    call Call_016_41b7                            ; $41a5: $cd $b7 $41
    ret                                           ; $41a8: $c9


Call_016_41a9:
    call Call_016_41d2                            ; $41a9: $cd $d2 $41
    ret                                           ; $41ac: $c9


Call_016_41ad:
    call Call_016_41be                            ; $41ad: $cd $be $41
    call Call_016_41d2                            ; $41b0: $cd $d2 $41
    call Call_016_41e3                            ; $41b3: $cd $e3 $41
    ret                                           ; $41b6: $c9


Call_016_41b7:
    call Call_016_41be                            ; $41b7: $cd $be $41
    call Call_016_41e3                            ; $41ba: $cd $e3 $41
    ret                                           ; $41bd: $c9


Call_016_41be:
    push af                                       ; $41be: $f5
    push bc                                       ; $41bf: $c5
    push de                                       ; $41c0: $d5
    push hl                                       ; $41c1: $e5
    ld hl, $db80                                  ; $41c2: $21 $80 $db
    ld de, $db40                                  ; $41c5: $11 $40 $db
    ld c, $08                                     ; $41c8: $0e $08
    call Call_000_03eb                            ; $41ca: $cd $eb $03
    pop hl                                        ; $41cd: $e1
    pop de                                        ; $41ce: $d1
    pop bc                                        ; $41cf: $c1
    pop af                                        ; $41d0: $f1
    ret                                           ; $41d1: $c9


Call_016_41d2:
    push bc                                       ; $41d2: $c5
    push de                                       ; $41d3: $d5
    ld hl, $dbc0                                  ; $41d4: $21 $c0 $db
    call Call_016_7b01                            ; $41d7: $cd $01 $7b
    ld hl, $dbc0                                  ; $41da: $21 $c0 $db
    call Call_016_4020                            ; $41dd: $cd $20 $40
    pop de                                        ; $41e0: $d1
    pop bc                                        ; $41e1: $c1
    ret                                           ; $41e2: $c9


Call_016_41e3:
    push de                                       ; $41e3: $d5
    push bc                                       ; $41e4: $c5
    ld de, $db80                                  ; $41e5: $11 $80 $db
    ld hl, $dc00                                  ; $41e8: $21 $00 $dc
    call Call_016_5967                            ; $41eb: $cd $67 $59
    pop bc                                        ; $41ee: $c1
    ld hl, $dc00                                  ; $41ef: $21 $00 $dc
    call Call_016_432a                            ; $41f2: $cd $2a $43
    ld [$c470], a                                 ; $41f5: $ea $70 $c4
    call Call_016_432a                            ; $41f8: $cd $2a $43
    ld [$c471], a                                 ; $41fb: $ea $71 $c4
    call Call_016_432a                            ; $41fe: $cd $2a $43
    ld [$c472], a                                 ; $4201: $ea $72 $c4
    call Call_016_432a                            ; $4204: $cd $2a $43
    ld [$c473], a                                 ; $4207: $ea $73 $c4
    call Call_016_432a                            ; $420a: $cd $2a $43
    ld [$c474], a                                 ; $420d: $ea $74 $c4
    call Call_016_432a                            ; $4210: $cd $2a $43
    ld [$c475], a                                 ; $4213: $ea $75 $c4
    call Call_016_432a                            ; $4216: $cd $2a $43
    ld [$c476], a                                 ; $4219: $ea $76 $c4
    call Call_016_432a                            ; $421c: $cd $2a $43
    ld [$c477], a                                 ; $421f: $ea $77 $c4
    pop de                                        ; $4222: $d1
    ld hl, $dc00                                  ; $4223: $21 $00 $dc
    ld a, l                                       ; $4226: $7d
    ld [$c486], a                                 ; $4227: $ea $86 $c4
    ld a, h                                       ; $422a: $7c
    ld [$c487], a                                 ; $422b: $ea $87 $c4
    ld a, [$c470]                                 ; $422e: $fa $70 $c4
    ld b, $00                                     ; $4231: $06 $00
    call Call_016_435f                            ; $4233: $cd $5f $43
    ld a, [$c471]                                 ; $4236: $fa $71 $c4
    ld b, $08                                     ; $4239: $06 $08
    call Call_016_435f                            ; $423b: $cd $5f $43
    ld a, [$c472]                                 ; $423e: $fa $72 $c4
    ld b, $10                                     ; $4241: $06 $10
    call Call_016_435f                            ; $4243: $cd $5f $43
    ld a, [$c473]                                 ; $4246: $fa $73 $c4
    ld b, $18                                     ; $4249: $06 $18
    call Call_016_435f                            ; $424b: $cd $5f $43
    ld a, [$c474]                                 ; $424e: $fa $74 $c4
    ld b, $20                                     ; $4251: $06 $20
    call Call_016_435f                            ; $4253: $cd $5f $43
    ld a, [$c475]                                 ; $4256: $fa $75 $c4
    ld b, $28                                     ; $4259: $06 $28
    call Call_016_435f                            ; $425b: $cd $5f $43
    ld a, [$c476]                                 ; $425e: $fa $76 $c4
    ld b, $30                                     ; $4261: $06 $30
    call Call_016_435f                            ; $4263: $cd $5f $43
    ld a, [$c477]                                 ; $4266: $fa $77 $c4
    ld b, $38                                     ; $4269: $06 $38
    call Call_016_435f                            ; $426b: $cd $5f $43
    ret                                           ; $426e: $c9


    ld c, $40                                     ; $426f: $0e $40

jr_016_4271:
    ld a, [de]                                    ; $4271: $1a
    inc de                                        ; $4272: $13
    ld [hl+], a                                   ; $4273: $22
    ld [hl+], a                                   ; $4274: $22
    ld [hl+], a                                   ; $4275: $22
    ld [hl+], a                                   ; $4276: $22
    dec c                                         ; $4277: $0d
    jr nz, jr_016_4271                            ; $4278: $20 $f7

    ret                                           ; $427a: $c9


Call_016_427b:
    ld bc, $428a                                  ; $427b: $01 $8a $42
    push bc                                       ; $427e: $c5
    push bc                                       ; $427f: $c5
    push bc                                       ; $4280: $c5
    push bc                                       ; $4281: $c5
    push bc                                       ; $4282: $c5
    push bc                                       ; $4283: $c5
    push bc                                       ; $4284: $c5
    ld b, $80                                     ; $4285: $06 $80
    ld c, b                                       ; $4287: $48
    ld d, b                                       ; $4288: $50
    ld e, b                                       ; $4289: $58
    ld a, [hl+]                                   ; $428a: $2a
    add a                                         ; $428b: $87
    jr nc, jr_016_42b9                            ; $428c: $30 $2b

    sub $06                                       ; $428e: $d6 $06
    ret c                                         ; $4290: $d8

    jr z, jr_016_42af                             ; $4291: $28 $1c

    rrca                                          ; $4293: $0f
    sub $03                                       ; $4294: $d6 $03
    jr z, jr_016_42b4                             ; $4296: $28 $1c

    inc a                                         ; $4298: $3c
    jr z, jr_016_42a6                             ; $4299: $28 $0b

    inc a                                         ; $429b: $3c
    ret nz                                        ; $429c: $c0

    inc c                                         ; $429d: $0c
    inc e                                         ; $429e: $1c
    inc c                                         ; $429f: $0c
    inc e                                         ; $42a0: $1c
    inc c                                         ; $42a1: $0c
    inc e                                         ; $42a2: $1c
    inc c                                         ; $42a3: $0c
    inc e                                         ; $42a4: $1c
    ret                                           ; $42a5: $c9


jr_016_42a6:
    inc c                                         ; $42a6: $0c
    inc d                                         ; $42a7: $14
    inc c                                         ; $42a8: $0c
    inc d                                         ; $42a9: $14
    inc c                                         ; $42aa: $0c
    inc d                                         ; $42ab: $14
    inc c                                         ; $42ac: $0c
    inc d                                         ; $42ad: $14
    ret                                           ; $42ae: $c9


jr_016_42af:
    inc b                                         ; $42af: $04
    inc b                                         ; $42b0: $04
    inc b                                         ; $42b1: $04
    inc b                                         ; $42b2: $04
    ret                                           ; $42b3: $c9


jr_016_42b4:
    dec c                                         ; $42b4: $0d
    dec c                                         ; $42b5: $0d
    dec c                                         ; $42b6: $0d
    dec c                                         ; $42b7: $0d
    ret                                           ; $42b8: $c9


jr_016_42b9:
    rrca                                          ; $42b9: $0f
    sub $03                                       ; $42ba: $d6 $03
    jr c, jr_016_42d6                             ; $42bc: $38 $18

    jr z, jr_016_42d2                             ; $42be: $28 $12

    sub $03                                       ; $42c0: $d6 $03
    jr z, jr_016_42d5                             ; $42c2: $28 $11

    inc a                                         ; $42c4: $3c
    jr z, jr_016_42ce                             ; $42c5: $28 $07

    inc a                                         ; $42c7: $3c
    jr nz, jr_016_42d6                            ; $42c8: $20 $0c

    inc c                                         ; $42ca: $0c
    inc e                                         ; $42cb: $1c
    jr jr_016_42d6                                ; $42cc: $18 $08

jr_016_42ce:
    inc c                                         ; $42ce: $0c
    inc d                                         ; $42cf: $14
    jr jr_016_42d6                                ; $42d0: $18 $04

jr_016_42d2:
    inc b                                         ; $42d2: $04
    jr jr_016_42d6                                ; $42d3: $18 $01

jr_016_42d5:
    dec c                                         ; $42d5: $0d

jr_016_42d6:
    ld a, [hl+]                                   ; $42d6: $2a
    sub $03                                       ; $42d7: $d6 $03
    jr c, jr_016_42f3                             ; $42d9: $38 $18

    jr z, jr_016_42ef                             ; $42db: $28 $12

    sub $03                                       ; $42dd: $d6 $03
    jr z, jr_016_42f2                             ; $42df: $28 $11

    inc a                                         ; $42e1: $3c
    jr z, jr_016_42eb                             ; $42e2: $28 $07

    inc a                                         ; $42e4: $3c
    jr nz, jr_016_42f3                            ; $42e5: $20 $0c

    inc c                                         ; $42e7: $0c
    inc e                                         ; $42e8: $1c
    jr jr_016_42f3                                ; $42e9: $18 $08

jr_016_42eb:
    inc c                                         ; $42eb: $0c
    inc d                                         ; $42ec: $14
    jr jr_016_42f3                                ; $42ed: $18 $04

jr_016_42ef:
    inc b                                         ; $42ef: $04
    jr jr_016_42f3                                ; $42f0: $18 $01

jr_016_42f2:
    dec c                                         ; $42f2: $0d

jr_016_42f3:
    ld a, [hl+]                                   ; $42f3: $2a
    sub $03                                       ; $42f4: $d6 $03
    jr c, jr_016_4310                             ; $42f6: $38 $18

    jr z, jr_016_430c                             ; $42f8: $28 $12

    sub $03                                       ; $42fa: $d6 $03
    jr z, jr_016_430f                             ; $42fc: $28 $11

    inc a                                         ; $42fe: $3c
    jr z, jr_016_4308                             ; $42ff: $28 $07

    inc a                                         ; $4301: $3c
    jr nz, jr_016_4310                            ; $4302: $20 $0c

    inc c                                         ; $4304: $0c
    inc e                                         ; $4305: $1c
    jr jr_016_4310                                ; $4306: $18 $08

jr_016_4308:
    inc c                                         ; $4308: $0c
    inc d                                         ; $4309: $14
    jr jr_016_4310                                ; $430a: $18 $04

jr_016_430c:
    inc b                                         ; $430c: $04
    jr jr_016_4310                                ; $430d: $18 $01

jr_016_430f:
    dec c                                         ; $430f: $0d

jr_016_4310:
    ld a, [hl+]                                   ; $4310: $2a
    sub $03                                       ; $4311: $d6 $03
    ret c                                         ; $4313: $d8

    jr z, jr_016_4325                             ; $4314: $28 $0f

    sub $03                                       ; $4316: $d6 $03
    jr z, jr_016_4327                             ; $4318: $28 $0d

    inc a                                         ; $431a: $3c
    jr z, jr_016_4322                             ; $431b: $28 $05

    inc a                                         ; $431d: $3c
    ret nz                                        ; $431e: $c0

    inc c                                         ; $431f: $0c
    inc e                                         ; $4320: $1c
    ret                                           ; $4321: $c9


jr_016_4322:
    inc c                                         ; $4322: $0c
    inc d                                         ; $4323: $14
    ret                                           ; $4324: $c9


jr_016_4325:
    inc b                                         ; $4325: $04
    ret                                           ; $4326: $c9


jr_016_4327:
    dec c                                         ; $4327: $0d
    ret                                           ; $4328: $c9


    ret                                           ; $4329: $c9


Call_016_432a:
    push bc                                       ; $432a: $c5
    call Call_016_427b                            ; $432b: $cd $7b $42
    ld a, c                                       ; $432e: $79
    ld c, $04                                     ; $432f: $0e $04
    cp d                                          ; $4331: $ba
    jr nc, jr_016_4336                            ; $4332: $30 $02

    ld a, d                                       ; $4334: $7a
    inc c                                         ; $4335: $0c

jr_016_4336:
    cp e                                          ; $4336: $bb
    jr nc, jr_016_433c                            ; $4337: $30 $03

    ld a, e                                       ; $4339: $7b
    ld c, $06                                     ; $433a: $0e $06

jr_016_433c:
    cp b                                          ; $433c: $b8
    jr nc, jr_016_4342                            ; $433d: $30 $03

    ld a, b                                       ; $433f: $78
    ld c, $03                                     ; $4340: $0e $03

jr_016_4342:
    ld d, c                                       ; $4342: $51
    pop bc                                        ; $4343: $c1
    ld a, d                                       ; $4344: $7a
    add $08                                       ; $4345: $c6 $08
    ld [bc], a                                    ; $4347: $02
    ld a, $20                                     ; $4348: $3e $20
    add c                                         ; $434a: $81
    ld c, a                                       ; $434b: $4f
    jr nc, jr_016_434f                            ; $434c: $30 $01

    inc b                                         ; $434e: $04

jr_016_434f:
    ld a, d                                       ; $434f: $7a
    ret                                           ; $4350: $c9


    nop                                           ; $4351: $00
    nop                                           ; $4352: $00
    nop                                           ; $4353: $00
    nop                                           ; $4354: $00
    nop                                           ; $4355: $00
    nop                                           ; $4356: $00

    db $03, $06, $04, $05, $05, $06, $06, $04

Call_016_435f:
    add a                                         ; $435f: $87
    ld c, a                                       ; $4360: $4f
    ld [$c47d], a                                 ; $4361: $ea $7d $c4
    ld a, [$c47e]                                 ; $4364: $fa $7e $c4
    and $03                                       ; $4367: $e6 $03
    rrca                                          ; $4369: $0f
    rrca                                          ; $436a: $0f
    add b                                         ; $436b: $80
    ld [$c47c], a                                 ; $436c: $ea $7c $c4
    ld hl, $4351                                  ; $436f: $21 $51 $43
    ld b, $00                                     ; $4372: $06 $00
    add hl, bc                                    ; $4374: $09
    ld a, [hl+]                                   ; $4375: $2a
    ld b, [hl]                                    ; $4376: $46
    ld c, a                                       ; $4377: $4f
    ld hl, $4382                                  ; $4378: $21 $82 $43
    push hl                                       ; $437b: $e5
    push hl                                       ; $437c: $e5
    push hl                                       ; $437d: $e5
    push hl                                       ; $437e: $e5
    push hl                                       ; $437f: $e5
    push hl                                       ; $4380: $e5
    push hl                                       ; $4381: $e5
    ld hl, $c486                                  ; $4382: $21 $86 $c4
    ld a, [hl+]                                   ; $4385: $2a
    ld h, [hl]                                    ; $4386: $66
    ld l, a                                       ; $4387: $6f
    ld a, [hl]                                    ; $4388: $7e
    add a                                         ; $4389: $87
    jr nc, jr_016_43ff                            ; $438a: $30 $73

    rrca                                          ; $438c: $0f
    cp c                                          ; $438d: $b9
    jr z, jr_016_439f                             ; $438e: $28 $0f

    cp b                                          ; $4390: $b8
    jr z, jr_016_43b6                             ; $4391: $28 $23

    cp $0f                                        ; $4393: $fe $0f
    jr nz, jr_016_43cd                            ; $4395: $20 $36

    ld a, $ff                                     ; $4397: $3e $ff
    ld [de], a                                    ; $4399: $12
    inc e                                         ; $439a: $1c
    ld [de], a                                    ; $439b: $12
    inc de                                        ; $439c: $13
    jr jr_016_43f3                                ; $439d: $18 $54

jr_016_439f:
    ld hl, $c47c                                  ; $439f: $21 $7c $c4
    ld a, [hl+]                                   ; $43a2: $2a
    ld h, [hl]                                    ; $43a3: $66
    ld l, a                                       ; $43a4: $6f
    add hl, hl                                    ; $43a5: $29
    ld a, $67                                     ; $43a6: $3e $67
    add l                                         ; $43a8: $85
    ld l, a                                       ; $43a9: $6f
    ld a, h                                       ; $43aa: $7c
    adc $3d                                       ; $43ab: $ce $3d
    ld h, a                                       ; $43ad: $67
    ld a, [hl+]                                   ; $43ae: $2a
    ld [de], a                                    ; $43af: $12
    inc e                                         ; $43b0: $1c
    ld a, [hl+]                                   ; $43b1: $2a
    ld [de], a                                    ; $43b2: $12
    inc de                                        ; $43b3: $13
    jr jr_016_43f3                                ; $43b4: $18 $3d

jr_016_43b6:
    ld hl, $c47c                                  ; $43b6: $21 $7c $c4
    ld a, [hl+]                                   ; $43b9: $2a
    ld h, [hl]                                    ; $43ba: $66
    ld l, a                                       ; $43bb: $6f
    add hl, hl                                    ; $43bc: $29
    ld a, $67                                     ; $43bd: $3e $67
    add l                                         ; $43bf: $85
    ld l, a                                       ; $43c0: $6f
    ld a, h                                       ; $43c1: $7c
    adc $3f                                       ; $43c2: $ce $3f
    ld h, a                                       ; $43c4: $67
    ld a, [hl+]                                   ; $43c5: $2a
    ld [de], a                                    ; $43c6: $12
    inc e                                         ; $43c7: $1c
    ld a, [hl+]                                   ; $43c8: $2a
    ld [de], a                                    ; $43c9: $12
    inc de                                        ; $43ca: $13
    jr jr_016_43f3                                ; $43cb: $18 $26

jr_016_43cd:
    ld a, [$c47c]                                 ; $43cd: $fa $7c $c4
    ld l, a                                       ; $43d0: $6f
    ld h, $00                                     ; $43d1: $26 $00
    add hl, hl                                    ; $43d3: $29
    ld a, [$c836]                                 ; $43d4: $fa $36 $c8
    cp $03                                        ; $43d7: $fe $03
    jr z, jr_016_43e5                             ; $43d9: $28 $0a

    ld a, $67                                     ; $43db: $3e $67
    add l                                         ; $43dd: $85
    ld l, a                                       ; $43de: $6f
    ld a, h                                       ; $43df: $7c
    adc $45                                       ; $43e0: $ce $45
    ld h, a                                       ; $43e2: $67
    jr jr_016_43ed                                ; $43e3: $18 $08

jr_016_43e5:
    ld a, $67                                     ; $43e5: $3e $67
    add l                                         ; $43e7: $85
    ld l, a                                       ; $43e8: $6f
    ld a, h                                       ; $43e9: $7c
    adc $47                                       ; $43ea: $ce $47
    ld h, a                                       ; $43ec: $67

jr_016_43ed:
    ld a, [hl+]                                   ; $43ed: $2a
    ld [de], a                                    ; $43ee: $12
    inc e                                         ; $43ef: $1c
    ld a, [hl+]                                   ; $43f0: $2a
    ld [de], a                                    ; $43f1: $12
    inc de                                        ; $43f2: $13

jr_016_43f3:
    ld hl, $c47c                                  ; $43f3: $21 $7c $c4
    inc [hl]                                      ; $43f6: $34
    ld hl, $c486                                  ; $43f7: $21 $86 $c4
    inc [hl]                                      ; $43fa: $34
    ret nz                                        ; $43fb: $c0

    inc l                                         ; $43fc: $2c
    inc [hl]                                      ; $43fd: $34
    ret                                           ; $43fe: $c9


jr_016_43ff:
    push de                                       ; $43ff: $d5
    push bc                                       ; $4400: $c5
    ld de, $c480                                  ; $4401: $11 $80 $c4
    ld hl, $c47c                                  ; $4404: $21 $7c $c4
    ld a, [hl+]                                   ; $4407: $2a
    ld h, [hl]                                    ; $4408: $66
    ld l, a                                       ; $4409: $6f
    add hl, hl                                    ; $440a: $29
    push hl                                       ; $440b: $e5
    ld bc, $3d67                                  ; $440c: $01 $67 $3d
    add hl, bc                                    ; $440f: $09
    ld a, [hl+]                                   ; $4410: $2a
    ld [de], a                                    ; $4411: $12
    inc e                                         ; $4412: $1c
    ld a, [hl+]                                   ; $4413: $2a
    ld [de], a                                    ; $4414: $12
    inc e                                         ; $4415: $1c
    pop hl                                        ; $4416: $e1
    ld bc, $3f67                                  ; $4417: $01 $67 $3f
    add hl, bc                                    ; $441a: $09
    ld a, [hl+]                                   ; $441b: $2a
    ld [de], a                                    ; $441c: $12
    inc e                                         ; $441d: $1c
    ld a, [hl+]                                   ; $441e: $2a
    ld [de], a                                    ; $441f: $12
    inc e                                         ; $4420: $1c
    ld a, [$c47c]                                 ; $4421: $fa $7c $c4
    ld l, a                                       ; $4424: $6f
    inc a                                         ; $4425: $3c
    ld [$c47c], a                                 ; $4426: $ea $7c $c4
    ld h, $00                                     ; $4429: $26 $00
    add hl, hl                                    ; $442b: $29
    ld a, [$c836]                                 ; $442c: $fa $36 $c8
    cp $03                                        ; $442f: $fe $03
    jr z, jr_016_4438                             ; $4431: $28 $05

    ld bc, $4567                                  ; $4433: $01 $67 $45
    jr jr_016_443b                                ; $4436: $18 $03

jr_016_4438:
    ld bc, $4767                                  ; $4438: $01 $67 $47

jr_016_443b:
    add hl, bc                                    ; $443b: $09
    ld a, [hl+]                                   ; $443c: $2a
    ld [de], a                                    ; $443d: $12
    inc e                                         ; $443e: $1c
    ld a, [hl+]                                   ; $443f: $2a
    ld [de], a                                    ; $4440: $12
    pop bc                                        ; $4441: $c1
    ld de, $0000                                  ; $4442: $11 $00 $00
    ld hl, $c486                                  ; $4445: $21 $86 $c4
    ld a, [hl+]                                   ; $4448: $2a
    ld h, [hl]                                    ; $4449: $66
    ld l, a                                       ; $444a: $6f
    ld a, [hl+]                                   ; $444b: $2a
    cp c                                          ; $444c: $b9
    jr z, jr_016_4460                             ; $444d: $28 $11

    cp b                                          ; $444f: $b8
    jr z, jr_016_4470                             ; $4450: $28 $1e

    cp $0f                                        ; $4452: $fe $0f
    jr nz, jr_016_4480                            ; $4454: $20 $2a

    ld a, $c0                                     ; $4456: $3e $c0
    or d                                          ; $4458: $b2
    ld d, a                                       ; $4459: $57
    ld a, $c0                                     ; $445a: $3e $c0
    or e                                          ; $445c: $b3
    ld e, a                                       ; $445d: $5f
    jr jr_016_448e                                ; $445e: $18 $2e

jr_016_4460:
    ld a, [$c480]                                 ; $4460: $fa $80 $c4
    and $c0                                       ; $4463: $e6 $c0
    or d                                          ; $4465: $b2
    ld d, a                                       ; $4466: $57
    ld a, [$c481]                                 ; $4467: $fa $81 $c4
    and $c0                                       ; $446a: $e6 $c0
    or e                                          ; $446c: $b3
    ld e, a                                       ; $446d: $5f
    jr jr_016_448e                                ; $446e: $18 $1e

jr_016_4470:
    ld a, [$c482]                                 ; $4470: $fa $82 $c4
    and $c0                                       ; $4473: $e6 $c0
    or d                                          ; $4475: $b2
    ld d, a                                       ; $4476: $57
    ld a, [$c483]                                 ; $4477: $fa $83 $c4
    and $c0                                       ; $447a: $e6 $c0
    or e                                          ; $447c: $b3
    ld e, a                                       ; $447d: $5f
    jr jr_016_448e                                ; $447e: $18 $0e

jr_016_4480:
    ld a, [$c484]                                 ; $4480: $fa $84 $c4
    and $c0                                       ; $4483: $e6 $c0
    or d                                          ; $4485: $b2
    ld d, a                                       ; $4486: $57
    ld a, [$c485]                                 ; $4487: $fa $85 $c4
    and $c0                                       ; $448a: $e6 $c0
    or e                                          ; $448c: $b3
    ld e, a                                       ; $448d: $5f

jr_016_448e:
    ld a, [hl+]                                   ; $448e: $2a
    cp c                                          ; $448f: $b9
    jr z, jr_016_44a3                             ; $4490: $28 $11

    cp b                                          ; $4492: $b8
    jr z, jr_016_44b3                             ; $4493: $28 $1e

    cp $0f                                        ; $4495: $fe $0f
    jr nz, jr_016_44c3                            ; $4497: $20 $2a

    ld a, $30                                     ; $4499: $3e $30
    or d                                          ; $449b: $b2
    ld d, a                                       ; $449c: $57
    ld a, $30                                     ; $449d: $3e $30
    or e                                          ; $449f: $b3
    ld e, a                                       ; $44a0: $5f
    jr jr_016_44d1                                ; $44a1: $18 $2e

jr_016_44a3:
    ld a, [$c480]                                 ; $44a3: $fa $80 $c4
    and $30                                       ; $44a6: $e6 $30
    or d                                          ; $44a8: $b2
    ld d, a                                       ; $44a9: $57
    ld a, [$c481]                                 ; $44aa: $fa $81 $c4
    and $30                                       ; $44ad: $e6 $30
    or e                                          ; $44af: $b3
    ld e, a                                       ; $44b0: $5f
    jr jr_016_44d1                                ; $44b1: $18 $1e

jr_016_44b3:
    ld a, [$c482]                                 ; $44b3: $fa $82 $c4
    and $30                                       ; $44b6: $e6 $30
    or d                                          ; $44b8: $b2
    ld d, a                                       ; $44b9: $57
    ld a, [$c483]                                 ; $44ba: $fa $83 $c4
    and $30                                       ; $44bd: $e6 $30
    or e                                          ; $44bf: $b3
    ld e, a                                       ; $44c0: $5f
    jr jr_016_44d1                                ; $44c1: $18 $0e

jr_016_44c3:
    ld a, [$c484]                                 ; $44c3: $fa $84 $c4
    and $30                                       ; $44c6: $e6 $30
    or d                                          ; $44c8: $b2
    ld d, a                                       ; $44c9: $57
    ld a, [$c485]                                 ; $44ca: $fa $85 $c4
    and $30                                       ; $44cd: $e6 $30
    or e                                          ; $44cf: $b3
    ld e, a                                       ; $44d0: $5f

jr_016_44d1:
    ld a, [hl+]                                   ; $44d1: $2a
    cp c                                          ; $44d2: $b9
    jr z, jr_016_44e6                             ; $44d3: $28 $11

    cp b                                          ; $44d5: $b8
    jr z, jr_016_44f6                             ; $44d6: $28 $1e

    cp $0f                                        ; $44d8: $fe $0f
    jr nz, jr_016_4506                            ; $44da: $20 $2a

    ld a, $0c                                     ; $44dc: $3e $0c
    or d                                          ; $44de: $b2
    ld d, a                                       ; $44df: $57
    ld a, $0c                                     ; $44e0: $3e $0c
    or e                                          ; $44e2: $b3
    ld e, a                                       ; $44e3: $5f
    jr jr_016_4514                                ; $44e4: $18 $2e

jr_016_44e6:
    ld a, [$c480]                                 ; $44e6: $fa $80 $c4
    and $0c                                       ; $44e9: $e6 $0c
    or d                                          ; $44eb: $b2
    ld d, a                                       ; $44ec: $57
    ld a, [$c481]                                 ; $44ed: $fa $81 $c4
    and $0c                                       ; $44f0: $e6 $0c
    or e                                          ; $44f2: $b3
    ld e, a                                       ; $44f3: $5f
    jr jr_016_4514                                ; $44f4: $18 $1e

jr_016_44f6:
    ld a, [$c482]                                 ; $44f6: $fa $82 $c4
    and $0c                                       ; $44f9: $e6 $0c
    or d                                          ; $44fb: $b2
    ld d, a                                       ; $44fc: $57
    ld a, [$c483]                                 ; $44fd: $fa $83 $c4
    and $0c                                       ; $4500: $e6 $0c
    or e                                          ; $4502: $b3
    ld e, a                                       ; $4503: $5f
    jr jr_016_4514                                ; $4504: $18 $0e

jr_016_4506:
    ld a, [$c484]                                 ; $4506: $fa $84 $c4
    and $0c                                       ; $4509: $e6 $0c
    or d                                          ; $450b: $b2
    ld d, a                                       ; $450c: $57
    ld a, [$c485]                                 ; $450d: $fa $85 $c4
    and $0c                                       ; $4510: $e6 $0c
    or e                                          ; $4512: $b3
    ld e, a                                       ; $4513: $5f

jr_016_4514:
    ld a, [hl+]                                   ; $4514: $2a
    cp c                                          ; $4515: $b9
    jr z, jr_016_4529                             ; $4516: $28 $11

    cp b                                          ; $4518: $b8
    jr z, jr_016_4539                             ; $4519: $28 $1e

    cp $0f                                        ; $451b: $fe $0f
    jr nz, jr_016_4549                            ; $451d: $20 $2a

    ld a, $03                                     ; $451f: $3e $03
    or d                                          ; $4521: $b2
    ld d, a                                       ; $4522: $57
    ld a, $03                                     ; $4523: $3e $03
    or e                                          ; $4525: $b3
    ld e, a                                       ; $4526: $5f
    jr jr_016_4557                                ; $4527: $18 $2e

jr_016_4529:
    ld a, [$c480]                                 ; $4529: $fa $80 $c4
    and $03                                       ; $452c: $e6 $03
    or d                                          ; $452e: $b2
    ld d, a                                       ; $452f: $57
    ld a, [$c481]                                 ; $4530: $fa $81 $c4
    and $03                                       ; $4533: $e6 $03
    or e                                          ; $4535: $b3
    ld e, a                                       ; $4536: $5f
    jr jr_016_4557                                ; $4537: $18 $1e

jr_016_4539:
    ld a, [$c482]                                 ; $4539: $fa $82 $c4
    and $03                                       ; $453c: $e6 $03
    or d                                          ; $453e: $b2
    ld d, a                                       ; $453f: $57
    ld a, [$c483]                                 ; $4540: $fa $83 $c4
    and $03                                       ; $4543: $e6 $03
    or e                                          ; $4545: $b3
    ld e, a                                       ; $4546: $5f
    jr jr_016_4557                                ; $4547: $18 $0e

jr_016_4549:
    ld a, [$c484]                                 ; $4549: $fa $84 $c4
    and $03                                       ; $454c: $e6 $03
    or d                                          ; $454e: $b2
    ld d, a                                       ; $454f: $57
    ld a, [$c485]                                 ; $4550: $fa $85 $c4
    and $03                                       ; $4553: $e6 $03
    or e                                          ; $4555: $b3
    ld e, a                                       ; $4556: $5f

jr_016_4557:
    ld a, l                                       ; $4557: $7d
    ld [$c486], a                                 ; $4558: $ea $86 $c4
    ld a, h                                       ; $455b: $7c
    ld [$c487], a                                 ; $455c: $ea $87 $c4
    pop hl                                        ; $455f: $e1
    ld a, d                                       ; $4560: $7a
    ld [hl+], a                                   ; $4561: $22
    ld a, e                                       ; $4562: $7b
    ld [hl+], a                                   ; $4563: $22
    ld e, l                                       ; $4564: $5d
    ld d, h                                       ; $4565: $54
    ret                                           ; $4566: $c9


    db $00, $00, $00, $00, $00, $00, $20, $20, $01, $01, $08, $08, $00, $00, $40, $40
    db $12, $12, $08, $08, $20, $20, $84, $84, $40, $40, $12, $12, $80, $80, $28, $28
    db $04, $04, $88, $88, $42, $42, $90, $90, $44, $44, $12, $12, $48, $48, $15, $15
    db $44, $44, $a9, $a9, $a5, $a5, $4a, $4a, $90, $90, $54, $54, $69, $69, $9a, $9a
    db $64, $64, $ad, $ad, $d2, $d2, $6a, $6a, $ad, $ad, $d2, $d2, $35, $35, $4d, $4d
    db $ea, $ea, $37, $37, $52, $52, $ec, $ec, $db, $db, $6f, $6f, $d2, $d2, $77, $77
    db $ba, $ba, $ee, $ee, $7b, $7b, $5d, $5d, $95, $95, $f7, $f7, $ad, $ad, $77, $77
    db $a6, $a6, $ba, $ba, $d6, $d6, $7b, $7b, $aa, $aa, $4d, $4d, $94, $94, $a2, $a2
    db $00, $00, $00, $00, $00, $00, $20, $20, $01, $01, $08, $08, $00, $00, $40, $40
    db $12, $12, $08, $08, $20, $20, $84, $84, $40, $40, $12, $12, $82, $82, $08, $08
    db $a0, $a0, $48, $48, $02, $02, $90, $90, $a4, $a4, $12, $12, $4a, $4a, $51, $51
    db $84, $84, $2a, $2a, $45, $45, $6b, $6b, $92, $92, $54, $54, $4d, $4d, $9a, $9a
    db $64, $64, $ad, $ad, $93, $93, $6a, $6a, $ad, $ad, $d2, $d2, $75, $75, $aa, $aa
    db $6d, $6d, $35, $35, $d2, $d2, $ed, $ed, $bb, $bb, $6b, $6b, $de, $de, $77, $77
    db $aa, $aa, $f6, $f6, $7b, $7b, $5d, $5d, $f5, $f5, $b7, $b7, $ab, $ab, $5d, $5d
    db $d5, $d5, $76, $76, $ad, $ad, $56, $56, $52, $52, $2b, $2b, $ac, $ac, $12, $12
    db $00, $00, $00, $00, $00, $00, $04, $04, $00, $00, $21, $21, $00, $00, $88, $88
    db $12, $12, $08, $08, $20, $20, $84, $84, $40, $40, $12, $12, $80, $80, $28, $28
    db $a4, $a4, $09, $09, $41, $41, $54, $54, $84, $84, $12, $12, $48, $48, $51, $51
    db $84, $84, $22, $22, $55, $55, $12, $12, $aa, $aa, $8d, $8d, $55, $55, $da, $da
    db $a5, $a5, $29, $29, $d6, $d6, $6a, $6a, $ad, $ad, $d3, $d3, $35, $35, $aa, $aa
    db $ee, $ee, $75, $75, $db, $db, $65, $65, $b6, $b6, $6b, $6b, $da, $da, $77, $77
    db $bb, $bb, $ee, $ee, $5d, $5d, $55, $55, $bb, $bb, $ea, $ea, $ad, $ad, $7e, $7e
    db $d5, $d5, $dd, $dd, $aa, $aa, $ab, $ab, $55, $55, $61, $61, $94, $94, $22, $22
    db $00, $00, $00, $00, $00, $00, $20, $20, $01, $01, $08, $08, $00, $00, $40, $40
    db $12, $12, $08, $08, $20, $20, $84, $84, $40, $40, $12, $12, $80, $80, $29, $29
    db $80, $80, $28, $28, $0a, $0a, $40, $40, $94, $94, $51, $51, $49, $49, $14, $14
    db $85, $85, $28, $28, $56, $56, $42, $42, $a9, $a9, $64, $64, $59, $59, $ea, $ea
    db $56, $56, $b5, $b5, $ca, $ca, $6e, $6e, $95, $95, $4a, $4a, $75, $75, $cb, $cb
    db $6c, $6c, $95, $95, $b3, $b3, $6d, $6d, $bb, $bb, $ef, $ef, $d2, $d2, $77, $77
    db $2a, $2a, $f6, $f6, $ab, $ab, $5d, $5d, $57, $57, $ee, $ee, $ab, $ab, $dd, $dd
    db $af, $af, $aa, $aa, $d6, $d6, $73, $73, $5d, $5d, $4a, $4a, $b4, $b4, $92, $92

    nop                                           ; $4767: $00
    nop                                           ; $4768: $00
    nop                                           ; $4769: $00
    nop                                           ; $476a: $00
    nop                                           ; $476b: $00
    nop                                           ; $476c: $00
    nop                                           ; $476d: $00
    nop                                           ; $476e: $00
    ld [bc], a                                    ; $476f: $02
    ld [bc], a                                    ; $4770: $02
    jr nz, jr_016_4793                            ; $4771: $20 $20

    nop                                           ; $4773: $00
    nop                                           ; $4774: $00
    nop                                           ; $4775: $00
    nop                                           ; $4776: $00
    nop                                           ; $4777: $00
    nop                                           ; $4778: $00
    adc b                                         ; $4779: $88
    adc b                                         ; $477a: $88
    nop                                           ; $477b: $00
    nop                                           ; $477c: $00
    ld [$4008], sp                                ; $477d: $08 $08 $40
    ld b, b                                       ; $4780: $40
    jr nz, jr_016_47a3                            ; $4781: $20 $20

    inc b                                         ; $4783: $04
    inc b                                         ; $4784: $04
    ld de, $0811                                  ; $4785: $11 $11 $08
    ld [$8080], sp                                ; $4788: $08 $80 $80
    ld bc, $0001                                  ; $478b: $01 $01 $00
    nop                                           ; $478e: $00
    ld de, $0011                                  ; $478f: $11 $11 $00
    nop                                           ; $4792: $00

jr_016_4793:
    jr nz, @+$22                                  ; $4793: $20 $20

    adc c                                         ; $4795: $89
    adc c                                         ; $4796: $89
    ld [bc], a                                    ; $4797: $02
    ld [bc], a                                    ; $4798: $02
    ld de, $0011                                  ; $4799: $11 $11 $00
    nop                                           ; $479c: $00
    adc b                                         ; $479d: $88
    adc b                                         ; $479e: $88
    ld bc, $0401                                  ; $479f: $01 $01 $04
    inc b                                         ; $47a2: $04

jr_016_47a3:
    and b                                         ; $47a3: $a0
    and b                                         ; $47a4: $a0
    inc h                                         ; $47a5: $24
    inc h                                         ; $47a6: $24
    ld [$2008], sp                                ; $47a7: $08 $08 $20
    jr nz, jr_016_47b6                            ; $47aa: $20 $0a

    ld a, [bc]                                    ; $47ac: $0a
    jr jr_016_47c7                                ; $47ad: $18 $18

    ld b, c                                       ; $47af: $41
    ld b, c                                       ; $47b0: $41
    ld [bc], a                                    ; $47b1: $02
    ld [bc], a                                    ; $47b2: $02
    ld hl, $4821                                  ; $47b3: $21 $21 $48

jr_016_47b6:
    ld c, b                                       ; $47b6: $48
    ld [bc], a                                    ; $47b7: $02
    ld [bc], a                                    ; $47b8: $02
    inc d                                         ; $47b9: $14
    inc d                                         ; $47ba: $14
    ld c, d                                       ; $47bb: $4a
    ld c, d                                       ; $47bc: $4a
    jr nz, jr_016_47df                            ; $47bd: $20 $20

    add l                                         ; $47bf: $85
    add l                                         ; $47c0: $85
    inc sp                                        ; $47c1: $33
    inc sp                                        ; $47c2: $33
    ld b, b                                       ; $47c3: $40
    ld b, b                                       ; $47c4: $40
    ld a, [hl+]                                   ; $47c5: $2a
    ld a, [hl+]                                   ; $47c6: $2a

jr_016_47c7:
    sbc b                                         ; $47c7: $98
    sbc b                                         ; $47c8: $98
    ld b, d                                       ; $47c9: $42
    ld b, d                                       ; $47ca: $42
    sbc b                                         ; $47cb: $98
    sbc b                                         ; $47cc: $98
    ld b, l                                       ; $47cd: $45
    ld b, l                                       ; $47ce: $45
    db $10                                        ; $47cf: $10
    db $10                                        ; $47d0: $10
    ld c, c                                       ; $47d1: $49
    ld c, c                                       ; $47d2: $49
    xor d                                         ; $47d3: $aa
    xor d                                         ; $47d4: $aa
    ld e, b                                       ; $47d5: $58
    ld e, b                                       ; $47d6: $58
    ld bc, $a401                                  ; $47d7: $01 $01 $a4
    and h                                         ; $47da: $a4
    ld h, d                                       ; $47db: $62
    ld h, d                                       ; $47dc: $62
    ld b, $06                                     ; $47dd: $06 $06

jr_016_47df:
    sub b                                         ; $47df: $90
    sub b                                         ; $47e0: $90
    ld c, d                                       ; $47e1: $4a
    ld c, d                                       ; $47e2: $4a
    inc d                                         ; $47e3: $14
    inc d                                         ; $47e4: $14
    adc [hl]                                      ; $47e5: $8e
    adc [hl]                                      ; $47e6: $8e
    nop                                           ; $47e7: $00
    nop                                           ; $47e8: $00
    nop                                           ; $47e9: $00
    nop                                           ; $47ea: $00
    nop                                           ; $47eb: $00
    nop                                           ; $47ec: $00
    nop                                           ; $47ed: $00
    nop                                           ; $47ee: $00
    nop                                           ; $47ef: $00
    nop                                           ; $47f0: $00
    add c                                         ; $47f1: $81
    add c                                         ; $47f2: $81
    db $10                                        ; $47f3: $10
    db $10                                        ; $47f4: $10
    jr nz, jr_016_4817                            ; $47f5: $20 $20

    nop                                           ; $47f7: $00
    nop                                           ; $47f8: $00
    ld bc, $2001                                  ; $47f9: $01 $01 $20
    jr nz, @-$7e                                  ; $47fc: $20 $80

    add b                                         ; $47fe: $80
    ld [bc], a                                    ; $47ff: $02
    ld [bc], a                                    ; $4800: $02
    inc b                                         ; $4801: $04
    inc b                                         ; $4802: $04
    add b                                         ; $4803: $80
    add b                                         ; $4804: $80
    jr nz, jr_016_4827                            ; $4805: $20 $20

    nop                                           ; $4807: $00
    nop                                           ; $4808: $00
    ld b, b                                       ; $4809: $40
    ld b, b                                       ; $480a: $40
    inc h                                         ; $480b: $24
    inc h                                         ; $480c: $24
    ld h, b                                       ; $480d: $60
    ld h, b                                       ; $480e: $60
    nop                                           ; $480f: $00
    nop                                           ; $4810: $00
    ld [bc], a                                    ; $4811: $02
    ld [bc], a                                    ; $4812: $02
    ld [$0408], sp                                ; $4813: $08 $08 $04
    inc b                                         ; $4816: $04

jr_016_4817:
    adc h                                         ; $4817: $8c
    adc h                                         ; $4818: $8c
    add b                                         ; $4819: $80
    add b                                         ; $481a: $80
    ld [hl+], a                                   ; $481b: $22
    ld [hl+], a                                   ; $481c: $22
    inc b                                         ; $481d: $04
    inc b                                         ; $481e: $04
    db $10                                        ; $481f: $10
    db $10                                        ; $4820: $10
    ld bc, $2001                                  ; $4821: $01 $01 $20
    jr nz, @-$79                                  ; $4824: $20 $85

    add l                                         ; $4826: $85

jr_016_4827:
    ret nz                                        ; $4827: $c0

    ret nz                                        ; $4828: $c0

    ld [de], a                                    ; $4829: $12
    ld [de], a                                    ; $482a: $12
    ld b, b                                       ; $482b: $40
    ld b, b                                       ; $482c: $40
    inc b                                         ; $482d: $04
    inc b                                         ; $482e: $04
    add hl, bc                                    ; $482f: $09
    add hl, bc                                    ; $4830: $09
    ret nz                                        ; $4831: $c0

    ret nz                                        ; $4832: $c0

    sub d                                         ; $4833: $92
    sub d                                         ; $4834: $92
    dec b                                         ; $4835: $05
    dec b                                         ; $4836: $05
    inc de                                        ; $4837: $13
    inc de                                        ; $4838: $13
    ld e, b                                       ; $4839: $58
    ld e, b                                       ; $483a: $58
    and c                                         ; $483b: $a1
    and c                                         ; $483c: $a1
    ld l, c                                       ; $483d: $69
    ld l, c                                       ; $483e: $69
    inc b                                         ; $483f: $04
    inc b                                         ; $4840: $04
    db $10                                        ; $4841: $10
    db $10                                        ; $4842: $10
    dec [hl]                                      ; $4843: $35
    dec [hl]                                      ; $4844: $35
    ld c, h                                       ; $4845: $4c
    ld c, h                                       ; $4846: $4c
    ld [hl+], a                                   ; $4847: $22
    ld [hl+], a                                   ; $4848: $22
    db $e4                                        ; $4849: $e4
    db $e4                                        ; $484a: $e4
    ld d, d                                       ; $484b: $52
    ld d, d                                       ; $484c: $52
    ld h, $26                                     ; $484d: $26 $26
    adc b                                         ; $484f: $88
    adc b                                         ; $4850: $88
    and c                                         ; $4851: $a1
    and c                                         ; $4852: $a1
    inc b                                         ; $4853: $04
    inc b                                         ; $4854: $04
    sub d                                         ; $4855: $92
    sub d                                         ; $4856: $92
    ld b, [hl]                                    ; $4857: $46
    ld b, [hl]                                    ; $4858: $46
    ret nc                                        ; $4859: $d0

    ret nc                                        ; $485a: $d0

    dec b                                         ; $485b: $05
    dec b                                         ; $485c: $05
    sub e                                         ; $485d: $93
    sub e                                         ; $485e: $93
    jr z, jr_016_4889                             ; $485f: $28 $28

    ld a, [de]                                    ; $4861: $1a
    ld a, [de]                                    ; $4862: $1a
    add h                                         ; $4863: $84
    add h                                         ; $4864: $84
    db $10                                        ; $4865: $10
    stop                                          ; $4866: $10 $00
    nop                                           ; $4868: $00
    nop                                           ; $4869: $00
    nop                                           ; $486a: $00
    ld b, b                                       ; $486b: $40
    ld b, b                                       ; $486c: $40
    ld bc, $0001                                  ; $486d: $01 $01 $00
    nop                                           ; $4870: $00
    nop                                           ; $4871: $00
    nop                                           ; $4872: $00
    ld [bc], a                                    ; $4873: $02
    ld [bc], a                                    ; $4874: $02
    nop                                           ; $4875: $00
    nop                                           ; $4876: $00
    db $10                                        ; $4877: $10
    stop                                          ; $4878: $10 $00
    nop                                           ; $487a: $00
    inc b                                         ; $487b: $04
    inc b                                         ; $487c: $04
    ld [bc], a                                    ; $487d: $02
    ld [bc], a                                    ; $487e: $02
    ld [$0008], sp                                ; $487f: $08 $08 $00
    nop                                           ; $4882: $00
    add b                                         ; $4883: $80
    add b                                         ; $4884: $80
    ld bc, $5001                                  ; $4885: $01 $01 $50
    ld d, b                                       ; $4888: $50

jr_016_4889:
    ld [bc], a                                    ; $4889: $02
    ld [bc], a                                    ; $488a: $02
    add b                                         ; $488b: $80
    add b                                         ; $488c: $80
    db $10                                        ; $488d: $10
    stop                                          ; $488e: $10 $00
    nop                                           ; $4890: $00
    ld hl, $0021                                  ; $4891: $21 $21 $00
    nop                                           ; $4894: $00
    ld [bc], a                                    ; $4895: $02
    ld [bc], a                                    ; $4896: $02
    jr nz, @+$22                                  ; $4897: $20 $20

    inc d                                         ; $4899: $14
    inc d                                         ; $489a: $14
    jr nc, jr_016_48cd                            ; $489b: $30 $30

    nop                                           ; $489d: $00
    nop                                           ; $489e: $00
    ld [hl+], a                                   ; $489f: $22
    ld [hl+], a                                   ; $48a0: $22
    dec b                                         ; $48a1: $05
    dec b                                         ; $48a2: $05
    sub e                                         ; $48a3: $93
    sub e                                         ; $48a4: $93
    add b                                         ; $48a5: $80
    add b                                         ; $48a6: $80
    ld b, h                                       ; $48a7: $44
    ld b, h                                       ; $48a8: $44
    add b                                         ; $48a9: $80
    add b                                         ; $48aa: $80
    add hl, bc                                    ; $48ab: $09
    add hl, bc                                    ; $48ac: $09
    jr nz, jr_016_48cf                            ; $48ad: $20 $20

    ld a, [bc]                                    ; $48af: $0a
    ld a, [bc]                                    ; $48b0: $0a
    ld e, b                                       ; $48b1: $58
    ld e, b                                       ; $48b2: $58
    ld [bc], a                                    ; $48b3: $02
    ld [bc], a                                    ; $48b4: $02
    ld c, b                                       ; $48b5: $48
    ld c, b                                       ; $48b6: $48
    ld de, $3211                                  ; $48b7: $11 $11 $32
    ld [hl-], a                                   ; $48ba: $32
    ld bc, $8801                                  ; $48bb: $01 $01 $88
    adc b                                         ; $48be: $88
    inc d                                         ; $48bf: $14
    inc d                                         ; $48c0: $14
    adc l                                         ; $48c1: $8d
    adc l                                         ; $48c2: $8d
    jr nz, jr_016_48e5                            ; $48c3: $20 $20

    sub c                                         ; $48c5: $91
    sub c                                         ; $48c6: $91
    adc d                                         ; $48c7: $8a
    adc d                                         ; $48c8: $8a
    ld d, c                                       ; $48c9: $51
    ld d, c                                       ; $48ca: $51
    ld a, [de]                                    ; $48cb: $1a
    ld a, [de]                                    ; $48cc: $1a

jr_016_48cd:
    add h                                         ; $48cd: $84
    add h                                         ; $48ce: $84

jr_016_48cf:
    ld d, b                                       ; $48cf: $50
    ld d, b                                       ; $48d0: $50
    push bc                                       ; $48d1: $c5
    push bc                                       ; $48d2: $c5
    sbc b                                         ; $48d3: $98
    sbc b                                         ; $48d4: $98
    ld c, b                                       ; $48d5: $48
    ld c, b                                       ; $48d6: $48
    dec d                                         ; $48d7: $15
    dec d                                         ; $48d8: $15
    sub [hl]                                      ; $48d9: $96
    sub [hl]                                      ; $48da: $96
    ld c, [hl]                                    ; $48db: $4e
    ld c, [hl]                                    ; $48dc: $4e
    sub h                                         ; $48dd: $94
    sub h                                         ; $48de: $94
    ld b, b                                       ; $48df: $40
    ld b, b                                       ; $48e0: $40
    adc c                                         ; $48e1: $89
    adc c                                         ; $48e2: $89
    inc h                                         ; $48e3: $24
    inc h                                         ; $48e4: $24

jr_016_48e5:
    ld b, c                                       ; $48e5: $41
    ld b, c                                       ; $48e6: $41
    nop                                           ; $48e7: $00
    nop                                           ; $48e8: $00
    nop                                           ; $48e9: $00
    nop                                           ; $48ea: $00
    nop                                           ; $48eb: $00
    nop                                           ; $48ec: $00
    ld [bc], a                                    ; $48ed: $02
    ld [bc], a                                    ; $48ee: $02
    nop                                           ; $48ef: $00
    nop                                           ; $48f0: $00
    ld bc, $4001                                  ; $48f1: $01 $01 $40
    ld b, b                                       ; $48f4: $40
    nop                                           ; $48f5: $00
    nop                                           ; $48f6: $00
    inc b                                         ; $48f7: $04
    inc b                                         ; $48f8: $04
    nop                                           ; $48f9: $00
    nop                                           ; $48fa: $00
    db $10                                        ; $48fb: $10
    db $10                                        ; $48fc: $10
    ld bc, $0201                                  ; $48fd: $01 $01 $02
    ld [bc], a                                    ; $4900: $02
    nop                                           ; $4901: $00
    nop                                           ; $4902: $00
    nop                                           ; $4903: $00
    nop                                           ; $4904: $00
    jr nz, jr_016_4927                            ; $4905: $20 $20

    nop                                           ; $4907: $00
    nop                                           ; $4908: $00
    ld a, [bc]                                    ; $4909: $0a
    ld a, [bc]                                    ; $490a: $0a
    ld b, h                                       ; $490b: $44
    ld b, h                                       ; $490c: $44
    nop                                           ; $490d: $00
    nop                                           ; $490e: $00
    add b                                         ; $490f: $80
    add b                                         ; $4910: $80
    ld b, l                                       ; $4911: $45
    ld b, l                                       ; $4912: $45
    ldh [$e0], a                                  ; $4913: $e0 $e0
    inc b                                         ; $4915: $04
    inc b                                         ; $4916: $04
    ld b, b                                       ; $4917: $40
    ld b, b                                       ; $4918: $40
    ld [$4108], sp                                ; $4919: $08 $08 $41
    ld b, c                                       ; $491c: $41
    ld h, d                                       ; $491d: $62
    ld h, d                                       ; $491e: $62
    ld bc, $0401                                  ; $491f: $01 $01 $04
    inc b                                         ; $4922: $04
    jr nz, jr_016_4945                            ; $4923: $20 $20

    nop                                           ; $4925: $00
    nop                                           ; $4926: $00

jr_016_4927:
    add hl, bc                                    ; $4927: $09
    add hl, bc                                    ; $4928: $09
    sub b                                         ; $4929: $90
    sub b                                         ; $492a: $90
    add b                                         ; $492b: $80
    add b                                         ; $492c: $80
    dec b                                         ; $492d: $05
    dec b                                         ; $492e: $05
    ld d, d                                       ; $492f: $52
    ld d, d                                       ; $4930: $52
    nop                                           ; $4931: $00
    nop                                           ; $4932: $00
    ld [hl+], a                                   ; $4933: $22
    ld [hl+], a                                   ; $4934: $22
    ld b, l                                       ; $4935: $45
    ld b, l                                       ; $4936: $45
    inc bc                                        ; $4937: $03
    inc bc                                        ; $4938: $03
    sub b                                         ; $4939: $90
    sub b                                         ; $493a: $90
    ld hl, $1421                                  ; $493b: $21 $21 $14
    inc d                                         ; $493e: $14
    adc b                                         ; $493f: $88
    adc b                                         ; $4940: $88
    ld d, c                                       ; $4941: $51
    ld d, c                                       ; $4942: $51
    inc b                                         ; $4943: $04
    inc b                                         ; $4944: $04

jr_016_4945:
    ld d, [hl]                                    ; $4945: $56
    ld d, [hl]                                    ; $4946: $56
    or b                                          ; $4947: $b0
    or b                                          ; $4948: $b0
    add h                                         ; $4949: $84
    add h                                         ; $494a: $84
    ld d, c                                       ; $494b: $51
    ld d, c                                       ; $494c: $51
    ld h, h                                       ; $494d: $64
    ld h, h                                       ; $494e: $64
    adc d                                         ; $494f: $8a
    adc d                                         ; $4950: $8a
    sub b                                         ; $4951: $90
    sub b                                         ; $4952: $90
    ld a, [hl+]                                   ; $4953: $2a
    ld a, [hl+]                                   ; $4954: $2a
    sbc b                                         ; $4955: $98
    sbc b                                         ; $4956: $98
    ld [bc], a                                    ; $4957: $02
    ld [bc], a                                    ; $4958: $02
    ld c, d                                       ; $4959: $4a
    ld c, d                                       ; $495a: $4a
    xor b                                         ; $495b: $a8
    xor b                                         ; $495c: $a8
    ld h, d                                       ; $495d: $62
    ld h, d                                       ; $495e: $62
    dec b                                         ; $495f: $05
    dec b                                         ; $4960: $05
    daa                                           ; $4961: $27
    daa                                           ; $4962: $27
    pop bc                                        ; $4963: $c1
    pop bc                                        ; $4964: $c1
    ld a, [hl+]                                   ; $4965: $2a
    ld a, [hl+]                                   ; $4966: $2a

    db $a4, $00, $da, $00, $65, $00

    sub [hl]                                      ; $496d: $96
    nop                                           ; $496e: $00
    db $db                                        ; $496f: $db
    nop                                           ; $4970: $00
    or l                                          ; $4971: $b5
    nop                                           ; $4972: $00
    ld e, a                                       ; $4973: $5f
    nop                                           ; $4974: $00
    db $eb                                        ; $4975: $eb
    nop                                           ; $4976: $00

    db $55, $00, $be, $00, $eb, $00, $57, $00, $fa, $00, $b5, $00, $5f, $00, $fb, $00
    db $d5, $00, $ee, $00, $7d, $00, $b6, $00, $ef, $00, $bd, $00

    ld e, a                                       ; $4993: $5f
    nop                                           ; $4994: $00
    ei                                            ; $4995: $fb
    nop                                           ; $4996: $00
    push af                                       ; $4997: $f5
    nop                                           ; $4998: $00
    rst $38                                       ; $4999: $ff
    nop                                           ; $499a: $00
    rst $28                                       ; $499b: $ef
    nop                                           ; $499c: $00
    sub $00                                       ; $499d: $d6 $00
    rst $38                                       ; $499f: $ff
    nop                                           ; $49a0: $00
    cp l                                          ; $49a1: $bd
    nop                                           ; $49a2: $00
    ld e, a                                       ; $49a3: $5f
    nop                                           ; $49a4: $00
    ei                                            ; $49a5: $fb
    nop                                           ; $49a6: $00
    push af                                       ; $49a7: $f5
    nop                                           ; $49a8: $00
    rst $38                                       ; $49a9: $ff
    nop                                           ; $49aa: $00
    rst $38                                       ; $49ab: $ff
    nop                                           ; $49ac: $00
    rst $10                                       ; $49ad: $d7
    nop                                           ; $49ae: $00
    rst $38                                       ; $49af: $ff
    nop                                           ; $49b0: $00
    cp l                                          ; $49b1: $bd
    nop                                           ; $49b2: $00
    ld a, a                                       ; $49b3: $7f
    nop                                           ; $49b4: $00
    ei                                            ; $49b5: $fb
    nop                                           ; $49b6: $00
    push af                                       ; $49b7: $f5
    nop                                           ; $49b8: $00
    rst $38                                       ; $49b9: $ff
    nop                                           ; $49ba: $00
    rst $38                                       ; $49bb: $ff
    nop                                           ; $49bc: $00
    ld a, [$ff00]                                 ; $49bd: $fa $00 $ff
    nop                                           ; $49c0: $00
    cp a                                          ; $49c1: $bf
    nop                                           ; $49c2: $00
    ld e, a                                       ; $49c3: $5f
    nop                                           ; $49c4: $00
    ei                                            ; $49c5: $fb
    nop                                           ; $49c6: $00
    push af                                       ; $49c7: $f5
    nop                                           ; $49c8: $00
    rst $38                                       ; $49c9: $ff
    nop                                           ; $49ca: $00
    rst $38                                       ; $49cb: $ff
    nop                                           ; $49cc: $00
    ei                                            ; $49cd: $fb
    nop                                           ; $49ce: $00
    or $00                                        ; $49cf: $f6 $00
    sbc a                                         ; $49d1: $9f
    nop                                           ; $49d2: $00
    ld l, a                                       ; $49d3: $6f
    nop                                           ; $49d4: $00
    rst $38                                       ; $49d5: $ff
    nop                                           ; $49d6: $00
    rst $38                                       ; $49d7: $ff
    nop                                           ; $49d8: $00
    jp hl                                         ; $49d9: $e9


    nop                                           ; $49da: $00
    rst $38                                       ; $49db: $ff
    nop                                           ; $49dc: $00
    rst $18                                       ; $49dd: $df
    nop                                           ; $49de: $00
    rst $38                                       ; $49df: $ff
    nop                                           ; $49e0: $00
    rst $38                                       ; $49e1: $ff
    nop                                           ; $49e2: $00
    ld a, a                                       ; $49e3: $7f
    nop                                           ; $49e4: $00
    rst $38                                       ; $49e5: $ff
    nop                                           ; $49e6: $00

    db $a4, $00, $da, $00, $65, $00, $96, $00, $db, $00

    or l                                          ; $49f1: $b5
    nop                                           ; $49f2: $00
    ld e, a                                       ; $49f3: $5f
    nop                                           ; $49f4: $00

    db $eb, $00, $55, $00, $be, $00, $eb, $00, $57, $00, $fa, $00, $b5, $00, $5f, $00
    db $fb, $00, $d5, $00, $ee, $00, $7d, $00, $b6, $00, $ef, $00

    cp l                                          ; $4a11: $bd
    nop                                           ; $4a12: $00
    ld e, a                                       ; $4a13: $5f
    nop                                           ; $4a14: $00
    ei                                            ; $4a15: $fb
    nop                                           ; $4a16: $00
    push af                                       ; $4a17: $f5
    nop                                           ; $4a18: $00
    rst $38                                       ; $4a19: $ff
    nop                                           ; $4a1a: $00
    rst $28                                       ; $4a1b: $ef
    nop                                           ; $4a1c: $00
    sub $00                                       ; $4a1d: $d6 $00
    rst $38                                       ; $4a1f: $ff
    nop                                           ; $4a20: $00
    cp l                                          ; $4a21: $bd
    nop                                           ; $4a22: $00
    ld e, a                                       ; $4a23: $5f
    nop                                           ; $4a24: $00
    ei                                            ; $4a25: $fb
    nop                                           ; $4a26: $00
    push af                                       ; $4a27: $f5
    nop                                           ; $4a28: $00
    rst $38                                       ; $4a29: $ff
    nop                                           ; $4a2a: $00
    rst $38                                       ; $4a2b: $ff
    nop                                           ; $4a2c: $00
    rst $10                                       ; $4a2d: $d7
    nop                                           ; $4a2e: $00
    rst $38                                       ; $4a2f: $ff
    nop                                           ; $4a30: $00
    cp l                                          ; $4a31: $bd
    nop                                           ; $4a32: $00
    ld a, a                                       ; $4a33: $7f
    nop                                           ; $4a34: $00
    ei                                            ; $4a35: $fb
    nop                                           ; $4a36: $00
    push af                                       ; $4a37: $f5
    nop                                           ; $4a38: $00
    rst $38                                       ; $4a39: $ff
    nop                                           ; $4a3a: $00
    rst $38                                       ; $4a3b: $ff
    nop                                           ; $4a3c: $00
    ld a, [$ff00]                                 ; $4a3d: $fa $00 $ff
    nop                                           ; $4a40: $00
    cp a                                          ; $4a41: $bf
    nop                                           ; $4a42: $00
    ld e, a                                       ; $4a43: $5f
    nop                                           ; $4a44: $00
    ei                                            ; $4a45: $fb
    nop                                           ; $4a46: $00
    push af                                       ; $4a47: $f5
    nop                                           ; $4a48: $00
    rst $38                                       ; $4a49: $ff
    nop                                           ; $4a4a: $00
    rst $38                                       ; $4a4b: $ff
    nop                                           ; $4a4c: $00
    ei                                            ; $4a4d: $fb
    nop                                           ; $4a4e: $00
    or $00                                        ; $4a4f: $f6 $00
    sbc a                                         ; $4a51: $9f
    nop                                           ; $4a52: $00
    ld l, a                                       ; $4a53: $6f
    nop                                           ; $4a54: $00
    rst $38                                       ; $4a55: $ff
    nop                                           ; $4a56: $00
    rst $38                                       ; $4a57: $ff
    nop                                           ; $4a58: $00
    jp hl                                         ; $4a59: $e9


    nop                                           ; $4a5a: $00
    rst $38                                       ; $4a5b: $ff
    nop                                           ; $4a5c: $00
    rst $18                                       ; $4a5d: $df
    nop                                           ; $4a5e: $00
    rst $38                                       ; $4a5f: $ff
    nop                                           ; $4a60: $00
    rst $38                                       ; $4a61: $ff
    nop                                           ; $4a62: $00
    ld a, a                                       ; $4a63: $7f
    nop                                           ; $4a64: $00
    rst $38                                       ; $4a65: $ff
    nop                                           ; $4a66: $00

    db $a4, $00, $da, $00, $65, $00, $96, $00, $db, $00

    or l                                          ; $4a71: $b5
    nop                                           ; $4a72: $00
    ld e, a                                       ; $4a73: $5f
    nop                                           ; $4a74: $00
    db $eb                                        ; $4a75: $eb
    nop                                           ; $4a76: $00

    db $55, $00, $be, $00, $eb, $00, $57, $00, $fa, $00, $b5, $00, $5f, $00, $fb, $00
    db $d5, $00, $ee, $00, $7d, $00

    or [hl]                                       ; $4a8d: $b6
    nop                                           ; $4a8e: $00
    rst $28                                       ; $4a8f: $ef
    nop                                           ; $4a90: $00
    cp l                                          ; $4a91: $bd
    nop                                           ; $4a92: $00
    ld e, a                                       ; $4a93: $5f
    nop                                           ; $4a94: $00

    db $fb, $00

    push af                                       ; $4a97: $f5
    nop                                           ; $4a98: $00
    rst $38                                       ; $4a99: $ff
    nop                                           ; $4a9a: $00
    rst $28                                       ; $4a9b: $ef
    nop                                           ; $4a9c: $00
    sub $00                                       ; $4a9d: $d6 $00
    rst $38                                       ; $4a9f: $ff
    nop                                           ; $4aa0: $00
    cp l                                          ; $4aa1: $bd
    nop                                           ; $4aa2: $00
    ld e, a                                       ; $4aa3: $5f
    nop                                           ; $4aa4: $00
    ei                                            ; $4aa5: $fb
    nop                                           ; $4aa6: $00
    push af                                       ; $4aa7: $f5
    nop                                           ; $4aa8: $00
    rst $38                                       ; $4aa9: $ff
    nop                                           ; $4aaa: $00
    rst $38                                       ; $4aab: $ff
    nop                                           ; $4aac: $00
    rst $10                                       ; $4aad: $d7
    nop                                           ; $4aae: $00
    rst $38                                       ; $4aaf: $ff
    nop                                           ; $4ab0: $00
    cp l                                          ; $4ab1: $bd
    nop                                           ; $4ab2: $00
    ld a, a                                       ; $4ab3: $7f
    nop                                           ; $4ab4: $00
    ei                                            ; $4ab5: $fb
    nop                                           ; $4ab6: $00
    push af                                       ; $4ab7: $f5
    nop                                           ; $4ab8: $00
    rst $38                                       ; $4ab9: $ff
    nop                                           ; $4aba: $00
    rst $38                                       ; $4abb: $ff
    nop                                           ; $4abc: $00
    ld a, [$ff00]                                 ; $4abd: $fa $00 $ff
    nop                                           ; $4ac0: $00
    cp a                                          ; $4ac1: $bf
    nop                                           ; $4ac2: $00
    ld e, a                                       ; $4ac3: $5f
    nop                                           ; $4ac4: $00
    ei                                            ; $4ac5: $fb
    nop                                           ; $4ac6: $00
    push af                                       ; $4ac7: $f5
    nop                                           ; $4ac8: $00
    rst $38                                       ; $4ac9: $ff
    nop                                           ; $4aca: $00
    rst $38                                       ; $4acb: $ff
    nop                                           ; $4acc: $00
    ei                                            ; $4acd: $fb
    nop                                           ; $4ace: $00
    or $00                                        ; $4acf: $f6 $00
    sbc a                                         ; $4ad1: $9f
    nop                                           ; $4ad2: $00
    ld l, a                                       ; $4ad3: $6f
    nop                                           ; $4ad4: $00
    rst $38                                       ; $4ad5: $ff
    nop                                           ; $4ad6: $00
    rst $38                                       ; $4ad7: $ff
    nop                                           ; $4ad8: $00
    jp hl                                         ; $4ad9: $e9


    nop                                           ; $4ada: $00
    rst $38                                       ; $4adb: $ff
    nop                                           ; $4adc: $00
    rst $18                                       ; $4add: $df
    nop                                           ; $4ade: $00
    rst $38                                       ; $4adf: $ff
    nop                                           ; $4ae0: $00
    rst $38                                       ; $4ae1: $ff
    nop                                           ; $4ae2: $00
    ld a, a                                       ; $4ae3: $7f
    nop                                           ; $4ae4: $00
    rst $38                                       ; $4ae5: $ff
    nop                                           ; $4ae6: $00

    db $a4, $00, $da, $00, $65, $00

    sub [hl]                                      ; $4aed: $96
    nop                                           ; $4aee: $00
    db $db                                        ; $4aef: $db
    nop                                           ; $4af0: $00
    or l                                          ; $4af1: $b5
    nop                                           ; $4af2: $00

    db $5f, $00

    db $eb                                        ; $4af5: $eb
    nop                                           ; $4af6: $00
    ld d, l                                       ; $4af7: $55
    nop                                           ; $4af8: $00

    db $be, $00, $eb, $00, $57, $00, $fa, $00, $b5, $00, $5f, $00, $fb, $00, $d5, $00

    xor $00                                       ; $4b09: $ee $00
    ld a, l                                       ; $4b0b: $7d
    nop                                           ; $4b0c: $00
    or [hl]                                       ; $4b0d: $b6
    nop                                           ; $4b0e: $00
    rst $28                                       ; $4b0f: $ef
    nop                                           ; $4b10: $00

    db $bd, $00, $5f, $00

    ei                                            ; $4b15: $fb
    nop                                           ; $4b16: $00
    push af                                       ; $4b17: $f5
    nop                                           ; $4b18: $00
    rst $38                                       ; $4b19: $ff
    nop                                           ; $4b1a: $00
    rst $28                                       ; $4b1b: $ef
    nop                                           ; $4b1c: $00
    sub $00                                       ; $4b1d: $d6 $00
    rst $38                                       ; $4b1f: $ff
    nop                                           ; $4b20: $00
    cp l                                          ; $4b21: $bd
    nop                                           ; $4b22: $00
    ld e, a                                       ; $4b23: $5f
    nop                                           ; $4b24: $00
    ei                                            ; $4b25: $fb
    nop                                           ; $4b26: $00
    push af                                       ; $4b27: $f5
    nop                                           ; $4b28: $00
    rst $38                                       ; $4b29: $ff
    nop                                           ; $4b2a: $00
    rst $38                                       ; $4b2b: $ff
    nop                                           ; $4b2c: $00
    rst $10                                       ; $4b2d: $d7
    nop                                           ; $4b2e: $00
    rst $38                                       ; $4b2f: $ff
    nop                                           ; $4b30: $00
    cp l                                          ; $4b31: $bd
    nop                                           ; $4b32: $00
    ld a, a                                       ; $4b33: $7f
    nop                                           ; $4b34: $00
    ei                                            ; $4b35: $fb
    nop                                           ; $4b36: $00
    push af                                       ; $4b37: $f5
    nop                                           ; $4b38: $00
    rst $38                                       ; $4b39: $ff
    nop                                           ; $4b3a: $00
    rst $38                                       ; $4b3b: $ff
    nop                                           ; $4b3c: $00
    ld a, [$ff00]                                 ; $4b3d: $fa $00 $ff
    nop                                           ; $4b40: $00
    cp a                                          ; $4b41: $bf
    nop                                           ; $4b42: $00
    ld e, a                                       ; $4b43: $5f
    nop                                           ; $4b44: $00
    ei                                            ; $4b45: $fb
    nop                                           ; $4b46: $00
    push af                                       ; $4b47: $f5
    nop                                           ; $4b48: $00
    rst $38                                       ; $4b49: $ff
    nop                                           ; $4b4a: $00
    rst $38                                       ; $4b4b: $ff
    nop                                           ; $4b4c: $00
    ei                                            ; $4b4d: $fb
    nop                                           ; $4b4e: $00
    or $00                                        ; $4b4f: $f6 $00
    sbc a                                         ; $4b51: $9f
    nop                                           ; $4b52: $00
    ld l, a                                       ; $4b53: $6f
    nop                                           ; $4b54: $00
    rst $38                                       ; $4b55: $ff
    nop                                           ; $4b56: $00
    rst $38                                       ; $4b57: $ff
    nop                                           ; $4b58: $00
    jp hl                                         ; $4b59: $e9


    nop                                           ; $4b5a: $00
    rst $38                                       ; $4b5b: $ff
    nop                                           ; $4b5c: $00
    rst $18                                       ; $4b5d: $df
    nop                                           ; $4b5e: $00
    rst $38                                       ; $4b5f: $ff
    nop                                           ; $4b60: $00
    rst $38                                       ; $4b61: $ff
    nop                                           ; $4b62: $00
    ld a, a                                       ; $4b63: $7f
    nop                                           ; $4b64: $00
    rst $38                                       ; $4b65: $ff
    nop                                           ; $4b66: $00
    nop                                           ; $4b67: $00
    rst $38                                       ; $4b68: $ff

    db $00, $ff, $00, $f7, $00, $ff, $00, $fe, $00, $ff, $00, $ef, $00, $fb, $00, $ff
    db $00, $ef, $00, $be, $00, $ff

    nop                                           ; $4b7f: $00
    rst $10                                       ; $4b80: $d7

    db $00, $df, $00, $fa, $00, $bb, $00, $ee, $00, $eb, $00, $7f

    nop                                           ; $4b8d: $00
    ld e, a                                       ; $4b8e: $5f

    db $00, $f5, $00, $f7

    nop                                           ; $4b93: $00
    cp a                                          ; $4b94: $bf
    nop                                           ; $4b95: $00
    jp c, Jump_016_6e00                           ; $4b96: $da $00 $6e

    nop                                           ; $4b99: $00
    db $db                                        ; $4b9a: $db
    nop                                           ; $4b9b: $00
    ld e, a                                       ; $4b9c: $5f
    nop                                           ; $4b9d: $00
    db $ed                                        ; $4b9e: $ed
    nop                                           ; $4b9f: $00
    sub a                                         ; $4ba0: $97
    nop                                           ; $4ba1: $00
    or l                                          ; $4ba2: $b5
    nop                                           ; $4ba3: $00
    rst $18                                       ; $4ba4: $df
    nop                                           ; $4ba5: $00
    ld e, d                                       ; $4ba6: $5a
    nop                                           ; $4ba7: $00
    ld l, l                                       ; $4ba8: $6d
    nop                                           ; $4ba9: $00
    or l                                          ; $4baa: $b5
    nop                                           ; $4bab: $00
    ld e, e                                       ; $4bac: $5b
    nop                                           ; $4bad: $00
    call $ba00                                    ; $4bae: $cd $00 $ba
    nop                                           ; $4bb1: $00
    push de                                       ; $4bb2: $d5
    nop                                           ; $4bb3: $00
    ld h, l                                       ; $4bb4: $65
    nop                                           ; $4bb5: $00
    ld e, e                                       ; $4bb6: $5b
    nop                                           ; $4bb7: $00
    xor d                                         ; $4bb8: $aa
    nop                                           ; $4bb9: $00
    db $e4                                        ; $4bba: $e4
    nop                                           ; $4bbb: $00
    inc sp                                        ; $4bbc: $33
    nop                                           ; $4bbd: $00
    ld d, [hl]                                    ; $4bbe: $56
    nop                                           ; $4bbf: $00
    jp z, Jump_000_3500                           ; $4bc0: $ca $00 $35

    nop                                           ; $4bc3: $00
    and h                                         ; $4bc4: $a4
    nop                                           ; $4bc5: $00
    sub d                                         ; $4bc6: $92
    nop                                           ; $4bc7: $00
    ld c, e                                       ; $4bc8: $4b
    nop                                           ; $4bc9: $00
    inc [hl]                                      ; $4bca: $34
    nop                                           ; $4bcb: $00
    ld l, c                                       ; $4bcc: $69
    nop                                           ; $4bcd: $00
    adc d                                         ; $4bce: $8a
    nop                                           ; $4bcf: $00
    ld hl, $4500                                  ; $4bd0: $21 $00 $45
    nop                                           ; $4bd3: $00
    ld a, [hl+]                                   ; $4bd4: $2a
    nop                                           ; $4bd5: $00
    add d                                         ; $4bd6: $82
    nop                                           ; $4bd7: $00
    dec d                                         ; $4bd8: $15
    nop                                           ; $4bd9: $00
    ld c, b                                       ; $4bda: $48
    nop                                           ; $4bdb: $00
    dec b                                         ; $4bdc: $05
    nop                                           ; $4bdd: $00
    ld d, d                                       ; $4bde: $52
    nop                                           ; $4bdf: $00
    ld [$aa00], sp                                ; $4be0: $08 $00 $aa
    nop                                           ; $4be3: $00
    add b                                         ; $4be4: $80
    nop                                           ; $4be5: $00
    ld e, c                                       ; $4be6: $59

    db $00, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $bf, $00, $ff, $00, $fb
    db $00, $ff, $00, $ff

    nop                                           ; $4bfb: $00
    db $fe                                        ; $4bfc: $fe

    db $00, $ff, $00, $ff, $00, $bf, $00, $fb, $00, $ff

    nop                                           ; $4c07: $00
    rst $28                                       ; $4c08: $ef
    nop                                           ; $4c09: $00
    rst $38                                       ; $4c0a: $ff
    nop                                           ; $4c0b: $00
    ld a, a                                       ; $4c0c: $7f

    db $00, $df, $00, $fd

    nop                                           ; $4c11: $00
    cp a                                          ; $4c12: $bf
    nop                                           ; $4c13: $00
    rst $38                                       ; $4c14: $ff
    nop                                           ; $4c15: $00
    ei                                            ; $4c16: $fb
    nop                                           ; $4c17: $00
    rst $28                                       ; $4c18: $ef
    nop                                           ; $4c19: $00
    rst $38                                       ; $4c1a: $ff
    nop                                           ; $4c1b: $00
    ld [hl], a                                    ; $4c1c: $77
    nop                                           ; $4c1d: $00
    rst $18                                       ; $4c1e: $df
    nop                                           ; $4c1f: $00
    db $fd                                        ; $4c20: $fd
    nop                                           ; $4c21: $00
    rst $30                                       ; $4c22: $f7
    nop                                           ; $4c23: $00
    cp [hl]                                       ; $4c24: $be
    nop                                           ; $4c25: $00
    ei                                            ; $4c26: $fb
    nop                                           ; $4c27: $00
    rst $28                                       ; $4c28: $ef
    nop                                           ; $4c29: $00
    db $fd                                        ; $4c2a: $fd
    nop                                           ; $4c2b: $00
    ld [hl], a                                    ; $4c2c: $77
    nop                                           ; $4c2d: $00
    db $dd                                        ; $4c2e: $dd
    nop                                           ; $4c2f: $00
    cp $00                                        ; $4c30: $fe $00
    or a                                          ; $4c32: $b7
    nop                                           ; $4c33: $00
    xor $00                                       ; $4c34: $ee $00
    ld a, e                                       ; $4c36: $7b
    nop                                           ; $4c37: $00
    xor a                                         ; $4c38: $af
    nop                                           ; $4c39: $00
    db $fd                                        ; $4c3a: $fd
    nop                                           ; $4c3b: $00
    or a                                          ; $4c3c: $b7
    nop                                           ; $4c3d: $00
    ld [hl], a                                    ; $4c3e: $77
    nop                                           ; $4c3f: $00
    db $dd                                        ; $4c40: $dd
    nop                                           ; $4c41: $00
    ld a, e                                       ; $4c42: $7b
    nop                                           ; $4c43: $00
    sbc $00                                       ; $4c44: $de $00
    jp c, Jump_016_6b00                           ; $4c46: $da $00 $6b

    nop                                           ; $4c49: $00
    push de                                       ; $4c4a: $d5
    nop                                           ; $4c4b: $00
    ld c, l                                       ; $4c4c: $4d
    nop                                           ; $4c4d: $00
    xor d                                         ; $4c4e: $aa
    nop                                           ; $4c4f: $00
    ld e, e                                       ; $4c50: $5b
    nop                                           ; $4c51: $00
    and l                                         ; $4c52: $a5
    nop                                           ; $4c53: $00
    ld c, d                                       ; $4c54: $4a
    nop                                           ; $4c55: $00
    or d                                          ; $4c56: $b2
    nop                                           ; $4c57: $00
    ld d, h                                       ; $4c58: $54
    nop                                           ; $4c59: $00
    ld c, c                                       ; $4c5a: $49
    nop                                           ; $4c5b: $00
    dec [hl]                                      ; $4c5c: $35
    nop                                           ; $4c5d: $00
    ld d, d                                       ; $4c5e: $52
    nop                                           ; $4c5f: $00
    xor c                                         ; $4c60: $a9
    nop                                           ; $4c61: $00
    ld [hl+], a                                   ; $4c62: $22
    nop                                           ; $4c63: $00
    sub h                                         ; $4c64: $94
    nop                                           ; $4c65: $00
    xor l                                         ; $4c66: $ad

    db $00, $ff

    nop                                           ; $4c69: $00
    rst $38                                       ; $4c6a: $ff

    db $00, $f7, $00, $ff, $00, $fe, $00, $ff, $00, $ef

    nop                                           ; $4c75: $00
    ei                                            ; $4c76: $fb

    db $00, $ff

    nop                                           ; $4c79: $00
    rst $28                                       ; $4c7a: $ef
    nop                                           ; $4c7b: $00
    cp [hl]                                       ; $4c7c: $be
    nop                                           ; $4c7d: $00
    rst $38                                       ; $4c7e: $ff
    nop                                           ; $4c7f: $00
    rst $30                                       ; $4c80: $f7

    db $00, $be

    nop                                           ; $4c83: $00
    ei                                            ; $4c84: $fb
    nop                                           ; $4c85: $00
    ei                                            ; $4c86: $fb

    db $00, $6e, $00, $eb, $00, $7f

    nop                                           ; $4c8d: $00
    ld e, a                                       ; $4c8e: $5f
    nop                                           ; $4c8f: $00
    push af                                       ; $4c90: $f5
    nop                                           ; $4c91: $00
    or a                                          ; $4c92: $b7
    nop                                           ; $4c93: $00
    cp a                                          ; $4c94: $bf

    db $00, $da

    nop                                           ; $4c97: $00
    ld l, [hl]                                    ; $4c98: $6e
    nop                                           ; $4c99: $00
    db $db                                        ; $4c9a: $db
    nop                                           ; $4c9b: $00
    ld e, a                                       ; $4c9c: $5f
    nop                                           ; $4c9d: $00
    db $ed                                        ; $4c9e: $ed
    nop                                           ; $4c9f: $00
    sub a                                         ; $4ca0: $97
    nop                                           ; $4ca1: $00
    or h                                          ; $4ca2: $b4
    nop                                           ; $4ca3: $00
    sbc $00                                       ; $4ca4: $de $00
    ld e, e                                       ; $4ca6: $5b
    nop                                           ; $4ca7: $00
    ld l, l                                       ; $4ca8: $6d
    nop                                           ; $4ca9: $00
    or l                                          ; $4caa: $b5
    nop                                           ; $4cab: $00
    ld e, e                                       ; $4cac: $5b
    nop                                           ; $4cad: $00
    call $ba00                                    ; $4cae: $cd $00 $ba
    nop                                           ; $4cb1: $00
    push de                                       ; $4cb2: $d5
    nop                                           ; $4cb3: $00
    ld h, l                                       ; $4cb4: $65
    nop                                           ; $4cb5: $00
    ld e, e                                       ; $4cb6: $5b
    nop                                           ; $4cb7: $00
    xor d                                         ; $4cb8: $aa
    nop                                           ; $4cb9: $00
    call nc, $2300                                ; $4cba: $d4 $00 $23
    nop                                           ; $4cbd: $00
    ld d, [hl]                                    ; $4cbe: $56
    nop                                           ; $4cbf: $00
    jp z, Jump_000_3500                           ; $4cc0: $ca $00 $35

    nop                                           ; $4cc3: $00
    and h                                         ; $4cc4: $a4
    nop                                           ; $4cc5: $00
    sub d                                         ; $4cc6: $92
    nop                                           ; $4cc7: $00
    ld c, e                                       ; $4cc8: $4b
    nop                                           ; $4cc9: $00
    inc h                                         ; $4cca: $24
    nop                                           ; $4ccb: $00
    ld c, l                                       ; $4ccc: $4d
    nop                                           ; $4ccd: $00
    sub d                                         ; $4cce: $92
    nop                                           ; $4ccf: $00
    ld hl, $4a00                                  ; $4cd0: $21 $00 $4a
    nop                                           ; $4cd3: $00
    jr z, jr_016_4cd6                             ; $4cd4: $28 $00

jr_016_4cd6:
    add [hl]                                      ; $4cd6: $86
    nop                                           ; $4cd7: $00
    dec d                                         ; $4cd8: $15
    nop                                           ; $4cd9: $00
    ld d, b                                       ; $4cda: $50
    nop                                           ; $4cdb: $00
    dec b                                         ; $4cdc: $05
    nop                                           ; $4cdd: $00
    ld d, d                                       ; $4cde: $52
    nop                                           ; $4cdf: $00
    ld [$a000], sp                                ; $4ce0: $08 $00 $a0
    nop                                           ; $4ce3: $00
    adc d                                         ; $4ce4: $8a
    nop                                           ; $4ce5: $00
    ld e, b                                       ; $4ce6: $58

    db $00, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $bf, $00, $ff, $00, $ff
    db $00, $ff, $00, $ef, $00, $fe

    nop                                           ; $4cfd: $00
    rst $38                                       ; $4cfe: $ff
    nop                                           ; $4cff: $00
    rst $38                                       ; $4d00: $ff
    nop                                           ; $4d01: $00
    cp a                                          ; $4d02: $bf
    nop                                           ; $4d03: $00
    ei                                            ; $4d04: $fb

    db $00, $ff, $00, $ef

    nop                                           ; $4d09: $00
    rst $38                                       ; $4d0a: $ff
    nop                                           ; $4d0b: $00
    ld a, a                                       ; $4d0c: $7f
    nop                                           ; $4d0d: $00
    rst $18                                       ; $4d0e: $df
    nop                                           ; $4d0f: $00
    db $fd                                        ; $4d10: $fd

    db $00, $bf, $00, $ff, $00, $fb

    nop                                           ; $4d17: $00
    rst $28                                       ; $4d18: $ef
    nop                                           ; $4d19: $00
    rst $38                                       ; $4d1a: $ff
    nop                                           ; $4d1b: $00
    ld [hl], a                                    ; $4d1c: $77
    nop                                           ; $4d1d: $00
    rst $18                                       ; $4d1e: $df
    nop                                           ; $4d1f: $00
    db $fd                                        ; $4d20: $fd
    nop                                           ; $4d21: $00
    rst $30                                       ; $4d22: $f7
    nop                                           ; $4d23: $00
    cp [hl]                                       ; $4d24: $be
    nop                                           ; $4d25: $00
    ei                                            ; $4d26: $fb
    nop                                           ; $4d27: $00
    rst $28                                       ; $4d28: $ef
    nop                                           ; $4d29: $00
    db $fd                                        ; $4d2a: $fd
    nop                                           ; $4d2b: $00
    ld [hl], a                                    ; $4d2c: $77
    nop                                           ; $4d2d: $00
    db $dd                                        ; $4d2e: $dd
    nop                                           ; $4d2f: $00
    cp $00                                        ; $4d30: $fe $00
    or a                                          ; $4d32: $b7
    nop                                           ; $4d33: $00
    xor $00                                       ; $4d34: $ee $00
    ld a, e                                       ; $4d36: $7b
    nop                                           ; $4d37: $00
    xor a                                         ; $4d38: $af
    nop                                           ; $4d39: $00
    db $fd                                        ; $4d3a: $fd
    nop                                           ; $4d3b: $00
    or a                                          ; $4d3c: $b7
    nop                                           ; $4d3d: $00
    ld [hl], a                                    ; $4d3e: $77
    nop                                           ; $4d3f: $00
    db $dd                                        ; $4d40: $dd
    nop                                           ; $4d41: $00
    ld a, e                                       ; $4d42: $7b
    nop                                           ; $4d43: $00
    xor [hl]                                      ; $4d44: $ae
    nop                                           ; $4d45: $00
    jp c, $4b00                                   ; $4d46: $da $00 $4b

    nop                                           ; $4d49: $00
    or l                                          ; $4d4a: $b5
    nop                                           ; $4d4b: $00
    ld h, l                                       ; $4d4c: $65
    nop                                           ; $4d4d: $00
    or d                                          ; $4d4e: $b2
    nop                                           ; $4d4f: $00
    sub a                                         ; $4d50: $97
    nop                                           ; $4d51: $00
    dec l                                         ; $4d52: $2d
    nop                                           ; $4d53: $00
    jp z, $b200                                   ; $4d54: $ca $00 $b2

    nop                                           ; $4d57: $00
    ld d, l                                       ; $4d58: $55
    nop                                           ; $4d59: $00
    ld c, h                                       ; $4d5a: $4c
    nop                                           ; $4d5b: $00
    dec [hl]                                      ; $4d5c: $35
    nop                                           ; $4d5d: $00
    ld d, d                                       ; $4d5e: $52
    nop                                           ; $4d5f: $00
    adc b                                         ; $4d60: $88
    nop                                           ; $4d61: $00
    ld [hl+], a                                   ; $4d62: $22
    nop                                           ; $4d63: $00
    sub h                                         ; $4d64: $94
    nop                                           ; $4d65: $00
    and l                                         ; $4d66: $a5
    rst $38                                       ; $4d67: $ff
    nop                                           ; $4d68: $00
    rst $38                                       ; $4d69: $ff
    nop                                           ; $4d6a: $00
    halt                                          ; $4d6b: $76
    nop                                           ; $4d6c: $00

    db $ff, $00, $d3, $00, $ff, $00, $5a, $00, $ff, $00, $ca, $00

    rst $38                                       ; $4d79: $ff
    nop                                           ; $4d7a: $00
    ld d, [hl]                                    ; $4d7b: $56
    nop                                           ; $4d7c: $00
    rst $38                                       ; $4d7d: $ff
    nop                                           ; $4d7e: $00
    add hl, hl                                    ; $4d7f: $29
    nop                                           ; $4d80: $00
    rst $38                                       ; $4d81: $ff
    nop                                           ; $4d82: $00

    db $ac, $00, $ff, $00, $a8, $00, $77, $00, $a4, $00, $fb, $00, $52, $00, $bf, $00
    db $45, $00, $db, $00, $a8, $00, $77, $00, $a2, $00, $fd, $00, $52, $00, $bd, $00
    db $45, $00, $f6, $00, $a8, $00, $7b, $00, $a4, $00, $b9, $00, $52, $00, $2e, $00
    db $65, $00, $da, $00, $a8, $00, $77, $00, $a4, $00, $1b, $00, $52, $00, $b1, $00
    db $45, $00, $5a, $00, $88, $00, $61, $00, $2c, $00, $80, $00, $12, $00, $a5, $00
    db $41, $00, $d2, $00, $a8, $00, $26, $00, $84, $00, $68, $00, $44, $00, $a0, $00
    db $01, $00, $84, $00

    rst $38                                       ; $4de7: $ff
    nop                                           ; $4de8: $00
    rst $38                                       ; $4de9: $ff
    nop                                           ; $4dea: $00
    halt                                          ; $4deb: $76
    nop                                           ; $4dec: $00
    rst $38                                       ; $4ded: $ff
    nop                                           ; $4dee: $00
    db $d3                                        ; $4def: $d3
    nop                                           ; $4df0: $00

    db $ff, $00, $5a, $00, $ff, $00, $ca, $00

    rst $38                                       ; $4df9: $ff
    nop                                           ; $4dfa: $00
    ld d, [hl]                                    ; $4dfb: $56
    nop                                           ; $4dfc: $00
    rst $38                                       ; $4dfd: $ff
    nop                                           ; $4dfe: $00
    add hl, hl                                    ; $4dff: $29
    nop                                           ; $4e00: $00

    db $ff, $00

    xor h                                         ; $4e03: $ac
    nop                                           ; $4e04: $00
    rst $38                                       ; $4e05: $ff
    nop                                           ; $4e06: $00

    db $a8, $00, $77, $00, $a4, $00, $fb, $00, $52, $00, $bf, $00, $45, $00, $db, $00
    db $a8, $00, $77, $00, $a2, $00, $fd, $00, $52, $00, $bd, $00, $45, $00, $f6, $00
    db $a8, $00, $7b, $00, $a4, $00, $b9, $00, $52, $00, $2e, $00, $65, $00, $da, $00
    db $a8, $00, $77, $00, $a4, $00, $1b, $00, $52, $00, $b1, $00, $45, $00, $5a, $00
    db $88, $00, $61, $00, $2c, $00, $80, $00, $12, $00, $a5, $00, $41, $00, $d2, $00
    db $a8, $00, $26, $00, $84, $00, $68, $00, $44, $00, $a0, $00, $01, $00, $84, $00

    rst $38                                       ; $4e67: $ff
    nop                                           ; $4e68: $00
    rst $38                                       ; $4e69: $ff
    nop                                           ; $4e6a: $00
    halt                                          ; $4e6b: $76
    nop                                           ; $4e6c: $00
    rst $38                                       ; $4e6d: $ff
    nop                                           ; $4e6e: $00
    db $d3                                        ; $4e6f: $d3
    nop                                           ; $4e70: $00

    db $ff, $00, $5a, $00, $ff, $00, $ca, $00

    rst $38                                       ; $4e79: $ff
    nop                                           ; $4e7a: $00
    ld d, [hl]                                    ; $4e7b: $56
    nop                                           ; $4e7c: $00
    rst $38                                       ; $4e7d: $ff
    nop                                           ; $4e7e: $00
    add hl, hl                                    ; $4e7f: $29
    nop                                           ; $4e80: $00
    rst $38                                       ; $4e81: $ff
    nop                                           ; $4e82: $00
    xor h                                         ; $4e83: $ac
    nop                                           ; $4e84: $00

    db $ff, $00, $a8, $00, $77, $00, $a4, $00, $fb, $00, $52, $00, $bf, $00, $45, $00
    db $db, $00, $a8, $00, $77, $00, $a2, $00, $fd, $00, $52, $00, $bd, $00, $45, $00
    db $f6, $00, $a8, $00, $7b, $00, $a4, $00, $b9, $00, $52, $00, $2e, $00, $65, $00
    db $da, $00, $a8, $00, $77, $00, $a4, $00, $1b, $00, $52, $00, $b1, $00, $45, $00
    db $5a, $00, $88, $00, $61, $00, $2c, $00, $80, $00, $12, $00, $a5, $00, $41, $00
    db $d2, $00, $a8, $00, $26, $00, $84, $00, $68, $00, $44, $00, $a0, $00, $01, $00
    db $84, $00

    rst $38                                       ; $4ee7: $ff
    nop                                           ; $4ee8: $00
    rst $38                                       ; $4ee9: $ff
    nop                                           ; $4eea: $00
    halt                                          ; $4eeb: $76
    nop                                           ; $4eec: $00
    rst $38                                       ; $4eed: $ff
    nop                                           ; $4eee: $00
    db $d3                                        ; $4eef: $d3
    nop                                           ; $4ef0: $00
    rst $38                                       ; $4ef1: $ff
    nop                                           ; $4ef2: $00

    db $5a, $00, $ff, $00

    jp z, $ff00                                   ; $4ef7: $ca $00 $ff

    nop                                           ; $4efa: $00
    ld d, [hl]                                    ; $4efb: $56
    nop                                           ; $4efc: $00
    rst $38                                       ; $4efd: $ff
    nop                                           ; $4efe: $00
    add hl, hl                                    ; $4eff: $29
    nop                                           ; $4f00: $00
    rst $38                                       ; $4f01: $ff
    nop                                           ; $4f02: $00
    xor h                                         ; $4f03: $ac
    nop                                           ; $4f04: $00
    rst $38                                       ; $4f05: $ff
    nop                                           ; $4f06: $00
    xor b                                         ; $4f07: $a8
    nop                                           ; $4f08: $00

    db $77, $00, $a4, $00, $fb, $00, $52, $00, $bf, $00, $45, $00, $db, $00, $a8, $00
    db $77, $00, $a2, $00, $fd, $00, $52, $00, $bd, $00, $45, $00, $f6, $00, $a8, $00
    db $7b, $00, $a4, $00, $b9, $00, $52, $00, $2e, $00, $65, $00, $da, $00, $a8, $00
    db $77, $00, $a4, $00, $1b, $00, $52, $00, $b1, $00, $45, $00, $5a, $00, $88, $00
    db $61, $00, $2c, $00, $80, $00, $12, $00, $a5, $00, $41, $00, $d2, $00, $a8, $00
    db $26, $00, $84, $00, $68, $00, $44, $00, $a0, $00, $01, $00, $84, $00

    nop                                           ; $4f67: $00
    rst $38                                       ; $4f68: $ff
    nop                                           ; $4f69: $00
    rst $38                                       ; $4f6a: $ff
    nop                                           ; $4f6b: $00
    rst $38                                       ; $4f6c: $ff

    db $00, $fd, $00, $ff, $00, $ef

    nop                                           ; $4f73: $00
    rst $38                                       ; $4f74: $ff

    db $00, $ff, $00, $df

    nop                                           ; $4f79: $00
    rst $38                                       ; $4f7a: $ff
    nop                                           ; $4f7b: $00
    ei                                            ; $4f7c: $fb
    nop                                           ; $4f7d: $00
    rst $38                                       ; $4f7e: $ff
    nop                                           ; $4f7f: $00
    ld a, a                                       ; $4f80: $7f

    db $00, $ff, $00, $df, $00, $ff, $00, $ff, $00, $bf, $00, $fb, $00, $ff, $00, $ff
    db $00, $f7

    nop                                           ; $4f93: $00
    rst $38                                       ; $4f94: $ff
    nop                                           ; $4f95: $00
    db $dd                                        ; $4f96: $dd
    nop                                           ; $4f97: $00
    rst $38                                       ; $4f98: $ff
    nop                                           ; $4f99: $00
    rst $30                                       ; $4f9a: $f7
    nop                                           ; $4f9b: $00
    cp $00                                        ; $4f9c: $fe $00
    rst $38                                       ; $4f9e: $ff
    nop                                           ; $4f9f: $00
    cp a                                          ; $4fa0: $bf
    nop                                           ; $4fa1: $00
    or $00                                        ; $4fa2: $f6 $00
    rst $18                                       ; $4fa4: $df
    nop                                           ; $4fa5: $00
    db $fd                                        ; $4fa6: $fd
    nop                                           ; $4fa7: $00
    rst $38                                       ; $4fa8: $ff
    nop                                           ; $4fa9: $00
    or a                                          ; $4faa: $b7
    nop                                           ; $4fab: $00
    cp $00                                        ; $4fac: $fe $00
    db $eb                                        ; $4fae: $eb
    nop                                           ; $4faf: $00
    cp e                                          ; $4fb0: $bb
    nop                                           ; $4fb1: $00
    cp $00                                        ; $4fb2: $fe $00
    rst $10                                       ; $4fb4: $d7
    nop                                           ; $4fb5: $00
    ld a, l                                       ; $4fb6: $7d
    nop                                           ; $4fb7: $00
    ld l, a                                       ; $4fb8: $6f
    nop                                           ; $4fb9: $00
    sub $00                                       ; $4fba: $d6 $00
    rst $18                                       ; $4fbc: $df
    nop                                           ; $4fbd: $00
    ld [$af00], a                                 ; $4fbe: $ea $00 $af
    nop                                           ; $4fc1: $00
    ld [hl], a                                    ; $4fc2: $77
    nop                                           ; $4fc3: $00
    ld e, d                                       ; $4fc4: $5a
    nop                                           ; $4fc5: $00
    rst $10                                       ; $4fc6: $d7
    nop                                           ; $4fc7: $00
    ld h, l                                       ; $4fc8: $65
    nop                                           ; $4fc9: $00
    jp c, Jump_016_6a00                           ; $4fca: $da $00 $6a

    nop                                           ; $4fcd: $00
    and l                                         ; $4fce: $a5
    nop                                           ; $4fcf: $00
    sbc d                                         ; $4fd0: $9a
    nop                                           ; $4fd1: $00
    ld h, $00                                     ; $4fd2: $26 $00
    ld d, c                                       ; $4fd4: $51
    nop                                           ; $4fd5: $00
    adc d                                         ; $4fd6: $8a
    nop                                           ; $4fd7: $00
    ld d, d                                       ; $4fd8: $52
    nop                                           ; $4fd9: $00
    add l                                         ; $4fda: $85
    nop                                           ; $4fdb: $00
    sub b                                         ; $4fdc: $90
    nop                                           ; $4fdd: $00
    ld c, l                                       ; $4fde: $4d
    nop                                           ; $4fdf: $00
    add hl, hl                                    ; $4fe0: $29
    nop                                           ; $4fe1: $00
    and [hl]                                      ; $4fe2: $a6
    nop                                           ; $4fe3: $00
    ld e, c                                       ; $4fe4: $59
    nop                                           ; $4fe5: $00
    xor d                                         ; $4fe6: $aa
    nop                                           ; $4fe7: $00
    rst $38                                       ; $4fe8: $ff
    nop                                           ; $4fe9: $00
    rst $38                                       ; $4fea: $ff
    nop                                           ; $4feb: $00
    rst $38                                       ; $4fec: $ff
    nop                                           ; $4fed: $00
    db $fd                                        ; $4fee: $fd
    nop                                           ; $4fef: $00
    rst $38                                       ; $4ff0: $ff

    db $00, $ef

    nop                                           ; $4ff3: $00
    rst $38                                       ; $4ff4: $ff
    nop                                           ; $4ff5: $00
    rst $38                                       ; $4ff6: $ff

    db $00, $df

    nop                                           ; $4ff9: $00
    rst $38                                       ; $4ffa: $ff
    nop                                           ; $4ffb: $00
    ei                                            ; $4ffc: $fb
    nop                                           ; $4ffd: $00
    rst $38                                       ; $4ffe: $ff
    nop                                           ; $4fff: $00
    ld a, a                                       ; $5000: $7f

    db $00, $ff, $00, $df, $00, $ff, $00, $ff, $00, $bf, $00, $fb, $00, $ff, $00, $ff

    nop                                           ; $5011: $00
    rst $30                                       ; $5012: $f7
    nop                                           ; $5013: $00
    rst $38                                       ; $5014: $ff
    nop                                           ; $5015: $00
    db $dd                                        ; $5016: $dd
    nop                                           ; $5017: $00
    rst $38                                       ; $5018: $ff
    nop                                           ; $5019: $00
    rst $30                                       ; $501a: $f7
    nop                                           ; $501b: $00
    cp $00                                        ; $501c: $fe $00
    rst $38                                       ; $501e: $ff
    nop                                           ; $501f: $00
    cp a                                          ; $5020: $bf
    nop                                           ; $5021: $00
    or $00                                        ; $5022: $f6 $00
    rst $18                                       ; $5024: $df
    nop                                           ; $5025: $00
    db $fd                                        ; $5026: $fd
    nop                                           ; $5027: $00
    rst $38                                       ; $5028: $ff
    nop                                           ; $5029: $00
    or a                                          ; $502a: $b7
    nop                                           ; $502b: $00
    cp $00                                        ; $502c: $fe $00
    db $eb                                        ; $502e: $eb
    nop                                           ; $502f: $00
    cp e                                          ; $5030: $bb
    nop                                           ; $5031: $00
    cp $00                                        ; $5032: $fe $00
    rst $10                                       ; $5034: $d7
    nop                                           ; $5035: $00
    ld a, l                                       ; $5036: $7d
    nop                                           ; $5037: $00
    ld l, a                                       ; $5038: $6f
    nop                                           ; $5039: $00
    sub $00                                       ; $503a: $d6 $00
    rst $18                                       ; $503c: $df
    nop                                           ; $503d: $00
    ld [$af00], a                                 ; $503e: $ea $00 $af
    nop                                           ; $5041: $00
    ld [hl], a                                    ; $5042: $77
    nop                                           ; $5043: $00
    ld e, d                                       ; $5044: $5a
    nop                                           ; $5045: $00
    rst $10                                       ; $5046: $d7
    nop                                           ; $5047: $00
    ld h, l                                       ; $5048: $65
    nop                                           ; $5049: $00
    jp c, Jump_016_6a00                           ; $504a: $da $00 $6a

    nop                                           ; $504d: $00
    and l                                         ; $504e: $a5
    nop                                           ; $504f: $00
    sbc d                                         ; $5050: $9a
    nop                                           ; $5051: $00
    ld h, $00                                     ; $5052: $26 $00
    ld d, c                                       ; $5054: $51
    nop                                           ; $5055: $00
    adc d                                         ; $5056: $8a
    nop                                           ; $5057: $00
    ld c, d                                       ; $5058: $4a
    nop                                           ; $5059: $00
    or l                                          ; $505a: $b5
    nop                                           ; $505b: $00
    sub b                                         ; $505c: $90
    nop                                           ; $505d: $00
    ld b, l                                       ; $505e: $45
    nop                                           ; $505f: $00
    ld a, [hl+]                                   ; $5060: $2a
    nop                                           ; $5061: $00
    add $00                                       ; $5062: $c6 $00
    ld e, c                                       ; $5064: $59

    db $00, $aa

    nop                                           ; $5067: $00
    rst $38                                       ; $5068: $ff
    nop                                           ; $5069: $00
    rst $38                                       ; $506a: $ff
    nop                                           ; $506b: $00
    rst $38                                       ; $506c: $ff
    nop                                           ; $506d: $00
    db $fd                                        ; $506e: $fd
    nop                                           ; $506f: $00
    rst $38                                       ; $5070: $ff

    db $00, $ef, $00, $ff

    nop                                           ; $5075: $00
    rst $38                                       ; $5076: $ff

    db $00, $df

    nop                                           ; $5079: $00
    rst $38                                       ; $507a: $ff
    nop                                           ; $507b: $00
    ei                                            ; $507c: $fb
    nop                                           ; $507d: $00
    rst $38                                       ; $507e: $ff
    nop                                           ; $507f: $00
    ld a, a                                       ; $5080: $7f

    db $00, $ff, $00, $df, $00, $ff, $00, $ff, $00, $bf, $00, $fb, $00, $ff, $00, $ff

    nop                                           ; $5091: $00
    rst $30                                       ; $5092: $f7
    nop                                           ; $5093: $00
    rst $38                                       ; $5094: $ff
    nop                                           ; $5095: $00
    db $dd                                        ; $5096: $dd
    nop                                           ; $5097: $00
    rst $38                                       ; $5098: $ff
    nop                                           ; $5099: $00
    rst $30                                       ; $509a: $f7
    nop                                           ; $509b: $00
    cp $00                                        ; $509c: $fe $00
    rst $38                                       ; $509e: $ff
    nop                                           ; $509f: $00
    cp a                                          ; $50a0: $bf
    nop                                           ; $50a1: $00
    or $00                                        ; $50a2: $f6 $00
    rst $18                                       ; $50a4: $df
    nop                                           ; $50a5: $00
    db $fd                                        ; $50a6: $fd
    nop                                           ; $50a7: $00
    rst $38                                       ; $50a8: $ff
    nop                                           ; $50a9: $00
    or a                                          ; $50aa: $b7
    nop                                           ; $50ab: $00
    cp $00                                        ; $50ac: $fe $00
    db $eb                                        ; $50ae: $eb
    nop                                           ; $50af: $00
    cp e                                          ; $50b0: $bb
    nop                                           ; $50b1: $00
    cp $00                                        ; $50b2: $fe $00
    rst $10                                       ; $50b4: $d7
    nop                                           ; $50b5: $00
    ld a, l                                       ; $50b6: $7d
    nop                                           ; $50b7: $00
    ld l, a                                       ; $50b8: $6f
    nop                                           ; $50b9: $00
    sub $00                                       ; $50ba: $d6 $00
    rst $18                                       ; $50bc: $df
    nop                                           ; $50bd: $00
    ld [$af00], a                                 ; $50be: $ea $00 $af
    nop                                           ; $50c1: $00
    ld [hl], a                                    ; $50c2: $77
    nop                                           ; $50c3: $00
    ld e, d                                       ; $50c4: $5a
    nop                                           ; $50c5: $00
    rst $10                                       ; $50c6: $d7
    nop                                           ; $50c7: $00
    ld h, l                                       ; $50c8: $65
    nop                                           ; $50c9: $00
    jp c, Jump_016_6a00                           ; $50ca: $da $00 $6a

    nop                                           ; $50cd: $00
    and l                                         ; $50ce: $a5
    nop                                           ; $50cf: $00
    sbc d                                         ; $50d0: $9a
    nop                                           ; $50d1: $00
    ld h, $00                                     ; $50d2: $26 $00
    ld d, c                                       ; $50d4: $51
    nop                                           ; $50d5: $00
    xor d                                         ; $50d6: $aa
    nop                                           ; $50d7: $00
    ld e, b                                       ; $50d8: $58
    nop                                           ; $50d9: $00
    dec b                                         ; $50da: $05
    nop                                           ; $50db: $00
    sub b                                         ; $50dc: $90
    nop                                           ; $50dd: $00
    ld c, e                                       ; $50de: $4b
    nop                                           ; $50df: $00
    add hl, hl                                    ; $50e0: $29
    nop                                           ; $50e1: $00
    sub [hl]                                      ; $50e2: $96
    nop                                           ; $50e3: $00
    ld e, c                                       ; $50e4: $59

    db $00, $aa

    nop                                           ; $50e7: $00
    rst $38                                       ; $50e8: $ff
    nop                                           ; $50e9: $00
    rst $38                                       ; $50ea: $ff
    nop                                           ; $50eb: $00
    rst $38                                       ; $50ec: $ff
    nop                                           ; $50ed: $00
    db $fd                                        ; $50ee: $fd
    nop                                           ; $50ef: $00
    rst $38                                       ; $50f0: $ff

    db $00, $ef

    nop                                           ; $50f3: $00
    rst $38                                       ; $50f4: $ff
    nop                                           ; $50f5: $00
    rst $38                                       ; $50f6: $ff
    nop                                           ; $50f7: $00
    rst $18                                       ; $50f8: $df
    nop                                           ; $50f9: $00
    rst $38                                       ; $50fa: $ff
    nop                                           ; $50fb: $00
    ei                                            ; $50fc: $fb
    nop                                           ; $50fd: $00
    rst $38                                       ; $50fe: $ff
    nop                                           ; $50ff: $00
    ld a, a                                       ; $5100: $7f

    db $00, $ff, $00, $df, $00, $ff, $00, $ff, $00, $bf, $00, $fb, $00, $ff

    nop                                           ; $510f: $00
    rst $38                                       ; $5110: $ff
    nop                                           ; $5111: $00
    rst $30                                       ; $5112: $f7
    nop                                           ; $5113: $00
    rst $38                                       ; $5114: $ff
    nop                                           ; $5115: $00
    db $dd                                        ; $5116: $dd

    db $00, $ff, $00, $f7, $00, $fe

    nop                                           ; $511d: $00
    rst $38                                       ; $511e: $ff
    nop                                           ; $511f: $00
    cp a                                          ; $5120: $bf
    nop                                           ; $5121: $00
    or $00                                        ; $5122: $f6 $00
    rst $18                                       ; $5124: $df
    nop                                           ; $5125: $00
    db $fd                                        ; $5126: $fd
    nop                                           ; $5127: $00
    rst $38                                       ; $5128: $ff
    nop                                           ; $5129: $00
    or a                                          ; $512a: $b7
    nop                                           ; $512b: $00
    cp $00                                        ; $512c: $fe $00
    db $eb                                        ; $512e: $eb
    nop                                           ; $512f: $00
    cp e                                          ; $5130: $bb
    nop                                           ; $5131: $00
    cp $00                                        ; $5132: $fe $00
    rst $10                                       ; $5134: $d7
    nop                                           ; $5135: $00
    ld a, l                                       ; $5136: $7d
    nop                                           ; $5137: $00
    ld l, a                                       ; $5138: $6f
    nop                                           ; $5139: $00
    sub $00                                       ; $513a: $d6 $00
    rst $18                                       ; $513c: $df
    nop                                           ; $513d: $00
    ld [$af00], a                                 ; $513e: $ea $00 $af
    nop                                           ; $5141: $00
    ld [hl], a                                    ; $5142: $77
    nop                                           ; $5143: $00
    ld e, d                                       ; $5144: $5a
    nop                                           ; $5145: $00
    rst $10                                       ; $5146: $d7
    nop                                           ; $5147: $00
    ld h, l                                       ; $5148: $65
    nop                                           ; $5149: $00
    jp c, Jump_016_6a00                           ; $514a: $da $00 $6a

    nop                                           ; $514d: $00
    and l                                         ; $514e: $a5
    nop                                           ; $514f: $00
    sbc d                                         ; $5150: $9a
    nop                                           ; $5151: $00
    ld h, $00                                     ; $5152: $26 $00
    ld d, c                                       ; $5154: $51
    nop                                           ; $5155: $00
    adc d                                         ; $5156: $8a
    nop                                           ; $5157: $00
    ld e, d                                       ; $5158: $5a
    nop                                           ; $5159: $00
    add l                                         ; $515a: $85
    nop                                           ; $515b: $00
    sub b                                         ; $515c: $90
    nop                                           ; $515d: $00
    ld b, l                                       ; $515e: $45
    nop                                           ; $515f: $00
    ld a, [hl+]                                   ; $5160: $2a
    nop                                           ; $5161: $00
    and d                                         ; $5162: $a2
    nop                                           ; $5163: $00
    ld d, l                                       ; $5164: $55
    nop                                           ; $5165: $00
    adc d                                         ; $5166: $8a

    db $ff, $00, $ff, $00, $ff, $00, $fd, $00, $ff, $00, $ef, $00, $ff, $00, $ff, $00
    db $df, $00, $ff, $00, $fb, $00, $ff, $00, $7f, $00, $ff, $00, $df, $00, $ff, $00
    db $ff, $00, $bf, $00, $fb, $00, $ff, $00, $ff, $00, $f7, $00, $ff, $00, $dd, $00
    db $ff, $00, $f7, $00, $fe, $00, $ff, $00, $bf, $00, $f6, $00, $df, $00

    db $fd                                        ; $51a5: $fd
    nop                                           ; $51a6: $00

    db $ff, $00, $b7, $00, $fe, $00, $eb, $00, $bb, $00

    cp $00                                        ; $51b1: $fe $00
    rst $10                                       ; $51b3: $d7
    nop                                           ; $51b4: $00
    ld a, l                                       ; $51b5: $7d
    nop                                           ; $51b6: $00
    ld l, a                                       ; $51b7: $6f
    nop                                           ; $51b8: $00
    sub $00                                       ; $51b9: $d6 $00
    rst $18                                       ; $51bb: $df
    nop                                           ; $51bc: $00
    ld [$af00], a                                 ; $51bd: $ea $00 $af
    nop                                           ; $51c0: $00

    db $77, $00, $5a, $00

    rst $10                                       ; $51c5: $d7
    nop                                           ; $51c6: $00
    ld h, l                                       ; $51c7: $65
    nop                                           ; $51c8: $00

    db $da, $00, $6a, $00, $a5, $00

    sbc d                                         ; $51cf: $9a
    nop                                           ; $51d0: $00
    ld h, $00                                     ; $51d1: $26 $00
    ld d, c                                       ; $51d3: $51
    nop                                           ; $51d4: $00

    db $8a, $00, $52, $00, $85, $00

    sub b                                         ; $51db: $90
    nop                                           ; $51dc: $00

    db $4d, $00, $29, $00, $a6, $00, $59, $00, $aa, $00, $ff, $00, $ff, $00, $ff, $00
    db $fd, $00, $ff, $00, $ef, $00, $ff, $00, $ff, $00, $df, $00, $ff, $00, $fb, $00
    db $ff, $00, $7f, $00, $ff, $00, $df, $00, $ff, $00, $ff, $00, $bf, $00, $fb, $00
    db $ff, $00, $ff, $00, $f7, $00, $ff, $00, $dd, $00, $ff, $00, $f7, $00, $fe, $00
    db $ff, $00, $bf, $00, $f6, $00, $df, $00, $fd, $00

    rst $38                                       ; $5227: $ff
    nop                                           ; $5228: $00

    db $b7, $00, $fe, $00

    db $eb                                        ; $522d: $eb
    nop                                           ; $522e: $00

    db $bb, $00

    cp $00                                        ; $5231: $fe $00
    rst $10                                       ; $5233: $d7
    nop                                           ; $5234: $00
    ld a, l                                       ; $5235: $7d
    nop                                           ; $5236: $00
    ld l, a                                       ; $5237: $6f
    nop                                           ; $5238: $00
    sub $00                                       ; $5239: $d6 $00
    rst $18                                       ; $523b: $df
    nop                                           ; $523c: $00
    db $ea                                        ; $523d: $ea
    nop                                           ; $523e: $00

    db $af, $00

    ld [hl], a                                    ; $5241: $77
    nop                                           ; $5242: $00

    db $5a, $00

    rst $10                                       ; $5245: $d7
    nop                                           ; $5246: $00

    db $65, $00, $da, $00, $6a, $00, $a5, $00, $9a, $00, $26, $00, $51, $00

    adc d                                         ; $5255: $8a
    nop                                           ; $5256: $00
    ld c, d                                       ; $5257: $4a
    nop                                           ; $5258: $00

    db $b5, $00, $90, $00, $45, $00, $2a, $00

    add $00                                       ; $5261: $c6 $00
    ld e, c                                       ; $5263: $59
    nop                                           ; $5264: $00
    xor d                                         ; $5265: $aa
    nop                                           ; $5266: $00

    db $ff, $00, $ff, $00, $ff, $00, $fd, $00, $ff, $00, $ef, $00, $ff, $00, $ff, $00
    db $df, $00, $ff, $00, $fb, $00, $ff, $00, $7f, $00, $ff, $00, $df, $00, $ff, $00
    db $ff, $00, $bf, $00, $fb, $00, $ff, $00, $ff, $00, $f7, $00, $ff, $00, $dd, $00
    db $ff, $00, $f7, $00, $fe, $00, $ff, $00, $bf, $00, $f6, $00, $df, $00, $fd, $00

    rst $38                                       ; $52a7: $ff
    nop                                           ; $52a8: $00
    or a                                          ; $52a9: $b7
    nop                                           ; $52aa: $00
    cp $00                                        ; $52ab: $fe $00
    db $eb                                        ; $52ad: $eb
    nop                                           ; $52ae: $00
    cp e                                          ; $52af: $bb
    nop                                           ; $52b0: $00
    cp $00                                        ; $52b1: $fe $00
    rst $10                                       ; $52b3: $d7
    nop                                           ; $52b4: $00

    db $7d, $00, $6f, $00, $d6, $00, $df, $00, $ea, $00

    xor a                                         ; $52bf: $af
    nop                                           ; $52c0: $00

    db $77, $00, $5a, $00, $d7, $00

    ld h, l                                       ; $52c7: $65
    nop                                           ; $52c8: $00
    jp c, Jump_016_6a00                           ; $52c9: $da $00 $6a

    nop                                           ; $52cc: $00
    and l                                         ; $52cd: $a5
    nop                                           ; $52ce: $00

    db $9a, $00, $26, $00

    ld d, c                                       ; $52d3: $51
    nop                                           ; $52d4: $00
    xor d                                         ; $52d5: $aa
    nop                                           ; $52d6: $00

    db $58, $00, $05, $00, $90, $00

    ld c, e                                       ; $52dd: $4b
    nop                                           ; $52de: $00

    db $29, $00, $96, $00, $59, $00, $aa, $00, $ff, $00, $ff, $00, $ff, $00, $fd, $00
    db $ff, $00, $ef, $00, $ff, $00, $ff, $00, $df, $00, $ff, $00, $fb, $00, $ff, $00
    db $7f, $00, $ff, $00, $df, $00, $ff, $00, $ff, $00, $bf, $00, $fb, $00, $ff, $00
    db $ff, $00, $f7, $00, $ff, $00, $dd, $00, $ff, $00, $f7, $00, $fe, $00, $ff, $00
    db $bf, $00, $f6, $00, $df, $00, $fd, $00, $ff, $00

    or a                                          ; $5329: $b7
    nop                                           ; $532a: $00
    cp $00                                        ; $532b: $fe $00

    db $eb, $00, $bb, $00, $fe, $00, $d7, $00, $7d, $00

    ld l, a                                       ; $5337: $6f
    nop                                           ; $5338: $00

    db $d6, $00, $df, $00

    ld [$af00], a                                 ; $533d: $ea $00 $af
    nop                                           ; $5340: $00

    db $77, $00, $5a, $00, $d7, $00, $65, $00

    db $da                                        ; $5349: $da
    nop                                           ; $534a: $00

    db $6a, $00, $a5, $00, $9a, $00

    ld h, $00                                     ; $5351: $26 $00
    ld d, c                                       ; $5353: $51
    nop                                           ; $5354: $00
    adc d                                         ; $5355: $8a
    nop                                           ; $5356: $00

    db $5a, $00, $85, $00

    sub b                                         ; $535b: $90
    nop                                           ; $535c: $00
    ld b, l                                       ; $535d: $45
    nop                                           ; $535e: $00

    db $2a, $00

    and d                                         ; $5361: $a2
    nop                                           ; $5362: $00
    ld d, l                                       ; $5363: $55
    nop                                           ; $5364: $00

    db $8a, $00, $00, $ff, $00, $ff, $00, $f7, $00, $ff, $00, $fe, $00, $ff, $00, $ef
    db $00, $fb, $00, $ff, $00, $ef, $00, $be, $00, $ff, $00, $d7, $00, $df, $00, $fa
    db $00, $bb, $00, $ee, $00, $eb, $00, $7f, $00, $5f, $00, $f5, $00, $f7, $00, $bf
    db $00, $da, $00, $6e, $00, $db, $00, $5f, $00, $ed, $00, $97, $00, $b5, $00, $df
    db $00, $5a, $00, $6d, $00, $b5, $00, $5b, $00, $cd, $00, $ba, $00, $d5, $00, $65
    db $00, $5b, $00, $aa, $00, $e4, $00, $33, $00, $56, $00, $ca, $00, $35, $00, $a4
    db $00, $92, $00, $4b, $00, $34, $00, $69, $00, $8a, $00, $21, $00, $45, $00, $2a
    db $00, $82, $00, $15, $00, $48, $00, $05, $00, $52, $00, $08, $00, $aa, $00, $80
    db $00, $59, $00, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $bf, $00, $ff
    db $00, $fb, $00, $ff, $00, $ff, $00, $fe, $00, $ff, $00, $ff, $00, $bf, $00, $fb
    db $00, $ff, $00, $ef, $00, $ff, $00, $7f, $00, $df, $00, $fd, $00, $bf, $00, $ff
    db $00, $fb, $00, $ef, $00, $ff, $00, $77, $00, $df, $00, $fd, $00, $f7, $00, $be
    db $00, $fb, $00, $ef, $00, $fd, $00, $77, $00, $dd, $00, $fe, $00, $b7, $00, $ee
    db $00, $7b, $00, $af, $00, $fd, $00, $b7, $00, $77, $00, $dd, $00, $7b, $00, $de
    db $00, $da, $00, $6b, $00, $d5, $00, $4d, $00, $aa, $00, $5b, $00, $a5, $00, $4a
    db $00, $b2, $00, $54, $00, $49, $00, $35, $00, $52, $00, $a9, $00, $22, $00, $94
    db $00, $ad, $00, $ff, $00, $ff, $00, $f7, $00, $ff, $00, $fe, $00, $ff, $00, $ef
    db $00, $fb, $00, $ff, $00, $ef, $00, $be, $00, $ff, $00, $f7, $00, $be, $00, $fb
    db $00, $fb, $00, $6e, $00, $eb, $00, $7f, $00, $5f, $00, $f5, $00, $b7, $00, $bf
    db $00, $da, $00, $6e, $00, $db, $00, $5f, $00, $ed, $00, $97, $00, $b4, $00, $de
    db $00, $5b, $00, $6d, $00, $b5, $00, $5b, $00, $cd, $00, $ba, $00, $d5, $00, $65
    db $00, $5b, $00, $aa, $00, $d4, $00, $23, $00, $56, $00, $ca, $00, $35, $00, $a4
    db $00, $92, $00, $4b, $00, $24, $00, $4d, $00, $92, $00, $21, $00, $4a, $00, $28
    db $00, $86, $00, $15, $00, $50, $00, $05, $00, $52, $00, $08, $00, $a0, $00, $8a
    db $00, $58, $00, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $bf, $00, $ff
    db $00, $ff, $00, $ff, $00, $ef, $00, $fe, $00, $ff, $00, $ff, $00, $bf, $00, $fb
    db $00, $ff, $00, $ef, $00, $ff, $00, $7f, $00, $df, $00, $fd, $00, $bf, $00, $ff
    db $00, $fb, $00, $ef, $00, $ff, $00, $77, $00, $df, $00, $fd, $00, $f7, $00, $be
    db $00, $fb, $00, $ef, $00, $fd, $00, $77, $00, $dd, $00, $fe, $00, $b7, $00, $ee
    db $00, $7b, $00, $af, $00, $fd, $00, $b7, $00, $77, $00, $dd, $00, $7b, $00, $ae
    db $00, $da, $00, $4b, $00, $b5, $00, $65, $00, $b2, $00, $97, $00, $2d, $00, $ca
    db $00, $b2, $00, $55, $00, $4c, $00, $35, $00, $52, $00, $88, $00, $22, $00, $94
    db $00, $a5, $ff, $00

    rst $38                                       ; $5569: $ff
    nop                                           ; $556a: $00

    db $f7, $00, $ff, $00, $fe, $00, $ff, $00, $ef, $00, $fb, $00

    rst $38                                       ; $5577: $ff
    nop                                           ; $5578: $00
    rst $28                                       ; $5579: $ef
    nop                                           ; $557a: $00
    cp [hl]                                       ; $557b: $be
    nop                                           ; $557c: $00
    rst $38                                       ; $557d: $ff
    nop                                           ; $557e: $00
    rst $10                                       ; $557f: $d7
    nop                                           ; $5580: $00
    rst $18                                       ; $5581: $df
    nop                                           ; $5582: $00
    ld a, [$bb00]                                 ; $5583: $fa $00 $bb
    nop                                           ; $5586: $00

    db $ee, $00, $eb, $00, $7f, $00, $5f, $00

    push af                                       ; $558f: $f5
    nop                                           ; $5590: $00
    rst $30                                       ; $5591: $f7
    nop                                           ; $5592: $00

    db $bf, $00, $da, $00, $6e, $00, $db, $00, $5f, $00, $ed, $00, $97, $00, $b5, $00
    db $df, $00, $5a, $00

    ld l, l                                       ; $55a7: $6d
    nop                                           ; $55a8: $00

    db $b5, $00, $5b, $00, $cd, $00, $ba, $00, $d5, $00, $65, $00, $5b, $00

    xor d                                         ; $55b7: $aa
    nop                                           ; $55b8: $00
    db $e4                                        ; $55b9: $e4
    nop                                           ; $55ba: $00
    inc sp                                        ; $55bb: $33
    nop                                           ; $55bc: $00
    ld d, [hl]                                    ; $55bd: $56
    nop                                           ; $55be: $00

    db $ca, $00, $35, $00, $a4, $00, $92, $00

    ld c, e                                       ; $55c7: $4b
    nop                                           ; $55c8: $00
    inc [hl]                                      ; $55c9: $34
    nop                                           ; $55ca: $00
    ld l, c                                       ; $55cb: $69
    nop                                           ; $55cc: $00
    adc d                                         ; $55cd: $8a
    nop                                           ; $55ce: $00
    ld hl, $4500                                  ; $55cf: $21 $00 $45
    nop                                           ; $55d2: $00
    ld a, [hl+]                                   ; $55d3: $2a
    nop                                           ; $55d4: $00
    add d                                         ; $55d5: $82
    nop                                           ; $55d6: $00
    dec d                                         ; $55d7: $15
    nop                                           ; $55d8: $00
    ld c, b                                       ; $55d9: $48
    nop                                           ; $55da: $00

    db $05, $00, $52, $00, $08, $00, $aa, $00, $80, $00, $59, $00, $ff, $00, $ff, $00
    db $ff, $00, $ff, $00, $ff, $00, $bf, $00, $ff, $00, $fb, $00

    rst $38                                       ; $55f7: $ff
    nop                                           ; $55f8: $00
    rst $38                                       ; $55f9: $ff
    nop                                           ; $55fa: $00
    cp $00                                        ; $55fb: $fe $00
    rst $38                                       ; $55fd: $ff
    nop                                           ; $55fe: $00
    rst $38                                       ; $55ff: $ff
    nop                                           ; $5600: $00
    cp a                                          ; $5601: $bf
    nop                                           ; $5602: $00
    ei                                            ; $5603: $fb
    nop                                           ; $5604: $00
    rst $38                                       ; $5605: $ff
    nop                                           ; $5606: $00

    db $ef, $00, $ff, $00, $7f, $00, $df, $00

    db $fd                                        ; $560f: $fd
    nop                                           ; $5610: $00
    cp a                                          ; $5611: $bf
    nop                                           ; $5612: $00

    db $ff, $00, $fb, $00, $ef, $00, $ff, $00, $77, $00, $df, $00, $fd, $00, $f7, $00
    db $be, $00, $fb, $00

    rst $28                                       ; $5627: $ef
    nop                                           ; $5628: $00

    db $fd, $00, $77, $00, $dd, $00, $fe, $00, $b7, $00, $ee, $00, $7b, $00

    xor a                                         ; $5637: $af
    nop                                           ; $5638: $00
    db $fd                                        ; $5639: $fd
    nop                                           ; $563a: $00
    or a                                          ; $563b: $b7
    nop                                           ; $563c: $00
    ld [hl], a                                    ; $563d: $77
    nop                                           ; $563e: $00

    db $dd, $00, $7b, $00, $de, $00, $da, $00, $6b, $00, $d5, $00, $4d, $00

    xor d                                         ; $564d: $aa
    nop                                           ; $564e: $00
    ld e, e                                       ; $564f: $5b
    nop                                           ; $5650: $00
    and l                                         ; $5651: $a5
    nop                                           ; $5652: $00
    ld c, d                                       ; $5653: $4a
    nop                                           ; $5654: $00
    or d                                          ; $5655: $b2
    nop                                           ; $5656: $00

    db $54, $00, $49, $00, $35, $00, $52, $00, $a9, $00, $22, $00, $94, $00, $ad, $00
    db $ff, $00, $ff, $00, $f7, $00, $ff, $00, $fe, $00, $ff, $00, $ef, $00, $fb, $00

    rst $38                                       ; $5677: $ff
    nop                                           ; $5678: $00
    rst $28                                       ; $5679: $ef
    nop                                           ; $567a: $00
    cp [hl]                                       ; $567b: $be
    nop                                           ; $567c: $00
    rst $38                                       ; $567d: $ff
    nop                                           ; $567e: $00
    rst $30                                       ; $567f: $f7
    nop                                           ; $5680: $00
    cp [hl]                                       ; $5681: $be
    nop                                           ; $5682: $00
    ei                                            ; $5683: $fb
    nop                                           ; $5684: $00
    ei                                            ; $5685: $fb
    nop                                           ; $5686: $00

    db $6e, $00, $eb, $00, $7f, $00, $5f, $00, $f5, $00, $b7, $00, $bf, $00, $da, $00
    db $6e, $00, $db, $00, $5f, $00, $ed, $00, $97, $00, $b4, $00, $de, $00, $5b, $00
    db $6d, $00, $b5, $00, $5b, $00, $cd, $00, $ba, $00, $d5, $00, $65, $00, $5b, $00

    xor d                                         ; $56b7: $aa
    nop                                           ; $56b8: $00
    call nc, $2300                                ; $56b9: $d4 $00 $23
    nop                                           ; $56bc: $00

    db $56, $00, $ca, $00, $35, $00, $a4, $00, $92, $00, $4b, $00, $24, $00, $4d, $00

    sub d                                         ; $56cd: $92
    nop                                           ; $56ce: $00
    db $21                                        ; $56cf: $21
    nop                                           ; $56d0: $00

    db $4a, $00, $28, $00, $86, $00

    dec d                                         ; $56d7: $15
    nop                                           ; $56d8: $00
    ld d, b                                       ; $56d9: $50
    nop                                           ; $56da: $00

    db $05, $00, $52, $00, $08, $00, $a0, $00, $8a, $00, $58, $00, $ff, $00, $ff, $00

    rst $38                                       ; $56eb: $ff
    nop                                           ; $56ec: $00

    db $ff, $00, $ff, $00, $bf, $00, $ff, $00, $ff, $00

    rst $38                                       ; $56f7: $ff
    nop                                           ; $56f8: $00
    rst $28                                       ; $56f9: $ef
    nop                                           ; $56fa: $00
    cp $00                                        ; $56fb: $fe $00
    rst $38                                       ; $56fd: $ff
    nop                                           ; $56fe: $00
    rst $38                                       ; $56ff: $ff
    nop                                           ; $5700: $00
    cp a                                          ; $5701: $bf
    nop                                           ; $5702: $00
    ei                                            ; $5703: $fb
    nop                                           ; $5704: $00
    rst $38                                       ; $5705: $ff
    nop                                           ; $5706: $00

    db $ef, $00, $ff, $00, $7f, $00, $df, $00

    db $fd                                        ; $570f: $fd
    nop                                           ; $5710: $00

    db $bf, $00, $ff, $00, $fb, $00, $ef, $00, $ff, $00, $77, $00, $df, $00, $fd, $00
    db $f7, $00, $be, $00, $fb, $00

    rst $28                                       ; $5727: $ef
    nop                                           ; $5728: $00

    db $fd, $00, $77, $00, $dd, $00, $fe, $00, $b7, $00, $ee, $00, $7b, $00

    xor a                                         ; $5737: $af
    nop                                           ; $5738: $00
    db $fd                                        ; $5739: $fd
    nop                                           ; $573a: $00

    db $b7, $00, $77, $00, $dd, $00, $7b, $00, $ae, $00, $da, $00, $4b, $00, $b5, $00
    db $65, $00, $b2, $00, $97, $00, $2d, $00, $ca, $00, $b2, $00

    ld d, l                                       ; $5757: $55
    nop                                           ; $5758: $00
    ld c, h                                       ; $5759: $4c
    nop                                           ; $575a: $00
    dec [hl]                                      ; $575b: $35
    nop                                           ; $575c: $00

    db $52, $00, $88, $00, $22, $00, $94, $00, $a5, $00

    nop                                           ; $5767: $00
    rst $38                                       ; $5768: $ff
    nop                                           ; $5769: $00
    rst $38                                       ; $576a: $ff

    db $00, $76, $00, $ff, $00, $d3

    nop                                           ; $5771: $00
    rst $38                                       ; $5772: $ff
    nop                                           ; $5773: $00
    ld e, d                                       ; $5774: $5a
    nop                                           ; $5775: $00
    rst $38                                       ; $5776: $ff
    nop                                           ; $5777: $00
    jp z, $ff00                                   ; $5778: $ca $00 $ff

    nop                                           ; $577b: $00
    ld d, [hl]                                    ; $577c: $56
    nop                                           ; $577d: $00
    rst $38                                       ; $577e: $ff
    nop                                           ; $577f: $00
    add hl, hl                                    ; $5780: $29
    nop                                           ; $5781: $00
    rst $38                                       ; $5782: $ff
    nop                                           ; $5783: $00
    xor h                                         ; $5784: $ac
    nop                                           ; $5785: $00
    rst $38                                       ; $5786: $ff

    db $00, $a8, $00, $77, $00, $a4, $00, $fb, $00, $52, $00, $bf, $00, $45, $00, $db
    db $00, $a8, $00, $77, $00, $a2, $00, $fd, $00, $52, $00, $bd, $00, $45, $00, $f6
    db $00, $a8, $00, $7b

    nop                                           ; $57ab: $00
    and h                                         ; $57ac: $a4
    nop                                           ; $57ad: $00
    cp c                                          ; $57ae: $b9
    nop                                           ; $57af: $00
    ld d, d                                       ; $57b0: $52
    nop                                           ; $57b1: $00
    ld l, $00                                     ; $57b2: $2e $00
    ld h, l                                       ; $57b4: $65
    nop                                           ; $57b5: $00
    db $da                                        ; $57b6: $da

    db $00, $a8, $00, $77, $00, $a4, $00, $1b, $00, $52

    nop                                           ; $57c1: $00
    or c                                          ; $57c2: $b1
    nop                                           ; $57c3: $00
    ld b, l                                       ; $57c4: $45
    nop                                           ; $57c5: $00
    ld e, d                                       ; $57c6: $5a
    nop                                           ; $57c7: $00
    adc b                                         ; $57c8: $88
    nop                                           ; $57c9: $00
    ld h, c                                       ; $57ca: $61
    nop                                           ; $57cb: $00
    inc l                                         ; $57cc: $2c
    nop                                           ; $57cd: $00
    add b                                         ; $57ce: $80
    nop                                           ; $57cf: $00
    ld [de], a                                    ; $57d0: $12
    nop                                           ; $57d1: $00
    and l                                         ; $57d2: $a5
    nop                                           ; $57d3: $00
    ld b, c                                       ; $57d4: $41
    nop                                           ; $57d5: $00
    db $d2                                        ; $57d6: $d2

    db $00, $a8, $00, $26, $00, $84, $00, $68, $00, $44, $00, $a0

    nop                                           ; $57e3: $00
    db $01                                        ; $57e4: $01

    db $00, $84, $00, $ff, $00, $ff, $00, $76, $00, $ff, $00, $d3, $00, $ff, $00, $5a
    db $00, $ff

    nop                                           ; $57f7: $00
    jp z, $ff00                                   ; $57f8: $ca $00 $ff

    nop                                           ; $57fb: $00
    ld d, [hl]                                    ; $57fc: $56
    nop                                           ; $57fd: $00
    rst $38                                       ; $57fe: $ff
    nop                                           ; $57ff: $00
    add hl, hl                                    ; $5800: $29
    nop                                           ; $5801: $00
    rst $38                                       ; $5802: $ff
    nop                                           ; $5803: $00
    xor h                                         ; $5804: $ac
    nop                                           ; $5805: $00
    rst $38                                       ; $5806: $ff

    db $00, $a8, $00, $77, $00, $a4, $00, $fb, $00, $52, $00, $bf, $00, $45, $00, $db
    db $00, $a8, $00, $77, $00, $a2, $00, $fd, $00, $52, $00, $bd, $00, $45, $00, $f6
    db $00, $a8, $00, $7b

    nop                                           ; $582b: $00
    and h                                         ; $582c: $a4
    nop                                           ; $582d: $00
    cp c                                          ; $582e: $b9
    nop                                           ; $582f: $00
    ld d, d                                       ; $5830: $52
    nop                                           ; $5831: $00
    ld l, $00                                     ; $5832: $2e $00
    ld h, l                                       ; $5834: $65
    nop                                           ; $5835: $00
    db $da                                        ; $5836: $da

    db $00, $a8, $00, $77, $00, $a4, $00, $1b, $00, $52, $00, $b1, $00, $45, $00, $5a
    db $00, $88, $00, $61, $00, $2c, $00, $80, $00, $12, $00, $a5, $00, $41, $00, $d2
    db $00, $a8, $00, $26, $00, $84, $00, $68, $00, $44, $00, $a0, $00, $01, $00, $84

    nop                                           ; $5867: $00
    rst $38                                       ; $5868: $ff

    db $00, $ff, $00, $76, $00, $ff, $00, $d3, $00, $ff, $00, $5a

    nop                                           ; $5875: $00
    rst $38                                       ; $5876: $ff
    nop                                           ; $5877: $00
    jp z, $ff00                                   ; $5878: $ca $00 $ff

    nop                                           ; $587b: $00
    ld d, [hl]                                    ; $587c: $56
    nop                                           ; $587d: $00
    rst $38                                       ; $587e: $ff
    nop                                           ; $587f: $00
    add hl, hl                                    ; $5880: $29
    nop                                           ; $5881: $00
    rst $38                                       ; $5882: $ff
    nop                                           ; $5883: $00
    xor h                                         ; $5884: $ac
    nop                                           ; $5885: $00
    rst $38                                       ; $5886: $ff

    db $00, $a8, $00, $77, $00, $a4, $00, $fb, $00, $52, $00, $bf, $00, $45, $00, $db
    db $00, $a8, $00, $77, $00, $a2, $00, $fd, $00, $52, $00, $bd, $00, $45, $00, $f6
    db $00, $a8, $00, $7b

    nop                                           ; $58ab: $00
    and h                                         ; $58ac: $a4
    nop                                           ; $58ad: $00
    cp c                                          ; $58ae: $b9
    nop                                           ; $58af: $00
    ld d, d                                       ; $58b0: $52

    db $00, $2e, $00, $65

    nop                                           ; $58b5: $00
    db $da                                        ; $58b6: $da

    db $00, $a8, $00, $77, $00, $a4, $00, $1b, $00, $52, $00, $b1, $00, $45

    nop                                           ; $58c5: $00
    ld e, d                                       ; $58c6: $5a
    nop                                           ; $58c7: $00
    adc b                                         ; $58c8: $88
    nop                                           ; $58c9: $00
    ld h, c                                       ; $58ca: $61

    db $00, $2c, $00, $80, $00, $12, $00, $a5, $00, $41

    nop                                           ; $58d5: $00
    db $d2                                        ; $58d6: $d2

    db $00, $a8, $00, $26, $00, $84, $00, $68, $00, $44, $00, $a0, $00, $01, $00, $84

    nop                                           ; $58e7: $00
    rst $38                                       ; $58e8: $ff

    db $00, $ff, $00, $76, $00, $ff, $00, $d3, $00, $ff, $00, $5a, $00, $ff

    nop                                           ; $58f7: $00
    jp z, $ff00                                   ; $58f8: $ca $00 $ff

    nop                                           ; $58fb: $00
    ld d, [hl]                                    ; $58fc: $56
    nop                                           ; $58fd: $00
    rst $38                                       ; $58fe: $ff
    nop                                           ; $58ff: $00
    add hl, hl                                    ; $5900: $29
    nop                                           ; $5901: $00
    rst $38                                       ; $5902: $ff
    nop                                           ; $5903: $00
    xor h                                         ; $5904: $ac
    nop                                           ; $5905: $00
    rst $38                                       ; $5906: $ff

    db $00, $a8, $00, $77, $00, $a4, $00, $fb, $00, $52, $00, $bf, $00, $45, $00, $db
    db $00, $a8, $00, $77, $00, $a2, $00, $fd, $00, $52, $00, $bd, $00, $45, $00, $f6
    db $00, $a8, $00, $7b

    nop                                           ; $592b: $00
    and h                                         ; $592c: $a4
    nop                                           ; $592d: $00
    cp c                                          ; $592e: $b9
    nop                                           ; $592f: $00
    ld d, d                                       ; $5930: $52
    nop                                           ; $5931: $00
    ld l, $00                                     ; $5932: $2e $00
    ld h, l                                       ; $5934: $65
    nop                                           ; $5935: $00
    db $da                                        ; $5936: $da

    db $00, $a8, $00, $77, $00, $a4, $00, $1b, $00, $52

    nop                                           ; $5941: $00
    or c                                          ; $5942: $b1
    nop                                           ; $5943: $00
    ld b, l                                       ; $5944: $45
    nop                                           ; $5945: $00
    ld e, d                                       ; $5946: $5a
    nop                                           ; $5947: $00
    adc b                                         ; $5948: $88
    nop                                           ; $5949: $00
    ld h, c                                       ; $594a: $61
    nop                                           ; $594b: $00
    inc l                                         ; $594c: $2c

    db $00, $80, $00, $12

    nop                                           ; $5951: $00
    and l                                         ; $5952: $a5
    nop                                           ; $5953: $00
    ld b, c                                       ; $5954: $41
    nop                                           ; $5955: $00
    db $d2                                        ; $5956: $d2

    db $00, $a8, $00, $26, $00, $84, $00, $68, $00, $44

    nop                                           ; $5961: $00
    and b                                         ; $5962: $a0
    nop                                           ; $5963: $00
    ld bc, $8400                                  ; $5964: $01 $00 $84

Call_016_5967:
    ld c, $40                                     ; $5967: $0e $40

Jump_016_5969:
    push bc                                       ; $5969: $c5
    push hl                                       ; $596a: $e5
    ld b, $00                                     ; $596b: $06 $00
    ld l, e                                       ; $596d: $6b
    ld h, d                                       ; $596e: $62
    ld a, [hl-]                                   ; $596f: $3a
    ld c, a                                       ; $5970: $4f
    ld a, [hl+]                                   ; $5971: $2a
    ld [$c473], a                                 ; $5972: $ea $73 $c4
    cp c                                          ; $5975: $b9
    jr nz, jr_016_597b                            ; $5976: $20 $03

    inc b                                         ; $5978: $04
    set 7, b                                      ; $5979: $cb $f8

jr_016_597b:
    inc hl                                        ; $597b: $23
    ld a, [hl]                                    ; $597c: $7e
    ld [$c471], a                                 ; $597d: $ea $71 $c4
    cp c                                          ; $5980: $b9
    jr nz, jr_016_5986                            ; $5981: $20 $03

    inc b                                         ; $5983: $04
    set 5, b                                      ; $5984: $cb $e8

jr_016_5986:
    ld hl, $ffc0                                  ; $5986: $21 $c0 $ff
    add hl, de                                    ; $5989: $19
    ld a, [hl]                                    ; $598a: $7e
    ld [$c472], a                                 ; $598b: $ea $72 $c4
    cp c                                          ; $598e: $b9
    jr nz, jr_016_599a                            ; $598f: $20 $09

    ld a, b                                       ; $5991: $78
    cp $a2                                        ; $5992: $fe $a2
    jp z, Jump_016_5a59                           ; $5994: $ca $59 $5a

    inc b                                         ; $5997: $04
    set 6, b                                      ; $5998: $cb $f0

jr_016_599a:
    ld hl, $0040                                  ; $599a: $21 $40 $00
    add hl, de                                    ; $599d: $19
    ld a, [hl]                                    ; $599e: $7e
    ld [$c470], a                                 ; $599f: $ea $70 $c4
    cp c                                          ; $59a2: $b9
    jr nz, jr_016_59a8                            ; $59a3: $20 $03

    inc b                                         ; $59a5: $04
    set 4, b                                      ; $59a6: $cb $e0

jr_016_59a8:
    ld a, b                                       ; $59a8: $78
    and $0f                                       ; $59a9: $e6 $0f
    cp $03                                        ; $59ab: $fe $03
    jp nc, Jump_016_5a59                          ; $59ad: $d2 $59 $5a

    ld c, a                                       ; $59b0: $4f
    ld a, b                                       ; $59b1: $78
    swap a                                        ; $59b2: $cb $37
    and $0f                                       ; $59b4: $e6 $0f
    ld b, a                                       ; $59b6: $47
    ld a, c                                       ; $59b7: $79
    add a                                         ; $59b8: $87
    add $c4                                       ; $59b9: $c6 $c4
    ld l, a                                       ; $59bb: $6f
    adc $59                                       ; $59bc: $ce $59
    sub l                                         ; $59be: $95
    ld h, a                                       ; $59bf: $67
    ld a, [hl+]                                   ; $59c0: $2a
    ld h, [hl]                                    ; $59c1: $66
    ld l, a                                       ; $59c2: $6f
    jp hl                                         ; $59c3: $e9


    db $0b, $5a, $1e, $5a, $ce, $59

    ld e, c                                       ; $59ca: $59
    ld e, d                                       ; $59cb: $5a
    ld e, c                                       ; $59cc: $59
    ld e, d                                       ; $59cd: $5a

    pop hl                                        ; $59ce: $e1
    ld a, b                                       ; $59cf: $78
    cp $03                                        ; $59d0: $fe $03
    jr z, jr_016_59e3                             ; $59d2: $28 $0f

    cp $06                                        ; $59d4: $fe $06
    jr z, jr_016_59ed                             ; $59d6: $28 $15

    cp $0c                                        ; $59d8: $fe $0c
    jr z, jr_016_59f7                             ; $59da: $28 $1b

    cp $09                                        ; $59dc: $fe $09
    jr z, jr_016_5a01                             ; $59de: $28 $21

    jp Jump_016_5a5a                              ; $59e0: $c3 $5a $5a


jr_016_59e3:
    ld a, [$c473]                                 ; $59e3: $fa $73 $c4
    ld [hl+], a                                   ; $59e6: $22
    ld a, [de]                                    ; $59e7: $1a
    ld [hl+], a                                   ; $59e8: $22
    ld [hl+], a                                   ; $59e9: $22
    ld [hl+], a                                   ; $59ea: $22
    jr jr_016_5a5e                                ; $59eb: $18 $71

jr_016_59ed:
    ld a, [de]                                    ; $59ed: $1a
    ld [hl+], a                                   ; $59ee: $22
    ld [hl+], a                                   ; $59ef: $22
    ld [hl+], a                                   ; $59f0: $22
    ld a, [$c473]                                 ; $59f1: $fa $73 $c4
    ld [hl+], a                                   ; $59f4: $22
    jr jr_016_5a5e                                ; $59f5: $18 $67

jr_016_59f7:
    ld a, [de]                                    ; $59f7: $1a
    ld [hl+], a                                   ; $59f8: $22
    ld [hl+], a                                   ; $59f9: $22
    ld [hl+], a                                   ; $59fa: $22
    ld a, [$c471]                                 ; $59fb: $fa $71 $c4
    ld [hl+], a                                   ; $59fe: $22
    jr jr_016_5a5e                                ; $59ff: $18 $5d

jr_016_5a01:
    ld a, [$c471]                                 ; $5a01: $fa $71 $c4
    ld [hl+], a                                   ; $5a04: $22
    ld a, [de]                                    ; $5a05: $1a
    ld [hl+], a                                   ; $5a06: $22
    ld [hl+], a                                   ; $5a07: $22
    ld [hl+], a                                   ; $5a08: $22
    jr jr_016_5a5e                                ; $5a09: $18 $53

    pop hl                                        ; $5a0b: $e1
    ld a, [$c472]                                 ; $5a0c: $fa $72 $c4
    ld [hl+], a                                   ; $5a0f: $22
    ld a, [$c473]                                 ; $5a10: $fa $73 $c4
    ld [hl+], a                                   ; $5a13: $22
    ld a, [$c471]                                 ; $5a14: $fa $71 $c4
    ld [hl+], a                                   ; $5a17: $22
    ld a, [$c470]                                 ; $5a18: $fa $70 $c4
    ld [hl+], a                                   ; $5a1b: $22
    jr jr_016_5a5e                                ; $5a1c: $18 $40

    pop hl                                        ; $5a1e: $e1
    ld a, b                                       ; $5a1f: $78
    cp $01                                        ; $5a20: $fe $01
    jr z, jr_016_5a32                             ; $5a22: $28 $0e

    cp $02                                        ; $5a24: $fe $02
    jr z, jr_016_5a4c                             ; $5a26: $28 $24

    cp $04                                        ; $5a28: $fe $04
    jr z, jr_016_5a3f                             ; $5a2a: $28 $13

    cp $08                                        ; $5a2c: $fe $08
    jr z, jr_016_5a4c                             ; $5a2e: $28 $1c

    jr jr_016_5a5a                                ; $5a30: $18 $28

jr_016_5a32:
    ld a, [$c471]                                 ; $5a32: $fa $71 $c4
    ld [hl+], a                                   ; $5a35: $22
    ld a, [$c473]                                 ; $5a36: $fa $73 $c4
    ld [hl+], a                                   ; $5a39: $22
    ld a, [de]                                    ; $5a3a: $1a
    ld [hl+], a                                   ; $5a3b: $22
    ld [hl+], a                                   ; $5a3c: $22
    jr jr_016_5a5e                                ; $5a3d: $18 $1f

jr_016_5a3f:
    ld a, [de]                                    ; $5a3f: $1a
    ld [hl+], a                                   ; $5a40: $22
    ld [hl+], a                                   ; $5a41: $22
    ld a, [$c473]                                 ; $5a42: $fa $73 $c4
    ld [hl+], a                                   ; $5a45: $22
    ld a, [$c471]                                 ; $5a46: $fa $71 $c4
    ld [hl+], a                                   ; $5a49: $22
    jr jr_016_5a5e                                ; $5a4a: $18 $12

jr_016_5a4c:
    ld a, [$c472]                                 ; $5a4c: $fa $72 $c4
    ld [hl+], a                                   ; $5a4f: $22
    ld a, [de]                                    ; $5a50: $1a
    ld [hl+], a                                   ; $5a51: $22
    ld [hl+], a                                   ; $5a52: $22
    ld a, [$c470]                                 ; $5a53: $fa $70 $c4
    ld [hl+], a                                   ; $5a56: $22
    jr jr_016_5a5e                                ; $5a57: $18 $05

Jump_016_5a59:
    pop hl                                        ; $5a59: $e1

Jump_016_5a5a:
jr_016_5a5a:
    ld a, [de]                                    ; $5a5a: $1a
    or $80                                        ; $5a5b: $f6 $80
    ld [hl+], a                                   ; $5a5d: $22

jr_016_5a5e:
    inc de                                        ; $5a5e: $13
    pop bc                                        ; $5a5f: $c1
    dec c                                         ; $5a60: $0d
    jp nz, Jump_016_5969                          ; $5a61: $c2 $69 $59

    ret                                           ; $5a64: $c9


    db $14

    nop                                           ; $5a66: $00
    inc de                                        ; $5a67: $13
    nop                                           ; $5a68: $00
    inc de                                        ; $5a69: $13
    nop                                           ; $5a6a: $00
    inc de                                        ; $5a6b: $13
    ld bc, $0113                                  ; $5a6c: $01 $13 $01
    inc de                                        ; $5a6f: $13
    ld [bc], a                                    ; $5a70: $02
    inc de                                        ; $5a71: $13
    ld [bc], a                                    ; $5a72: $02
    inc de                                        ; $5a73: $13
    inc bc                                        ; $5a74: $03
    inc de                                        ; $5a75: $13
    inc bc                                        ; $5a76: $03
    inc de                                        ; $5a77: $13
    inc b                                         ; $5a78: $04
    inc de                                        ; $5a79: $13
    inc b                                         ; $5a7a: $04
    inc de                                        ; $5a7b: $13
    dec b                                         ; $5a7c: $05
    inc de                                        ; $5a7d: $13
    dec b                                         ; $5a7e: $05
    ld [de], a                                    ; $5a7f: $12
    ld b, $12                                     ; $5a80: $06 $12
    db $06                                        ; $5a82: $06

    db $12, $07, $12, $07, $12, $08, $12, $08, $11, $08, $11, $09, $11, $09, $11, $0a
    db $10, $0a, $10, $0b, $10, $0b, $10, $0b, $0f, $0c, $0f, $0c, $0f, $0d, $0e, $0d
    db $0e, $0d, $0e, $0e, $0d, $0e, $0d, $0e, $0d, $0f, $0c, $0f, $0c, $0f, $0b, $10
    db $0b, $10, $0b, $10, $0a, $10, $0a, $11, $09, $11, $09, $11, $08, $11, $08, $12
    db $08, $12, $07, $12, $07, $12, $06, $12, $06, $12, $05, $13, $05, $13, $04, $13
    db $04, $13, $03, $13, $03, $13, $02, $13, $02, $13, $01, $13, $01, $13, $00, $13
    db $00, $13, $14

    nop                                           ; $5ae6: $00
    inc d                                         ; $5ae7: $14
    nop                                           ; $5ae8: $00
    inc d                                         ; $5ae9: $14
    nop                                           ; $5aea: $00
    inc d                                         ; $5aeb: $14
    ld bc, $0114                                  ; $5aec: $01 $14 $01
    inc d                                         ; $5aef: $14
    ld [bc], a                                    ; $5af0: $02
    inc d                                         ; $5af1: $14
    ld [bc], a                                    ; $5af2: $02
    inc d                                         ; $5af3: $14
    inc bc                                        ; $5af4: $03
    inc de                                        ; $5af5: $13
    inc bc                                        ; $5af6: $03
    inc de                                        ; $5af7: $13
    inc b                                         ; $5af8: $04
    inc de                                        ; $5af9: $13
    inc b                                         ; $5afa: $04
    inc de                                        ; $5afb: $13
    dec b                                         ; $5afc: $05
    inc de                                        ; $5afd: $13
    dec b                                         ; $5afe: $05
    inc de                                        ; $5aff: $13
    ld b, $13                                     ; $5b00: $06 $13
    db $06                                        ; $5b02: $06

    db $12, $07, $12, $07, $12, $08, $12, $08, $12, $09, $11, $09, $11, $0a, $11, $0a
    db $11, $0a, $10, $0b, $10, $0b, $10, $0c, $10, $0c, $0f, $0c, $0f, $0d, $0f, $0d
    db $0e, $0e, $0e, $0e, $0e, $0e, $0d, $0f, $0d, $0f, $0c, $0f, $0c, $10, $0c, $10
    db $0b, $10, $0b, $10, $0a, $11, $0a, $11, $0a, $11, $09, $11, $09, $12, $08, $12
    db $08, $12, $07, $12, $07, $12, $06, $13, $06, $13, $05, $13, $05, $13, $04, $13
    db $04, $13, $03, $13, $03, $14, $02, $14, $02, $14, $01, $14, $01, $14, $00, $14
    db $00, $14, $14

    nop                                           ; $5b66: $00
    inc d                                         ; $5b67: $14
    nop                                           ; $5b68: $00
    inc d                                         ; $5b69: $14
    ld bc, $0114                                  ; $5b6a: $01 $14 $01
    inc d                                         ; $5b6d: $14
    ld [bc], a                                    ; $5b6e: $02
    inc d                                         ; $5b6f: $14
    ld [bc], a                                    ; $5b70: $02
    inc d                                         ; $5b71: $14
    inc bc                                        ; $5b72: $03
    inc d                                         ; $5b73: $14
    inc bc                                        ; $5b74: $03
    inc d                                         ; $5b75: $14
    inc b                                         ; $5b76: $04
    inc d                                         ; $5b77: $14
    inc b                                         ; $5b78: $04
    inc d                                         ; $5b79: $14
    dec b                                         ; $5b7a: $05
    inc de                                        ; $5b7b: $13
    dec b                                         ; $5b7c: $05
    inc de                                        ; $5b7d: $13
    dec b                                         ; $5b7e: $05
    inc de                                        ; $5b7f: $13
    ld b, $13                                     ; $5b80: $06 $13
    db $06                                        ; $5b82: $06

    db $13, $07, $13, $07, $12, $08, $12, $08, $12, $09, $12, $09, $11, $0a, $11, $0a
    db $11, $0b, $11, $0b, $10, $0b, $10, $0c, $10, $0c, $0f, $0d, $0f, $0d, $0f, $0d
    db $0e, $0e, $0e, $0e, $0e, $0e, $0d, $0f, $0d, $0f, $0d, $0f, $0c, $10, $0c, $10
    db $0b, $10, $0b, $11, $0b, $11, $0a, $11, $0a, $11, $09, $12, $09, $12, $08, $12
    db $08, $12, $07, $13, $07, $13, $06, $13, $06, $13, $05, $13, $05, $13, $05, $14
    db $04, $14, $04, $14, $03, $14, $03, $14, $02, $14, $02, $14, $01, $14, $01, $14
    db $00, $14, $14

    nop                                           ; $5be6: $00
    inc d                                         ; $5be7: $14
    nop                                           ; $5be8: $00
    inc d                                         ; $5be9: $14
    ld bc, $0114                                  ; $5bea: $01 $14 $01
    inc d                                         ; $5bed: $14
    ld [bc], a                                    ; $5bee: $02
    inc d                                         ; $5bef: $14
    ld [bc], a                                    ; $5bf0: $02
    inc d                                         ; $5bf1: $14
    inc bc                                        ; $5bf2: $03
    inc d                                         ; $5bf3: $14
    inc bc                                        ; $5bf4: $03
    inc d                                         ; $5bf5: $14
    inc b                                         ; $5bf6: $04
    inc d                                         ; $5bf7: $14
    inc b                                         ; $5bf8: $04
    inc d                                         ; $5bf9: $14
    dec b                                         ; $5bfa: $05
    inc d                                         ; $5bfb: $14
    dec b                                         ; $5bfc: $05
    inc d                                         ; $5bfd: $14
    ld b, $13                                     ; $5bfe: $06 $13
    ld b, $13                                     ; $5c00: $06 $13
    rlca                                          ; $5c02: $07

    db $13, $07, $13, $08, $13, $08, $12, $08, $12, $09, $12, $09, $12, $0a, $11, $0a
    db $11, $0b, $11, $0b, $11, $0c, $10, $0c, $10, $0c, $10, $0d, $0f, $0d, $0f, $0e
    db $0f, $0e, $0e, $0e, $0e, $0f, $0e, $0f, $0d, $0f, $0d, $10, $0c, $10, $0c, $10
    db $0c, $11, $0b, $11, $0b, $11, $0a, $11, $0a, $12, $09, $12, $09, $12, $08, $12
    db $08, $13, $08, $13, $07, $13, $07, $13, $06, $13, $06, $14, $05, $14, $05, $14
    db $04, $14, $04, $14, $03, $14, $03, $14, $02, $14, $02, $14, $01, $14, $01, $14
    db $00, $14, $15

    nop                                           ; $5c66: $00
    dec d                                         ; $5c67: $15
    nop                                           ; $5c68: $00
    dec d                                         ; $5c69: $15
    ld bc, $0115                                  ; $5c6a: $01 $15 $01
    dec d                                         ; $5c6d: $15
    ld [bc], a                                    ; $5c6e: $02
    dec d                                         ; $5c6f: $15
    ld [bc], a                                    ; $5c70: $02
    dec d                                         ; $5c71: $15
    inc bc                                        ; $5c72: $03
    dec d                                         ; $5c73: $15
    inc bc                                        ; $5c74: $03
    inc d                                         ; $5c75: $14
    inc b                                         ; $5c76: $04
    inc d                                         ; $5c77: $14
    inc b                                         ; $5c78: $04
    inc d                                         ; $5c79: $14
    dec b                                         ; $5c7a: $05
    inc d                                         ; $5c7b: $14
    dec b                                         ; $5c7c: $05
    inc d                                         ; $5c7d: $14
    ld b, $14                                     ; $5c7e: $06 $14
    ld b, $14                                     ; $5c80: $06 $14
    rlca                                          ; $5c82: $07

    db $13, $07, $13, $08, $13, $08, $13, $09, $13, $09, $12, $0a, $12, $0a, $12, $0a
    db $12, $0b, $11, $0b, $11, $0c, $11, $0c, $10, $0d, $10, $0d, $10, $0d, $0f, $0e
    db $0f, $0e, $0f, $0f, $0e, $0f, $0e, $0f, $0d, $10, $0d, $10, $0d, $10, $0c, $11
    db $0c, $11, $0b, $11, $0b, $12, $0a, $12, $0a, $12, $0a, $12, $09, $13, $09, $13
    db $08, $13, $08, $13, $07, $13, $07, $14, $06, $14, $06, $14, $05, $14, $05, $14
    db $04, $14, $04, $14, $03, $15, $03, $15, $02, $15, $02, $15, $01, $15, $01, $15
    db $00, $15, $15

    nop                                           ; $5ce6: $00
    dec d                                         ; $5ce7: $15
    nop                                           ; $5ce8: $00
    dec d                                         ; $5ce9: $15
    ld bc, $0115                                  ; $5cea: $01 $15 $01
    dec d                                         ; $5ced: $15
    ld [bc], a                                    ; $5cee: $02
    dec d                                         ; $5cef: $15
    ld [bc], a                                    ; $5cf0: $02
    dec d                                         ; $5cf1: $15
    inc bc                                        ; $5cf2: $03
    dec d                                         ; $5cf3: $15
    inc bc                                        ; $5cf4: $03
    dec d                                         ; $5cf5: $15
    inc b                                         ; $5cf6: $04
    dec d                                         ; $5cf7: $15
    inc b                                         ; $5cf8: $04
    dec d                                         ; $5cf9: $15
    dec b                                         ; $5cfa: $05
    inc d                                         ; $5cfb: $14
    dec b                                         ; $5cfc: $05
    inc d                                         ; $5cfd: $14
    ld b, $14                                     ; $5cfe: $06 $14
    ld b, $14                                     ; $5d00: $06 $14
    rlca                                          ; $5d02: $07

    db $14, $07, $14, $08, $13, $08, $13, $09, $13, $09, $13, $0a, $12, $0a, $12, $0b
    db $12, $0b, $12, $0c, $11, $0c, $11, $0c, $11, $0d, $10, $0d, $10, $0e, $10, $0e
    db $0f, $0e, $0f, $0f, $0e, $0f, $0e, $10, $0e, $10, $0d, $10, $0d, $11, $0c, $11
    db $0c, $11, $0c, $12, $0b, $12, $0b, $12, $0a, $12, $0a, $13, $09, $13, $09, $13
    db $08, $13, $08, $14, $07, $14, $07, $14, $06, $14, $06, $14, $05, $14, $05, $15
    db $04, $15, $04, $15, $03, $15, $03, $15, $02, $15, $02, $15, $01, $15, $01, $15
    db $00, $15, $16

    nop                                           ; $5d66: $00
    ld d, $00                                     ; $5d67: $16 $00
    ld d, $01                                     ; $5d69: $16 $01
    ld d, $01                                     ; $5d6b: $16 $01
    dec d                                         ; $5d6d: $15
    ld [bc], a                                    ; $5d6e: $02
    dec d                                         ; $5d6f: $15
    ld [bc], a                                    ; $5d70: $02
    dec d                                         ; $5d71: $15
    inc bc                                        ; $5d72: $03
    dec d                                         ; $5d73: $15
    inc bc                                        ; $5d74: $03
    dec d                                         ; $5d75: $15
    inc b                                         ; $5d76: $04
    dec d                                         ; $5d77: $15
    inc b                                         ; $5d78: $04
    dec d                                         ; $5d79: $15
    dec b                                         ; $5d7a: $05
    dec d                                         ; $5d7b: $15
    dec b                                         ; $5d7c: $05
    dec d                                         ; $5d7d: $15
    ld b, $14                                     ; $5d7e: $06 $14
    ld b, $14                                     ; $5d80: $06 $14
    rlca                                          ; $5d82: $07

    db $14, $07, $14, $08, $14, $08, $13, $09, $13, $09, $13, $0a, $13, $0a, $12, $0b
    db $12, $0b, $12, $0c, $12, $0c, $11, $0d, $11, $0d, $11, $0e, $10, $0e, $10, $0e
    db $0f, $0f, $0f, $0f, $0f, $0f, $0e, $10, $0e, $10, $0e, $11, $0d, $11, $0d, $11
    db $0c, $12, $0c, $12, $0b, $12, $0b, $12, $0a, $13, $0a, $13, $09, $13, $09, $13
    db $08, $14, $08, $14, $07, $14, $07, $14, $06, $14, $06, $15, $05, $15, $05, $15
    db $04, $15, $04, $15, $03, $15, $03, $15, $02, $15, $02, $15, $01, $16, $01, $16
    db $00, $16, $16

    nop                                           ; $5de6: $00
    ld d, $00                                     ; $5de7: $16 $00
    ld d, $01                                     ; $5de9: $16 $01
    ld d, $01                                     ; $5deb: $16 $01
    ld d, $02                                     ; $5ded: $16 $02
    ld d, $02                                     ; $5def: $16 $02
    ld d, $03                                     ; $5df1: $16 $03
    ld d, $03                                     ; $5df3: $16 $03
    ld d, $04                                     ; $5df5: $16 $04
    dec d                                         ; $5df7: $15
    inc b                                         ; $5df8: $04
    dec d                                         ; $5df9: $15
    dec b                                         ; $5dfa: $05
    dec d                                         ; $5dfb: $15
    dec b                                         ; $5dfc: $05
    dec d                                         ; $5dfd: $15
    ld b, $15                                     ; $5dfe: $06 $15
    rlca                                          ; $5e00: $07
    dec d                                         ; $5e01: $15
    rlca                                          ; $5e02: $07

    db $14, $08, $14, $08, $14, $09, $14, $09, $14, $0a, $13, $0a, $13, $0b, $13, $0b
    db $12, $0c, $12, $0c, $12, $0c, $12, $0d, $11, $0d, $11, $0e, $11, $0e, $10, $0f
    db $10, $0f, $0f, $0f, $0f, $10, $0f, $10, $0e, $11, $0e, $11, $0d, $11, $0d, $12
    db $0c, $12, $0c, $12, $0c, $12, $0b, $13, $0b, $13, $0a, $13, $0a, $14, $09, $14
    db $09, $14, $08, $14, $08, $14, $07, $15, $07, $15, $06, $15, $05, $15, $05, $15
    db $04, $15, $04, $16, $03, $16, $03, $16, $02, $16, $02, $16, $01, $16, $01, $16
    db $00, $16, $16

    nop                                           ; $5e66: $00
    ld d, $00                                     ; $5e67: $16 $00
    ld d, $01                                     ; $5e69: $16 $01
    ld d, $01                                     ; $5e6b: $16 $01
    ld d, $02                                     ; $5e6d: $16 $02
    ld d, $02                                     ; $5e6f: $16 $02
    ld d, $03                                     ; $5e71: $16 $03
    ld d, $03                                     ; $5e73: $16 $03
    ld d, $04                                     ; $5e75: $16 $04
    ld d, $05                                     ; $5e77: $16 $05
    ld d, $05                                     ; $5e79: $16 $05
    ld d, $06                                     ; $5e7b: $16 $06
    dec d                                         ; $5e7d: $15
    ld b, $15                                     ; $5e7e: $06 $15
    rlca                                          ; $5e80: $07
    dec d                                         ; $5e81: $15
    rlca                                          ; $5e82: $07

    db $15, $08, $15, $08, $14, $09, $14, $09, $14, $0a, $14, $0a, $13, $0b, $13, $0b
    db $13, $0c, $13, $0c, $12, $0d, $12, $0d, $12, $0e, $11, $0e, $11, $0e, $10, $0f
    db $10, $0f, $10, $10, $0f, $10, $0f, $10, $0e, $11, $0e, $11, $0e, $12, $0d, $12
    db $0d, $12, $0c, $13, $0c, $13, $0b, $13, $0b, $13, $0a, $14, $0a, $14, $09, $14
    db $09, $14, $08, $15, $08, $15, $07, $15, $07, $15, $06, $15, $06, $16, $05, $16
    db $05, $16, $04, $16, $03, $16, $03, $16, $02, $16, $02, $16, $01, $16, $01, $16
    db $00, $16, $17

    nop                                           ; $5ee6: $00
    rla                                           ; $5ee7: $17
    nop                                           ; $5ee8: $00
    rla                                           ; $5ee9: $17
    ld bc, $0117                                  ; $5eea: $01 $17 $01
    rla                                           ; $5eed: $17
    ld [bc], a                                    ; $5eee: $02
    rla                                           ; $5eef: $17
    ld [bc], a                                    ; $5ef0: $02
    rla                                           ; $5ef1: $17
    inc bc                                        ; $5ef2: $03
    ld d, $03                                     ; $5ef3: $16 $03
    ld d, $04                                     ; $5ef5: $16 $04
    ld d, $05                                     ; $5ef7: $16 $05
    ld d, $05                                     ; $5ef9: $16 $05
    ld d, $06                                     ; $5efb: $16 $06
    ld d, $06                                     ; $5efd: $16 $06
    ld d, $07                                     ; $5eff: $16 $07
    dec d                                         ; $5f01: $15
    rlca                                          ; $5f02: $07

    db $15, $08, $15, $08, $15, $09, $15, $09, $14, $0a, $14, $0a, $14, $0b, $13, $0b
    db $13, $0c, $13, $0c, $13, $0d, $12, $0d, $12, $0e, $11, $0e, $11, $0f, $11, $0f
    db $10, $10, $10, $10, $10, $10, $0f, $11, $0f, $11, $0e, $11, $0e, $12, $0d, $12
    db $0d, $13, $0c, $13, $0c, $13, $0b, $13, $0b, $14, $0a, $14, $0a, $14, $09, $15
    db $09, $15, $08, $15, $08, $15, $07, $15, $07, $16, $06, $16, $06, $16, $05, $16
    db $05, $16, $04, $16, $03, $16, $03, $17, $02, $17, $02, $17, $01, $17, $01, $17
    db $00, $17, $17

    nop                                           ; $5f66: $00
    rla                                           ; $5f67: $17
    nop                                           ; $5f68: $00
    rla                                           ; $5f69: $17
    ld bc, $0117                                  ; $5f6a: $01 $17 $01
    rla                                           ; $5f6d: $17
    ld [bc], a                                    ; $5f6e: $02
    rla                                           ; $5f6f: $17
    ld [bc], a                                    ; $5f70: $02
    rla                                           ; $5f71: $17
    inc bc                                        ; $5f72: $03
    rla                                           ; $5f73: $17
    inc b                                         ; $5f74: $04
    rla                                           ; $5f75: $17
    inc b                                         ; $5f76: $04
    rla                                           ; $5f77: $17
    dec b                                         ; $5f78: $05
    ld d, $05                                     ; $5f79: $16 $05
    ld d, $06                                     ; $5f7b: $16 $06
    ld d, $06                                     ; $5f7d: $16 $06
    ld d, $07                                     ; $5f7f: $16 $07
    ld d, $07                                     ; $5f81: $16 $07

    db $16, $08, $15, $09, $15, $09, $15, $0a, $15, $0a, $14, $0b, $14, $0b, $14, $0c
    db $14, $0c, $13, $0d, $13, $0d, $13, $0e, $12, $0e, $12, $0f, $11, $0f, $11, $0f
    db $11, $10, $10, $10, $10, $11, $0f, $11, $0f, $11, $0f, $12, $0e, $12, $0e, $13
    db $0d, $13, $0d, $13, $0c, $14, $0c, $14, $0b, $14, $0b, $14, $0a, $15, $0a, $15
    db $09, $15, $09, $15, $08, $16, $07, $16, $07, $16, $06, $16, $06, $16, $05, $16
    db $05, $17, $04, $17, $04, $17, $03, $17, $02, $17, $02, $17, $01, $17, $01, $17
    db $00, $17, $18

    nop                                           ; $5fe6: $00
    jr jr_016_5fe9                                ; $5fe7: $18 $00

jr_016_5fe9:
    jr @+$03                                      ; $5fe9: $18 $01

    jr @+$03                                      ; $5feb: $18 $01

    jr jr_016_5ff1                                ; $5fed: $18 $02

    rla                                           ; $5fef: $17
    ld [bc], a                                    ; $5ff0: $02

jr_016_5ff1:
    rla                                           ; $5ff1: $17
    inc bc                                        ; $5ff2: $03
    rla                                           ; $5ff3: $17
    inc b                                         ; $5ff4: $04
    rla                                           ; $5ff5: $17
    inc b                                         ; $5ff6: $04
    rla                                           ; $5ff7: $17
    dec b                                         ; $5ff8: $05
    rla                                           ; $5ff9: $17
    dec b                                         ; $5ffa: $05
    rla                                           ; $5ffb: $17
    ld b, $17                                     ; $5ffc: $06 $17
    rlca                                          ; $5ffe: $07
    ld d, $07                                     ; $5fff: $16 $07
    ld d, $08                                     ; $6001: $16 $08

    db $16, $08, $16, $09, $16, $09, $15, $0a, $15, $0a, $15, $0b, $15, $0b, $14, $0c
    db $14, $0c, $14, $0d, $13, $0d, $13, $0e, $13, $0e, $12, $0f, $12, $0f, $11, $10
    db $11, $10, $11, $11, $10, $11, $10, $11, $0f, $12, $0f, $12, $0e, $13, $0e, $13
    db $0d, $13, $0d, $14, $0c, $14, $0c, $14, $0b, $15, $0b, $15, $0a, $15, $0a, $15
    db $09, $16, $09, $16, $08, $16, $08, $16, $07, $16, $07, $17, $06, $17, $05, $17
    db $05, $17, $04, $17, $04, $17, $03, $17, $02, $17, $02, $18, $01, $18, $01, $18
    db $00, $18, $18

    nop                                           ; $6066: $00
    jr jr_016_6069                                ; $6067: $18 $00

jr_016_6069:
    jr @+$03                                      ; $6069: $18 $01

    jr @+$03                                      ; $606b: $18 $01

    jr jr_016_6071                                ; $606d: $18 $02

    jr @+$05                                      ; $606f: $18 $03

jr_016_6071:
    jr @+$05                                      ; $6071: $18 $03

    jr jr_016_6079                                ; $6073: $18 $04

    jr jr_016_607b                                ; $6075: $18 $04

    jr jr_016_607e                                ; $6077: $18 $05

jr_016_6079:
    rla                                           ; $6079: $17
    dec b                                         ; $607a: $05

jr_016_607b:
    rla                                           ; $607b: $17
    ld b, $17                                     ; $607c: $06 $17

jr_016_607e:
    rlca                                          ; $607e: $07
    rla                                           ; $607f: $17
    rlca                                          ; $6080: $07
    rla                                           ; $6081: $17
    db $08                                        ; $6082: $08

    db $16, $08, $16, $09, $16, $09, $16, $0a, $15, $0b, $15, $0b, $15, $0c, $15, $0c
    db $14, $0d, $14, $0d, $14, $0e, $13, $0e, $13, $0f, $13, $0f, $12, $10, $12, $10
    db $11, $10, $11, $11, $10, $11, $10, $12, $10, $12, $0f, $13, $0f, $13, $0e, $13
    db $0e, $14, $0d, $14, $0d, $14, $0c, $15, $0c, $15, $0b, $15, $0b, $15, $0a, $16
    db $09, $16, $09, $16, $08, $16, $08, $17, $07, $17, $07, $17, $06, $17, $05, $17
    db $05, $18, $04, $18, $04, $18, $03, $18, $03, $18, $02, $18, $01, $18, $01, $18
    db $00, $18, $19

    nop                                           ; $60e6: $00
    add hl, de                                    ; $60e7: $19
    nop                                           ; $60e8: $00
    add hl, de                                    ; $60e9: $19
    ld bc, $0119                                  ; $60ea: $01 $19 $01
    jr jr_016_60f1                                ; $60ed: $18 $02

    jr @+$05                                      ; $60ef: $18 $03

jr_016_60f1:
    jr @+$05                                      ; $60f1: $18 $03

    jr jr_016_60f9                                ; $60f3: $18 $04

    jr jr_016_60fb                                ; $60f5: $18 $04

    jr @+$07                                      ; $60f7: $18 $05

jr_016_60f9:
    jr jr_016_6101                                ; $60f9: $18 $06

jr_016_60fb:
    jr @+$08                                      ; $60fb: $18 $06

    jr @+$09                                      ; $60fd: $18 $07

    rla                                           ; $60ff: $17
    rlca                                          ; $6100: $07

jr_016_6101:
    rla                                           ; $6101: $17
    db $08                                        ; $6102: $08

    db $17, $09, $17, $09, $16, $0a, $16, $0a, $16, $0b, $16, $0b, $15, $0c, $15, $0c
    db $15, $0d, $14, $0d, $14, $0e, $14, $0e, $13, $0f, $13, $0f, $13, $10, $12, $10
    db $12, $11, $11, $11, $11, $12, $10, $12, $10, $13, $0f, $13, $0f, $13, $0e, $14
    db $0e, $14, $0d, $14, $0d, $15, $0c, $15, $0c, $15, $0b, $16, $0b, $16, $0a, $16
    db $0a, $16, $09, $17, $09, $17, $08, $17, $07, $17, $07, $18, $06, $18, $06, $18
    db $05, $18, $04, $18, $04, $18, $03, $18, $03, $18, $02, $18, $01, $19, $01, $19
    db $00, $19, $19

    nop                                           ; $6166: $00
    add hl, de                                    ; $6167: $19
    nop                                           ; $6168: $00
    add hl, de                                    ; $6169: $19
    ld bc, $0119                                  ; $616a: $01 $19 $01
    add hl, de                                    ; $616d: $19
    ld [bc], a                                    ; $616e: $02
    add hl, de                                    ; $616f: $19
    inc bc                                        ; $6170: $03
    add hl, de                                    ; $6171: $19
    inc bc                                        ; $6172: $03
    add hl, de                                    ; $6173: $19
    inc b                                         ; $6174: $04
    add hl, de                                    ; $6175: $19
    inc b                                         ; $6176: $04
    jr @+$07                                      ; $6177: $18 $05

    jr jr_016_6181                                ; $6179: $18 $06

    jr @+$08                                      ; $617b: $18 $06

    jr @+$09                                      ; $617d: $18 $07

    jr @+$0a                                      ; $617f: $18 $08

jr_016_6181:
    jr @+$0a                                      ; $6181: $18 $08

    db $17, $09, $17, $09, $17, $0a, $17, $0a, $16, $0b, $16, $0c, $16, $0c, $15, $0d
    db $15, $0d, $15, $0e, $14, $0e, $14, $0f, $14, $0f, $13, $10, $13, $10, $12, $11
    db $12, $11, $12, $12, $11, $12, $11, $12, $10, $13, $10, $13, $0f, $14, $0f, $14
    db $0e, $14, $0e, $15, $0d, $15, $0d, $15, $0c, $16, $0c, $16, $0b, $16, $0a, $17
    db $0a, $17, $09, $17, $09, $17, $08, $18, $08, $18, $07, $18, $06, $18, $06, $18
    db $05, $18, $04, $19, $04, $19, $03, $19, $03, $19, $02, $19, $01, $19, $01, $19
    db $00, $19, $1a

    nop                                           ; $61e6: $00
    ld a, [de]                                    ; $61e7: $1a
    nop                                           ; $61e8: $00
    ld a, [de]                                    ; $61e9: $1a
    ld bc, $011a                                  ; $61ea: $01 $1a $01
    add hl, de                                    ; $61ed: $19
    ld [bc], a                                    ; $61ee: $02
    add hl, de                                    ; $61ef: $19
    inc bc                                        ; $61f0: $03
    add hl, de                                    ; $61f1: $19
    inc bc                                        ; $61f2: $03
    add hl, de                                    ; $61f3: $19
    inc b                                         ; $61f4: $04
    add hl, de                                    ; $61f5: $19
    dec b                                         ; $61f6: $05
    add hl, de                                    ; $61f7: $19
    dec b                                         ; $61f8: $05
    add hl, de                                    ; $61f9: $19
    ld b, $19                                     ; $61fa: $06 $19
    ld b, $18                                     ; $61fc: $06 $18
    rlca                                          ; $61fe: $07
    jr @+$0a                                      ; $61ff: $18 $08

    jr @+$0a                                      ; $6201: $18 $08

    db $18, $09, $18, $09, $17, $0a, $17, $0b, $17, $0b, $17, $0c, $16, $0c, $16, $0d
    db $16, $0d, $15, $0e, $15, $0f, $14, $0f, $14, $10, $14, $10, $13, $11, $13, $11
    db $12, $12, $12, $12, $12, $12, $11, $13, $11, $13, $10, $14, $10, $14, $0f, $14
    db $0f, $15, $0e, $15, $0d, $16, $0d, $16, $0c, $16, $0c, $17, $0b, $17, $0b, $17
    db $0a, $17, $09, $18, $09, $18, $08, $18, $08, $18, $07, $18, $06, $19, $06, $19
    db $05, $19, $05, $19, $04, $19, $03, $19, $03, $19, $02, $19, $01, $1a, $01, $1a
    db $00, $1a, $1a

    nop                                           ; $6266: $00
    ld a, [de]                                    ; $6267: $1a
    nop                                           ; $6268: $00
    ld a, [de]                                    ; $6269: $1a
    ld bc, $011a                                  ; $626a: $01 $1a $01
    ld a, [de]                                    ; $626d: $1a
    ld [bc], a                                    ; $626e: $02
    ld a, [de]                                    ; $626f: $1a
    inc bc                                        ; $6270: $03
    ld a, [de]                                    ; $6271: $1a
    inc bc                                        ; $6272: $03
    ld a, [de]                                    ; $6273: $1a
    inc b                                         ; $6274: $04
    ld a, [de]                                    ; $6275: $1a
    dec b                                         ; $6276: $05
    ld a, [de]                                    ; $6277: $1a
    dec b                                         ; $6278: $05
    add hl, de                                    ; $6279: $19
    ld b, $19                                     ; $627a: $06 $19
    rlca                                          ; $627c: $07
    add hl, de                                    ; $627d: $19
    rlca                                          ; $627e: $07
    add hl, de                                    ; $627f: $19
    ld [$0819], sp                                ; $6280: $08 $19 $08

    db $18, $09, $18, $0a, $18, $0a, $18, $0b, $17, $0b, $17, $0c, $17, $0d, $16, $0d
    db $16, $0e, $16, $0e, $15, $0f, $15, $0f, $15, $10, $14, $10, $14, $11, $13, $11
    db $13, $12, $12, $12, $12, $13, $11, $13, $11, $14, $10, $14, $10, $15, $0f, $15
    db $0f, $15, $0e, $16, $0e, $16, $0d, $16, $0d, $17, $0c, $17, $0b, $17, $0b, $18
    db $0a, $18, $0a, $18, $09, $18, $08, $19, $08, $19, $07, $19, $07, $19, $06, $19
    db $05, $1a, $05, $1a, $04, $1a, $03, $1a, $03, $1a, $02, $1a, $01, $1a, $01, $1a
    db $00, $1a, $1b

    nop                                           ; $62e6: $00
    dec de                                        ; $62e7: $1b
    nop                                           ; $62e8: $00
    dec de                                        ; $62e9: $1b
    ld bc, $021b                                  ; $62ea: $01 $1b $02
    dec de                                        ; $62ed: $1b
    ld [bc], a                                    ; $62ee: $02
    dec de                                        ; $62ef: $1b
    inc bc                                        ; $62f0: $03
    ld a, [de]                                    ; $62f1: $1a
    inc bc                                        ; $62f2: $03
    ld a, [de]                                    ; $62f3: $1a
    inc b                                         ; $62f4: $04
    ld a, [de]                                    ; $62f5: $1a
    dec b                                         ; $62f6: $05
    ld a, [de]                                    ; $62f7: $1a
    dec b                                         ; $62f8: $05
    ld a, [de]                                    ; $62f9: $1a
    ld b, $1a                                     ; $62fa: $06 $1a
    rlca                                          ; $62fc: $07
    ld a, [de]                                    ; $62fd: $1a
    rlca                                          ; $62fe: $07
    add hl, de                                    ; $62ff: $19
    ld [$0919], sp                                ; $6300: $08 $19 $09

    db $19, $09, $19, $0a, $18, $0b, $18, $0b, $18, $0c, $18, $0c, $17, $0d, $17, $0e
    db $17, $0e, $16, $0f, $16, $0f, $15, $10, $15, $10, $15, $11, $14, $11, $14, $12
    db $13, $12, $13, $13, $12, $13, $12, $14, $11, $14, $11, $15, $10, $15, $10, $15
    db $0f, $16, $0f, $16, $0e, $17, $0e, $17, $0d, $17, $0c, $18, $0c, $18, $0b, $18
    db $0b, $18, $0a, $19, $09, $19, $09, $19, $08, $19, $07, $1a, $07, $1a, $06, $1a
    db $05, $1a, $05, $1a, $04, $1a, $03, $1a, $03, $1b, $02, $1b, $02, $1b, $01, $1b
    db $00, $1b, $1b

    nop                                           ; $6366: $00
    dec de                                        ; $6367: $1b
    nop                                           ; $6368: $00
    dec de                                        ; $6369: $1b
    ld bc, $021b                                  ; $636a: $01 $1b $02
    dec de                                        ; $636d: $1b
    ld [bc], a                                    ; $636e: $02
    dec de                                        ; $636f: $1b
    inc bc                                        ; $6370: $03
    dec de                                        ; $6371: $1b
    inc b                                         ; $6372: $04
    dec de                                        ; $6373: $1b
    inc b                                         ; $6374: $04
    dec de                                        ; $6375: $1b
    dec b                                         ; $6376: $05
    dec de                                        ; $6377: $1b
    ld b, $1a                                     ; $6378: $06 $1a
    ld b, $1a                                     ; $637a: $06 $1a
    rlca                                          ; $637c: $07
    ld a, [de]                                    ; $637d: $1a
    ld [$081a], sp                                ; $637e: $08 $1a $08
    ld a, [de]                                    ; $6381: $1a
    add hl, bc                                    ; $6382: $09

    db $19, $0a, $19, $0a, $19, $0b, $19, $0b, $18, $0c, $18, $0d, $18, $0d, $17, $0e
    db $17, $0e, $17, $0f, $16, $10, $16, $10, $15, $11, $15, $11, $15, $12, $14, $12
    db $14, $13, $13, $13, $13, $14, $12, $14, $12, $15, $11, $15, $11, $15, $10, $16
    db $10, $16, $0f, $17, $0e, $17, $0e, $17, $0d, $18, $0d, $18, $0c, $18, $0b, $19
    db $0b, $19, $0a, $19, $0a, $19, $09, $1a, $08, $1a, $08, $1a, $07, $1a, $06, $1a
    db $06, $1b, $05, $1b, $04, $1b, $04, $1b, $03, $1b, $02, $1b, $02, $1b, $01, $1b
    db $00, $1b, $1c

    nop                                           ; $63e6: $00
    inc e                                         ; $63e7: $1c
    nop                                           ; $63e8: $00
    inc e                                         ; $63e9: $1c
    ld bc, $021c                                  ; $63ea: $01 $1c $02
    inc e                                         ; $63ed: $1c
    ld [bc], a                                    ; $63ee: $02
    inc e                                         ; $63ef: $1c
    inc bc                                        ; $63f0: $03
    inc e                                         ; $63f1: $1c
    inc b                                         ; $63f2: $04
    inc e                                         ; $63f3: $1c
    inc b                                         ; $63f4: $04
    dec de                                        ; $63f5: $1b
    dec b                                         ; $63f6: $05
    dec de                                        ; $63f7: $1b
    ld b, $1b                                     ; $63f8: $06 $1b
    ld b, $1b                                     ; $63fa: $06 $1b
    rlca                                          ; $63fc: $07
    dec de                                        ; $63fd: $1b
    ld [$081b], sp                                ; $63fe: $08 $1b $08
    ld a, [de]                                    ; $6401: $1a
    add hl, bc                                    ; $6402: $09

    db $1a, $0a, $1a, $0a, $1a, $0b, $19, $0c, $19, $0c, $19, $0d, $18, $0e, $18, $0e
    db $18, $0f, $17, $0f, $17, $10, $16, $10, $16, $11, $15, $12, $15, $12, $15, $13
    db $14, $13, $14, $14, $13, $14, $13, $15, $12, $15, $12, $15, $11, $16, $10, $16
    db $10, $17, $0f, $17, $0f, $18, $0e, $18, $0e, $18, $0d, $19, $0c, $19, $0c, $19
    db $0b, $1a, $0a, $1a, $0a, $1a, $09, $1a, $08, $1b, $08, $1b, $07, $1b, $06, $1b
    db $06, $1b, $05, $1b, $04, $1c, $04, $1c, $03, $1c, $02, $1c, $02, $1c, $01, $1c
    db $00, $1c, $1d

    nop                                           ; $6466: $00
    dec e                                         ; $6467: $1d
    nop                                           ; $6468: $00
    dec e                                         ; $6469: $1d
    ld bc, $021d                                  ; $646a: $01 $1d $02
    inc e                                         ; $646d: $1c
    ld [bc], a                                    ; $646e: $02
    inc e                                         ; $646f: $1c
    inc bc                                        ; $6470: $03
    inc e                                         ; $6471: $1c
    inc b                                         ; $6472: $04
    inc e                                         ; $6473: $1c
    inc b                                         ; $6474: $04
    inc e                                         ; $6475: $1c
    dec b                                         ; $6476: $05
    inc e                                         ; $6477: $1c
    ld b, $1c                                     ; $6478: $06 $1c
    rlca                                          ; $647a: $07
    inc e                                         ; $647b: $1c
    rlca                                          ; $647c: $07
    dec de                                        ; $647d: $1b
    ld [$091b], sp                                ; $647e: $08 $1b $09
    dec de                                        ; $6481: $1b
    add hl, bc                                    ; $6482: $09

    db $1b, $0a, $1a, $0b, $1a, $0b, $1a, $0c, $19, $0d, $19, $0d, $19, $0e, $18, $0e
    db $18, $0f, $18, $10, $17, $10, $17, $11, $16, $11, $16, $12, $16, $13, $15, $13
    db $15, $14, $14, $14, $14, $15, $13, $15, $13, $16, $12, $16, $11, $16, $11, $17
    db $10, $17, $10, $18, $0f, $18, $0e, $18, $0e, $19, $0d, $19, $0d, $19, $0c, $1a
    db $0b, $1a, $0b, $1a, $0a, $1b, $09, $1b, $09, $1b, $08, $1b, $07, $1c, $07, $1c
    db $06, $1c, $05, $1c, $04, $1c, $04, $1c, $03, $1c, $02, $1c, $02, $1d, $01, $1d
    db $00, $1d, $1d

    nop                                           ; $64e6: $00
    dec e                                         ; $64e7: $1d
    nop                                           ; $64e8: $00
    dec e                                         ; $64e9: $1d
    ld bc, $021d                                  ; $64ea: $01 $1d $02
    dec e                                         ; $64ed: $1d
    ld [bc], a                                    ; $64ee: $02
    dec e                                         ; $64ef: $1d
    inc bc                                        ; $64f0: $03
    dec e                                         ; $64f1: $1d
    inc b                                         ; $64f2: $04
    dec e                                         ; $64f3: $1d
    dec b                                         ; $64f4: $05
    dec e                                         ; $64f5: $1d
    dec b                                         ; $64f6: $05
    dec e                                         ; $64f7: $1d
    ld b, $1c                                     ; $64f8: $06 $1c
    rlca                                          ; $64fa: $07
    inc e                                         ; $64fb: $1c
    rlca                                          ; $64fc: $07
    inc e                                         ; $64fd: $1c
    ld [$091c], sp                                ; $64fe: $08 $1c $09
    inc e                                         ; $6501: $1c
    ld a, [bc]                                    ; $6502: $0a

    db $1b, $0a, $1b, $0b, $1b, $0c, $1a, $0c, $1a, $0d, $1a, $0e, $19, $0e, $19, $0f
    db $19, $0f, $18, $10, $18, $11, $17, $11, $17, $12, $17, $12, $16, $13, $16, $13
    db $15, $14, $15, $15, $14, $15, $13, $16, $13, $16, $12, $17, $12, $17, $11, $17
    db $11, $18, $10, $18, $0f, $19, $0f, $19, $0e, $19, $0e, $1a, $0d, $1a, $0c, $1a
    db $0c, $1b, $0b, $1b, $0a, $1b, $0a, $1c, $09, $1c, $08, $1c, $07, $1c, $07, $1c
    db $06, $1d, $05, $1d, $05, $1d, $04, $1d, $03, $1d, $02, $1d, $02, $1d, $01, $1d
    db $00, $1d, $1e

    nop                                           ; $6566: $00
    ld e, $00                                     ; $6567: $1e $00
    ld e, $01                                     ; $6569: $1e $01
    ld e, $02                                     ; $656b: $1e $02
    ld e, $02                                     ; $656d: $1e $02
    ld e, $03                                     ; $656f: $1e $03
    ld e, $04                                     ; $6571: $1e $04
    ld e, $05                                     ; $6573: $1e $05
    dec e                                         ; $6575: $1d
    dec b                                         ; $6576: $05
    dec e                                         ; $6577: $1d
    ld b, $1d                                     ; $6578: $06 $1d
    rlca                                          ; $657a: $07
    dec e                                         ; $657b: $1d
    ld [$081d], sp                                ; $657c: $08 $1d $08
    inc e                                         ; $657f: $1c
    add hl, bc                                    ; $6580: $09
    inc e                                         ; $6581: $1c
    ld a, [bc]                                    ; $6582: $0a

    db $1c, $0a, $1c, $0b, $1b, $0c, $1b, $0d, $1b, $0d, $1a, $0e, $1a, $0f, $1a, $0f
    db $19, $10, $19, $10, $18, $11, $18, $12, $18, $12, $17, $13, $17, $13, $16, $14
    db $16, $15, $15, $15, $15, $16, $14, $16, $13, $17, $13, $17, $12, $18, $12, $18
    db $11, $18, $10, $19, $10, $19, $0f, $1a, $0f, $1a, $0e, $1a, $0d, $1b, $0d, $1b
    db $0c, $1b, $0b, $1c, $0a, $1c, $0a, $1c, $09, $1c, $08, $1d, $08, $1d, $07, $1d
    db $06, $1d, $05, $1d, $05, $1e, $04, $1e, $03, $1e, $02, $1e, $02, $1e, $01, $1e
    db $00, $1e, $1f

    nop                                           ; $65e6: $00
    rra                                           ; $65e7: $1f
    nop                                           ; $65e8: $00
    rra                                           ; $65e9: $1f
    ld bc, $021f                                  ; $65ea: $01 $1f $02
    rra                                           ; $65ed: $1f
    inc bc                                        ; $65ee: $03
    ld e, $03                                     ; $65ef: $1e $03
    ld e, $04                                     ; $65f1: $1e $04
    ld e, $05                                     ; $65f3: $1e $05
    ld e, $06                                     ; $65f5: $1e $06
    ld e, $06                                     ; $65f7: $1e $06
    ld e, $07                                     ; $65f9: $1e $07
    ld e, $08                                     ; $65fb: $1e $08
    dec e                                         ; $65fd: $1d
    add hl, bc                                    ; $65fe: $09
    dec e                                         ; $65ff: $1d
    add hl, bc                                    ; $6600: $09
    dec e                                         ; $6601: $1d
    ld a, [bc]                                    ; $6602: $0a

    db $1d, $0b, $1c, $0b, $1c, $0c, $1c, $0d, $1b, $0e, $1b, $0e, $1b, $0f, $1a, $10
    db $1a, $10, $19, $11, $19, $11, $19, $12, $18, $13, $18, $13, $17, $14, $17, $14
    db $16, $15, $16, $16, $15, $16, $14, $17, $14, $17, $13, $18, $13, $18, $12, $19
    db $11, $19, $11, $19, $10, $1a, $10, $1a, $0f, $1b, $0e, $1b, $0e, $1b, $0d, $1c
    db $0c, $1c, $0b, $1c, $0b, $1d, $0a, $1d, $09, $1d, $09, $1d, $08, $1e, $07, $1e
    db $06, $1e, $06, $1e, $05, $1e, $04, $1e, $03, $1e, $03, $1f, $02, $1f, $01, $1f
    db $00, $1f, $20

    nop                                           ; $6666: $00
    rra                                           ; $6667: $1f
    nop                                           ; $6668: $00
    rra                                           ; $6669: $1f
    ld bc, $021f                                  ; $666a: $01 $1f $02
    rra                                           ; $666d: $1f
    inc bc                                        ; $666e: $03
    rra                                           ; $666f: $1f
    inc bc                                        ; $6670: $03
    rra                                           ; $6671: $1f
    inc b                                         ; $6672: $04
    rra                                           ; $6673: $1f
    dec b                                         ; $6674: $05
    rra                                           ; $6675: $1f
    ld b, $1f                                     ; $6676: $06 $1f
    rlca                                          ; $6678: $07
    rra                                           ; $6679: $1f
    rlca                                          ; $667a: $07
    ld e, $08                                     ; $667b: $1e $08
    ld e, $09                                     ; $667d: $1e $09
    ld e, $0a                                     ; $667f: $1e $0a
    ld e, $0a                                     ; $6681: $1e $0a

    db $1d, $0b, $1d, $0c, $1d, $0c, $1c, $0d, $1c, $0e, $1c, $0f, $1b, $0f, $1b, $10
    db $1b, $11, $1a, $11, $1a, $12, $19, $13, $19, $13, $18, $14, $18, $14, $17, $15
    db $17, $16, $16, $16, $16, $17, $15, $17, $14, $18, $14, $18, $13, $19, $13, $19
    db $12, $1a, $11, $1a, $11, $1b, $10, $1b, $0f, $1b, $0f, $1c, $0e, $1c, $0d, $1c
    db $0c, $1d, $0c, $1d, $0b, $1d, $0a, $1e, $0a, $1e, $09, $1e, $08, $1e, $07, $1f
    db $07, $1f, $06, $1f, $05, $1f, $04, $1f, $03, $1f, $03, $1f, $02, $1f, $01, $1f
    db $00, $1f, $20

    nop                                           ; $66e6: $00
    jr nz, jr_016_66e9                            ; $66e7: $20 $00

jr_016_66e9:
    jr nz, @+$03                                  ; $66e9: $20 $01

    jr nz, jr_016_66ef                            ; $66eb: $20 $02

    jr nz, @+$05                                  ; $66ed: $20 $03

jr_016_66ef:
    jr nz, jr_016_66f5                            ; $66ef: $20 $04

    jr nz, jr_016_66f7                            ; $66f1: $20 $04

    jr nz, jr_016_66fa                            ; $66f3: $20 $05

jr_016_66f5:
    jr nz, @+$08                                  ; $66f5: $20 $06

jr_016_66f7:
    jr nz, jr_016_6700                            ; $66f7: $20 $07

    rra                                           ; $66f9: $1f

jr_016_66fa:
    rlca                                          ; $66fa: $07
    rra                                           ; $66fb: $1f
    ld [$091f], sp                                ; $66fc: $08 $1f $09
    rra                                           ; $66ff: $1f

jr_016_6700:
    ld a, [bc]                                    ; $6700: $0a
    ld e, $0b                                     ; $6701: $1e $0b

    db $1e, $0b, $1e, $0c, $1e, $0d, $1d, $0e, $1d, $0e, $1c, $0f, $1c, $10, $1c, $10
    db $1b, $11, $1b, $12, $1a, $12, $1a, $13, $19, $14, $19, $14, $18, $15, $18, $16
    db $17, $16, $17, $17, $16, $17, $16, $18, $15, $18, $14, $19, $14, $19, $13, $1a
    db $12, $1a, $12, $1b, $11, $1b, $10, $1c, $10, $1c, $0f, $1c, $0e, $1d, $0e, $1d
    db $0d, $1e, $0c, $1e, $0b, $1e, $0b, $1e, $0a, $1f, $09, $1f, $08, $1f, $07, $1f
    db $07, $20, $06, $20, $05, $20, $04, $20, $04, $20, $03, $20, $02, $20, $01, $20
    db $00, $20, $21

    nop                                           ; $6766: $00
    ld hl, $2100                                  ; $6767: $21 $00 $21
    ld bc, $0221                                  ; $676a: $01 $21 $02
    ld hl, $2103                                  ; $676d: $21 $03 $21
    inc b                                         ; $6770: $04
    ld hl, $2104                                  ; $6771: $21 $04 $21
    dec b                                         ; $6774: $05
    ld hl, $2006                                  ; $6775: $21 $06 $20
    rlca                                          ; $6778: $07
    jr nz, @+$0a                                  ; $6779: $20 $08

    jr nz, @+$0a                                  ; $677b: $20 $08

    jr nz, @+$0b                                  ; $677d: $20 $09

    rra                                           ; $677f: $1f
    ld a, [bc]                                    ; $6780: $0a
    rra                                           ; $6781: $1f
    dec bc                                        ; $6782: $0b

    db $1f, $0c, $1f, $0c, $1e, $0d, $1e, $0e, $1e, $0f, $1d, $0f, $1d, $10, $1c, $11
    db $1c, $12, $1c, $12, $1b, $13, $1b, $14, $1a, $14, $1a, $15, $19, $16, $18, $16
    db $18, $17, $17, $17, $17, $18, $16, $18, $16, $19, $15, $1a, $14, $1a, $14, $1b
    db $13, $1b, $12, $1c, $12, $1c, $11, $1c, $10, $1d, $0f, $1d, $0f, $1e, $0e, $1e
    db $0d, $1e, $0c, $1f, $0c, $1f, $0b, $1f, $0a, $1f, $09, $20, $08, $20, $08, $20
    db $07, $20, $06, $21, $05, $21, $04, $21, $04, $21, $03, $21, $02, $21, $01, $21
    db $00, $21, $22

    nop                                           ; $67e6: $00
    ld [hl+], a                                   ; $67e7: $22
    nop                                           ; $67e8: $00
    ld [hl+], a                                   ; $67e9: $22
    ld bc, $0222                                  ; $67ea: $01 $22 $02
    ld [hl+], a                                   ; $67ed: $22
    inc bc                                        ; $67ee: $03
    ld [hl+], a                                   ; $67ef: $22
    inc b                                         ; $67f0: $04
    ld [hl+], a                                   ; $67f1: $22
    dec b                                         ; $67f2: $05
    ld [hl+], a                                   ; $67f3: $22
    dec b                                         ; $67f4: $05
    ld hl, $2106                                  ; $67f5: $21 $06 $21
    rlca                                          ; $67f8: $07
    ld hl, $2108                                  ; $67f9: $21 $08 $21
    add hl, bc                                    ; $67fc: $09
    ld hl, $200a                                  ; $67fd: $21 $0a $20
    ld a, [bc]                                    ; $6800: $0a
    jr nz, @+$0d                                  ; $6801: $20 $0b

    db $20, $0c, $1f, $0d, $1f, $0e, $1f, $0e, $1e, $0f, $1e, $10, $1e, $11, $1d, $11
    db $1d, $12, $1c, $13, $1c, $13, $1b, $14, $1b, $15, $1a, $15, $1a, $16, $19, $17
    db $19, $17, $18, $18, $17, $19, $17, $19, $16, $1a, $15, $1a, $15, $1b, $14, $1b
    db $13, $1c, $13, $1c, $12, $1d, $11, $1d, $11, $1e, $10, $1e, $0f, $1e, $0e, $1f
    db $0e, $1f, $0d, $1f, $0c, $20, $0b, $20, $0a, $20, $0a, $21, $09, $21, $08, $21
    db $07, $21, $06, $21, $05, $22, $05, $22, $04, $22, $03, $22, $02, $22, $01, $22
    db $00, $22, $23

    nop                                           ; $6866: $00
    inc hl                                        ; $6867: $23
    nop                                           ; $6868: $00
    inc hl                                        ; $6869: $23
    ld bc, $0223                                  ; $686a: $01 $23 $02
    inc hl                                        ; $686d: $23
    inc bc                                        ; $686e: $03
    inc hl                                        ; $686f: $23
    inc b                                         ; $6870: $04
    inc hl                                        ; $6871: $23
    dec b                                         ; $6872: $05
    inc hl                                        ; $6873: $23
    ld b, $22                                     ; $6874: $06 $22
    ld b, $22                                     ; $6876: $06 $22
    rlca                                          ; $6878: $07
    ld [hl+], a                                   ; $6879: $22
    ld [$0922], sp                                ; $687a: $08 $22 $09
    ld [hl+], a                                   ; $687d: $22
    ld a, [bc]                                    ; $687e: $0a
    ld hl, $210b                                  ; $687f: $21 $0b $21
    dec bc                                        ; $6882: $0b

    db $21, $0c, $20, $0d, $20, $0e, $20, $0f, $1f, $0f, $1f, $10, $1e, $11, $1e, $12
    db $1e, $13, $1d, $13, $1d, $14, $1c, $15, $1c, $15, $1b, $16, $1a, $17, $1a, $17
    db $19, $18, $19, $19, $18, $19, $17, $1a, $17, $1a, $16, $1b, $15, $1c, $15, $1c
    db $14, $1d, $13, $1d, $13, $1e, $12, $1e, $11, $1e, $10, $1f, $0f, $1f, $0f, $20
    db $0e, $20, $0d, $20, $0c, $21, $0b, $21, $0b, $21, $0a, $22, $09, $22, $08, $22
    db $07, $22, $06, $22, $06, $23, $05, $23, $04, $23, $03, $23, $02, $23, $01, $23
    db $00, $23, $24

    nop                                           ; $68e6: $00
    inc h                                         ; $68e7: $24
    nop                                           ; $68e8: $00
    inc h                                         ; $68e9: $24
    ld bc, $0224                                  ; $68ea: $01 $24 $02
    inc h                                         ; $68ed: $24
    inc bc                                        ; $68ee: $03
    inc h                                         ; $68ef: $24
    inc b                                         ; $68f0: $04
    inc h                                         ; $68f1: $24
    dec b                                         ; $68f2: $05
    inc h                                         ; $68f3: $24
    ld b, $23                                     ; $68f4: $06 $23
    rlca                                          ; $68f6: $07
    inc hl                                        ; $68f7: $23
    ld [$0823], sp                                ; $68f8: $08 $23 $08
    inc hl                                        ; $68fb: $23
    add hl, bc                                    ; $68fc: $09
    ld [hl+], a                                   ; $68fd: $22
    ld a, [bc]                                    ; $68fe: $0a
    ld [hl+], a                                   ; $68ff: $22
    dec bc                                        ; $6900: $0b
    ld [hl+], a                                   ; $6901: $22
    inc c                                         ; $6902: $0c

    db $22, $0d, $21, $0d, $21, $0e, $21, $0f, $20, $10, $20, $11, $1f, $12, $1f, $12
    db $1e, $13, $1e, $14, $1d, $15, $1d, $15, $1c, $16, $1c, $17, $1b, $17, $1b, $18
    db $1a, $19, $19, $19, $19, $1a, $18, $1b, $17, $1b, $17, $1c, $16, $1c, $15, $1d
    db $15, $1d, $14, $1e, $13, $1e, $12, $1f, $12, $1f, $11, $20, $10, $20, $0f, $21
    db $0e, $21, $0d, $21, $0d, $22, $0c, $22, $0b, $22, $0a, $22, $09, $23, $08, $23
    db $08, $23, $07, $23, $06, $24, $05, $24, $04, $24, $03, $24, $02, $24, $01, $24
    db $00, $24, $25

    nop                                           ; $6966: $00
    dec h                                         ; $6967: $25
    nop                                           ; $6968: $00
    dec h                                         ; $6969: $25
    ld bc, $0225                                  ; $696a: $01 $25 $02
    dec h                                         ; $696d: $25
    inc bc                                        ; $696e: $03
    dec h                                         ; $696f: $25
    inc b                                         ; $6970: $04
    dec h                                         ; $6971: $25
    dec b                                         ; $6972: $05
    dec h                                         ; $6973: $25
    ld b, $24                                     ; $6974: $06 $24
    rlca                                          ; $6976: $07
    inc h                                         ; $6977: $24
    ld [$0924], sp                                ; $6978: $08 $24 $09
    inc h                                         ; $697b: $24
    ld a, [bc]                                    ; $697c: $0a
    inc h                                         ; $697d: $24
    ld a, [bc]                                    ; $697e: $0a
    inc hl                                        ; $697f: $23
    dec bc                                        ; $6980: $0b
    inc hl                                        ; $6981: $23
    inc c                                         ; $6982: $0c

    db $23, $0d, $22, $0e, $22, $0f, $22, $10, $21, $10, $21, $11, $20, $12, $20, $13
    db $1f, $14, $1f, $14, $1e, $15, $1e, $16, $1d, $17, $1d, $17, $1c, $18, $1b, $19
    db $1b, $19, $1a, $1a, $19, $1b, $19, $1b, $18, $1c, $17, $1d, $17, $1d, $16, $1e
    db $15, $1e, $14, $1f, $14, $1f, $13, $20, $12, $20, $11, $21, $10, $21, $10, $22
    db $0f, $22, $0e, $22, $0d, $23, $0c, $23, $0b, $23, $0a, $24, $0a, $24, $09, $24
    db $08, $24, $07, $24, $06, $25, $05, $25, $04, $25, $03, $25, $02, $25, $01, $25
    db $00, $25, $26

    nop                                           ; $69e6: $00
    ld h, $00                                     ; $69e7: $26 $00
    ld h, $01                                     ; $69e9: $26 $01
    ld h, $02                                     ; $69eb: $26 $02
    ld h, $03                                     ; $69ed: $26 $03
    ld h, $04                                     ; $69ef: $26 $04
    ld h, $05                                     ; $69f1: $26 $05
    ld h, $06                                     ; $69f3: $26 $06
    ld h, $07                                     ; $69f5: $26 $07
    dec h                                         ; $69f7: $25
    ld [$0925], sp                                ; $69f8: $08 $25 $09
    dec h                                         ; $69fb: $25
    ld a, [bc]                                    ; $69fc: $0a
    dec h                                         ; $69fd: $25
    dec bc                                        ; $69fe: $0b
    inc h                                         ; $69ff: $24

Jump_016_6a00:
    inc c                                         ; $6a00: $0c
    inc h                                         ; $6a01: $24
    dec c                                         ; $6a02: $0d

    db $24, $0d, $23, $0e, $23, $0f, $23, $10, $22, $11, $22, $12, $21, $13, $21, $13
    db $20, $14, $20, $15, $1f, $16, $1f, $17, $1e, $17, $1d, $18, $1d, $19, $1c, $1a
    db $1c, $1a, $1b, $1b, $1a, $1c, $1a, $1c, $19, $1d, $18, $1d, $17, $1e, $17, $1f
    db $16, $1f, $15, $20, $14, $20, $13, $21, $13, $21, $12, $22, $11, $22, $10, $23
    db $0f, $23, $0e, $23, $0d, $24, $0d, $24, $0c, $24, $0b, $25, $0a, $25, $09, $25
    db $08, $25, $07, $26, $06, $26, $05, $26, $04, $26, $03, $26, $02, $26, $01, $26
    db $00, $26, $28

    nop                                           ; $6a66: $00
    daa                                           ; $6a67: $27
    nop                                           ; $6a68: $00
    daa                                           ; $6a69: $27
    ld bc, $0227                                  ; $6a6a: $01 $27 $02
    daa                                           ; $6a6d: $27
    inc bc                                        ; $6a6e: $03
    daa                                           ; $6a6f: $27
    inc b                                         ; $6a70: $04
    daa                                           ; $6a71: $27
    dec b                                         ; $6a72: $05
    daa                                           ; $6a73: $27
    ld b, $27                                     ; $6a74: $06 $27
    rlca                                          ; $6a76: $07
    daa                                           ; $6a77: $27
    ld [$0926], sp                                ; $6a78: $08 $26 $09
    ld h, $0a                                     ; $6a7b: $26 $0a
    ld h, $0b                                     ; $6a7d: $26 $0b
    dec h                                         ; $6a7f: $25
    inc c                                         ; $6a80: $0c
    dec h                                         ; $6a81: $25
    dec c                                         ; $6a82: $0d

    db $25, $0e, $24, $0f, $24, $10, $24, $11, $23, $11, $23, $12, $22, $13, $22, $14
    db $21, $15, $21, $16, $20, $17, $20, $17, $1f, $18, $1e, $19, $1e, $1a, $1d, $1a
    db $1c, $1b, $1c, $1c, $1b, $1c, $1a, $1d, $1a, $1e, $19, $1e, $18, $1f, $17, $20
    db $17, $20, $16, $21, $15, $21, $14, $22, $13, $22, $12, $23, $11, $23, $11, $24
    db $10, $24, $0f, $24, $0e, $25, $0d, $25, $0c, $25, $0b, $26, $0a, $26, $09, $26
    db $08, $27, $07, $27, $06, $27, $05, $27, $04, $27, $03, $27, $02, $27, $01, $27
    db $00, $27, $29

    nop                                           ; $6ae6: $00
    add hl, hl                                    ; $6ae7: $29
    ld bc, $0229                                  ; $6ae8: $01 $29 $02
    add hl, hl                                    ; $6aeb: $29
    inc bc                                        ; $6aec: $03
    add hl, hl                                    ; $6aed: $29
    inc b                                         ; $6aee: $04
    jr z, @+$07                                   ; $6aef: $28 $05

    jr z, jr_016_6af9                             ; $6af1: $28 $06

    jr z, jr_016_6afc                             ; $6af3: $28 $07

    jr z, jr_016_6aff                             ; $6af5: $28 $08

    jr z, @+$0b                                   ; $6af7: $28 $09

jr_016_6af9:
    jr z, @+$0c                                   ; $6af9: $28 $0a

    daa                                           ; $6afb: $27

jr_016_6afc:
    dec bc                                        ; $6afc: $0b
    daa                                           ; $6afd: $27
    dec bc                                        ; $6afe: $0b

jr_016_6aff:
    daa                                           ; $6aff: $27

Jump_016_6b00:
    inc c                                         ; $6b00: $0c
    ld h, $0d                                     ; $6b01: $26 $0d

    db $26, $0e, $26, $0f, $25, $10, $25, $11, $24, $12, $24, $13, $23, $14, $23, $15
    db $22, $16, $22, $16, $21, $17, $21, $18, $20, $19, $1f, $1a, $1f, $1a, $1e, $1b
    db $1d, $1c, $1d, $1d, $1c, $1d, $1b, $1e, $1a, $1f, $1a, $1f, $19, $20, $18, $21
    db $17, $21, $16, $22, $16, $22, $15, $23, $14, $23, $13, $24, $12, $24, $11, $25
    db $10, $25, $0f, $26, $0e, $26, $0d, $26, $0c, $27, $0b, $27, $0b, $27, $0a, $28
    db $09, $28, $08, $28, $07, $28, $06, $28, $05, $28, $04, $29, $03, $29, $02, $29
    db $01, $29, $2a

    nop                                           ; $6b66: $00
    ld a, [hl+]                                   ; $6b67: $2a
    ld bc, $022a                                  ; $6b68: $01 $2a $02
    ld a, [hl+]                                   ; $6b6b: $2a
    inc bc                                        ; $6b6c: $03
    ld a, [hl+]                                   ; $6b6d: $2a
    inc b                                         ; $6b6e: $04
    ld a, [hl+]                                   ; $6b6f: $2a
    dec b                                         ; $6b70: $05
    ld a, [hl+]                                   ; $6b71: $2a
    ld b, $2a                                     ; $6b72: $06 $2a
    rlca                                          ; $6b74: $07
    add hl, hl                                    ; $6b75: $29
    ld [$0929], sp                                ; $6b76: $08 $29 $09
    add hl, hl                                    ; $6b79: $29
    ld a, [bc]                                    ; $6b7a: $0a
    add hl, hl                                    ; $6b7b: $29
    dec bc                                        ; $6b7c: $0b
    jr z, @+$0e                                   ; $6b7d: $28 $0c

    jr z, @+$0f                                   ; $6b7f: $28 $0d

    jr z, @+$10                                   ; $6b81: $28 $0e

    db $27, $0f, $27, $10, $27, $11, $26, $12, $26, $13, $25, $14, $25, $15, $24, $15
    db $24, $16, $23, $17, $22, $18, $22, $19, $21, $1a, $20, $1b, $20, $1b, $1f, $1c
    db $1e, $1d, $1e, $1e, $1d, $1e, $1c, $1f, $1b, $20, $1b, $20, $1a, $21, $19, $22
    db $18, $22, $17, $23, $16, $24, $15, $24, $15, $25, $14, $25, $13, $26, $12, $26
    db $11, $27, $10, $27, $0f, $27, $0e, $28, $0d, $28, $0c, $28, $0b, $29, $0a, $29
    db $09, $29, $08, $29, $07, $2a, $06, $2a, $05, $2a, $04, $2a, $03, $2a, $02, $2a
    db $01, $2a, $2c

    nop                                           ; $6be6: $00
    inc l                                         ; $6be7: $2c
    ld bc, $022c                                  ; $6be8: $01 $2c $02
    inc l                                         ; $6beb: $2c
    inc bc                                        ; $6bec: $03
    dec hl                                        ; $6bed: $2b
    inc b                                         ; $6bee: $04
    dec hl                                        ; $6bef: $2b
    dec b                                         ; $6bf0: $05
    dec hl                                        ; $6bf1: $2b
    ld b, $2b                                     ; $6bf2: $06 $2b
    rlca                                          ; $6bf4: $07
    dec hl                                        ; $6bf5: $2b
    ld [$092b], sp                                ; $6bf6: $08 $2b $09
    ld a, [hl+]                                   ; $6bf9: $2a
    ld a, [bc]                                    ; $6bfa: $0a
    ld a, [hl+]                                   ; $6bfb: $2a
    dec bc                                        ; $6bfc: $0b
    ld a, [hl+]                                   ; $6bfd: $2a
    inc c                                         ; $6bfe: $0c
    add hl, hl                                    ; $6bff: $29
    dec c                                         ; $6c00: $0d
    add hl, hl                                    ; $6c01: $29
    db $0e                                        ; $6c02: $0e

    db $29, $0f, $28, $10, $28, $11, $27, $12, $27, $13, $26, $14, $26, $15, $25, $16
    db $25, $17, $24, $18, $24, $19, $23, $1a, $22, $1b, $22, $1c, $21, $1c, $20, $1d
    db $1f, $1e, $1f, $1f, $1e, $1f, $1d, $20, $1c, $21, $1c, $22, $1b, $22, $1a, $23
    db $19, $24, $18, $24, $17, $25, $16, $25, $15, $26, $14, $26, $13, $27, $12, $27
    db $11, $28, $10, $28, $0f, $29, $0e, $29, $0d, $29, $0c, $2a, $0b, $2a, $0a, $2a
    db $09, $2b, $08, $2b, $07, $2b, $06, $2b, $05, $2b, $04, $2b, $03, $2c, $02, $2c
    db $01, $2c, $2d

    nop                                           ; $6c66: $00
    dec l                                         ; $6c67: $2d
    ld bc, $022d                                  ; $6c68: $01 $2d $02
    dec l                                         ; $6c6b: $2d
    inc bc                                        ; $6c6c: $03
    dec l                                         ; $6c6d: $2d
    inc b                                         ; $6c6e: $04
    dec l                                         ; $6c6f: $2d
    dec b                                         ; $6c70: $05
    dec l                                         ; $6c71: $2d
    ld b, $2d                                     ; $6c72: $06 $2d
    rlca                                          ; $6c74: $07
    inc l                                         ; $6c75: $2c
    ld [$0a2c], sp                                ; $6c76: $08 $2c $0a
    inc l                                         ; $6c79: $2c
    dec bc                                        ; $6c7a: $0b
    inc l                                         ; $6c7b: $2c
    inc c                                         ; $6c7c: $0c
    dec hl                                        ; $6c7d: $2b
    dec c                                         ; $6c7e: $0d
    dec hl                                        ; $6c7f: $2b
    ld c, $2b                                     ; $6c80: $0e $2b
    rrca                                          ; $6c82: $0f

    db $2a, $10, $2a, $11, $29, $12, $29, $13, $28, $14, $28, $15, $27, $16, $27, $17
    db $26, $18, $26, $19, $25, $1a, $24, $1b, $24, $1c, $23, $1d, $22, $1d, $21, $1e
    db $21, $1f, $20, $20, $1f, $21, $1e, $21, $1d, $22, $1d, $23, $1c, $24, $1b, $24
    db $1a, $25, $19, $26, $18, $26, $17, $27, $16, $27, $15, $28, $14, $28, $13, $29
    db $12, $29, $11, $2a, $10, $2a, $0f, $2b, $0e, $2b, $0d, $2b, $0c, $2c, $0b, $2c
    db $0a, $2c, $08, $2c, $07, $2d, $06, $2d, $05, $2d, $04, $2d, $03, $2d, $02, $2d
    db $01, $2d, $2f

    nop                                           ; $6ce6: $00
    cpl                                           ; $6ce7: $2f
    ld bc, $022f                                  ; $6ce8: $01 $2f $02
    cpl                                           ; $6ceb: $2f
    inc bc                                        ; $6cec: $03
    cpl                                           ; $6ced: $2f
    inc b                                         ; $6cee: $04
    cpl                                           ; $6cef: $2f
    dec b                                         ; $6cf0: $05
    ld l, $06                                     ; $6cf1: $2e $06
    ld l, $08                                     ; $6cf3: $2e $08
    ld l, $09                                     ; $6cf5: $2e $09
    ld l, $0a                                     ; $6cf7: $2e $0a
    dec l                                         ; $6cf9: $2d
    dec bc                                        ; $6cfa: $0b
    dec l                                         ; $6cfb: $2d
    inc c                                         ; $6cfc: $0c
    dec l                                         ; $6cfd: $2d
    dec c                                         ; $6cfe: $0d
    dec l                                         ; $6cff: $2d
    ld c, $2c                                     ; $6d00: $0e $2c
    rrca                                          ; $6d02: $0f

    db $2c, $11, $2b, $12, $2b, $13, $2a, $14, $2a, $15, $29, $16, $29, $17, $28, $18
    db $28, $19, $27, $1a, $26, $1b, $26, $1c, $25, $1d, $24, $1e, $23, $1e, $23, $1f
    db $22, $20, $21, $21, $20, $22, $1f, $23, $1e, $23, $1e, $24, $1d, $25, $1c, $26
    db $1b, $26, $1a, $27, $19, $28, $18, $28, $17, $29, $16, $29, $15, $2a, $14, $2a
    db $13, $2b, $12, $2b, $11, $2c, $0f, $2c, $0e, $2d, $0d, $2d, $0c, $2d, $0b, $2d
    db $0a, $2e, $09, $2e, $08, $2e, $06, $2e, $05, $2f, $04, $2f, $03, $2f, $02, $2f
    db $01, $2f, $31

    nop                                           ; $6d66: $00
    ld sp, $3101                                  ; $6d67: $31 $01 $31
    ld [bc], a                                    ; $6d6a: $02
    ld sp, $3003                                  ; $6d6b: $31 $03 $30
    inc b                                         ; $6d6e: $04
    jr nc, jr_016_6d77                            ; $6d6f: $30 $06

    jr nc, jr_016_6d7a                            ; $6d71: $30 $07

    jr nc, jr_016_6d7d                            ; $6d73: $30 $08

    jr nc, jr_016_6d80                            ; $6d75: $30 $09

jr_016_6d77:
    jr nc, @+$0c                                  ; $6d77: $30 $0a

    cpl                                           ; $6d79: $2f

jr_016_6d7a:
    dec bc                                        ; $6d7a: $0b
    cpl                                           ; $6d7b: $2f
    dec c                                         ; $6d7c: $0d

jr_016_6d7d:
    cpl                                           ; $6d7d: $2f
    ld c, $2e                                     ; $6d7e: $0e $2e

jr_016_6d80:
    rrca                                          ; $6d80: $0f
    ld l, $10                                     ; $6d81: $2e $10

    db $2d, $11, $2d, $12, $2d, $13, $2c, $15, $2b, $16, $2b, $17, $2a, $18, $2a, $19
    db $29, $1a, $28, $1b, $28, $1c, $27, $1d, $26, $1e, $26, $1f, $25, $20, $24, $21
    db $23, $21, $22, $22, $21, $23, $21, $24, $20, $25, $1f, $26, $1e, $26, $1d, $27
    db $1c, $28, $1b, $28, $1a, $29, $19, $2a, $18, $2a, $17, $2b, $16, $2b, $15, $2c
    db $13, $2d, $12, $2d, $11, $2d, $10, $2e, $0f, $2e, $0e, $2f, $0d, $2f, $0b, $2f
    db $0a, $30, $09, $30, $08, $30, $07, $30, $06, $30, $04, $30, $03, $31, $02, $31
    db $01, $31, $33

    nop                                           ; $6de6: $00
    inc sp                                        ; $6de7: $33
    ld bc, $0233                                  ; $6de8: $01 $33 $02
    inc sp                                        ; $6deb: $33
    inc bc                                        ; $6dec: $03
    ld [hl-], a                                   ; $6ded: $32
    dec b                                         ; $6dee: $05
    ld [hl-], a                                   ; $6def: $32
    ld b, $32                                     ; $6df0: $06 $32
    rlca                                          ; $6df2: $07
    ld [hl-], a                                   ; $6df3: $32
    ld [$0932], sp                                ; $6df4: $08 $32 $09
    ld sp, $310b                                  ; $6df7: $31 $0b $31
    inc c                                         ; $6dfa: $0c
    ld sp, $300d                                  ; $6dfb: $31 $0d $30
    ld c, $30                                     ; $6dfe: $0e $30

Jump_016_6e00:
    db $10                                        ; $6e00: $10
    jr nc, @+$13                                  ; $6e01: $30 $11

    db $2f, $12, $2f, $13, $2e, $14, $2e, $15, $2d, $17, $2d, $18, $2c, $19, $2b, $1a
    db $2b, $1b, $2a, $1c, $29, $1d, $29, $1e, $28, $1f, $27, $20, $26, $21, $25, $22
    db $25, $23, $24, $24, $23, $25, $22, $25, $21, $26, $20, $27, $1f, $28, $1e, $29
    db $1d, $29, $1c, $2a, $1b, $2b, $1a, $2b, $19, $2c, $18, $2d, $17, $2d, $15, $2e
    db $14, $2e, $13, $2f, $12, $2f, $11, $30, $10, $30, $0e, $30, $0d, $31, $0c, $31
    db $0b, $31, $09, $32, $08, $32, $07, $32, $06, $32, $05, $32, $03, $33, $02, $33
    db $01, $33, $35

    nop                                           ; $6e66: $00
    dec [hl]                                      ; $6e67: $35
    ld bc, $0235                                  ; $6e68: $01 $35 $02
    dec [hl]                                      ; $6e6b: $35
    inc bc                                        ; $6e6c: $03
    dec [hl]                                      ; $6e6d: $35
    dec b                                         ; $6e6e: $05
    inc [hl]                                      ; $6e6f: $34
    ld b, $34                                     ; $6e70: $06 $34
    rlca                                          ; $6e72: $07
    inc [hl]                                      ; $6e73: $34
    add hl, bc                                    ; $6e74: $09
    inc [hl]                                      ; $6e75: $34
    ld a, [bc]                                    ; $6e76: $0a
    inc [hl]                                      ; $6e77: $34
    dec bc                                        ; $6e78: $0b
    inc sp                                        ; $6e79: $33
    inc c                                         ; $6e7a: $0c
    inc sp                                        ; $6e7b: $33
    ld c, $33                                     ; $6e7c: $0e $33
    rrca                                          ; $6e7e: $0f
    ld [hl-], a                                   ; $6e7f: $32
    db $10                                        ; $6e80: $10
    ld [hl-], a                                   ; $6e81: $32
    db $11                                        ; $6e82: $11

    db $31, $13, $31, $14, $30, $15, $30, $16, $2f, $17, $2f, $19, $2e, $1a, $2d, $1b
    db $2d, $1c, $2c, $1d, $2b, $1e, $2a, $1f, $2a, $20, $29, $21, $28, $22, $27, $23
    db $26, $24, $25, $25, $24, $26, $23, $27, $22, $28, $21, $29, $20, $2a, $1f, $2a
    db $1e, $2b, $1d, $2c, $1c, $2d, $1b, $2d, $1a, $2e, $19, $2f, $17, $2f, $16, $30
    db $15, $30, $14, $31, $13, $31, $11, $32, $10, $32, $0f, $33, $0e, $33, $0c, $33
    db $0b, $34, $0a, $34, $09, $34, $07, $34, $06, $34, $05, $35, $03, $35, $02, $35
    db $01, $35, $37

    nop                                           ; $6ee6: $00
    scf                                           ; $6ee7: $37
    ld bc, $0237                                  ; $6ee8: $01 $37 $02
    scf                                           ; $6eeb: $37
    inc b                                         ; $6eec: $04
    scf                                           ; $6eed: $37
    dec b                                         ; $6eee: $05
    scf                                           ; $6eef: $37
    ld b, $37                                     ; $6ef0: $06 $37
    ld [$0936], sp                                ; $6ef2: $08 $36 $09
    ld [hl], $0a                                  ; $6ef5: $36 $0a
    ld [hl], $0c                                  ; $6ef7: $36 $0c
    dec [hl]                                      ; $6ef9: $35
    dec c                                         ; $6efa: $0d
    dec [hl]                                      ; $6efb: $35
    ld c, $35                                     ; $6efc: $0e $35
    db $10                                        ; $6efe: $10
    inc [hl]                                      ; $6eff: $34
    ld de, $1234                                  ; $6f00: $11 $34 $12

    db $33, $14, $33, $15, $32, $16, $32, $17, $31, $19, $31, $1a, $30, $1b, $2f, $1c
    db $2f, $1d, $2e, $1e, $2d, $20, $2c, $21, $2b, $22, $2b, $23, $2a, $24, $29, $25
    db $28, $26, $27, $27, $26, $28, $25, $29, $24, $2a, $23, $2b, $22, $2b, $21, $2c
    db $20, $2d, $1e, $2e, $1d, $2f, $1c, $2f, $1b, $30, $1a, $31, $19, $31, $17, $32
    db $16, $32, $15, $33, $14, $33, $12, $34, $11, $34, $10, $35, $0e, $35, $0d, $35
    db $0c, $36, $0a, $36, $09, $36, $08, $37, $06, $37, $05, $37, $04, $37, $02, $37
    db $01, $37, $3a

    nop                                           ; $6f66: $00
    ld a, [hl-]                                   ; $6f67: $3a
    ld bc, $023a                                  ; $6f68: $01 $3a $02
    ld a, [hl-]                                   ; $6f6b: $3a
    inc b                                         ; $6f6c: $04
    add hl, sp                                    ; $6f6d: $39
    dec b                                         ; $6f6e: $05
    add hl, sp                                    ; $6f6f: $39
    rlca                                          ; $6f70: $07
    add hl, sp                                    ; $6f71: $39
    ld [$0939], sp                                ; $6f72: $08 $39 $09
    add hl, sp                                    ; $6f75: $39
    dec bc                                        ; $6f76: $0b
    jr c, @+$0e                                   ; $6f77: $38 $0c

    jr c, @+$10                                   ; $6f79: $38 $0e

    jr c, @+$11                                   ; $6f7b: $38 $0f

    scf                                           ; $6f7d: $37
    db $10                                        ; $6f7e: $10
    scf                                           ; $6f7f: $37
    ld [de], a                                    ; $6f80: $12
    ld [hl], $13                                  ; $6f81: $36 $13

    db $36, $14, $35, $16, $35, $17, $34, $18, $33, $1a, $33, $1b, $32, $1c, $31, $1d
    db $31, $1f, $30, $20, $2f, $21, $2e, $22, $2d, $23, $2c, $24, $2c, $26, $2b, $27
    db $2a, $28, $29, $29, $28, $2a, $27, $2b, $26, $2c, $24, $2c, $23, $2d, $22, $2e
    db $21, $2f, $20, $30, $1f, $31, $1d, $31, $1c, $32, $1b, $33, $1a, $33, $18, $34
    db $17, $35, $16, $35, $14, $36, $13, $36, $12, $37, $10, $37, $0f, $38, $0e, $38
    db $0c, $38, $0b, $39, $09, $39, $08, $39, $07, $39, $05, $39, $04, $3a, $02, $3a
    db $01, $3a, $3c

    nop                                           ; $6fe6: $00
    inc a                                         ; $6fe7: $3c
    ld bc, $023c                                  ; $6fe8: $01 $3c $02
    inc a                                         ; $6feb: $3c
    inc b                                         ; $6fec: $04
    inc a                                         ; $6fed: $3c
    dec b                                         ; $6fee: $05
    inc a                                         ; $6fef: $3c
    rlca                                          ; $6ff0: $07
    inc a                                         ; $6ff1: $3c
    ld [$0a3c], sp                                ; $6ff2: $08 $3c $0a
    dec sp                                        ; $6ff5: $3b
    dec bc                                        ; $6ff6: $0b
    dec sp                                        ; $6ff7: $3b
    dec c                                         ; $6ff8: $0d
    dec sp                                        ; $6ff9: $3b
    ld c, $3a                                     ; $6ffa: $0e $3a
    db $10                                        ; $6ffc: $10
    ld a, [hl-]                                   ; $6ffd: $3a
    ld de, $1339                                  ; $6ffe: $11 $39 $13
    add hl, sp                                    ; $7001: $39
    inc d                                         ; $7002: $14

    db $38, $15, $38, $17, $37, $18, $37, $1a, $36, $1b, $35, $1c, $35, $1e, $34, $1f
    db $33, $20, $32, $21, $31, $23, $30, $24, $30, $25, $2f, $26, $2e, $27, $2d, $28
    db $2c, $2a, $2b, $2b, $2a, $2c, $28, $2d, $27, $2e, $26, $2f, $25, $30, $24, $30
    db $23, $31, $21, $32, $20, $33, $1f, $34, $1e, $35, $1c, $35, $1b, $36, $1a, $37
    db $18, $37, $17, $38, $15, $38, $14, $39, $13, $39, $11, $3a, $10, $3a, $0e, $3b
    db $0d, $3b, $0b, $3b, $0a, $3c, $08, $3c, $07, $3c, $05, $3c, $04, $3c, $02, $3c
    db $01, $3c, $40

    nop                                           ; $7066: $00
    ccf                                           ; $7067: $3f
    ld bc, $033f                                  ; $7068: $01 $3f $03
    ccf                                           ; $706b: $3f
    inc b                                         ; $706c: $04
    ccf                                           ; $706d: $3f
    ld b, $3f                                     ; $706e: $06 $3f
    rlca                                          ; $7070: $07
    ccf                                           ; $7071: $3f
    add hl, bc                                    ; $7072: $09
    ccf                                           ; $7073: $3f
    ld a, [bc]                                    ; $7074: $0a
    ld a, $0c                                     ; $7075: $3e $0c
    ld a, $0e                                     ; $7077: $3e $0e
    ld a, $0f                                     ; $7079: $3e $0f
    dec a                                         ; $707b: $3d
    ld de, $123d                                  ; $707c: $11 $3d $12
    inc a                                         ; $707f: $3c
    inc d                                         ; $7080: $14
    inc a                                         ; $7081: $3c
    dec d                                         ; $7082: $15

    db $3b, $17, $3b, $18, $3a, $19, $39, $1b, $39, $1c, $38, $1e, $37, $1f, $36, $20
    db $36, $22, $35, $23, $34, $24, $33, $26, $32, $27, $31, $28, $30, $29, $2f, $2a
    db $2e, $2c, $2d, $2d, $2c, $2e, $2a, $2f, $29, $30, $28, $31, $27, $32, $26, $33
    db $24, $34, $23, $35, $22, $36, $20, $36, $1f, $37, $1e, $38, $1c, $39, $1b, $39
    db $19, $3a, $18, $3b, $17, $3b, $15, $3c, $14, $3c, $12, $3d, $11, $3d, $0f, $3e
    db $0e, $3e, $0c, $3e, $0a, $3f, $09, $3f, $07, $3f, $06, $3f, $04, $3f, $03, $3f
    db $01, $3f, $43

    nop                                           ; $70e6: $00
    ld b, e                                       ; $70e7: $43
    ld bc, $0343                                  ; $70e8: $01 $43 $03
    ld b, e                                       ; $70eb: $43
    inc b                                         ; $70ec: $04
    ld b, e                                       ; $70ed: $43
    ld b, $42                                     ; $70ee: $06 $42
    ld [$0942], sp                                ; $70f0: $08 $42 $09
    ld b, d                                       ; $70f3: $42
    dec bc                                        ; $70f4: $0b
    ld b, d                                       ; $70f5: $42
    dec c                                         ; $70f6: $0d
    ld b, c                                       ; $70f7: $41
    ld c, $41                                     ; $70f8: $0e $41
    db $10                                        ; $70fa: $10
    ld b, b                                       ; $70fb: $40
    ld de, $1340                                  ; $70fc: $11 $40 $13
    ccf                                           ; $70ff: $3f
    dec d                                         ; $7100: $15
    ccf                                           ; $7101: $3f
    db $16                                        ; $7102: $16

    db $3e, $18, $3e, $19, $3d, $1b, $3c, $1c, $3c, $1e, $3b, $1f, $3a, $21, $39, $22
    db $38, $24, $38, $25, $37, $26, $36, $28, $35, $29, $34, $2a, $33, $2c, $31, $2d
    db $30, $2e, $2f, $2f, $2e, $30, $2d, $31, $2c, $33, $2a, $34, $29, $35, $28, $36
    db $26, $37, $25, $38, $24, $38, $22, $39, $21, $3a, $1f, $3b, $1e, $3c, $1c, $3c
    db $1b, $3d, $19, $3e, $18, $3e, $16, $3f, $15, $3f, $13, $40, $11, $40, $10, $41
    db $0e, $41, $0d, $42, $0b, $42, $09, $42, $08, $42, $06, $43, $04, $43, $03, $43
    db $01, $43, $47

    nop                                           ; $7166: $00
    ld b, a                                       ; $7167: $47
    ld bc, $0347                                  ; $7168: $01 $47 $03
    ld b, [hl]                                    ; $716b: $46
    dec b                                         ; $716c: $05
    ld b, [hl]                                    ; $716d: $46
    ld b, $46                                     ; $716e: $06 $46
    ld [$0a46], sp                                ; $7170: $08 $46 $0a
    ld b, [hl]                                    ; $7173: $46
    inc c                                         ; $7174: $0c
    ld b, l                                       ; $7175: $45
    dec c                                         ; $7176: $0d
    ld b, l                                       ; $7177: $45
    rrca                                          ; $7178: $0f
    ld b, h                                       ; $7179: $44
    ld de, $1244                                  ; $717a: $11 $44 $12
    ld b, h                                       ; $717d: $44
    inc d                                         ; $717e: $14
    ld b, e                                       ; $717f: $43
    ld d, $42                                     ; $7180: $16 $42
    rla                                           ; $7182: $17

    db $42, $19, $41, $1b, $41, $1c, $40, $1e, $3f, $1f, $3e, $21, $3d, $23, $3c, $24
    db $3c, $26, $3b, $27, $3a, $28, $39, $2a, $38, $2b, $36, $2d, $35, $2e, $34, $2f
    db $33, $31, $32, $32, $31, $33, $2f, $34, $2e, $35, $2d, $36, $2b, $38, $2a, $39
    db $28, $3a, $27, $3b, $26, $3c, $24, $3c, $23, $3d, $21, $3e, $1f, $3f, $1e, $40
    db $1c, $41, $1b, $41, $19, $42, $17, $42, $16, $43, $14, $44, $12, $44, $11, $44
    db $0f, $45, $0d, $45, $0c, $46, $0a, $46, $08, $46, $06, $46, $05, $46, $03, $47
    db $01, $47, $4b

    nop                                           ; $71e6: $00
    ld c, e                                       ; $71e7: $4b
    ld bc, $034b                                  ; $71e8: $01 $4b $03
    ld c, e                                       ; $71eb: $4b
    dec b                                         ; $71ec: $05
    ld c, d                                       ; $71ed: $4a
    rlca                                          ; $71ee: $07
    ld c, d                                       ; $71ef: $4a
    add hl, bc                                    ; $71f0: $09
    ld c, d                                       ; $71f1: $4a
    dec bc                                        ; $71f2: $0b
    ld c, d                                       ; $71f3: $4a
    inc c                                         ; $71f4: $0c
    ld c, c                                       ; $71f5: $49
    ld c, $49                                     ; $71f6: $0e $49
    db $10                                        ; $71f8: $10
    ld c, c                                       ; $71f9: $49
    ld [de], a                                    ; $71fa: $12
    ld c, b                                       ; $71fb: $48
    inc d                                         ; $71fc: $14
    ld c, b                                       ; $71fd: $48
    dec d                                         ; $71fe: $15
    ld b, a                                       ; $71ff: $47
    rla                                           ; $7200: $17
    ld b, [hl]                                    ; $7201: $46
    add hl, de                                    ; $7202: $19

    db $46, $1b, $45, $1c, $44, $1e, $44, $20, $43, $21, $42, $23, $41, $25, $40, $26
    db $3f, $28, $3e, $29, $3d, $2b, $3c, $2c, $3b, $2e, $3a, $2f, $39, $31, $37, $32
    db $36, $33, $35, $35, $33, $36, $32, $37, $31, $39, $2f, $3a, $2e, $3b, $2c, $3c
    db $2b, $3d, $29, $3e, $28, $3f, $26, $40, $25, $41, $23, $42, $21, $43, $20, $44
    db $1e, $44, $1c, $45, $1b, $46, $19, $46, $17, $47, $15, $48, $14, $48, $12, $49
    db $10, $49, $0e, $49, $0c, $4a, $0b, $4a, $09, $4a, $07, $4a, $05, $4b, $03, $4b
    db $01, $4b, $50

    nop                                           ; $7266: $00
    ld c, a                                       ; $7267: $4f
    ld bc, $034f                                  ; $7268: $01 $4f $03
    ld c, a                                       ; $726b: $4f
    dec b                                         ; $726c: $05
    ld c, a                                       ; $726d: $4f
    rlca                                          ; $726e: $07
    ld c, a                                       ; $726f: $4f
    add hl, bc                                    ; $7270: $09
    ld c, a                                       ; $7271: $4f
    dec bc                                        ; $7272: $0b
    ld c, [hl]                                    ; $7273: $4e
    dec c                                         ; $7274: $0d
    ld c, [hl]                                    ; $7275: $4e
    rrca                                          ; $7276: $0f
    ld c, [hl]                                    ; $7277: $4e
    ld de, $134d                                  ; $7278: $11 $4d $13
    ld c, l                                       ; $727b: $4d
    dec d                                         ; $727c: $15
    ld c, h                                       ; $727d: $4c
    rla                                           ; $727e: $17
    ld c, e                                       ; $727f: $4b
    add hl, de                                    ; $7280: $19
    ld c, e                                       ; $7281: $4b
    ld a, [de]                                    ; $7282: $1a

    db $4a, $1c, $49, $1e, $49, $20, $48, $22, $47, $23, $46, $25, $45, $27, $44, $29
    db $43, $2a, $42, $2c, $41, $2e, $40, $2f, $3f, $31, $3d, $32, $3c, $34, $3b, $35
    db $39, $37, $38, $38, $37, $39, $35, $3b, $34, $3c, $32, $3d, $31, $3f, $2f, $40
    db $2e, $41, $2c, $42, $2a, $43, $29, $44, $27, $45, $25, $46, $23, $47, $22, $48
    db $20, $49, $1e, $49, $1c, $4a, $1a, $4b, $19, $4b, $17, $4c, $15, $4d, $13, $4d
    db $11, $4e, $0f, $4e, $0d, $4e, $0b, $4f, $09, $4f, $07, $4f, $05, $4f, $03, $4f
    db $01, $4f, $55

    nop                                           ; $72e6: $00
    ld d, l                                       ; $72e7: $55
    ld [bc], a                                    ; $72e8: $02
    ld d, l                                       ; $72e9: $55
    inc b                                         ; $72ea: $04
    ld d, l                                       ; $72eb: $55
    ld b, $54                                     ; $72ec: $06 $54
    ld [$0a54], sp                                ; $72ee: $08 $54 $0a
    ld d, h                                       ; $72f1: $54
    inc c                                         ; $72f2: $0c
    ld d, h                                       ; $72f3: $54
    ld c, $53                                     ; $72f4: $0e $53
    db $10                                        ; $72f6: $10
    ld d, e                                       ; $72f7: $53
    ld [de], a                                    ; $72f8: $12
    ld d, d                                       ; $72f9: $52
    inc d                                         ; $72fa: $14
    ld d, d                                       ; $72fb: $52
    ld d, $51                                     ; $72fc: $16 $51
    jr @+$53                                      ; $72fe: $18 $51

    ld a, [de]                                    ; $7300: $1a
    ld d, b                                       ; $7301: $50
    inc e                                         ; $7302: $1c

    db $4f, $1e, $4e, $20, $4e, $22, $4d, $24, $4c, $26, $4b, $28, $4a, $2a, $49, $2b
    db $48, $2d, $46, $2f, $45, $31, $44, $32, $43, $34, $41, $36, $40, $37, $3f, $39
    db $3d, $3a, $3c, $3c, $3a, $3d, $39, $3f, $37, $40, $36, $41, $34, $43, $32, $44
    db $31, $45, $2f, $46, $2d, $48, $2b, $49, $2a, $4a, $28, $4b, $26, $4c, $24, $4d
    db $22, $4e, $20, $4e, $1e, $4f, $1c, $50, $1a, $51, $18, $51, $16, $52, $14, $52
    db $12, $53, $10, $53, $0e, $54, $0c, $54, $0a, $54, $08, $54, $06, $55, $04, $55
    db $02, $55, $5b

    nop                                           ; $7366: $00
    ld e, e                                       ; $7367: $5b
    ld [bc], a                                    ; $7368: $02
    ld e, e                                       ; $7369: $5b
    inc b                                         ; $736a: $04
    ld e, e                                       ; $736b: $5b
    ld b, $5a                                     ; $736c: $06 $5a
    ld [$0b5a], sp                                ; $736e: $08 $5a $0b
    ld e, d                                       ; $7371: $5a
    dec c                                         ; $7372: $0d
    ld e, d                                       ; $7373: $5a
    rrca                                          ; $7374: $0f
    ld e, c                                       ; $7375: $59
    ld de, $1459                                  ; $7376: $11 $59 $14
    ld e, b                                       ; $7379: $58
    ld d, $58                                     ; $737a: $16 $58
    jr @+$59                                      ; $737c: $18 $57

    ld a, [de]                                    ; $737e: $1a
    ld d, [hl]                                    ; $737f: $56
    inc e                                         ; $7380: $1c
    ld d, [hl]                                    ; $7381: $56
    db $1e                                        ; $7382: $1e

    db $55, $20, $54, $22, $53, $25, $52, $27, $51, $29, $50, $2b, $4f, $2d, $4e, $2f
    db $4d, $30, $4c, $32, $4a, $34, $49, $36, $48, $38, $46, $3a, $45, $3b, $43, $3d
    db $42, $3f, $40, $40, $3f, $42, $3d, $43, $3b, $45, $3a, $46, $38, $48, $36, $49
    db $34, $4a, $32, $4c, $30, $4d, $2f, $4e, $2d, $4f, $2b, $50, $29, $51, $27, $52
    db $25, $53, $22, $54, $20, $55, $1e, $56, $1c, $56, $1a, $57, $18, $58, $16, $58
    db $14, $59, $11, $59, $0f, $5a, $0d, $5a, $0b, $5a, $08, $5a, $06, $5b, $04, $5b
    db $02, $5b, $62

    nop                                           ; $73e6: $00
    ld h, d                                       ; $73e7: $62
    ld [bc], a                                    ; $73e8: $02
    ld h, d                                       ; $73e9: $62
    inc b                                         ; $73ea: $04
    ld h, d                                       ; $73eb: $62
    rlca                                          ; $73ec: $07
    ld h, c                                       ; $73ed: $61
    add hl, bc                                    ; $73ee: $09
    ld h, c                                       ; $73ef: $61
    inc c                                         ; $73f0: $0c
    ld h, c                                       ; $73f1: $61
    ld c, $61                                     ; $73f2: $0e $61
    db $10                                        ; $73f4: $10
    ld h, b                                       ; $73f5: $60
    inc de                                        ; $73f6: $13
    ld h, b                                       ; $73f7: $60
    dec d                                         ; $73f8: $15
    ld e, a                                       ; $73f9: $5f
    rla                                           ; $73fa: $17
    ld e, [hl]                                    ; $73fb: $5e
    ld a, [de]                                    ; $73fc: $1a
    ld e, [hl]                                    ; $73fd: $5e
    inc e                                         ; $73fe: $1c
    ld e, l                                       ; $73ff: $5d
    ld e, $5c                                     ; $7400: $1e $5c
    db $21                                        ; $7402: $21

    db $5b, $23, $5a, $25, $5a, $27, $59, $2a, $57, $2c, $56, $2e, $55, $30, $54, $32
    db $53, $34, $51, $36, $50, $38, $4f, $3a, $4d, $3c, $4c, $3e, $4a, $40, $48, $42
    db $47, $43, $45, $45, $43, $47, $42, $48, $40, $4a, $3e, $4c, $3c, $4d, $3a, $4f
    db $38, $50, $36, $51, $34, $53, $32, $54, $30, $55, $2e, $56, $2c, $57, $2a, $59
    db $27, $5a, $25, $5a, $23, $5b, $21, $5c, $1e, $5d, $1c, $5e, $1a, $5e, $17, $5f
    db $15, $60, $13, $60, $10, $61, $0e, $61, $0c, $61, $09, $61, $07, $62, $04, $62
    db $02, $62, $6a

    nop                                           ; $7466: $00
    ld l, d                                       ; $7467: $6a
    ld [bc], a                                    ; $7468: $02
    ld l, d                                       ; $7469: $6a
    dec b                                         ; $746a: $05
    ld l, d                                       ; $746b: $6a
    rlca                                          ; $746c: $07
    ld l, d                                       ; $746d: $6a
    ld a, [bc]                                    ; $746e: $0a
    ld l, c                                       ; $746f: $69
    dec c                                         ; $7470: $0d
    ld l, c                                       ; $7471: $69
    rrca                                          ; $7472: $0f
    ld l, c                                       ; $7473: $69
    ld [de], a                                    ; $7474: $12
    ld l, b                                       ; $7475: $68
    inc d                                         ; $7476: $14
    ld l, b                                       ; $7477: $68
    rla                                           ; $7478: $17
    ld h, a                                       ; $7479: $67
    add hl, de                                    ; $747a: $19
    ld h, [hl]                                    ; $747b: $66
    inc e                                         ; $747c: $1c
    ld h, [hl]                                    ; $747d: $66
    ld e, $65                                     ; $747e: $1e $65
    ld hl, $2364                                  ; $7480: $21 $64 $23

    db $63, $26, $62, $28, $61, $2b, $60, $2d, $5f, $2f, $5e, $32, $5c, $34, $5b, $36
    db $5a, $39, $58, $3b, $57, $3d, $55, $3f, $54, $41, $52, $43, $50, $45, $4f, $47
    db $4d, $49, $4b, $4b, $49, $4d, $47, $4f, $45, $50, $43, $52, $41, $54, $3f, $55
    db $3d, $57, $3b, $58, $39, $5a, $36, $5b, $34, $5c, $32, $5e, $2f, $5f, $2d, $60
    db $2b, $61, $28, $62, $26, $63, $23, $64, $21, $65, $1e, $66, $1c, $66, $19, $67
    db $17, $68, $14, $68, $12, $69, $0f, $69, $0d, $69, $0a, $6a, $07, $6a, $05, $6a
    db $02, $6a, $74

    nop                                           ; $74e6: $00
    ld [hl], h                                    ; $74e7: $74
    ld [bc], a                                    ; $74e8: $02
    ld [hl], h                                    ; $74e9: $74
    dec b                                         ; $74ea: $05
    ld [hl], h                                    ; $74eb: $74
    ld [$0b73], sp                                ; $74ec: $08 $73 $0b
    ld [hl], e                                    ; $74ef: $73
    ld c, $73                                     ; $74f0: $0e $73
    ld de, $1372                                  ; $74f2: $11 $72 $13
    ld [hl], d                                    ; $74f5: $72
    ld d, $71                                     ; $74f6: $16 $71
    add hl, de                                    ; $74f8: $19
    ld [hl], b                                    ; $74f9: $70
    inc e                                         ; $74fa: $1c
    ld [hl], b                                    ; $74fb: $70
    rra                                           ; $74fc: $1f
    ld l, a                                       ; $74fd: $6f
    ld hl, $246e                                  ; $74fe: $21 $6e $24
    ld l, l                                       ; $7501: $6d
    daa                                           ; $7502: $27

    db $6c, $29, $6b, $2c, $6a, $2f, $69, $31, $67, $34, $66, $36, $65, $39, $63, $3b
    db $62, $3e, $60, $40, $5f, $43, $5d, $45, $5b, $47, $59, $49, $58, $4c, $56, $4e
    db $54, $50, $52, $52, $50, $54, $4e, $56, $4c, $58, $49, $59, $47, $5b, $45, $5d
    db $43, $5f, $40, $60, $3e, $62, $3b, $63, $39, $65, $36, $66, $34, $67, $31, $69
    db $2f, $6a, $2c, $6b, $29, $6c, $27, $6d, $24, $6e, $21, $6f, $1f, $70, $1c, $70
    db $19, $71, $16, $72, $13, $72, $11, $73, $0e, $73, $0b, $73, $08, $74, $05, $74
    db $02, $74, $80

    nop                                           ; $7566: $00
    ld a, a                                       ; $7567: $7f
    inc bc                                        ; $7568: $03
    ld a, a                                       ; $7569: $7f
    ld b, $7f                                     ; $756a: $06 $7f
    add hl, bc                                    ; $756c: $09
    ld a, a                                       ; $756d: $7f
    inc c                                         ; $756e: $0c
    ld a, a                                       ; $756f: $7f
    rrca                                          ; $7570: $0f
    ld a, [hl]                                    ; $7571: $7e
    ld [de], a                                    ; $7572: $12
    ld a, [hl]                                    ; $7573: $7e
    dec d                                         ; $7574: $15
    ld a, l                                       ; $7575: $7d
    jr jr_016_75f4                                ; $7576: $18 $7c

    inc e                                         ; $7578: $1c
    ld a, h                                       ; $7579: $7c
    rra                                           ; $757a: $1f
    ld a, e                                       ; $757b: $7b
    ld [hl+], a                                   ; $757c: $22
    ld a, d                                       ; $757d: $7a
    dec h                                         ; $757e: $25
    ld a, c                                       ; $757f: $79

jr_016_7580:
    jr z, jr_016_75fa                             ; $7580: $28 $78

    dec hl                                        ; $7582: $2b

    db $77, $2e, $76, $30, $75, $33, $73, $36, $72, $39, $70, $3c, $6f, $3f, $6d, $41
    db $6c, $44, $6a, $47, $68, $49, $66, $4c, $64, $4e, $62, $51, $60, $53, $5e, $55
    db $5c, $58, $5a, $5a, $58, $5c, $55, $5e, $53, $60, $51, $62, $4e, $64, $4c, $66
    db $49, $68, $47, $6a, $44, $6c, $41, $6d, $3f, $6f, $3c, $70, $39, $72, $36, $73
    db $33, $75, $30, $76, $2e, $77, $2b, $78, $28, $79, $25, $7a, $22, $7b, $1f, $7c
    db $1c, $7c, $18, $7d, $15, $7e, $12, $7e, $0f, $7f, $0c, $7f, $09, $7f, $06, $7f
    db $03, $7f, $8c

    nop                                           ; $75e6: $00
    adc h                                         ; $75e7: $8c
    inc bc                                        ; $75e8: $03
    adc h                                         ; $75e9: $8c
    ld b, $8c                                     ; $75ea: $06 $8c
    ld a, [bc]                                    ; $75ec: $0a
    adc h                                         ; $75ed: $8c
    dec c                                         ; $75ee: $0d
    adc e                                         ; $75ef: $8b
    ld de, $148b                                  ; $75f0: $11 $8b $14
    adc d                                         ; $75f3: $8a

jr_016_75f4:
    jr jr_016_7580                                ; $75f4: $18 $8a

    dec de                                        ; $75f6: $1b
    adc c                                         ; $75f7: $89
    ld e, $88                                     ; $75f8: $1e $88

jr_016_75fa:
    ld [hl+], a                                   ; $75fa: $22
    add a                                         ; $75fb: $87
    dec h                                         ; $75fc: $25
    add [hl]                                      ; $75fd: $86
    jr z, @-$79                                   ; $75fe: $28 $85

    inc l                                         ; $7600: $2c
    add h                                         ; $7601: $84
    cpl                                           ; $7602: $2f

    db $83, $32, $82, $35, $80, $39, $7f, $3c, $7d, $3f, $7c, $42, $7a, $45, $78, $48
    db $76, $4b, $75, $4e, $73, $51, $71, $53, $6e, $56, $6c, $59, $6a, $5b, $68, $5e
    db $65, $61, $63, $63, $61, $65, $5e, $68, $5b, $6a, $59, $6c, $56, $6e, $53, $71
    db $51, $73, $4e, $75, $4b, $76, $48, $78, $45, $7a, $42, $7c, $3f, $7d, $3c, $7f
    db $39, $80, $35, $82, $32, $83, $2f, $84, $2c, $85, $28, $86, $25, $87, $22, $88
    db $1e, $89, $1b, $8a, $18, $8a, $14, $8b, $11, $8b, $0d, $8c, $0a, $8c, $06, $8c
    db $03, $8c, $99

    nop                                           ; $7666: $00
    sbc c                                         ; $7667: $99
    inc bc                                        ; $7668: $03
    sbc c                                         ; $7669: $99
    rlca                                          ; $766a: $07
    sbc c                                         ; $766b: $99
    dec bc                                        ; $766c: $0b
    sbc b                                         ; $766d: $98
    rrca                                          ; $766e: $0f
    sbc b                                         ; $766f: $98
    ld [de], a                                    ; $7670: $12
    sub a                                         ; $7671: $97
    ld d, $97                                     ; $7672: $16 $97
    ld a, [de]                                    ; $7674: $1a
    sub [hl]                                      ; $7675: $96
    dec e                                         ; $7676: $1d
    sub l                                         ; $7677: $95
    ld hl, $2594                                  ; $7678: $21 $94 $25
    sub h                                         ; $767b: $94
    jr z, @-$6c                                   ; $767c: $28 $92

    inc l                                         ; $767e: $2c
    sub c                                         ; $767f: $91
    jr nc, @-$6e                                  ; $7680: $30 $90

    inc sp                                        ; $7682: $33

    db $8f, $37, $8d, $3a, $8c, $3e, $8a, $41, $89, $45, $87, $48, $85, $4b, $83, $4e
    db $81, $52, $7f, $55, $7d, $58, $7b, $5b, $79, $5e, $76, $61, $74, $64, $71, $67
    db $6f, $69, $6c, $6c, $69, $6f, $67, $71, $64, $74, $61, $76, $5e, $79, $5b, $7b
    db $58, $7d, $55, $7f, $52, $81, $4e, $83, $4b, $85, $48, $87, $45, $89, $41, $8a
    db $3e, $8c, $3a, $8d, $37, $8f, $33, $90, $30, $91, $2c, $92, $28, $94, $25, $94
    db $21, $95, $1d, $96, $1a, $97, $16, $97, $12, $98, $0f, $98, $0b, $99, $07, $99
    db $03, $99, $a6

    nop                                           ; $76e6: $00
    and [hl]                                      ; $76e7: $a6
    inc b                                         ; $76e8: $04
    and [hl]                                      ; $76e9: $a6
    ld [$0ca5], sp                                ; $76ea: $08 $a5 $0c
    and l                                         ; $76ed: $a5
    db $10                                        ; $76ee: $10
    and l                                         ; $76ef: $a5
    inc d                                         ; $76f0: $14
    and h                                         ; $76f1: $a4
    jr @-$5b                                      ; $76f2: $18 $a3

    inc e                                         ; $76f4: $1c
    and e                                         ; $76f5: $a3
    jr nz, @-$5c                                  ; $76f6: $20 $a2

    inc h                                         ; $76f8: $24
    and c                                         ; $76f9: $a1
    jr z, @-$5e                                   ; $76fa: $28 $a0

    inc l                                         ; $76fc: $2c
    sbc a                                         ; $76fd: $9f
    jr nc, @-$60                                  ; $76fe: $30 $9e

    inc [hl]                                      ; $7700: $34
    sbc h                                         ; $7701: $9c
    db $38                                        ; $7702: $38

    db $9b, $3b, $99, $3f, $98, $43, $96, $47, $94, $4a, $92, $4e, $90, $52, $8e, $55
    db $8c, $59, $8a, $5c, $88, $5f, $85, $63, $83, $66, $80, $69, $7d, $6c, $7b, $6f
    db $78, $72, $75, $75, $72, $78, $6f, $7b, $6c, $7d, $69, $80, $66, $83, $63, $85
    db $5f, $88, $5c, $8a, $59, $8c, $55, $8e, $52, $90, $4e, $92, $4a, $94, $47, $96
    db $43, $98, $3f, $99, $3b, $9b, $38, $9c, $34, $9e, $30, $9f, $2c, $a0, $28, $a1
    db $24, $a2, $20, $a3, $1c, $a3, $18, $a4, $14, $a5, $10, $a5, $0c, $a5, $08, $a6
    db $04, $a6, $b3

    nop                                           ; $7766: $00
    or e                                          ; $7767: $b3
    inc b                                         ; $7768: $04
    or d                                          ; $7769: $b2
    ld [$0db2], sp                                ; $776a: $08 $b2 $0d
    or d                                          ; $776d: $b2
    ld de, $15b1                                  ; $776e: $11 $b1 $15
    or c                                          ; $7771: $b1
    ld a, [de]                                    ; $7772: $1a
    or b                                          ; $7773: $b0
    ld e, $af                                     ; $7774: $1e $af
    ld [hl+], a                                   ; $7776: $22
    xor [hl]                                      ; $7777: $ae
    daa                                           ; $7778: $27
    xor l                                         ; $7779: $ad
    dec hl                                        ; $777a: $2b
    xor h                                         ; $777b: $ac
    cpl                                           ; $777c: $2f
    xor e                                         ; $777d: $ab
    inc [hl]                                      ; $777e: $34
    xor d                                         ; $777f: $aa
    jr c, @-$56                                   ; $7780: $38 $a8

    inc a                                         ; $7782: $3c

    db $a7, $40, $a5, $44, $a3, $48, $a1, $4c, $a0, $50, $9e, $54, $9b, $58, $99, $5c
    db $97, $5f, $94, $63, $92, $67, $8f, $6a, $8d, $6e, $8a, $71, $87, $75, $84, $78
    db $81, $7b, $7e, $7e, $7b, $81, $78, $84, $75, $87, $71, $8a, $6e, $8d, $6a, $8f
    db $67, $92, $63, $94, $5f, $97, $5c, $99, $58, $9b, $54, $9e, $50, $a0, $4c, $a1
    db $48, $a3, $44, $a5, $40, $a7, $3c, $a8, $38, $aa, $34, $ab, $2f, $ac, $2b, $ad
    db $27, $ae, $22, $af, $1e, $b0, $1a, $b1, $15, $b1, $11, $b2, $0d, $b2, $08, $b2
    db $04, $b3, $c0

    nop                                           ; $77e6: $00
    cp a                                          ; $77e7: $bf
    inc b                                         ; $77e8: $04
    cp a                                          ; $77e9: $bf
    add hl, bc                                    ; $77ea: $09
    cp a                                          ; $77eb: $bf
    ld c, $bf                                     ; $77ec: $0e $bf
    ld [de], a                                    ; $77ee: $12
    cp [hl]                                       ; $77ef: $be
    rla                                           ; $77f0: $17
    cp l                                          ; $77f1: $bd
    inc e                                         ; $77f2: $1c
    cp l                                          ; $77f3: $bd
    jr nz, @-$42                                  ; $77f4: $20 $bc

    dec h                                         ; $77f6: $25
    cp e                                          ; $77f7: $bb
    ld a, [hl+]                                   ; $77f8: $2a
    cp d                                          ; $77f9: $ba
    ld l, $b9                                     ; $77fa: $2e $b9
    inc sp                                        ; $77fc: $33
    or a                                          ; $77fd: $b7
    scf                                           ; $77fe: $37
    or [hl]                                       ; $77ff: $b6
    inc a                                         ; $7800: $3c
    or h                                          ; $7801: $b4
    ld b, b                                       ; $7802: $40

    db $b3, $45, $b1, $49, $af, $4d, $ad, $52, $ab, $56, $a9, $5a, $a7, $5e, $a4, $62
    db $a2, $66, $9f, $6a, $9c, $6e, $9a, $72, $97, $76, $94, $79, $91, $7d, $8e, $80
    db $8b, $84, $87, $87, $84, $8b, $80, $8e, $7d, $91, $79, $94, $76, $97, $72, $9a
    db $6e, $9c, $6a, $9f, $66, $a2, $62, $a4, $5e, $a7, $5a, $a9, $56, $ab, $52, $ad
    db $4d, $af, $49, $b1, $45, $b3, $40, $b4, $3c, $b6, $37, $b7, $33, $b9, $2e, $ba
    db $2a, $bb, $25, $bc, $20, $bd, $1c, $bd, $17, $be, $12, $bf, $0e, $bf, $09, $bf
    db $04, $bf, $cc

    nop                                           ; $7866: $00
    call z, $cc05                                 ; $7867: $cc $05 $cc
    ld a, [bc]                                    ; $786a: $0a
    call z, $cb0f                                 ; $786b: $cc $0f $cb
    inc d                                         ; $786e: $14
    rr c                                          ; $786f: $cb $19
    jp z, $c91e                                   ; $7871: $ca $1e $c9

    inc hl                                        ; $7874: $23
    ret z                                         ; $7875: $c8

    daa                                           ; $7876: $27
    rst $00                                       ; $7877: $c7
    inc l                                         ; $7878: $2c
    add $31                                       ; $7879: $c6 $31
    push bc                                       ; $787b: $c5
    ld [hl], $c3                                  ; $787c: $36 $c3
    dec sp                                        ; $787e: $3b
    jp nz, $c040                                  ; $787f: $c2 $40 $c0

    ld b, h                                       ; $7882: $44

    db $bf, $49, $bd, $4e, $bb, $52, $b9, $57, $b6, $5c, $b4, $60, $b2, $64, $af, $69
    db $ad, $6d, $aa, $71, $a7, $75, $a4, $79, $a1, $7d, $9e, $81, $9b, $85, $97, $89
    db $94, $8d, $90, $90, $8d, $94, $89, $97, $85, $9b, $81, $9e, $7d, $a1, $79, $a4
    db $75, $a7, $71, $aa, $6d, $ad, $69, $af, $64, $b2, $60, $b4, $5c, $b6, $57, $b9
    db $52, $bb, $4e, $bd, $49, $bf, $44, $c0, $40, $c2, $3b, $c3, $36, $c5, $31, $c6
    db $2c, $c7, $27, $c8, $23, $c9, $1e, $ca, $19, $cb, $14, $cb, $0f, $cc, $0a, $cc
    db $05, $cc, $d9

    nop                                           ; $78e6: $00
    reti                                          ; $78e7: $d9


    dec b                                         ; $78e8: $05
    reti                                          ; $78e9: $d9


    ld a, [bc]                                    ; $78ea: $0a
    reti                                          ; $78eb: $d9


    db $10                                        ; $78ec: $10
    ret c                                         ; $78ed: $d8

    dec d                                         ; $78ee: $15
    rst $10                                       ; $78ef: $d7
    ld a, [de]                                    ; $78f0: $1a
    rst $10                                       ; $78f1: $d7
    rra                                           ; $78f2: $1f
    sub $25                                       ; $78f3: $d6 $25
    push de                                       ; $78f5: $d5
    ld a, [hl+]                                   ; $78f6: $2a
    call nc, $d32f                                ; $78f7: $d4 $2f $d3
    inc [hl]                                      ; $78fa: $34
    pop de                                        ; $78fb: $d1
    ld a, [hl-]                                   ; $78fc: $3a
    ret nc                                        ; $78fd: $d0

    ccf                                           ; $78fe: $3f
    adc $44                                       ; $78ff: $ce $44
    db $cc                                        ; $7901: $cc
    ld c, c                                       ; $7902: $49

    db $cb, $4e, $c9, $53, $c6, $58, $c4, $5d, $c2, $61, $bf, $66, $bd, $6b, $ba, $6f
    db $b7, $74, $b4, $78, $b1, $7d, $ae, $81, $ab, $85, $a8, $8a, $a4, $8e, $a1, $92
    db $9d, $96, $99, $99, $96, $9d, $92, $a1, $8e, $a4, $8a, $a8, $85, $ab, $81, $ae
    db $7d, $b1, $78, $b4, $74, $b7, $6f, $ba, $6b, $bd, $66, $bf, $61, $c2, $5d, $c4
    db $58, $c6, $53, $c9, $4e, $cb, $49, $cc, $44, $ce, $3f, $d0, $3a, $d1, $34, $d3
    db $2f, $d4, $2a, $d5, $25, $d6, $1f, $d7, $1a, $d7, $15, $d8, $10, $d9, $0a, $d9
    db $05, $d9, $e6

    nop                                           ; $7966: $00
    and $05                                       ; $7967: $e6 $05
    and $0b                                       ; $7969: $e6 $0b
    push hl                                       ; $796b: $e5
    db $10                                        ; $796c: $10
    push hl                                       ; $796d: $e5
    ld d, $e4                                     ; $796e: $16 $e4
    inc e                                         ; $7970: $1c
    db $e3                                        ; $7971: $e3
    ld hl, $27e3                                  ; $7972: $21 $e3 $27
    pop hl                                        ; $7975: $e1
    inc l                                         ; $7976: $2c
    ldh [$32], a                                  ; $7977: $e0 $32
    rst $18                                       ; $7979: $df
    scf                                           ; $797a: $37
    sbc $3d                                       ; $797b: $de $3d
    call c, $da42                                 ; $797d: $dc $42 $da
    ld c, b                                       ; $7980: $48
    ret c                                         ; $7981: $d8

    ld c, l                                       ; $7982: $4d

    db $d6, $52, $d4, $58, $d2, $5d, $d0, $62, $cd, $67, $cb, $6c, $c8, $71, $c5, $76
    db $c2, $7b, $bf, $80, $bc, $84, $b9, $89, $b5, $8d, $b2, $92, $ae, $96, $aa, $9a
    db $a6, $9e, $a2, $a2, $9e, $a6, $9a, $aa, $96, $ae, $92, $b2, $8d, $b5, $89, $b9
    db $84, $bc, $80, $bf, $7b, $c2, $76, $c5, $71, $c8, $6c, $cb, $67, $cd, $62, $d0
    db $5d, $d2, $58, $d4, $52, $d6, $4d, $d8, $48, $da, $42, $dc, $3d, $de, $37, $df
    db $32, $e0, $2c, $e1, $27, $e3, $21, $e3, $1c, $e4, $16, $e5, $10, $e5, $0b, $e6
    db $05, $e6, $f3

    nop                                           ; $79e6: $00
    di                                            ; $79e7: $f3
    dec b                                         ; $79e8: $05
    ld a, [c]                                     ; $79e9: $f2
    dec bc                                        ; $79ea: $0b
    ld a, [c]                                     ; $79eb: $f2
    ld de, $17f2                                  ; $79ec: $11 $f2 $17
    pop af                                        ; $79ef: $f1
    dec e                                         ; $79f0: $1d
    ldh a, [rNR44]                                ; $79f1: $f0 $23
    rst $28                                       ; $79f3: $ef
    add hl, hl                                    ; $79f4: $29
    xor $2f                                       ; $79f5: $ee $2f
    db $ed                                        ; $79f7: $ed
    dec [hl]                                      ; $79f8: $35
    db $eb                                        ; $79f9: $eb
    dec sp                                        ; $79fa: $3b
    ld [$e840], a                                 ; $79fb: $ea $40 $e8
    ld b, [hl]                                    ; $79fe: $46
    and $4c                                       ; $79ff: $e6 $4c
    db $e4                                        ; $7a01: $e4
    ld d, c                                       ; $7a02: $51

    db $e2, $57, $e0, $5d, $de, $62, $db, $67, $d9, $6d, $d6, $72, $d3, $77, $d0, $7d
    db $cd, $82, $ca, $87, $c6, $8c, $c3, $90, $bf, $95, $bb, $9a, $b8, $9e, $b4, $a3
    db $b0, $a7, $ab, $ab, $a7, $b0, $a3, $b4, $9e, $b8, $9a, $bb, $95, $bf, $90, $c3
    db $8c, $c6, $87, $ca, $82, $cd, $7d, $d0, $77, $d3, $72, $d6, $6d, $d9, $67, $db
    db $62, $de, $5d, $e0, $57, $e2, $51, $e4, $4c, $e6, $46, $e8, $40, $ea, $3b, $eb
    db $35, $ed, $2f, $ee, $29, $ef, $23, $f0, $1d, $f1, $17, $f2, $11, $f2, $0b, $f2
    db $05, $f3

Jump_016_7a65:
    ld a, e                                       ; $7a65: $7b
    add a                                         ; $7a66: $87
    jr c, jr_016_7a7b                             ; $7a67: $38 $12

    add a                                         ; $7a69: $87
    jr c, jr_016_7ab7                             ; $7a6a: $38 $4b

    srl d                                         ; $7a6c: $cb $3a
    rra                                           ; $7a6e: $1f
    ld e, a                                       ; $7a6f: $5f
    ld hl, $5a65                                  ; $7a70: $21 $65 $5a
    add hl, de                                    ; $7a73: $19
    ld a, [hl+]                                   ; $7a74: $2a
    ld c, a                                       ; $7a75: $4f
    ld b, $00                                     ; $7a76: $06 $00
    ld e, [hl]                                    ; $7a78: $5e
    ld d, b                                       ; $7a79: $50
    ret                                           ; $7a7a: $c9


jr_016_7a7b:
    add a                                         ; $7a7b: $87
    jr nc, jr_016_7aa2                            ; $7a7c: $30 $24

    jr z, jr_016_7a92                             ; $7a7e: $28 $12

    cpl                                           ; $7a80: $2f
    srl d                                         ; $7a81: $cb $3a
    rra                                           ; $7a83: $1f
    ld e, a                                       ; $7a84: $5f
    ld hl, $5a66                                  ; $7a85: $21 $66 $5a
    add hl, de                                    ; $7a88: $19
    ld a, [hl+]                                   ; $7a89: $2a
    ld c, a                                       ; $7a8a: $4f
    xor a                                         ; $7a8b: $af
    ld b, a                                       ; $7a8c: $47
    sub [hl]                                      ; $7a8d: $96
    ld e, a                                       ; $7a8e: $5f
    sbc a                                         ; $7a8f: $9f
    ld d, a                                       ; $7a90: $57
    ret                                           ; $7a91: $c9


jr_016_7a92:
    srl d                                         ; $7a92: $cb $3a
    rra                                           ; $7a94: $1f
    ld e, a                                       ; $7a95: $5f
    ld hl, $5a65                                  ; $7a96: $21 $65 $5a
    add hl, de                                    ; $7a99: $19
    xor a                                         ; $7a9a: $af
    ld b, a                                       ; $7a9b: $47
    ld c, a                                       ; $7a9c: $4f
    sub [hl]                                      ; $7a9d: $96
    ld e, a                                       ; $7a9e: $5f
    sbc a                                         ; $7a9f: $9f
    ld d, a                                       ; $7aa0: $57
    ret                                           ; $7aa1: $c9


jr_016_7aa2:
    srl d                                         ; $7aa2: $cb $3a
    rra                                           ; $7aa4: $1f
    ld e, a                                       ; $7aa5: $5f
    ld hl, $5a65                                  ; $7aa6: $21 $65 $5a
    add hl, de                                    ; $7aa9: $19
    ld a, [hl+]                                   ; $7aaa: $2a
    ld c, a                                       ; $7aab: $4f
    xor a                                         ; $7aac: $af
    sub c                                         ; $7aad: $91
    ld c, a                                       ; $7aae: $4f
    sbc a                                         ; $7aaf: $9f
    ld b, a                                       ; $7ab0: $47
    xor a                                         ; $7ab1: $af
    sub [hl]                                      ; $7ab2: $96
    ld e, a                                       ; $7ab3: $5f
    sbc a                                         ; $7ab4: $9f
    ld d, a                                       ; $7ab5: $57
    ret                                           ; $7ab6: $c9


jr_016_7ab7:
    jr z, jr_016_7acb                             ; $7ab7: $28 $12

    cpl                                           ; $7ab9: $2f
    srl d                                         ; $7aba: $cb $3a
    rra                                           ; $7abc: $1f
    ld e, a                                       ; $7abd: $5f
    ld hl, $5a67                                  ; $7abe: $21 $67 $5a
    add hl, de                                    ; $7ac1: $19
    ld a, [hl-]                                   ; $7ac2: $3a
    ld e, a                                       ; $7ac3: $5f
    xor a                                         ; $7ac4: $af
    ld d, a                                       ; $7ac5: $57
    sub [hl]                                      ; $7ac6: $96
    ld c, a                                       ; $7ac7: $4f
    sbc a                                         ; $7ac8: $9f
    ld b, a                                       ; $7ac9: $47
    ret                                           ; $7aca: $c9


jr_016_7acb:
    srl d                                         ; $7acb: $cb $3a
    rra                                           ; $7acd: $1f
    ld e, a                                       ; $7ace: $5f
    ld hl, $5a65                                  ; $7acf: $21 $65 $5a
    add hl, de                                    ; $7ad2: $19
    ld bc, $0000                                  ; $7ad3: $01 $00 $00
    ld d, b                                       ; $7ad6: $50
    ld e, [hl]                                    ; $7ad7: $5e
    ret                                           ; $7ad8: $c9


    db $80, $f6, $79, $f7, $73, $f8, $70, $f9, $6f, $fa, $70, $fb, $72, $fc, $75, $fd
    db $7a, $fe, $7e, $ff, $82, $00, $86, $01, $8b, $02, $8e, $03, $90, $04, $91, $05
    db $90, $06, $8d, $07, $87, $08, $80, $09

Call_016_7b01:
    ld c, l                                       ; $7b01: $4d
    ld b, h                                       ; $7b02: $44
    add a                                         ; $7b03: $87
    ld hl, $7ad9                                  ; $7b04: $21 $d9 $7a
    add l                                         ; $7b07: $85
    ld l, a                                       ; $7b08: $6f
    jr nc, jr_016_7b0c                            ; $7b09: $30 $01

    inc h                                         ; $7b0b: $24

jr_016_7b0c:
    ld a, [hl+]                                   ; $7b0c: $2a
    ld d, [hl]                                    ; $7b0d: $56
    ld e, a                                       ; $7b0e: $5f
    ld hl, $c3b0                                  ; $7b0f: $21 $b0 $c3
    ld a, [hl+]                                   ; $7b12: $2a
    ld h, [hl]                                    ; $7b13: $66
    ld l, a                                       ; $7b14: $6f
    add hl, de                                    ; $7b15: $19
    ld e, h                                       ; $7b16: $5c
    ld d, $40                                     ; $7b17: $16 $40
    ld hl, $c3a6                                  ; $7b19: $21 $a6 $c3
    ld a, [hl+]                                   ; $7b1c: $2a
    ld h, [hl]                                    ; $7b1d: $66
    ld l, a                                       ; $7b1e: $6f
    push hl                                       ; $7b1f: $e5
    ld hl, $c3a4                                  ; $7b20: $21 $a4 $c3
    ld a, [hl+]                                   ; $7b23: $2a
    ld h, [hl]                                    ; $7b24: $66
    ld l, a                                       ; $7b25: $6f
    push hl                                       ; $7b26: $e5
    ld hl, $7b36                                  ; $7b27: $21 $36 $7b
    push hl                                       ; $7b2a: $e5
    ld l, c                                       ; $7b2b: $69
    ld h, b                                       ; $7b2c: $60

jr_016_7b2d:
    push de                                       ; $7b2d: $d5
    push hl                                       ; $7b2e: $e5
    dec d                                         ; $7b2f: $15
    di                                            ; $7b30: $f3
    add sp, $04                                   ; $7b31: $e8 $04
    jp Jump_016_7a65                              ; $7b33: $c3 $65 $7a


    pop hl                                        ; $7b36: $e1
    add hl, bc                                    ; $7b37: $09
    sra h                                         ; $7b38: $cb $2c
    jr nz, jr_016_7ba5                            ; $7b3a: $20 $69

    rr l                                          ; $7b3c: $cb $1d
    ld c, l                                       ; $7b3e: $4d
    pop hl                                        ; $7b3f: $e1
    add hl, de                                    ; $7b40: $19
    add sp, -$0a                                  ; $7b41: $e8 $f6
    ei                                            ; $7b43: $fb
    sra h                                         ; $7b44: $cb $2c
    jr nz, jr_016_7ba8                            ; $7b46: $20 $60

    rr l                                          ; $7b48: $cb $1d
    ld e, l                                       ; $7b4a: $5d
    ld a, e                                       ; $7b4b: $7b
    and $fc                                       ; $7b4c: $e6 $fc
    swap a                                        ; $7b4e: $cb $37
    ld l, a                                       ; $7b50: $6f
    and $0f                                       ; $7b51: $e6 $0f
    ld h, a                                       ; $7b53: $67
    xor l                                         ; $7b54: $ad
    ld l, a                                       ; $7b55: $6f
    ld d, c                                       ; $7b56: $51
    srl c                                         ; $7b57: $cb $39
    srl c                                         ; $7b59: $cb $39
    ld b, $d0                                     ; $7b5b: $06 $d0
    add hl, bc                                    ; $7b5d: $09
    ld a, $02                                     ; $7b5e: $3e $02
    ldh [$96], a                                  ; $7b60: $e0 $96
    ldh [rSVBK], a                                ; $7b62: $e0 $70
    ld a, d                                       ; $7b64: $7a
    bit 5, [hl]                                   ; $7b65: $cb $6e
    jr z, jr_016_7b6a                             ; $7b67: $28 $01

    cpl                                           ; $7b69: $2f

jr_016_7b6a:
    ld c, a                                       ; $7b6a: $4f
    rrca                                          ; $7b6b: $0f
    rrca                                          ; $7b6c: $0f
    ld a, e                                       ; $7b6d: $7b
    bit 6, [hl]                                   ; $7b6e: $cb $76
    jr z, jr_016_7b73                             ; $7b70: $28 $01

    cpl                                           ; $7b72: $2f

jr_016_7b73:
    rla                                           ; $7b73: $17
    and $07                                       ; $7b74: $e6 $07
    ld e, a                                       ; $7b76: $5f
    ld a, $03                                     ; $7b77: $3e $03
    ldh [$96], a                                  ; $7b79: $e0 $96
    ldh [rSVBK], a                                ; $7b7b: $e0 $70
    ld l, [hl]                                    ; $7b7d: $6e
    xor a                                         ; $7b7e: $af
    ld h, a                                       ; $7b7f: $67
    ld d, $d8                                     ; $7b80: $16 $d8
    add hl, hl                                    ; $7b82: $29
    add hl, hl                                    ; $7b83: $29
    add hl, hl                                    ; $7b84: $29
    add hl, de                                    ; $7b85: $19
    ld a, $06                                     ; $7b86: $3e $06
    ldh [$96], a                                  ; $7b88: $e0 $96
    ldh [rSVBK], a                                ; $7b8a: $e0 $70
    ld b, [hl]                                    ; $7b8c: $46
    bit 0, c                                      ; $7b8d: $cb $41
    jr nz, jr_016_7b93                            ; $7b8f: $20 $02

    swap b                                        ; $7b91: $cb $30

jr_016_7b93:
    ld a, $01                                     ; $7b93: $3e $01
    ldh [$96], a                                  ; $7b95: $e0 $96
    ldh [rSVBK], a                                ; $7b97: $e0 $70
    ld a, b                                       ; $7b99: $78
    and $0f                                       ; $7b9a: $e6 $0f

jr_016_7b9c:
    pop hl                                        ; $7b9c: $e1
    ld [hl+], a                                   ; $7b9d: $22
    pop de                                        ; $7b9e: $d1
    dec d                                         ; $7b9f: $15
    jr nz, jr_016_7b2d                            ; $7ba0: $20 $8b

    add sp, $06                                   ; $7ba2: $e8 $06
    ret                                           ; $7ba4: $c9


jr_016_7ba5:
    add sp, -$08                                  ; $7ba5: $e8 $f8
    ei                                            ; $7ba7: $fb

jr_016_7ba8:
    ld a, $07                                     ; $7ba8: $3e $07
    jr jr_016_7b9c                                ; $7baa: $18 $f0

    ld hl, $d404                                  ; $7bac: $21 $04 $d4
    ld a, [hl+]                                   ; $7baf: $2a
    ld d, [hl]                                    ; $7bb0: $56
    ld e, a                                       ; $7bb1: $5f
    ld hl, $d401                                  ; $7bb2: $21 $01 $d4
    ld a, [hl+]                                   ; $7bb5: $2a
    ld h, [hl]                                    ; $7bb6: $66
    ld l, a                                       ; $7bb7: $6f
    ld a, [$d443]                                 ; $7bb8: $fa $43 $d4
    or a                                          ; $7bbb: $b7
    jr z, jr_016_7be1                             ; $7bbc: $28 $23

    cp $04                                        ; $7bbe: $fe $04
    jp z, Jump_016_7be1                           ; $7bc0: $ca $e1 $7b

    ld a, [$d442]                                 ; $7bc3: $fa $42 $d4
    ld b, a                                       ; $7bc6: $47
    ld a, d                                       ; $7bc7: $7a
    sub b                                         ; $7bc8: $90
    ld d, a                                       ; $7bc9: $57
    ld a, [$d441]                                 ; $7bca: $fa $41 $d4
    ld b, a                                       ; $7bcd: $47
    ld a, h                                       ; $7bce: $7c
    sub b                                         ; $7bcf: $90

jr_016_7bd0:
    ld h, a                                       ; $7bd0: $67
    sla l                                         ; $7bd1: $cb $25
    rl h                                          ; $7bd3: $cb $14
    sla l                                         ; $7bd5: $cb $25
    rl h                                          ; $7bd7: $cb $14
    sla e                                         ; $7bd9: $cb $23
    rl d                                          ; $7bdb: $cb $12
    sla e                                         ; $7bdd: $cb $23
    rl d                                          ; $7bdf: $cb $12

Jump_016_7be1:
jr_016_7be1:
    push hl                                       ; $7be1: $e5
    push de                                       ; $7be2: $d5
    call Call_016_7bf2                            ; $7be3: $cd $f2 $7b
    pop de                                        ; $7be6: $d1
    pop hl                                        ; $7be7: $e1
    push bc                                       ; $7be8: $c5
    call Call_016_7c57                            ; $7be9: $cd $57 $7c
    pop bc                                        ; $7bec: $c1
    ret                                           ; $7bed: $c9


    xor a                                         ; $7bee: $af
    ld b, a                                       ; $7bef: $47
    ld c, a                                       ; $7bf0: $4f
    ret                                           ; $7bf1: $c9


Call_016_7bf2:
    ldh a, [$96]                                  ; $7bf2: $f0 $96
    push af                                       ; $7bf4: $f5
    ld e, h                                       ; $7bf5: $5c
    ld l, d                                       ; $7bf6: $6a
    ld h, $00                                     ; $7bf7: $26 $00
    ld d, $00                                     ; $7bf9: $16 $00
    add hl, hl                                    ; $7bfb: $29
    add hl, hl                                    ; $7bfc: $29
    add hl, hl                                    ; $7bfd: $29
    add hl, hl                                    ; $7bfe: $29
    add hl, hl                                    ; $7bff: $29
    add hl, hl                                    ; $7c00: $29
    add hl, de                                    ; $7c01: $19
    ld de, $d000                                  ; $7c02: $11 $00 $d0
    add hl, de                                    ; $7c05: $19
    ld a, $02                                     ; $7c06: $3e $02
    ldh [$96], a                                  ; $7c08: $e0 $96
    ldh [rSVBK], a                                ; $7c0a: $e0 $70
    ld a, [hl]                                    ; $7c0c: $7e
    rrca                                          ; $7c0d: $0f
    rrca                                          ; $7c0e: $0f
    and $18                                       ; $7c0f: $e6 $18
    ld b, a                                       ; $7c11: $47
    ld a, $03                                     ; $7c12: $3e $03
    ldh [$96], a                                  ; $7c14: $e0 $96
    ldh [rSVBK], a                                ; $7c16: $e0 $70
    ld l, [hl]                                    ; $7c18: $6e
    ld h, $d7                                     ; $7c19: $26 $d7
    ld a, $06                                     ; $7c1b: $3e $06
    ldh [$96], a                                  ; $7c1d: $e0 $96
    ldh [rSVBK], a                                ; $7c1f: $e0 $70
    ld a, [hl]                                    ; $7c21: $7e
    ld c, a                                       ; $7c22: $4f
    and $07                                       ; $7c23: $e6 $07
    add b                                         ; $7c25: $80
    ld hl, $7c37                                  ; $7c26: $21 $37 $7c
    add l                                         ; $7c29: $85
    ld l, a                                       ; $7c2a: $6f
    ld a, h                                       ; $7c2b: $7c
    adc $00                                       ; $7c2c: $ce $00
    ld h, a                                       ; $7c2e: $67
    ld b, [hl]                                    ; $7c2f: $46
    pop af                                        ; $7c30: $f1
    ldh [$96], a                                  ; $7c31: $e0 $96
    ldh [rSVBK], a                                ; $7c33: $e0 $70
    ld a, c                                       ; $7c35: $79
    ret                                           ; $7c36: $c9


    nop                                           ; $7c37: $00
    jr nz, jr_016_7c7a                            ; $7c38: $20 $40

    ld h, b                                       ; $7c3a: $60
    add b                                         ; $7c3b: $80
    and b                                         ; $7c3c: $a0
    ret nz                                        ; $7c3d: $c0

    ldh [$80], a                                  ; $7c3e: $e0 $80
    ld h, b                                       ; $7c40: $60
    ld b, b                                       ; $7c41: $40
    jr nz, jr_016_7c44                            ; $7c42: $20 $00

jr_016_7c44:
    ldh [$c0], a                                  ; $7c44: $e0 $c0
    and b                                         ; $7c46: $a0
    nop                                           ; $7c47: $00
    ldh [$c0], a                                  ; $7c48: $e0 $c0
    and b                                         ; $7c4a: $a0
    add b                                         ; $7c4b: $80
    ld h, b                                       ; $7c4c: $60
    ld b, b                                       ; $7c4d: $40
    jr nz, jr_016_7bd0                            ; $7c4e: $20 $80

    and b                                         ; $7c50: $a0
    ret nz                                        ; $7c51: $c0

    ldh [rP1], a                                  ; $7c52: $e0 $00
    jr nz, jr_016_7c96                            ; $7c54: $20 $40

    ld h, b                                       ; $7c56: $60

Call_016_7c57:
    ldh a, [$96]                                  ; $7c57: $f0 $96
    push af                                       ; $7c59: $f5
    push hl                                       ; $7c5a: $e5
    push de                                       ; $7c5b: $d5
    ld e, h                                       ; $7c5c: $5c
    ld l, d                                       ; $7c5d: $6a
    ld h, $00                                     ; $7c5e: $26 $00
    ld d, $00                                     ; $7c60: $16 $00
    add hl, hl                                    ; $7c62: $29
    add hl, hl                                    ; $7c63: $29
    add hl, hl                                    ; $7c64: $29
    add hl, hl                                    ; $7c65: $29
    add hl, hl                                    ; $7c66: $29
    add hl, hl                                    ; $7c67: $29
    add hl, de                                    ; $7c68: $19
    ld de, $d000                                  ; $7c69: $11 $00 $d0
    add hl, de                                    ; $7c6c: $19
    pop de                                        ; $7c6d: $d1
    pop bc                                        ; $7c6e: $c1
    xor a                                         ; $7c6f: $af
    sla c                                         ; $7c70: $cb $21
    rla                                           ; $7c72: $17
    sla c                                         ; $7c73: $cb $21
    rla                                           ; $7c75: $17
    ld c, a                                       ; $7c76: $4f
    xor a                                         ; $7c77: $af
    sla e                                         ; $7c78: $cb $23

jr_016_7c7a:
    rla                                           ; $7c7a: $17
    sla e                                         ; $7c7b: $cb $23
    rla                                           ; $7c7d: $17
    ld d, $00                                     ; $7c7e: $16 $00
    ld e, a                                       ; $7c80: $5f
    ld a, $02                                     ; $7c81: $3e $02
    ldh [$96], a                                  ; $7c83: $e0 $96
    ldh [rSVBK], a                                ; $7c85: $e0 $70
    bit 5, [hl]                                   ; $7c87: $cb $6e
    jr z, jr_016_7c8f                             ; $7c89: $28 $04

    ld a, $03                                     ; $7c8b: $3e $03
    sub c                                         ; $7c8d: $91
    ld c, a                                       ; $7c8e: $4f

jr_016_7c8f:
    bit 6, [hl]                                   ; $7c8f: $cb $76
    jr z, jr_016_7c97                             ; $7c91: $28 $04

    ld a, $03                                     ; $7c93: $3e $03
    sub e                                         ; $7c95: $93

jr_016_7c96:
    ld e, a                                       ; $7c96: $5f

jr_016_7c97:
    ld a, $03                                     ; $7c97: $3e $03
    ldh [$96], a                                  ; $7c99: $e0 $96
    ldh [rSVBK], a                                ; $7c9b: $e0 $70
    ld l, [hl]                                    ; $7c9d: $6e
    ld h, $00                                     ; $7c9e: $26 $00
    add hl, hl                                    ; $7ca0: $29
    add hl, hl                                    ; $7ca1: $29
    add hl, hl                                    ; $7ca2: $29
    add hl, de                                    ; $7ca3: $19
    add hl, de                                    ; $7ca4: $19
    ld de, $d800                                  ; $7ca5: $11 $00 $d8
    add hl, de                                    ; $7ca8: $19
    bit 1, c                                      ; $7ca9: $cb $49
    jr z, jr_016_7cae                             ; $7cab: $28 $01

    inc hl                                        ; $7cad: $23

jr_016_7cae:
    ld a, $06                                     ; $7cae: $3e $06
    ldh [$96], a                                  ; $7cb0: $e0 $96
    ldh [rSVBK], a                                ; $7cb2: $e0 $70
    ld a, [hl]                                    ; $7cb4: $7e
    bit 0, c                                      ; $7cb5: $cb $41
    jr nz, jr_016_7cbb                            ; $7cb7: $20 $02

    swap a                                        ; $7cb9: $cb $37

jr_016_7cbb:
    and $0f                                       ; $7cbb: $e6 $0f
    ld b, a                                       ; $7cbd: $47
    pop af                                        ; $7cbe: $f1
    ldh [$96], a                                  ; $7cbf: $e0 $96
    ldh [rSVBK], a                                ; $7cc1: $e0 $70
    ld a, b                                       ; $7cc3: $78
    ret                                           ; $7cc4: $c9


    ld a, e                                       ; $7cc5: $7b
    and $fc                                       ; $7cc6: $e6 $fc
    swap a                                        ; $7cc8: $cb $37
    ld l, a                                       ; $7cca: $6f
    and $0f                                       ; $7ccb: $e6 $0f
    ld h, a                                       ; $7ccd: $67
    xor l                                         ; $7cce: $ad
    ld l, a                                       ; $7ccf: $6f
    ld c, d                                       ; $7cd0: $4a
    srl c                                         ; $7cd1: $cb $39
    srl c                                         ; $7cd3: $cb $39
    ld b, $d0                                     ; $7cd5: $06 $d0
    add hl, bc                                    ; $7cd7: $09
    ld a, $02                                     ; $7cd8: $3e $02
    ldh [$96], a                                  ; $7cda: $e0 $96
    ldh [rSVBK], a                                ; $7cdc: $e0 $70
    ld a, d                                       ; $7cde: $7a
    bit 5, [hl]                                   ; $7cdf: $cb $6e
    jr z, jr_016_7ce4                             ; $7ce1: $28 $01

    cpl                                           ; $7ce3: $2f

jr_016_7ce4:
    ld c, a                                       ; $7ce4: $4f
    rrca                                          ; $7ce5: $0f
    rrca                                          ; $7ce6: $0f
    ld a, e                                       ; $7ce7: $7b
    bit 6, [hl]                                   ; $7ce8: $cb $76
    jr z, jr_016_7ced                             ; $7cea: $28 $01

    cpl                                           ; $7cec: $2f

jr_016_7ced:
    rla                                           ; $7ced: $17
    and $07                                       ; $7cee: $e6 $07
    ld e, a                                       ; $7cf0: $5f
    ld a, $03                                     ; $7cf1: $3e $03
    ldh [$96], a                                  ; $7cf3: $e0 $96
    ldh [rSVBK], a                                ; $7cf5: $e0 $70
    ld l, [hl]                                    ; $7cf7: $6e
    xor a                                         ; $7cf8: $af
    ld h, a                                       ; $7cf9: $67
    ld d, $d8                                     ; $7cfa: $16 $d8
    add hl, hl                                    ; $7cfc: $29
    add hl, hl                                    ; $7cfd: $29
    add hl, hl                                    ; $7cfe: $29
    add hl, de                                    ; $7cff: $19
    ld a, $06                                     ; $7d00: $3e $06
    ldh [$96], a                                  ; $7d02: $e0 $96
    ldh [rSVBK], a                                ; $7d04: $e0 $70
    ld a, [hl]                                    ; $7d06: $7e
    bit 0, c                                      ; $7d07: $cb $41
    jr nz, jr_016_7d0d                            ; $7d09: $20 $02

    swap a                                        ; $7d0b: $cb $37

jr_016_7d0d:
    and $0f                                       ; $7d0d: $e6 $0f
    ret                                           ; $7d0f: $c9


    ld a, [$d329]                                 ; $7d10: $fa $29 $d3
    add a                                         ; $7d13: $87
    ld hl, $7d2f                                  ; $7d14: $21 $2f $7d
    add l                                         ; $7d17: $85
    ld l, a                                       ; $7d18: $6f
    jr nc, jr_016_7d1c                            ; $7d19: $30 $01

    inc h                                         ; $7d1b: $24

jr_016_7d1c:
    ld a, [hl+]                                   ; $7d1c: $2a
    ld d, [hl]                                    ; $7d1d: $56
    ld e, a                                       ; $7d1e: $5f
    call Call_016_7d93                            ; $7d1f: $cd $93 $7d
    add a                                         ; $7d22: $87
    ld h, $00                                     ; $7d23: $26 $00
    ld l, a                                       ; $7d25: $6f
    add hl, de                                    ; $7d26: $19
    ld e, [hl]                                    ; $7d27: $5e
    inc hl                                        ; $7d28: $23
    ld d, [hl]                                    ; $7d29: $56
    inc hl                                        ; $7d2a: $23
    ld a, [hl+]                                   ; $7d2b: $2a
    ld h, [hl]                                    ; $7d2c: $66
    ld l, a                                       ; $7d2d: $6f
    ret                                           ; $7d2e: $c9


    ld c, e                                       ; $7d2f: $4b
    ld a, l                                       ; $7d30: $7d
    ld h, e                                       ; $7d31: $63
    ld a, l                                       ; $7d32: $7d
    ld h, e                                       ; $7d33: $63
    ld a, l                                       ; $7d34: $7d
    ld a, e                                       ; $7d35: $7b
    ld a, l                                       ; $7d36: $7d
    ld a, e                                       ; $7d37: $7b
    ld a, l                                       ; $7d38: $7d
    ld a, e                                       ; $7d39: $7b
    ld a, l                                       ; $7d3a: $7d
    ld a, e                                       ; $7d3b: $7b
    ld a, l                                       ; $7d3c: $7d
    ld a, e                                       ; $7d3d: $7b
    ld a, l                                       ; $7d3e: $7d
    ld a, e                                       ; $7d3f: $7b
    ld a, l                                       ; $7d40: $7d
    ld a, e                                       ; $7d41: $7b
    ld a, l                                       ; $7d42: $7d
    ld a, e                                       ; $7d43: $7b
    ld a, l                                       ; $7d44: $7d
    ld a, e                                       ; $7d45: $7b
    ld a, l                                       ; $7d46: $7d
    ld a, e                                       ; $7d47: $7b
    ld a, l                                       ; $7d48: $7d
    ld a, e                                       ; $7d49: $7b
    ld a, l                                       ; $7d4a: $7d
    ld h, d                                       ; $7d4b: $62
    ld h, h                                       ; $7d4c: $64
    ld e, l                                       ; $7d4d: $5d
    ld e, a                                       ; $7d4e: $5f
    ld [hl-], a                                   ; $7d4f: $32
    inc a                                         ; $7d50: $3c
    inc d                                         ; $7d51: $14
    ld [hl-], a                                   ; $7d52: $32
    jr z, jr_016_7d8c                             ; $7d53: $28 $37

    inc d                                         ; $7d55: $14
    jr z, @+$0c                                   ; $7d56: $28 $0a

    ld e, $63                                     ; $7d58: $1e $63
    ld h, h                                       ; $7d5a: $64
    inc a                                         ; $7d5b: $3c
    ld b, h                                       ; $7d5c: $44
    ld d, a                                       ; $7d5d: $57
    ld e, e                                       ; $7d5e: $5b
    ld d, e                                       ; $7d5f: $53
    ld d, a                                       ; $7d60: $57
    jr z, jr_016_7d9a                             ; $7d61: $28 $37

    ld h, d                                       ; $7d63: $62
    ld h, h                                       ; $7d64: $64
    ld h, d                                       ; $7d65: $62
    ld h, h                                       ; $7d66: $64
    ld [hl-], a                                   ; $7d67: $32
    inc a                                         ; $7d68: $3c
    inc d                                         ; $7d69: $14
    ld [hl-], a                                   ; $7d6a: $32
    jr z, jr_016_7da4                             ; $7d6b: $28 $37

    inc d                                         ; $7d6d: $14
    jr z, @+$0c                                   ; $7d6e: $28 $0a

    ld e, $63                                     ; $7d70: $1e $63
    ld h, h                                       ; $7d72: $64
    ld e, d                                       ; $7d73: $5a
    ld h, d                                       ; $7d74: $62
    ld e, [hl]                                    ; $7d75: $5e
    ld h, d                                       ; $7d76: $62
    ld e, d                                       ; $7d77: $5a
    ld e, [hl]                                    ; $7d78: $5e
    jr z, jr_016_7db2                             ; $7d79: $28 $37

    ld h, d                                       ; $7d7b: $62
    ld h, h                                       ; $7d7c: $64
    ld h, d                                       ; $7d7d: $62
    ld h, h                                       ; $7d7e: $64
    ld d, b                                       ; $7d7f: $50
    ld e, d                                       ; $7d80: $5a
    ld [hl-], a                                   ; $7d81: $32
    ld d, b                                       ; $7d82: $50
    ld b, [hl]                                    ; $7d83: $46
    ld d, l                                       ; $7d84: $55
    ld [hl-], a                                   ; $7d85: $32
    ld b, [hl]                                    ; $7d86: $46
    jr z, @+$3e                                   ; $7d87: $28 $3c

    ld h, e                                       ; $7d89: $63
    ld h, h                                       ; $7d8a: $64
    ld e, d                                       ; $7d8b: $5a

jr_016_7d8c:
    ld h, d                                       ; $7d8c: $62
    ld e, [hl]                                    ; $7d8d: $5e
    ld h, d                                       ; $7d8e: $62
    ld e, d                                       ; $7d8f: $5a
    ld e, [hl]                                    ; $7d90: $5e
    ld b, [hl]                                    ; $7d91: $46
    ld d, l                                       ; $7d92: $55

Call_016_7d93:
    ld a, [$d445]                                 ; $7d93: $fa $45 $d4
    or a                                          ; $7d96: $b7
    jr z, jr_016_7d9b                             ; $7d97: $28 $02

    xor a                                         ; $7d99: $af

jr_016_7d9a:
    ret                                           ; $7d9a: $c9


jr_016_7d9b:
    ld a, [$d4cd]                                 ; $7d9b: $fa $cd $d4
    cp $0d                                        ; $7d9e: $fe $0d
    jr z, jr_016_7da6                             ; $7da0: $28 $04

    cp $02                                        ; $7da2: $fe $02

jr_016_7da4:
    jr nz, jr_016_7db6                            ; $7da4: $20 $10

jr_016_7da6:
    ld a, [$d446]                                 ; $7da6: $fa $46 $d4
    or a                                          ; $7da9: $b7
    jr z, jr_016_7ddb                             ; $7daa: $28 $2f

    cp $01                                        ; $7dac: $fe $01
    jr nz, jr_016_7db3                            ; $7dae: $20 $03

    ld a, $05                                     ; $7db0: $3e $05

jr_016_7db2:
    ret                                           ; $7db2: $c9


jr_016_7db3:
    ld a, $06                                     ; $7db3: $3e $06
    ret                                           ; $7db5: $c9


jr_016_7db6:
    cp $00                                        ; $7db6: $fe $00
    jr z, jr_016_7dbe                             ; $7db8: $28 $04

    cp $0e                                        ; $7dba: $fe $0e
    jr nz, jr_016_7dce                            ; $7dbc: $20 $10

jr_016_7dbe:
    ld a, [$d446]                                 ; $7dbe: $fa $46 $d4
    or a                                          ; $7dc1: $b7
    jr z, jr_016_7ddb                             ; $7dc2: $28 $17

    cp $01                                        ; $7dc4: $fe $01
    jr nz, jr_016_7dcb                            ; $7dc6: $20 $03

    ld a, $09                                     ; $7dc8: $3e $09
    ret                                           ; $7dca: $c9


jr_016_7dcb:
    ld a, $0a                                     ; $7dcb: $3e $0a
    ret                                           ; $7dcd: $c9


jr_016_7dce:
    cp $01                                        ; $7dce: $fe $01
    jr nz, jr_016_7ddb                            ; $7dd0: $20 $09

    ld a, [$d446]                                 ; $7dd2: $fa $46 $d4
    or a                                          ; $7dd5: $b7
    jr z, jr_016_7ddb                             ; $7dd6: $28 $03

    ld a, $0b                                     ; $7dd8: $3e $0b
    ret                                           ; $7dda: $c9


jr_016_7ddb:
    push hl                                       ; $7ddb: $e5
    push de                                       ; $7ddc: $d5
    ld a, [$d4cd]                                 ; $7ddd: $fa $cd $d4
    ld hl, $7dec                                  ; $7de0: $21 $ec $7d
    add l                                         ; $7de3: $85
    ld l, a                                       ; $7de4: $6f
    jr nc, jr_016_7de8                            ; $7de5: $30 $01

    inc h                                         ; $7de7: $24

jr_016_7de8:
    ld a, [hl]                                    ; $7de8: $7e
    pop de                                        ; $7de9: $d1
    pop hl                                        ; $7dea: $e1
    ret                                           ; $7deb: $c9


    ld bc, $0402                                  ; $7dec: $01 $02 $04
    ld [bc], a                                    ; $7def: $02
    ld [bc], a                                    ; $7df0: $02
    inc bc                                        ; $7df1: $03
    rlca                                          ; $7df2: $07
    ld [bc], a                                    ; $7df3: $02
    ld [bc], a                                    ; $7df4: $02
    ld [$0b07], sp                                ; $7df5: $08 $07 $0b
    inc bc                                        ; $7df8: $03
    inc b                                         ; $7df9: $04
    ld bc, $ff01                                  ; $7dfa: $01 $01 $ff
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
