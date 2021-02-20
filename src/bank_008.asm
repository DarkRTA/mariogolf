; Disassembly of "mgolf.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $008", ROMX[$4000], BANK[$8]

    db $22, $47, $fd, $47, $80, $48, $01, $49, $02, $4b, $bc, $4b, $b4, $47, $66, $46
    db $62, $50

    and $50                                       ; $4012: $e6 $50
    ld h, c                                       ; $4014: $61
    ld b, c                                       ; $4015: $41
    cp b                                          ; $4016: $b8
    ld b, e                                       ; $4017: $43
    ld e, a                                       ; $4018: $5f
    ld d, l                                       ; $4019: $55

    db $09, $51, $d2, $51, $7c, $60, $e6, $60, $bc, $60, $32, $64, $a3, $4a

Call_008_4028:
    push de                                       ; $4028: $d5
    ld hl, $c880                                  ; $4029: $21 $80 $c8
    ld d, $00                                     ; $402c: $16 $00
    ld e, a                                       ; $402e: $5f
    ld a, [$c835]                                 ; $402f: $fa $35 $c8
    or a                                          ; $4032: $b7
    jr z, jr_008_4039                             ; $4033: $28 $04

    ld a, $40                                     ; $4035: $3e $40
    add e                                         ; $4037: $83
    ld e, a                                       ; $4038: $5f

jr_008_4039:
    add hl, de                                    ; $4039: $19
    pop de                                        ; $403a: $d1
    ret                                           ; $403b: $c9


Call_008_403c:
    ld a, [$c83a]                                 ; $403c: $fa $3a $c8
    push de                                       ; $403f: $d5
    push af                                       ; $4040: $f5
    ld a, a                                       ; $4041: $7f
    ld de, $0905                                  ; $4042: $11 $05 $09
    call Call_000_22a5                            ; $4045: $cd $a5 $22
    pop af                                        ; $4048: $f1
    pop de                                        ; $4049: $d1
    or a                                          ; $404a: $b7
    ld a, $00                                     ; $404b: $3e $00
    ret nz                                        ; $404d: $c0

    push bc                                       ; $404e: $c5
    push de                                       ; $404f: $d5
    push hl                                       ; $4050: $e5
    ld a, [$c837]                                 ; $4051: $fa $37 $c8
    push de                                       ; $4054: $d5
    push af                                       ; $4055: $f5
    ld a, a                                       ; $4056: $7f
    ld de, $0906                                  ; $4057: $11 $06 $09
    call Call_000_22a5                            ; $405a: $cd $a5 $22
    pop af                                        ; $405d: $f1
    pop de                                        ; $405e: $d1
    ld d, $00                                     ; $405f: $16 $00
    ld c, a                                       ; $4061: $4f
    dec c                                         ; $4062: $0d
    jr z, jr_008_4077                             ; $4063: $28 $12

    ld hl, $c96e                                  ; $4065: $21 $6e $c9
    ld b, $01                                     ; $4068: $06 $01

jr_008_406a:
    ld a, [hl+]                                   ; $406a: $2a
    sub b                                         ; $406b: $90
    jr c, jr_008_4074                             ; $406c: $38 $06

    jr nz, jr_008_4073                            ; $406e: $20 $03

    inc d                                         ; $4070: $14
    jr jr_008_4074                                ; $4071: $18 $01

jr_008_4073:
    dec d                                         ; $4073: $15

jr_008_4074:
    dec c                                         ; $4074: $0d
    jr nz, jr_008_406a                            ; $4075: $20 $f3

jr_008_4077:
    ld a, d                                       ; $4077: $7a
    pop hl                                        ; $4078: $e1
    pop de                                        ; $4079: $d1
    pop bc                                        ; $407a: $c1
    ret                                           ; $407b: $c9


Call_008_407c:
    call Call_008_403c                            ; $407c: $cd $3c $40
    cpl                                           ; $407f: $2f
    inc a                                         ; $4080: $3c
    ret                                           ; $4081: $c9


Call_008_4082:
    call Call_008_4091                            ; $4082: $cd $91 $40
    push de                                       ; $4085: $d5
    push af                                       ; $4086: $f5
    ld a, a                                       ; $4087: $7f
    ld de, $0902                                  ; $4088: $11 $02 $09
    call Call_000_22a5                            ; $408b: $cd $a5 $22
    pop af                                        ; $408e: $f1
    pop de                                        ; $408f: $d1
    ret                                           ; $4090: $c9


Call_008_4091:
    push bc                                       ; $4091: $c5
    ld a, [$c839]                                 ; $4092: $fa $39 $c8
    push de                                       ; $4095: $d5
    push af                                       ; $4096: $f5
    ld a, a                                       ; $4097: $7f
    ld de, $0903                                  ; $4098: $11 $03 $09
    call Call_000_22a5                            ; $409b: $cd $a5 $22
    pop af                                        ; $409e: $f1
    pop de                                        ; $409f: $d1
    ld b, a                                       ; $40a0: $47
    call Call_008_403c                            ; $40a1: $cd $3c $40
    push de                                       ; $40a4: $d5
    push af                                       ; $40a5: $f5
    ld a, a                                       ; $40a6: $7f
    ld de, $0904                                  ; $40a7: $11 $04 $09
    call Call_000_22a5                            ; $40aa: $cd $a5 $22
    pop af                                        ; $40ad: $f1
    pop de                                        ; $40ae: $d1
    ld c, a                                       ; $40af: $4f
    bit 7, a                                      ; $40b0: $cb $7f
    jr z, jr_008_40b6                             ; $40b2: $28 $02

    cpl                                           ; $40b4: $2f
    inc a                                         ; $40b5: $3c

jr_008_40b6:
    cp b                                          ; $40b6: $b8
    jr nz, jr_008_40c2                            ; $40b7: $20 $09

    bit 7, c                                      ; $40b9: $cb $79
    ld a, $01                                     ; $40bb: $3e $01
    jr z, jr_008_40c0                             ; $40bd: $28 $01

    inc a                                         ; $40bf: $3c

jr_008_40c0:
    jr jr_008_40d3                                ; $40c0: $18 $11

jr_008_40c2:
    jr c, jr_008_40c8                             ; $40c2: $38 $04

    ld a, $ff                                     ; $40c4: $3e $ff
    jr jr_008_40d3                                ; $40c6: $18 $0b

jr_008_40c8:
    dec b                                         ; $40c8: $05
    jr z, jr_008_40ce                             ; $40c9: $28 $03

    cp b                                          ; $40cb: $b8
    jr nz, jr_008_40d2                            ; $40cc: $20 $04

jr_008_40ce:
    ld a, $03                                     ; $40ce: $3e $03
    jr jr_008_40d3                                ; $40d0: $18 $01

jr_008_40d2:
    xor a                                         ; $40d2: $af

jr_008_40d3:
    pop bc                                        ; $40d3: $c1
    ret                                           ; $40d4: $c9


Call_008_40d5:
    dec a                                         ; $40d5: $3d
    cp $02                                        ; $40d6: $fe $02
    ret nc                                        ; $40d8: $d0

    ld [$c83b], a                                 ; $40d9: $ea $3b $c8
    ret                                           ; $40dc: $c9


Call_008_40dd:
    call Call_008_40e1                            ; $40dd: $cd $e1 $40
    ret                                           ; $40e0: $c9


Call_008_40e1:
    ld a, [$c835]                                 ; $40e1: $fa $35 $c8
    push af                                       ; $40e4: $f5
    xor $01                                       ; $40e5: $ee $01
    ld [$c835], a                                 ; $40e7: $ea $35 $c8
    ld a, $2a                                     ; $40ea: $3e $2a
    call Call_008_4028                            ; $40ec: $cd $28 $40
    ld b, [hl]                                    ; $40ef: $46
    ld a, $20                                     ; $40f0: $3e $20
    call Call_008_4028                            ; $40f2: $cd $28 $40
    ld c, [hl]                                    ; $40f5: $4e
    pop af                                        ; $40f6: $f1
    ld [$c835], a                                 ; $40f7: $ea $35 $c8
    ld a, $20                                     ; $40fa: $3e $20
    call Call_008_4028                            ; $40fc: $cd $28 $40
    ld a, [hl]                                    ; $40ff: $7e
    inc b                                         ; $4100: $04
    dec b                                         ; $4101: $05
    jr z, jr_008_411d                             ; $4102: $28 $19

    dec c                                         ; $4104: $0d
    cp c                                          ; $4105: $b9
    jr c, jr_008_411c                             ; $4106: $38 $14

    jr nz, jr_008_4119                            ; $4108: $20 $0f

    call Call_008_4082                            ; $410a: $cd $82 $40
    ld b, a                                       ; $410d: $47
    ld a, [$c835]                                 ; $410e: $fa $35 $c8
    inc a                                         ; $4111: $3c
    cp b                                          ; $4112: $b8
    ld a, $01                                     ; $4113: $3e $01
    ret nz                                        ; $4115: $c0

    ld a, $03                                     ; $4116: $3e $03
    ret                                           ; $4118: $c9


jr_008_4119:
    ld a, $00                                     ; $4119: $3e $00
    ret                                           ; $411b: $c9


jr_008_411c:
    inc c                                         ; $411c: $0c

jr_008_411d:
    cp c                                          ; $411d: $b9
    jr nc, jr_008_4147                            ; $411e: $30 $27

    ld d, b                                       ; $4120: $50
    ld e, a                                       ; $4121: $5f
    call Call_008_4082                            ; $4122: $cd $82 $40
    ld b, a                                       ; $4125: $47
    ld a, [$c835]                                 ; $4126: $fa $35 $c8
    inc a                                         ; $4129: $3c
    cp b                                          ; $412a: $b8
    jr nz, jr_008_4130                            ; $412b: $20 $03

    ld a, $03                                     ; $412d: $3e $03
    ret                                           ; $412f: $c9


jr_008_4130:
    ld a, [$c835]                                 ; $4130: $fa $35 $c8
    xor $01                                       ; $4133: $ee $01
    inc a                                         ; $4135: $3c
    cp b                                          ; $4136: $b8
    ld a, $02                                     ; $4137: $3e $02
    ret nz                                        ; $4139: $c0

    inc d                                         ; $413a: $14
    dec d                                         ; $413b: $15
    ret z                                         ; $413c: $c8

    ld a, e                                       ; $413d: $7b
    add $02                                       ; $413e: $c6 $02
    cp c                                          ; $4140: $b9
    ld a, $01                                     ; $4141: $3e $01
    ret nc                                        ; $4143: $d0

    ld a, $02                                     ; $4144: $3e $02
    ret                                           ; $4146: $c9


jr_008_4147:
    inc c                                         ; $4147: $0c
    cp c                                          ; $4148: $b9
    jr nc, jr_008_415e                            ; $4149: $30 $13

    inc b                                         ; $414b: $04
    dec b                                         ; $414c: $05
    jr nz, jr_008_415e                            ; $414d: $20 $0f

    call Call_008_4082                            ; $414f: $cd $82 $40
    ld b, a                                       ; $4152: $47
    ld a, [$c835]                                 ; $4153: $fa $35 $c8
    inc a                                         ; $4156: $3c
    cp b                                          ; $4157: $b8
    ld a, $00                                     ; $4158: $3e $00
    ret nz                                        ; $415a: $c0

    ld a, $03                                     ; $415b: $3e $03
    ret                                           ; $415d: $c9


jr_008_415e:
    ld a, $00                                     ; $415e: $3e $00
    ret                                           ; $4160: $c9


Call_008_4161:
    call Call_008_4199                            ; $4161: $cd $99 $41
    ld c, $00                                     ; $4164: $0e $00
    or a                                          ; $4166: $b7
    ret z                                         ; $4167: $c8

    ld b, a                                       ; $4168: $47
    call Call_008_4082                            ; $4169: $cd $82 $40
    or a                                          ; $416c: $b7
    ld c, a                                       ; $416d: $4f
    ld a, b                                       ; $416e: $78
    ret z                                         ; $416f: $c8

    cp $01                                        ; $4170: $fe $01
    jr nz, jr_008_417f                            ; $4172: $20 $0b

    call Call_008_403c                            ; $4174: $cd $3c $40
    bit 7, a                                      ; $4177: $cb $7f
    jr nz, jr_008_4195                            ; $4179: $20 $1a

    ld a, b                                       ; $417b: $78
    ld c, $01                                     ; $417c: $0e $01
    ret                                           ; $417e: $c9


jr_008_417f:
    cp $02                                        ; $417f: $fe $02
    jr nz, jr_008_418e                            ; $4181: $20 $0b

    call Call_008_407c                            ; $4183: $cd $7c $40
    bit 7, a                                      ; $4186: $cb $7f
    jr nz, jr_008_4195                            ; $4188: $20 $0b

    ld a, b                                       ; $418a: $78
    ld c, $02                                     ; $418b: $0e $02
    ret                                           ; $418d: $c9


jr_008_418e:
    ld a, c                                       ; $418e: $79
    cp $03                                        ; $418f: $fe $03
    jr z, jr_008_4195                             ; $4191: $28 $02

    ld a, b                                       ; $4193: $78
    ret                                           ; $4194: $c9


jr_008_4195:
    ld a, b                                       ; $4195: $78
    ld c, $00                                     ; $4196: $0e $00
    ret                                           ; $4198: $c9


Call_008_4199:
    ld a, [$c835]                                 ; $4199: $fa $35 $c8
    push af                                       ; $419c: $f5
    ld a, $01                                     ; $419d: $3e $01
    ld [$c835], a                                 ; $419f: $ea $35 $c8
    ld a, $2a                                     ; $41a2: $3e $2a
    call Call_008_4028                            ; $41a4: $cd $28 $40
    ld b, [hl]                                    ; $41a7: $46
    ld a, $20                                     ; $41a8: $3e $20
    call Call_008_4028                            ; $41aa: $cd $28 $40
    ld c, [hl]                                    ; $41ad: $4e
    xor a                                         ; $41ae: $af
    ld [$c835], a                                 ; $41af: $ea $35 $c8
    ld a, $2a                                     ; $41b2: $3e $2a
    call Call_008_4028                            ; $41b4: $cd $28 $40
    ld d, [hl]                                    ; $41b7: $56
    ld a, $20                                     ; $41b8: $3e $20
    call Call_008_4028                            ; $41ba: $cd $28 $40
    pop af                                        ; $41bd: $f1
    ld [$c835], a                                 ; $41be: $ea $35 $c8
    ld e, [hl]                                    ; $41c1: $5e
    ld a, d                                       ; $41c2: $7a
    or b                                          ; $41c3: $b0
    ret z                                         ; $41c4: $c8

    inc d                                         ; $41c5: $14
    dec d                                         ; $41c6: $15
    jr z, jr_008_41d7                             ; $41c7: $28 $0e

    inc b                                         ; $41c9: $04
    dec b                                         ; $41ca: $05
    jr z, jr_008_41ef                             ; $41cb: $28 $22

    ld a, c                                       ; $41cd: $79
    cp e                                          ; $41ce: $bb
    ld a, $03                                     ; $41cf: $3e $03
    ret z                                         ; $41d1: $c8

    ld a, $02                                     ; $41d2: $3e $02
    ret c                                         ; $41d4: $d8

    dec a                                         ; $41d5: $3d
    ret                                           ; $41d6: $c9


jr_008_41d7:
    inc b                                         ; $41d7: $04
    dec b                                         ; $41d8: $05
    jr z, jr_008_41ef                             ; $41d9: $28 $14

    ld a, c                                       ; $41db: $79
    dec a                                         ; $41dc: $3d
    cp e                                          ; $41dd: $bb
    ld a, $02                                     ; $41de: $3e $02
    ret c                                         ; $41e0: $d8

    ld a, $00                                     ; $41e1: $3e $00
    ret nz                                        ; $41e3: $c0

    call Call_008_4082                            ; $41e4: $cd $82 $40
    cp $02                                        ; $41e7: $fe $02
    ld a, $00                                     ; $41e9: $3e $00
    ret nz                                        ; $41eb: $c0

    ld a, $03                                     ; $41ec: $3e $03
    ret                                           ; $41ee: $c9


jr_008_41ef:
    ld a, e                                       ; $41ef: $7b
    dec a                                         ; $41f0: $3d
    cp c                                          ; $41f1: $b9
    ld a, $01                                     ; $41f2: $3e $01
    ret c                                         ; $41f4: $d8

    ld a, $00                                     ; $41f5: $3e $00
    ret nz                                        ; $41f7: $c0

    call Call_008_4082                            ; $41f8: $cd $82 $40
    cp $01                                        ; $41fb: $fe $01
    ld a, $00                                     ; $41fd: $3e $00
    ret nz                                        ; $41ff: $c0

    ld a, $03                                     ; $4200: $3e $03
    ret                                           ; $4202: $c9


Call_008_4203:
    xor a                                         ; $4203: $af
    ld hl, $c897                                  ; $4204: $21 $97 $c8
    ld [hl+], a                                   ; $4207: $22
    ld [hl+], a                                   ; $4208: $22
    ld hl, $c8d7                                  ; $4209: $21 $d7 $c8
    ld [hl+], a                                   ; $420c: $22
    ld [hl+], a                                   ; $420d: $22
    ret                                           ; $420e: $c9


Call_008_420f:
    xor a                                         ; $420f: $af
    ld hl, $d494                                  ; $4210: $21 $94 $d4
    ld [hl+], a                                   ; $4213: $22
    ld [hl+], a                                   ; $4214: $22
    ld [hl+], a                                   ; $4215: $22
    ld [hl], a                                    ; $4216: $77
    ld [$d498], a                                 ; $4217: $ea $98 $d4
    ld a, [$d325]                                 ; $421a: $fa $25 $d3
    cp $03                                        ; $421d: $fe $03
    jr nz, jr_008_4230                            ; $421f: $20 $0f

    ld a, $2a                                     ; $4221: $3e $2a
    rst $18                                       ; $4223: $df
    ld [$213b], sp                                ; $4224: $08 $3b $21
    nop                                           ; $4227: $00
    add hl, de                                    ; $4228: $19
    ld a, $ff                                     ; $4229: $3e $ff
    call Call_008_4244                            ; $422b: $cd $44 $42
    jr jr_008_4243                                ; $422e: $18 $13

jr_008_4230:
    cp $05                                        ; $4230: $fe $05
    jr nz, jr_008_4243                            ; $4232: $20 $0f

    ld a, $29                                     ; $4234: $3e $29
    rst $18                                       ; $4236: $df
    ld [$213b], sp                                ; $4237: $08 $3b $21
    nop                                           ; $423a: $00
    nop                                           ; $423b: $00
    ld a, $ff                                     ; $423c: $3e $ff
    call Call_008_4244                            ; $423e: $cd $44 $42
    jr jr_008_4243                                ; $4241: $18 $00

jr_008_4243:
    ret                                           ; $4243: $c9


Call_008_4244:
    ld [$d491], a                                 ; $4244: $ea $91 $d4
    ld a, l                                       ; $4247: $7d
    ld [$d48f], a                                 ; $4248: $ea $8f $d4
    ld a, h                                       ; $424b: $7c
    ld [$d490], a                                 ; $424c: $ea $90 $d4
    ret                                           ; $424f: $c9


Call_008_4250:
    ld hl, $d498                                  ; $4250: $21 $98 $d4
    ld a, [hl]                                    ; $4253: $7e
    cp $02                                        ; $4254: $fe $02
    ret nc                                        ; $4256: $d0

    inc [hl]                                      ; $4257: $34
    ld a, [$d325]                                 ; $4258: $fa $25 $d3
    cp $03                                        ; $425b: $fe $03
    jr nz, jr_008_42cf                            ; $425d: $20 $70

    ld a, $2a                                     ; $425f: $3e $2a
    call Call_008_4028                            ; $4261: $cd $28 $40
    ld a, [hl]                                    ; $4264: $7e
    or a                                          ; $4265: $b7
    jr z, jr_008_426d                             ; $4266: $28 $05

    ld hl, $0000                                  ; $4268: $21 $00 $00
    jr jr_008_4277                                ; $426b: $18 $0a

jr_008_426d:
    rst $18                                       ; $426d: $df
    inc [hl]                                      ; $426e: $34
    db $10                                        ; $426f: $10
    cp $06                                        ; $4270: $fe $06
    jr nz, jr_008_4294                            ; $4272: $20 $20

    rst $18                                       ; $4274: $df
    inc b                                         ; $4275: $04
    db $10                                        ; $4276: $10

jr_008_4277:
    push hl                                       ; $4277: $e5
    ld hl, $d48f                                  ; $4278: $21 $8f $d4
    ld a, [hl+]                                   ; $427b: $2a
    ld d, [hl]                                    ; $427c: $56
    ld e, a                                       ; $427d: $5f
    pop hl                                        ; $427e: $e1
    push hl                                       ; $427f: $e5
    call Call_000_08ac                            ; $4280: $cd $ac $08
    ld d, h                                       ; $4283: $54
    ld e, l                                       ; $4284: $5d
    pop hl                                        ; $4285: $e1
    ld a, d                                       ; $4286: $7a
    or e                                          ; $4287: $b3
    jr z, jr_008_4294                             ; $4288: $28 $0a

    bit 7, d                                      ; $428a: $cb $7a
    jr z, jr_008_4294                             ; $428c: $28 $06

    ld a, [$c835]                                 ; $428e: $fa $35 $c8
    call Call_008_4244                            ; $4291: $cd $44 $42

jr_008_4294:
    ld a, [$d498]                                 ; $4294: $fa $98 $d4
    cp $02                                        ; $4297: $fe $02
    jp c, Jump_008_432e                           ; $4299: $da $2e $43

    ld a, [$d491]                                 ; $429c: $fa $91 $d4
    cp $ff                                        ; $429f: $fe $ff
    jp z, Jump_008_432e                           ; $42a1: $ca $2e $43

    push af                                       ; $42a4: $f5
    and $01                                       ; $42a5: $e6 $01
    ld hl, $d496                                  ; $42a7: $21 $96 $d4
    add l                                         ; $42aa: $85
    ld l, a                                       ; $42ab: $6f
    jr nc, jr_008_42af                            ; $42ac: $30 $01

    inc h                                         ; $42ae: $24

jr_008_42af:
    inc [hl]                                      ; $42af: $34
    pop af                                        ; $42b0: $f1
    push af                                       ; $42b1: $f5
    ld a, [$d443]                                 ; $42b2: $fa $43 $d4
    cp $01                                        ; $42b5: $fe $01
    jr z, jr_008_42c1                             ; $42b7: $28 $08

    rst $18                                       ; $42b9: $df
    inc b                                         ; $42ba: $04
    ld c, d                                       ; $42bb: $4a
    ld a, $01                                     ; $42bc: $3e $01
    rst $18                                       ; $42be: $df
    nop                                           ; $42bf: $00
    inc de                                        ; $42c0: $13

jr_008_42c1:
    pop af                                        ; $42c1: $f1
    call Call_008_437c                            ; $42c2: $cd $7c $43
    ld a, $22                                     ; $42c5: $3e $22
    rst $18                                       ; $42c7: $df
    ld [$cd3b], sp                                ; $42c8: $08 $3b $cd
    sub c                                         ; $42cb: $91
    ld b, e                                       ; $42cc: $43
    jr jr_008_432e                                ; $42cd: $18 $5f

jr_008_42cf:
    cp $05                                        ; $42cf: $fe $05
    jr nz, jr_008_432e                            ; $42d1: $20 $5b

    rst $18                                       ; $42d3: $df
    inc [hl]                                      ; $42d4: $34
    db $10                                        ; $42d5: $10
    cp $00                                        ; $42d6: $fe $00
    jr z, jr_008_42e6                             ; $42d8: $28 $0c

    cp $06                                        ; $42da: $fe $06
    jr z, jr_008_42e6                             ; $42dc: $28 $08

    cp $0a                                        ; $42de: $fe $0a
    jr z, jr_008_42e6                             ; $42e0: $28 $04

    cp $0e                                        ; $42e2: $fe $0e
    jr nz, jr_008_4307                            ; $42e4: $20 $21

jr_008_42e6:
    rst $18                                       ; $42e6: $df
    jr c, jr_008_42f9                             ; $42e7: $38 $10

    push hl                                       ; $42e9: $e5
    ld hl, $d48f                                  ; $42ea: $21 $8f $d4
    ld a, [hl+]                                   ; $42ed: $2a
    ld d, [hl]                                    ; $42ee: $56
    ld e, a                                       ; $42ef: $5f
    inc de                                        ; $42f0: $13
    pop hl                                        ; $42f1: $e1
    push hl                                       ; $42f2: $e5
    call Call_000_08ac                            ; $42f3: $cd $ac $08
    ld d, h                                       ; $42f6: $54
    ld e, l                                       ; $42f7: $5d
    pop hl                                        ; $42f8: $e1

jr_008_42f9:
    ld a, d                                       ; $42f9: $7a
    or e                                          ; $42fa: $b3
    jr z, jr_008_4307                             ; $42fb: $28 $0a

    bit 7, d                                      ; $42fd: $cb $7a
    jr nz, jr_008_4307                            ; $42ff: $20 $06

    ld a, [$c835]                                 ; $4301: $fa $35 $c8
    call Call_008_4244                            ; $4304: $cd $44 $42

jr_008_4307:
    ld a, [$d498]                                 ; $4307: $fa $98 $d4
    cp $02                                        ; $430a: $fe $02
    jp c, Jump_008_432e                           ; $430c: $da $2e $43

    ld a, [$d491]                                 ; $430f: $fa $91 $d4
    cp $ff                                        ; $4312: $fe $ff
    jr z, jr_008_432e                             ; $4314: $28 $18

    push af                                       ; $4316: $f5
    and $01                                       ; $4317: $e6 $01
    ld hl, $d494                                  ; $4319: $21 $94 $d4
    add l                                         ; $431c: $85
    ld l, a                                       ; $431d: $6f
    jr nc, jr_008_4321                            ; $431e: $30 $01

    inc h                                         ; $4320: $24

jr_008_4321:
    inc [hl]                                      ; $4321: $34
    pop af                                        ; $4322: $f1
    call Call_008_437c                            ; $4323: $cd $7c $43
    ld a, $20                                     ; $4326: $3e $20
    rst $18                                       ; $4328: $df
    ld [$cd3b], sp                                ; $4329: $08 $3b $cd
    sub c                                         ; $432c: $91
    ld b, e                                       ; $432d: $43

Jump_008_432e:
jr_008_432e:
    ret                                           ; $432e: $c9


Call_008_432f:
    ldh a, [$96]                                  ; $432f: $f0 $96
    ld de, $0808                                  ; $4331: $11 $08 $08
    call Call_000_22d2                            ; $4334: $cd $d2 $22
    ld a, [$d494]                                 ; $4337: $fa $94 $d4
    ld hl, $c897                                  ; $433a: $21 $97 $c8
    add [hl]                                      ; $433d: $86
    ld [hl], a                                    ; $433e: $77
    ld a, [$d496]                                 ; $433f: $fa $96 $d4
    ld hl, $c898                                  ; $4342: $21 $98 $c8
    add [hl]                                      ; $4345: $86
    ld [hl], a                                    ; $4346: $77
    ld a, [$d495]                                 ; $4347: $fa $95 $d4
    ld hl, $c8d7                                  ; $434a: $21 $d7 $c8
    add [hl]                                      ; $434d: $86
    ld [hl], a                                    ; $434e: $77
    ld a, [$d497]                                 ; $434f: $fa $97 $d4
    ld hl, $c8d8                                  ; $4352: $21 $d8 $c8
    add [hl]                                      ; $4355: $86
    ld [hl], a                                    ; $4356: $77
    ld a, [$c897]                                 ; $4357: $fa $97 $c8
    ld de, $0809                                  ; $435a: $11 $09 $08
    call Call_000_22d2                            ; $435d: $cd $d2 $22
    ld a, [$c898]                                 ; $4360: $fa $98 $c8
    ld de, $080a                                  ; $4363: $11 $0a $08
    call Call_000_22d2                            ; $4366: $cd $d2 $22
    ld a, [$c8d7]                                 ; $4369: $fa $d7 $c8
    ld de, $080b                                  ; $436c: $11 $0b $08
    call Call_000_22d2                            ; $436f: $cd $d2 $22
    ld a, [$c8d8]                                 ; $4372: $fa $d8 $c8
    ld de, $080c                                  ; $4375: $11 $0c $08
    call Call_000_22d2                            ; $4378: $cd $d2 $22
    ret                                           ; $437b: $c9


Call_008_437c:
    or a                                          ; $437c: $b7
    jr nz, jr_008_4388                            ; $437d: $20 $09

    ld a, $20                                     ; $437f: $3e $20
    ld hl, $439e                                  ; $4381: $21 $9e $43
    call Call_000_23e8                            ; $4384: $cd $e8 $23
    ret                                           ; $4387: $c9


jr_008_4388:
    ld a, $20                                     ; $4388: $3e $20
    ld hl, $43ab                                  ; $438a: $21 $ab $43
    call Call_000_23e8                            ; $438d: $cd $e8 $23
    ret                                           ; $4390: $c9


    ld hl, $439e                                  ; $4391: $21 $9e $43
    call Call_000_2449                            ; $4394: $cd $49 $24
    ld hl, $43ab                                  ; $4397: $21 $ab $43
    call Call_000_2449                            ; $439a: $cd $49 $24
    ret                                           ; $439d: $c9


    ld hl, $0201                                  ; $439e: $21 $01 $02
    ld de, $4838                                  ; $43a1: $11 $38 $48
    ld bc, $0c5c                                  ; $43a4: $01 $5c $0c
    call Call_000_2756                            ; $43a7: $cd $56 $27
    ret                                           ; $43aa: $c9


    ld hl, $0201                                  ; $43ab: $21 $01 $02
    ld de, $4838                                  ; $43ae: $11 $38 $48
    ld bc, $0d6c                                  ; $43b1: $01 $6c $0d
    call Call_000_2756                            ; $43b4: $cd $56 $27
    ret                                           ; $43b7: $c9


    ld hl, $c96e                                  ; $43b8: $21 $6e $c9
    ld a, [hl+]                                   ; $43bb: $2a
    ld h, [hl]                                    ; $43bc: $66
    ld l, a                                       ; $43bd: $6f
    ld a, h                                       ; $43be: $7c
    or l                                          ; $43bf: $b5
    ret nz                                        ; $43c0: $c0

    ld hl, $1900                                  ; $43c1: $21 $00 $19
    ret                                           ; $43c4: $c9


Call_008_43c5:
    ld a, [$c836]                                 ; $43c5: $fa $36 $c8
    or a                                          ; $43c8: $b7
    jr z, jr_008_43d1                             ; $43c9: $28 $06

    cp $06                                        ; $43cb: $fe $06
    jr nc, jr_008_43d1                            ; $43cd: $30 $02

    xor a                                         ; $43cf: $af
    ret                                           ; $43d0: $c9


jr_008_43d1:
    xor a                                         ; $43d1: $af
    inc a                                         ; $43d2: $3c
    ret                                           ; $43d3: $c9


Call_008_43d4:
    push de                                       ; $43d4: $d5
    ld a, [$c836]                                 ; $43d5: $fa $36 $c8
    dec a                                         ; $43d8: $3d
    ld h, $00                                     ; $43d9: $26 $00
    ld l, a                                       ; $43db: $6f
    ld d, h                                       ; $43dc: $54
    ld e, l                                       ; $43dd: $5d
    add hl, hl                                    ; $43de: $29
    add hl, de                                    ; $43df: $19
    add hl, hl                                    ; $43e0: $29
    add hl, hl                                    ; $43e1: $29
    add hl, hl                                    ; $43e2: $29
    add l                                         ; $43e3: $85
    ld l, a                                       ; $43e4: $6f
    jr nc, jr_008_43e8                            ; $43e5: $30 $01

    inc h                                         ; $43e7: $24

jr_008_43e8:
    ld de, $c980                                  ; $43e8: $11 $80 $c9
    add hl, de                                    ; $43eb: $19
    pop de                                        ; $43ec: $d1
    ret                                           ; $43ed: $c9


Call_008_43ee:
    call Call_008_43c5                            ; $43ee: $cd $c5 $43
    ret nz                                        ; $43f1: $c0

    call Call_008_43d4                            ; $43f2: $cd $d4 $43
    ld a, $06                                     ; $43f5: $3e $06
    add l                                         ; $43f7: $85
    ld l, a                                       ; $43f8: $6f
    jr nc, jr_008_43fc                            ; $43f9: $30 $01

    inc h                                         ; $43fb: $24

jr_008_43fc:
    ld de, $c96e                                  ; $43fc: $11 $6e $c9
    ld c, $01                                     ; $43ff: $0e $01
    call Call_000_03eb                            ; $4401: $cd $eb $03
    ret                                           ; $4404: $c9


Call_008_4405:
    cp $00                                        ; $4405: $fe $00
    jr z, jr_008_4417                             ; $4407: $28 $0e

    cp $0e                                        ; $4409: $fe $0e
    jr z, jr_008_4417                             ; $440b: $28 $0a

    cp $06                                        ; $440d: $fe $06
    jr z, jr_008_4417                             ; $440f: $28 $06

    cp $0a                                        ; $4411: $fe $0a
    jr z, jr_008_4417                             ; $4413: $28 $02

    xor a                                         ; $4415: $af
    ret                                           ; $4416: $c9


jr_008_4417:
    xor a                                         ; $4417: $af
    inc a                                         ; $4418: $3c
    ret                                           ; $4419: $c9


Call_008_441a:
    call Call_008_43c5                            ; $441a: $cd $c5 $43
    ret nz                                        ; $441d: $c0

    ld a, [$d445]                                 ; $441e: $fa $45 $d4
    or a                                          ; $4421: $b7
    ret z                                         ; $4422: $c8

    rst $18                                       ; $4423: $df
    inc [hl]                                      ; $4424: $34
    db $10                                        ; $4425: $10
    call Call_008_4405                            ; $4426: $cd $05 $44
    ld b, a                                       ; $4429: $47
    ld hl, $c973                                  ; $442a: $21 $73 $c9
    ld a, [hl]                                    ; $442d: $7e
    cp $ff                                        ; $442e: $fe $ff
    jr z, jr_008_4439                             ; $4430: $28 $07

    inc [hl]                                      ; $4432: $34
    inc hl                                        ; $4433: $23
    ld a, [hl]                                    ; $4434: $7e
    add b                                         ; $4435: $80
    ld [hl], a                                    ; $4436: $77
    jr jr_008_444c                                ; $4437: $18 $13

jr_008_4439:
    inc hl                                        ; $4439: $23
    push hl                                       ; $443a: $e5
    ld a, [hl]                                    ; $443b: $7e
    add b                                         ; $443c: $80
    ld l, a                                       ; $443d: $6f
    ld h, $00                                     ; $443e: $26 $00
    jr nc, jr_008_4443                            ; $4440: $30 $01

    inc h                                         ; $4442: $24

jr_008_4443:
    ld d, $00                                     ; $4443: $16 $00
    ld e, h                                       ; $4445: $5c
    call Call_000_08ac                            ; $4446: $cd $ac $08
    ld a, l                                       ; $4449: $7d
    pop hl                                        ; $444a: $e1
    ld [hl], a                                    ; $444b: $77

jr_008_444c:
    ld a, b                                       ; $444c: $78
    or a                                          ; $444d: $b7
    ret z                                         ; $444e: $c8

    ld a, [$d329]                                 ; $444f: $fa $29 $d3
    or a                                          ; $4452: $b7
    jr nz, jr_008_44ab                            ; $4453: $20 $56

    ld hl, $c970                                  ; $4455: $21 $70 $c9
    ld a, [hl]                                    ; $4458: $7e
    cp $80                                        ; $4459: $fe $80
    jr z, jr_008_4480                             ; $445b: $28 $23

    inc [hl]                                      ; $445d: $34
    inc hl                                        ; $445e: $23
    push hl                                       ; $445f: $e5
    ld a, [hl+]                                   ; $4460: $2a
    ld h, [hl]                                    ; $4461: $66
    ld l, a                                       ; $4462: $6f
    push hl                                       ; $4463: $e5
    rst $18                                       ; $4464: $df
    jr c, jr_008_4477                             ; $4465: $38 $10

    srl h                                         ; $4467: $cb $3c
    rr l                                          ; $4469: $cb $1d
    srl h                                         ; $446b: $cb $3c
    rr l                                          ; $446d: $cb $1d
    srl h                                         ; $446f: $cb $3c
    rr l                                          ; $4471: $cb $1d
    srl h                                         ; $4473: $cb $3c
    rr l                                          ; $4475: $cb $1d

jr_008_4477:
    srl h                                         ; $4477: $cb $3c
    rr l                                          ; $4479: $cb $1d
    pop de                                        ; $447b: $d1
    add hl, de                                    ; $447c: $19
    pop de                                        ; $447d: $d1
    jr jr_008_44a6                                ; $447e: $18 $26

jr_008_4480:
    inc hl                                        ; $4480: $23
    push hl                                       ; $4481: $e5
    ld a, [hl+]                                   ; $4482: $2a
    ld h, [hl]                                    ; $4483: $66
    ld l, a                                       ; $4484: $6f
    push hl                                       ; $4485: $e5
    rst $18                                       ; $4486: $df
    jr c, jr_008_4499                             ; $4487: $38 $10

    srl h                                         ; $4489: $cb $3c
    rr l                                          ; $448b: $cb $1d
    srl h                                         ; $448d: $cb $3c
    rr l                                          ; $448f: $cb $1d
    srl h                                         ; $4491: $cb $3c
    rr l                                          ; $4493: $cb $1d
    srl h                                         ; $4495: $cb $3c
    rr l                                          ; $4497: $cb $1d

jr_008_4499:
    srl h                                         ; $4499: $cb $3c
    rr l                                          ; $449b: $cb $1d
    pop de                                        ; $449d: $d1
    add hl, de                                    ; $449e: $19
    ld d, $00                                     ; $449f: $16 $00
    ld e, h                                       ; $44a1: $5c
    call Call_000_08ac                            ; $44a2: $cd $ac $08
    pop de                                        ; $44a5: $d1

jr_008_44a6:
    ld a, l                                       ; $44a6: $7d
    ld [de], a                                    ; $44a7: $12
    inc de                                        ; $44a8: $13
    ld a, h                                       ; $44a9: $7c
    ld [de], a                                    ; $44aa: $12

jr_008_44ab:
    rst $18                                       ; $44ab: $df
    jr c, jr_008_44be                             ; $44ac: $38 $10

    push hl                                       ; $44ae: $e5
    ld de, $e701                                  ; $44af: $11 $01 $e7
    add hl, de                                    ; $44b2: $19
    bit 7, h                                      ; $44b3: $cb $7c
    pop hl                                        ; $44b5: $e1
    jr nz, @+$21                                  ; $44b6: $20 $1f

    push hl                                       ; $44b8: $e5
    ld hl, $c96e                                  ; $44b9: $21 $6e $c9
    ld a, [hl+]                                   ; $44bc: $2a
    ld d, [hl]                                    ; $44bd: $56

jr_008_44be:
    ld e, a                                       ; $44be: $5f
    inc de                                        ; $44bf: $13
    pop hl                                        ; $44c0: $e1
    push hl                                       ; $44c1: $e5
    call Call_000_08ac                            ; $44c2: $cd $ac $08
    bit 7, h                                      ; $44c5: $cb $7c
    pop hl                                        ; $44c7: $e1
    jr nz, @+$0f                                  ; $44c8: $20 $0d

    ld de, $c96e                                  ; $44ca: $11 $6e $c9
    ld a, l                                       ; $44cd: $7d
    ld [de], a                                    ; $44ce: $12
    inc de                                        ; $44cf: $13
    ld a, h                                       ; $44d0: $7c
    ld [de], a                                    ; $44d1: $12
    ld a, $1d                                     ; $44d2: $3e $1d
    rst $18                                       ; $44d4: $df
    ld [$c93b], sp                                ; $44d5: $08 $3b $c9

Call_008_44d8:
    ld hl, $c975                                  ; $44d8: $21 $75 $c9
    ld a, [hl]                                    ; $44db: $7e
    cp $ff                                        ; $44dc: $fe $ff
    jr z, jr_008_44f1                             ; $44de: $28 $11

    inc [hl]                                      ; $44e0: $34
    inc hl                                        ; $44e1: $23
    push hl                                       ; $44e2: $e5
    ld a, [hl+]                                   ; $44e3: $2a
    ld h, [hl]                                    ; $44e4: $66
    ld l, a                                       ; $44e5: $6f
    ld a, [$c8a1]                                 ; $44e6: $fa $a1 $c8
    add l                                         ; $44e9: $85
    ld l, a                                       ; $44ea: $6f
    jr nc, jr_008_44ee                            ; $44eb: $30 $01

    inc h                                         ; $44ed: $24

jr_008_44ee:
    pop de                                        ; $44ee: $d1
    jr jr_008_4505                                ; $44ef: $18 $14

jr_008_44f1:
    inc hl                                        ; $44f1: $23
    push hl                                       ; $44f2: $e5
    ld a, [hl+]                                   ; $44f3: $2a
    ld h, [hl]                                    ; $44f4: $66
    ld l, a                                       ; $44f5: $6f
    ld a, [$c8a1]                                 ; $44f6: $fa $a1 $c8
    add l                                         ; $44f9: $85
    ld l, a                                       ; $44fa: $6f
    jr nc, jr_008_44fe                            ; $44fb: $30 $01

    inc h                                         ; $44fd: $24

jr_008_44fe:
    ld d, $00                                     ; $44fe: $16 $00
    ld e, h                                       ; $4500: $5c
    call Call_000_08ac                            ; $4501: $cd $ac $08
    pop de                                        ; $4504: $d1

jr_008_4505:
    ld a, l                                       ; $4505: $7d
    ld [de], a                                    ; $4506: $12
    inc de                                        ; $4507: $13
    ld a, h                                       ; $4508: $7c
    ld [de], a                                    ; $4509: $12
    ld a, [$d325]                                 ; $450a: $fa $25 $d3
    dec a                                         ; $450d: $3d
    ld b, a                                       ; $450e: $47
    ld a, [$c8a1]                                 ; $450f: $fa $a1 $c8
    ld c, a                                       ; $4512: $4f
    ld a, [$c8a0]                                 ; $4513: $fa $a0 $c8
    sub c                                         ; $4516: $91
    sub b                                         ; $4517: $90
    jr nc, jr_008_451e                            ; $4518: $30 $04

    ld b, $01                                     ; $451a: $06 $01
    jr jr_008_4520                                ; $451c: $18 $02

jr_008_451e:
    ld b, $00                                     ; $451e: $06 $00

jr_008_4520:
    ld hl, $c97a                                  ; $4520: $21 $7a $c9
    ld a, [hl]                                    ; $4523: $7e
    cp $ff                                        ; $4524: $fe $ff
    jr z, jr_008_452f                             ; $4526: $28 $07

    inc [hl]                                      ; $4528: $34
    inc hl                                        ; $4529: $23
    ld a, b                                       ; $452a: $78
    add [hl]                                      ; $452b: $86
    ld [hl], a                                    ; $452c: $77
    jr jr_008_4542                                ; $452d: $18 $13

jr_008_452f:
    inc hl                                        ; $452f: $23
    push hl                                       ; $4530: $e5
    ld a, b                                       ; $4531: $78
    add [hl]                                      ; $4532: $86
    ld l, a                                       ; $4533: $6f
    ld h, $00                                     ; $4534: $26 $00
    jr nc, jr_008_4539                            ; $4536: $30 $01

    inc h                                         ; $4538: $24

jr_008_4539:
    ld d, $00                                     ; $4539: $16 $00
    ld e, h                                       ; $453b: $5c
    call Call_000_08ac                            ; $453c: $cd $ac $08
    ld a, l                                       ; $453f: $7d
    pop hl                                        ; $4540: $e1
    ld [hl], a                                    ; $4541: $77

jr_008_4542:
    ld a, [$d325]                                 ; $4542: $fa $25 $d3
    inc a                                         ; $4545: $3c
    ld b, a                                       ; $4546: $47
    ld a, [$c8a0]                                 ; $4547: $fa $a0 $c8
    sub b                                         ; $454a: $90
    jr nc, jr_008_4551                            ; $454b: $30 $04

    ld b, $01                                     ; $454d: $06 $01
    jr jr_008_4553                                ; $454f: $18 $02

jr_008_4551:
    ld b, $00                                     ; $4551: $06 $00

jr_008_4553:
    ld hl, $c978                                  ; $4553: $21 $78 $c9
    ld a, [hl]                                    ; $4556: $7e
    cp $ff                                        ; $4557: $fe $ff
    jr z, jr_008_4562                             ; $4559: $28 $07

    inc [hl]                                      ; $455b: $34
    inc hl                                        ; $455c: $23
    ld a, b                                       ; $455d: $78
    add [hl]                                      ; $455e: $86
    ld [hl], a                                    ; $455f: $77
    jr jr_008_4575                                ; $4560: $18 $13

jr_008_4562:
    inc hl                                        ; $4562: $23
    push hl                                       ; $4563: $e5
    ld a, b                                       ; $4564: $78
    add [hl]                                      ; $4565: $86
    ld l, a                                       ; $4566: $6f
    ld h, $00                                     ; $4567: $26 $00
    jr nc, jr_008_456c                            ; $4569: $30 $01

    inc h                                         ; $456b: $24

jr_008_456c:
    ld d, $00                                     ; $456c: $16 $00
    ld e, h                                       ; $456e: $5c
    call Call_000_08ac                            ; $456f: $cd $ac $08
    ld a, l                                       ; $4572: $7d
    pop hl                                        ; $4573: $e1
    ld [hl], a                                    ; $4574: $77

jr_008_4575:
    ld a, [$c895]                                 ; $4575: $fa $95 $c8
    bit 0, a                                      ; $4578: $cb $47
    ret z                                         ; $457a: $c8

    ld hl, $c97c                                  ; $457b: $21 $7c $c9
    ld a, [hl]                                    ; $457e: $7e
    cp $ff                                        ; $457f: $fe $ff
    jr z, jr_008_458a                             ; $4581: $28 $07

    inc [hl]                                      ; $4583: $34
    inc hl                                        ; $4584: $23
    ld a, b                                       ; $4585: $78
    add [hl]                                      ; $4586: $86
    ld [hl], a                                    ; $4587: $77
    jr jr_008_459d                                ; $4588: $18 $13

jr_008_458a:
    inc hl                                        ; $458a: $23
    push hl                                       ; $458b: $e5
    ld a, b                                       ; $458c: $78
    add [hl]                                      ; $458d: $86
    ld l, a                                       ; $458e: $6f
    ld h, $00                                     ; $458f: $26 $00
    jr nc, jr_008_4594                            ; $4591: $30 $01

    inc h                                         ; $4593: $24

jr_008_4594:
    ld d, $00                                     ; $4594: $16 $00
    ld e, h                                       ; $4596: $5c
    call Call_000_08ac                            ; $4597: $cd $ac $08
    ld a, l                                       ; $459a: $7d
    pop hl                                        ; $459b: $e1
    ld [hl], a                                    ; $459c: $77

jr_008_459d:
    ret                                           ; $459d: $c9


Call_008_459e:
    call Call_008_43c5                            ; $459e: $cd $c5 $43
    ret nz                                        ; $45a1: $c0

    call Call_008_43d4                            ; $45a2: $cd $d4 $43
    push hl                                       ; $45a5: $e5
    ld a, $06                                     ; $45a6: $3e $06
    add l                                         ; $45a8: $85
    ld l, a                                       ; $45a9: $6f
    jr nc, jr_008_45ad                            ; $45aa: $30 $01

    inc h                                         ; $45ac: $24

jr_008_45ad:
    ld d, h                                       ; $45ad: $54
    ld e, l                                       ; $45ae: $5d
    ld hl, $c96e                                  ; $45af: $21 $6e $c9
    ld c, $01                                     ; $45b2: $0e $01
    call Call_000_03eb                            ; $45b4: $cd $eb $03
    pop bc                                        ; $45b7: $c1
    ld hl, $0000                                  ; $45b8: $21 $00 $00
    add hl, bc                                    ; $45bb: $09
    push hl                                       ; $45bc: $e5
    ld a, [hl+]                                   ; $45bd: $2a
    ld h, [hl]                                    ; $45be: $66
    ld l, a                                       ; $45bf: $6f
    inc hl                                        ; $45c0: $23
    call Call_008_4607                            ; $45c1: $cd $07 $46
    pop de                                        ; $45c4: $d1
    ld a, l                                       ; $45c5: $7d
    ld [de], a                                    ; $45c6: $12
    inc de                                        ; $45c7: $13
    ld a, h                                       ; $45c8: $7c
    ld [de], a                                    ; $45c9: $12
    ld a, [$c8be]                                 ; $45ca: $fa $be $c8
    add $36                                       ; $45cd: $c6 $36
    ld e, a                                       ; $45cf: $5f
    ld hl, $0002                                  ; $45d0: $21 $02 $00
    add hl, bc                                    ; $45d3: $09
    ld a, [hl]                                    ; $45d4: $7e
    or a                                          ; $45d5: $b7
    jr nz, jr_008_45d9                            ; $45d6: $20 $01

    dec a                                         ; $45d8: $3d

jr_008_45d9:
    cp e                                          ; $45d9: $bb
    jr c, jr_008_45dd                             ; $45da: $38 $01

    ld [hl], e                                    ; $45dc: $73

jr_008_45dd:
    ld hl, $0003                                  ; $45dd: $21 $03 $00
    add hl, bc                                    ; $45e0: $09
    ld a, [hl]                                    ; $45e1: $7e
    cp $ff                                        ; $45e2: $fe $ff
    jr z, jr_008_45f2                             ; $45e4: $28 $0c

    inc [hl]                                      ; $45e6: $34
    inc hl                                        ; $45e7: $23
    push hl                                       ; $45e8: $e5
    ld a, [hl+]                                   ; $45e9: $2a
    ld h, [hl]                                    ; $45ea: $66
    ld l, a                                       ; $45eb: $6f
    ld d, $00                                     ; $45ec: $16 $00
    add hl, de                                    ; $45ee: $19
    pop de                                        ; $45ef: $d1
    jr jr_008_4601                                ; $45f0: $18 $0f

jr_008_45f2:
    inc hl                                        ; $45f2: $23
    push hl                                       ; $45f3: $e5
    ld a, [hl+]                                   ; $45f4: $2a
    ld h, [hl]                                    ; $45f5: $66
    ld l, a                                       ; $45f6: $6f
    ld d, $00                                     ; $45f7: $16 $00
    add hl, de                                    ; $45f9: $19
    ld d, $00                                     ; $45fa: $16 $00
    ld e, h                                       ; $45fc: $5c
    call Call_000_08ac                            ; $45fd: $cd $ac $08
    pop de                                        ; $4600: $d1

jr_008_4601:
    ld a, l                                       ; $4601: $7d
    ld [de], a                                    ; $4602: $12
    inc de                                        ; $4603: $13
    ld a, h                                       ; $4604: $7c
    ld [de], a                                    ; $4605: $12
    ret                                           ; $4606: $c9


Call_008_4607:
    push de                                       ; $4607: $d5
    push hl                                       ; $4608: $e5
    ld de, $d8f0                                  ; $4609: $11 $f0 $d8
    add hl, de                                    ; $460c: $19
    bit 7, h                                      ; $460d: $cb $7c
    pop hl                                        ; $460f: $e1
    jr nz, jr_008_4615                            ; $4610: $20 $03

    ld hl, $270f                                  ; $4612: $21 $0f $27

jr_008_4615:
    pop de                                        ; $4615: $d1
    ret                                           ; $4616: $c9


Call_008_4617:
    xor a                                         ; $4617: $af
    ld [$c83b], a                                 ; $4618: $ea $3b $c8
    ret                                           ; $461b: $c9


Call_008_461c:
    ld a, [$c8d0]                                 ; $461c: $fa $d0 $c8
    cp $ff                                        ; $461f: $fe $ff
    jp z, Jump_008_4661                           ; $4621: $ca $61 $46

    ld a, [$c837]                                 ; $4624: $fa $37 $c8
    cp $01                                        ; $4627: $fe $01
    jr z, jr_008_465d                             ; $4629: $28 $32

    dec a                                         ; $462b: $3d
    dec a                                         ; $462c: $3d
    push af                                       ; $462d: $f5
    ld hl, $c8ac                                  ; $462e: $21 $ac $c8
    add l                                         ; $4631: $85
    ld l, a                                       ; $4632: $6f
    jr nc, jr_008_4636                            ; $4633: $30 $01

    inc h                                         ; $4635: $24

jr_008_4636:
    ld a, [hl]                                    ; $4636: $7e
    and $0f                                       ; $4637: $e6 $0f
    ld d, a                                       ; $4639: $57
    pop af                                        ; $463a: $f1
    ld hl, $c8ec                                  ; $463b: $21 $ec $c8
    add l                                         ; $463e: $85
    ld l, a                                       ; $463f: $6f
    jr nc, jr_008_4643                            ; $4640: $30 $01

    inc h                                         ; $4642: $24

jr_008_4643:
    ld a, [hl]                                    ; $4643: $7e
    and $0f                                       ; $4644: $e6 $0f
    cp d                                          ; $4646: $ba
    jr z, jr_008_4658                             ; $4647: $28 $0f

    jr c, jr_008_4651                             ; $4649: $38 $06

    xor a                                         ; $464b: $af
    ld [$c83b], a                                 ; $464c: $ea $3b $c8
    jr jr_008_465b                                ; $464f: $18 $0a

jr_008_4651:
    ld a, $01                                     ; $4651: $3e $01
    ld [$c83b], a                                 ; $4653: $ea $3b $c8
    jr jr_008_465b                                ; $4656: $18 $03

jr_008_4658:
    ld a, [$c83b]                                 ; $4658: $fa $3b $c8

jr_008_465b:
    xor $01                                       ; $465b: $ee $01

jr_008_465d:
    ld [$c835], a                                 ; $465d: $ea $35 $c8
    ret                                           ; $4660: $c9


Jump_008_4661:
    xor a                                         ; $4661: $af
    ld [$c835], a                                 ; $4662: $ea $35 $c8
    ret                                           ; $4665: $c9


    ld hl, $c0f4                                  ; $4666: $21 $f4 $c0
    ld a, [hl]                                    ; $4669: $7e
    push af                                       ; $466a: $f5
    or a                                          ; $466b: $b7
    jr z, jr_008_4670                             ; $466c: $28 $02

    ld [hl], $02                                  ; $466e: $36 $02

jr_008_4670:
    ld hl, $d438                                  ; $4670: $21 $38 $d4
    ld a, [hl]                                    ; $4673: $7e
    push af                                       ; $4674: $f5
    ld [hl], $00                                  ; $4675: $36 $00
    rst $08                                       ; $4677: $cf

    db $62

    call Call_000_2e3b                            ; $4679: $cd $3b $2e
    ldh a, [$96]                                  ; $467c: $f0 $96
    push af                                       ; $467e: $f5
    ld hl, $4695                                  ; $467f: $21 $95 $46
    call Call_008_470d                            ; $4682: $cd $0d $47
    ld b, a                                       ; $4685: $47
    pop af                                        ; $4686: $f1
    ldh [$96], a                                  ; $4687: $e0 $96
    ldh [rSVBK], a                                ; $4689: $e0 $70
    pop af                                        ; $468b: $f1
    ld [$d438], a                                 ; $468c: $ea $38 $d4
    pop af                                        ; $468f: $f1
    ld [$c0f4], a                                 ; $4690: $ea $f4 $c0
    ld a, b                                       ; $4693: $78
    ret                                           ; $4694: $c9


    nop                                           ; $4695: $00
    nop                                           ; $4696: $00
    or l                                          ; $4697: $b5
    ld b, [hl]                                    ; $4698: $46
    add $46                                       ; $4699: $c6 $46

    db $b5, $46

    rst $10                                       ; $469d: $d7
    ld b, [hl]                                    ; $469e: $46
    sbc $46                                       ; $469f: $de $46
    ld [c], a                                     ; $46a1: $e2
    ld b, [hl]                                    ; $46a2: $46
    rst $28                                       ; $46a3: $ef
    ld b, [hl]                                    ; $46a4: $46
    nop                                           ; $46a5: $00
    nop                                           ; $46a6: $00
    nop                                           ; $46a7: $00
    nop                                           ; $46a8: $00
    sbc $46                                       ; $46a9: $de $46
    sbc $46                                       ; $46ab: $de $46

    db $e2, $46

    nop                                           ; $46af: $00
    nop                                           ; $46b0: $00
    nop                                           ; $46b1: $00
    nop                                           ; $46b2: $00
    nop                                           ; $46b3: $00
    nop                                           ; $46b4: $00

    ld a, [$c33f]                                 ; $46b5: $fa $3f $c3
    or a                                          ; $46b8: $b7
    jr nz, jr_008_46c2                            ; $46b9: $20 $07

    rst $18                                       ; $46bb: $df

    db $0a, $41

    call Call_008_46f3                            ; $46be: $cd $f3 $46
    ret                                           ; $46c1: $c9


jr_008_46c2:
    rst $18                                       ; $46c2: $df
    ld b, $41                                     ; $46c3: $06 $41
    ret                                           ; $46c5: $c9


    ld a, [$c33f]                                 ; $46c6: $fa $3f $c3
    or a                                          ; $46c9: $b7
    jr nz, jr_008_46d3                            ; $46ca: $20 $07

    rst $18                                       ; $46cc: $df
    inc c                                         ; $46cd: $0c
    ld b, c                                       ; $46ce: $41
    call Call_008_46f3                            ; $46cf: $cd $f3 $46
    ret                                           ; $46d2: $c9


jr_008_46d3:
    rst $18                                       ; $46d3: $df
    ld b, $41                                     ; $46d4: $06 $41
    ret                                           ; $46d6: $c9


    rst $18                                       ; $46d7: $df
    ld c, $41                                     ; $46d8: $0e $41
    call Call_008_46f3                            ; $46da: $cd $f3 $46
    ret                                           ; $46dd: $c9


    rst $18                                       ; $46de: $df
    jr jr_008_4722                                ; $46df: $18 $41

    ret                                           ; $46e1: $c9


    rst $30                                       ; $46e2: $f7

    db $80, $0c

    jr z, jr_008_46eb                             ; $46e5: $28 $04

    rst $18                                       ; $46e7: $df

    db $10, $41

    ret                                           ; $46ea: $c9


jr_008_46eb:
    rst $18                                       ; $46eb: $df
    ld [de], a                                    ; $46ec: $12
    ld b, c                                       ; $46ed: $41
    ret                                           ; $46ee: $c9


    rst $18                                       ; $46ef: $df
    ld [de], a                                    ; $46f0: $12
    ld b, c                                       ; $46f1: $41
    ret                                           ; $46f2: $c9


Call_008_46f3:
    push af                                       ; $46f3: $f5
    ldh a, [$9e]                                  ; $46f4: $f0 $9e
    or a                                          ; $46f6: $b7
    jr z, jr_008_470b                             ; $46f7: $28 $12

    ldh a, [$90]                                  ; $46f9: $f0 $90
    bit 2, a                                      ; $46fb: $cb $57
    jr z, jr_008_4702                             ; $46fd: $28 $03

    rst $18                                       ; $46ff: $df
    jr nz, jr_008_4743                            ; $4700: $20 $41

jr_008_4702:
    ldh a, [$90]                                  ; $4702: $f0 $90
    bit 6, a                                      ; $4704: $cb $77
    jr z, jr_008_470b                             ; $4706: $28 $03

    rst $18                                       ; $4708: $df
    ld [bc], a                                    ; $4709: $02
    ld b, h                                       ; $470a: $44

jr_008_470b:
    pop af                                        ; $470b: $f1
    ret                                           ; $470c: $c9


Call_008_470d:
    ld a, [$c834]                                 ; $470d: $fa $34 $c8
    cp $10                                        ; $4710: $fe $10
    ret nc                                        ; $4712: $d0

    and $0f                                       ; $4713: $e6 $0f
    add a                                         ; $4715: $87
    add l                                         ; $4716: $85
    ld l, a                                       ; $4717: $6f
    jr nc, jr_008_471b                            ; $4718: $30 $01

    inc h                                         ; $471a: $24

jr_008_471b:
    ld a, [hl+]                                   ; $471b: $2a
    ld h, [hl]                                    ; $471c: $66
    ld l, a                                       ; $471d: $6f
    ld a, h                                       ; $471e: $7c
    or l                                          ; $471f: $b5
    ret z                                         ; $4720: $c8

    jp hl                                         ; $4721: $e9


jr_008_4722:
    push af                                       ; $4722: $f5
    push bc                                       ; $4723: $c5
    push de                                       ; $4724: $d5
    push hl                                       ; $4725: $e5
    ldh a, [$96]                                  ; $4726: $f0 $96
    push af                                       ; $4728: $f5
    ld a, $06                                     ; $4729: $3e $06
    ldh [$96], a                                  ; $472b: $e0 $96
    ldh [rSVBK], a                                ; $472d: $e0 $70
    ld hl, $473f                                  ; $472f: $21 $3f $47
    call Call_008_470d                            ; $4732: $cd $0d $47
    pop af                                        ; $4735: $f1
    ldh [$96], a                                  ; $4736: $e0 $96
    ldh [rSVBK], a                                ; $4738: $e0 $70
    pop hl                                        ; $473a: $e1
    pop de                                        ; $473b: $d1
    pop bc                                        ; $473c: $c1
    pop af                                        ; $473d: $f1

jr_008_473e:
    ret                                           ; $473e: $c9


    nop                                           ; $473f: $00
    nop                                           ; $4740: $00
    ld e, a                                       ; $4741: $5f
    ld b, a                                       ; $4742: $47

jr_008_4743:
    adc h                                         ; $4743: $8c
    ld b, a                                       ; $4744: $47

    db $a6, $47, $00, $00

    nop                                           ; $4749: $00
    nop                                           ; $474a: $00
    nop                                           ; $474b: $00
    nop                                           ; $474c: $00
    nop                                           ; $474d: $00
    nop                                           ; $474e: $00
    nop                                           ; $474f: $00
    nop                                           ; $4750: $00
    nop                                           ; $4751: $00
    nop                                           ; $4752: $00
    nop                                           ; $4753: $00
    nop                                           ; $4754: $00
    nop                                           ; $4755: $00
    nop                                           ; $4756: $00

    db $00, $00

    nop                                           ; $4759: $00
    nop                                           ; $475a: $00
    nop                                           ; $475b: $00

jr_008_475c:
    nop                                           ; $475c: $00
    nop                                           ; $475d: $00
    nop                                           ; $475e: $00
    rst $08                                       ; $475f: $cf
    jr c, jr_008_475c                             ; $4760: $38 $fa

    ld [hl], $c8                                  ; $4762: $36 $c8
    cp $05                                        ; $4764: $fe $05
    jr nz, jr_008_476b                            ; $4766: $20 $03

    rst $20                                       ; $4768: $e7
    ldh [rIF], a                                  ; $4769: $e0 $0f

jr_008_476b:
    call Call_008_43ee                            ; $476b: $cd $ee $43
    call Call_008_4617                            ; $476e: $cd $17 $46
    xor a                                         ; $4771: $af
    ld [$c4bd], a                                 ; $4772: $ea $bd $c4
    rst $18                                       ; $4775: $df
    ld b, $0e                                     ; $4776: $06 $0e
    ld a, $06                                     ; $4778: $3e $06
    ldh [$96], a                                  ; $477a: $e0 $96
    ldh [rSVBK], a                                ; $477c: $e0 $70
    ld hl, $d800                                  ; $477e: $21 $00 $d8
    rst $18                                       ; $4781: $df
    inc b                                         ; $4782: $04
    ld c, $ea                                     ; $4783: $0e $ea
    ld [hl], l                                    ; $4785: $75

Call_008_4786:
    ret z                                         ; $4786: $c8

    xor a                                         ; $4787: $af
    ld [$c96c], a                                 ; $4788: $ea $6c $c9
    ret                                           ; $478b: $c9


    rst $08                                       ; $478c: $cf
    jr c, jr_008_473e                             ; $478d: $38 $af

    ld [$c83a], a                                 ; $478f: $ea $3a $c8
    ld [$c83b], a                                 ; $4792: $ea $3b $c8
    ld hl, $c96e                                  ; $4795: $21 $6e $c9
    ld bc, $0012                                  ; $4798: $01 $12 $00
    call Call_000_039f                            ; $479b: $cd $9f $03
    call Call_008_4203                            ; $479e: $cd $03 $42
    xor a                                         ; $47a1: $af
    ld [$c96c], a                                 ; $47a2: $ea $6c $c9
    ret                                           ; $47a5: $c9


    rst $08                                       ; $47a6: $cf

    db $38

    call Call_008_4617                            ; $47a8: $cd $17 $46
    ld a, [$c8d0]                                 ; $47ab: $fa $d0 $c8
    cp $ff                                        ; $47ae: $fe $ff
    call nz, Call_008_4203                        ; $47b0: $c4 $03 $42
    ret                                           ; $47b3: $c9


    push af                                       ; $47b4: $f5
    push bc                                       ; $47b5: $c5
    push de                                       ; $47b6: $d5
    push hl                                       ; $47b7: $e5
    ldh a, [$96]                                  ; $47b8: $f0 $96
    push af                                       ; $47ba: $f5
    ld a, $06                                     ; $47bb: $3e $06
    ldh [$96], a                                  ; $47bd: $e0 $96
    ldh [rSVBK], a                                ; $47bf: $e0 $70
    ld hl, $47d1                                  ; $47c1: $21 $d1 $47
    call Call_008_470d                            ; $47c4: $cd $0d $47
    pop af                                        ; $47c7: $f1
    ldh [$96], a                                  ; $47c8: $e0 $96
    ldh [rSVBK], a                                ; $47ca: $e0 $70
    pop hl                                        ; $47cc: $e1
    pop de                                        ; $47cd: $d1
    pop bc                                        ; $47ce: $c1
    pop af                                        ; $47cf: $f1
    ret                                           ; $47d0: $c9


    nop                                           ; $47d1: $00
    nop                                           ; $47d2: $00
    pop af                                        ; $47d3: $f1
    ld b, a                                       ; $47d4: $47
    push af                                       ; $47d5: $f5
    ld b, a                                       ; $47d6: $47

    db $f9, $47, $00, $00

    nop                                           ; $47db: $00
    nop                                           ; $47dc: $00
    nop                                           ; $47dd: $00
    nop                                           ; $47de: $00
    nop                                           ; $47df: $00
    nop                                           ; $47e0: $00
    nop                                           ; $47e1: $00
    nop                                           ; $47e2: $00
    nop                                           ; $47e3: $00
    nop                                           ; $47e4: $00
    nop                                           ; $47e5: $00
    nop                                           ; $47e6: $00
    nop                                           ; $47e7: $00
    nop                                           ; $47e8: $00

    db $00, $00

    nop                                           ; $47eb: $00
    nop                                           ; $47ec: $00
    nop                                           ; $47ed: $00
    nop                                           ; $47ee: $00
    nop                                           ; $47ef: $00
    nop                                           ; $47f0: $00
    call Call_008_4ef4                            ; $47f1: $cd $f4 $4e
    ret                                           ; $47f4: $c9


    call Call_008_4ef4                            ; $47f5: $cd $f4 $4e
    ret                                           ; $47f8: $c9


    call Call_008_4ef4                            ; $47f9: $cd $f4 $4e
    ret                                           ; $47fc: $c9


    push af                                       ; $47fd: $f5
    push bc                                       ; $47fe: $c5
    push de                                       ; $47ff: $d5
    push hl                                       ; $4800: $e5
    ldh a, [$96]                                  ; $4801: $f0 $96
    push af                                       ; $4803: $f5
    ld a, $06                                     ; $4804: $3e $06
    ldh [$96], a                                  ; $4806: $e0 $96
    ldh [rSVBK], a                                ; $4808: $e0 $70
    ld hl, $481a                                  ; $480a: $21 $1a $48

Call_008_480d:
    call Call_008_470d                            ; $480d: $cd $0d $47
    pop af                                        ; $4810: $f1
    ldh [$96], a                                  ; $4811: $e0 $96
    ldh [rSVBK], a                                ; $4813: $e0 $70
    pop hl                                        ; $4815: $e1
    pop de                                        ; $4816: $d1
    pop bc                                        ; $4817: $c1
    pop af                                        ; $4818: $f1
    ret                                           ; $4819: $c9


    nop                                           ; $481a: $00
    nop                                           ; $481b: $00
    ld a, [hl-]                                   ; $481c: $3a
    ld c, b                                       ; $481d: $48
    ld b, a                                       ; $481e: $47
    ld c, b                                       ; $481f: $48

    db $3b, $48, $00, $00

    nop                                           ; $4824: $00
    nop                                           ; $4825: $00
    nop                                           ; $4826: $00
    nop                                           ; $4827: $00
    nop                                           ; $4828: $00
    nop                                           ; $4829: $00
    nop                                           ; $482a: $00
    nop                                           ; $482b: $00
    nop                                           ; $482c: $00
    nop                                           ; $482d: $00
    nop                                           ; $482e: $00
    nop                                           ; $482f: $00
    nop                                           ; $4830: $00
    nop                                           ; $4831: $00

    db $00, $00

    nop                                           ; $4834: $00
    nop                                           ; $4835: $00
    nop                                           ; $4836: $00
    nop                                           ; $4837: $00
    nop                                           ; $4838: $00
    nop                                           ; $4839: $00
    ret                                           ; $483a: $c9


    call Call_008_461c                            ; $483b: $cd $1c $46
    ld a, [$c8d0]                                 ; $483e: $fa $d0 $c8
    cp $ff                                        ; $4841: $fe $ff
    call nz, Call_008_420f                        ; $4843: $c4 $0f $42
    ret                                           ; $4846: $c9


    ld a, [$c83a]                                 ; $4847: $fa $3a $c8
    or a                                          ; $484a: $b7
    jr nz, jr_008_4854                            ; $484b: $20 $07

    ld a, [$c837]                                 ; $484d: $fa $37 $c8
    cp $01                                        ; $4850: $fe $01
    jr z, jr_008_4859                             ; $4852: $28 $05

jr_008_4854:
    ld a, [$c83b]                                 ; $4854: $fa $3b $c8
    xor $01                                       ; $4857: $ee $01

jr_008_4859:
    ld [$c835], a                                 ; $4859: $ea $35 $c8
    call Call_008_420f                            ; $485c: $cd $0f $42
    ld a, [$c83a]                                 ; $485f: $fa $3a $c8
    or a                                          ; $4862: $b7
    jr z, jr_008_486b                             ; $4863: $28 $06

    ld a, $1e                                     ; $4865: $3e $1e
    rst $18                                       ; $4867: $df
    ld [$c93b], sp                                ; $4868: $08 $3b $c9

jr_008_486b:
    call Call_008_4082                            ; $486b: $cd $82 $40
    dec a                                         ; $486e: $3d
    cp $02                                        ; $486f: $fe $02
    ret nc                                        ; $4871: $d0

    ld a, $01                                     ; $4872: $3e $01
    ld [$c832], a                                 ; $4874: $ea $32 $c8
    rst $18                                       ; $4877: $df
    db $10                                        ; $4878: $10
    ld [$263e], sp                                ; $4879: $08 $3e $26
    rst $18                                       ; $487c: $df
    ld [$c93b], sp                                ; $487d: $08 $3b $c9

    push af                                       ; $4880: $f5
    push bc                                       ; $4881: $c5
    push de                                       ; $4882: $d5
    push hl                                       ; $4883: $e5
    ldh a, [$96]                                  ; $4884: $f0 $96
    push af                                       ; $4886: $f5
    ld a, $06                                     ; $4887: $3e $06
    ldh [$96], a                                  ; $4889: $e0 $96
    ldh [rSVBK], a                                ; $488b: $e0 $70
    ld hl, $489d                                  ; $488d: $21 $9d $48
    call Call_008_470d                            ; $4890: $cd $0d $47
    pop af                                        ; $4893: $f1
    ldh [$96], a                                  ; $4894: $e0 $96
    ldh [rSVBK], a                                ; $4896: $e0 $70
    pop hl                                        ; $4898: $e1
    pop de                                        ; $4899: $d1
    pop bc                                        ; $489a: $c1
    pop af                                        ; $489b: $f1
    ret                                           ; $489c: $c9


    nop                                           ; $489d: $00
    nop                                           ; $489e: $00
    db $fd                                        ; $489f: $fd
    ld c, b                                       ; $48a0: $48
    cp l                                          ; $48a1: $bd
    ld c, b                                       ; $48a2: $48

    db $fd, $48, $eb, $48

    nop                                           ; $48a7: $00
    nop                                           ; $48a8: $00
    db $f4                                        ; $48a9: $f4
    ld c, b                                       ; $48aa: $48
    db $f4                                        ; $48ab: $f4
    ld c, b                                       ; $48ac: $48
    nop                                           ; $48ad: $00
    nop                                           ; $48ae: $00
    nop                                           ; $48af: $00
    nop                                           ; $48b0: $00
    db $fd                                        ; $48b1: $fd
    ld c, b                                       ; $48b2: $48
    nop                                           ; $48b3: $00
    nop                                           ; $48b4: $00

    db $f4, $48

    nop                                           ; $48b7: $00
    nop                                           ; $48b8: $00
    nop                                           ; $48b9: $00
    nop                                           ; $48ba: $00
    nop                                           ; $48bb: $00
    nop                                           ; $48bc: $00
    call Call_008_4f30                            ; $48bd: $cd $30 $4f
    call Call_008_40dd                            ; $48c0: $cd $dd $40
    or a                                          ; $48c3: $b7
    ret z                                         ; $48c4: $c8

    cp $01                                        ; $48c5: $fe $01
    jr nz, jr_008_48cf                            ; $48c7: $20 $06

    ld a, $1c                                     ; $48c9: $3e $1c
    rst $18                                       ; $48cb: $df
    ld [$c93b], sp                                ; $48cc: $08 $3b $c9

jr_008_48cf:
    cp $02                                        ; $48cf: $fe $02
    jr nz, jr_008_48df                            ; $48d1: $20 $0c

    ld a, [$d4cd]                                 ; $48d3: $fa $cd $d4
    cp $06                                        ; $48d6: $fe $06
    ret nz                                        ; $48d8: $c0

    ld a, $1a                                     ; $48d9: $3e $1a
    rst $18                                       ; $48db: $df
    ld [$c93b], sp                                ; $48dc: $08 $3b $c9

jr_008_48df:
    ld a, [$d4cd]                                 ; $48df: $fa $cd $d4
    cp $06                                        ; $48e2: $fe $06
    ret nz                                        ; $48e4: $c0

    ld a, $1a                                     ; $48e5: $3e $1a
    rst $18                                       ; $48e7: $df
    ld [$c93b], sp                                ; $48e8: $08 $3b $c9

    call Call_008_4f30                            ; $48eb: $cd $30 $4f
    ld a, $0f                                     ; $48ee: $3e $0f
    ld [$c8a8], a                                 ; $48f0: $ea $a8 $c8
    ret                                           ; $48f3: $c9


    call Call_008_5062                            ; $48f4: $cd $62 $50
    ld a, $0f                                     ; $48f7: $3e $0f
    ld [$c8a8], a                                 ; $48f9: $ea $a8 $c8
    ret                                           ; $48fc: $c9


    call Call_008_4f30                            ; $48fd: $cd $30 $4f
    ret                                           ; $4900: $c9


    push af                                       ; $4901: $f5
    push bc                                       ; $4902: $c5
    push de                                       ; $4903: $d5
    push hl                                       ; $4904: $e5
    ldh a, [$96]                                  ; $4905: $f0 $96
    push af                                       ; $4907: $f5
    ld a, $06                                     ; $4908: $3e $06
    ldh [$96], a                                  ; $490a: $e0 $96
    ldh [rSVBK], a                                ; $490c: $e0 $70
    ld hl, $491e                                  ; $490e: $21 $1e $49
    call Call_008_470d                            ; $4911: $cd $0d $47
    pop af                                        ; $4914: $f1
    ldh [$96], a                                  ; $4915: $e0 $96
    ldh [rSVBK], a                                ; $4917: $e0 $70
    pop hl                                        ; $4919: $e1
    pop de                                        ; $491a: $d1
    pop bc                                        ; $491b: $c1
    pop af                                        ; $491c: $f1
    ret                                           ; $491d: $c9


    db $00, $00

    ld a, $49                                     ; $4920: $3e $49
    ld c, e                                       ; $4922: $4b
    ld c, c                                       ; $4923: $49

    db $42, $49, $39, $4a

    nop                                           ; $4928: $00
    nop                                           ; $4929: $00
    nop                                           ; $492a: $00
    nop                                           ; $492b: $00
    nop                                           ; $492c: $00
    nop                                           ; $492d: $00
    nop                                           ; $492e: $00
    nop                                           ; $492f: $00
    nop                                           ; $4930: $00
    nop                                           ; $4931: $00
    nop                                           ; $4932: $00
    nop                                           ; $4933: $00
    nop                                           ; $4934: $00
    nop                                           ; $4935: $00

    db $00, $00

    nop                                           ; $4938: $00
    nop                                           ; $4939: $00
    nop                                           ; $493a: $00
    nop                                           ; $493b: $00
    nop                                           ; $493c: $00
    nop                                           ; $493d: $00
    call Call_008_441a                            ; $493e: $cd $1a $44
    ret                                           ; $4941: $c9


    ld a, [$c8d0]                                 ; $4942: $fa $d0 $c8
    cp $ff                                        ; $4945: $fe $ff
    call nz, Call_008_4250                        ; $4947: $c4 $50 $42
    ret                                           ; $494a: $c9


    call Call_008_4250                            ; $494b: $cd $50 $42
    ld hl, $d48e                                  ; $494e: $21 $8e $d4
    bit 7, [hl]                                   ; $4951: $cb $7e
    jr z, jr_008_4973                             ; $4953: $28 $1e

    ld a, [$c835]                                 ; $4955: $fa $35 $c8
    push af                                       ; $4958: $f5
    xor $01                                       ; $4959: $ee $01
    ld [$c835], a                                 ; $495b: $ea $35 $c8
    ld a, $2a                                     ; $495e: $3e $2a
    call Call_008_4028                            ; $4960: $cd $28 $40
    ld a, [hl]                                    ; $4963: $7e
    or a                                          ; $4964: $b7
    jr nz, jr_008_496f                            ; $4965: $20 $08

    ld [hl], $01                                  ; $4967: $36 $01
    ld a, $20                                     ; $4969: $3e $20
    call Call_008_4028                            ; $496b: $cd $28 $40
    inc [hl]                                      ; $496e: $34

jr_008_496f:
    pop af                                        ; $496f: $f1
    ld [$c835], a                                 ; $4970: $ea $35 $c8

jr_008_4973:
    call Call_008_4161                            ; $4973: $cd $61 $41
    or a                                          ; $4976: $b7
    ret z                                         ; $4977: $c8

    push af                                       ; $4978: $f5
    call Call_008_40d5                            ; $4979: $cd $d5 $40
    pop af                                        ; $497c: $f1
    push bc                                       ; $497d: $c5
    push af                                       ; $497e: $f5
    ld a, [$c837]                                 ; $497f: $fa $37 $c8
    dec a                                         ; $4982: $3d
    cp $12                                        ; $4983: $fe $12
    jr c, jr_008_4989                             ; $4985: $38 $02

    ld a, $11                                     ; $4987: $3e $11

jr_008_4989:
    ld hl, $c96e                                  ; $4989: $21 $6e $c9
    add l                                         ; $498c: $85
    ld l, a                                       ; $498d: $6f
    jr nc, jr_008_4991                            ; $498e: $30 $01

    inc h                                         ; $4990: $24

jr_008_4991:
    pop af                                        ; $4991: $f1
    push af                                       ; $4992: $f5
    cp $01                                        ; $4993: $fe $01
    jr nz, jr_008_49c8                            ; $4995: $20 $31

    ld d, a                                       ; $4997: $57
    ld a, [$c83a]                                 ; $4998: $fa $3a $c8
    or a                                          ; $499b: $b7
    jr nz, jr_008_499f                            ; $499c: $20 $01

    ld [hl], d                                    ; $499e: $72

jr_008_499f:
    rst $18                                       ; $499f: $df
    ld [hl], $10                                  ; $49a0: $36 $10
    ld a, [$c835]                                 ; $49a2: $fa $35 $c8
    push af                                       ; $49a5: $f5
    ld a, $01                                     ; $49a6: $3e $01
    ld [$c835], a                                 ; $49a8: $ea $35 $c8
    ld a, [$c8a0]                                 ; $49ab: $fa $a0 $c8
    inc a                                         ; $49ae: $3c
    ld [$c8e0], a                                 ; $49af: $ea $e0 $c8
    rst $18                                       ; $49b2: $df
    ld [hl], $10                                  ; $49b3: $36 $10
    pop af                                        ; $49b5: $f1
    ld [$c835], a                                 ; $49b6: $ea $35 $c8
    ld a, [$c893]                                 ; $49b9: $fa $93 $c8
    cp $03                                        ; $49bc: $fe $03
    jr z, jr_008_49c4                             ; $49be: $28 $04

    rst $08                                       ; $49c0: $cf
    jr nz, jr_008_49db                            ; $49c1: $20 $18

    ld [bc], a                                    ; $49c3: $02

jr_008_49c4:
    rst $08                                       ; $49c4: $cf
    ld hl, $6018                                  ; $49c5: $21 $18 $60

jr_008_49c8:
    cp $02                                        ; $49c8: $fe $02
    jr nz, jr_008_49fc                            ; $49ca: $20 $30

    ld d, a                                       ; $49cc: $57
    ld a, [$c83a]                                 ; $49cd: $fa $3a $c8
    or a                                          ; $49d0: $b7
    jr nz, jr_008_49d4                            ; $49d1: $20 $01

    ld [hl], d                                    ; $49d3: $72

jr_008_49d4:
    rst $18                                       ; $49d4: $df
    ld [hl], $10                                  ; $49d5: $36 $10
    ld a, [$c835]                                 ; $49d7: $fa $35 $c8
    push af                                       ; $49da: $f5

jr_008_49db:
    xor a                                         ; $49db: $af
    ld [$c835], a                                 ; $49dc: $ea $35 $c8
    ld a, [$c8e0]                                 ; $49df: $fa $e0 $c8
    inc a                                         ; $49e2: $3c
    ld [$c8a0], a                                 ; $49e3: $ea $a0 $c8
    rst $18                                       ; $49e6: $df
    ld [hl], $10                                  ; $49e7: $36 $10
    pop af                                        ; $49e9: $f1
    ld [$c835], a                                 ; $49ea: $ea $35 $c8
    ld a, [$c893]                                 ; $49ed: $fa $93 $c8
    cp $03                                        ; $49f0: $fe $03
    jr z, jr_008_49f8                             ; $49f2: $28 $04

    rst $08                                       ; $49f4: $cf
    ld hl, $0218                                  ; $49f5: $21 $18 $02

jr_008_49f8:
    rst $08                                       ; $49f8: $cf
    jr nz, @+$1a                                  ; $49f9: $20 $18

    inc l                                         ; $49fb: $2c

jr_008_49fc:
    ld a, [$c83a]                                 ; $49fc: $fa $3a $c8
    or a                                          ; $49ff: $b7
    jr nz, jr_008_4a04                            ; $4a00: $20 $02

    ld [hl], $00                                  ; $4a02: $36 $00

jr_008_4a04:
    rst $18                                       ; $4a04: $df
    ld [hl], $10                                  ; $4a05: $36 $10
    ld a, [$c835]                                 ; $4a07: $fa $35 $c8
    ld b, a                                       ; $4a0a: $47
    ld a, $20                                     ; $4a0b: $3e $20
    call Call_008_4028                            ; $4a0d: $cd $28 $40
    ld c, [hl]                                    ; $4a10: $4e
    ld a, b                                       ; $4a11: $78
    xor $01                                       ; $4a12: $ee $01
    ld [$c835], a                                 ; $4a14: $ea $35 $c8
    ld a, $20                                     ; $4a17: $3e $20
    call Call_008_4028                            ; $4a19: $cd $28 $40
    ld [hl], c                                    ; $4a1c: $71
    push bc                                       ; $4a1d: $c5
    rst $18                                       ; $4a1e: $df
    ld [hl], $10                                  ; $4a1f: $36 $10
    pop bc                                        ; $4a21: $c1
    ld a, b                                       ; $4a22: $78
    ld [$c835], a                                 ; $4a23: $ea $35 $c8
    rst $08                                       ; $4a26: $cf
    ld [hl+], a                                   ; $4a27: $22
    pop bc                                        ; $4a28: $c1
    ld a, $01                                     ; $4a29: $3e $01
    ld [$c8aa], a                                 ; $4a2b: $ea $aa $c8
    ld [$c8ea], a                                 ; $4a2e: $ea $ea $c8
    pop bc                                        ; $4a31: $c1
    ld a, c                                       ; $4a32: $79
    or a                                          ; $4a33: $b7
    ret z                                         ; $4a34: $c8

    ld [$c96c], a                                 ; $4a35: $ea $6c $c9
    ret                                           ; $4a38: $c9


    rst $18                                       ; $4a39: $df

    db $2a, $10

    rst $18                                       ; $4a3c: $df

    db $0c, $11

    ld a, [$c8aa]                                 ; $4a3f: $fa $aa $c8
    or a                                          ; $4a42: $b7
    jr z, jr_008_4a4a                             ; $4a43: $28 $05

    rst $18                                       ; $4a45: $df
    ld d, $41                                     ; $4a46: $16 $41
    jr jr_008_4a5a                                ; $4a48: $18 $10

jr_008_4a4a:
    ld a, [$d443]                                 ; $4a4a: $fa $43 $d4
    cp $02                                        ; $4a4d: $fe $02
    jr nz, jr_008_4a51                            ; $4a4f: $20 $00

jr_008_4a51:
    call Call_000_2e3b                            ; $4a51: $cd $3b $2e
    rst $18                                       ; $4a54: $df

    db $0c, $11

    rst $18                                       ; $4a57: $df

    db $14, $41

jr_008_4a5a:
    cp $02                                        ; $4a5a: $fe $02
    jr nz, jr_008_4a65                            ; $4a5c: $20 $07

    call Call_008_4aa3                            ; $4a5e: $cd $a3 $4a
    rst $18                                       ; $4a61: $df

    db $10, $12

    ret                                           ; $4a64: $c9


jr_008_4a65:
    cp $03                                        ; $4a65: $fe $03
    jr nz, jr_008_4a77                            ; $4a67: $20 $0e

    ld hl, $c8aa                                  ; $4a69: $21 $aa $c8
    ld [hl], $01                                  ; $4a6c: $36 $01
    ld hl, $c837                                  ; $4a6e: $21 $37 $c8
    dec [hl]                                      ; $4a71: $35
    ld hl, $c839                                  ; $4a72: $21 $39 $c8
    inc [hl]                                      ; $4a75: $34
    ret                                           ; $4a76: $c9


jr_008_4a77:
    cp $04                                        ; $4a77: $fe $04
    jr nz, jr_008_4a8b                            ; $4a79: $20 $10

    ld hl, $c8aa                                  ; $4a7b: $21 $aa $c8
    ld [hl], $01                                  ; $4a7e: $36 $01
    ld hl, $c839                                  ; $4a80: $21 $39 $c8
    ld [hl], $01                                  ; $4a83: $36 $01
    ld a, $01                                     ; $4a85: $3e $01
    ld [$c96c], a                                 ; $4a87: $ea $6c $c9
    ret                                           ; $4a8a: $c9


jr_008_4a8b:
    cp $05                                        ; $4a8b: $fe $05
    jr nz, jr_008_4a9e                            ; $4a8d: $20 $0f

    ld hl, $c8aa                                  ; $4a8f: $21 $aa $c8
    ld [hl], $01                                  ; $4a92: $36 $01
    ld hl, $c839                                  ; $4a94: $21 $39 $c8
    ld [hl], $01                                  ; $4a97: $36 $01
    xor a                                         ; $4a99: $af
    ld [$c96c], a                                 ; $4a9a: $ea $6c $c9
    ret                                           ; $4a9d: $c9


jr_008_4a9e:
    xor a                                         ; $4a9e: $af
    ld [$c96c], a                                 ; $4a9f: $ea $6c $c9
    ret                                           ; $4aa2: $c9


Call_008_4aa3:
    ld hl, $c8aa                                  ; $4aa3: $21 $aa $c8
    ld [hl], $00                                  ; $4aa6: $36 $00
    rst $18                                       ; $4aa8: $df

    db $64, $02

    ld hl, $c8a2                                  ; $4aab: $21 $a2 $c8
    ld de, $d400                                  ; $4aae: $11 $00 $d4
    ld a, [de]                                    ; $4ab1: $1a
    ld [hl+], a                                   ; $4ab2: $22
    inc de                                        ; $4ab3: $13
    ld a, [de]                                    ; $4ab4: $1a
    ld [hl+], a                                   ; $4ab5: $22
    inc de                                        ; $4ab6: $13
    ld a, [de]                                    ; $4ab7: $1a
    ld [hl+], a                                   ; $4ab8: $22
    inc de                                        ; $4ab9: $13
    ld a, [de]                                    ; $4aba: $1a
    ld [hl+], a                                   ; $4abb: $22
    inc de                                        ; $4abc: $13
    ld a, [de]                                    ; $4abd: $1a
    ld [hl+], a                                   ; $4abe: $22
    inc de                                        ; $4abf: $13
    ld a, [de]                                    ; $4ac0: $1a
    ld [hl], a                                    ; $4ac1: $77
    ld hl, $d4e7                                  ; $4ac2: $21 $e7 $d4
    ld [hl], $01                                  ; $4ac5: $36 $01
    inc hl                                        ; $4ac7: $23
    ld a, [$d329]                                 ; $4ac8: $fa $29 $d3
    ld [hl+], a                                   ; $4acb: $22
    push hl                                       ; $4acc: $e5
    ld hl, $d369                                  ; $4acd: $21 $69 $d3
    ld a, [hl+]                                   ; $4ad0: $2a
    ld h, [hl]                                    ; $4ad1: $66
    ld l, a                                       ; $4ad2: $6f
    pop de                                        ; $4ad3: $d1
    ld a, l                                       ; $4ad4: $7d
    ld [de], a                                    ; $4ad5: $12
    inc de                                        ; $4ad6: $13
    ld a, h                                       ; $4ad7: $7c
    ld [de], a                                    ; $4ad8: $12
    inc de                                        ; $4ad9: $13
    ld a, [$d35d]                                 ; $4ada: $fa $5d $d3
    ld [de], a                                    ; $4add: $12
    inc de                                        ; $4ade: $13
    ld a, [$d35e]                                 ; $4adf: $fa $5e $d3
    ld [de], a                                    ; $4ae2: $12
    ld a, [$d447]                                 ; $4ae3: $fa $47 $d4
    ld [$c8bf], a                                 ; $4ae6: $ea $bf $c8
    ld a, [$d35a]                                 ; $4ae9: $fa $5a $d3
    ld [$c8a0], a                                 ; $4aec: $ea $a0 $c8
    ld a, [$d35b]                                 ; $4aef: $fa $5b $d3
    ld [$c8a1], a                                 ; $4af2: $ea $a1 $c8
    ld a, [$d359]                                 ; $4af5: $fa $59 $d3
    ld [$c8a9], a                                 ; $4af8: $ea $a9 $c8
    ld a, [$d35c]                                 ; $4afb: $fa $5c $d3
    ld [$c8ab], a                                 ; $4afe: $ea $ab $c8
    ret                                           ; $4b01: $c9


    push af                                       ; $4b02: $f5
    push bc                                       ; $4b03: $c5
    push de                                       ; $4b04: $d5
    push hl                                       ; $4b05: $e5
    ldh a, [$96]                                  ; $4b06: $f0 $96
    push af                                       ; $4b08: $f5
    ld a, $06                                     ; $4b09: $3e $06
    ldh [$96], a                                  ; $4b0b: $e0 $96
    ldh [rSVBK], a                                ; $4b0d: $e0 $70
    ld hl, $4b1f                                  ; $4b0f: $21 $1f $4b
    call Call_008_470d                            ; $4b12: $cd $0d $47
    pop af                                        ; $4b15: $f1
    ldh [$96], a                                  ; $4b16: $e0 $96
    ldh [rSVBK], a                                ; $4b18: $e0 $70
    pop hl                                        ; $4b1a: $e1
    pop de                                        ; $4b1b: $d1
    pop bc                                        ; $4b1c: $c1
    pop af                                        ; $4b1d: $f1
    ret                                           ; $4b1e: $c9


    db $00, $00

    ccf                                           ; $4b21: $3f
    ld c, e                                       ; $4b22: $4b
    ld h, h                                       ; $4b23: $64
    ld c, e                                       ; $4b24: $4b

    db $93, $4b

    nop                                           ; $4b27: $00
    nop                                           ; $4b28: $00
    nop                                           ; $4b29: $00
    nop                                           ; $4b2a: $00
    nop                                           ; $4b2b: $00
    nop                                           ; $4b2c: $00
    nop                                           ; $4b2d: $00
    nop                                           ; $4b2e: $00
    nop                                           ; $4b2f: $00
    nop                                           ; $4b30: $00
    nop                                           ; $4b31: $00
    nop                                           ; $4b32: $00
    nop                                           ; $4b33: $00
    nop                                           ; $4b34: $00
    nop                                           ; $4b35: $00
    nop                                           ; $4b36: $00
    nop                                           ; $4b37: $00
    nop                                           ; $4b38: $00
    nop                                           ; $4b39: $00
    nop                                           ; $4b3a: $00
    nop                                           ; $4b3b: $00
    nop                                           ; $4b3c: $00
    nop                                           ; $4b3d: $00
    nop                                           ; $4b3e: $00
    xor a                                         ; $4b3f: $af
    ld [$c4bd], a                                 ; $4b40: $ea $bd $c4
    rst $18                                       ; $4b43: $df
    ld b, $0e                                     ; $4b44: $06 $0e
    ld a, $06                                     ; $4b46: $3e $06
    ldh [$96], a                                  ; $4b48: $e0 $96
    ldh [rSVBK], a                                ; $4b4a: $e0 $70
    ld hl, $d800                                  ; $4b4c: $21 $00 $d8
    rst $18                                       ; $4b4f: $df
    inc b                                         ; $4b50: $04
    ld c, $ea                                     ; $4b51: $0e $ea
    ld [hl], l                                    ; $4b53: $75
    ret z                                         ; $4b54: $c8

    call Call_008_44d8                            ; $4b55: $cd $d8 $44
    ld a, $01                                     ; $4b58: $3e $01
    ld [$c4bd], a                                 ; $4b5a: $ea $bd $c4
    rst $18                                       ; $4b5d: $df
    nop                                           ; $4b5e: $00
    ld c, $cd                                     ; $4b5f: $0e $cd
    ld [hl], l                                    ; $4b61: $75
    ld c, a                                       ; $4b62: $4f
    ret                                           ; $4b63: $c9


    call Call_008_432f                            ; $4b64: $cd $2f $43
    ld a, $01                                     ; $4b67: $3e $01
    ld [$c4bd], a                                 ; $4b69: $ea $bd $c4
    rst $18                                       ; $4b6c: $df
    inc b                                         ; $4b6d: $04
    ld a, $fa                                     ; $4b6e: $3e $fa
    ld l, h                                       ; $4b70: $6c
    ret                                           ; $4b71: $c9


    or a                                          ; $4b72: $b7
    jr nz, jr_008_4b8d                            ; $4b73: $20 $18

    ld a, [$c839]                                 ; $4b75: $fa $39 $c8
    cp $02                                        ; $4b78: $fe $02
    jr nc, jr_008_4b86                            ; $4b7a: $30 $0a

    ld a, $01                                     ; $4b7c: $3e $01
    ld [$c83a], a                                 ; $4b7e: $ea $3a $c8
    ld a, $02                                     ; $4b81: $3e $02
    ld [$c839], a                                 ; $4b83: $ea $39 $c8

jr_008_4b86:
    call Call_008_4f75                            ; $4b86: $cd $75 $4f
    call Call_008_4baa                            ; $4b89: $cd $aa $4b
    ret                                           ; $4b8c: $c9


jr_008_4b8d:
    ld a, $01                                     ; $4b8d: $3e $01
    ld [$c839], a                                 ; $4b8f: $ea $39 $c8
    ret                                           ; $4b92: $c9


    ld a, [$c8d0]                                 ; $4b93: $fa $d0 $c8
    cp $ff                                        ; $4b96: $fe $ff
    call nz, Call_008_432f                        ; $4b98: $c4 $2f $43
    ld a, $01                                     ; $4b9b: $3e $01
    ld [$c4bd], a                                 ; $4b9d: $ea $bd $c4
    rst $18                                       ; $4ba0: $df

    db $00, $0e

    call Call_008_4f75                            ; $4ba3: $cd $75 $4f
    call Call_008_4baa                            ; $4ba6: $cd $aa $4b
    ret                                           ; $4ba9: $c9


Call_008_4baa:
    ld a, [$c837]                                 ; $4baa: $fa $37 $c8
    cp $11                                        ; $4bad: $fe $11
    ret c                                         ; $4baf: $d8

    ld a, [$c8d0]                                 ; $4bb0: $fa $d0 $c8
    cp $ff                                        ; $4bb3: $fe $ff
    ret z                                         ; $4bb5: $c8

    ld a, $01                                     ; $4bb6: $3e $01
    ld [$c832], a                                 ; $4bb8: $ea $32 $c8
    ret                                           ; $4bbb: $c9


    push af                                       ; $4bbc: $f5
    push bc                                       ; $4bbd: $c5
    push de                                       ; $4bbe: $d5
    push hl                                       ; $4bbf: $e5
    ldh a, [$96]                                  ; $4bc0: $f0 $96
    push af                                       ; $4bc2: $f5
    ld a, $06                                     ; $4bc3: $3e $06
    ldh [$96], a                                  ; $4bc5: $e0 $96
    ldh [rSVBK], a                                ; $4bc7: $e0 $70
    ld hl, $4bd9                                  ; $4bc9: $21 $d9 $4b
    call Call_008_470d                            ; $4bcc: $cd $0d $47
    pop af                                        ; $4bcf: $f1
    ldh [$96], a                                  ; $4bd0: $e0 $96
    ldh [rSVBK], a                                ; $4bd2: $e0 $70
    pop hl                                        ; $4bd4: $e1
    pop de                                        ; $4bd5: $d1
    pop bc                                        ; $4bd6: $c1
    pop af                                        ; $4bd7: $f1
    ret                                           ; $4bd8: $c9


    db $00, $00

    ld sp, hl                                     ; $4bdb: $f9
    ld c, e                                       ; $4bdc: $4b
    ld a, l                                       ; $4bdd: $7d
    ld c, l                                       ; $4bde: $4d
    cp a                                          ; $4bdf: $bf
    ld c, [hl]                                    ; $4be0: $4e
    ld a, [c]                                     ; $4be1: $f2
    ld c, [hl]                                    ; $4be2: $4e
    di                                            ; $4be3: $f3
    ld c, [hl]                                    ; $4be4: $4e
    nop                                           ; $4be5: $00
    nop                                           ; $4be6: $00
    nop                                           ; $4be7: $00
    nop                                           ; $4be8: $00
    nop                                           ; $4be9: $00
    nop                                           ; $4bea: $00
    nop                                           ; $4beb: $00
    nop                                           ; $4bec: $00
    di                                            ; $4bed: $f3
    ld c, [hl]                                    ; $4bee: $4e
    di                                            ; $4bef: $f3
    ld c, [hl]                                    ; $4bf0: $4e
    nop                                           ; $4bf1: $00
    nop                                           ; $4bf2: $00
    nop                                           ; $4bf3: $00
    nop                                           ; $4bf4: $00
    nop                                           ; $4bf5: $00
    nop                                           ; $4bf6: $00
    nop                                           ; $4bf7: $00
    nop                                           ; $4bf8: $00
    call Call_008_459e                            ; $4bf9: $cd $9e $45
    ld a, $12                                     ; $4bfc: $3e $12
    ld [$c837], a                                 ; $4bfe: $ea $37 $c8
    ld a, $02                                     ; $4c01: $3e $02
    ld [$c4bd], a                                 ; $4c03: $ea $bd $c4
    rst $18                                       ; $4c06: $df
    ld b, $0e                                     ; $4c07: $06 $0e
    ld a, $06                                     ; $4c09: $3e $06
    ldh [$96], a                                  ; $4c0b: $e0 $96
    ldh [rSVBK], a                                ; $4c0d: $e0 $70
    ld hl, $d800                                  ; $4c0f: $21 $00 $d8
    rst $18                                       ; $4c12: $df
    inc b                                         ; $4c13: $04
    ld c, $57                                     ; $4c14: $0e $57
    inc a                                         ; $4c16: $3c
    ld [$c96c], a                                 ; $4c17: $ea $6c $c9
    ld a, $01                                     ; $4c1a: $3e $01
    rst $18                                       ; $4c1c: $df
    jr jr_008_4c2a                                ; $4c1d: $18 $0b

    ld a, [$c96c]                                 ; $4c1f: $fa $6c $c9
    cp $04                                        ; $4c22: $fe $04
    jp nc, Jump_008_4d0e                          ; $4c24: $d2 $0e $4d

    ld l, $14                                     ; $4c27: $2e $14
    add l                                         ; $4c29: $85

jr_008_4c2a:
    ld l, a                                       ; $4c2a: $6f
    ld a, [$c836]                                 ; $4c2b: $fa $36 $c8
    ld h, a                                       ; $4c2e: $67
    push af                                       ; $4c2f: $f5
    rst $18                                       ; $4c30: $df
    ld c, h                                       ; $4c31: $4c
    ld [bc], a                                    ; $4c32: $02
    jr nz, jr_008_4c3b                            ; $4c33: $20 $06

    rst $18                                       ; $4c35: $df
    ld c, d                                       ; $4c36: $4a
    ld [bc], a                                    ; $4c37: $02
    call Call_008_4d18                            ; $4c38: $cd $18 $4d

jr_008_4c3b:
    pop af                                        ; $4c3b: $f1
    push af                                       ; $4c3c: $f5
    ld b, a                                       ; $4c3d: $47
    ld a, [$c960]                                 ; $4c3e: $fa $60 $c9
    cp $00                                        ; $4c41: $fe $00
    jp nz, Jump_008_4cae                          ; $4c43: $c2 $ae $4c

    ld a, b                                       ; $4c46: $78
    and $0f                                       ; $4c47: $e6 $0f
    add a                                         ; $4c49: $87
    add a                                         ; $4c4a: $87
    ld hl, $4c6e                                  ; $4c4b: $21 $6e $4c
    add l                                         ; $4c4e: $85
    ld l, a                                       ; $4c4f: $6f
    jr nc, jr_008_4c53                            ; $4c50: $30 $01

    inc h                                         ; $4c52: $24

jr_008_4c53:
    ld a, [hl]                                    ; $4c53: $7e
    or a                                          ; $4c54: $b7
    jr z, jr_008_4cae                             ; $4c55: $28 $57

    ld [$c960], a                                 ; $4c57: $ea $60 $c9
    ld a, [$c96c]                                 ; $4c5a: $fa $6c $c9
    add l                                         ; $4c5d: $85
    ld l, a                                       ; $4c5e: $6f
    jr nc, jr_008_4c62                            ; $4c5f: $30 $01

    inc h                                         ; $4c61: $24

jr_008_4c62:
    ld a, [hl]                                    ; $4c62: $7e
    ld [$c961], a                                 ; $4c63: $ea $61 $c9
    ld a, $32                                     ; $4c66: $3e $32
    ld [$c967], a                                 ; $4c68: $ea $67 $c9
    jp Jump_008_4cae                              ; $4c6b: $c3 $ae $4c


    nop                                           ; $4c6e: $00
    ld bc, $0101                                  ; $4c6f: $01 $01 $01
    jr jr_008_4c76                                ; $4c72: $18 $02

    inc bc                                        ; $4c74: $03
    inc b                                         ; $4c75: $04

jr_008_4c76:
    add hl, de                                    ; $4c76: $19
    ld [bc], a                                    ; $4c77: $02
    inc bc                                        ; $4c78: $03
    inc b                                         ; $4c79: $04
    ld a, [de]                                    ; $4c7a: $1a
    ld [bc], a                                    ; $4c7b: $02
    inc bc                                        ; $4c7c: $03
    inc b                                         ; $4c7d: $04
    dec de                                        ; $4c7e: $1b
    ld [bc], a                                    ; $4c7f: $02
    inc bc                                        ; $4c80: $03
    inc b                                         ; $4c81: $04
    dec e                                         ; $4c82: $1d
    ld b, $06                                     ; $4c83: $06 $06
    ld b, $00                                     ; $4c85: $06 $00
    ld bc, $0101                                  ; $4c87: $01 $01 $01
    nop                                           ; $4c8a: $00
    ld bc, $0101                                  ; $4c8b: $01 $01 $01
    nop                                           ; $4c8e: $00
    ld bc, $0101                                  ; $4c8f: $01 $01 $01
    nop                                           ; $4c92: $00
    ld bc, $0101                                  ; $4c93: $01 $01 $01
    nop                                           ; $4c96: $00
    ld bc, $0101                                  ; $4c97: $01 $01 $01
    nop                                           ; $4c9a: $00
    ld bc, $0101                                  ; $4c9b: $01 $01 $01
    nop                                           ; $4c9e: $00
    ld bc, $0101                                  ; $4c9f: $01 $01 $01
    nop                                           ; $4ca2: $00
    ld bc, $0101                                  ; $4ca3: $01 $01 $01
    nop                                           ; $4ca6: $00
    ld bc, $0101                                  ; $4ca7: $01 $01 $01
    nop                                           ; $4caa: $00
    ld bc, $0101                                  ; $4cab: $01 $01 $01

Jump_008_4cae:
jr_008_4cae:
    pop af                                        ; $4cae: $f1
    cp $01                                        ; $4caf: $fe $01
    jr nz, jr_008_4cc2                            ; $4cb1: $20 $0f

    rst $20                                       ; $4cb3: $e7
    nop                                           ; $4cb4: $00
    ld c, $fa                                     ; $4cb5: $0e $fa
    ld l, h                                       ; $4cb7: $6c
    ret                                           ; $4cb8: $c9


    cp $01                                        ; $4cb9: $fe $01
    jr nz, jr_008_4d0e                            ; $4cbb: $20 $51

    rst $20                                       ; $4cbd: $e7
    nop                                           ; $4cbe: $00
    ld de, $4c18                                  ; $4cbf: $11 $18 $4c

jr_008_4cc2:
    cp $02                                        ; $4cc2: $fe $02
    jr nz, jr_008_4cd5                            ; $4cc4: $20 $0f

    rst $20                                       ; $4cc6: $e7
    jr nz, jr_008_4cd7                            ; $4cc7: $20 $0e

    ld a, [$c96c]                                 ; $4cc9: $fa $6c $c9
    cp $01                                        ; $4ccc: $fe $01
    jr nz, jr_008_4d0e                            ; $4cce: $20 $3e

    rst $20                                       ; $4cd0: $e7
    jr nz, jr_008_4ce4                            ; $4cd1: $20 $11

    jr jr_008_4d0e                                ; $4cd3: $18 $39

jr_008_4cd5:
    cp $03                                        ; $4cd5: $fe $03

jr_008_4cd7:
    jr nz, jr_008_4ce8                            ; $4cd7: $20 $0f

    rst $20                                       ; $4cd9: $e7
    ld b, b                                       ; $4cda: $40
    ld c, $fa                                     ; $4cdb: $0e $fa
    ld l, h                                       ; $4cdd: $6c
    ret                                           ; $4cde: $c9


    cp $01                                        ; $4cdf: $fe $01
    jr nz, jr_008_4d0e                            ; $4ce1: $20 $2b

    rst $20                                       ; $4ce3: $e7

jr_008_4ce4:
    ld b, b                                       ; $4ce4: $40
    ld de, $2618                                  ; $4ce5: $11 $18 $26

jr_008_4ce8:
    cp $04                                        ; $4ce8: $fe $04
    jr nz, jr_008_4cfb                            ; $4cea: $20 $0f

    rst $20                                       ; $4cec: $e7
    ld h, b                                       ; $4ced: $60
    ld c, $fa                                     ; $4cee: $0e $fa
    ld l, h                                       ; $4cf0: $6c
    ret                                           ; $4cf1: $c9


    cp $01                                        ; $4cf2: $fe $01
    jr nz, jr_008_4d0e                            ; $4cf4: $20 $18

    rst $20                                       ; $4cf6: $e7
    ld h, b                                       ; $4cf7: $60
    ld de, $1318                                  ; $4cf8: $11 $18 $13

jr_008_4cfb:
    cp $05                                        ; $4cfb: $fe $05
    jr nz, jr_008_4d0e                            ; $4cfd: $20 $0f

    rst $20                                       ; $4cff: $e7
    add b                                         ; $4d00: $80
    ld c, $fa                                     ; $4d01: $0e $fa
    ld l, h                                       ; $4d03: $6c
    ret                                           ; $4d04: $c9


    cp $01                                        ; $4d05: $fe $01
    jr nz, jr_008_4d0e                            ; $4d07: $20 $05

    rst $20                                       ; $4d09: $e7
    and b                                         ; $4d0a: $a0
    ld c, $18                                     ; $4d0b: $0e $18
    nop                                           ; $4d0d: $00

Jump_008_4d0e:
jr_008_4d0e:
    ld de, $000a                                  ; $4d0e: $11 $0a $00
    rst $18                                       ; $4d11: $df
    ld d, h                                       ; $4d12: $54
    ld [bc], a                                    ; $4d13: $02
    call Call_008_4f03                            ; $4d14: $cd $03 $4f
    ret                                           ; $4d17: $c9


Call_008_4d18:
    ld a, [$c96c]                                 ; $4d18: $fa $6c $c9
    cp $04                                        ; $4d1b: $fe $04
    ret nc                                        ; $4d1d: $d0

    ld [$caad], a                                 ; $4d1e: $ea $ad $ca
    add a                                         ; $4d21: $87
    ld h, a                                       ; $4d22: $67
    ld a, [$c836]                                 ; $4d23: $fa $36 $c8
    and $07                                       ; $4d26: $e6 $07
    add a                                         ; $4d28: $87
    add a                                         ; $4d29: $87
    add a                                         ; $4d2a: $87
    add h                                         ; $4d2b: $84
    ld hl, $4d3d                                  ; $4d2c: $21 $3d $4d
    add l                                         ; $4d2f: $85
    ld l, a                                       ; $4d30: $6f
    jr nc, jr_008_4d34                            ; $4d31: $30 $01

    inc h                                         ; $4d33: $24

jr_008_4d34:
    ld a, [hl+]                                   ; $4d34: $2a
    ld [$caae], a                                 ; $4d35: $ea $ae $ca
    ld a, [hl]                                    ; $4d38: $7e
    ld [$caaf], a                                 ; $4d39: $ea $af $ca
    ret                                           ; $4d3c: $c9


    nop                                           ; $4d3d: $00
    nop                                           ; $4d3e: $00
    jr z, jr_008_4d41                             ; $4d3f: $28 $00

jr_008_4d41:
    inc d                                         ; $4d41: $14
    nop                                           ; $4d42: $00
    ld a, [bc]                                    ; $4d43: $0a
    nop                                           ; $4d44: $00
    nop                                           ; $4d45: $00
    nop                                           ; $4d46: $00
    jr z, jr_008_4d49                             ; $4d47: $28 $00

jr_008_4d49:
    inc d                                         ; $4d49: $14
    nop                                           ; $4d4a: $00
    ld a, [bc]                                    ; $4d4b: $0a
    nop                                           ; $4d4c: $00
    nop                                           ; $4d4d: $00
    nop                                           ; $4d4e: $00
    ld b, [hl]                                    ; $4d4f: $46
    nop                                           ; $4d50: $00
    inc hl                                        ; $4d51: $23
    nop                                           ; $4d52: $00
    rrca                                          ; $4d53: $0f
    nop                                           ; $4d54: $00
    nop                                           ; $4d55: $00
    nop                                           ; $4d56: $00
    adc h                                         ; $4d57: $8c
    nop                                           ; $4d58: $00
    ld b, [hl]                                    ; $4d59: $46
    nop                                           ; $4d5a: $00
    inc hl                                        ; $4d5b: $23
    nop                                           ; $4d5c: $00
    nop                                           ; $4d5d: $00
    nop                                           ; $4d5e: $00
    ret z                                         ; $4d5f: $c8

    nop                                           ; $4d60: $00
    ld h, h                                       ; $4d61: $64
    nop                                           ; $4d62: $00
    ld [hl-], a                                   ; $4d63: $32
    nop                                           ; $4d64: $00
    nop                                           ; $4d65: $00
    nop                                           ; $4d66: $00
    sub b                                         ; $4d67: $90
    ld bc, $00c8                                  ; $4d68: $01 $c8 $00
    ld h, h                                       ; $4d6b: $64
    nop                                           ; $4d6c: $00
    nop                                           ; $4d6d: $00
    nop                                           ; $4d6e: $00
    inc l                                         ; $4d6f: $2c
    ld bc, $0096                                  ; $4d70: $01 $96 $00
    ld c, e                                       ; $4d73: $4b
    nop                                           ; $4d74: $00
    nop                                           ; $4d75: $00
    nop                                           ; $4d76: $00
    jr z, jr_008_4d79                             ; $4d77: $28 $00

jr_008_4d79:
    inc d                                         ; $4d79: $14
    nop                                           ; $4d7a: $00
    ld a, [bc]                                    ; $4d7b: $0a
    nop                                           ; $4d7c: $00
    ld a, $00                                     ; $4d7d: $3e $00
    rst $18                                       ; $4d7f: $df
    jr jr_008_4d8d                                ; $4d80: $18 $0b

    ld a, [$c96c]                                 ; $4d82: $fa $6c $c9
    cp $01                                        ; $4d85: $fe $01
    jp nz, Jump_008_4e5f                          ; $4d87: $c2 $5f $4e

    ld a, [$c33f]                                 ; $4d8a: $fa $3f $c3

jr_008_4d8d:
    or a                                          ; $4d8d: $b7
    jp nz, Jump_008_4e8d                          ; $4d8e: $c2 $8d $4e

    ld a, [$c8d0]                                 ; $4d91: $fa $d0 $c8
    cp $04                                        ; $4d94: $fe $04
    jr nz, jr_008_4dae                            ; $4d96: $20 $16

    ld de, $0a00                                  ; $4d98: $11 $00 $0a
    ld hl, $0028                                  ; $4d9b: $21 $28 $00
    ld c, $14                                     ; $4d9e: $0e $14
    call Call_008_4e97                            ; $4da0: $cd $97 $4e
    push de                                       ; $4da3: $d5
    ld de, $0080                                  ; $4da4: $11 $80 $00
    rst $18                                       ; $4da7: $df
    ld b, h                                       ; $4da8: $44
    ld [bc], a                                    ; $4da9: $02
    pop de                                        ; $4daa: $d1
    jp Jump_008_4e8d                              ; $4dab: $c3 $8d $4e


jr_008_4dae:
    cp $05                                        ; $4dae: $fe $05
    jr nz, jr_008_4dc8                            ; $4db0: $20 $16

    ld de, $0a40                                  ; $4db2: $11 $40 $0a
    ld hl, $0046                                  ; $4db5: $21 $46 $00
    ld c, $15                                     ; $4db8: $0e $15
    call Call_008_4e97                            ; $4dba: $cd $97 $4e
    push de                                       ; $4dbd: $d5
    ld de, $00a0                                  ; $4dbe: $11 $a0 $00
    rst $18                                       ; $4dc1: $df
    ld b, h                                       ; $4dc2: $44
    ld [bc], a                                    ; $4dc3: $02
    pop de                                        ; $4dc4: $d1
    jp Jump_008_4e8d                              ; $4dc5: $c3 $8d $4e


jr_008_4dc8:
    cp $06                                        ; $4dc8: $fe $06
    jr nz, jr_008_4de2                            ; $4dca: $20 $16

    ld de, $0a80                                  ; $4dcc: $11 $80 $0a
    ld hl, $008c                                  ; $4dcf: $21 $8c $00
    ld c, $16                                     ; $4dd2: $0e $16
    call Call_008_4e97                            ; $4dd4: $cd $97 $4e
    push de                                       ; $4dd7: $d5
    ld de, $00c0                                  ; $4dd8: $11 $c0 $00
    rst $18                                       ; $4ddb: $df
    ld b, h                                       ; $4ddc: $44
    ld [bc], a                                    ; $4ddd: $02
    pop de                                        ; $4dde: $d1
    jp Jump_008_4e8d                              ; $4ddf: $c3 $8d $4e


jr_008_4de2:
    cp $07                                        ; $4de2: $fe $07
    jr nz, jr_008_4e12                            ; $4de4: $20 $2c

    ld de, $0ac0                                  ; $4de6: $11 $c0 $0a
    ld hl, $00c8                                  ; $4de9: $21 $c8 $00
    ld c, $17                                     ; $4dec: $0e $17
    call Call_008_4e97                            ; $4dee: $cd $97 $4e
    push de                                       ; $4df1: $d5
    ld de, $00e0                                  ; $4df2: $11 $e0 $00
    rst $18                                       ; $4df5: $df
    ld b, h                                       ; $4df6: $44
    ld [bc], a                                    ; $4df7: $02
    pop de                                        ; $4df8: $d1
    ld a, [$c960]                                 ; $4df9: $fa $60 $c9
    cp $00                                        ; $4dfc: $fe $00
    jr nz, jr_008_4e0f                            ; $4dfe: $20 $0f

    rst $30                                       ; $4e00: $f7
    add b                                         ; $4e01: $80
    rla                                           ; $4e02: $17
    jr nz, jr_008_4e0f                            ; $4e03: $20 $0a

    ld a, $30                                     ; $4e05: $3e $30
    ld [$c960], a                                 ; $4e07: $ea $60 $c9
    ld a, $05                                     ; $4e0a: $3e $05
    ld [$c961], a                                 ; $4e0c: $ea $61 $c9

jr_008_4e0f:
    jp Jump_008_4e8d                              ; $4e0f: $c3 $8d $4e


jr_008_4e12:
    cp $08                                        ; $4e12: $fe $08
    jr nz, jr_008_4e2b                            ; $4e14: $20 $15

    ld de, $0b00                                  ; $4e16: $11 $00 $0b
    ld hl, $0190                                  ; $4e19: $21 $90 $01
    ld c, $18                                     ; $4e1c: $0e $18
    call Call_008_4e97                            ; $4e1e: $cd $97 $4e
    push de                                       ; $4e21: $d5
    ld de, $0100                                  ; $4e22: $11 $00 $01
    rst $18                                       ; $4e25: $df
    ld b, h                                       ; $4e26: $44
    ld [bc], a                                    ; $4e27: $02
    pop de                                        ; $4e28: $d1
    jr jr_008_4e8d                                ; $4e29: $18 $62

jr_008_4e2b:
    cp $09                                        ; $4e2b: $fe $09
    jr nz, jr_008_4e44                            ; $4e2d: $20 $15

    ld de, $0b40                                  ; $4e2f: $11 $40 $0b
    ld hl, $0032                                  ; $4e32: $21 $32 $00
    ld c, $19                                     ; $4e35: $0e $19
    call Call_008_4e97                            ; $4e37: $cd $97 $4e
    push de                                       ; $4e3a: $d5
    ld de, $0120                                  ; $4e3b: $11 $20 $01
    rst $18                                       ; $4e3e: $df
    ld b, h                                       ; $4e3f: $44
    ld [bc], a                                    ; $4e40: $02
    pop de                                        ; $4e41: $d1
    jr jr_008_4e8d                                ; $4e42: $18 $49

jr_008_4e44:
    cp $0a                                        ; $4e44: $fe $0a
    jr nz, jr_008_4e5d                            ; $4e46: $20 $15

    ld de, $0b80                                  ; $4e48: $11 $80 $0b
    ld hl, $0190                                  ; $4e4b: $21 $90 $01
    ld c, $1a                                     ; $4e4e: $0e $1a
    call Call_008_4e97                            ; $4e50: $cd $97 $4e
    push de                                       ; $4e53: $d5
    ld de, $0140                                  ; $4e54: $11 $40 $01
    rst $18                                       ; $4e57: $df
    ld b, h                                       ; $4e58: $44
    ld [bc], a                                    ; $4e59: $02
    pop de                                        ; $4e5a: $d1
    jr jr_008_4e8d                                ; $4e5b: $18 $30

jr_008_4e5d:
    jr jr_008_4e8d                                ; $4e5d: $18 $2e

Jump_008_4e5f:
    ld a, [$c33f]                                 ; $4e5f: $fa $3f $c3
    or a                                          ; $4e62: $b7
    jp nz, Jump_008_4e8d                          ; $4e63: $c2 $8d $4e

    ld a, [$c8d0]                                 ; $4e66: $fa $d0 $c8
    cp $04                                        ; $4e69: $fe $04
    jr nz, jr_008_4e73                            ; $4e6b: $20 $06

    rst $20                                       ; $4e6d: $e7
    add b                                         ; $4e6e: $80
    db $10                                        ; $4e6f: $10
    jp Jump_008_4e8d                              ; $4e70: $c3 $8d $4e


jr_008_4e73:
    cp $05                                        ; $4e73: $fe $05
    jr nz, jr_008_4e7d                            ; $4e75: $20 $06

    rst $20                                       ; $4e77: $e7
    and b                                         ; $4e78: $a0
    db $10                                        ; $4e79: $10
    jp Jump_008_4e8d                              ; $4e7a: $c3 $8d $4e


jr_008_4e7d:
    cp $06                                        ; $4e7d: $fe $06
    jr nz, jr_008_4e86                            ; $4e7f: $20 $05

    rst $20                                       ; $4e81: $e7
    ret nz                                        ; $4e82: $c0

    db $10                                        ; $4e83: $10
    jr jr_008_4e8d                                ; $4e84: $18 $07

jr_008_4e86:
    cp $07                                        ; $4e86: $fe $07
    jr nz, jr_008_4e8d                            ; $4e88: $20 $03

    rst $20                                       ; $4e8a: $e7
    ldh [rNR10], a                                ; $4e8b: $e0 $10

Jump_008_4e8d:
jr_008_4e8d:
    ld de, $000a                                  ; $4e8d: $11 $0a $00
    rst $18                                       ; $4e90: $df
    ld d, h                                       ; $4e91: $54
    ld [bc], a                                    ; $4e92: $02
    call Call_008_4f03                            ; $4e93: $cd $03 $4f
    ret                                           ; $4e96: $c9


Call_008_4e97:
    call Call_000_2d10                            ; $4e97: $cd $10 $2d
    jr nz, jr_008_4eaa                            ; $4e9a: $20 $0e

    push de                                       ; $4e9c: $d5
    ld a, c                                       ; $4e9d: $79
    ld [$caad], a                                 ; $4e9e: $ea $ad $ca
    ld a, l                                       ; $4ea1: $7d
    ld [$caae], a                                 ; $4ea2: $ea $ae $ca
    ld a, h                                       ; $4ea5: $7c
    ld [$caaf], a                                 ; $4ea6: $ea $af $ca
    pop de                                        ; $4ea9: $d1

jr_008_4eaa:
    push de                                       ; $4eaa: $d5
    call Call_000_2d2e                            ; $4eab: $cd $2e $2d
    pop de                                        ; $4eae: $d1
    ld a, [$c814]                                 ; $4eaf: $fa $14 $c8
    or a                                          ; $4eb2: $b7
    ret nz                                        ; $4eb3: $c0

    ld a, $20                                     ; $4eb4: $3e $20
    add e                                         ; $4eb6: $83
    ld e, a                                       ; $4eb7: $5f
    jr nc, jr_008_4ebb                            ; $4eb8: $30 $01

    inc d                                         ; $4eba: $14

jr_008_4ebb:
    call Call_000_2d2e                            ; $4ebb: $cd $2e $2d
    ret                                           ; $4ebe: $c9


    ld a, [$c8d0]                                 ; $4ebf: $fa $d0 $c8
    cp $ff                                        ; $4ec2: $fe $ff
    jr z, jr_008_4ee8                             ; $4ec4: $28 $22

    ld hl, $c96c                                  ; $4ec6: $21 $6c $c9
    ld a, [$c8be]                                 ; $4ec9: $fa $be $c8
    add $36                                       ; $4ecc: $c6 $36
    ld b, a                                       ; $4ece: $47
    ld a, [$c8fe]                                 ; $4ecf: $fa $fe $c8
    add $36                                       ; $4ed2: $c6 $36
    cp b                                          ; $4ed4: $b8
    jr nz, jr_008_4edb                            ; $4ed5: $20 $04

    ld [hl], $03                                  ; $4ed7: $36 $03
    jr jr_008_4ee3                                ; $4ed9: $18 $08

jr_008_4edb:
    jr nc, jr_008_4ee1                            ; $4edb: $30 $04

    ld [hl], $02                                  ; $4edd: $36 $02
    jr jr_008_4ee3                                ; $4edf: $18 $02

jr_008_4ee1:
    ld [hl], $01                                  ; $4ee1: $36 $01

jr_008_4ee3:
    ld a, $02                                     ; $4ee3: $3e $02
    rst $18                                       ; $4ee5: $df
    jr jr_008_4ef3                                ; $4ee6: $18 $0b

jr_008_4ee8:
    ld de, $000a                                  ; $4ee8: $11 $0a $00
    rst $18                                       ; $4eeb: $df
    ld d, h                                       ; $4eec: $54
    ld [bc], a                                    ; $4eed: $02
    call Call_008_4f03                            ; $4eee: $cd $03 $4f
    ret                                           ; $4ef1: $c9


    ret                                           ; $4ef2: $c9


jr_008_4ef3:
    ret                                           ; $4ef3: $c9


Call_008_4ef4:
    ld hl, $c96d                                  ; $4ef4: $21 $6d $c9
    ld a, [hl]                                    ; $4ef7: $7e
    ld [hl], $02                                  ; $4ef8: $36 $02
    push hl                                       ; $4efa: $e5
    push af                                       ; $4efb: $f5
    rst $18                                       ; $4efc: $df

    db $34, $02

    pop af                                        ; $4eff: $f1
    pop hl                                        ; $4f00: $e1
    ld [hl], a                                    ; $4f01: $77
    ret                                           ; $4f02: $c9


Call_008_4f03:
    ld c, $08                                     ; $4f03: $0e $08
    call Call_000_25a1                            ; $4f05: $cd $a1 $25
    call Call_000_2625                            ; $4f08: $cd $25 $26
    call Call_000_23b6                            ; $4f0b: $cd $b6 $23
    call Call_000_2683                            ; $4f0e: $cd $83 $26
    xor a                                         ; $4f11: $af
    ldh [$8b], a                                  ; $4f12: $e0 $8b
    ldh [$8a], a                                  ; $4f14: $e0 $8a
    ld a, [$c2a5]                                 ; $4f16: $fa $a5 $c2
    and $0f                                       ; $4f19: $e6 $0f
    cp $0f                                        ; $4f1b: $fe $0f
    jr z, @+$0f                                   ; $4f1d: $28 $0d

    ld hl, $c83c                                  ; $4f1f: $21 $3c $c8
    ld a, [hl+]                                   ; $4f22: $2a
    ld d, [hl]                                    ; $4f23: $56
    ld e, a                                       ; $4f24: $5f
    ld a, $01                                     ; $4f25: $3e $01
    ld h, $00                                     ; $4f27: $26 $00
    rst $18                                       ; $4f29: $df
    ld [$cd48], sp                                ; $4f2a: $08 $48 $cd
    db $f4                                        ; $4f2d: $f4
    ld c, [hl]                                    ; $4f2e: $4e
    ret                                           ; $4f2f: $c9


Call_008_4f30:
    ld a, [$d4cd]                                 ; $4f30: $fa $cd $d4
    cp $06                                        ; $4f33: $fe $06
    jp nz, Jump_008_5062                          ; $4f35: $c2 $62 $50

    ld a, [$d325]                                 ; $4f38: $fa $25 $d3
    ld b, a                                       ; $4f3b: $47
    ld a, $20                                     ; $4f3c: $3e $20
    call Call_008_4028                            ; $4f3e: $cd $28 $40
    ld a, [hl]                                    ; $4f41: $7e
    inc a                                         ; $4f42: $3c
    sub b                                         ; $4f43: $90
    jr z, jr_008_4f55                             ; $4f44: $28 $0f

    cp $ff                                        ; $4f46: $fe $ff
    jr z, jr_008_4f5d                             ; $4f48: $28 $13

    cp $fe                                        ; $4f4a: $fe $fe
    jr z, jr_008_4f65                             ; $4f4c: $28 $17

    cp $fd                                        ; $4f4e: $fe $fd
    jr z, jr_008_4f6d                             ; $4f50: $28 $1b

    rst $08                                       ; $4f52: $cf

    db $23

    ret                                           ; $4f54: $c9


jr_008_4f55:
    rst $08                                       ; $4f55: $cf

    db $0d

    ld a, $15                                     ; $4f57: $3e $15
    rst $18                                       ; $4f59: $df

    db $08, $3b

    ret                                           ; $4f5c: $c9


jr_008_4f5d:
    rst $08                                       ; $4f5d: $cf
    ld c, $3e                                     ; $4f5e: $0e $3e
    rla                                           ; $4f60: $17
    rst $18                                       ; $4f61: $df
    ld [$c93b], sp                                ; $4f62: $08 $3b $c9

jr_008_4f65:
    rst $08                                       ; $4f65: $cf
    ld c, $3e                                     ; $4f66: $0e $3e
    inc d                                         ; $4f68: $14
    rst $18                                       ; $4f69: $df
    ld [$c93b], sp                                ; $4f6a: $08 $3b $c9

jr_008_4f6d:
    rst $08                                       ; $4f6d: $cf
    ld c, $3e                                     ; $4f6e: $0e $3e
    ld d, $df                                     ; $4f70: $16 $df
    ld [$c93b], sp                                ; $4f72: $08 $3b $c9

Call_008_4f75:
    ld a, [$c839]                                 ; $4f75: $fa $39 $c8
    cp $0a                                        ; $4f78: $fe $0a
    ret nz                                        ; $4f7a: $c0

    rst $18                                       ; $4f7b: $df
    ld a, [bc]                                    ; $4f7c: $0a
    ld c, b                                       ; $4f7d: $48
    rst $18                                       ; $4f7e: $df
    ld a, [bc]                                    ; $4f7f: $0a
    ld bc, $f0c9                                  ; $4f80: $01 $c9 $f0
    sub [hl]                                      ; $4f83: $96
    push af                                       ; $4f84: $f5
    ld a, $06                                     ; $4f85: $3e $06
    ldh [$96], a                                  ; $4f87: $e0 $96
    ldh [rSVBK], a                                ; $4f89: $e0 $70
    ld a, $ff                                     ; $4f8b: $3e $ff
    ld [$d444], a                                 ; $4f8d: $ea $44 $d4
    ld a, $02                                     ; $4f90: $3e $02
    ldh [$96], a                                  ; $4f92: $e0 $96
    ldh [rSVBK], a                                ; $4f94: $e0 $70
    ld de, $c600                                  ; $4f96: $11 $00 $c6
    ld hl, $d100                                  ; $4f99: $21 $00 $d1
    ld c, $08                                     ; $4f9c: $0e $08

jr_008_4f9e:
    push bc                                       ; $4f9e: $c5
    ld a, [hl+]                                   ; $4f9f: $2a
    ld [de], a                                    ; $4fa0: $12
    inc de                                        ; $4fa1: $13
    ld a, [hl+]                                   ; $4fa2: $2a
    ld [de], a                                    ; $4fa3: $12
    inc de                                        ; $4fa4: $13
    ld a, [hl+]                                   ; $4fa5: $2a
    ld [de], a                                    ; $4fa6: $12
    inc de                                        ; $4fa7: $13
    ld a, [hl+]                                   ; $4fa8: $2a
    ld [de], a                                    ; $4fa9: $12
    inc de                                        ; $4faa: $13
    ld a, [hl+]                                   ; $4fab: $2a
    ld [de], a                                    ; $4fac: $12
    inc de                                        ; $4fad: $13
    ld a, [hl+]                                   ; $4fae: $2a
    ld [de], a                                    ; $4faf: $12
    inc de                                        ; $4fb0: $13
    ld a, [hl+]                                   ; $4fb1: $2a
    ld [de], a                                    ; $4fb2: $12
    inc de                                        ; $4fb3: $13
    ld a, [hl+]                                   ; $4fb4: $2a
    ld [de], a                                    ; $4fb5: $12
    inc de                                        ; $4fb6: $13
    ld a, [hl+]                                   ; $4fb7: $2a
    ld [de], a                                    ; $4fb8: $12
    inc de                                        ; $4fb9: $13
    ld a, [hl+]                                   ; $4fba: $2a
    ld [de], a                                    ; $4fbb: $12
    inc de                                        ; $4fbc: $13
    ld a, [hl+]                                   ; $4fbd: $2a
    ld [de], a                                    ; $4fbe: $12
    inc de                                        ; $4fbf: $13
    ld a, [hl+]                                   ; $4fc0: $2a
    ld [de], a                                    ; $4fc1: $12
    inc de                                        ; $4fc2: $13
    ld a, [hl+]                                   ; $4fc3: $2a
    ld [de], a                                    ; $4fc4: $12
    inc de                                        ; $4fc5: $13
    ld a, [hl+]                                   ; $4fc6: $2a
    ld [de], a                                    ; $4fc7: $12
    inc de                                        ; $4fc8: $13
    ld a, [hl+]                                   ; $4fc9: $2a
    ld [de], a                                    ; $4fca: $12
    inc de                                        ; $4fcb: $13
    ld a, [hl+]                                   ; $4fcc: $2a
    ld [de], a                                    ; $4fcd: $12
    inc de                                        ; $4fce: $13
    ld a, [hl+]                                   ; $4fcf: $2a
    ld [de], a                                    ; $4fd0: $12
    inc de                                        ; $4fd1: $13
    ld a, [hl+]                                   ; $4fd2: $2a
    ld [de], a                                    ; $4fd3: $12
    inc de                                        ; $4fd4: $13
    ld a, [hl+]                                   ; $4fd5: $2a
    ld [de], a                                    ; $4fd6: $12
    inc de                                        ; $4fd7: $13
    ld a, [hl+]                                   ; $4fd8: $2a
    ld [de], a                                    ; $4fd9: $12
    inc de                                        ; $4fda: $13
    ld bc, $002c                                  ; $4fdb: $01 $2c $00
    add hl, bc                                    ; $4fde: $09
    ld a, $0c                                     ; $4fdf: $3e $0c
    add e                                         ; $4fe1: $83
    ld e, a                                       ; $4fe2: $5f
    ld a, d                                       ; $4fe3: $7a
    adc $00                                       ; $4fe4: $ce $00
    ld d, a                                       ; $4fe6: $57
    pop bc                                        ; $4fe7: $c1
    dec c                                         ; $4fe8: $0d
    jr nz, jr_008_4f9e                            ; $4fe9: $20 $b3

    ld a, $03                                     ; $4feb: $3e $03
    ldh [$96], a                                  ; $4fed: $e0 $96
    ldh [rSVBK], a                                ; $4fef: $e0 $70
    ld hl, $d100                                  ; $4ff1: $21 $00 $d1
    ld c, $08                                     ; $4ff4: $0e $08

jr_008_4ff6:
    push bc                                       ; $4ff6: $c5
    ld a, [hl+]                                   ; $4ff7: $2a
    ld [de], a                                    ; $4ff8: $12
    inc de                                        ; $4ff9: $13
    ld a, [hl+]                                   ; $4ffa: $2a
    ld [de], a                                    ; $4ffb: $12
    inc de                                        ; $4ffc: $13
    ld a, [hl+]                                   ; $4ffd: $2a
    ld [de], a                                    ; $4ffe: $12
    inc de                                        ; $4fff: $13
    ld a, [hl+]                                   ; $5000: $2a
    ld [de], a                                    ; $5001: $12
    inc de                                        ; $5002: $13
    ld a, [hl+]                                   ; $5003: $2a
    ld [de], a                                    ; $5004: $12
    inc de                                        ; $5005: $13
    ld a, [hl+]                                   ; $5006: $2a
    ld [de], a                                    ; $5007: $12
    inc de                                        ; $5008: $13
    ld a, [hl+]                                   ; $5009: $2a
    ld [de], a                                    ; $500a: $12
    inc de                                        ; $500b: $13
    ld a, [hl+]                                   ; $500c: $2a
    ld [de], a                                    ; $500d: $12
    inc de                                        ; $500e: $13
    ld a, [hl+]                                   ; $500f: $2a
    ld [de], a                                    ; $5010: $12
    inc de                                        ; $5011: $13
    ld a, [hl+]                                   ; $5012: $2a
    ld [de], a                                    ; $5013: $12
    inc de                                        ; $5014: $13
    ld a, [hl+]                                   ; $5015: $2a
    ld [de], a                                    ; $5016: $12
    inc de                                        ; $5017: $13
    ld a, [hl+]                                   ; $5018: $2a
    ld [de], a                                    ; $5019: $12
    inc de                                        ; $501a: $13
    ld a, [hl+]                                   ; $501b: $2a
    ld [de], a                                    ; $501c: $12
    inc de                                        ; $501d: $13
    ld a, [hl+]                                   ; $501e: $2a
    ld [de], a                                    ; $501f: $12
    inc de                                        ; $5020: $13
    ld a, [hl+]                                   ; $5021: $2a
    ld [de], a                                    ; $5022: $12
    inc de                                        ; $5023: $13
    ld a, [hl+]                                   ; $5024: $2a
    ld [de], a                                    ; $5025: $12
    inc de                                        ; $5026: $13
    ld a, [hl+]                                   ; $5027: $2a
    ld [de], a                                    ; $5028: $12
    inc de                                        ; $5029: $13
    ld a, [hl+]                                   ; $502a: $2a
    ld [de], a                                    ; $502b: $12
    inc de                                        ; $502c: $13
    ld a, [hl+]                                   ; $502d: $2a
    ld [de], a                                    ; $502e: $12
    inc de                                        ; $502f: $13
    ld a, [hl+]                                   ; $5030: $2a
    ld [de], a                                    ; $5031: $12
    inc de                                        ; $5032: $13
    ld bc, $002c                                  ; $5033: $01 $2c $00
    add hl, bc                                    ; $5036: $09
    ld a, $0c                                     ; $5037: $3e $0c
    add e                                         ; $5039: $83
    ld e, a                                       ; $503a: $5f
    ld a, d                                       ; $503b: $7a
    adc $00                                       ; $503c: $ce $00
    ld d, a                                       ; $503e: $57
    pop bc                                        ; $503f: $c1
    dec c                                         ; $5040: $0d
    jr nz, jr_008_4ff6                            ; $5041: $20 $b3

    ld hl, $c600                                  ; $5043: $21 $00 $c6
    ld de, $b880                                  ; $5046: $11 $80 $b8
    ld c, $10                                     ; $5049: $0e $10
    call Call_000_0468                            ; $504b: $cd $68 $04
    ld hl, $c700                                  ; $504e: $21 $00 $c7
    ld de, $9880                                  ; $5051: $11 $80 $98
    ld c, $10                                     ; $5054: $0e $10
    call Call_000_0468                            ; $5056: $cd $68 $04
    call Call_000_0460                            ; $5059: $cd $60 $04
    pop af                                        ; $505c: $f1
    ldh [$96], a                                  ; $505d: $e0 $96
    ldh [rSVBK], a                                ; $505f: $e0 $70
    ret                                           ; $5061: $c9


Call_008_5062:
Jump_008_5062:
    push af                                       ; $5062: $f5
    push hl                                       ; $5063: $e5
    ld a, [$c96d]                                 ; $5064: $fa $6d $c9
    or a                                          ; $5067: $b7
    jr z, jr_008_50c3                             ; $5068: $28 $59

    ld a, [$c82c]                                 ; $506a: $fa $2c $c8
    or a                                          ; $506d: $b7
    jr z, jr_008_5075                             ; $506e: $28 $05

    call Call_000_2c19                            ; $5070: $cd $19 $2c
    jr jr_008_50c3                                ; $5073: $18 $4e

jr_008_5075:
    ld a, [$c834]                                 ; $5075: $fa $34 $c8
    cp $08                                        ; $5078: $fe $08
    jr nz, jr_008_5080                            ; $507a: $20 $04

    rst $08                                       ; $507c: $cf
    dec b                                         ; $507d: $05
    jr jr_008_50c3                                ; $507e: $18 $43

jr_008_5080:
    cp $04                                        ; $5080: $fe $04
    jr nz, jr_008_5088                            ; $5082: $20 $04

    rst $08                                       ; $5084: $cf

    db $07

    jr jr_008_50c3                                ; $5086: $18 $3b

jr_008_5088:
    ld a, [$c832]                                 ; $5088: $fa $32 $c8
    or a                                          ; $508b: $b7
    jr z, jr_008_5092                             ; $508c: $28 $04

    rst $08                                       ; $508e: $cf
    ld a, [hl+]                                   ; $508f: $2a
    jr jr_008_50c3                                ; $5090: $18 $31

jr_008_5092:
    ld a, [$c33f]                                 ; $5092: $fa $3f $c3
    or a                                          ; $5095: $b7
    jr nz, jr_008_50b2                            ; $5096: $20 $1a

    ld a, [$c8d0]                                 ; $5098: $fa $d0 $c8
    cp $ff                                        ; $509b: $fe $ff
    jr z, jr_008_50b2                             ; $509d: $28 $13

    and $0f                                       ; $509f: $e6 $0f
    ld hl, $50d6                                  ; $50a1: $21 $d6 $50
    add l                                         ; $50a4: $85
    ld l, a                                       ; $50a5: $6f
    jr nc, jr_008_50a9                            ; $50a6: $30 $01

    inc h                                         ; $50a8: $24

jr_008_50a9:
    ld a, [hl]                                    ; $50a9: $7e
    or a                                          ; $50aa: $b7
    jr z, jr_008_50b2                             ; $50ab: $28 $05

    call Call_000_2c19                            ; $50ad: $cd $19 $2c
    jr jr_008_50c3                                ; $50b0: $18 $11

jr_008_50b2:
    ld hl, $50c6                                  ; $50b2: $21 $c6 $50
    ld a, [$c836]                                 ; $50b5: $fa $36 $c8
    and $0f                                       ; $50b8: $e6 $0f
    add l                                         ; $50ba: $85
    ld l, a                                       ; $50bb: $6f
    jr nc, jr_008_50bf                            ; $50bc: $30 $01

    inc h                                         ; $50be: $24

jr_008_50bf:
    ld a, [hl]                                    ; $50bf: $7e
    call Call_000_2c19                            ; $50c0: $cd $19 $2c

jr_008_50c3:
    pop hl                                        ; $50c3: $e1
    pop af                                        ; $50c4: $f1
    ret                                           ; $50c5: $c9


    jr z, jr_008_50d0                             ; $50c6: $28 $08

    db $0a

    add hl, bc                                    ; $50c9: $09
    dec bc                                        ; $50ca: $0b
    inc c                                         ; $50cb: $0c
    db $16                                        ; $50cc: $16

    db $07

    jr z, @+$2a                                   ; $50ce: $28 $28

jr_008_50d0:
    ld d, $16                                     ; $50d0: $16 $16
    ld d, $16                                     ; $50d2: $16 $16
    ld d, $16                                     ; $50d4: $16 $16
    nop                                           ; $50d6: $00
    nop                                           ; $50d7: $00
    nop                                           ; $50d8: $00
    nop                                           ; $50d9: $00
    ld de, $1312                                  ; $50da: $11 $12 $13
    inc d                                         ; $50dd: $14
    inc c                                         ; $50de: $0c
    ld d, $15                                     ; $50df: $16 $15
    nop                                           ; $50e1: $00
    nop                                           ; $50e2: $00
    nop                                           ; $50e3: $00
    nop                                           ; $50e4: $00
    nop                                           ; $50e5: $00
    ld a, [$d4cd]                                 ; $50e6: $fa $cd $d4
    cp $06                                        ; $50e9: $fe $06
    jp nz, Jump_008_5062                          ; $50eb: $c2 $62 $50

    ld a, [$c818]                                 ; $50ee: $fa $18 $c8
    bit 0, a                                      ; $50f1: $cb $47
    jp nz, Jump_008_5062                          ; $50f3: $c2 $62 $50

    ld a, [$d325]                                 ; $50f6: $fa $25 $d3
    ld b, a                                       ; $50f9: $47
    ld a, $20                                     ; $50fa: $3e $20
    call Call_008_4028                            ; $50fc: $cd $28 $40
    ld a, [hl]                                    ; $50ff: $7e
    sub b                                         ; $5100: $90
    jr nc, jr_008_5106                            ; $5101: $30 $03

    rst $08                                       ; $5103: $cf
    ld c, $c9                                     ; $5104: $0e $c9

jr_008_5106:
    rst $08                                       ; $5106: $cf
    dec c                                         ; $5107: $0d
    ret                                           ; $5108: $c9


    ld a, [$d443]                                 ; $5109: $fa $43 $d4
    cp $01                                        ; $510c: $fe $01
    jp z, Jump_008_51d0                           ; $510e: $ca $d0 $51

    ld a, [$d519]                                 ; $5111: $fa $19 $d5
    ld h, a                                       ; $5114: $67
    ld a, [$d378]                                 ; $5115: $fa $78 $d3
    cp h                                          ; $5118: $bc
    jr nz, jr_008_5128                            ; $5119: $20 $0d

    ld a, [$d516]                                 ; $511b: $fa $16 $d5
    ld h, a                                       ; $511e: $67
    ld a, [$d375]                                 ; $511f: $fa $75 $d3
    cp h                                          ; $5122: $bc
    jr nz, jr_008_5128                            ; $5123: $20 $03

    jp Jump_008_51d0                              ; $5125: $c3 $d0 $51


jr_008_5128:
    ld a, [$d378]                                 ; $5128: $fa $78 $d3
    and $3f                                       ; $512b: $e6 $3f
    ld h, a                                       ; $512d: $67
    ld l, $00                                     ; $512e: $2e $00
    srl h                                         ; $5130: $cb $3c
    rr l                                          ; $5132: $cb $1d
    srl h                                         ; $5134: $cb $3c
    rr l                                          ; $5136: $cb $1d
    ld a, [$d375]                                 ; $5138: $fa $75 $d3
    and $3f                                       ; $513b: $e6 $3f
    ld d, $d0                                     ; $513d: $16 $d0
    ld e, a                                       ; $513f: $5f
    add hl, de                                    ; $5140: $19
    ld a, $03                                     ; $5141: $3e $03
    ldh [$96], a                                  ; $5143: $e0 $96
    ldh [rSVBK], a                                ; $5145: $e0 $70
    ld l, [hl]                                    ; $5147: $6e
    ld h, $d7                                     ; $5148: $26 $d7
    ld a, $06                                     ; $514a: $3e $06
    ldh [$96], a                                  ; $514c: $e0 $96
    ldh [rSVBK], a                                ; $514e: $e0 $70
    ld a, [hl]                                    ; $5150: $7e
    bit 7, a                                      ; $5151: $cb $7f
    jp z, Jump_008_51d0                           ; $5153: $ca $d0 $51

    ld b, a                                       ; $5156: $47
    ld hl, $d37a                                  ; $5157: $21 $7a $d3
    ld a, [hl+]                                   ; $515a: $2a
    ld h, [hl]                                    ; $515b: $66
    ld l, a                                       ; $515c: $6f
    sla l                                         ; $515d: $cb $25
    rl h                                          ; $515f: $cb $14
    sla l                                         ; $5161: $cb $25
    rl h                                          ; $5163: $cb $14
    sla l                                         ; $5165: $cb $25
    rl h                                          ; $5167: $cb $14
    ld a, h                                       ; $5169: $7c
    ld d, h                                       ; $516a: $54
    cp $18                                        ; $516b: $fe $18
    jr nc, jr_008_51d0                            ; $516d: $30 $61

    and $1f                                       ; $516f: $e6 $1f
    ld hl, $d4f3                                  ; $5171: $21 $f3 $d4
    add l                                         ; $5174: $85
    ld l, a                                       ; $5175: $6f
    jr nc, jr_008_5179                            ; $5176: $30 $01

    inc h                                         ; $5178: $24

jr_008_5179:
    ld a, [hl]                                    ; $5179: $7e
    or a                                          ; $517a: $b7
    jr z, jr_008_51d0                             ; $517b: $28 $53

    ld c, a                                       ; $517d: $4f
    ld a, [$d377]                                 ; $517e: $fa $77 $d3
    and $f0                                       ; $5181: $e6 $f0
    ld h, a                                       ; $5183: $67
    ld a, [$d374]                                 ; $5184: $fa $74 $d3
    swap a                                        ; $5187: $cb $37
    and $0f                                       ; $5189: $e6 $0f
    or h                                          ; $518b: $b4
    ld e, a                                       ; $518c: $5f
    push bc                                       ; $518d: $c5
    push de                                       ; $518e: $d5
    ld hl, $d37c                                  ; $518f: $21 $7c $d3
    ld a, [hl+]                                   ; $5192: $2a
    ld d, [hl]                                    ; $5193: $56
    ld e, a                                       ; $5194: $5f
    ld hl, $d37e                                  ; $5195: $21 $7e $d3
    ld a, [hl+]                                   ; $5198: $2a
    ld h, [hl]                                    ; $5199: $66
    ld l, a                                       ; $519a: $6f
    call Call_000_1a03                            ; $519b: $cd $03 $1a
    pop de                                        ; $519e: $d1
    ld hl, $5326                                  ; $519f: $21 $26 $53
    ld a, e                                       ; $51a2: $7b
    add l                                         ; $51a3: $85
    ld l, a                                       ; $51a4: $6f
    jr nc, jr_008_51a8                            ; $51a5: $30 $01

    inc h                                         ; $51a7: $24

jr_008_51a8:
    ld a, [hl]                                    ; $51a8: $7e
    sub b                                         ; $51a9: $90
    push af                                       ; $51aa: $f5
    ld hl, $5426                                  ; $51ab: $21 $26 $54
    ld a, e                                       ; $51ae: $7b
    add l                                         ; $51af: $85
    ld l, a                                       ; $51b0: $6f
    jr nc, jr_008_51b4                            ; $51b1: $30 $01

    inc h                                         ; $51b3: $24

jr_008_51b4:
    ld l, [hl]                                    ; $51b4: $6e
    ld h, $00                                     ; $51b5: $26 $00
    pop af                                        ; $51b7: $f1
    call Call_000_0b31                            ; $51b8: $cd $31 $0b
    bit 7, d                                      ; $51bb: $cb $7a
    jr z, jr_008_51c5                             ; $51bd: $28 $06

    xor a                                         ; $51bf: $af
    sub e                                         ; $51c0: $93
    ld e, a                                       ; $51c1: $5f
    sbc a                                         ; $51c2: $9f
    sub d                                         ; $51c3: $92
    ld d, a                                       ; $51c4: $57

jr_008_51c5:
    ld a, e                                       ; $51c5: $7b
    pop bc                                        ; $51c6: $c1
    ld b, c                                       ; $51c7: $41
    res 0, b                                      ; $51c8: $cb $80
    cp b                                          ; $51ca: $b8
    jr nc, jr_008_51d0                            ; $51cb: $30 $03

    xor a                                         ; $51cd: $af
    inc a                                         ; $51ce: $3c
    ret                                           ; $51cf: $c9


Jump_008_51d0:
jr_008_51d0:
    xor a                                         ; $51d0: $af
    ret                                           ; $51d1: $c9


    ld a, [$d519]                                 ; $51d2: $fa $19 $d5
    ld h, a                                       ; $51d5: $67
    ld a, [$d405]                                 ; $51d6: $fa $05 $d4
    cp h                                          ; $51d9: $bc
    jr nz, jr_008_51e7                            ; $51da: $20 $0b

    ld a, [$d516]                                 ; $51dc: $fa $16 $d5
    ld h, a                                       ; $51df: $67
    ld a, [$d402]                                 ; $51e0: $fa $02 $d4
    cp h                                          ; $51e3: $bc
    jr nz, jr_008_51e7                            ; $51e4: $20 $01

    ret                                           ; $51e6: $c9


jr_008_51e7:
    ld a, [$d443]                                 ; $51e7: $fa $43 $d4
    cp $01                                        ; $51ea: $fe $01
    ret z                                         ; $51ec: $c8

    cp $02                                        ; $51ed: $fe $02
    ret z                                         ; $51ef: $c8

    ld a, [$d405]                                 ; $51f0: $fa $05 $d4
    and $3f                                       ; $51f3: $e6 $3f
    ld h, a                                       ; $51f5: $67
    ld l, $00                                     ; $51f6: $2e $00
    srl h                                         ; $51f8: $cb $3c
    rr l                                          ; $51fa: $cb $1d
    srl h                                         ; $51fc: $cb $3c
    rr l                                          ; $51fe: $cb $1d
    ld a, [$d402]                                 ; $5200: $fa $02 $d4
    and $3f                                       ; $5203: $e6 $3f
    ld d, $d0                                     ; $5205: $16 $d0
    ld e, a                                       ; $5207: $5f
    add hl, de                                    ; $5208: $19
    ld a, $03                                     ; $5209: $3e $03
    ldh [$96], a                                  ; $520b: $e0 $96
    ldh [rSVBK], a                                ; $520d: $e0 $70
    ld l, [hl]                                    ; $520f: $6e
    ld h, $d7                                     ; $5210: $26 $d7
    ld a, $06                                     ; $5212: $3e $06
    ldh [$96], a                                  ; $5214: $e0 $96
    ldh [rSVBK], a                                ; $5216: $e0 $70
    ld a, [hl]                                    ; $5218: $7e
    bit 7, a                                      ; $5219: $cb $7f
    ret z                                         ; $521b: $c8

    ld b, a                                       ; $521c: $47
    ld hl, $d407                                  ; $521d: $21 $07 $d4
    ld a, [hl+]                                   ; $5220: $2a
    ld h, [hl]                                    ; $5221: $66
    ld l, a                                       ; $5222: $6f
    sla l                                         ; $5223: $cb $25
    rl h                                          ; $5225: $cb $14
    sla l                                         ; $5227: $cb $25
    rl h                                          ; $5229: $cb $14
    sla l                                         ; $522b: $cb $25
    rl h                                          ; $522d: $cb $14
    ld a, h                                       ; $522f: $7c
    ld d, h                                       ; $5230: $54
    cp $18                                        ; $5231: $fe $18
    ret nc                                        ; $5233: $d0

    and $1f                                       ; $5234: $e6 $1f
    ld hl, $d4f3                                  ; $5236: $21 $f3 $d4
    add l                                         ; $5239: $85
    ld l, a                                       ; $523a: $6f
    jr nc, jr_008_523e                            ; $523b: $30 $01

    inc h                                         ; $523d: $24

jr_008_523e:
    ld a, [hl]                                    ; $523e: $7e
    or a                                          ; $523f: $b7
    ret z                                         ; $5240: $c8

    ld c, a                                       ; $5241: $4f
    ld a, [$d404]                                 ; $5242: $fa $04 $d4
    and $f0                                       ; $5245: $e6 $f0
    ld h, a                                       ; $5247: $67
    ld a, [$d401]                                 ; $5248: $fa $01 $d4
    swap a                                        ; $524b: $cb $37
    and $0f                                       ; $524d: $e6 $0f
    or h                                          ; $524f: $b4
    ld e, a                                       ; $5250: $5f
    push de                                       ; $5251: $d5
    push bc                                       ; $5252: $c5
    ld a, [$d414]                                 ; $5253: $fa $14 $d4
    ld b, a                                       ; $5256: $47
    ld hl, $5326                                  ; $5257: $21 $26 $53
    ld a, e                                       ; $525a: $7b
    add l                                         ; $525b: $85
    ld l, a                                       ; $525c: $6f
    jr nc, jr_008_5260                            ; $525d: $30 $01

    inc h                                         ; $525f: $24

jr_008_5260:
    ld a, [hl]                                    ; $5260: $7e
    sub b                                         ; $5261: $90
    push af                                       ; $5262: $f5
    ld hl, $5426                                  ; $5263: $21 $26 $54
    ld a, e                                       ; $5266: $7b
    add l                                         ; $5267: $85
    ld l, a                                       ; $5268: $6f
    jr nc, jr_008_526c                            ; $5269: $30 $01

    inc h                                         ; $526b: $24

jr_008_526c:
    ld l, [hl]                                    ; $526c: $6e
    ld h, $00                                     ; $526d: $26 $00
    pop af                                        ; $526f: $f1
    call Call_000_0b31                            ; $5270: $cd $31 $0b
    bit 7, d                                      ; $5273: $cb $7a
    jr z, jr_008_527d                             ; $5275: $28 $06

    xor a                                         ; $5277: $af
    sub e                                         ; $5278: $93
    ld e, a                                       ; $5279: $5f
    sbc a                                         ; $527a: $9f
    sub d                                         ; $527b: $92
    ld d, a                                       ; $527c: $57

jr_008_527d:
    ld a, e                                       ; $527d: $7b
    pop bc                                        ; $527e: $c1
    pop de                                        ; $527f: $d1
    ld b, c                                       ; $5280: $41
    res 0, b                                      ; $5281: $cb $80
    cp b                                          ; $5283: $b8
    ret nc                                        ; $5284: $d0

    ld a, [$d405]                                 ; $5285: $fa $05 $d4
    ld [$d519], a                                 ; $5288: $ea $19 $d5
    ld a, [$d402]                                 ; $528b: $fa $02 $d4
    ld [$d516], a                                 ; $528e: $ea $16 $d5
    bit 0, c                                      ; $5291: $cb $41
    jr z, jr_008_52d5                             ; $5293: $28 $40

    ld hl, $5326                                  ; $5295: $21 $26 $53
    ld a, e                                       ; $5298: $7b
    add l                                         ; $5299: $85
    ld l, a                                       ; $529a: $6f
    jr nc, jr_008_529e                            ; $529b: $30 $01

    inc h                                         ; $529d: $24

jr_008_529e:
    ld c, [hl]                                    ; $529e: $4e
    ld a, [$d414]                                 ; $529f: $fa $14 $d4
    sub c                                         ; $52a2: $91
    cpl                                           ; $52a3: $2f
    inc a                                         ; $52a4: $3c
    add $80                                       ; $52a5: $c6 $80
    add c                                         ; $52a7: $81
    ld b, a                                       ; $52a8: $47
    ld c, $00                                     ; $52a9: $0e $00
    ld a, [$d413]                                 ; $52ab: $fa $13 $d4
    srl a                                         ; $52ae: $cb $3f
    ld h, a                                       ; $52b0: $67
    ld l, $00                                     ; $52b1: $2e $00
    call Call_000_11ba                            ; $52b3: $cd $ba $11
    ld a, e                                       ; $52b6: $7b
    ld [$d40b], a                                 ; $52b7: $ea $0b $d4
    ld a, d                                       ; $52ba: $7a
    ld [$d40c], a                                 ; $52bb: $ea $0c $d4
    ld a, l                                       ; $52be: $7d
    ld [$d409], a                                 ; $52bf: $ea $09 $d4
    ld a, h                                       ; $52c2: $7c
    ld [$d40a], a                                 ; $52c3: $ea $0a $d4
    ld hl, $d48e                                  ; $52c6: $21 $8e $d4
    set 4, [hl]                                   ; $52c9: $cb $e6
    ld a, [$d413]                                 ; $52cb: $fa $13 $d4
    or a                                          ; $52ce: $b7
    ret z                                         ; $52cf: $c8

    xor a                                         ; $52d0: $af
    call Call_008_5526                            ; $52d1: $cd $26 $55
    ret                                           ; $52d4: $c9


jr_008_52d5:
    ld hl, $d409                                  ; $52d5: $21 $09 $d4
    ld a, [hl+]                                   ; $52d8: $2a
    ld h, [hl]                                    ; $52d9: $66
    ld l, a                                       ; $52da: $6f
    ld a, $e6                                     ; $52db: $3e $e6
    call Call_000_0bce                            ; $52dd: $cd $ce $0b
    ld a, l                                       ; $52e0: $7d
    ld [$d409], a                                 ; $52e1: $ea $09 $d4
    ld a, h                                       ; $52e4: $7c
    ld [$d40a], a                                 ; $52e5: $ea $0a $d4
    ld hl, $d40b                                  ; $52e8: $21 $0b $d4
    ld a, [hl+]                                   ; $52eb: $2a
    ld h, [hl]                                    ; $52ec: $66
    ld l, a                                       ; $52ed: $6f
    ld a, $e6                                     ; $52ee: $3e $e6
    call Call_000_0bce                            ; $52f0: $cd $ce $0b
    ld a, l                                       ; $52f3: $7d
    ld [$d40b], a                                 ; $52f4: $ea $0b $d4
    ld a, h                                       ; $52f7: $7c
    ld [$d40c], a                                 ; $52f8: $ea $0c $d4
    ld hl, $d40d                                  ; $52fb: $21 $0d $d4
    ld a, [hl+]                                   ; $52fe: $2a
    ld h, [hl]                                    ; $52ff: $66
    ld l, a                                       ; $5300: $6f
    ld a, $f0                                     ; $5301: $3e $f0
    call Call_000_0bce                            ; $5303: $cd $ce $0b
    ld a, l                                       ; $5306: $7d
    ld [$d40d], a                                 ; $5307: $ea $0d $d4
    ld a, h                                       ; $530a: $7c
    ld [$d40e], a                                 ; $530b: $ea $0e $d4
    ld hl, $d48e                                  ; $530e: $21 $8e $d4
    set 4, [hl]                                   ; $5311: $cb $e6
    ld a, [$d413]                                 ; $5313: $fa $13 $d4
    or a                                          ; $5316: $b7
    ret z                                         ; $5317: $c8

    ld a, $01                                     ; $5318: $3e $01
    call Call_008_5526                            ; $531a: $cd $26 $55
    ret                                           ; $531d: $c9


    ld h, b                                       ; $531e: $60
    ld e, b                                       ; $531f: $58
    ld c, b                                       ; $5320: $48
    ld b, b                                       ; $5321: $40
    ld b, b                                       ; $5322: $40
    jr c, jr_008_534d                             ; $5323: $38 $28

    jr nz, @-$5e                                  ; $5325: $20 $a0

    and d                                         ; $5327: $a2
    and l                                         ; $5328: $a5
    xor c                                         ; $5329: $a9
    xor l                                         ; $532a: $ad
    or c                                          ; $532b: $b1
    or [hl]                                       ; $532c: $b6
    cp d                                          ; $532d: $ba
    ret nz                                        ; $532e: $c0

    add $ca                                       ; $532f: $c6 $ca
    rst $08                                       ; $5331: $cf
    db $d3                                        ; $5332: $d3
    rst $10                                       ; $5333: $d7
    db $db                                        ; $5334: $db
    sbc $9d                                       ; $5335: $de $9d
    and b                                         ; $5337: $a0

    db $a3

    and [hl]                                      ; $5339: $a6
    xor d                                         ; $533a: $aa
    xor a                                         ; $533b: $af
    or h                                          ; $533c: $b4
    cp d                                          ; $533d: $ba
    ret nz                                        ; $533e: $c0

    add $cc                                       ; $533f: $c6 $cc
    pop de                                        ; $5341: $d1
    sub $da                                       ; $5342: $d6 $da
    db $dd                                        ; $5344: $dd
    ldh [$9a], a                                  ; $5345: $e0 $9a
    sbc h                                         ; $5347: $9c

    db $a0

    and e                                         ; $5349: $a3
    xor b                                         ; $534a: $a8

    db $ad, $b2

jr_008_534d:
    cp c                                          ; $534d: $b9
    ret nz                                        ; $534e: $c0

    rst $00                                       ; $534f: $c7
    adc $d3                                       ; $5350: $ce $d3
    ret c                                         ; $5352: $d8

    db $dd                                        ; $5353: $dd
    ldh [$e4], a                                  ; $5354: $e0 $e4
    sub [hl]                                      ; $5356: $96
    sbc c                                         ; $5357: $99

    db $9c, $a0

    and h                                         ; $535a: $a4

    db $a9, $b0

    or a                                          ; $535d: $b7
    ret nz                                        ; $535e: $c0

    ret                                           ; $535f: $c9


    ret nc                                        ; $5360: $d0

    rst $10                                       ; $5361: $d7
    call c, $e4e0                                 ; $5362: $dc $e0 $e4
    rst $20                                       ; $5365: $e7

    db $92

    sub l                                         ; $5367: $95
    sub a                                         ; $5368: $97

    db $9b

    and b                                         ; $536a: $a0

    db $a5, $ad

    or [hl]                                       ; $536d: $b6
    ret nz                                        ; $536e: $c0

    jp z, $dbd3                                   ; $536f: $ca $d3 $db

    ldh [$e5], a                                  ; $5372: $e0 $e5
    jp hl                                         ; $5374: $e9


    db $eb                                        ; $5375: $eb

    db $8e

    sub b                                         ; $5377: $90
    sub d                                         ; $5378: $92

    db $96, $9a, $a0, $a8

    or d                                          ; $537d: $b2
    ret nz                                        ; $537e: $c0

    adc $d8                                       ; $537f: $ce $d8
    ldh [$e6], a                                  ; $5381: $e0 $e6
    ld [$f0ee], a                                 ; $5383: $ea $ee $f0

    db $89, $8b

    adc l                                         ; $5388: $8d

    db $8f, $92, $97, $a0

    xor l                                         ; $538d: $ad
    ret nz                                        ; $538e: $c0

    db $d3                                        ; $538f: $d3
    ldh [$e9], a                                  ; $5390: $e0 $e9
    xor $f1                                       ; $5392: $ee $f1
    di                                            ; $5394: $f3
    push af                                       ; $5395: $f5
    add l                                         ; $5396: $85

    db $85

    add [hl]                                      ; $5398: $86

    db $88, $89, $8d, $92

    and b                                         ; $539d: $a0
    ret nz                                        ; $539e: $c0

    ldh [$ee], a                                  ; $539f: $e0 $ee
    di                                            ; $53a1: $f3
    rst $30                                       ; $53a2: $f7
    ld hl, sp-$06                                 ; $53a3: $f8 $fa
    ei                                            ; $53a5: $fb
    add b                                         ; $53a6: $80

    db $80

    add b                                         ; $53a8: $80

    db $80, $80, $80, $80

    add b                                         ; $53ad: $80
    nop                                           ; $53ae: $00
    nop                                           ; $53af: $00
    nop                                           ; $53b0: $00
    nop                                           ; $53b1: $00
    nop                                           ; $53b2: $00
    nop                                           ; $53b3: $00
    nop                                           ; $53b4: $00
    nop                                           ; $53b5: $00
    ld a, e                                       ; $53b6: $7b
    ld a, e                                       ; $53b7: $7b

    db $7a

    ld a, b                                       ; $53b9: $78

    db $77, $73, $6e

    ld h, b                                       ; $53bd: $60
    ld b, b                                       ; $53be: $40
    jr nz, jr_008_53d3                            ; $53bf: $20 $12

    dec c                                         ; $53c1: $0d
    add hl, bc                                    ; $53c2: $09
    ld [$0506], sp                                ; $53c3: $08 $06 $05
    ld [hl], a                                    ; $53c6: $77
    ld [hl], l                                    ; $53c7: $75

    db $73

    ld [hl], c                                    ; $53c9: $71

    db $6e, $69, $60

    ld d, e                                       ; $53cd: $53
    ld b, b                                       ; $53ce: $40
    dec l                                         ; $53cf: $2d
    jr nz, @+$19                                  ; $53d0: $20 $17

    ld [de], a                                    ; $53d2: $12

jr_008_53d3:
    rrca                                          ; $53d3: $0f
    dec c                                         ; $53d4: $0d
    dec bc                                        ; $53d5: $0b

    db $72

    ld [hl], b                                    ; $53d7: $70

    db $6e, $6a, $66, $60

jr_008_53dc:
    ld e, b                                       ; $53dc: $58
    ld c, [hl]                                    ; $53dd: $4e
    ld b, b                                       ; $53de: $40
    ld [hl-], a                                   ; $53df: $32
    jr z, jr_008_5402                             ; $53e0: $28 $20

    ld a, [de]                                    ; $53e2: $1a
    ld d, $12                                     ; $53e3: $16 $12
    db $10                                        ; $53e5: $10

    db $6e, $6b, $69, $65, $60, $5b

    ld d, e                                       ; $53ec: $53
    ld c, d                                       ; $53ed: $4a
    ld b, b                                       ; $53ee: $40
    ld [hl], $2d                                  ; $53ef: $36 $2d
    dec h                                         ; $53f1: $25
    jr nz, jr_008_540f                            ; $53f2: $20 $1b

    rla                                           ; $53f4: $17
    dec d                                         ; $53f5: $15
    ld l, d                                       ; $53f6: $6a

    db $67, $64, $60, $5c, $57

    ld d, b                                       ; $53fc: $50
    ld c, c                                       ; $53fd: $49
    ld b, b                                       ; $53fe: $40
    scf                                           ; $53ff: $37
    jr nc, jr_008_542b                            ; $5400: $30 $29

jr_008_5402:
    inc h                                         ; $5402: $24
    jr nz, @+$1e                                  ; $5403: $20 $1c

    add hl, de                                    ; $5405: $19
    ld h, [hl]                                    ; $5406: $66
    ld h, h                                       ; $5407: $64

    db $60, $5d, $58, $53

    ld c, [hl]                                    ; $540c: $4e
    ld b, a                                       ; $540d: $47
    ld b, b                                       ; $540e: $40

jr_008_540f:
    add hl, sp                                    ; $540f: $39
    ld [hl-], a                                   ; $5410: $32
    dec l                                         ; $5411: $2d
    jr z, jr_008_5437                             ; $5412: $28 $23

    jr nz, jr_008_5432                            ; $5414: $20 $1c

    ld h, e                                       ; $5416: $63
    ld h, b                                       ; $5417: $60
    ld e, l                                       ; $5418: $5d

    db $5a, $56, $51

    ld c, h                                       ; $541c: $4c
    ld b, [hl]                                    ; $541d: $46
    ld b, b                                       ; $541e: $40
    ld a, [hl-]                                   ; $541f: $3a
    inc [hl]                                      ; $5420: $34

    db $2f

    ld a, [hl+]                                   ; $5422: $2a
    ld h, $23                                     ; $5423: $26 $23
    jr nz, jr_008_53dc                            ; $5425: $20 $b5

    xor d                                         ; $5427: $aa
    and b                                         ; $5428: $a0
    sub [hl]                                      ; $5429: $96
    adc a                                         ; $542a: $8f

jr_008_542b:
    adc b                                         ; $542b: $88
    add e                                         ; $542c: $83
    add b                                         ; $542d: $80
    add b                                         ; $542e: $80
    add b                                         ; $542f: $80
    add e                                         ; $5430: $83
    adc b                                         ; $5431: $88

jr_008_5432:
    adc a                                         ; $5432: $8f
    sub [hl]                                      ; $5433: $96
    and b                                         ; $5434: $a0
    xor d                                         ; $5435: $aa
    xor d                                         ; $5436: $aa

jr_008_5437:
    sbc [hl]                                      ; $5437: $9e

    db $93

    adc c                                         ; $5439: $89
    add b                                         ; $543a: $80
    ld a, c                                       ; $543b: $79
    ld [hl], h                                    ; $543c: $74
    ld [hl], c                                    ; $543d: $71
    ld [hl], b                                    ; $543e: $70
    ld [hl], c                                    ; $543f: $71
    ld [hl], h                                    ; $5440: $74
    ld a, c                                       ; $5441: $79
    add b                                         ; $5442: $80
    adc c                                         ; $5443: $89
    sub e                                         ; $5444: $93
    sbc [hl]                                      ; $5445: $9e
    and b                                         ; $5446: $a0
    sub e                                         ; $5447: $93

    db $87

    ld a, h                                       ; $5449: $7c
    ld [hl], e                                    ; $544a: $73

    db $6b, $65

    ld h, c                                       ; $544d: $61
    ld h, b                                       ; $544e: $60
    ld h, c                                       ; $544f: $61
    ld h, l                                       ; $5450: $65
    ld l, e                                       ; $5451: $6b
    ld [hl], e                                    ; $5452: $73
    ld a, h                                       ; $5453: $7c
    add a                                         ; $5454: $87
    sub e                                         ; $5455: $93
    sub [hl]                                      ; $5456: $96
    adc c                                         ; $5457: $89

    db $7c, $71

    ld h, [hl]                                    ; $545a: $66

    db $5d, $56

    ld d, c                                       ; $545d: $51
    ld d, b                                       ; $545e: $50
    ld d, c                                       ; $545f: $51
    ld d, [hl]                                    ; $5460: $56
    ld e, l                                       ; $5461: $5d
    ld h, [hl]                                    ; $5462: $66
    ld [hl], c                                    ; $5463: $71
    ld a, h                                       ; $5464: $7c
    adc c                                         ; $5465: $89

    db $8f

    add b                                         ; $5467: $80
    ld [hl], e                                    ; $5468: $73

    db $66

    ld e, d                                       ; $546a: $5a

    db $50, $47

    ld b, c                                       ; $546d: $41
    ld b, b                                       ; $546e: $40
    ld b, c                                       ; $546f: $41
    ld b, a                                       ; $5470: $47
    ld d, b                                       ; $5471: $50
    ld e, d                                       ; $5472: $5a
    ld h, [hl]                                    ; $5473: $66
    ld [hl], e                                    ; $5474: $73
    add b                                         ; $5475: $80

    db $88

    ld a, c                                       ; $5477: $79
    ld l, e                                       ; $5478: $6b

    db $5d, $50, $43, $39

    ld [hl-], a                                   ; $547d: $32
    jr nc, jr_008_54b2                            ; $547e: $30 $32

    add hl, sp                                    ; $5480: $39
    ld b, e                                       ; $5481: $43
    ld d, b                                       ; $5482: $50
    ld e, l                                       ; $5483: $5d
    ld l, e                                       ; $5484: $6b
    ld a, c                                       ; $5485: $79

    db $83, $74

    ld h, l                                       ; $5488: $65

    db $56, $47, $39, $2d

    inc hl                                        ; $548d: $23
    jr nz, jr_008_54b3                            ; $548e: $20 $23

    dec l                                         ; $5490: $2d
    add hl, sp                                    ; $5491: $39
    ld b, a                                       ; $5492: $47
    ld d, [hl]                                    ; $5493: $56
    ld h, l                                       ; $5494: $65
    ld [hl], h                                    ; $5495: $74
    add b                                         ; $5496: $80

    db $71

    ld h, c                                       ; $5498: $61

    db $51, $41, $32, $23

    ld d, $10                                     ; $549d: $16 $10
    ld d, $23                                     ; $549f: $16 $23
    ld [hl-], a                                   ; $54a1: $32
    ld b, c                                       ; $54a2: $41
    ld d, c                                       ; $54a3: $51
    ld h, c                                       ; $54a4: $61
    ld [hl], c                                    ; $54a5: $71
    add b                                         ; $54a6: $80

    db $70

    ld h, b                                       ; $54a8: $60

    db $50, $40, $30, $20

    stop                                          ; $54ad: $10 $00
    db $10                                        ; $54af: $10
    jr nz, jr_008_54e2                            ; $54b0: $20 $30

jr_008_54b2:
    ld b, b                                       ; $54b2: $40

jr_008_54b3:
    ld d, b                                       ; $54b3: $50
    ld h, b                                       ; $54b4: $60
    ld [hl], b                                    ; $54b5: $70
    add b                                         ; $54b6: $80
    ld [hl], c                                    ; $54b7: $71

    db $61

    ld d, c                                       ; $54b9: $51

    db $41, $32, $23

    ld d, $10                                     ; $54bd: $16 $10
    ld d, $23                                     ; $54bf: $16 $23
    ld [hl-], a                                   ; $54c1: $32
    ld b, c                                       ; $54c2: $41
    ld d, c                                       ; $54c3: $51
    ld h, c                                       ; $54c4: $61
    ld [hl], c                                    ; $54c5: $71
    add e                                         ; $54c6: $83
    ld [hl], h                                    ; $54c7: $74

    db $65

    ld d, [hl]                                    ; $54c9: $56

    db $47, $39, $2d

    inc hl                                        ; $54cd: $23
    jr nz, jr_008_54f3                            ; $54ce: $20 $23

    dec l                                         ; $54d0: $2d
    add hl, sp                                    ; $54d1: $39
    ld b, a                                       ; $54d2: $47
    ld d, [hl]                                    ; $54d3: $56
    ld h, l                                       ; $54d4: $65
    ld [hl], h                                    ; $54d5: $74

    db $88

    ld a, c                                       ; $54d7: $79

    db $6b, $5d, $50, $43

    add hl, sp                                    ; $54dc: $39
    ld [hl-], a                                   ; $54dd: $32
    jr nc, jr_008_5512                            ; $54de: $30 $32

    add hl, sp                                    ; $54e0: $39
    ld b, e                                       ; $54e1: $43

jr_008_54e2:
    ld d, b                                       ; $54e2: $50
    ld e, l                                       ; $54e3: $5d
    ld l, e                                       ; $54e4: $6b
    ld a, c                                       ; $54e5: $79

    db $8f, $80, $73, $66, $5a, $50

    ld b, a                                       ; $54ec: $47
    ld b, c                                       ; $54ed: $41
    ld b, b                                       ; $54ee: $40
    ld b, c                                       ; $54ef: $41
    ld b, a                                       ; $54f0: $47
    ld d, b                                       ; $54f1: $50
    ld e, d                                       ; $54f2: $5a

jr_008_54f3:
    ld h, [hl]                                    ; $54f3: $66
    ld [hl], e                                    ; $54f4: $73
    add b                                         ; $54f5: $80
    sub [hl]                                      ; $54f6: $96

    db $89, $7c, $71, $66, $5d

    ld d, [hl]                                    ; $54fc: $56
    ld d, c                                       ; $54fd: $51
    ld d, b                                       ; $54fe: $50
    ld d, c                                       ; $54ff: $51
    ld d, [hl]                                    ; $5500: $56
    ld e, l                                       ; $5501: $5d
    ld h, [hl]                                    ; $5502: $66
    ld [hl], c                                    ; $5503: $71
    ld a, h                                       ; $5504: $7c
    adc c                                         ; $5505: $89
    and b                                         ; $5506: $a0
    sub e                                         ; $5507: $93

    db $87, $7c, $73, $6b

    ld h, l                                       ; $550c: $65
    ld h, c                                       ; $550d: $61
    ld h, b                                       ; $550e: $60
    ld h, c                                       ; $550f: $61
    ld h, l                                       ; $5510: $65
    ld l, e                                       ; $5511: $6b

jr_008_5512:
    ld [hl], e                                    ; $5512: $73
    ld a, h                                       ; $5513: $7c
    add a                                         ; $5514: $87
    sub e                                         ; $5515: $93
    xor d                                         ; $5516: $aa
    sbc [hl]                                      ; $5517: $9e
    sub e                                         ; $5518: $93

    db $89, $80, $79

    ld [hl], h                                    ; $551c: $74
    ld [hl], c                                    ; $551d: $71
    ld [hl], b                                    ; $551e: $70
    ld [hl], c                                    ; $551f: $71
    ld [hl], h                                    ; $5520: $74

    db $79

    add b                                         ; $5522: $80
    adc c                                         ; $5523: $89
    sub e                                         ; $5524: $93
    sbc [hl]                                      ; $5525: $9e

Call_008_5526:
    push hl                                       ; $5526: $e5
    and $01                                       ; $5527: $e6 $01
    ld h, a                                       ; $5529: $67
    ld a, [$c836]                                 ; $552a: $fa $36 $c8
    and $0f                                       ; $552d: $e6 $0f
    add a                                         ; $552f: $87
    add h                                         ; $5530: $84
    ld hl, $553f                                  ; $5531: $21 $3f $55
    add l                                         ; $5534: $85
    ld l, a                                       ; $5535: $6f
    jr nc, jr_008_5539                            ; $5536: $30 $01

    inc h                                         ; $5538: $24

jr_008_5539:
    ld a, [hl]                                    ; $5539: $7e
    call Call_000_2c19                            ; $553a: $cd $19 $2c
    pop hl                                        ; $553d: $e1
    ret                                           ; $553e: $c9


    ld d, d                                       ; $553f: $52
    ld d, e                                       ; $5540: $53
    ld d, d                                       ; $5541: $52
    ld d, e                                       ; $5542: $53
    ld d, h                                       ; $5543: $54

    db $53

    ld d, h                                       ; $5545: $54
    ld d, h                                       ; $5546: $54
    ld d, d                                       ; $5547: $52
    ld d, e                                       ; $5548: $53
    ld d, d                                       ; $5549: $52
    ld d, e                                       ; $554a: $53
    ld d, d                                       ; $554b: $52
    ld d, e                                       ; $554c: $53
    ld d, d                                       ; $554d: $52
    ld d, e                                       ; $554e: $53
    ld d, d                                       ; $554f: $52
    ld d, e                                       ; $5550: $53
    ld d, d                                       ; $5551: $52
    ld d, e                                       ; $5552: $53
    ld d, d                                       ; $5553: $52
    ld d, e                                       ; $5554: $53
    ld d, d                                       ; $5555: $52
    ld d, e                                       ; $5556: $53
    ld d, d                                       ; $5557: $52
    ld d, e                                       ; $5558: $53
    ld d, d                                       ; $5559: $52
    ld d, e                                       ; $555a: $53
    ld d, d                                       ; $555b: $52
    ld d, e                                       ; $555c: $53
    ld d, d                                       ; $555d: $52
    ld d, e                                       ; $555e: $53
    call Call_000_23b6                            ; $555f: $cd $b6 $23
    xor a                                         ; $5562: $af
    ldh [$c1], a                                  ; $5563: $e0 $c1
    call Call_000_304d                            ; $5565: $cd $4d $30
    call Call_000_0341                            ; $5568: $cd $41 $03
    ld a, $01                                     ; $556b: $3e $01
    ldh [$96], a                                  ; $556d: $e0 $96
    ldh [rSVBK], a                                ; $556f: $e0 $70
    call Call_000_2683                            ; $5571: $cd $83 $26
    ld hl, $55e2                                  ; $5574: $21 $e2 $55
    ld de, $d000                                  ; $5577: $11 $00 $d0
    call Call_000_1f2f                            ; $557a: $cd $2f $1f
    ld hl, $d000                                  ; $557d: $21 $00 $d0
    ld de, $b000                                  ; $5580: $11 $00 $b0
    ld c, $80                                     ; $5583: $0e $80
    call Call_000_04db                            ; $5585: $cd $db $04
    ld hl, $d800                                  ; $5588: $21 $00 $d8
    ld de, $a800                                  ; $558b: $11 $00 $a8
    ld c, $80                                     ; $558e: $0e $80
    call Call_000_04db                            ; $5590: $cd $db $04
    ld hl, $5e87                                  ; $5593: $21 $87 $5e
    ld de, $d000                                  ; $5596: $11 $00 $d0
    call Call_000_1f2f                            ; $5599: $cd $2f $1f
    ld hl, $d000                                  ; $559c: $21 $00 $d0
    ld de, $9800                                  ; $559f: $11 $00 $98
    ld c, $40                                     ; $55a2: $0e $40
    call Call_000_04db                            ; $55a4: $cd $db $04
    ld hl, $5fd5                                  ; $55a7: $21 $d5 $5f
    ld de, $d000                                  ; $55aa: $11 $00 $d0
    call Call_000_1f2f                            ; $55ad: $cd $2f $1f
    ld hl, $d000                                  ; $55b0: $21 $00 $d0
    ld de, $b800                                  ; $55b3: $11 $00 $b8
    ld c, $40                                     ; $55b6: $0e $40
    call Call_000_04db                            ; $55b8: $cd $db $04
    xor a                                         ; $55bb: $af
    ldh [$8b], a                                  ; $55bc: $e0 $8b
    ldh [$8a], a                                  ; $55be: $e0 $8a
    ld a, $07                                     ; $55c0: $3e $07
    ldh [rWX], a                                  ; $55c2: $e0 $4b
    ld a, $90                                     ; $55c4: $3e $90
    ldh [rWY], a                                  ; $55c6: $e0 $4a
    ld hl, $603c                                  ; $55c8: $21 $3c $60
    ld de, $0008                                  ; $55cb: $11 $08 $00
    call Call_000_056c                            ; $55ce: $cd $6c $05
    call Call_000_05f6                            ; $55d1: $cd $f6 $05
    call Call_000_0371                            ; $55d4: $cd $71 $03
    rst $08                                       ; $55d7: $cf
    ld b, $cd                                     ; $55d8: $06 $cd
    add d                                         ; $55da: $82
    cpl                                           ; $55db: $2f
    ldh a, [$94]                                  ; $55dc: $f0 $94
    or a                                          ; $55de: $b7
    jr z, @-$06                                   ; $55df: $28 $f8

    ret                                           ; $55e1: $c9


    sub l                                         ; $55e2: $95
    nop                                           ; $55e3: $00
    rst $38                                       ; $55e4: $ff
    db $ec                                        ; $55e5: $ec
    rst $38                                       ; $55e6: $ff
    rst $38                                       ; $55e7: $ff
    db $ec                                        ; $55e8: $ec
    nop                                           ; $55e9: $00
    cp $ed                                        ; $55ea: $fe $ed
    rst $08                                       ; $55ec: $cf
    db $e4                                        ; $55ed: $e4
    add d                                         ; $55ee: $82
    cp a                                          ; $55ef: $bf
    nop                                           ; $55f0: $00
    ld [de], a                                    ; $55f1: $12
    nop                                           ; $55f2: $00
    ld [hl], $00                                  ; $55f3: $36 $00
    ld h, [hl]                                    ; $55f5: $66
    pop bc                                        ; $55f6: $c1
    ld [c], a                                     ; $55f7: $e2
    inc b                                         ; $55f8: $04
    rst $38                                       ; $55f9: $ff
    nop                                           ; $55fa: $00
    ld [$1900], sp                                ; $55fb: $08 $00 $19
    nop                                           ; $55fe: $00
    inc de                                        ; $55ff: $13
    nop                                           ; $5600: $00
    inc sp                                        ; $5601: $33
    jp Jump_000_3700                              ; $5602: $c3 $00 $37


    cp a                                          ; $5605: $bf
    ldh [$ce], a                                  ; $5606: $e0 $ce
    push hl                                       ; $5608: $e5
    push de                                       ; $5609: $d5
    ldh [$fa], a                                  ; $560a: $e0 $fa
    pop hl                                        ; $560c: $e1
    rst $38                                       ; $560d: $ff
    add b                                         ; $560e: $80
    add $fd                                       ; $560f: $c6 $fd
    ldh [$c8], a                                  ; $5611: $e0 $c8
    or a                                          ; $5613: $b7
    ld a, [$f4e0]                                 ; $5614: $fa $e0 $f4
    db $e3                                        ; $5617: $e3
    and $e2                                       ; $5618: $e6 $e2
    xor l                                         ; $561a: $ad
    ld d, d                                       ; $561b: $52
    cp e                                          ; $561c: $bb
    ld b, b                                       ; $561d: $40
    cp a                                          ; $561e: $bf
    and d                                         ; $561f: $a2
    db $e3                                        ; $5620: $e3
    rst $38                                       ; $5621: $ff
    rst $38                                       ; $5622: $ff
    ld bc, $e0fd                                  ; $5623: $01 $fd $e0
    ld l, e                                       ; $5626: $6b
    pop af                                        ; $5627: $f1
    sub l                                         ; $5628: $95
    ld a, [$92e0]                                 ; $5629: $fa $e0 $92
    db $e4                                        ; $562c: $e4
    adc $e1                                       ; $562d: $ce $e1
    and e                                         ; $562f: $a3
    call c, $a1de                                 ; $5630: $dc $de $a1
    db $fc                                        ; $5633: $fc
    adc $e3                                       ; $5634: $ce $e3
    ld l, a                                       ; $5636: $6f
    pop hl                                        ; $5637: $e1
    nop                                           ; $5638: $00
    rst $38                                       ; $5639: $ff
    dec l                                         ; $563a: $2d
    jp nc, Jump_000_0df2                          ; $563b: $d2 $f2 $0d

    cp h                                          ; $563e: $bc
    ld h, l                                       ; $563f: $65
    db $e3                                        ; $5640: $e3
    adc $e3                                       ; $5641: $ce $e3
    dec de                                        ; $5643: $1b
    push hl                                       ; $5644: $e5
    push af                                       ; $5645: $f5
    dec bc                                        ; $5646: $0b
    adc $e3                                       ; $5647: $ce $e3
    ld l, [hl]                                    ; $5649: $6e
    adc $5f                                       ; $564a: $ce $5f
    db $ec                                        ; $564c: $ec
    ld [hl], a                                    ; $564d: $77
    nop                                           ; $564e: $00
    ld a, a                                       ; $564f: $7f
    cp $e0                                        ; $5650: $fe $e0
    ld c, c                                       ; $5652: $49
    pop hl                                        ; $5653: $e1
    rst $30                                       ; $5654: $f7
    ld [$f30f], sp                                ; $5655: $08 $0f $f3
    inc c                                         ; $5658: $0c
    ld sp, hl                                     ; $5659: $f9
    ld b, $2f                                     ; $565a: $06 $2f
    jp hl                                         ; $565c: $e9


    or h                                          ; $565d: $b4
    db $e3                                        ; $565e: $e3
    ld h, [hl]                                    ; $565f: $66
    push hl                                       ; $5660: $e5
    ld e, [hl]                                    ; $5661: $5e
    db $e3                                        ; $5662: $e3
    rst $38                                       ; $5663: $ff
    cp h                                          ; $5664: $bc
    jp $9ce3                                      ; $5665: $c3 $e3 $9c


    sbc a                                         ; $5668: $9f
    ldh [$f0], a                                  ; $5669: $e0 $f0
    adc a                                         ; $566b: $8f
    rst $38                                       ; $566c: $ff
    adc a                                         ; $566d: $8f
    ldh a, [$f0]                                  ; $566e: $f0 $f0
    adc a                                         ; $5670: $8f
    rst $18                                       ; $5671: $df
    and b                                         ; $5672: $a0
    add b                                         ; $5673: $80
    rst $38                                       ; $5674: $ff
    rst $38                                       ; $5675: $ff
    adc $31                                       ; $5676: $ce $31
    add hl, sp                                    ; $5678: $39
    add $c7                                       ; $5679: $c6 $c7
    jr c, jr_008_56f5                             ; $567b: $38 $78

    add a                                         ; $567d: $87
    rst $38                                       ; $567e: $ff
    adc a                                         ; $567f: $8f
    ld [hl], b                                    ; $5680: $70
    ldh a, [rIF]                                  ; $5681: $f0 $0f
    rra                                           ; $5683: $1f
    ldh [rP1], a                                  ; $5684: $e0 $00
    rst $38                                       ; $5686: $ff
    rst $38                                       ; $5687: $ff
    call z, Call_000_3b33                         ; $5688: $cc $33 $3b
    call nz, Call_000_39c6                        ; $568b: $c4 $c6 $39
    ld a, c                                       ; $568e: $79
    add [hl]                                      ; $568f: $86
    sbc $f0                                       ; $5690: $de $f0
    push hl                                       ; $5692: $e5
    dec e                                         ; $5693: $1d
    db $e3                                        ; $5694: $e3
    rst $20                                       ; $5695: $e7
    add hl, de                                    ; $5696: $19
    add d                                         ; $5697: $82
    pop hl                                        ; $5698: $e1
    rrca                                          ; $5699: $0f
    pop af                                        ; $569a: $f1
    rst $28                                       ; $569b: $ef
    ld sp, hl                                     ; $569c: $f9
    rlca                                          ; $569d: $07
    rlca                                          ; $569e: $07
    ld sp, hl                                     ; $569f: $f9
    ld c, d                                       ; $56a0: $4a
    pop hl                                        ; $56a1: $e1
    ret                                           ; $56a2: $c9


    rst $30                                       ; $56a3: $f7
    jp z, $f57f                                   ; $56a4: $ca $7f $f5

    set 6, h                                      ; $56a7: $cb $f4
    ret                                           ; $56a9: $c9


    or $cb                                        ; $56aa: $f6 $cb
    db $f4                                        ; $56ac: $f4
    cp $e1                                        ; $56ad: $fe $e1
    cp $c0                                        ; $56af: $fe $c0
    pop bc                                        ; $56b1: $c1
    ld a, a                                       ; $56b2: $7f
    rst $38                                       ; $56b3: $ff
    rra                                           ; $56b4: $1f
    rst $38                                       ; $56b5: $ff
    ld c, a                                       ; $56b6: $4f
    cp a                                          ; $56b7: $bf
    ld c, a                                       ; $56b8: $4f
    rst $38                                       ; $56b9: $ff
    cp a                                          ; $56ba: $bf
    dec hl                                        ; $56bb: $2b
    rst $18                                       ; $56bc: $df
    ld l, e                                       ; $56bd: $6b
    rst $18                                       ; $56be: $df
    rst $18                                       ; $56bf: $df
    jr nz, @-$2f                                  ; $56c0: $20 $cf

    rst $38                                       ; $56c2: $ff
    jr nc, jr_008_572c                            ; $56c3: $30 $67

    sbc b                                         ; $56c5: $98
    ld h, a                                       ; $56c6: $67
    sbc b                                         ; $56c7: $98
    inc hl                                        ; $56c8: $23
    call c, $ff23                                 ; $56c9: $dc $23 $ff
    call c, $fe01                                 ; $56cc: $dc $01 $fe
    ld bc, $f8fe                                  ; $56cf: $01 $fe $f8
    rlca                                          ; $56d2: $07
    db $fc                                        ; $56d3: $fc
    rst $38                                       ; $56d4: $ff

jr_008_56d5:
    inc bc                                        ; $56d5: $03
    sbc h                                         ; $56d6: $9c
    ld h, e                                       ; $56d7: $63
    call z, Call_008_6633                         ; $56d8: $cc $33 $66
    sbc c                                         ; $56db: $99
    ld h, [hl]                                    ; $56dc: $66
    rra                                           ; $56dd: $1f
    sbc c                                         ; $56de: $99
    ld [hl+], a                                   ; $56df: $22
    db $dd                                        ; $56e0: $dd
    ld [bc], a                                    ; $56e1: $02
    db $fd                                        ; $56e2: $fd
    ld a, [$62c5]                                 ; $56e3: $fa $c5 $62
    db $eb                                        ; $56e6: $eb
    sub a                                         ; $56e7: $97
    jp nz, $83fe                                  ; $56e8: $c2 $fe $83

    jp $9b80                                      ; $56eb: $c3 $80 $9b


    db $e4                                        ; $56ee: $e4
    or $89                                        ; $56ef: $f6 $89
    call $ffb2                                    ; $56f1: $cd $b2 $ff
    cp e                                          ; $56f4: $bb

jr_008_56f5:
    call nz, $99e6                                ; $56f5: $c4 $e6 $99
    sbc c                                         ; $56f8: $99
    and $f7                                       ; $56f9: $e6 $f7
    adc b                                         ; $56fb: $88
    rst $38                                       ; $56fc: $ff
    rst $38                                       ; $56fd: $ff
    nop                                           ; $56fe: $00
    rst $08                                       ; $56ff: $cf
    jr nc, jr_008_5772                            ; $5700: $30 $70

    adc a                                         ; $5702: $8f
    adc a                                         ; $5703: $8f
    ld [hl], b                                    ; $5704: $70
    rst $38                                       ; $5705: $ff
    halt                                          ; $5706: $76
    adc c                                         ; $5707: $89
    sbc c                                         ; $5708: $99
    ld h, [hl]                                    ; $5709: $66
    and $19                                       ; $570a: $e6 $19
    jr c, jr_008_56d5                             ; $570c: $38 $c7

    rst $38                                       ; $570e: $ff
    rst $38                                       ; $570f: $ff
    nop                                           ; $5710: $00
    jp $fc3c                                      ; $5711: $c3 $3c $fc


    inc bc                                        ; $5714: $03
    inc bc                                        ; $5715: $03

jr_008_5716:
    db $fc                                        ; $5716: $fc
    rst $38                                       ; $5717: $ff
    db $fc                                        ; $5718: $fc
    inc bc                                        ; $5719: $03
    daa                                           ; $571a: $27
    ret c                                         ; $571b: $d8

    call c, Call_000_3323                         ; $571c: $dc $23 $33
    call z, $ffff                                 ; $571f: $cc $ff $ff
    ld bc, $619f                                  ; $5722: $01 $9f $61
    ld [hl], c                                    ; $5725: $71
    adc a                                         ; $5726: $8f
    adc a                                         ; $5727: $8f
    ld [hl], c                                    ; $5728: $71
    rst $38                                       ; $5729: $ff
    ld a, c                                       ; $572a: $79
    add a                                         ; $572b: $87

jr_008_572c:
    rst $00                                       ; $572c: $c7
    add hl, sp                                    ; $572d: $39
    dec a                                         ; $572e: $3d

jr_008_572f:
    jp $1de3                                      ; $572f: $c3 $e3 $1d


    cp $6a                                        ; $5732: $fe $6a
    pop hl                                        ; $5734: $e1
    call $cdf2                                    ; $5735: $cd $f2 $cd
    or $c9                                        ; $5738: $f6 $c9
    or $cd                                        ; $573a: $f6 $cd
    db $fd                                        ; $573c: $fd
    ld a, [c]                                     ; $573d: $f2
    ld e, [hl]                                    ; $573e: $5e
    pop hl                                        ; $573f: $e1

jr_008_5740:
    ld l, e                                       ; $5740: $6b
    rst $18                                       ; $5741: $df
    dec hl                                        ; $5742: $2b
    rst $18                                       ; $5743: $df
    ld c, e                                       ; $5744: $4b
    cp a                                          ; $5745: $bf
    sbc $fe                                       ; $5746: $de $fe
    db $e3                                        ; $5748: $e3
    dec bc                                        ; $5749: $0b
    rst $38                                       ; $574a: $ff
    ld c, e                                       ; $574b: $4b
    cp a                                          ; $574c: $bf
    jr nz, jr_008_5716                            ; $574d: $20 $c7

    ld bc, $f7ff                                  ; $574f: $01 $ff $f7
    inc bc                                        ; $5752: $03
    rst $38                                       ; $5753: $ff
    rlca                                          ; $5754: $07
    db $10                                        ; $5755: $10
    jp nz, $ff10                                  ; $5756: $c2 $10 $ff

    ld h, b                                       ; $5759: $60
    rst $38                                       ; $575a: $ff

jr_008_575b:
    dec e                                         ; $575b: $1d
    ret nz                                        ; $575c: $c0

    ld c, b                                       ; $575d: $48
    ret nz                                        ; $575e: $c0

    adc b                                         ; $575f: $88
    rst $38                                       ; $5760: $ff
    jr jr_008_572f                                ; $5761: $18 $cc

    add $c4                                       ; $5763: $c6 $c4
    rst $00                                       ; $5765: $c7
    push af                                       ; $5766: $f5
    xor c                                         ; $5767: $a9
    rst $18                                       ; $5768: $df
    rst $38                                       ; $5769: $ff
    nop                                           ; $576a: $00
    rrca                                          ; $576b: $0f
    rst $38                                       ; $576c: $ff
    sbc [hl]                                      ; $576d: $9e
    cp $e0                                        ; $576e: $fe $e0
    cp [hl]                                       ; $5770: $be
    rst $38                                       ; $5771: $ff

jr_008_5772:
    rst $30                                       ; $5772: $f7
    inc a                                         ; $5773: $3c
    rst $38                                       ; $5774: $ff
    ld a, l                                       ; $5775: $7d
    cp $e0                                        ; $5776: $fe $e0
    rst $38                                       ; $5778: $ff
    rst $38                                       ; $5779: $ff
    jr nc, @+$01                                  ; $577a: $30 $ff

    rst $38                                       ; $577c: $ff
    ld [hl], b                                    ; $577d: $70
    rst $38                                       ; $577e: $ff
    ld [hl], c                                    ; $577f: $71
    rst $38                                       ; $5780: $ff
    db $e3                                        ; $5781: $e3
    rst $38                                       ; $5782: $ff
    rst $20                                       ; $5783: $e7
    rst $38                                       ; $5784: $ff
    db $fd                                        ; $5785: $fd
    rst $28                                       ; $5786: $ef
    or l                                          ; $5787: $b5
    and d                                         ; $5788: $a2
    inc c                                         ; $5789: $0c
    di                                            ; $578a: $f3
    ei                                            ; $578b: $fb
    inc b                                         ; $578c: $04
    call z, $fb33                                 ; $578d: $cc $33 $fb
    scf                                           ; $5790: $37
    ret z                                         ; $5791: $c8

    or d                                          ; $5792: $b2
    pop bc                                        ; $5793: $c1
    pop hl                                        ; $5794: $e1
    ld e, $00                                     ; $5795: $1e $00
    rst $38                                       ; $5797: $ff
    rst $00                                       ; $5798: $c7
    ld a, a                                       ; $5799: $7f
    jr c, jr_008_575b                             ; $579a: $38 $bf

    ld b, b                                       ; $579c: $40
    ld [hl], b                                    ; $579d: $70
    adc a                                         ; $579e: $8f
    rst $08                                       ; $579f: $cf
    jr nc, jr_008_5740                            ; $57a0: $30 $9e

    pop bc                                        ; $57a2: $c1
    rst $38                                       ; $57a3: $ff
    di                                            ; $57a4: $f3
    inc c                                         ; $57a5: $0c
    nop                                           ; $57a6: $00
    rst $38                                       ; $57a7: $ff
    ld a, $c1                                     ; $57a8: $3e $c1
    pop bc                                        ; $57aa: $c1
    ld a, $ff                                     ; $57ab: $3e $ff
    ld a, a                                       ; $57ad: $7f
    add b                                         ; $57ae: $80
    add b                                         ; $57af: $80
    ld a, a                                       ; $57b0: $7f
    ld a, a                                       ; $57b1: $7f
    add b                                         ; $57b2: $80
    ret nz                                        ; $57b3: $c0

    ccf                                           ; $57b4: $3f
    rst $38                                       ; $57b5: $ff
    ccf                                           ; $57b6: $3f
    ret nz                                        ; $57b7: $c0

    nop                                           ; $57b8: $00
    rst $38                                       ; $57b9: $ff
    ccf                                           ; $57ba: $3f
    ret nz                                        ; $57bb: $c0

    ldh [$1f], a                                  ; $57bc: $e0 $1f
    rst $38                                       ; $57be: $ff
    rra                                           ; $57bf: $1f
    ldh [$f0], a                                  ; $57c0: $e0 $f0
    rrca                                          ; $57c2: $0f
    adc a                                         ; $57c3: $8f
    ld [hl], b                                    ; $57c4: $70
    ld [hl], b                                    ; $57c5: $70
    adc a                                         ; $57c6: $8f
    rst $38                                       ; $57c7: $ff
    rst $18                                       ; $57c8: $df
    jr nz, jr_008_57cb                            ; $57c9: $20 $00

jr_008_57cb:
    rst $38                                       ; $57cb: $ff
    cp d                                          ; $57cc: $ba
    ld a, l                                       ; $57cd: $7d
    ld b, l                                       ; $57ce: $45
    add $ff                                       ; $57cf: $c6 $ff
    rst $00                                       ; $57d1: $c7
    ld b, h                                       ; $57d2: $44
    ld b, h                                       ; $57d3: $44
    rst $00                                       ; $57d4: $c7
    rst $00                                       ; $57d5: $c7
    ld b, h                                       ; $57d6: $44
    call nz, $ff47                                ; $57d7: $c4 $47 $ff
    ld b, a                                       ; $57da: $47
    call nz, $c744                                ; $57db: $c4 $44 $c7
    rst $20                                       ; $57de: $e7
    jr jr_008_5819                                ; $57df: $18 $38

    rst $00                                       ; $57e1: $c7
    rst $38                                       ; $57e2: $ff
    adc a                                         ; $57e3: $8f
    ld [hl], b                                    ; $57e4: $70
    ld e, b                                       ; $57e5: $58
    cp a                                          ; $57e6: $bf
    xor a                                         ; $57e7: $af
    ld h, h                                       ; $57e8: $64
    rst $20                                       ; $57e9: $e7
    daa                                           ; $57ea: $27
    rst $38                                       ; $57eb: $ff
    inc h                                         ; $57ec: $24
    db $e4                                        ; $57ed: $e4
    inc h                                         ; $57ee: $24
    db $e4                                        ; $57ef: $e4
    inc c                                         ; $57f0: $0c
    di                                            ; $57f1: $f3
    ld sp, hl                                     ; $57f2: $f9
    rlca                                          ; $57f3: $07
    rst $38                                       ; $57f4: $ff
    swap [hl]                                     ; $57f5: $cb $36
    ld [hl], $cc                                  ; $57f7: $36 $cc
    db $f4                                        ; $57f9: $f4
    inc c                                         ; $57fa: $0c
    sbc h                                         ; $57fb: $9c
    db $e4                                        ; $57fc: $e4
    rst $28                                       ; $57fd: $ef
    db $f4                                        ; $57fe: $f4
    ld a, h                                       ; $57ff: $7c
    jr jr_008_580e                                ; $5800: $18 $0c

    and b                                         ; $5802: $a0
    ldh [$c0], a                                  ; $5803: $e0 $c0
    ld [hl], b                                    ; $5805: $70
    ld c, a                                       ; $5806: $4f
    rst $38                                       ; $5807: $ff
    ld c, a                                       ; $5808: $4f
    ld [hl], b                                    ; $5809: $70
    ld a, b                                       ; $580a: $78
    ld b, a                                       ; $580b: $47
    ld [hl], a                                    ; $580c: $77
    ld a, b                                       ; $580d: $78

jr_008_580e:
    ld c, e                                       ; $580e: $4b
    ld c, h                                       ; $580f: $4c
    ei                                            ; $5810: $fb
    ld c, b                                       ; $5811: $48
    rrca                                          ; $5812: $0f
    ret nc                                        ; $5813: $d0

    db $e3                                        ; $5814: $e3
    ld a, b                                       ; $5815: $78
    add a                                         ; $5816: $87
    add a                                         ; $5817: $87
    ld a, b                                       ; $5818: $78

jr_008_5819:
    ld hl, sp-$09                                 ; $5819: $f8 $f7
    rlca                                          ; $581b: $07
    rlca                                          ; $581c: $07
    ld hl, sp+$6a                                 ; $581d: $f8 $6a
    and c                                         ; $581f: $a1
    inc a                                         ; $5820: $3c
    jp Jump_000_38c7                              ; $5821: $c3 $c7 $38


    rst $38                                       ; $5824: $ff
    ld sp, hl                                     ; $5825: $f9
    ld b, $0e                                     ; $5826: $06 $0e
    pop af                                        ; $5828: $f1
    or $09                                        ; $5829: $f6 $09
    add hl, de                                    ; $582b: $19
    and $fd                                       ; $582c: $e6 $fd
    rst $20                                       ; $582e: $e7
    rra                                           ; $582f: $1f
    ldh [$dc], a                                  ; $5830: $e0 $dc
    inc hl                                        ; $5832: $23
    ld h, a                                       ; $5833: $67
    sbc b                                         ; $5834: $98
    cp b                                          ; $5835: $b8
    ld b, a                                       ; $5836: $47
    rst $38                                       ; $5837: $ff
    rst $08                                       ; $5838: $cf
    jr nc, @-$08                                  ; $5839: $30 $f6

    add hl, bc                                    ; $583b: $09
    add hl, sp                                    ; $583c: $39
    add $cf                                       ; $583d: $c6 $cf
    jr nc, jr_008_58bc                            ; $583f: $30 $7b

    rst $38                                       ; $5841: $ff
    nop                                           ; $5842: $00
    ld h, d                                       ; $5843: $62
    pop hl                                        ; $5844: $e1
    ld sp, $fece                                  ; $5845: $31 $ce $fe
    ld bc, $c1ac                                  ; $5848: $01 $ac $c1
    rst $38                                       ; $584b: $ff
    adc a                                         ; $584c: $8f
    ld [hl], b                                    ; $584d: $70
    rst $38                                       ; $584e: $ff
    nop                                           ; $584f: $00
    sbc d                                         ; $5850: $9a
    ld h, l                                       ; $5851: $65
    halt                                          ; $5852: $76
    adc c                                         ; $5853: $89
    rst $28                                       ; $5854: $ef
    call Call_000_3b32                            ; $5855: $cd $32 $3b
    call nz, $e1d0                                ; $5858: $c4 $d0 $e1
    rst $30                                       ; $585b: $f7
    ld [$fdc7], sp                                ; $585c: $08 $c7 $fd
    ld b, h                                       ; $585f: $44
    halt                                          ; $5860: $76
    pop hl                                        ; $5861: $e1
    rst $00                                       ; $5862: $c7
    ld b, e                                       ; $5863: $43
    ld b, b                                       ; $5864: $40
    ret nz                                        ; $5865: $c0

    ret nz                                        ; $5866: $c0

    ld b, b                                       ; $5867: $40
    rst $38                                       ; $5868: $ff
    ret nz                                        ; $5869: $c0

    ld b, b                                       ; $586a: $40
    ccf                                           ; $586b: $3f
    rst $38                                       ; $586c: $ff
    db $e4                                        ; $586d: $e4
    inc h                                         ; $586e: $24
    and h                                         ; $586f: $a4
    ld h, h                                       ; $5870: $64
    rst $38                                       ; $5871: $ff
    inc h                                         ; $5872: $24
    db $e4                                        ; $5873: $e4
    call nz, Call_000_24e4                        ; $5874: $c4 $e4 $24
    inc h                                         ; $5877: $24
    inc [hl]                                      ; $5878: $34
    inc h                                         ; $5879: $24
    rst $38                                       ; $587a: $ff
    inc [hl]                                      ; $587b: $34
    inc [hl]                                      ; $587c: $34
    set 7, a                                      ; $587d: $cb $ff
    inc c                                         ; $587f: $0c
    inc b                                         ; $5880: $04
    inc b                                         ; $5881: $04
    inc b                                         ; $5882: $04
    rst $30                                       ; $5883: $f7
    ld h, h                                       ; $5884: $64
    ld b, h                                       ; $5885: $44
    ld h, h                                       ; $5886: $64
    rst $38                                       ; $5887: $ff
    db $e4                                        ; $5888: $e4
    sbc e                                         ; $5889: $9b
    rst $38                                       ; $588a: $ff
    rra                                           ; $588b: $1f
    ld [$34ff], sp                                ; $588c: $08 $ff $34
    dec sp                                        ; $588f: $3b
    scf                                           ; $5890: $37
    jr jr_008_58a3                                ; $5891: $18 $10

    rra                                           ; $5893: $1f
    dec de                                        ; $5894: $1b
    inc c                                         ; $5895: $0c
    cp a                                          ; $5896: $bf
    ld c, [hl]                                    ; $5897: $4e
    ld b, l                                       ; $5898: $45
    ld h, l                                       ; $5899: $65
    ld b, [hl]                                    ; $589a: $46
    cp c                                          ; $589b: $b9
    cp $50                                        ; $589c: $fe $50
    jp $ff9b                                      ; $589e: $c3 $9b $ff


    ld h, h                                       ; $58a1: $64
    ld l, h                                       ; $58a2: $6c

jr_008_58a3:
    sub e                                         ; $58a3: $93
    rst $00                                       ; $58a4: $c7
    jr c, @-$06                                   ; $58a5: $38 $f8

    rlca                                          ; $58a7: $07
    rrca                                          ; $58a8: $0f
    ld a, a                                       ; $58a9: $7f
    ldh a, [rIE]                                  ; $58aa: $f0 $ff
    nop                                           ; $58ac: $00
    sbc [hl]                                      ; $58ad: $9e
    ld h, c                                       ; $58ae: $61
    ld [hl], c                                    ; $58af: $71
    adc [hl]                                      ; $58b0: $8e
    ld e, [hl]                                    ; $58b1: $5e
    pop hl                                        ; $58b2: $e1
    rst $38                                       ; $58b3: $ff
    rst $00                                       ; $58b4: $c7
    jr c, @+$3e                                   ; $58b5: $38 $3c

    jp $1ce3                                      ; $58b7: $c3 $e3 $1c


    ld e, $e1                                     ; $58ba: $1e $e1

jr_008_58bc:
    rst $38                                       ; $58bc: $ff
    di                                            ; $58bd: $f3
    inc c                                         ; $58be: $0c
    rrca                                          ; $58bf: $0f
    ldh a, [$d8]                                  ; $58c0: $f0 $d8
    ccf                                           ; $58c2: $3f
    xor a                                         ; $58c3: $af
    ld h, h                                       ; $58c4: $64
    ei                                            ; $58c5: $fb
    ld h, a                                       ; $58c6: $67
    and a                                         ; $58c7: $a7
    xor e                                         ; $58c8: $ab
    ldh [$e4], a                                  ; $58c9: $e0 $e4
    ld [hl-], a                                   ; $58cb: $32
    call Call_000_02fd                            ; $58cc: $cd $fd $02
    ei                                            ; $58cf: $fb
    inc bc                                        ; $58d0: $03
    db $fc                                        ; $58d1: $fc
    ld [hl], d                                    ; $58d2: $72
    ldh [rIE], a                                  ; $58d3: $e0 $ff
    cp h                                          ; $58d5: $bc
    call nz, Call_008_7cf4                        ; $58d6: $c4 $f4 $7c
    rst $38                                       ; $58d9: $ff
    dec de                                        ; $58da: $1b
    rrca                                          ; $58db: $0f
    ld a, c                                       ; $58dc: $79
    add [hl]                                      ; $58dd: $86
    add $39                                       ; $58de: $c6 $39
    ld e, a                                       ; $58e0: $5f
    ldh [rIE], a                                  ; $58e1: $e0 $ff
    and b                                         ; $58e3: $a0
    cp a                                          ; $58e4: $bf
    or a                                          ; $58e5: $b7
    cp b                                          ; $58e6: $b8
    ld [$0d0f], sp                                ; $58e7: $08 $0f $0d
    dec bc                                        ; $58ea: $0b
    rst $38                                       ; $58eb: $ff
    or e                                          ; $58ec: $b3
    cp [hl]                                       ; $58ed: $be
    call z, Call_000_3a33                         ; $58ee: $cc $33 $3a
    push bc                                       ; $58f1: $c5
    call nz, Call_008_7f3b                        ; $58f2: $c4 $3b $7f
    ld a, c                                       ; $58f5: $79
    add [hl]                                      ; $58f6: $86

jr_008_58f7:
    ld [hl], e                                    ; $58f7: $73
    rst $38                                       ; $58f8: $ff
    ret c                                         ; $58f9: $d8

    adc h                                         ; $58fa: $8c
    adc h                                         ; $58fb: $8c
    add h                                         ; $58fc: $84
    ldh [$ef], a                                  ; $58fd: $e0 $ef
    dec sp                                        ; $58ff: $3b
    call nz, $837c                                ; $5900: $c4 $7c $83
    and [hl]                                      ; $5903: $a6
    pop hl                                        ; $5904: $e1
    ld h, [hl]                                    ; $5905: $66
    rst $38                                       ; $5906: $ff
    pop af                                        ; $5907: $f1
    rst $38                                       ; $5908: $ff
    sbc c                                         ; $5909: $99
    sbc c                                         ; $590a: $99
    ld [$0808], sp                                ; $590b: $08 $08 $08
    jr jr_008_58f7                                ; $590e: $18 $e7

    or d                                          ; $5910: $b2
    rst $38                                       ; $5911: $ff
    ld c, l                                       ; $5912: $4d
    cpl                                           ; $5913: $2f
    ret nc                                        ; $5914: $d0

    ld l, b                                       ; $5915: $68
    sub a                                         ; $5916: $97
    jp c, $eee5                                   ; $5917: $da $e5 $ee

    rst $38                                       ; $591a: $ff
    ccf                                           ; $591b: $3f
    inc sp                                        ; $591c: $33
    ld de, $1111                                  ; $591d: $11 $11 $11
    ld a, [de]                                    ; $5920: $1a
    push hl                                       ; $5921: $e5
    ld h, e                                       ; $5922: $63
    rst $38                                       ; $5923: $ff
    sbc a                                         ; $5924: $9f
    call nz, $943c                                ; $5925: $c4 $3c $94
    ld l, h                                       ; $5928: $6c
    inc d                                         ; $5929: $14
    db $ec                                        ; $592a: $ec

jr_008_592b:
    db $ec                                        ; $592b: $ec
    rst $38                                       ; $592c: $ff
    inc d                                         ; $592d: $14
    cp b                                          ; $592e: $b8
    ld a, h                                       ; $592f: $7c
    ld h, [hl]                                    ; $5930: $66
    call nz, $cb34                                ; $5931: $c4 $34 $cb
    call c, $e3ff                                 ; $5934: $dc $ff $e3
    ld h, e                                       ; $5937: $63
    inc a                                         ; $5938: $3c
    ld [hl], $19                                  ; $5939: $36 $19
    dec de                                        ; $593b: $1b
    rrca                                          ; $593c: $0f
    ld [$0cff], sp                                ; $593d: $08 $ff $0c
    ld c, h                                       ; $5940: $4c
    ld b, h                                       ; $5941: $44
    ld c, a                                       ; $5942: $4f
    ld b, a                                       ; $5943: $47
    ld a, c                                       ; $5944: $79
    add [hl]                                      ; $5945: $86
    ld b, [hl]                                    ; $5946: $46
    ld l, l                                       ; $5947: $6d
    cp c                                          ; $5948: $b9
    and b                                         ; $5949: $a0
    push hl                                       ; $594a: $e5
    add hl, bc                                    ; $594b: $09
    rrca                                          ; $594c: $0f
    and b                                         ; $594d: $a0
    pop hl                                        ; $594e: $e1
    dec sp                                        ; $594f: $3b
    call nz, $81f0                                ; $5950: $c4 $f0 $81
    rst $38                                       ; $5953: $ff
    ld [hl], a                                    ; $5954: $77
    ld hl, sp-$28                                 ; $5955: $f8 $d8
    adc a                                         ; $5957: $8f
    adc [hl]                                      ; $5958: $8e
    dec b                                         ; $5959: $05
    dec b                                         ; $595a: $05
    rlca                                          ; $595b: $07
    rst $38                                       ; $595c: $ff
    db $ed                                        ; $595d: $ed
    ld e, $1a                                     ; $595e: $1e $1a
    di                                            ; $5960: $f3
    di                                            ; $5961: $f3
    ld [hl+], a                                   ; $5962: $22
    ld h, d                                       ; $5963: $62
    and e                                         ; $5964: $a3
    rst $38                                       ; $5965: $ff
    and e                                         ; $5966: $a3
    ld h, d                                       ; $5967: $62
    and e                                         ; $5968: $a3
    ld h, d                                       ; $5969: $62
    ld [c], a                                     ; $596a: $e2
    jp $0382                                      ; $596b: $c3 $82 $03


    rst $38                                       ; $596e: $ff
    ld e, $e1                                     ; $596f: $1e $e1
    pop hl                                        ; $5971: $e1
    ld e, $9f                                     ; $5972: $1e $9f
    ld h, b                                       ; $5974: $60
    ld h, b                                       ; $5975: $60
    sbc a                                         ; $5976: $9f
    ld a, a                                       ; $5977: $7f
    rst $18                                       ; $5978: $df
    jr nz, jr_008_592b                            ; $5979: $20 $b0

    ld c, a                                       ; $597b: $4f
    ld a, a                                       ; $597c: $7f
    add b                                         ; $597d: $80
    nop                                           ; $597e: $00
    ldh a, [$c2]                                  ; $597f: $f0 $c2
    ei                                            ; $5981: $fb
    ld h, h                                       ; $5982: $64
    and h                                         ; $5983: $a4
    ld b, [hl]                                    ; $5984: $46
    pop hl                                        ; $5985: $e1
    db $f4                                        ; $5986: $f4
    inc h                                         ; $5987: $24
    inc d                                         ; $5988: $14
    db $f4                                        ; $5989: $f4
    set 7, a                                      ; $598a: $cb $ff
    ccf                                           ; $598c: $3f
    rrca                                          ; $598d: $0f
    inc b                                         ; $598e: $04
    ld b, $05                                     ; $598f: $06 $05
    ld h, l                                       ; $5991: $65
    ld b, [hl]                                    ; $5992: $46
    ld h, [hl]                                    ; $5993: $66
    rst $38                                       ; $5994: $ff
    ld h, l                                       ; $5995: $65
    ld h, a                                       ; $5996: $67
    ld h, h                                       ; $5997: $64
    ld h, h                                       ; $5998: $64
    ld h, a                                       ; $5999: $67
    ld h, a                                       ; $599a: $67
    ld h, h                                       ; $599b: $64
    sbc c                                         ; $599c: $99
    rst $38                                       ; $599d: $ff
    cp $b6                                        ; $599e: $fe $b6
    xor h                                         ; $59a0: $ac
    xor h                                         ; $59a1: $ac
    cp b                                          ; $59a2: $b8
    cp b                                          ; $59a3: $b8
    sbc b                                         ; $59a4: $98
    sub h                                         ; $59a5: $94
    rst $38                                       ; $59a6: $ff
    sbc b                                         ; $59a7: $98
    call c, $4e8c                                 ; $59a8: $dc $8c $4e
    call z, $cf4b                                 ; $59ab: $cc $4b $cf
    or [hl]                                       ; $59ae: $b6
    rst $38                                       ; $59af: $ff
    ld a, c                                       ; $59b0: $79
    ld c, h                                       ; $59b1: $4c
    ld b, h                                       ; $59b2: $44
    jr jr_008_59c1                                ; $59b3: $18 $0c

    ld [hl], h                                    ; $59b5: $74
    inc a                                         ; $59b6: $3c
    ld h, h                                       ; $59b7: $64
    rst $38                                       ; $59b8: $ff
    ld a, h                                       ; $59b9: $7c
    inc [hl]                                      ; $59ba: $34
    inc e                                         ; $59bb: $1c
    inc e                                         ; $59bc: $1c
    inc c                                         ; $59bd: $0c
    adc h                                         ; $59be: $8c
    inc c                                         ; $59bf: $0c
    di                                            ; $59c0: $f3

jr_008_59c1:
    rst $38                                       ; $59c1: $ff
    rst $38                                       ; $59c2: $ff
    ld [hl], b                                    ; $59c3: $70
    jr c, @-$25                                   ; $59c4: $38 $d9

    ld l, b                                       ; $59c6: $68
    adc c                                         ; $59c7: $89
    ld sp, hl                                     ; $59c8: $f9
    cp c                                          ; $59c9: $b9
    rst $38                                       ; $59ca: $ff
    ret                                           ; $59cb: $c9


    ret                                           ; $59cc: $c9


    cp c                                          ; $59cd: $b9
    ret                                           ; $59ce: $c9


    cp c                                          ; $59cf: $b9
    sbc c                                         ; $59d0: $99
    jp hl                                         ; $59d1: $e9


    ld [hl], $ff                                  ; $59d2: $36 $ff
    rst $08                                       ; $59d4: $cf
    pop hl                                        ; $59d5: $e1
    ld [hl], c                                    ; $59d6: $71
    sbc c                                         ; $59d7: $99
    pop af                                        ; $59d8: $f1
    add hl, bc                                    ; $59d9: $09
    ld hl, sp-$04                                 ; $59da: $f8 $fc
    rst $38                                       ; $59dc: $ff
    ld [$4cb4], sp                                ; $59dd: $08 $b4 $4c
    ld b, $fc                                     ; $59e0: $06 $fc
    inc bc                                        ; $59e2: $03
    cp $0d                                        ; $59e3: $fe $0d
    rst $38                                       ; $59e5: $ff
    di                                            ; $59e6: $f3
    ld b, [hl]                                    ; $59e7: $46
    add $4e                                       ; $59e8: $c6 $4e
    add $ca                                       ; $59ea: $c6 $ca
    adc [hl]                                      ; $59ec: $8e
    ld c, $ff                                     ; $59ed: $0e $ff
    ld a, [bc]                                    ; $59ef: $0a
    ld a, [de]                                    ; $59f0: $1a
    ld c, $36                                     ; $59f1: $0e $36
    ld a, [de]                                    ; $59f3: $1a
    ld h, d                                       ; $59f4: $62
    ld a, $d1                                     ; $59f5: $3e $d1
    rst $38                                       ; $59f7: $ff
    rst $28                                       ; $59f8: $ef
    dec de                                        ; $59f9: $1b
    inc c                                         ; $59fa: $0c
    ld [hl], $19                                  ; $59fb: $36 $19
    ld h, c                                       ; $59fd: $61
    ld a, $4e                                     ; $59fe: $3e $4e
    rst $38                                       ; $5a00: $ff
    ld [hl], c                                    ; $5a01: $71
    ld b, e                                       ; $5a02: $43
    ld a, h                                       ; $5a03: $7c
    ld d, b                                       ; $5a04: $50
    ld l, a                                       ; $5a05: $6f
    ld h, c                                       ; $5a06: $61
    ld e, [hl]                                    ; $5a07: $5e
    or b                                          ; $5a08: $b0
    rst $28                                       ; $5a09: $ef
    rst $08                                       ; $5a0a: $cf
    ld c, a                                       ; $5a0b: $4f
    ld b, [hl]                                    ; $5a0c: $46
    ld a, [de]                                    ; $5a0d: $1a
    or b                                          ; $5a0e: $b0

jr_008_5a0f:
    ldh [$66], a                                  ; $5a0f: $e0 $66
    ld a, h                                       ; $5a11: $7c
    inc sp                                        ; $5a12: $33
    rst $38                                       ; $5a13: $ff
    ld e, $1d                                     ; $5a14: $1e $1d
    dec bc                                        ; $5a16: $0b
    adc [hl]                                      ; $5a17: $8e
    add hl, bc                                    ; $5a18: $09
    ldh a, [rIE]                                  ; $5a19: $f0 $ff
    inc bc                                        ; $5a1b: $03
    rst $38                                       ; $5a1c: $ff
    ld [bc], a                                    ; $5a1d: $02
    inc hl                                        ; $5a1e: $23
    ld [bc], a                                    ; $5a1f: $02
    ld [hl-], a                                   ; $5a20: $32
    inc hl                                        ; $5a21: $23
    inc sp                                        ; $5a22: $33
    ld [de], a                                    ; $5a23: $12
    inc bc                                        ; $5a24: $03
    rst $38                                       ; $5a25: $ff
    ld [bc], a                                    ; $5a26: $02
    add e                                         ; $5a27: $83
    ld [bc], a                                    ; $5a28: $02
    ld [c], a                                     ; $5a29: $e2
    db $e3                                        ; $5a2a: $e3
    db $dd                                        ; $5a2b: $dd
    ld a, $ff                                     ; $5a2c: $3e $ff
    rst $38                                       ; $5a2e: $ff
    nop                                           ; $5a2f: $00
    rst $00                                       ; $5a30: $c7
    jr c, jr_008_5a6b                             ; $5a31: $38 $38

    rst $00                                       ; $5a33: $c7
    cp e                                          ; $5a34: $bb
    ld a, h                                       ; $5a35: $7c
    ld l, h                                       ; $5a36: $6c
    sbc [hl]                                      ; $5a37: $9e
    xor [hl]                                      ; $5a38: $ae
    and b                                         ; $5a39: $a0
    ld l, [hl]                                    ; $5a3a: $6e
    push bc                                       ; $5a3b: $c5
    cp c                                          ; $5a3c: $b9
    ld a, [hl]                                    ; $5a3d: $7e
    adc h                                         ; $5a3e: $8c
    pop bc                                        ; $5a3f: $c1
    ld a, [hl]                                    ; $5a40: $7e
    pop bc                                        ; $5a41: $c1
    rst $08                                       ; $5a42: $cf
    rst $30                                       ; $5a43: $f7
    jr nc, jr_008_5a78                            ; $5a44: $30 $32

    call Call_008_614e                            ; $5a46: $cd $4e $61
    rlca                                          ; $5a49: $07
    rst $38                                       ; $5a4a: $ff
    ld hl, sp+$08                                 ; $5a4b: $f8 $08
    ei                                            ; $5a4d: $fb
    ld [$fcf8], sp                                ; $5a4e: $08 $f8 $fc
    db $e3                                        ; $5a51: $e3
    xor b                                         ; $5a52: $a8
    ld e, b                                       ; $5a53: $58
    ld [$ccf8], sp                                ; $5a54: $08 $f8 $cc
    rst $38                                       ; $5a57: $ff
    di                                            ; $5a58: $f3
    ld [hl], d                                    ; $5a59: $72
    dec a                                         ; $5a5a: $3d
    jr jr_008_5a6c                                ; $5a5b: $18 $0f

    dec c                                         ; $5a5d: $0d
    ld b, $c7                                     ; $5a5e: $06 $c7
    ei                                            ; $5a60: $fb
    add e                                         ; $5a61: $83
    jp nz, $e1ff                                  ; $5a62: $c2 $ff $e1

    add d                                         ; $5a65: $82
    ld l, [hl]                                    ; $5a66: $6e
    sub c                                         ; $5a67: $91
    ld e, b                                       ; $5a68: $58
    and a                                         ; $5a69: $a7
    rst $38                                       ; $5a6a: $ff

jr_008_5a6b:
    inc [hl]                                      ; $5a6b: $34

jr_008_5a6c:
    sra l                                         ; $5a6c: $cb $2d
    jp nc, $feb1                                  ; $5a6e: $d2 $b1 $fe

    ld a, b                                       ; $5a71: $78
    ld c, a                                       ; $5a72: $4f
    db $fd                                        ; $5a73: $fd
    ld c, [hl]                                    ; $5a74: $4e
    ldh a, [$c0]                                  ; $5a75: $f0 $c0
    ld h, b                                       ; $5a77: $60

jr_008_5a78:
    sbc a                                         ; $5a78: $9f
    pop hl                                        ; $5a79: $e1
    ld e, $8b                                     ; $5a7a: $1e $8b
    ld [hl], h                                    ; $5a7c: $74
    rst $28                                       ; $5a7d: $ef
    sbc d                                         ; $5a7e: $9a
    ld h, l                                       ; $5a7f: $65
    jr c, @+$01                                   ; $5a80: $38 $ff

    xor [hl]                                      ; $5a82: $ae
    ldh [$83], a                                  ; $5a83: $e0 $83
    add e                                         ; $5a85: $83
    ld [bc], a                                    ; $5a86: $02
    rst $38                                       ; $5a87: $ff
    rst $20                                       ; $5a88: $e7
    jr jr_008_5a0f                                ; $5a89: $18 $84

    ld a, e                                       ; $5a8b: $7b
    rst $30                                       ; $5a8c: $f7
    ld [$f936], sp                                ; $5a8d: $08 $36 $f9
    rst $38                                       ; $5a90: $ff
    ld l, c                                       ; $5a91: $69
    rst $08                                       ; $5a92: $cf
    res 1, [hl]                                   ; $5a93: $cb $8e
    adc [hl]                                      ; $5a95: $8e
    inc c                                         ; $5a96: $0c
    inc [hl]                                      ; $5a97: $34
    jr @+$01                                      ; $5a98: $18 $ff

    daa                                           ; $5a9a: $27
    ret c                                         ; $5a9b: $d8

    rst $28                                       ; $5a9c: $ef
    db $10                                        ; $5a9d: $10
    sbc [hl]                                      ; $5a9e: $9e
    ld h, c                                       ; $5a9f: $61
    ret nc                                        ; $5aa0: $d0

    rst $28                                       ; $5aa1: $ef
    rst $38                                       ; $5aa2: $ff
    and a                                         ; $5aa3: $a7
    jr c, jr_008_5ad4                             ; $5aa4: $38 $2e

    ld sp, $3f20                                  ; $5aa6: $31 $20 $3f
    call $ff73                                    ; $5aa9: $cd $73 $ff
    ld c, $f1                                     ; $5aac: $0e $f1
    add a                                         ; $5aae: $87
    ld a, b                                       ; $5aaf: $78
    ld de, $4cee                                  ; $5ab0: $11 $ee $4c
    cp a                                          ; $5ab3: $bf
    rst $38                                       ; $5ab4: $ff
    ld a, $f3                                     ; $5ab5: $3e $f3
    ld h, e                                       ; $5ab7: $63
    pop bc                                        ; $5ab8: $c1
    pop bc                                        ; $5ab9: $c1
    add c                                         ; $5aba: $81
    add c                                         ; $5abb: $81
    ld bc, $6cff                                  ; $5abc: $01 $ff $6c
    sub e                                         ; $5abf: $93
    ld [hl], d                                    ; $5ac0: $72
    adc l                                         ; $5ac1: $8d
    inc e                                         ; $5ac2: $1c
    db $e3                                        ; $5ac3: $e3
    jr nz, @-$1f                                  ; $5ac4: $20 $df

    rst $38                                       ; $5ac6: $ff
    sbc c                                         ; $5ac7: $99
    ld h, [hl]                                    ; $5ac8: $66
    ld [hl], c                                    ; $5ac9: $71
    cp $9e                                        ; $5aca: $fe $9e
    adc a                                         ; $5acc: $8f
    add e                                         ; $5acd: $83
    add c                                         ; $5ace: $81
    rst $38                                       ; $5acf: $ff
    ld l, a                                       ; $5ad0: $6f
    sub b                                         ; $5ad1: $90
    ld l, c                                       ; $5ad2: $69
    rst $30                                       ; $5ad3: $f7

jr_008_5ad4:
    cp e                                          ; $5ad4: $bb
    sbc [hl]                                      ; $5ad5: $9e
    adc [hl]                                      ; $5ad6: $8e
    add h                                         ; $5ad7: $84
    rst $38                                       ; $5ad8: $ff
    call nz, Call_008_7084                        ; $5ad9: $c4 $84 $70
    ldh [rNR24], a                                ; $5adc: $e0 $19
    ldh a, [$09]                                  ; $5ade: $f0 $09
    ld sp, hl                                     ; $5ae0: $f9
    rst $38                                       ; $5ae1: $ff
    ld l, [hl]                                    ; $5ae2: $6e
    pop af                                        ; $5ae3: $f1
    db $d3                                        ; $5ae4: $d3
    sbc h                                         ; $5ae5: $9c
    inc e                                         ; $5ae6: $1c
    inc de                                        ; $5ae7: $13
    ld [hl], $19                                  ; $5ae8: $36 $19
    rst $38                                       ; $5aea: $ff
    ld l, e                                       ; $5aeb: $6b
    inc [hl]                                      ; $5aec: $34
    call z, $b773                                 ; $5aed: $cc $73 $b7
    ret z                                         ; $5af0: $c8

    nop                                           ; $5af1: $00
    rst $38                                       ; $5af2: $ff
    cp a                                          ; $5af3: $bf
    ld a, a                                       ; $5af4: $7f
    add b                                         ; $5af5: $80
    adc h                                         ; $5af6: $8c
    ld [hl], e                                    ; $5af7: $73
    di                                            ; $5af8: $f3
    inc c                                         ; $5af9: $0c
    adc d                                         ; $5afa: $8a
    pop bc                                        ; $5afb: $c1
    ld a, a                                       ; $5afc: $7f
    rst $20                                       ; $5afd: $e7
    add b                                         ; $5afe: $80
    sbc h                                         ; $5aff: $9c
    ld h, e                                       ; $5b00: $63
    sbc d                                         ; $5b01: $9a
    ld b, c                                       ; $5b02: $41
    ret nc                                        ; $5b03: $d0

    adc c                                         ; $5b04: $89
    ld sp, $f8ce                                  ; $5b05: $31 $ce $f8
    rst $38                                       ; $5b08: $ff
    ld [$c838], sp                                ; $5b09: $08 $38 $c8
    ret z                                         ; $5b0c: $c8

    jr c, @+$6a                                   ; $5b0d: $38 $68

    sbc b                                         ; $5b0f: $98
    sbc b                                         ; $5b10: $98
    rst $38                                       ; $5b11: $ff
    ld [hl], b                                    ; $5b12: $70
    pop af                                        ; $5b13: $f1
    db $10                                        ; $5b14: $10
    ld de, $eef1                                  ; $5b15: $11 $f1 $ee
    rra                                           ; $5b18: $1f
    ld b, $ff                                     ; $5b19: $06 $ff
    ld [bc], a                                    ; $5b1b: $02
    inc e                                         ; $5b1c: $1c
    ld c, $72                                     ; $5b1d: $0e $72
    ld a, $d2                                     ; $5b1f: $3e $d2
    xor $82                                       ; $5b21: $ee $82
    rst $38                                       ; $5b23: $ff
    cp $f2                                        ; $5b24: $fe $f2
    adc [hl]                                      ; $5b26: $8e
    ld [bc], a                                    ; $5b27: $02
    cp $f1                                        ; $5b28: $fe $f1
    rrca                                          ; $5b2a: $0f
    dec sp                                        ; $5b2b: $3b
    rst $38                                       ; $5b2c: $ff
    ld e, $66                                     ; $5b2d: $1e $66
    inc a                                         ; $5b2f: $3c
    ld b, h                                       ; $5b30: $44
    ld a, h                                       ; $5b31: $7c
    halt                                          ; $5b32: $76
    ld c, h                                       ; $5b33: $4c
    ld d, d                                       ; $5b34: $52
    rst $38                                       ; $5b35: $ff
    ld l, [hl]                                    ; $5b36: $6e
    ld b, e                                       ; $5b37: $43
    ld a, [hl]                                    ; $5b38: $7e
    ld h, c                                       ; $5b39: $61
    ld e, a                                       ; $5b3a: $5f
    add b                                         ; $5b3b: $80
    rst $38                                       ; $5b3c: $ff
    ld h, $ff                                     ; $5b3d: $26 $ff
    ld [hl+], a                                   ; $5b3f: $22
    dec c                                         ; $5b40: $0d
    ld b, $39                                     ; $5b41: $06 $39
    rra                                           ; $5b43: $1f
    ld [hl-], a                                   ; $5b44: $32
    dec a                                         ; $5b45: $3d
    dec de                                        ; $5b46: $1b
    rst $38                                       ; $5b47: $ff
    dec c                                         ; $5b48: $0d
    dec c                                         ; $5b49: $0d
    rlca                                          ; $5b4a: $07
    push bc                                       ; $5b4b: $c5
    add a                                         ; $5b4c: $87
    ld a, d                                       ; $5b4d: $7a
    db $fd                                        ; $5b4e: $fd
    ld a, c                                       ; $5b4f: $79
    rst $38                                       ; $5b50: $ff
    jr c, jr_008_5b6f                             ; $5b51: $38 $1c

    ld [$0c8e], sp                                ; $5b53: $08 $8e $0c
    adc d                                         ; $5b56: $8a
    adc [hl]                                      ; $5b57: $8e
    sbc [hl]                                      ; $5b58: $9e
    rst $38                                       ; $5b59: $ff
    inc c                                         ; $5b5a: $0c
    inc [hl]                                      ; $5b5b: $34
    inc e                                         ; $5b5c: $1c
    ld l, l                                       ; $5b5d: $6d
    inc [hl]                                      ; $5b5e: $34
    di                                            ; $5b5f: $f3
    rst $08                                       ; $5b60: $cf
    db $d3                                        ; $5b61: $d3
    rst $38                                       ; $5b62: $ff
    xor $62                                       ; $5b63: $ee $62
    ld a, $2a                                     ; $5b65: $3e $2a
    ld [hl], $2a                                  ; $5b67: $36 $2a
    ld [hl], $61                                  ; $5b69: $36 $61
    rst $38                                       ; $5b6b: $ff
    ccf                                           ; $5b6c: $3f
    ret nz                                        ; $5b6d: $c0

    ld a, a                                       ; $5b6e: $7f

jr_008_5b6f:
    sbc b                                         ; $5b6f: $98
    rst $20                                       ; $5b70: $e7
    jr nc, @-$2f                                  ; $5b71: $30 $cf

    ld sp, $11ff                                  ; $5b73: $31 $ff $11
    ld sp, $3131                                  ; $5b76: $31 $31 $31
    ld de, $0101                                  ; $5b79: $11 $01 $01
    add b                                         ; $5b7c: $80
    rst $38                                       ; $5b7d: $ff
    nop                                           ; $5b7e: $00
    ldh [$c0], a                                  ; $5b7f: $e0 $c0
    cp h                                          ; $5b81: $bc
    ld a, b                                       ; $5b82: $78
    ld h, a                                       ; $5b83: $67
    sbc a                                         ; $5b84: $9f
    add c                                         ; $5b85: $81
    ld a, a                                       ; $5b86: $7f
    add b                                         ; $5b87: $80
    add b                                         ; $5b88: $80
    add b                                         ; $5b89: $80
    adc h                                         ; $5b8a: $8c
    adc b                                         ; $5b8b: $88
    inc c                                         ; $5b8c: $0c
    adc h                                         ; $5b8d: $8c
    rst $38                                       ; $5b8e: $ff
    db $e3                                        ; $5b8f: $e3
    rst $38                                       ; $5b90: $ff
    ld [hl], e                                    ; $5b91: $73
    rst $38                                       ; $5b92: $ff
    sbc c                                         ; $5b93: $99
    jp hl                                         ; $5b94: $e9


    sbc c                                         ; $5b95: $99
    jp hl                                         ; $5b96: $e9


    ret                                           ; $5b97: $c9


    cp c                                          ; $5b98: $b9
    res 1, c                                      ; $5b99: $cb $89
    ld sp, hl                                     ; $5b9b: $f9
    db $fc                                        ; $5b9c: $fc
    db $e3                                        ; $5b9d: $e3
    ld b, $bf                                     ; $5b9e: $06 $bf
    jr nz, jr_008_5bb2                            ; $5ba0: $20 $10

    adc c                                         ; $5ba2: $89
    ld l, [hl]                                    ; $5ba3: $6e
    sub c                                         ; $5ba4: $91
    ld a, e                                       ; $5ba5: $7b
    rst $38                                       ; $5ba6: $ff
    nop                                           ; $5ba7: $00
    db $10                                        ; $5ba8: $10
    adc c                                         ; $5ba9: $89
    ldh [$1f], a                                  ; $5baa: $e0 $1f
    rst $28                                       ; $5bac: $ef
    db $10                                        ; $5bad: $10
    and b                                         ; $5bae: $a0
    adc c                                         ; $5baf: $89
    rst $38                                       ; $5bb0: $ff
    nop                                           ; $5bb1: $00

jr_008_5bb2:
    rst $38                                       ; $5bb2: $ff
    ld [hl], $cf                                  ; $5bb3: $36 $cf
    ret                                           ; $5bb5: $c9


    add hl, sp                                    ; $5bb6: $39
    ld sp, hl                                     ; $5bb7: $f9
    add hl, bc                                    ; $5bb8: $09
    cp a                                          ; $5bb9: $bf
    sbc c                                         ; $5bba: $99
    ld l, c                                       ; $5bbb: $69
    ld l, c                                       ; $5bbc: $69
    sbc c                                         ; $5bbd: $99
    ret                                           ; $5bbe: $c9


    add hl, sp                                    ; $5bbf: $39
    halt                                          ; $5bc0: $76
    pop bc                                        ; $5bc1: $c1
    ld h, e                                       ; $5bc2: $63
    rst $38                                       ; $5bc3: $ff
    sbc h                                         ; $5bc4: $9c
    sbc b                                         ; $5bc5: $98
    ld h, a                                       ; $5bc6: $67
    ld [hl], c                                    ; $5bc7: $71
    adc [hl]                                      ; $5bc8: $8e
    adc h                                         ; $5bc9: $8c
    ld [hl], e                                    ; $5bca: $73
    ld a, b                                       ; $5bcb: $78
    rst $38                                       ; $5bcc: $ff
    add a                                         ; $5bcd: $87
    adc [hl]                                      ; $5bce: $8e
    rst $38                                       ; $5bcf: $ff
    db $d3                                        ; $5bd0: $d3
    ld [hl], c                                    ; $5bd1: $71
    ld h, c                                       ; $5bd2: $61
    ld sp, $ffd0                                  ; $5bd3: $31 $d0 $ff
    cpl                                           ; $5bd6: $2f
    add hl, sp                                    ; $5bd7: $39
    add $c3                                       ; $5bd8: $c6 $c3
    inc a                                         ; $5bda: $3c
    di                                            ; $5bdb: $f3
    inc c                                         ; $5bdc: $0c
    inc bc                                        ; $5bdd: $03
    rst $38                                       ; $5bde: $ff
    rst $38                                       ; $5bdf: $ff
    inc [hl]                                      ; $5be0: $34
    call z, $fc38                                 ; $5be1: $cc $38 $fc
    ld h, a                                       ; $5be4: $67
    rst $00                                       ; $5be5: $c7
    ld b, [hl]                                    ; $5be6: $46
    rst $38                                       ; $5be7: $ff
    cp c                                          ; $5be8: $b9
    ret nz                                        ; $5be9: $c0

    ccf                                           ; $5bea: $3f
    ld h, b                                       ; $5beb: $60
    rst $38                                       ; $5bec: $ff
    sub b                                         ; $5bed: $90
    sbc a                                         ; $5bee: $9f
    sbc e                                         ; $5bef: $9b
    db $fd                                        ; $5bf0: $fd
    sbc a                                         ; $5bf1: $9f
    add a                                         ; $5bf2: $87
    add b                                         ; $5bf3: $80
    inc b                                         ; $5bf4: $04
    sbc e                                         ; $5bf5: $9b
    sbc a                                         ; $5bf6: $9f
    ld a, a                                       ; $5bf7: $7f
    add b                                         ; $5bf8: $80
    ld [hl], b                                    ; $5bf9: $70
    rst $38                                       ; $5bfa: $ff
    adc a                                         ; $5bfb: $8f
    ld l, a                                       ; $5bfc: $6f
    ldh a, [$91]                                  ; $5bfd: $f0 $91
    sbc [hl]                                      ; $5bff: $9e
    sbc d                                         ; $5c00: $9a
    sbc l                                         ; $5c01: $9d
    ld b, $de                                     ; $5c02: $06 $de
    ld d, d                                       ; $5c04: $52
    and b                                         ; $5c05: $a0
    sbc e                                         ; $5c06: $9b
    sbc [hl]                                      ; $5c07: $9e
    xor $11                                       ; $5c08: $ee $11
    ld b, b                                       ; $5c0a: $40
    add c                                         ; $5c0b: $81
    call z, $ff33                                 ; $5c0c: $cc $33 $ff
    jr nc, @+$01                                  ; $5c0f: $30 $ff

    ld sp, hl                                     ; $5c11: $f9
    rst $08                                       ; $5c12: $cf
    adc [hl]                                      ; $5c13: $8e
    ld b, $04                                     ; $5c14: $06 $04
    ld b, $ff                                     ; $5c16: $06 $ff

jr_008_5c18:
    ld h, d                                       ; $5c18: $62
    sbc l                                         ; $5c19: $9d
    ld b, e                                       ; $5c1a: $43
    cp h                                          ; $5c1b: $bc
    ld [bc], a                                    ; $5c1c: $02
    db $fd                                        ; $5c1d: $fd
    rlca                                          ; $5c1e: $07
    ld hl, sp+$7f                                 ; $5c1f: $f8 $7f
    inc e                                         ; $5c21: $1c
    db $e3                                        ; $5c22: $e3

jr_008_5c23:
    rst $10                                       ; $5c23: $d7
    add sp, $78                                   ; $5c24: $e8 $78
    ccf                                           ; $5c26: $3f
    inc c                                         ; $5c27: $0c
    ld a, [hl]                                    ; $5c28: $7e
    add b                                         ; $5c29: $80
    rst $38                                       ; $5c2a: $ff
    sbc [hl]                                      ; $5c2b: $9e
    ld h, c                                       ; $5c2c: $61
    ld d, e                                       ; $5c2d: $53
    xor a                                         ; $5c2e: $af
    adc h                                         ; $5c2f: $8c
    ld [hl], h                                    ; $5c30: $74
    ld e, h                                       ; $5c31: $5c
    cp h                                          ; $5c32: $bc
    rst $38                                       ; $5c33: $ff
    ldh [rNR41], a                                ; $5c34: $e0 $20
    jr nz, jr_008_5c18                            ; $5c36: $20 $e0

    inc e                                         ; $5c38: $1c
    db $fc                                        ; $5c39: $fc
    swap h                                        ; $5c3a: $cb $34
    rst $38                                       ; $5c3c: $ff
    inc e                                         ; $5c3d: $1c
    db $e3                                        ; $5c3e: $e3
    rla                                           ; $5c3f: $17
    add sp, -$47                                  ; $5c40: $e8 $b9
    add $cd                                       ; $5c42: $c6 $cd
    di                                            ; $5c44: $f3
    rst $38                                       ; $5c45: $ff
    scf                                           ; $5c46: $37
    ld l, $2c                                     ; $5c47: $2e $2c
    jr c, jr_008_5c23                             ; $5c49: $38 $d8

    ldh a, [$b3]                                  ; $5c4b: $f0 $b3
    ld c, h                                       ; $5c4d: $4c
    cp $e0                                        ; $5c4e: $fe $e0
    ld h, e                                       ; $5c50: $63
    adc a                                         ; $5c51: $8f
    ldh a, [$d6]                                  ; $5c52: $f0 $d6
    ld l, c                                       ; $5c54: $69
    ld a, c                                       ; $5c55: $79
    ld h, $20                                     ; $5c56: $26 $20
    rst $00                                       ; $5c58: $c7
    ccf                                           ; $5c59: $3f
    sbc a                                         ; $5c5a: $9f
    ld h, b                                       ; $5c5b: $60
    ldh [rBCPD], a                                ; $5c5c: $e0 $69
    ld a, [de]                                    ; $5c5e: $1a
    ld hl, $83e0                                  ; $5c5f: $21 $e0 $83
    adc a                                         ; $5c62: $8f
    ld [hl], b                                    ; $5c63: $70
    cp $a0                                        ; $5c64: $fe $a0
    ld h, c                                       ; $5c66: $61
    db $fc                                        ; $5c67: $fc
    inc bc                                        ; $5c68: $03
    add sp, $18                                   ; $5c69: $e8 $18
    add hl, sp                                    ; $5c6b: $39
    pop de                                        ; $5c6c: $d1
    pop de                                        ; $5c6d: $d1
    rst $38                                       ; $5c6e: $ff
    ld sp, $9070                                  ; $5c6f: $31 $70 $90
    sub b                                         ; $5c72: $90
    ld [hl], b                                    ; $5c73: $70
    ldh a, [rNR10]                                ; $5c74: $f0 $10
    rla                                           ; $5c76: $17
    rst $38                                       ; $5c77: $ff
    di                                            ; $5c78: $f3
    db $ed                                        ; $5c79: $ed
    ld e, $31                                     ; $5c7a: $1e $31
    ld de, $1119                                  ; $5c7c: $11 $19 $11
    add hl, de                                    ; $5c7f: $19
    rst $38                                       ; $5c80: $ff
    jr jr_008_5cbf                                ; $5c81: $18 $3c

    jr jr_008_5ce9                                ; $5c83: $18 $64

    inc a                                         ; $5c85: $3c
    sub $ec                                       ; $5c86: $d6 $ec
    ld a, e                                       ; $5c88: $7b
    rst $38                                       ; $5c89: $ff
    add [hl]                                      ; $5c8a: $86
    pop bc                                        ; $5c8b: $c1
    ccf                                           ; $5c8c: $3f
    push bc                                       ; $5c8d: $c5
    ld b, [hl]                                    ; $5c8e: $46
    call $c846                                    ; $5c8f: $cd $46 $c8
    rst $38                                       ; $5c92: $ff
    adc a                                         ; $5c93: $8f
    ld [$1e0f], sp                                ; $5c94: $08 $0f $1e
    add hl, bc                                    ; $5c97: $09
    inc [hl]                                      ; $5c98: $34
    dec de                                        ; $5c99: $1b
    ld h, e                                       ; $5c9a: $63
    rst $38                                       ; $5c9b: $ff
    inc a                                         ; $5c9c: $3c
    sbc $e1                                       ; $5c9d: $de $e1
    sbc a                                         ; $5c9f: $9f
    sub b                                         ; $5ca0: $90
    sub l                                         ; $5ca1: $95
    sbc d                                         ; $5ca2: $9a
    sbc e                                         ; $5ca3: $9b
    rst $38                                       ; $5ca4: $ff
    adc h                                         ; $5ca5: $8c
    adc d                                         ; $5ca6: $8a
    adc l                                         ; $5ca7: $8d
    call Call_008_4786                            ; $5ca8: $cd $86 $47
    call nz, $ffc4                                ; $5cab: $c4 $c4 $ff
    ld b, a                                       ; $5cae: $47
    dec sp                                        ; $5caf: $3b
    db $fc                                        ; $5cb0: $fc
    sub d                                         ; $5cb1: $92
    sbc [hl]                                      ; $5cb2: $9e
    sub [hl]                                      ; $5cb3: $96
    sbc h                                         ; $5cb4: $9c
    sbc h                                         ; $5cb5: $9c
    rst $38                                       ; $5cb6: $ff
    adc h                                         ; $5cb7: $8c
    adc b                                         ; $5cb8: $88
    adc h                                         ; $5cb9: $8c
    adc $84                                       ; $5cba: $ce $84
    ld b, a                                       ; $5cbc: $47
    add $c5                                       ; $5cbd: $c6 $c5

jr_008_5cbf:
    cp a                                          ; $5cbf: $bf
    ld b, a                                       ; $5cc0: $47
    cp d                                          ; $5cc1: $ba
    ld a, l                                       ; $5cc2: $7d
    ld h, [hl]                                    ; $5cc3: $66
    ld [bc], a                                    ; $5cc4: $02
    ld h, d                                       ; $5cc5: $62
    rst $38                                       ; $5cc6: $ff
    ldh [$66], a                                  ; $5cc7: $e0 $66
    rst $38                                       ; $5cc9: $ff
    ld b, d                                       ; $5cca: $42
    inc b                                         ; $5ccb: $04
    ld b, $1a                                     ; $5ccc: $06 $1a
    ld c, $b6                                     ; $5cce: $0e $b6
    ld a, [hl-]                                   ; $5cd0: $3a
    push bc                                       ; $5cd1: $c5
    rst $38                                       ; $5cd2: $ff
    ei                                            ; $5cd3: $fb
    rlca                                          ; $5cd4: $07
    ld [bc], a                                    ; $5cd5: $02
    ld [bc], a                                    ; $5cd6: $02
    inc bc                                        ; $5cd7: $03
    inc sp                                        ; $5cd8: $33
    ld [hl+], a                                   ; $5cd9: $22
    ld [hl-], a                                   ; $5cda: $32
    db $fd                                        ; $5cdb: $fd
    inc sp                                        ; $5cdc: $33
    cp $e1                                        ; $5cdd: $fe $e1
    inc sp                                        ; $5cdf: $33
    ld [hl-], a                                   ; $5ce0: $32
    call $9cfe                                    ; $5ce1: $cd $fe $9c
    ld h, h                                       ; $5ce4: $64
    rst $38                                       ; $5ce5: $ff
    sub h                                         ; $5ce6: $94
    ld l, h                                       ; $5ce7: $6c
    inc a                                         ; $5ce8: $3c

jr_008_5ce9:
    call nz, $dc24                                ; $5ce9: $c4 $24 $dc
    ld a, [hl]                                    ; $5cec: $7e
    add h                                         ; $5ced: $84
    rst $38                                       ; $5cee: $ff
    ld a, [c]                                     ; $5cef: $f2
    ld c, $fe                                     ; $5cf0: $0e $fe
    ld [bc], a                                    ; $5cf2: $02
    pop bc                                        ; $5cf3: $c1
    ccf                                           ; $5cf4: $3f
    db $d3                                        ; $5cf5: $d3
    or b                                          ; $5cf6: $b0
    rst $38                                       ; $5cf7: $ff
    or e                                          ; $5cf8: $b3
    db $e3                                        ; $5cf9: $e3
    db $e3                                        ; $5cfa: $e3
    ld h, e                                       ; $5cfb: $63
    ld b, e                                       ; $5cfc: $43
    ld h, d                                       ; $5cfd: $62
    ld [hl], b                                    ; $5cfe: $70
    jr nz, @+$01                                  ; $5cff: $20 $ff

    jr c, jr_008_5d33                             ; $5d01: $38 $30

    dec l                                         ; $5d03: $2d
    add hl, sp                                    ; $5d04: $39
    sub $ef                                       ; $5d05: $d6 $ef
    ccf                                           ; $5d07: $3f
    db $10                                        ; $5d08: $10
    rst $38                                       ; $5d09: $ff
    dec e                                         ; $5d0a: $1d
    ld [de], a                                    ; $5d0b: $12
    inc de                                        ; $5d0c: $13
    inc e                                         ; $5d0d: $1c
    ld a, $11                                     ; $5d0e: $3e $11
    ld hl, $f73e                                  ; $5d10: $21 $3e $f7
    rst $18                                       ; $5d13: $df
    ld h, b                                       ; $5d14: $60
    add b                                         ; $5d15: $80
    jp nz, $ffa0                                  ; $5d16: $c2 $a0 $ff

    nop                                           ; $5d19: $00
    add $39                                       ; $5d1a: $c6 $39
    rst $28                                       ; $5d1c: $ef
    cp a                                          ; $5d1d: $bf
    ld b, b                                       ; $5d1e: $40
    ld h, b                                       ; $5d1f: $60
    sbc a                                         ; $5d20: $9f
    jr c, @-$1b                                   ; $5d21: $38 $e3

    cp d                                          ; $5d23: $ba
    ld b, l                                       ; $5d24: $45
    sub e                                         ; $5d25: $93
    rst $38                                       ; $5d26: $ff
    ld l, h                                       ; $5d27: $6c
    xor $11                                       ; $5d28: $ee $11
    xor c                                         ; $5d2a: $a9
    ld d, [hl]                                    ; $5d2b: $56
    ld d, [hl]                                    ; $5d2c: $56
    xor c                                         ; $5d2d: $a9
    pop de                                        ; $5d2e: $d1
    rst $30                                       ; $5d2f: $f7
    ld l, $26                                     ; $5d30: $2e $26
    reti                                          ; $5d32: $d9


jr_008_5d33:
    sub b                                         ; $5d33: $90
    ld b, c                                       ; $5d34: $41
    sbc b                                         ; $5d35: $98
    ld h, a                                       ; $5d36: $67
    ld a, a                                       ; $5d37: $7f
    add b                                         ; $5d38: $80
    rst $38                                       ; $5d39: $ff
    call nz, Call_000_3f3b                        ; $5d3a: $c4 $3b $3f
    ret nz                                        ; $5d3d: $c0

    jp Jump_008_7d3c                              ; $5d3e: $c3 $3c $7d


    add d                                         ; $5d41: $82
    xor a                                         ; $5d42: $af
    add [hl]                                      ; $5d43: $86
    ld a, c                                       ; $5d44: $79
    nop                                           ; $5d45: $00
    rst $38                                       ; $5d46: $ff
    jp nc, Jump_000_3841                          ; $5d47: $d2 $41 $38

    adc d                                         ; $5d4a: $8a
    ld b, b                                       ; $5d4b: $40
    inc a                                         ; $5d4c: $3c
    rst $38                                       ; $5d4d: $ff
    jp Jump_000_3cc3                              ; $5d4e: $c3 $c3 $3c


    ld a, [hl]                                    ; $5d51: $7e
    add c                                         ; $5d52: $81
    nop                                           ; $5d53: $00
    rst $38                                       ; $5d54: $ff
    pop hl                                        ; $5d55: $e1
    rst $38                                       ; $5d56: $ff
    ld e, $9e                                     ; $5d57: $1e $9e
    ld h, c                                       ; $5d59: $61
    ld h, c                                       ; $5d5a: $61
    sbc [hl]                                      ; $5d5b: $9e
    rst $18                                       ; $5d5c: $df
    jr nz, jr_008_5dcb                            ; $5d5d: $20 $6c

    rst $38                                       ; $5d5f: $ff
    rst $38                                       ; $5d60: $ff
    sbc [hl]                                      ; $5d61: $9e
    sub e                                         ; $5d62: $93
    sub e                                         ; $5d63: $93
    add c                                         ; $5d64: $81
    add c                                         ; $5d65: $81
    add c                                         ; $5d66: $81
    sub c                                         ; $5d67: $91
    rst $38                                       ; $5d68: $ff
    ld l, [hl]                                    ; $5d69: $6e
    ld a, h                                       ; $5d6a: $7c
    add e                                         ; $5d6b: $83
    ret nz                                        ; $5d6c: $c0

    ccf                                           ; $5d6d: $3f
    ld a, $c1                                     ; $5d6e: $3e $c1
    xor $ff                                       ; $5d70: $ee $ff
    rra                                           ; $5d72: $1f
    sbc e                                         ; $5d73: $9b
    ld [hl], c                                    ; $5d74: $71
    ld sp, $60e0                                  ; $5d75: $31 $e0 $60
    ret nz                                        ; $5d78: $c0

    ld d, l                                       ; $5d79: $55
    rst $38                                       ; $5d7a: $ff
    xor d                                         ; $5d7b: $aa
    ld d, d                                       ; $5d7c: $52
    xor l                                         ; $5d7d: $ad
    ld l, b                                       ; $5d7e: $68
    sub a                                         ; $5d7f: $97
    dec c                                         ; $5d80: $0d

jr_008_5d81:
    cp $9a                                        ; $5d81: $fe $9a
    cp a                                          ; $5d83: $bf
    ld [hl], e                                    ; $5d84: $73

jr_008_5d85:
    ld [hl-], a                                   ; $5d85: $32
    db $e3                                        ; $5d86: $e3
    ld [c], a                                     ; $5d87: $e2
    jp $b8cc                                      ; $5d88: $c3 $cc $b8


    nop                                           ; $5d8b: $00
    adc $ff                                       ; $5d8c: $ce $ff
    ld sp, $e718                                  ; $5d8e: $31 $18 $e7
    ldh a, [rIF]                                  ; $5d91: $f0 $0f
    call c, Call_000_363f                         ; $5d93: $dc $3f $36
    db $fd                                        ; $5d96: $fd
    db $e3                                        ; $5d97: $e3
    ld c, $a1                                     ; $5d98: $0e $a1
    adc [hl]                                      ; $5d9a: $8e
    ld [hl], c                                    ; $5d9b: $71
    ccf                                           ; $5d9c: $3f
    ret nz                                        ; $5d9d: $c0

    ld e, b                                       ; $5d9e: $58
    cp a                                          ; $5d9f: $bf
    rst $18                                       ; $5da0: $df
    rst $20                                       ; $5da1: $e7
    inc h                                         ; $5da2: $24
    and $e7                                       ; $5da3: $e6 $e7
    ld bc, $e0ff                                  ; $5da5: $01 $ff $e0
    and $e7                                       ; $5da8: $e6 $e7
    ld a, [$e5b0]                                 ; $5daa: $fa $b0 $e5
    jr nz, jr_008_5d85                            ; $5dad: $20 $d6

    nop                                           ; $5daf: $00
    jr nc, jr_008_5d81                            ; $5db0: $30 $cf

    nop                                           ; $5db2: $00
    rst $38                                       ; $5db3: $ff
    add c                                         ; $5db4: $81
    rst $38                                       ; $5db5: $ff
    ld a, [hl]                                    ; $5db6: $7e
    ld a, [hl]                                    ; $5db7: $7e
    add c                                         ; $5db8: $81
    pop bc                                        ; $5db9: $c1
    ld a, $3e                                     ; $5dba: $3e $3e
    pop bc                                        ; $5dbc: $c1
    db $e3                                        ; $5dbd: $e3
    rst $38                                       ; $5dbe: $ff
    inc e                                         ; $5dbf: $1c
    sbc h                                         ; $5dc0: $9c
    ld h, e                                       ; $5dc1: $63
    ld [hl], a                                    ; $5dc2: $77
    adc b                                         ; $5dc3: $88
    nop                                           ; $5dc4: $00
    rst $38                                       ; $5dc5: $ff
    ld d, l                                       ; $5dc6: $55
    rst $38                                       ; $5dc7: $ff
    xor d                                         ; $5dc8: $aa
    ld d, [hl]                                    ; $5dc9: $56
    xor c                                         ; $5dca: $a9

jr_008_5dcb:
    jp hl                                         ; $5dcb: $e9


    ld d, $6f                                     ; $5dcc: $16 $6f
    sub b                                         ; $5dce: $90
    or b                                          ; $5dcf: $b0
    rst $18                                       ; $5dd0: $df
    ld c, a                                       ; $5dd1: $4f
    rst $18                                       ; $5dd2: $df
    jr nz, @+$63                                  ; $5dd3: $20 $61

    sbc [hl]                                      ; $5dd5: $9e
    ld b, h                                       ; $5dd6: $44
    ld bc, $6699                                  ; $5dd7: $01 $99 $66
    rst $28                                       ; $5dda: $ef
    halt                                          ; $5ddb: $76
    adc c                                         ; $5ddc: $89
    rst $08                                       ; $5ddd: $cf
    jr nc, jr_008_5e4c                            ; $5dde: $30 $6c

    pop hl                                        ; $5de0: $e1
    inc e                                         ; $5de1: $1c
    db $e3                                        ; $5de2: $e3
    di                                            ; $5de3: $f3
    rst $38                                       ; $5de4: $ff
    inc c                                         ; $5de5: $0c
    rst $38                                       ; $5de6: $ff
    nop                                           ; $5de7: $00
    di                                            ; $5de8: $f3
    inc c                                         ; $5de9: $0c
    inc e                                         ; $5dea: $1c
    db $e3                                        ; $5deb: $e3
    and $ff                                       ; $5dec: $e6 $ff
    add hl, de                                    ; $5dee: $19
    dec sp                                        ; $5def: $3b
    call nz, Call_000_33cc                        ; $5df0: $c4 $cc $33
    ld [hl], a                                    ; $5df3: $77
    adc b                                         ; $5df4: $88
    cp b                                          ; $5df5: $b8
    rst $30                                       ; $5df6: $f7
    ld b, a                                       ; $5df7: $47
    rst $38                                       ; $5df8: $ff
    nop                                           ; $5df9: $00
    ldh [$89], a                                  ; $5dfa: $e0 $89
    db $e3                                        ; $5dfc: $e3
    inc e                                         ; $5dfd: $1c
    adc [hl]                                      ; $5dfe: $8e
    add a                                         ; $5dff: $87
    rst $38                                       ; $5e00: $ff
    sbc e                                         ; $5e01: $9b
    adc l                                         ; $5e02: $8d
    sub a                                         ; $5e03: $97
    sbc c                                         ; $5e04: $99
    sub c                                         ; $5e05: $91
    sbc a                                         ; $5e06: $9f
    sbc [hl]                                      ; $5e07: $9e
    sub c                                         ; $5e08: $91
    rst $38                                       ; $5e09: $ff
    sub d                                         ; $5e0a: $92
    sbc l                                         ; $5e0b: $9d
    sbc a                                         ; $5e0c: $9f
    sub b                                         ; $5e0d: $90
    ld h, b                                       ; $5e0e: $60
    rst $38                                       ; $5e0f: $ff
    ret                                           ; $5e10: $c9


    adc b                                         ; $5e11: $88
    rst $38                                       ; $5e12: $ff
    add e                                         ; $5e13: $83
    ld bc, $070e                                  ; $5e14: $01 $0e $07
    adc h                                         ; $5e17: $8c
    rrca                                          ; $5e18: $0f
    add [hl]                                      ; $5e19: $86
    add e                                         ; $5e1a: $83
    rst $38                                       ; $5e1b: $ff
    jp Jump_008_7181                              ; $5e1c: $c3 $81 $71


    pop hl                                        ; $5e1f: $e1
    ld e, $ff                                     ; $5e20: $1e $ff
    sbc l                                         ; $5e22: $9d
    adc a                                         ; $5e23: $8f
    rst $38                                       ; $5e24: $ff
    ld b, a                                       ; $5e25: $47
    add d                                         ; $5e26: $82
    ld h, d                                       ; $5e27: $62
    jp nz, $e223                                  ; $5e28: $c2 $23 $e2

    rst $20                                       ; $5e2b: $e7
    ld b, e                                       ; $5e2c: $43
    rst $38                                       ; $5e2d: $ff
    call $5847                                    ; $5e2e: $cd $47 $58
    rst $08                                       ; $5e31: $cf
    cp a                                          ; $5e32: $bf
    ld [hl], b                                    ; $5e33: $70
    sub e                                         ; $5e34: $93
    ld de, $06ff                                  ; $5e35: $11 $ff $06
    inc bc                                        ; $5e38: $03
    inc e                                         ; $5e39: $1c
    rrca                                          ; $5e3a: $0f
    dec de                                        ; $5e3b: $1b
    inc e                                         ; $5e3c: $1c
    inc c                                         ; $5e3d: $0c
    rlca                                          ; $5e3e: $07
    rst $38                                       ; $5e3f: $ff
    add a                                         ; $5e40: $87
    ld [bc], a                                    ; $5e41: $02
    ld [c], a                                     ; $5e42: $e2

jr_008_5e43:
    jp Jump_008_7ebd                              ; $5e43: $c3 $bd $7e


    rst $20                                       ; $5e46: $e7
    inc h                                         ; $5e47: $24
    rst $38                                       ; $5e48: $ff
    push hl                                       ; $5e49: $e5
    ld h, $26                                     ; $5e4a: $26 $26

jr_008_5e4c:
    db $e3                                        ; $5e4c: $e3
    ld [c], a                                     ; $5e4d: $e2
    inc hl                                        ; $5e4e: $23
    inc sp                                        ; $5e4f: $33
    pop hl                                        ; $5e50: $e1
    cp a                                          ; $5e51: $bf
    pop de                                        ; $5e52: $d1
    ld sp, $9171                                  ; $5e53: $31 $71 $91
    xor [hl]                                      ; $5e56: $ae
    ld e, a                                       ; $5e57: $5f
    and b                                         ; $5e58: $a0
    db $e3                                        ; $5e59: $e3
    inc e                                         ; $5e5a: $1c
    ld a, a                                       ; $5e5b: $7f
    rst $38                                       ; $5e5c: $ff
    rst $30                                       ; $5e5d: $f7
    ld [hl+], a                                   ; $5e5e: $22
    ld h, e                                       ; $5e5f: $63
    and d                                         ; $5e60: $a2
    or [hl]                                       ; $5e61: $b6
    ld h, e                                       ; $5e62: $63
    or b                                          ; $5e63: $b0
    ld h, c                                       ; $5e64: $61
    or [hl]                                       ; $5e65: $b6
    ret nz                                        ; $5e66: $c0

    ld l, c                                       ; $5e67: $69
    ret nz                                        ; $5e68: $c0

    ccf                                           ; $5e69: $3f
    ldh [rSB], a                                  ; $5e6a: $e0 $01
    ld bc, $c2fe                                  ; $5e6c: $01 $fe $c2
    inc hl                                        ; $5e6f: $23
    and a                                         ; $5e70: $a7
    rst $38                                       ; $5e71: $ff
    ld e, b                                       ; $5e72: $58
    add hl, sp                                    ; $5e73: $39
    add $ff                                       ; $5e74: $c6 $ff
    nop                                           ; $5e76: $00
    inc sp                                        ; $5e77: $33
    call z, $dfdc                                 ; $5e78: $cc $dc $df
    inc hl                                        ; $5e7b: $23
    ld h, e                                       ; $5e7c: $63
    sbc h                                         ; $5e7d: $9c
    cp [hl]                                       ; $5e7e: $be
    ld b, c                                       ; $5e7f: $41
    cp d                                          ; $5e80: $ba
    ld b, c                                       ; $5e81: $41
    sbc a                                         ; $5e82: $9f
    ld h, b                                       ; $5e83: $60
    nop                                           ; $5e84: $00
    nop                                           ; $5e85: $00
    nop                                           ; $5e86: $00
    ld b, l                                       ; $5e87: $45
    ld bc, $f0ff                                  ; $5e88: $01 $ff $f0
    nop                                           ; $5e8b: $00
    rst $38                                       ; $5e8c: $ff
    add sp, -$20                                  ; $5e8d: $e8 $e0
    rst $38                                       ; $5e8f: $ff
    ldh [$fb], a                                  ; $5e90: $e0 $fb
    ld c, $ff                                     ; $5e92: $0e $ff
    ldh a, [$de]                                  ; $5e94: $f0 $de
    ret nz                                        ; $5e96: $c0

    jp hl                                         ; $5e97: $e9


    jr @+$1a                                      ; $5e98: $18 $18

    ld b, $07                                     ; $5e9a: $06 $07
    rst $38                                       ; $5e9c: $ff
    ld [$1808], a                                 ; $5e9d: $ea $08 $18
    db $fd                                        ; $5ea0: $fd
    jr jr_008_5e43                                ; $5ea1: $18 $a0

    jp hl                                         ; $5ea3: $e9


    ld [hl+], a                                   ; $5ea4: $22
    ld [hl+], a                                   ; $5ea5: $22
    db $10                                        ; $5ea6: $10
    ld de, $2726                                  ; $5ea7: $11 $26 $27
    rst $38                                       ; $5eaa: $ff
    jr z, jr_008_5ed6                             ; $5eab: $28 $29

    ld a, [hl+]                                   ; $5ead: $2a
    dec hl                                        ; $5eae: $2b
    inc l                                         ; $5eaf: $2c
    dec l                                         ; $5eb0: $2d
    jr z, jr_008_5edc                             ; $5eb1: $28 $29

    cp a                                          ; $5eb3: $bf
    ld de, $122e                                  ; $5eb4: $11 $2e $12
    inc de                                        ; $5eb7: $13
    ld [hl+], a                                   ; $5eb8: $22
    ld [hl+], a                                   ; $5eb9: $22
    add b                                         ; $5eba: $80
    jp hl                                         ; $5ebb: $e9


    ld [bc], a                                    ; $5ebc: $02
    rst $38                                       ; $5ebd: $ff
    ld [bc], a                                    ; $5ebe: $02
    ld a, [de]                                    ; $5ebf: $1a
    dec de                                        ; $5ec0: $1b
    cpl                                           ; $5ec1: $2f
    jr nc, jr_008_5ef5                            ; $5ec2: $30 $31

    ld [hl-], a                                   ; $5ec4: $32
    inc sp                                        ; $5ec5: $33
    rst $38                                       ; $5ec6: $ff
    inc [hl]                                      ; $5ec7: $34
    dec [hl]                                      ; $5ec8: $35
    ld [hl], $31                                  ; $5ec9: $36 $31
    ld [hl-], a                                   ; $5ecb: $32
    scf                                           ; $5ecc: $37
    jr c, jr_008_5eeb                             ; $5ecd: $38 $1c

    rst $30                                       ; $5ecf: $f7
    dec e                                         ; $5ed0: $1d
    ld [bc], a                                    ; $5ed1: $02
    ld [bc], a                                    ; $5ed2: $02
    ld h, b                                       ; $5ed3: $60
    jp hl                                         ; $5ed4: $e9


    dec b                                         ; $5ed5: $05

jr_008_5ed6:
    dec b                                         ; $5ed6: $05
    db $10                                        ; $5ed7: $10
    ld de, $39ff                                  ; $5ed8: $11 $ff $39
    ld a, [hl-]                                   ; $5edb: $3a

jr_008_5edc:
    dec sp                                        ; $5edc: $3b
    inc a                                         ; $5edd: $3c
    dec a                                         ; $5ede: $3d
    ld a, $3f                                     ; $5edf: $3e $3f
    ld b, b                                       ; $5ee1: $40
    rst $38                                       ; $5ee2: $ff
    ld b, c                                       ; $5ee3: $41
    ld b, d                                       ; $5ee4: $42
    ld b, e                                       ; $5ee5: $43
    ld b, h                                       ; $5ee6: $44
    ld [de], a                                    ; $5ee7: $12
    inc de                                        ; $5ee8: $13
    dec b                                         ; $5ee9: $05
    dec b                                         ; $5eea: $05

jr_008_5eeb:
    cp $40                                        ; $5eeb: $fe $40
    jp hl                                         ; $5eed: $e9


    rrca                                          ; $5eee: $0f

jr_008_5eef:
    rrca                                          ; $5eef: $0f
    ld a, [de]                                    ; $5ef0: $1a
    dec de                                        ; $5ef1: $1b
    ld b, l                                       ; $5ef2: $45
    ld b, [hl]                                    ; $5ef3: $46
    ld b, a                                       ; $5ef4: $47

jr_008_5ef5:
    rst $38                                       ; $5ef5: $ff
    ld c, b                                       ; $5ef6: $48
    ld c, c                                       ; $5ef7: $49
    ld c, d                                       ; $5ef8: $4a
    ld c, e                                       ; $5ef9: $4b
    ld c, h                                       ; $5efa: $4c
    ld b, a                                       ; $5efb: $47
    ld c, l                                       ; $5efc: $4d
    ld c, [hl]                                    ; $5efd: $4e
    rst $18                                       ; $5efe: $df
    ld c, a                                       ; $5eff: $4f
    inc e                                         ; $5f00: $1c
    dec e                                         ; $5f01: $1d
    rrca                                          ; $5f02: $0f
    rrca                                          ; $5f03: $0f
    jr nz, jr_008_5eef                            ; $5f04: $20 $e9

    add hl, de                                    ; $5f06: $19
    add hl, de                                    ; $5f07: $19
    rst $38                                       ; $5f08: $ff
    db $10                                        ; $5f09: $10
    ld de, $5150                                  ; $5f0a: $11 $50 $51
    ld d, d                                       ; $5f0d: $52
    ld d, e                                       ; $5f0e: $53
    ld d, h                                       ; $5f0f: $54
    ld d, l                                       ; $5f10: $55
    rst $38                                       ; $5f11: $ff
    ld d, [hl]                                    ; $5f12: $56
    ld d, a                                       ; $5f13: $57
    ld e, b                                       ; $5f14: $58
    ld e, c                                       ; $5f15: $59
    ld e, d                                       ; $5f16: $5a
    ld e, e                                       ; $5f17: $5b
    ld [de], a                                    ; $5f18: $12
    inc de                                        ; $5f19: $13
    ei                                            ; $5f1a: $fb
    add hl, de                                    ; $5f1b: $19
    add hl, de                                    ; $5f1c: $19
    nop                                           ; $5f1d: $00
    jp hl                                         ; $5f1e: $e9


    inc hl                                        ; $5f1f: $23
    inc hl                                        ; $5f20: $23
    ld a, [de]                                    ; $5f21: $1a
    dec de                                        ; $5f22: $1b
    ld e, h                                       ; $5f23: $5c
    rst $38                                       ; $5f24: $ff
    ld e, l                                       ; $5f25: $5d
    ld e, [hl]                                    ; $5f26: $5e
    ld e, a                                       ; $5f27: $5f
    ld h, b                                       ; $5f28: $60
    ld h, c                                       ; $5f29: $61
    ld h, d                                       ; $5f2a: $62
    ld h, e                                       ; $5f2b: $63
    ld h, h                                       ; $5f2c: $64
    ld a, a                                       ; $5f2d: $7f
    ld h, l                                       ; $5f2e: $65
    ld h, [hl]                                    ; $5f2f: $66
    ld h, a                                       ; $5f30: $67
    inc e                                         ; $5f31: $1c
    dec e                                         ; $5f32: $1d
    inc hl                                        ; $5f33: $23
    inc hl                                        ; $5f34: $23
    ldh [$c9], a                                  ; $5f35: $e0 $c9
    rst $38                                       ; $5f37: $ff
    nop                                           ; $5f38: $00
    nop                                           ; $5f39: $00
    db $10                                        ; $5f3a: $10
    ld de, $6968                                  ; $5f3b: $11 $68 $69
    ld l, d                                       ; $5f3e: $6a
    ld l, e                                       ; $5f3f: $6b
    rst $38                                       ; $5f40: $ff
    ld l, h                                       ; $5f41: $6c
    ld l, l                                       ; $5f42: $6d
    ld l, [hl]                                    ; $5f43: $6e
    ld l, a                                       ; $5f44: $6f
    ld [hl], b                                    ; $5f45: $70
    ld [hl], c                                    ; $5f46: $71
    ld [hl], d                                    ; $5f47: $72
    ld [hl], e                                    ; $5f48: $73
    ei                                            ; $5f49: $fb
    ld [de], a                                    ; $5f4a: $12
    inc de                                        ; $5f4b: $13
    ld [c], a                                     ; $5f4c: $e2
    db $eb                                        ; $5f4d: $eb
    inc bc                                        ; $5f4e: $03
    inc b                                         ; $5f4f: $04
    ld a, [de]                                    ; $5f50: $1a
    dec de                                        ; $5f51: $1b
    ld [hl], h                                    ; $5f52: $74
    rst $38                                       ; $5f53: $ff
    ld [hl], l                                    ; $5f54: $75
    halt                                          ; $5f55: $76
    ld [hl], a                                    ; $5f56: $77
    ld a, b                                       ; $5f57: $78
    ld a, c                                       ; $5f58: $79
    ld a, d                                       ; $5f59: $7a
    ld a, e                                       ; $5f5a: $7b
    ld a, h                                       ; $5f5b: $7c
    ld a, a                                       ; $5f5c: $7f
    ld a, l                                       ; $5f5d: $7d
    ld a, [hl]                                    ; $5f5e: $7e
    ld a, a                                       ; $5f5f: $7f
    inc e                                         ; $5f60: $1c
    dec e                                         ; $5f61: $1d
    inc bc                                        ; $5f62: $03
    inc b                                         ; $5f63: $04
    and b                                         ; $5f64: $a0
    ret                                           ; $5f65: $c9


    rst $38                                       ; $5f66: $ff
    inc c                                         ; $5f67: $0c
    dec c                                         ; $5f68: $0d
    db $10                                        ; $5f69: $10
    ld de, $8180                                  ; $5f6a: $11 $80 $81
    add d                                         ; $5f6d: $82
    add e                                         ; $5f6e: $83
    rst $38                                       ; $5f6f: $ff
    add h                                         ; $5f70: $84
    add l                                         ; $5f71: $85
    add [hl]                                      ; $5f72: $86
    add a                                         ; $5f73: $87
    add d                                         ; $5f74: $82
    adc b                                         ; $5f75: $88
    adc c                                         ; $5f76: $89
    adc d                                         ; $5f77: $8a
    rst $28                                       ; $5f78: $ef
    ld [de], a                                    ; $5f79: $12
    inc de                                        ; $5f7a: $13
    inc c                                         ; $5f7b: $0c
    dec c                                         ; $5f7c: $0d
    add b                                         ; $5f7d: $80
    ret                                           ; $5f7e: $c9


    ld d, $17                                     ; $5f7f: $16 $17
    ld a, [de]                                    ; $5f81: $1a

jr_008_5f82:
    rst $38                                       ; $5f82: $ff
    dec de                                        ; $5f83: $1b
    adc e                                         ; $5f84: $8b
    adc h                                         ; $5f85: $8c
    adc l                                         ; $5f86: $8d
    adc [hl]                                      ; $5f87: $8e
    adc a                                         ; $5f88: $8f
    sub b                                         ; $5f89: $90
    sub c                                         ; $5f8a: $91
    rst $38                                       ; $5f8b: $ff
    sub d                                         ; $5f8c: $92
    sub e                                         ; $5f8d: $93
    sub h                                         ; $5f8e: $94
    sub l                                         ; $5f8f: $95
    sub [hl]                                      ; $5f90: $96
    inc e                                         ; $5f91: $1c
    dec e                                         ; $5f92: $1d
    ld d, $bd                                     ; $5f93: $16 $bd
    rla                                           ; $5f95: $17
    ld h, b                                       ; $5f96: $60
    ret                                           ; $5f97: $c9


    jr nz, jr_008_5fbb                            ; $5f98: $20 $21

    add hl, bc                                    ; $5f9a: $09
    ld a, [bc]                                    ; $5f9b: $0a
    rst $38                                       ; $5f9c: $ff
    ld [$db0b], a                                 ; $5f9d: $ea $0b $db
    jr nz, jr_008_5fc3                            ; $5fa0: $20 $21

    ld b, b                                       ; $5fa2: $40
    ret                                           ; $5fa3: $c9


    inc h                                         ; $5fa4: $24
    dec h                                         ; $5fa5: $25
    cp $e4                                        ; $5fa6: $fe $e4
    inc d                                         ; $5fa8: $14
    dec d                                         ; $5fa9: $15
    ld a, [de]                                    ; $5faa: $1a
    or $e5                                        ; $5fab: $f6 $e5
    dec h                                         ; $5fad: $25
    jr nz, jr_008_5f82                            ; $5fae: $20 $d2

    ld e, $1f                                     ; $5fb0: $1e $1f
    nop                                           ; $5fb2: $00
    jp nc, $ffff                                  ; $5fb3: $d2 $ff $ff

    rst $38                                       ; $5fb6: $ff
    rst $38                                       ; $5fb7: $ff
    nop                                           ; $5fb8: $00
    rst $38                                       ; $5fb9: $ff
    rst $38                                       ; $5fba: $ff

jr_008_5fbb:
    rst $38                                       ; $5fbb: $ff
    rst $38                                       ; $5fbc: $ff
    rst $38                                       ; $5fbd: $ff
    rst $38                                       ; $5fbe: $ff
    rst $38                                       ; $5fbf: $ff
    rst $38                                       ; $5fc0: $ff
    rst $38                                       ; $5fc1: $ff
    rst $38                                       ; $5fc2: $ff

jr_008_5fc3:
    rst $38                                       ; $5fc3: $ff
    rst $38                                       ; $5fc4: $ff
    rst $38                                       ; $5fc5: $ff
    rst $38                                       ; $5fc6: $ff
    rst $38                                       ; $5fc7: $ff
    rst $38                                       ; $5fc8: $ff
    nop                                           ; $5fc9: $00
    rst $38                                       ; $5fca: $ff
    rst $38                                       ; $5fcb: $ff
    rst $38                                       ; $5fcc: $ff
    rst $38                                       ; $5fcd: $ff
    rst $38                                       ; $5fce: $ff
    rst $38                                       ; $5fcf: $ff
    rst $38                                       ; $5fd0: $ff
    db $e3                                        ; $5fd1: $e3
    nop                                           ; $5fd2: $00
    nop                                           ; $5fd3: $00
    nop                                           ; $5fd4: $00
    adc l                                         ; $5fd5: $8d
    dec c                                         ; $5fd6: $0d
    rst $38                                       ; $5fd7: $ff
    ldh a, [rBCPS]                                ; $5fd8: $f0 $68
    ld [$e7ff], sp                                ; $5fda: $08 $ff $e7
    ldh [rIE], a                                  ; $5fdd: $e0 $ff
    sbc $ef                                       ; $5fdf: $de $ef
    ld c, b                                       ; $5fe1: $48
    ld b, h                                       ; $5fe2: $44
    ret nz                                        ; $5fe3: $c0

    rst $38                                       ; $5fe4: $ff
    ldh [$e8], a                                  ; $5fe5: $e0 $e8
    adc e                                         ; $5fe7: $8b
    rst $38                                       ; $5fe8: $ff
    db $ec                                        ; $5fe9: $ec
    ldh [rIE], a                                  ; $5fea: $e0 $ff
    ld h, b                                       ; $5fec: $60
    db $eb                                        ; $5fed: $eb
    dec bc                                        ; $5fee: $0b
    rst $38                                       ; $5fef: $ff
    db $ec                                        ; $5ff0: $ec
    ret nz                                        ; $5ff1: $c0

    ldh [rIE], a                                  ; $5ff2: $e0 $ff
    ld h, b                                       ; $5ff4: $60
    db $eb                                        ; $5ff5: $eb
    ldh [rIE], a                                  ; $5ff6: $e0 $ff
    ldh [rIE], a                                  ; $5ff8: $e0 $ff
    ldh [rIE], a                                  ; $5ffa: $e0 $ff
    ldh [$f5], a                                  ; $5ffc: $e0 $f5
    ld a, [bc]                                    ; $5ffe: $0a
    ld a, [bc]                                    ; $5fff: $0a
    ld b, $40                                     ; $6000: $06 $40
    db $ed                                        ; $6002: $ed
    ld a, [bc]                                    ; $6003: $0a
    ld a, [bc]                                    ; $6004: $0a
    ldh [rIE], a                                  ; $6005: $e0 $ff
    ldh [rIE], a                                  ; $6007: $e0 $ff
    ldh [rIE], a                                  ; $6009: $e0 $ff
    ldh [$e5], a                                  ; $600b: $e0 $e5
    cp $e4                                        ; $600d: $fe $e4
    db $10                                        ; $600f: $10
    rst $00                                       ; $6010: $c7
    pop hl                                        ; $6011: $e1
    di                                            ; $6012: $f3
    db $e4                                        ; $6013: $e4
    ldh [rIE], a                                  ; $6014: $e0 $ff
    rst $38                                       ; $6016: $ff
    db $eb                                        ; $6017: $eb
    ld c, b                                       ; $6018: $48
    rst $38                                       ; $6019: $ff
    db $ec                                        ; $601a: $ec
    pop hl                                        ; $601b: $e1
    db $ec                                        ; $601c: $ec
    rst $38                                       ; $601d: $ff
    rst $38                                       ; $601e: $ff
    nop                                           ; $601f: $00
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
    nop                                           ; $6030: $00
    rst $38                                       ; $6031: $ff
    rst $38                                       ; $6032: $ff
    rst $38                                       ; $6033: $ff
    rst $38                                       ; $6034: $ff
    rst $38                                       ; $6035: $ff
    rst $38                                       ; $6036: $ff
    ld e, d                                       ; $6037: $5a
    add d                                         ; $6038: $82
    nop                                           ; $6039: $00
    nop                                           ; $603a: $00
    nop                                           ; $603b: $00
    ret nz                                        ; $603c: $c0

    add hl, de                                    ; $603d: $19
    ld e, a                                       ; $603e: $5f
    ld h, a                                       ; $603f: $67
    cp $3d                                        ; $6040: $fe $3d
    rrca                                          ; $6042: $0f
    nop                                           ; $6043: $00
    ld h, b                                       ; $6044: $60
    ld bc, $7fff                                  ; $6045: $01 $ff $7f
    rst $28                                       ; $6048: $ef
    dec a                                         ; $6049: $3d
    nop                                           ; $604a: $00
    nop                                           ; $604b: $00
    ld hl, sp+$03                                 ; $604c: $f8 $03
    ld b, h                                       ; $604e: $44
    inc bc                                        ; $604f: $03
    nop                                           ; $6050: $00
    ld [bc], a                                    ; $6051: $02
    ld b, b                                       ; $6052: $40
    ld bc, $7f56                                  ; $6053: $01 $56 $7f
    rra                                           ; $6056: $1f
    ld [de], a                                    ; $6057: $12
    sub $00                                       ; $6058: $d6 $00
    nop                                           ; $605a: $00
    nop                                           ; $605b: $00
    rst $38                                       ; $605c: $ff
    inc bc                                        ; $605d: $03
    rra                                           ; $605e: $1f
    ld [de], a                                    ; $605f: $12
    sub $00                                       ; $6060: $d6 $00
    nop                                           ; $6062: $00
    nop                                           ; $6063: $00
    sbc $7b                                       ; $6064: $de $7b
    adc [hl]                                      ; $6066: $8e
    ld a, a                                       ; $6067: $7f
    add b                                         ; $6068: $80
    ld a, [hl]                                    ; $6069: $7e
    add b                                         ; $606a: $80
    ld a, l                                       ; $606b: $7d
    sbc $7b                                       ; $606c: $de $7b
    jr jr_008_60d3                                ; $606e: $18 $63

    ld d, d                                       ; $6070: $52
    ld c, d                                       ; $6071: $4a
    adc h                                         ; $6072: $8c
    ld sp, $7bde                                  ; $6073: $31 $de $7b
    jr @+$65                                      ; $6076: $18 $63

    ld d, d                                       ; $6078: $52
    ld c, d                                       ; $6079: $4a
    adc h                                         ; $607a: $8c
    db $31                                        ; $607b: $31

    push hl                                       ; $607c: $e5
    push hl                                       ; $607d: $e5
    add $08                                       ; $607e: $c6 $08
    and $0f                                       ; $6080: $e6 $0f
    add a                                         ; $6082: $87
    ld hl, $609c                                  ; $6083: $21 $9c $60
    add l                                         ; $6086: $85
    ld l, a                                       ; $6087: $6f
    jr nc, jr_008_608b                            ; $6088: $30 $01

    inc h                                         ; $608a: $24

jr_008_608b:
    ld a, [hl+]                                   ; $608b: $2a
    ld h, [hl]                                    ; $608c: $66
    ld l, a                                       ; $608d: $6f
    pop bc                                        ; $608e: $c1
    srl b                                         ; $608f: $cb $38
    rr c                                          ; $6091: $cb $19
    ld a, c                                       ; $6093: $79
    add hl, hl                                    ; $6094: $29
    call Call_000_0bce                            ; $6095: $cd $ce $0b
    ld b, h                                       ; $6098: $44
    ld c, l                                       ; $6099: $4d
    pop hl                                        ; $609a: $e1
    ret                                           ; $609b: $c9


    push af                                       ; $609c: $f5
    ld a, [c]                                     ; $609d: $f2
    push af                                       ; $609e: $f5
    ld a, [c]                                     ; $609f: $f2
    push af                                       ; $60a0: $f5
    ld a, [c]                                     ; $60a1: $f2
    push af                                       ; $60a2: $f5
    ld a, [c]                                     ; $60a3: $f2
    push af                                       ; $60a4: $f5
    ld a, [c]                                     ; $60a5: $f2
    adc a                                         ; $60a6: $8f
    rst $30                                       ; $60a7: $f7
    ld d, $fc                                     ; $60a8: $16 $fc

    db $48, $fe, $00, $00, $b8, $01

    ld [$7103], a                                 ; $60b0: $ea $03 $71
    ld [$0d0b], sp                                ; $60b3: $08 $0b $0d
    dec bc                                        ; $60b6: $0b
    dec c                                         ; $60b7: $0d
    dec bc                                        ; $60b8: $0b
    dec c                                         ; $60b9: $0d
    dec bc                                        ; $60ba: $0b
    dec c                                         ; $60bb: $0d

    push hl                                       ; $60bc: $e5
    add $08                                       ; $60bd: $c6 $08
    and $0f                                       ; $60bf: $e6 $0f
    ld hl, $60d6                                  ; $60c1: $21 $d6 $60
    add l                                         ; $60c4: $85
    ld l, a                                       ; $60c5: $6f
    jr nc, jr_008_60c9                            ; $60c6: $30 $01

    inc h                                         ; $60c8: $24

jr_008_60c9:
    ld a, [hl]                                    ; $60c9: $7e
    pop hl                                        ; $60ca: $e1
    or a                                          ; $60cb: $b7
    ret z                                         ; $60cc: $c8

    push de                                       ; $60cd: $d5
    push hl                                       ; $60ce: $e5
    call Call_000_0bec                            ; $60cf: $cd $ec $0b
    pop de                                        ; $60d2: $d1

jr_008_60d3:
    add hl, de                                    ; $60d3: $19
    pop de                                        ; $60d4: $d1
    ret                                           ; $60d5: $c9


    ld c, $0e                                     ; $60d6: $0e $0e
    ld c, $0e                                     ; $60d8: $0e $0e
    ld c, $04                                     ; $60da: $0e $04
    db $01                                        ; $60dc: $01

    db $00, $00, $00

    ld bc, $0e04                                  ; $60e0: $01 $04 $0e
    ld c, $0e                                     ; $60e3: $0e $0e
    db $0e                                        ; $60e5: $0e

    push hl                                       ; $60e6: $e5
    srl h                                         ; $60e7: $cb $3c
    rr l                                          ; $60e9: $cb $1d
    srl h                                         ; $60eb: $cb $3c
    rr l                                          ; $60ed: $cb $1d
    srl h                                         ; $60ef: $cb $3c
    rr l                                          ; $60f1: $cb $1d
    srl h                                         ; $60f3: $cb $3c
    rr l                                          ; $60f5: $cb $1d
    res 0, l                                      ; $60f7: $cb $85
    ld bc, $6110                                  ; $60f9: $01 $10 $61
    add hl, bc                                    ; $60fc: $09
    ld a, [hl+]                                   ; $60fd: $2a
    ld b, [hl]                                    ; $60fe: $46
    ld c, a                                       ; $60ff: $4f
    pop hl                                        ; $6100: $e1
    ld a, [$d443]                                 ; $6101: $fa $43 $d4
    cp $01                                        ; $6104: $fe $01
    ret nz                                        ; $6106: $c0

    srl b                                         ; $6107: $cb $38
    rr c                                          ; $6109: $cb $19
    srl b                                         ; $610b: $cb $38
    rr c                                          ; $610d: $cb $19
    ret                                           ; $610f: $c9


    nop                                           ; $6110: $00
    ld b, b                                       ; $6111: $40
    jp hl                                         ; $6112: $e9


    ccf                                           ; $6113: $3f
    ld c, [hl]                                    ; $6114: $4e
    dec d                                         ; $6115: $15
    call nc, Call_008_480d                        ; $6116: $d4 $0d $48
    ld a, [bc]                                    ; $6119: $0a
    ld sp, $d008                                  ; $611a: $31 $08 $d0
    ld b, $d5                                     ; $611d: $06 $d5
    dec b                                         ; $611f: $05
    add hl, de                                    ; $6120: $19
    dec b                                         ; $6121: $05
    adc b                                         ; $6122: $88
    inc b                                         ; $6123: $04
    inc de                                        ; $6124: $13
    inc b                                         ; $6125: $04
    or h                                          ; $6126: $b4
    inc bc                                        ; $6127: $03
    ld h, l                                       ; $6128: $65
    inc bc                                        ; $6129: $03
    ld [hl+], a                                   ; $612a: $22
    inc bc                                        ; $612b: $03
    jp hl                                         ; $612c: $e9


    ld [bc], a                                    ; $612d: $02
    or a                                          ; $612e: $b7
    ld [bc], a                                    ; $612f: $02
    adc e                                         ; $6130: $8b
    ld [bc], a                                    ; $6131: $02
    ld h, l                                       ; $6132: $65
    ld [bc], a                                    ; $6133: $02
    ld b, e                                       ; $6134: $43
    ld [bc], a                                    ; $6135: $02
    inc h                                         ; $6136: $24
    ld [bc], a                                    ; $6137: $02
    add hl, bc                                    ; $6138: $09
    ld [bc], a                                    ; $6139: $02
    ldh a, [rSB]                                  ; $613a: $f0 $01
    jp c, $c501                                   ; $613c: $da $01 $c5

    ld bc, $01b2                                  ; $613f: $01 $b2 $01
    and c                                         ; $6142: $a1
    ld bc, $0191                                  ; $6143: $01 $91 $01
    add d                                         ; $6146: $82
    ld bc, $0174                                  ; $6147: $01 $74 $01
    ld h, a                                       ; $614a: $67
    db $01                                        ; $614b: $01

    db $5b, $01

Call_008_614e:
    ld d, b                                       ; $614e: $50
    ld bc, HeaderSGBFlag                          ; $614f: $01 $46 $01
    inc a                                         ; $6152: $3c
    ld bc, $0132                                  ; $6153: $01 $32 $01
    ld a, [hl+]                                   ; $6156: $2a
    ld bc, $0121                                  ; $6157: $01 $21 $01
    ld a, [de]                                    ; $615a: $1a
    ld bc, $0112                                  ; $615b: $01 $12 $01
    dec bc                                        ; $615e: $0b
    ld bc, HeaderLogo                             ; $615f: $01 $04 $01
    cp $00                                        ; $6162: $fe $00
    ld hl, sp+$00                                 ; $6164: $f8 $00
    ld a, [c]                                     ; $6166: $f2
    nop                                           ; $6167: $00
    db $ed                                        ; $6168: $ed
    nop                                           ; $6169: $00
    rst $20                                       ; $616a: $e7
    nop                                           ; $616b: $00
    ld [c], a                                     ; $616c: $e2
    nop                                           ; $616d: $00
    sbc $00                                       ; $616e: $de $00
    reti                                          ; $6170: $d9


    nop                                           ; $6171: $00
    push de                                       ; $6172: $d5
    nop                                           ; $6173: $00
    ret nc                                        ; $6174: $d0

    nop                                           ; $6175: $00
    call z, $c800                                 ; $6176: $cc $00 $c8
    nop                                           ; $6179: $00
    push bc                                       ; $617a: $c5
    nop                                           ; $617b: $00
    pop bc                                        ; $617c: $c1
    nop                                           ; $617d: $00
    cp l                                          ; $617e: $bd
    nop                                           ; $617f: $00
    cp d                                          ; $6180: $ba
    nop                                           ; $6181: $00
    or a                                          ; $6182: $b7
    nop                                           ; $6183: $00
    or h                                          ; $6184: $b4
    nop                                           ; $6185: $00
    or c                                          ; $6186: $b1
    nop                                           ; $6187: $00

    db $ae, $00

    xor e                                         ; $618a: $ab
    nop                                           ; $618b: $00
    xor b                                         ; $618c: $a8
    nop                                           ; $618d: $00
    and l                                         ; $618e: $a5
    nop                                           ; $618f: $00
    and e                                         ; $6190: $a3
    nop                                           ; $6191: $00
    and b                                         ; $6192: $a0
    nop                                           ; $6193: $00
    sbc [hl]                                      ; $6194: $9e
    nop                                           ; $6195: $00
    sbc e                                         ; $6196: $9b
    nop                                           ; $6197: $00
    sbc c                                         ; $6198: $99
    nop                                           ; $6199: $00
    sub a                                         ; $619a: $97
    nop                                           ; $619b: $00

    db $95, $00

    sub e                                         ; $619e: $93
    nop                                           ; $619f: $00
    sub c                                         ; $61a0: $91
    nop                                           ; $61a1: $00
    adc a                                         ; $61a2: $8f
    nop                                           ; $61a3: $00
    adc l                                         ; $61a4: $8d
    nop                                           ; $61a5: $00
    adc e                                         ; $61a6: $8b
    nop                                           ; $61a7: $00
    adc c                                         ; $61a8: $89
    nop                                           ; $61a9: $00
    add a                                         ; $61aa: $87
    nop                                           ; $61ab: $00
    add [hl]                                      ; $61ac: $86
    nop                                           ; $61ad: $00
    add h                                         ; $61ae: $84
    nop                                           ; $61af: $00
    add d                                         ; $61b0: $82
    nop                                           ; $61b1: $00
    add c                                         ; $61b2: $81
    nop                                           ; $61b3: $00
    ld a, a                                       ; $61b4: $7f
    nop                                           ; $61b5: $00
    ld a, l                                       ; $61b6: $7d
    nop                                           ; $61b7: $00
    ld a, h                                       ; $61b8: $7c
    nop                                           ; $61b9: $00
    ld a, e                                       ; $61ba: $7b
    nop                                           ; $61bb: $00
    ld a, c                                       ; $61bc: $79
    nop                                           ; $61bd: $00
    ld a, b                                       ; $61be: $78
    nop                                           ; $61bf: $00
    halt                                          ; $61c0: $76
    nop                                           ; $61c1: $00
    ld [hl], l                                    ; $61c2: $75
    nop                                           ; $61c3: $00
    ld [hl], h                                    ; $61c4: $74
    nop                                           ; $61c5: $00
    ld [hl], d                                    ; $61c6: $72
    nop                                           ; $61c7: $00
    ld [hl], c                                    ; $61c8: $71
    nop                                           ; $61c9: $00
    ld [hl], b                                    ; $61ca: $70
    nop                                           ; $61cb: $00
    ld l, a                                       ; $61cc: $6f
    nop                                           ; $61cd: $00
    ld l, [hl]                                    ; $61ce: $6e
    nop                                           ; $61cf: $00
    ld l, l                                       ; $61d0: $6d
    nop                                           ; $61d1: $00
    ld l, e                                       ; $61d2: $6b
    nop                                           ; $61d3: $00
    ld l, d                                       ; $61d4: $6a
    nop                                           ; $61d5: $00
    ld l, c                                       ; $61d6: $69
    nop                                           ; $61d7: $00
    ld l, b                                       ; $61d8: $68
    nop                                           ; $61d9: $00
    ld h, a                                       ; $61da: $67
    nop                                           ; $61db: $00
    ld h, [hl]                                    ; $61dc: $66
    nop                                           ; $61dd: $00
    ld h, l                                       ; $61de: $65
    nop                                           ; $61df: $00
    ld h, h                                       ; $61e0: $64
    nop                                           ; $61e1: $00
    ld h, e                                       ; $61e2: $63
    nop                                           ; $61e3: $00
    ld h, d                                       ; $61e4: $62
    nop                                           ; $61e5: $00
    ld h, c                                       ; $61e6: $61
    nop                                           ; $61e7: $00
    ld h, b                                       ; $61e8: $60
    nop                                           ; $61e9: $00
    ld h, b                                       ; $61ea: $60
    nop                                           ; $61eb: $00
    ld e, a                                       ; $61ec: $5f
    nop                                           ; $61ed: $00
    ld e, [hl]                                    ; $61ee: $5e
    nop                                           ; $61ef: $00
    ld e, l                                       ; $61f0: $5d
    nop                                           ; $61f1: $00
    ld e, h                                       ; $61f2: $5c
    nop                                           ; $61f3: $00
    ld e, e                                       ; $61f4: $5b
    nop                                           ; $61f5: $00
    ld e, e                                       ; $61f6: $5b
    nop                                           ; $61f7: $00
    ld e, d                                       ; $61f8: $5a
    nop                                           ; $61f9: $00
    ld e, c                                       ; $61fa: $59
    nop                                           ; $61fb: $00
    ld e, b                                       ; $61fc: $58
    nop                                           ; $61fd: $00
    ld e, b                                       ; $61fe: $58
    nop                                           ; $61ff: $00
    ld d, a                                       ; $6200: $57
    nop                                           ; $6201: $00
    ld d, [hl]                                    ; $6202: $56
    nop                                           ; $6203: $00
    ld d, l                                       ; $6204: $55
    nop                                           ; $6205: $00
    ld d, l                                       ; $6206: $55
    nop                                           ; $6207: $00
    ld d, h                                       ; $6208: $54
    nop                                           ; $6209: $00

    db $53, $00

    ld d, e                                       ; $620c: $53
    nop                                           ; $620d: $00
    ld d, d                                       ; $620e: $52
    nop                                           ; $620f: $00
    ld d, c                                       ; $6210: $51
    nop                                           ; $6211: $00
    ld d, c                                       ; $6212: $51
    nop                                           ; $6213: $00
    ld d, b                                       ; $6214: $50
    nop                                           ; $6215: $00
    ld d, b                                       ; $6216: $50
    nop                                           ; $6217: $00
    ld c, a                                       ; $6218: $4f
    nop                                           ; $6219: $00
    ld c, [hl]                                    ; $621a: $4e
    nop                                           ; $621b: $00
    ld c, [hl]                                    ; $621c: $4e
    nop                                           ; $621d: $00

    db $4d, $00

    ld c, l                                       ; $6220: $4d
    nop                                           ; $6221: $00
    ld c, h                                       ; $6222: $4c
    nop                                           ; $6223: $00
    ld c, e                                       ; $6224: $4b
    nop                                           ; $6225: $00
    ld c, e                                       ; $6226: $4b
    nop                                           ; $6227: $00
    ld c, d                                       ; $6228: $4a
    nop                                           ; $6229: $00
    ld c, d                                       ; $622a: $4a
    nop                                           ; $622b: $00
    ld c, c                                       ; $622c: $49
    nop                                           ; $622d: $00
    ld c, c                                       ; $622e: $49
    nop                                           ; $622f: $00
    ld c, b                                       ; $6230: $48
    nop                                           ; $6231: $00

    db $48, $00

    ld b, a                                       ; $6234: $47
    nop                                           ; $6235: $00
    ld b, a                                       ; $6236: $47
    nop                                           ; $6237: $00
    ld b, [hl]                                    ; $6238: $46
    nop                                           ; $6239: $00
    ld b, [hl]                                    ; $623a: $46
    nop                                           ; $623b: $00
    ld b, l                                       ; $623c: $45
    nop                                           ; $623d: $00
    ld b, l                                       ; $623e: $45
    nop                                           ; $623f: $00
    ld b, l                                       ; $6240: $45
    nop                                           ; $6241: $00
    ld b, h                                       ; $6242: $44
    nop                                           ; $6243: $00
    ld b, h                                       ; $6244: $44
    nop                                           ; $6245: $00
    ld b, e                                       ; $6246: $43
    nop                                           ; $6247: $00
    ld b, e                                       ; $6248: $43
    nop                                           ; $6249: $00
    ld b, d                                       ; $624a: $42
    nop                                           ; $624b: $00
    ld b, d                                       ; $624c: $42
    nop                                           ; $624d: $00
    ld b, d                                       ; $624e: $42
    nop                                           ; $624f: $00
    ld b, c                                       ; $6250: $41
    nop                                           ; $6251: $00
    ld b, c                                       ; $6252: $41
    nop                                           ; $6253: $00
    ld b, b                                       ; $6254: $40
    nop                                           ; $6255: $00
    ld b, b                                       ; $6256: $40
    nop                                           ; $6257: $00
    ld b, b                                       ; $6258: $40
    nop                                           ; $6259: $00
    ccf                                           ; $625a: $3f
    nop                                           ; $625b: $00
    ccf                                           ; $625c: $3f
    nop                                           ; $625d: $00
    ld a, $00                                     ; $625e: $3e $00
    ld a, $00                                     ; $6260: $3e $00
    ld a, $00                                     ; $6262: $3e $00
    dec a                                         ; $6264: $3d
    nop                                           ; $6265: $00
    dec a                                         ; $6266: $3d
    nop                                           ; $6267: $00
    dec a                                         ; $6268: $3d
    nop                                           ; $6269: $00
    inc a                                         ; $626a: $3c
    nop                                           ; $626b: $00
    inc a                                         ; $626c: $3c
    nop                                           ; $626d: $00

    db $3c, $00

    dec sp                                        ; $6270: $3b
    nop                                           ; $6271: $00
    dec sp                                        ; $6272: $3b
    nop                                           ; $6273: $00
    dec sp                                        ; $6274: $3b
    nop                                           ; $6275: $00
    ld a, [hl-]                                   ; $6276: $3a
    nop                                           ; $6277: $00
    ld a, [hl-]                                   ; $6278: $3a
    nop                                           ; $6279: $00
    ld a, [hl-]                                   ; $627a: $3a
    nop                                           ; $627b: $00
    add hl, sp                                    ; $627c: $39
    nop                                           ; $627d: $00
    add hl, sp                                    ; $627e: $39
    nop                                           ; $627f: $00
    add hl, sp                                    ; $6280: $39
    nop                                           ; $6281: $00
    jr c, jr_008_6284                             ; $6282: $38 $00

jr_008_6284:
    jr c, jr_008_6286                             ; $6284: $38 $00

jr_008_6286:
    jr c, jr_008_6288                             ; $6286: $38 $00

jr_008_6288:
    scf                                           ; $6288: $37
    nop                                           ; $6289: $00
    scf                                           ; $628a: $37
    nop                                           ; $628b: $00
    scf                                           ; $628c: $37
    nop                                           ; $628d: $00
    scf                                           ; $628e: $37
    nop                                           ; $628f: $00
    ld [hl], $00                                  ; $6290: $36 $00
    ld [hl], $00                                  ; $6292: $36 $00
    ld [hl], $00                                  ; $6294: $36 $00
    dec [hl]                                      ; $6296: $35
    nop                                           ; $6297: $00
    dec [hl]                                      ; $6298: $35
    nop                                           ; $6299: $00
    dec [hl]                                      ; $629a: $35
    nop                                           ; $629b: $00
    dec [hl]                                      ; $629c: $35
    nop                                           ; $629d: $00
    inc [hl]                                      ; $629e: $34
    nop                                           ; $629f: $00
    inc [hl]                                      ; $62a0: $34
    nop                                           ; $62a1: $00
    inc [hl]                                      ; $62a2: $34
    nop                                           ; $62a3: $00
    inc [hl]                                      ; $62a4: $34
    nop                                           ; $62a5: $00
    inc sp                                        ; $62a6: $33
    nop                                           ; $62a7: $00

    db $33, $00

    inc sp                                        ; $62aa: $33
    nop                                           ; $62ab: $00
    inc sp                                        ; $62ac: $33
    nop                                           ; $62ad: $00
    ld [hl-], a                                   ; $62ae: $32
    nop                                           ; $62af: $00
    ld [hl-], a                                   ; $62b0: $32
    nop                                           ; $62b1: $00
    ld [hl-], a                                   ; $62b2: $32
    nop                                           ; $62b3: $00
    ld [hl-], a                                   ; $62b4: $32
    nop                                           ; $62b5: $00
    ld sp, $3100                                  ; $62b6: $31 $00 $31
    nop                                           ; $62b9: $00
    ld sp, $3100                                  ; $62ba: $31 $00 $31
    nop                                           ; $62bd: $00
    jr nc, jr_008_62c0                            ; $62be: $30 $00

jr_008_62c0:
    jr nc, jr_008_62c2                            ; $62c0: $30 $00

jr_008_62c2:
    jr nc, jr_008_62c4                            ; $62c2: $30 $00

jr_008_62c4:
    jr nc, jr_008_62c6                            ; $62c4: $30 $00

jr_008_62c6:
    jr nc, jr_008_62c8                            ; $62c6: $30 $00

jr_008_62c8:
    cpl                                           ; $62c8: $2f
    nop                                           ; $62c9: $00
    cpl                                           ; $62ca: $2f
    nop                                           ; $62cb: $00
    cpl                                           ; $62cc: $2f
    nop                                           ; $62cd: $00
    cpl                                           ; $62ce: $2f
    nop                                           ; $62cf: $00
    cpl                                           ; $62d0: $2f
    nop                                           ; $62d1: $00
    ld l, $00                                     ; $62d2: $2e $00
    ld l, $00                                     ; $62d4: $2e $00
    ld l, $00                                     ; $62d6: $2e $00
    ld l, $00                                     ; $62d8: $2e $00
    dec l                                         ; $62da: $2d
    nop                                           ; $62db: $00
    dec l                                         ; $62dc: $2d
    nop                                           ; $62dd: $00
    dec l                                         ; $62de: $2d
    nop                                           ; $62df: $00
    dec l                                         ; $62e0: $2d
    nop                                           ; $62e1: $00
    dec l                                         ; $62e2: $2d
    nop                                           ; $62e3: $00
    dec l                                         ; $62e4: $2d
    nop                                           ; $62e5: $00
    inc l                                         ; $62e6: $2c
    nop                                           ; $62e7: $00
    inc l                                         ; $62e8: $2c
    nop                                           ; $62e9: $00
    inc l                                         ; $62ea: $2c
    nop                                           ; $62eb: $00
    inc l                                         ; $62ec: $2c
    nop                                           ; $62ed: $00
    inc l                                         ; $62ee: $2c
    nop                                           ; $62ef: $00
    dec hl                                        ; $62f0: $2b
    nop                                           ; $62f1: $00
    dec hl                                        ; $62f2: $2b
    nop                                           ; $62f3: $00

    db $2b, $00

    dec hl                                        ; $62f6: $2b
    nop                                           ; $62f7: $00
    dec hl                                        ; $62f8: $2b
    nop                                           ; $62f9: $00
    dec hl                                        ; $62fa: $2b
    nop                                           ; $62fb: $00
    ld a, [hl+]                                   ; $62fc: $2a
    nop                                           ; $62fd: $00
    ld a, [hl+]                                   ; $62fe: $2a
    nop                                           ; $62ff: $00
    ld a, [hl+]                                   ; $6300: $2a
    nop                                           ; $6301: $00
    ld a, [hl+]                                   ; $6302: $2a
    nop                                           ; $6303: $00
    ld a, [hl+]                                   ; $6304: $2a
    nop                                           ; $6305: $00
    add hl, hl                                    ; $6306: $29
    nop                                           ; $6307: $00

    db $29, $00

    add hl, hl                                    ; $630a: $29
    nop                                           ; $630b: $00
    add hl, hl                                    ; $630c: $29
    nop                                           ; $630d: $00
    add hl, hl                                    ; $630e: $29
    nop                                           ; $630f: $00
    add hl, hl                                    ; $6310: $29
    nop                                           ; $6311: $00
    add hl, hl                                    ; $6312: $29
    nop                                           ; $6313: $00
    jr z, jr_008_6316                             ; $6314: $28 $00

jr_008_6316:
    jr z, jr_008_6318                             ; $6316: $28 $00

jr_008_6318:
    jr z, jr_008_631a                             ; $6318: $28 $00

jr_008_631a:
    jr z, jr_008_631c                             ; $631a: $28 $00

jr_008_631c:
    jr z, jr_008_631e                             ; $631c: $28 $00

jr_008_631e:
    jr z, jr_008_6320                             ; $631e: $28 $00

jr_008_6320:
    daa                                           ; $6320: $27
    nop                                           ; $6321: $00
    daa                                           ; $6322: $27
    nop                                           ; $6323: $00
    daa                                           ; $6324: $27
    nop                                           ; $6325: $00
    daa                                           ; $6326: $27
    nop                                           ; $6327: $00
    daa                                           ; $6328: $27
    nop                                           ; $6329: $00
    daa                                           ; $632a: $27
    nop                                           ; $632b: $00
    daa                                           ; $632c: $27
    nop                                           ; $632d: $00
    ld h, $00                                     ; $632e: $26 $00
    ld h, $00                                     ; $6330: $26 $00
    ld h, $00                                     ; $6332: $26 $00
    ld h, $00                                     ; $6334: $26 $00
    ld h, $00                                     ; $6336: $26 $00
    ld h, $00                                     ; $6338: $26 $00
    ld h, $00                                     ; $633a: $26 $00
    dec h                                         ; $633c: $25
    nop                                           ; $633d: $00
    dec h                                         ; $633e: $25
    nop                                           ; $633f: $00
    dec h                                         ; $6340: $25
    nop                                           ; $6341: $00
    dec h                                         ; $6342: $25
    nop                                           ; $6343: $00
    dec h                                         ; $6344: $25
    nop                                           ; $6345: $00
    dec h                                         ; $6346: $25
    nop                                           ; $6347: $00
    dec h                                         ; $6348: $25
    nop                                           ; $6349: $00
    dec h                                         ; $634a: $25
    nop                                           ; $634b: $00
    inc h                                         ; $634c: $24
    nop                                           ; $634d: $00
    inc h                                         ; $634e: $24
    nop                                           ; $634f: $00
    inc h                                         ; $6350: $24
    nop                                           ; $6351: $00
    inc h                                         ; $6352: $24
    nop                                           ; $6353: $00
    inc h                                         ; $6354: $24
    nop                                           ; $6355: $00
    inc h                                         ; $6356: $24
    nop                                           ; $6357: $00
    inc h                                         ; $6358: $24
    nop                                           ; $6359: $00
    inc h                                         ; $635a: $24
    nop                                           ; $635b: $00
    inc hl                                        ; $635c: $23
    nop                                           ; $635d: $00
    inc hl                                        ; $635e: $23
    nop                                           ; $635f: $00
    inc hl                                        ; $6360: $23
    nop                                           ; $6361: $00
    inc hl                                        ; $6362: $23
    nop                                           ; $6363: $00
    inc hl                                        ; $6364: $23
    nop                                           ; $6365: $00
    inc hl                                        ; $6366: $23
    nop                                           ; $6367: $00
    inc hl                                        ; $6368: $23
    nop                                           ; $6369: $00
    inc hl                                        ; $636a: $23
    nop                                           ; $636b: $00
    ld [hl+], a                                   ; $636c: $22
    nop                                           ; $636d: $00
    ld [hl+], a                                   ; $636e: $22
    nop                                           ; $636f: $00
    ld [hl+], a                                   ; $6370: $22
    nop                                           ; $6371: $00
    ld [hl+], a                                   ; $6372: $22
    nop                                           ; $6373: $00
    ld [hl+], a                                   ; $6374: $22
    nop                                           ; $6375: $00
    ld [hl+], a                                   ; $6376: $22
    nop                                           ; $6377: $00
    ld [hl+], a                                   ; $6378: $22
    nop                                           ; $6379: $00
    ld [hl+], a                                   ; $637a: $22
    nop                                           ; $637b: $00
    ld [hl+], a                                   ; $637c: $22
    nop                                           ; $637d: $00
    ld hl, $2100                                  ; $637e: $21 $00 $21
    nop                                           ; $6381: $00
    ld hl, $2100                                  ; $6382: $21 $00 $21
    nop                                           ; $6385: $00
    ld hl, $2100                                  ; $6386: $21 $00 $21
    nop                                           ; $6389: $00
    ld hl, $2100                                  ; $638a: $21 $00 $21
    nop                                           ; $638d: $00
    ld hl, $2100                                  ; $638e: $21 $00 $21
    nop                                           ; $6391: $00
    jr nz, jr_008_6394                            ; $6392: $20 $00

jr_008_6394:
    jr nz, jr_008_6396                            ; $6394: $20 $00

jr_008_6396:
    jr nz, jr_008_6398                            ; $6396: $20 $00

jr_008_6398:
    jr nz, jr_008_639a                            ; $6398: $20 $00

jr_008_639a:
    jr nz, jr_008_639c                            ; $639a: $20 $00

jr_008_639c:
    jr nz, jr_008_639e                            ; $639c: $20 $00

jr_008_639e:
    jr nz, jr_008_63a0                            ; $639e: $20 $00

jr_008_63a0:
    jr nz, jr_008_63a2                            ; $63a0: $20 $00

jr_008_63a2:
    jr nz, jr_008_63a4                            ; $63a2: $20 $00

jr_008_63a4:
    jr nz, jr_008_63a6                            ; $63a4: $20 $00

jr_008_63a6:
    rra                                           ; $63a6: $1f
    nop                                           ; $63a7: $00
    rra                                           ; $63a8: $1f
    nop                                           ; $63a9: $00
    rra                                           ; $63aa: $1f
    nop                                           ; $63ab: $00
    rra                                           ; $63ac: $1f
    nop                                           ; $63ad: $00
    rra                                           ; $63ae: $1f
    nop                                           ; $63af: $00
    rra                                           ; $63b0: $1f
    nop                                           ; $63b1: $00
    rra                                           ; $63b2: $1f
    nop                                           ; $63b3: $00
    rra                                           ; $63b4: $1f
    nop                                           ; $63b5: $00
    rra                                           ; $63b6: $1f
    nop                                           ; $63b7: $00
    rra                                           ; $63b8: $1f
    nop                                           ; $63b9: $00
    rra                                           ; $63ba: $1f
    nop                                           ; $63bb: $00
    ld e, $00                                     ; $63bc: $1e $00
    ld e, $00                                     ; $63be: $1e $00
    ld e, $00                                     ; $63c0: $1e $00
    ld e, $00                                     ; $63c2: $1e $00
    ld e, $00                                     ; $63c4: $1e $00
    ld e, $00                                     ; $63c6: $1e $00
    ld e, $00                                     ; $63c8: $1e $00
    ld e, $00                                     ; $63ca: $1e $00
    ld e, $00                                     ; $63cc: $1e $00
    ld e, $00                                     ; $63ce: $1e $00
    ld e, $00                                     ; $63d0: $1e $00
    ld e, $00                                     ; $63d2: $1e $00
    dec e                                         ; $63d4: $1d
    nop                                           ; $63d5: $00
    dec e                                         ; $63d6: $1d
    nop                                           ; $63d7: $00
    dec e                                         ; $63d8: $1d
    nop                                           ; $63d9: $00
    dec e                                         ; $63da: $1d
    nop                                           ; $63db: $00
    dec e                                         ; $63dc: $1d
    nop                                           ; $63dd: $00
    dec e                                         ; $63de: $1d
    nop                                           ; $63df: $00
    dec e                                         ; $63e0: $1d
    nop                                           ; $63e1: $00
    dec e                                         ; $63e2: $1d
    nop                                           ; $63e3: $00
    dec e                                         ; $63e4: $1d
    nop                                           ; $63e5: $00
    dec e                                         ; $63e6: $1d
    nop                                           ; $63e7: $00
    dec e                                         ; $63e8: $1d
    nop                                           ; $63e9: $00
    dec e                                         ; $63ea: $1d
    nop                                           ; $63eb: $00
    inc e                                         ; $63ec: $1c
    nop                                           ; $63ed: $00
    inc e                                         ; $63ee: $1c
    nop                                           ; $63ef: $00
    inc e                                         ; $63f0: $1c
    nop                                           ; $63f1: $00
    inc e                                         ; $63f2: $1c
    nop                                           ; $63f3: $00
    inc e                                         ; $63f4: $1c
    nop                                           ; $63f5: $00
    inc e                                         ; $63f6: $1c
    nop                                           ; $63f7: $00
    inc e                                         ; $63f8: $1c
    nop                                           ; $63f9: $00
    inc e                                         ; $63fa: $1c
    nop                                           ; $63fb: $00
    inc e                                         ; $63fc: $1c
    nop                                           ; $63fd: $00
    inc e                                         ; $63fe: $1c
    nop                                           ; $63ff: $00
    inc e                                         ; $6400: $1c
    nop                                           ; $6401: $00
    inc e                                         ; $6402: $1c
    nop                                           ; $6403: $00
    inc e                                         ; $6404: $1c
    nop                                           ; $6405: $00
    dec de                                        ; $6406: $1b
    nop                                           ; $6407: $00
    dec de                                        ; $6408: $1b
    nop                                           ; $6409: $00
    dec de                                        ; $640a: $1b
    nop                                           ; $640b: $00
    dec de                                        ; $640c: $1b
    nop                                           ; $640d: $00
    dec de                                        ; $640e: $1b
    nop                                           ; $640f: $00
    dec de                                        ; $6410: $1b
    nop                                           ; $6411: $00
    dec de                                        ; $6412: $1b
    nop                                           ; $6413: $00
    dec de                                        ; $6414: $1b
    nop                                           ; $6415: $00
    dec de                                        ; $6416: $1b
    nop                                           ; $6417: $00
    dec de                                        ; $6418: $1b
    nop                                           ; $6419: $00
    dec de                                        ; $641a: $1b
    nop                                           ; $641b: $00
    dec de                                        ; $641c: $1b
    nop                                           ; $641d: $00
    dec de                                        ; $641e: $1b
    nop                                           ; $641f: $00
    dec de                                        ; $6420: $1b
    nop                                           ; $6421: $00
    dec de                                        ; $6422: $1b
    nop                                           ; $6423: $00
    ld a, [de]                                    ; $6424: $1a
    nop                                           ; $6425: $00
    ld a, [de]                                    ; $6426: $1a
    nop                                           ; $6427: $00
    ld a, [de]                                    ; $6428: $1a
    nop                                           ; $6429: $00
    ld a, [de]                                    ; $642a: $1a
    nop                                           ; $642b: $00
    ld a, [de]                                    ; $642c: $1a
    nop                                           ; $642d: $00
    ld a, [de]                                    ; $642e: $1a
    nop                                           ; $642f: $00
    ld a, [de]                                    ; $6430: $1a
    nop                                           ; $6431: $00

    ld a, [$c834]                                 ; $6432: $fa $34 $c8
    cp $01                                        ; $6435: $fe $01
    jr z, jr_008_6444                             ; $6437: $28 $0b

    cp $02                                        ; $6439: $fe $02
    jr z, jr_008_6444                             ; $643b: $28 $07

    cp $03                                        ; $643d: $fe $03
    jr z, jr_008_6444                             ; $643f: $28 $03

    jp Jump_008_64b1                              ; $6441: $c3 $b1 $64


jr_008_6444:
    ld a, $06                                     ; $6444: $3e $06
    ldh [$96], a                                  ; $6446: $e0 $96
    ldh [rSVBK], a                                ; $6448: $e0 $70
    ld a, $01                                     ; $644a: $3e $01
    ld [$d445], a                                 ; $644c: $ea $45 $d4
    xor a                                         ; $644f: $af
    ld [$d4d5], a                                 ; $6450: $ea $d5 $d4
    ld [$d454], a                                 ; $6453: $ea $54 $d4
    xor a                                         ; $6456: $af
    ld [$d44f], a                                 ; $6457: $ea $4f $d4
    ld a, $80                                     ; $645a: $3e $80
    ld [$d450], a                                 ; $645c: $ea $50 $d4
    rst $18                                       ; $645f: $df

    db $58, $10

    ld a, $01                                     ; $6462: $3e $01
    rst $18                                       ; $6464: $df

    db $00, $13

    ld c, $7f                                     ; $6467: $0e $7f
    call Call_000_258d                            ; $6469: $cd $8d $25
    ld a, $04                                     ; $646c: $3e $04
    rst $18                                       ; $646e: $df

    db $56, $10

    xor a                                         ; $6471: $af
    ld [$d328], a                                 ; $6472: $ea $28 $d3
    ld bc, $00b4                                  ; $6475: $01 $b4 $00

jr_008_6478:
    call Call_000_2e3b                            ; $6478: $cd $3b $2e
    ldh a, [$94]                                  ; $647b: $f0 $94
    or a                                          ; $647d: $b7
    jr z, jr_008_6484                             ; $647e: $28 $04

    rst $08                                       ; $6480: $cf

    db $5c

    jr jr_008_6489                                ; $6482: $18 $05

jr_008_6484:
    dec bc                                        ; $6484: $0b
    ld a, b                                       ; $6485: $78
    or c                                          ; $6486: $b1
    jr nz, jr_008_6478                            ; $6487: $20 $ef

jr_008_6489:
    ld a, $04                                     ; $6489: $3e $04
    ld [$d438], a                                 ; $648b: $ea $38 $d4
    ld a, $00                                     ; $648e: $3e $00
    rst $18                                       ; $6490: $df

    db $00, $13

    ld a, $01                                     ; $6493: $3e $01
    ld [$d438], a                                 ; $6495: $ea $38 $d4
    call Call_000_2ed5                            ; $6498: $cd $d5 $2e

    db $0a

jr_008_649c:
    call Call_000_2e3b                            ; $649c: $cd $3b $2e
    ldh a, [$94]                                  ; $649f: $f0 $94
    or a                                          ; $64a1: $b7
    jr nz, jr_008_64ab                            ; $64a2: $20 $07

    rst $18                                       ; $64a4: $df

    db $0a, $11

    or a                                          ; $64a7: $b7
    jr z, jr_008_649c                             ; $64a8: $28 $f2

    ret                                           ; $64aa: $c9


jr_008_64ab:
    rst $08                                       ; $64ab: $cf

    db $5c

    rst $18                                       ; $64ad: $df

    db $02, $13

    ret                                           ; $64b0: $c9


Jump_008_64b1:
    ld a, $01                                     ; $64b1: $3e $01
    ld [$d438], a                                 ; $64b3: $ea $38 $d4
    ld hl, $d4d5                                  ; $64b6: $21 $d5 $d4
    ld [hl], $00                                  ; $64b9: $36 $00
    ld a, [$d329]                                 ; $64bb: $fa $29 $d3
    cp $0d                                        ; $64be: $fe $0d
    jr nz, jr_008_64c4                            ; $64c0: $20 $02

    ld [hl], $01                                  ; $64c2: $36 $01

jr_008_64c4:
    rst $18                                       ; $64c4: $df

    db $3a, $10

    ret                                           ; $64c7: $c9


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

Call_008_6633:
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

Call_008_7084:
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

Jump_008_7181:
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

Call_008_7cf4:
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

Jump_008_7d3c:
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

Jump_008_7ebd:
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

Call_008_7f3b:
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
