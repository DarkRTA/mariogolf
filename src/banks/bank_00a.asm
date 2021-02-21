; Disassembly of "mgolf.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $00a", ROMX[$4000], BANK[$a]

    db $92, $40, $d6, $40, $0d, $41, $20, $41, $64, $41, $99, $41, $ce, $41, $24, $41

    ld b, b                                       ; $4010: $40
    ld b, c                                       ; $4011: $41

    db $d8, $41

    ldh [rSCY], a                                 ; $4014: $e0 $42

    db $fc, $42, $1e, $43

    ld b, d                                       ; $401a: $42
    ld b, e                                       ; $401b: $43
    ld e, [hl]                                    ; $401c: $5e
    ld b, e                                       ; $401d: $43

    db $93, $43, $c6, $43, $16, $44

    ld h, [hl]                                    ; $4024: $66
    ld b, h                                       ; $4025: $44
    inc bc                                        ; $4026: $03
    ld b, l                                       ; $4027: $45

    db $87, $45

    ld c, $46                                     ; $402a: $0e $46

    db $44, $46

    ld h, d                                       ; $402e: $62
    ld b, [hl]                                    ; $402f: $46
    db $d4                                        ; $4030: $d4
    ld b, [hl]                                    ; $4031: $46

    db $5b, $47, $68, $47

    and [hl]                                      ; $4036: $a6
    ld b, a                                       ; $4037: $47
    ret z                                         ; $4038: $c8

    ld b, a                                       ; $4039: $47
    ld a, [hl+]                                   ; $403a: $2a
    ld c, b                                       ; $403b: $48
    xor h                                         ; $403c: $ac
    ld c, b                                       ; $403d: $48
    rst $18                                       ; $403e: $df
    ld c, b                                       ; $403f: $48
    ld [hl], h                                    ; $4040: $74
    ld b, a                                       ; $4041: $47
    adc b                                         ; $4042: $88
    ld b, a                                       ; $4043: $47
    cp a                                          ; $4044: $bf
    ld b, d                                       ; $4045: $42
    sub h                                         ; $4046: $94
    ld b, a                                       ; $4047: $47

    db $8c, $49, $45, $4f, $ff, $4b, $5b, $4d, $8a, $4d

    rra                                           ; $4052: $1f
    ld d, e                                       ; $4053: $53
    ld [hl], $53                                  ; $4054: $36 $53

    db $48, $53

    ld d, [hl]                                    ; $4058: $56
    ld l, a                                       ; $4059: $6f
    ld [hl], h                                    ; $405a: $74
    ld [hl], c                                    ; $405b: $71
    ld a, b                                       ; $405c: $78
    ld a, b                                       ; $405d: $78
    ld [hl+], a                                   ; $405e: $22
    ld d, h                                       ; $405f: $54
    rst $08                                       ; $4060: $cf
    ld d, h                                       ; $4061: $54
    ld h, c                                       ; $4062: $61
    ld d, l                                       ; $4063: $55
    or c                                          ; $4064: $b1
    ld d, [hl]                                    ; $4065: $56
    push af                                       ; $4066: $f5
    push bc                                       ; $4067: $c5
    push de                                       ; $4068: $d5
    push hl                                       ; $4069: $e5
    ldh a, [$94]                                  ; $406a: $f0 $94
    and $08                                       ; $406c: $e6 $08
    jr z, jr_00a_408d                             ; $406e: $28 $1d

    rst $30                                       ; $4070: $f7
    ret nz                                        ; $4071: $c0

    ld [bc], a                                    ; $4072: $02
    jr z, jr_00a_4082                             ; $4073: $28 $0d

    rst $28                                       ; $4075: $ef
    ret nz                                        ; $4076: $c0

    ld [bc], a                                    ; $4077: $02
    ld a, [$c82d]                                 ; $4078: $fa $2d $c8
    or $80                                        ; $407b: $f6 $80
    ld [$c82d], a                                 ; $407d: $ea $2d $c8
    jr jr_00a_408d                                ; $4080: $18 $0b

jr_00a_4082:
    rst $20                                       ; $4082: $e7
    ret nz                                        ; $4083: $c0

    ld [bc], a                                    ; $4084: $02
    ld a, [$c82d]                                 ; $4085: $fa $2d $c8
    and $7f                                       ; $4088: $e6 $7f
    ld [$c82d], a                                 ; $408a: $ea $2d $c8

jr_00a_408d:
    pop hl                                        ; $408d: $e1
    pop de                                        ; $408e: $d1
    pop bc                                        ; $408f: $c1
    pop af                                        ; $4090: $f1
    ret                                           ; $4091: $c9


    push af                                       ; $4092: $f5
    push bc                                       ; $4093: $c5
    push de                                       ; $4094: $d5
    push hl                                       ; $4095: $e5
    ldh a, [$96]                                  ; $4096: $f0 $96
    push af                                       ; $4098: $f5
    ld a, $05                                     ; $4099: $3e $05
    ldh [$96], a                                  ; $409b: $e0 $96
    ldh [rSVBK], a                                ; $409d: $e0 $70
    pop af                                        ; $409f: $f1
    ldh [$96], a                                  ; $40a0: $e0 $96
    ldh [rSVBK], a                                ; $40a2: $e0 $70
    ld a, $ff                                     ; $40a4: $3e $ff
    ld [$c363], a                                 ; $40a6: $ea $63 $c3
    xor a                                         ; $40a9: $af
    ld [$c368], a                                 ; $40aa: $ea $68 $c3
    ld [$c369], a                                 ; $40ad: $ea $69 $c3
    ld hl, $c292                                  ; $40b0: $21 $92 $c2
    ld a, [hl+]                                   ; $40b3: $2a
    ld h, [hl]                                    ; $40b4: $66
    ld l, a                                       ; $40b5: $6f
    ld a, h                                       ; $40b6: $7c
    and $0f                                       ; $40b7: $e6 $0f
    sla l                                         ; $40b9: $cb $25
    rl a                                          ; $40bb: $cb $17
    sla l                                         ; $40bd: $cb $25
    rl a                                          ; $40bf: $cb $17
    call Call_00a_4342                            ; $40c1: $cd $42 $43
    ldh a, [$9e]                                  ; $40c4: $f0 $9e
    or a                                          ; $40c6: $b7
    jr z, jr_00a_40d1                             ; $40c7: $28 $08

    ld a, $01                                     ; $40c9: $3e $01
    ld hl, $4066                                  ; $40cb: $21 $66 $40
    call Call_000_23e8                            ; $40ce: $cd $e8 $23

jr_00a_40d1:
    pop hl                                        ; $40d1: $e1
    pop de                                        ; $40d2: $d1
    pop bc                                        ; $40d3: $c1
    pop af                                        ; $40d4: $f1
    ret                                           ; $40d5: $c9


    push af                                       ; $40d6: $f5
    push bc                                       ; $40d7: $c5
    push de                                       ; $40d8: $d5
    push hl                                       ; $40d9: $e5
    xor a                                         ; $40da: $af
    ld [$c368], a                                 ; $40db: $ea $68 $c3
    ld [$c369], a                                 ; $40de: $ea $69 $c3
    ldh a, [$95]                                  ; $40e1: $f0 $95
    ld b, a                                       ; $40e3: $47
    ld hl, $c292                                  ; $40e4: $21 $92 $c2
    ld a, [hl+]                                   ; $40e7: $2a
    ld h, [hl]                                    ; $40e8: $66
    ld l, a                                       ; $40e9: $6f
    ld a, h                                       ; $40ea: $7c
    and $0f                                       ; $40eb: $e6 $0f
    sla l                                         ; $40ed: $cb $25
    rl a                                          ; $40ef: $cb $17
    sla l                                         ; $40f1: $cb $25
    rl a                                          ; $40f3: $cb $17
    ld de, $4109                                  ; $40f5: $11 $09 $41
    rst $18                                       ; $40f8: $df

    db $18, $0a

    ld hl, $4066                                  ; $40fb: $21 $66 $40
    call Call_000_2449                            ; $40fe: $cd $49 $24
    rst $28                                       ; $4101: $ef

    db $c0, $02

    pop hl                                        ; $4104: $e1
    pop de                                        ; $4105: $d1
    pop bc                                        ; $4106: $c1
    pop af                                        ; $4107: $f1
    ret                                           ; $4108: $c9


    db $0b, $0c, $fe, $ff

Call_00a_410d:
    push af                                       ; $410d: $f5
    push bc                                       ; $410e: $c5
    rst $30                                       ; $410f: $f7

    db $c0, $02

    jr z, jr_00a_4116                             ; $4112: $28 $02

    ld a, $02                                     ; $4114: $3e $02

jr_00a_4116:
    or a                                          ; $4116: $b7
    jr z, jr_00a_411f                             ; $4117: $28 $06

    ld c, a                                       ; $4119: $4f
    call Call_000_2ef0                            ; $411a: $cd $f0 $2e
    pop bc                                        ; $411d: $c1
    pop af                                        ; $411e: $f1

jr_00a_411f:
    ret                                           ; $411f: $c9


    rst $18                                       ; $4120: $df

    db $4a, $0a

    ret                                           ; $4123: $c9


    push af                                       ; $4124: $f5
    ldh a, [$96]                                  ; $4125: $f0 $96
    push af                                       ; $4127: $f5
    ld a, $05                                     ; $4128: $3e $05
    ldh [$96], a                                  ; $412a: $e0 $96
    ldh [rSVBK], a                                ; $412c: $e0 $70
    rst $18                                       ; $412e: $df

    db $44, $05

    ld a, l                                       ; $4131: $7d
    ld [$d852], a                                 ; $4132: $ea $52 $d8
    ld a, h                                       ; $4135: $7c
    ld [$d853], a                                 ; $4136: $ea $53 $d8
    pop af                                        ; $4139: $f1
    ldh [$96], a                                  ; $413a: $e0 $96
    ldh [rSVBK], a                                ; $413c: $e0 $70
    pop af                                        ; $413e: $f1
    ret                                           ; $413f: $c9


    push af                                       ; $4140: $f5
    push hl                                       ; $4141: $e5
    ldh a, [$96]                                  ; $4142: $f0 $96
    push af                                       ; $4144: $f5
    ld a, $05                                     ; $4145: $3e $05
    ldh [$96], a                                  ; $4147: $e0 $96
    ldh [rSVBK], a                                ; $4149: $e0 $70
    ld a, [$d852]                                 ; $414b: $fa $52 $d8
    ld l, a                                       ; $414e: $6f
    ld a, [$d853]                                 ; $414f: $fa $53 $d8
    ld h, a                                       ; $4152: $67
    inc hl                                        ; $4153: $23
    ld a, l                                       ; $4154: $7d
    ld [$d852], a                                 ; $4155: $ea $52 $d8
    ld a, h                                       ; $4158: $7c
    ld [$d853], a                                 ; $4159: $ea $53 $d8
    pop af                                        ; $415c: $f1
    ldh [$96], a                                  ; $415d: $e0 $96
    ldh [rSVBK], a                                ; $415f: $e0 $70
    pop hl                                        ; $4161: $e1
    pop af                                        ; $4162: $f1
    ret                                           ; $4163: $c9


    push af                                       ; $4164: $f5
    push hl                                       ; $4165: $e5
    ld b, a                                       ; $4166: $47
    ldh a, [$96]                                  ; $4167: $f0 $96
    push af                                       ; $4169: $f5
    ld a, [$c96d]                                 ; $416a: $fa $6d $c9
    or a                                          ; $416d: $b7
    call z, Call_00a_48ac                         ; $416e: $cc $ac $48
    ld a, $05                                     ; $4171: $3e $05
    ldh [$96], a                                  ; $4173: $e0 $96
    ldh [rSVBK], a                                ; $4175: $e0 $70
    ld a, [$d852]                                 ; $4177: $fa $52 $d8
    ld l, a                                       ; $417a: $6f
    ld a, [$d853]                                 ; $417b: $fa $53 $d8
    ld h, a                                       ; $417e: $67
    rst $30                                       ; $417f: $f7

    db $c0, $02

    jr nz, jr_00a_4188                            ; $4182: $20 $04

    ld a, b                                       ; $4184: $78
    rst $18                                       ; $4185: $df

    db $46, $05

jr_00a_4188:
    inc hl                                        ; $4188: $23
    ld a, l                                       ; $4189: $7d
    ld [$d852], a                                 ; $418a: $ea $52 $d8
    ld a, h                                       ; $418d: $7c
    ld [$d853], a                                 ; $418e: $ea $53 $d8
    pop af                                        ; $4191: $f1
    ldh [$96], a                                  ; $4192: $e0 $96
    ldh [rSVBK], a                                ; $4194: $e0 $70
    pop hl                                        ; $4196: $e1
    pop af                                        ; $4197: $f1
    ret                                           ; $4198: $c9


    push af                                       ; $4199: $f5
    push hl                                       ; $419a: $e5
    ld b, a                                       ; $419b: $47
    ldh a, [$96]                                  ; $419c: $f0 $96
    push af                                       ; $419e: $f5
    ld a, [$c96d]                                 ; $419f: $fa $6d $c9
    or a                                          ; $41a2: $b7
    call z, Call_00a_48ac                         ; $41a3: $cc $ac $48
    ld a, $05                                     ; $41a6: $3e $05
    ldh [$96], a                                  ; $41a8: $e0 $96
    ldh [rSVBK], a                                ; $41aa: $e0 $70
    ld a, [$d852]                                 ; $41ac: $fa $52 $d8
    ld l, a                                       ; $41af: $6f
    ld a, [$d853]                                 ; $41b0: $fa $53 $d8
    ld h, a                                       ; $41b3: $67
    rst $30                                       ; $41b4: $f7

    db $c0, $02

    jr nz, jr_00a_41bd                            ; $41b7: $20 $04

    ld a, b                                       ; $41b9: $78
    rst $18                                       ; $41ba: $df

    db $48, $05

jr_00a_41bd:
    inc hl                                        ; $41bd: $23
    ld a, l                                       ; $41be: $7d
    ld [$d852], a                                 ; $41bf: $ea $52 $d8
    ld a, h                                       ; $41c2: $7c
    ld [$d853], a                                 ; $41c3: $ea $53 $d8
    pop af                                        ; $41c6: $f1
    ldh [$96], a                                  ; $41c7: $e0 $96
    ldh [rSVBK], a                                ; $41c9: $e0 $70
    pop hl                                        ; $41cb: $e1
    pop af                                        ; $41cc: $f1
    ret                                           ; $41cd: $c9


    rst $18                                       ; $41ce: $df

    db $0e, $05

    rst $18                                       ; $41d1: $df

    db $1c, $05

    rst $18                                       ; $41d4: $df

    db $14, $05

    ret                                           ; $41d7: $c9


    push bc                                       ; $41d8: $c5
    push de                                       ; $41d9: $d5
    push hl                                       ; $41da: $e5
    ldh a, [$96]                                  ; $41db: $f0 $96
    push af                                       ; $41dd: $f5
    ld a, $05                                     ; $41de: $3e $05
    ldh [$96], a                                  ; $41e0: $e0 $96
    ldh [rSVBK], a                                ; $41e2: $e0 $70
    call Call_00a_4281                            ; $41e4: $cd $81 $42
    ld a, [$d829]                                 ; $41e7: $fa $29 $d8
    push af                                       ; $41ea: $f5
    xor a                                         ; $41eb: $af
    ld [$d829], a                                 ; $41ec: $ea $29 $d8
    call Call_00a_4227                            ; $41ef: $cd $27 $42
    ld a, [$d82f]                                 ; $41f2: $fa $2f $d8
    ld b, $06                                     ; $41f5: $06 $06
    rst $18                                       ; $41f7: $df

    db $10, $05

    ld a, [$d82f]                                 ; $41fa: $fa $2f $d8
    rst $18                                       ; $41fd: $df

    db $6e, $05

    rst $18                                       ; $4200: $df

    db $70, $05

    rst $18                                       ; $4203: $df

    db $4e, $05

    ld b, a                                       ; $4206: $47
    call Call_00a_4281                            ; $4207: $cd $81 $42
    ld a, [$d82f]                                 ; $420a: $fa $2f $d8
    rst $18                                       ; $420d: $df

    db $72, $05

    xor a                                         ; $4210: $af
    ld [$d84f], a                                 ; $4211: $ea $4f $d8
    ld a, $ff                                     ; $4214: $3e $ff
    ld [$d82f], a                                 ; $4216: $ea $2f $d8
    pop af                                        ; $4219: $f1
    ld [$d829], a                                 ; $421a: $ea $29 $d8
    pop af                                        ; $421d: $f1
    ldh [$96], a                                  ; $421e: $e0 $96
    ldh [rSVBK], a                                ; $4220: $e0 $70
    ld a, b                                       ; $4222: $78
    pop hl                                        ; $4223: $e1
    pop de                                        ; $4224: $d1
    pop bc                                        ; $4225: $c1
    ret                                           ; $4226: $c9


Call_00a_4227:
    push af                                       ; $4227: $f5
    push bc                                       ; $4228: $c5
    push de                                       ; $4229: $d5
    push hl                                       ; $422a: $e5
    ldh a, [$96]                                  ; $422b: $f0 $96
    push af                                       ; $422d: $f5
    ld a, [$d851]                                 ; $422e: $fa $51 $d8
    ld b, a                                       ; $4231: $47
    and $7f                                       ; $4232: $e6 $7f
    ld e, a                                       ; $4234: $5f
    rl b                                          ; $4235: $cb $10
    jr nc, jr_00a_4245                            ; $4237: $30 $0c

    cp $09                                        ; $4239: $fe $09
    jr c, jr_00a_4241                             ; $423b: $38 $04

    ld e, $01                                     ; $423d: $1e $01
    jr jr_00a_426f                                ; $423f: $18 $2e

jr_00a_4241:
    ld e, $0a                                     ; $4241: $1e $0a
    jr jr_00a_426f                                ; $4243: $18 $2a

jr_00a_4245:
    call Call_00a_42e0                            ; $4245: $cd $e0 $42
    ld a, [$c323]                                 ; $4248: $fa $23 $c3
    ld b, a                                       ; $424b: $47
    ld a, l                                       ; $424c: $7d
    ldh [$e0], a                                  ; $424d: $e0 $e0
    ld a, h                                       ; $424f: $7c
    ldh [$e1], a                                  ; $4250: $e0 $e1
    ld a, $04                                     ; $4252: $3e $04
    ldh [$96], a                                  ; $4254: $e0 $96
    ldh [rSVBK], a                                ; $4256: $e0 $70
    ld hl, $ffe0                                  ; $4258: $21 $e0 $ff
    ld a, [hl+]                                   ; $425b: $2a
    ld h, [hl]                                    ; $425c: $66
    add $04                                       ; $425d: $c6 $04
    ld l, a                                       ; $425f: $6f
    inc hl                                        ; $4260: $23
    inc hl                                        ; $4261: $23
    inc hl                                        ; $4262: $23
    ld a, [hl]                                    ; $4263: $7e
    sub b                                         ; $4264: $90
    cp $0a                                        ; $4265: $fe $0a
    jr c, jr_00a_426d                             ; $4267: $38 $04

    ld e, $0a                                     ; $4269: $1e $0a
    jr jr_00a_426f                                ; $426b: $18 $02

jr_00a_426d:
    ld e, $01                                     ; $426d: $1e $01

jr_00a_426f:
    pop af                                        ; $426f: $f1
    ldh [$96], a                                  ; $4270: $e0 $96
    ldh [rSVBK], a                                ; $4272: $e0 $70
    ld d, $02                                     ; $4274: $16 $02
    ld hl, $001a                                  ; $4276: $21 $1a $00
    rst $18                                       ; $4279: $df

    db $0a, $05

    pop hl                                        ; $427c: $e1
    pop de                                        ; $427d: $d1
    pop bc                                        ; $427e: $c1
    pop af                                        ; $427f: $f1
    ret                                           ; $4280: $c9


Call_00a_4281:
    push af                                       ; $4281: $f5
    push bc                                       ; $4282: $c5
    push de                                       ; $4283: $d5
    push hl                                       ; $4284: $e5
    ld hl, $d852                                  ; $4285: $21 $52 $d8
    ld a, [hl+]                                   ; $4288: $2a
    ld h, [hl]                                    ; $4289: $66
    ld l, a                                       ; $428a: $6f
    dec hl                                        ; $428b: $2b
    xor a                                         ; $428c: $af
    rst $18                                       ; $428d: $df

    db $52, $05

    rst $18                                       ; $4290: $df

    db $24, $05

    ld hl, $c600                                  ; $4293: $21 $00 $c6
    ld bc, $0180                                  ; $4296: $01 $80 $01
    ld de, $0000                                  ; $4299: $11 $00 $00

jr_00a_429c:
    ld a, $00                                     ; $429c: $3e $00
    cp [hl]                                       ; $429e: $be
    jr z, jr_00a_42ae                             ; $429f: $28 $0d

    ld a, $02                                     ; $42a1: $3e $02
    cp [hl]                                       ; $42a3: $be
    inc hl                                        ; $42a4: $23
    jr nz, jr_00a_42a9                            ; $42a5: $20 $02

    ld d, h                                       ; $42a7: $54
    ld e, l                                       ; $42a8: $5d

jr_00a_42a9:
    dec bc                                        ; $42a9: $0b
    ld a, b                                       ; $42aa: $78
    or c                                          ; $42ab: $b1
    jr nz, jr_00a_429c                            ; $42ac: $20 $ee

jr_00a_42ae:
    ld a, d                                       ; $42ae: $7a
    or e                                          ; $42af: $b3
    jr z, jr_00a_42ba                             ; $42b0: $28 $08

    ld a, e                                       ; $42b2: $7b
    ld [$d84e], a                                 ; $42b3: $ea $4e $d8
    ld a, d                                       ; $42b6: $7a
    ld [$d84f], a                                 ; $42b7: $ea $4f $d8

jr_00a_42ba:
    pop hl                                        ; $42ba: $e1
    pop de                                        ; $42bb: $d1
    pop bc                                        ; $42bc: $c1
    pop af                                        ; $42bd: $f1
    ret                                           ; $42be: $c9


    push bc                                       ; $42bf: $c5
    push de                                       ; $42c0: $d5
    push hl                                       ; $42c1: $e5
    rst $18                                       ; $42c2: $df
    ld a, [bc]                                    ; $42c3: $0a
    dec b                                         ; $42c4: $05
    ld b, a                                       ; $42c5: $47
    rst $18                                       ; $42c6: $df
    inc e                                         ; $42c7: $1c
    dec b                                         ; $42c8: $05
    rst $18                                       ; $42c9: $df
    inc d                                         ; $42ca: $14
    dec b                                         ; $42cb: $05
    ld a, b                                       ; $42cc: $78
    rst $18                                       ; $42cd: $df
    ld c, [hl]                                    ; $42ce: $4e
    dec b                                         ; $42cf: $05
    ld c, a                                       ; $42d0: $4f
    ld a, b                                       ; $42d1: $78
    rst $18                                       ; $42d2: $df
    inc c                                         ; $42d3: $0c
    dec b                                         ; $42d4: $05
    rst $18                                       ; $42d5: $df
    inc e                                         ; $42d6: $1c
    dec b                                         ; $42d7: $05
    rst $18                                       ; $42d8: $df
    inc d                                         ; $42d9: $14
    dec b                                         ; $42da: $05
    ld a, c                                       ; $42db: $79
    pop hl                                        ; $42dc: $e1
    pop de                                        ; $42dd: $d1
    pop bc                                        ; $42de: $c1
    ret                                           ; $42df: $c9


Call_00a_42e0:
    ld hl, $0000                                  ; $42e0: $21 $00 $00
    cp $ff                                        ; $42e3: $fe $ff
    ret z                                         ; $42e5: $c8

    ld hl, $d000                                  ; $42e6: $21 $00 $d0
    cp $18                                        ; $42e9: $fe $18
    jr nc, jr_00a_42fb                            ; $42eb: $30 $0e

    push bc                                       ; $42ed: $c5
    ld c, $00                                     ; $42ee: $0e $00
    ld b, a                                       ; $42f0: $47
    sra b                                         ; $42f1: $cb $28
    rr c                                          ; $42f3: $cb $19
    sra b                                         ; $42f5: $cb $28
    rr c                                          ; $42f7: $cb $19
    add hl, bc                                    ; $42f9: $09
    pop bc                                        ; $42fa: $c1

jr_00a_42fb:
    ret                                           ; $42fb: $c9


    cp $ff                                        ; $42fc: $fe $ff
    ret z                                         ; $42fe: $c8

    push af                                       ; $42ff: $f5
    push hl                                       ; $4300: $e5
    call Call_00a_42e0                            ; $4301: $cd $e0 $42
    ld a, l                                       ; $4304: $7d
    ldh [$e0], a                                  ; $4305: $e0 $e0
    ld a, h                                       ; $4307: $7c
    ldh [$e1], a                                  ; $4308: $e0 $e1
    ld a, $04                                     ; $430a: $3e $04
    ldh [$96], a                                  ; $430c: $e0 $96
    ldh [rSVBK], a                                ; $430e: $e0 $70
    ld hl, $ffe0                                  ; $4310: $21 $e0 $ff
    ld a, [hl+]                                   ; $4313: $2a
    ld h, [hl]                                    ; $4314: $66
    add $0e                                       ; $4315: $c6 $0e
    ld l, a                                       ; $4317: $6f
    ld [hl], c                                    ; $4318: $71
    inc hl                                        ; $4319: $23
    ld [hl], b                                    ; $431a: $70
    pop hl                                        ; $431b: $e1
    pop af                                        ; $431c: $f1
    ret                                           ; $431d: $c9


    cp $ff                                        ; $431e: $fe $ff
    ret z                                         ; $4320: $c8

    push af                                       ; $4321: $f5
    push hl                                       ; $4322: $e5
    call Call_00a_42e0                            ; $4323: $cd $e0 $42
    ld a, l                                       ; $4326: $7d
    ldh [$e0], a                                  ; $4327: $e0 $e0
    ld a, h                                       ; $4329: $7c
    ldh [$e1], a                                  ; $432a: $e0 $e1
    ld a, $04                                     ; $432c: $3e $04
    ldh [$96], a                                  ; $432e: $e0 $96
    ldh [rSVBK], a                                ; $4330: $e0 $70
    ld hl, $ffe0                                  ; $4332: $21 $e0 $ff
    ld a, [hl+]                                   ; $4335: $2a
    ld h, [hl]                                    ; $4336: $66
    add $00                                       ; $4337: $c6 $00
    ld l, a                                       ; $4339: $6f
    ld [hl], e                                    ; $433a: $73
    inc hl                                        ; $433b: $23
    ld [hl], d                                    ; $433c: $72
    inc hl                                        ; $433d: $23
    ld [hl], b                                    ; $433e: $70
    pop hl                                        ; $433f: $e1
    pop af                                        ; $4340: $f1
    ret                                           ; $4341: $c9


Call_00a_4342:
    cp $ff                                        ; $4342: $fe $ff
    ret z                                         ; $4344: $c8

    push af                                       ; $4345: $f5
    push hl                                       ; $4346: $e5
    call Call_00a_42e0                            ; $4347: $cd $e0 $42
    ld de, $435d                                  ; $434a: $11 $5d $43
    ld a, $04                                     ; $434d: $3e $04
    ldh [$96], a                                  ; $434f: $e0 $96
    ldh [rSVBK], a                                ; $4351: $e0 $70
    ld [hl], e                                    ; $4353: $73
    inc hl                                        ; $4354: $23
    ld [hl], d                                    ; $4355: $72
    inc hl                                        ; $4356: $23
    ldh a, [$95]                                  ; $4357: $f0 $95
    ld [hl], a                                    ; $4359: $77
    pop hl                                        ; $435a: $e1
    pop af                                        ; $435b: $f1
    ret                                           ; $435c: $c9


    db $00

    cp $ff                                        ; $435e: $fe $ff
    ret z                                         ; $4360: $c8

    push af                                       ; $4361: $f5
    push bc                                       ; $4362: $c5
    push hl                                       ; $4363: $e5
    ld bc, $0258                                  ; $4364: $01 $58 $02
    call Call_00a_42e0                            ; $4367: $cd $e0 $42
    ld a, l                                       ; $436a: $7d
    ldh [$e0], a                                  ; $436b: $e0 $e0
    ld a, h                                       ; $436d: $7c
    ldh [$e1], a                                  ; $436e: $e0 $e1
    ld a, $04                                     ; $4370: $3e $04
    ldh [$96], a                                  ; $4372: $e0 $96
    ldh [rSVBK], a                                ; $4374: $e0 $70
    ld hl, $ffe0                                  ; $4376: $21 $e0 $ff
    ld a, [hl+]                                   ; $4379: $2a
    ld h, [hl]                                    ; $437a: $66
    add $00                                       ; $437b: $c6 $00
    ld l, a                                       ; $437d: $6f

jr_00a_437e:
    call Call_00a_410d                            ; $437e: $cd $0d $41
    ld e, [hl]                                    ; $4381: $5e
    inc hl                                        ; $4382: $23
    ld d, [hl]                                    ; $4383: $56
    dec hl                                        ; $4384: $2b
    ld a, [de]                                    ; $4385: $1a
    cp $00                                        ; $4386: $fe $00
    jr z, jr_00a_438f                             ; $4388: $28 $05

    dec bc                                        ; $438a: $0b
    ld a, c                                       ; $438b: $79
    or b                                          ; $438c: $b0
    jr nz, jr_00a_437e                            ; $438d: $20 $ef

jr_00a_438f:
    pop hl                                        ; $438f: $e1
    pop bc                                        ; $4390: $c1
    pop af                                        ; $4391: $f1
    ret                                           ; $4392: $c9


    cp $ff                                        ; $4393: $fe $ff
    ret z                                         ; $4395: $c8

    push af                                       ; $4396: $f5
    push bc                                       ; $4397: $c5
    push hl                                       ; $4398: $e5
    ld bc, $0258                                  ; $4399: $01 $58 $02
    call Call_00a_42e0                            ; $439c: $cd $e0 $42
    ld a, l                                       ; $439f: $7d
    ldh [$e0], a                                  ; $43a0: $e0 $e0
    ld a, h                                       ; $43a2: $7c
    ldh [$e1], a                                  ; $43a3: $e0 $e1
    ld a, $04                                     ; $43a5: $3e $04
    ldh [$96], a                                  ; $43a7: $e0 $96
    ldh [rSVBK], a                                ; $43a9: $e0 $70
    ld hl, $ffe0                                  ; $43ab: $21 $e0 $ff
    ld a, [hl+]                                   ; $43ae: $2a
    ld h, [hl]                                    ; $43af: $66
    add $12                                       ; $43b0: $c6 $12
    ld l, a                                       ; $43b2: $6f

jr_00a_43b3:
    ld a, $01                                     ; $43b3: $3e $01
    call Call_00a_410d                            ; $43b5: $cd $0d $41
    ld a, [hl]                                    ; $43b8: $7e
    and $01                                       ; $43b9: $e6 $01
    jr z, jr_00a_43c2                             ; $43bb: $28 $05

    dec bc                                        ; $43bd: $0b
    ld a, c                                       ; $43be: $79
    or b                                          ; $43bf: $b0
    jr nz, jr_00a_43b3                            ; $43c0: $20 $f1

jr_00a_43c2:
    pop hl                                        ; $43c2: $e1
    pop bc                                        ; $43c3: $c1
    pop af                                        ; $43c4: $f1
    ret                                           ; $43c5: $c9


Call_00a_43c6:
    cp $ff                                        ; $43c6: $fe $ff
    ret z                                         ; $43c8: $c8

    push af                                       ; $43c9: $f5
    push bc                                       ; $43ca: $c5
    push de                                       ; $43cb: $d5
    push hl                                       ; $43cc: $e5
    add sp, -$04                                  ; $43cd: $e8 $fc
    ld hl, sp+$00                                 ; $43cf: $f8 $00
    ld [hl], c                                    ; $43d1: $71
    inc hl                                        ; $43d2: $23
    ld [hl], b                                    ; $43d3: $70
    inc hl                                        ; $43d4: $23
    ld [hl], e                                    ; $43d5: $73
    inc hl                                        ; $43d6: $23
    ld [hl], d                                    ; $43d7: $72
    ld hl, sp+$00                                 ; $43d8: $f8 $00
    ld b, h                                       ; $43da: $44
    ld c, l                                       ; $43db: $4d
    call Call_00a_42e0                            ; $43dc: $cd $e0 $42
    ld a, l                                       ; $43df: $7d
    ldh [$e0], a                                  ; $43e0: $e0 $e0
    ld a, h                                       ; $43e2: $7c
    ldh [$e1], a                                  ; $43e3: $e0 $e1
    ld a, $04                                     ; $43e5: $3e $04
    ldh [$96], a                                  ; $43e7: $e0 $96
    ldh [rSVBK], a                                ; $43e9: $e0 $70
    call Call_00a_43f5                            ; $43eb: $cd $f5 $43
    add sp, $04                                   ; $43ee: $e8 $04
    pop hl                                        ; $43f0: $e1
    pop de                                        ; $43f1: $d1
    pop bc                                        ; $43f2: $c1
    pop af                                        ; $43f3: $f1
    ret                                           ; $43f4: $c9


Call_00a_43f5:
    push bc                                       ; $43f5: $c5
    push af                                       ; $43f6: $f5
    ld hl, $ffe0                                  ; $43f7: $21 $e0 $ff
    ld a, [hl+]                                   ; $43fa: $2a
    ld h, [hl]                                    ; $43fb: $66
    add $04                                       ; $43fc: $c6 $04
    ld l, a                                       ; $43fe: $6f
    ld e, l                                       ; $43ff: $5d
    ld d, h                                       ; $4400: $54
    pop af                                        ; $4401: $f1
    ld l, c                                       ; $4402: $69
    ld h, b                                       ; $4403: $60
    ld bc, $0004                                  ; $4404: $01 $04 $00
    call Call_000_03d3                            ; $4407: $cd $d3 $03
    pop bc                                        ; $440a: $c1
    ld hl, $ffe0                                  ; $440b: $21 $e0 $ff
    ld a, [hl+]                                   ; $440e: $2a
    ld h, [hl]                                    ; $440f: $66
    add $12                                       ; $4410: $c6 $12
    ld l, a                                       ; $4412: $6f
    ld [hl], $00                                  ; $4413: $36 $00
    ret                                           ; $4415: $c9


    cp $ff                                        ; $4416: $fe $ff
    ret z                                         ; $4418: $c8

    push af                                       ; $4419: $f5
    push bc                                       ; $441a: $c5
    push de                                       ; $441b: $d5
    push hl                                       ; $441c: $e5
    add sp, -$04                                  ; $441d: $e8 $fc
    ld hl, sp+$00                                 ; $441f: $f8 $00
    ld [hl], c                                    ; $4421: $71
    inc hl                                        ; $4422: $23
    ld [hl], b                                    ; $4423: $70
    inc hl                                        ; $4424: $23
    ld [hl], e                                    ; $4425: $73
    inc hl                                        ; $4426: $23
    ld [hl], d                                    ; $4427: $72
    ld hl, sp+$00                                 ; $4428: $f8 $00
    ld b, h                                       ; $442a: $44
    ld c, l                                       ; $442b: $4d
    call Call_00a_42e0                            ; $442c: $cd $e0 $42
    ld a, l                                       ; $442f: $7d
    ldh [$e0], a                                  ; $4430: $e0 $e0
    ld a, h                                       ; $4432: $7c
    ldh [$e1], a                                  ; $4433: $e0 $e1
    ld a, $04                                     ; $4435: $3e $04
    ldh [$96], a                                  ; $4437: $e0 $96
    ldh [rSVBK], a                                ; $4439: $e0 $70
    call Call_00a_4445                            ; $443b: $cd $45 $44
    add sp, $04                                   ; $443e: $e8 $04
    pop hl                                        ; $4440: $e1
    pop de                                        ; $4441: $d1
    pop bc                                        ; $4442: $c1
    pop af                                        ; $4443: $f1
    ret                                           ; $4444: $c9


Call_00a_4445:
    push bc                                       ; $4445: $c5
    push af                                       ; $4446: $f5
    ld hl, $ffe0                                  ; $4447: $21 $e0 $ff
    ld a, [hl+]                                   ; $444a: $2a
    ld h, [hl]                                    ; $444b: $66
    add $0a                                       ; $444c: $c6 $0a
    ld l, a                                       ; $444e: $6f
    ld e, l                                       ; $444f: $5d
    ld d, h                                       ; $4450: $54
    pop af                                        ; $4451: $f1
    ld l, c                                       ; $4452: $69
    ld h, b                                       ; $4453: $60
    ld bc, $0004                                  ; $4454: $01 $04 $00
    call Call_000_03d3                            ; $4457: $cd $d3 $03
    pop bc                                        ; $445a: $c1
    ld hl, $ffe0                                  ; $445b: $21 $e0 $ff
    ld a, [hl+]                                   ; $445e: $2a
    ld h, [hl]                                    ; $445f: $66
    add $12                                       ; $4460: $c6 $12
    ld l, a                                       ; $4462: $6f
    ld [hl], $01                                  ; $4463: $36 $01
    ret                                           ; $4465: $c9


    cp $ff                                        ; $4466: $fe $ff
    ret z                                         ; $4468: $c8

    push af                                       ; $4469: $f5
    push bc                                       ; $446a: $c5
    push de                                       ; $446b: $d5
    push hl                                       ; $446c: $e5
    rst $30                                       ; $446d: $f7
    ret nz                                        ; $446e: $c0

    ld [bc], a                                    ; $446f: $02
    jr z, jr_00a_4475                             ; $4470: $28 $03

    call Call_00a_43c6                            ; $4472: $cd $c6 $43

jr_00a_4475:
    add sp, -$05                                  ; $4475: $e8 $fb
    push af                                       ; $4477: $f5
    ld a, l                                       ; $4478: $7d
    ld hl, sp+$02                                 ; $4479: $f8 $02
    ld [hl], c                                    ; $447b: $71
    inc hl                                        ; $447c: $23
    ld [hl], b                                    ; $447d: $70
    inc hl                                        ; $447e: $23
    ld [hl], e                                    ; $447f: $73
    inc hl                                        ; $4480: $23
    ld [hl], d                                    ; $4481: $72
    inc hl                                        ; $4482: $23
    ld [hl], a                                    ; $4483: $77
    pop af                                        ; $4484: $f1
    ld hl, sp+$00                                 ; $4485: $f8 $00
    ld b, h                                       ; $4487: $44
    ld c, l                                       ; $4488: $4d
    call Call_00a_42e0                            ; $4489: $cd $e0 $42
    ld a, l                                       ; $448c: $7d
    ldh [$e0], a                                  ; $448d: $e0 $e0
    ld a, h                                       ; $448f: $7c
    ldh [$e1], a                                  ; $4490: $e0 $e1
    ld a, $04                                     ; $4492: $3e $04
    ldh [$96], a                                  ; $4494: $e0 $96
    ldh [rSVBK], a                                ; $4496: $e0 $70
    call Call_00a_44a2                            ; $4498: $cd $a2 $44
    add sp, $05                                   ; $449b: $e8 $05
    pop hl                                        ; $449d: $e1
    pop de                                        ; $449e: $d1
    pop bc                                        ; $449f: $c1
    pop af                                        ; $44a0: $f1
    ret                                           ; $44a1: $c9


Call_00a_44a2:
    push bc                                       ; $44a2: $c5
    ld l, c                                       ; $44a3: $69
    ld h, b                                       ; $44a4: $60
    ld c, [hl]                                    ; $44a5: $4e
    inc hl                                        ; $44a6: $23
    ld b, [hl]                                    ; $44a7: $46
    inc hl                                        ; $44a8: $23
    push bc                                       ; $44a9: $c5
    ld c, [hl]                                    ; $44aa: $4e
    inc hl                                        ; $44ab: $23
    ld b, [hl]                                    ; $44ac: $46
    inc hl                                        ; $44ad: $23
    push bc                                       ; $44ae: $c5
    ld a, [hl]                                    ; $44af: $7e
    push af                                       ; $44b0: $f5
    push hl                                       ; $44b1: $e5
    ld hl, $ffe0                                  ; $44b2: $21 $e0 $ff
    ld a, [hl+]                                   ; $44b5: $2a
    ld b, [hl]                                    ; $44b6: $46
    ld c, a                                       ; $44b7: $4f
    ld hl, $0004                                  ; $44b8: $21 $04 $00
    add hl, bc                                    ; $44bb: $09
    ld a, [hl+]                                   ; $44bc: $2a
    ld h, [hl]                                    ; $44bd: $66
    ld l, a                                       ; $44be: $6f
    call Call_000_08ac                            ; $44bf: $cd $ac $08
    pop de                                        ; $44c2: $d1
    push hl                                       ; $44c3: $e5
    ld hl, $0006                                  ; $44c4: $21 $06 $00
    add hl, bc                                    ; $44c7: $09
    ld a, [hl+]                                   ; $44c8: $2a
    ld h, [hl]                                    ; $44c9: $66
    ld l, a                                       ; $44ca: $6f
    call Call_000_08ac                            ; $44cb: $cd $ac $08
    pop de                                        ; $44ce: $d1
    call Call_000_0a7b                            ; $44cf: $cd $7b $0a
    pop hl                                        ; $44d2: $e1
    ld l, h                                       ; $44d3: $6c
    ld h, $00                                     ; $44d4: $26 $00
    call Call_000_0b31                            ; $44d6: $cd $31 $0b
    pop bc                                        ; $44d9: $c1
    add hl, bc                                    ; $44da: $09
    ld c, l                                       ; $44db: $4d
    ld b, h                                       ; $44dc: $44
    pop hl                                        ; $44dd: $e1
    add hl, de                                    ; $44de: $19
    ld e, l                                       ; $44df: $5d
    ld d, h                                       ; $44e0: $54
    ld hl, $ffe0                                  ; $44e1: $21 $e0 $ff
    ld a, [hl+]                                   ; $44e4: $2a
    ld h, [hl]                                    ; $44e5: $66
    add $0a                                       ; $44e6: $c6 $0a
    ld l, a                                       ; $44e8: $6f
    ld [hl], c                                    ; $44e9: $71
    inc hl                                        ; $44ea: $23
    ld [hl], b                                    ; $44eb: $70
    inc hl                                        ; $44ec: $23
    ld [hl], e                                    ; $44ed: $73
    inc hl                                        ; $44ee: $23
    ld [hl], d                                    ; $44ef: $72
    pop bc                                        ; $44f0: $c1
    ld hl, $0005                                  ; $44f1: $21 $05 $00
    add hl, bc                                    ; $44f4: $09
    ld c, l                                       ; $44f5: $4d
    ld b, h                                       ; $44f6: $44
    ld hl, $ffe0                                  ; $44f7: $21 $e0 $ff
    ld a, [hl+]                                   ; $44fa: $2a
    ld h, [hl]                                    ; $44fb: $66
    add $12                                       ; $44fc: $c6 $12
    ld l, a                                       ; $44fe: $6f
    ld a, $01                                     ; $44ff: $3e $01
    ld [hl], a                                    ; $4501: $77
    ret                                           ; $4502: $c9


    cp $ff                                        ; $4503: $fe $ff
    ret z                                         ; $4505: $c8

    push af                                       ; $4506: $f5
    push bc                                       ; $4507: $c5
    push de                                       ; $4508: $d5
    push hl                                       ; $4509: $e5
    add sp, -$04                                  ; $450a: $e8 $fc
    ld hl, sp+$00                                 ; $450c: $f8 $00
    ld [hl], c                                    ; $450e: $71
    inc hl                                        ; $450f: $23
    ld [hl], b                                    ; $4510: $70
    inc hl                                        ; $4511: $23
    ld [hl], e                                    ; $4512: $73
    inc hl                                        ; $4513: $23
    ld [hl], d                                    ; $4514: $72
    ld hl, sp+$00                                 ; $4515: $f8 $00
    ld b, h                                       ; $4517: $44
    ld c, l                                       ; $4518: $4d
    call Call_00a_42e0                            ; $4519: $cd $e0 $42
    ld a, l                                       ; $451c: $7d
    ldh [$e0], a                                  ; $451d: $e0 $e0
    ld a, h                                       ; $451f: $7c

Jump_00a_4520:
    ldh [$e1], a                                  ; $4520: $e0 $e1
    ld a, $04                                     ; $4522: $3e $04
    ldh [$96], a                                  ; $4524: $e0 $96
    ldh [rSVBK], a                                ; $4526: $e0 $70
    call Call_00a_4532                            ; $4528: $cd $32 $45
    add sp, $04                                   ; $452b: $e8 $04
    pop hl                                        ; $452d: $e1
    pop de                                        ; $452e: $d1
    pop bc                                        ; $452f: $c1
    pop af                                        ; $4530: $f1
    ret                                           ; $4531: $c9


Call_00a_4532:
    push de                                       ; $4532: $d5
    ld l, c                                       ; $4533: $69
    ld h, b                                       ; $4534: $60
    ld c, [hl]                                    ; $4535: $4e
    inc hl                                        ; $4536: $23
    ld b, [hl]                                    ; $4537: $46
    inc hl                                        ; $4538: $23
    ld e, c                                       ; $4539: $59
    ld d, b                                       ; $453a: $50
    ld c, l                                       ; $453b: $4d
    ld b, h                                       ; $453c: $44
    ld hl, $ffe0                                  ; $453d: $21 $e0 $ff
    ld a, [hl+]                                   ; $4540: $2a
    ld h, [hl]                                    ; $4541: $66
    add $04                                       ; $4542: $c6 $04

Jump_00a_4544:
    ld l, a                                       ; $4544: $6f
    ld a, [hl+]                                   ; $4545: $2a
    ld h, [hl]                                    ; $4546: $66
    ld l, a                                       ; $4547: $6f
    add hl, de                                    ; $4548: $19
    ld e, l                                       ; $4549: $5d
    ld d, h                                       ; $454a: $54
    ld hl, $ffe0                                  ; $454b: $21 $e0 $ff
    ld a, [hl+]                                   ; $454e: $2a
    ld h, [hl]                                    ; $454f: $66
    add $0a                                       ; $4550: $c6 $0a
    ld l, a                                       ; $4552: $6f
    ld a, e                                       ; $4553: $7b
    ld [hl+], a                                   ; $4554: $22
    ld [hl], d                                    ; $4555: $72
    pop de                                        ; $4556: $d1
    ld a, d                                       ; $4557: $7a
    ld l, c                                       ; $4558: $69
    ld h, b                                       ; $4559: $60
    ld c, [hl]                                    ; $455a: $4e
    inc hl                                        ; $455b: $23
    ld b, [hl]                                    ; $455c: $46
    inc hl                                        ; $455d: $23
    ld e, c                                       ; $455e: $59
    ld d, b                                       ; $455f: $50
    ld c, l                                       ; $4560: $4d
    ld b, h                                       ; $4561: $44
    ld hl, $ffe0                                  ; $4562: $21 $e0 $ff
    ld a, [hl+]                                   ; $4565: $2a
    ld h, [hl]                                    ; $4566: $66
    add $06                                       ; $4567: $c6 $06
    ld l, a                                       ; $4569: $6f
    ld a, [hl+]                                   ; $456a: $2a
    ld h, [hl]                                    ; $456b: $66
    ld l, a                                       ; $456c: $6f
    add hl, de                                    ; $456d: $19
    ld e, l                                       ; $456e: $5d
    ld d, h                                       ; $456f: $54
    ld hl, $ffe0                                  ; $4570: $21 $e0 $ff
    ld a, [hl+]                                   ; $4573: $2a
    ld h, [hl]                                    ; $4574: $66
    add $0c                                       ; $4575: $c6 $0c
    ld l, a                                       ; $4577: $6f
    ld a, e                                       ; $4578: $7b
    ld [hl+], a                                   ; $4579: $22
    ld [hl], d                                    ; $457a: $72
    ld hl, $ffe0                                  ; $457b: $21 $e0 $ff
    ld a, [hl+]                                   ; $457e: $2a
    ld h, [hl]                                    ; $457f: $66
    add $12                                       ; $4580: $c6 $12
    ld l, a                                       ; $4582: $6f
    ld a, $01                                     ; $4583: $3e $01
    ld [hl], a                                    ; $4585: $77
    ret                                           ; $4586: $c9


    cp $ff                                        ; $4587: $fe $ff
    ret z                                         ; $4589: $c8

    push af                                       ; $458a: $f5
    push bc                                       ; $458b: $c5
    push de                                       ; $458c: $d5
    push hl                                       ; $458d: $e5
    add sp, -$03                                  ; $458e: $e8 $fd
    ld hl, sp+$00                                 ; $4590: $f8 $00
    ld [hl], b                                    ; $4592: $70
    inc hl                                        ; $4593: $23
    ld [hl], e                                    ; $4594: $73
    inc hl                                        ; $4595: $23
    ld [hl], d                                    ; $4596: $72
    ld hl, sp+$00                                 ; $4597: $f8 $00
    ld b, h                                       ; $4599: $44
    ld c, l                                       ; $459a: $4d
    call Call_00a_42e0                            ; $459b: $cd $e0 $42
    ld a, l                                       ; $459e: $7d
    ldh [$e0], a                                  ; $459f: $e0 $e0
    ld a, h                                       ; $45a1: $7c
    ldh [$e1], a                                  ; $45a2: $e0 $e1
    ld a, $04                                     ; $45a4: $3e $04
    ldh [$96], a                                  ; $45a6: $e0 $96
    ldh [rSVBK], a                                ; $45a8: $e0 $70
    call Call_00a_45b6                            ; $45aa: $cd $b6 $45
    jr jr_00a_45af                                ; $45ad: $18 $00

jr_00a_45af:
    add sp, $03                                   ; $45af: $e8 $03
    pop hl                                        ; $45b1: $e1
    pop de                                        ; $45b2: $d1
    pop bc                                        ; $45b3: $c1
    pop af                                        ; $45b4: $f1
    ret                                           ; $45b5: $c9


Call_00a_45b6:
    ld a, d                                       ; $45b6: $7a
    ld l, c                                       ; $45b7: $69
    ld h, b                                       ; $45b8: $60
    ld a, [hl]                                    ; $45b9: $7e
    inc bc                                        ; $45ba: $03
    push af                                       ; $45bb: $f5
    push bc                                       ; $45bc: $c5
    ld a, d                                       ; $45bd: $7a
    ld l, c                                       ; $45be: $69
    ld h, b                                       ; $45bf: $60
    ld c, [hl]                                    ; $45c0: $4e
    inc hl                                        ; $45c1: $23
    ld b, [hl]                                    ; $45c2: $46
    ld l, c                                       ; $45c3: $69
    ld h, b                                       ; $45c4: $60
    pop bc                                        ; $45c5: $c1
    inc bc                                        ; $45c6: $03
    inc bc                                        ; $45c7: $03
    pop af                                        ; $45c8: $f1
    call Call_000_0af2                            ; $45c9: $cd $f2 $0a
    push de                                       ; $45cc: $d5
    ld e, l                                       ; $45cd: $5d
    ld d, h                                       ; $45ce: $54
    ld hl, $ffe0                                  ; $45cf: $21 $e0 $ff
    ld a, [hl+]                                   ; $45d2: $2a
    ld h, [hl]                                    ; $45d3: $66
    add $04                                       ; $45d4: $c6 $04
    ld l, a                                       ; $45d6: $6f
    ld a, [hl+]                                   ; $45d7: $2a
    ld h, [hl]                                    ; $45d8: $66
    ld l, a                                       ; $45d9: $6f
    add hl, de                                    ; $45da: $19
    ld e, l                                       ; $45db: $5d
    ld d, h                                       ; $45dc: $54
    ld hl, $ffe0                                  ; $45dd: $21 $e0 $ff
    ld a, [hl+]                                   ; $45e0: $2a
    ld h, [hl]                                    ; $45e1: $66
    add $0a                                       ; $45e2: $c6 $0a
    ld l, a                                       ; $45e4: $6f
    ld a, e                                       ; $45e5: $7b
    ld [hl+], a                                   ; $45e6: $22
    ld [hl], d                                    ; $45e7: $72
    pop de                                        ; $45e8: $d1
    ld hl, $ffe0                                  ; $45e9: $21 $e0 $ff
    ld a, [hl+]                                   ; $45ec: $2a
    ld h, [hl]                                    ; $45ed: $66
    add $06                                       ; $45ee: $c6 $06
    ld l, a                                       ; $45f0: $6f
    ld a, [hl+]                                   ; $45f1: $2a
    ld h, [hl]                                    ; $45f2: $66
    ld l, a                                       ; $45f3: $6f
    add hl, de                                    ; $45f4: $19
    ld e, l                                       ; $45f5: $5d
    ld d, h                                       ; $45f6: $54
    ld hl, $ffe0                                  ; $45f7: $21 $e0 $ff
    ld a, [hl+]                                   ; $45fa: $2a
    ld h, [hl]                                    ; $45fb: $66
    add $0c                                       ; $45fc: $c6 $0c
    ld l, a                                       ; $45fe: $6f
    ld a, e                                       ; $45ff: $7b
    ld [hl+], a                                   ; $4600: $22
    ld [hl], d                                    ; $4601: $72
    ld hl, $ffe0                                  ; $4602: $21 $e0 $ff
    ld a, [hl+]                                   ; $4605: $2a
    ld h, [hl]                                    ; $4606: $66
    add $12                                       ; $4607: $c6 $12
    ld l, a                                       ; $4609: $6f
    ld a, $01                                     ; $460a: $3e $01
    ld [hl], a                                    ; $460c: $77
    ret                                           ; $460d: $c9


    cp $ff                                        ; $460e: $fe $ff
    ret z                                         ; $4610: $c8

    push af                                       ; $4611: $f5
    call Call_00a_42e0                            ; $4612: $cd $e0 $42
    ld a, l                                       ; $4615: $7d
    ldh [$e0], a                                  ; $4616: $e0 $e0
    ld a, h                                       ; $4618: $7c
    ldh [$e1], a                                  ; $4619: $e0 $e1
    ld a, $04                                     ; $461b: $3e $04
    ldh [$96], a                                  ; $461d: $e0 $96
    ldh [rSVBK], a                                ; $461f: $e0 $70
    ld a, b                                       ; $4621: $78
    and a                                         ; $4622: $a7
    jr nz, jr_00a_4639                            ; $4623: $20 $14

    ld hl, $ffe0                                  ; $4625: $21 $e0 $ff
    ld a, [hl+]                                   ; $4628: $2a
    ld h, [hl]                                    ; $4629: $66
    add $32                                       ; $462a: $c6 $32
    ld l, a                                       ; $462c: $6f
    ld a, [hl]                                    ; $462d: $7e
    push af                                       ; $462e: $f5
    ld hl, $ffe0                                  ; $462f: $21 $e0 $ff
    ld a, [hl+]                                   ; $4632: $2a
    ld h, [hl]                                    ; $4633: $66
    add $10                                       ; $4634: $c6 $10
    ld l, a                                       ; $4636: $6f
    pop af                                        ; $4637: $f1
    ld [hl], a                                    ; $4638: $77

jr_00a_4639:
    ld hl, $ffe0                                  ; $4639: $21 $e0 $ff
    ld a, [hl+]                                   ; $463c: $2a
    ld h, [hl]                                    ; $463d: $66
    add $33                                       ; $463e: $c6 $33
    ld l, a                                       ; $4640: $6f
    ld [hl], b                                    ; $4641: $70
    pop af                                        ; $4642: $f1
    ret                                           ; $4643: $c9


    cp $ff                                        ; $4644: $fe $ff
    ret z                                         ; $4646: $c8

    push af                                       ; $4647: $f5
    call Call_00a_42e0                            ; $4648: $cd $e0 $42
    ld a, l                                       ; $464b: $7d
    ldh [$e0], a                                  ; $464c: $e0 $e0
    ld a, h                                       ; $464e: $7c
    ldh [$e1], a                                  ; $464f: $e0 $e1
    ld a, $04                                     ; $4651: $3e $04
    ldh [$96], a                                  ; $4653: $e0 $96
    ldh [rSVBK], a                                ; $4655: $e0 $70
    ld hl, $ffe0                                  ; $4657: $21 $e0 $ff
    ld a, [hl+]                                   ; $465a: $2a
    ld h, [hl]                                    ; $465b: $66
    add $10                                       ; $465c: $c6 $10
    ld l, a                                       ; $465e: $6f
    ld [hl], b                                    ; $465f: $70
    pop af                                        ; $4660: $f1
    ret                                           ; $4661: $c9


    cp $ff                                        ; $4662: $fe $ff
    ret z                                         ; $4664: $c8

    push bc                                       ; $4665: $c5
    inc b                                         ; $4666: $04
    pop bc                                        ; $4667: $c1
    ret z                                         ; $4668: $c8

    push af                                       ; $4669: $f5
    push bc                                       ; $466a: $c5
    push de                                       ; $466b: $d5
    push hl                                       ; $466c: $e5
    ld d, a                                       ; $466d: $57
    ld a, b                                       ; $466e: $78
    call Call_00a_42e0                            ; $466f: $cd $e0 $42
    ld a, l                                       ; $4672: $7d
    ldh [$e0], a                                  ; $4673: $e0 $e0
    ld a, h                                       ; $4675: $7c
    ldh [$e1], a                                  ; $4676: $e0 $e1
    ld a, $04                                     ; $4678: $3e $04
    ldh [$96], a                                  ; $467a: $e0 $96
    ldh [rSVBK], a                                ; $467c: $e0 $70
    ld hl, $ffe0                                  ; $467e: $21 $e0 $ff
    ld a, [hl+]                                   ; $4681: $2a
    ld h, [hl]                                    ; $4682: $66
    add $04                                       ; $4683: $c6 $04
    ld l, a                                       ; $4685: $6f
    ld c, [hl]                                    ; $4686: $4e
    inc hl                                        ; $4687: $23
    ld b, [hl]                                    ; $4688: $46
    inc hl                                        ; $4689: $23
    push bc                                       ; $468a: $c5
    ld c, [hl]                                    ; $468b: $4e
    inc hl                                        ; $468c: $23
    ld b, [hl]                                    ; $468d: $46
    push bc                                       ; $468e: $c5
    ld a, d                                       ; $468f: $7a
    call Call_00a_42e0                            ; $4690: $cd $e0 $42
    ld a, l                                       ; $4693: $7d
    ldh [$e0], a                                  ; $4694: $e0 $e0
    ld a, h                                       ; $4696: $7c
    ldh [$e1], a                                  ; $4697: $e0 $e1
    ld hl, $ffe0                                  ; $4699: $21 $e0 $ff
    ld a, [hl+]                                   ; $469c: $2a
    ld h, [hl]                                    ; $469d: $66
    add $06                                       ; $469e: $c6 $06
    ld l, a                                       ; $46a0: $6f
    ld a, [hl+]                                   ; $46a1: $2a
    ld h, [hl]                                    ; $46a2: $66
    ld l, a                                       ; $46a3: $6f
    ld d, h                                       ; $46a4: $54
    ld e, l                                       ; $46a5: $5d
    pop hl                                        ; $46a6: $e1
    call Call_000_08ac                            ; $46a7: $cd $ac $08
    ld b, h                                       ; $46aa: $44
    ld c, l                                       ; $46ab: $4d
    ld hl, $ffe0                                  ; $46ac: $21 $e0 $ff
    ld a, [hl+]                                   ; $46af: $2a
    ld h, [hl]                                    ; $46b0: $66
    add $04                                       ; $46b1: $c6 $04
    ld l, a                                       ; $46b3: $6f
    ld a, [hl+]                                   ; $46b4: $2a
    ld h, [hl]                                    ; $46b5: $66
    ld l, a                                       ; $46b6: $6f
    ld d, h                                       ; $46b7: $54
    ld e, l                                       ; $46b8: $5d
    pop hl                                        ; $46b9: $e1
    call Call_000_08ac                            ; $46ba: $cd $ac $08
    ld d, h                                       ; $46bd: $54
    ld e, l                                       ; $46be: $5d
    ld h, b                                       ; $46bf: $60
    ld l, c                                       ; $46c0: $69
    call Call_000_0a7b                            ; $46c1: $cd $7b $0a
    push af                                       ; $46c4: $f5
    ld hl, $ffe0                                  ; $46c5: $21 $e0 $ff
    ld a, [hl+]                                   ; $46c8: $2a
    ld h, [hl]                                    ; $46c9: $66
    add $10                                       ; $46ca: $c6 $10
    ld l, a                                       ; $46cc: $6f
    pop af                                        ; $46cd: $f1
    ld [hl], a                                    ; $46ce: $77
    pop hl                                        ; $46cf: $e1
    pop de                                        ; $46d0: $d1
    pop bc                                        ; $46d1: $c1
    pop af                                        ; $46d2: $f1
    ret                                           ; $46d3: $c9


    cp $ff                                        ; $46d4: $fe $ff
    ret z                                         ; $46d6: $c8

    push bc                                       ; $46d7: $c5
    inc b                                         ; $46d8: $04
    pop bc                                        ; $46d9: $c1
    ret z                                         ; $46da: $c8

    push af                                       ; $46db: $f5
    push bc                                       ; $46dc: $c5
    push de                                       ; $46dd: $d5
    push hl                                       ; $46de: $e5
    ld d, a                                       ; $46df: $57
    ld a, b                                       ; $46e0: $78
    call Call_00a_42e0                            ; $46e1: $cd $e0 $42
    push hl                                       ; $46e4: $e5
    ld a, l                                       ; $46e5: $7d
    ldh [$e0], a                                  ; $46e6: $e0 $e0
    ld a, h                                       ; $46e8: $7c
    ldh [$e1], a                                  ; $46e9: $e0 $e1
    ld a, $04                                     ; $46eb: $3e $04
    ldh [$96], a                                  ; $46ed: $e0 $96
    ldh [rSVBK], a                                ; $46ef: $e0 $70
    ld hl, $ffe0                                  ; $46f1: $21 $e0 $ff
    ld a, [hl+]                                   ; $46f4: $2a
    ld h, [hl]                                    ; $46f5: $66
    add $04                                       ; $46f6: $c6 $04
    ld l, a                                       ; $46f8: $6f
    ld c, [hl]                                    ; $46f9: $4e
    inc hl                                        ; $46fa: $23
    ld b, [hl]                                    ; $46fb: $46
    inc hl                                        ; $46fc: $23
    push bc                                       ; $46fd: $c5
    ld c, [hl]                                    ; $46fe: $4e
    inc hl                                        ; $46ff: $23
    ld b, [hl]                                    ; $4700: $46
    push bc                                       ; $4701: $c5
    ld a, d                                       ; $4702: $7a
    call Call_00a_42e0                            ; $4703: $cd $e0 $42
    ld a, l                                       ; $4706: $7d
    ldh [$e0], a                                  ; $4707: $e0 $e0
    ld a, h                                       ; $4709: $7c
    ldh [$e1], a                                  ; $470a: $e0 $e1
    ld hl, $ffe0                                  ; $470c: $21 $e0 $ff
    ld a, [hl+]                                   ; $470f: $2a
    ld h, [hl]                                    ; $4710: $66
    add $06                                       ; $4711: $c6 $06
    ld l, a                                       ; $4713: $6f
    ld a, [hl+]                                   ; $4714: $2a
    ld h, [hl]                                    ; $4715: $66
    ld l, a                                       ; $4716: $6f
    ld d, h                                       ; $4717: $54
    ld e, l                                       ; $4718: $5d
    pop hl                                        ; $4719: $e1
    call Call_000_08ac                            ; $471a: $cd $ac $08
    ld b, h                                       ; $471d: $44
    ld c, l                                       ; $471e: $4d
    ld hl, $ffe0                                  ; $471f: $21 $e0 $ff
    ld a, [hl+]                                   ; $4722: $2a
    ld h, [hl]                                    ; $4723: $66
    add $04                                       ; $4724: $c6 $04
    ld l, a                                       ; $4726: $6f
    ld a, [hl+]                                   ; $4727: $2a
    ld h, [hl]                                    ; $4728: $66
    ld l, a                                       ; $4729: $6f
    ld d, h                                       ; $472a: $54
    ld e, l                                       ; $472b: $5d
    pop hl                                        ; $472c: $e1
    call Call_000_08ac                            ; $472d: $cd $ac $08
    ld d, h                                       ; $4730: $54
    ld e, l                                       ; $4731: $5d
    ld h, b                                       ; $4732: $60
    ld l, c                                       ; $4733: $69
    call Call_000_0a7b                            ; $4734: $cd $7b $0a
    push af                                       ; $4737: $f5
    ld hl, $ffe0                                  ; $4738: $21 $e0 $ff
    ld a, [hl+]                                   ; $473b: $2a
    ld h, [hl]                                    ; $473c: $66
    add $10                                       ; $473d: $c6 $10
    ld l, a                                       ; $473f: $6f
    pop af                                        ; $4740: $f1
    ld [hl], a                                    ; $4741: $77
    add $80                                       ; $4742: $c6 $80
    pop hl                                        ; $4744: $e1
    ld d, a                                       ; $4745: $57
    ld a, l                                       ; $4746: $7d
    ldh [$e0], a                                  ; $4747: $e0 $e0
    ld a, h                                       ; $4749: $7c
    ldh [$e1], a                                  ; $474a: $e0 $e1
    ld hl, $ffe0                                  ; $474c: $21 $e0 $ff
    ld a, [hl+]                                   ; $474f: $2a
    ld h, [hl]                                    ; $4750: $66
    add $10                                       ; $4751: $c6 $10
    ld l, a                                       ; $4753: $6f
    ld a, d                                       ; $4754: $7a
    ld [hl], a                                    ; $4755: $77
    pop hl                                        ; $4756: $e1
    pop de                                        ; $4757: $d1
    pop bc                                        ; $4758: $c1
    pop af                                        ; $4759: $f1
    ret                                           ; $475a: $c9


    cp $ff                                        ; $475b: $fe $ff
    ret z                                         ; $475d: $c8

    ld c, a                                       ; $475e: $4f
    ld a, b                                       ; $475f: $78
    call Call_00a_42e0                            ; $4760: $cd $e0 $42
    ld a, c                                       ; $4763: $79
    rst $18                                       ; $4764: $df

    db $38, $04

    ret                                           ; $4767: $c9


    rst $30                                       ; $4768: $f7

    db $c0, $02

    jr nz, jr_00a_4773                            ; $476b: $20 $06

    call Call_00a_42e0                            ; $476d: $cd $e0 $42
    rst $18                                       ; $4770: $df

    db $44, $04

jr_00a_4773:
    ret                                           ; $4773: $c9


    cp $ff                                        ; $4774: $fe $ff
    ret z                                         ; $4776: $c8

    call Call_00a_42e0                            ; $4777: $cd $e0 $42
    ld a, $04                                     ; $477a: $3e $04
    ldh [$96], a                                  ; $477c: $e0 $96
    ldh [rSVBK], a                                ; $477e: $e0 $70
    ld a, $1c                                     ; $4780: $3e $1c
    add l                                         ; $4782: $85
    ld l, a                                       ; $4783: $6f
    ld a, e                                       ; $4784: $7b
    ld [hl+], a                                   ; $4785: $22
    ld [hl], d                                    ; $4786: $72
    ret                                           ; $4787: $c9


    rst $30                                       ; $4788: $f7
    ret nz                                        ; $4789: $c0

    ld [bc], a                                    ; $478a: $02
    jr nz, jr_00a_4793                            ; $478b: $20 $06

    call Call_00a_42e0                            ; $478d: $cd $e0 $42
    rst $18                                       ; $4790: $df
    ld d, d                                       ; $4791: $52
    inc b                                         ; $4792: $04

jr_00a_4793:
    ret                                           ; $4793: $c9


    cp $ff                                        ; $4794: $fe $ff
    ret z                                         ; $4796: $c8

    call Call_00a_42e0                            ; $4797: $cd $e0 $42
    ld a, $04                                     ; $479a: $3e $04
    ldh [$96], a                                  ; $479c: $e0 $96
    ldh [rSVBK], a                                ; $479e: $e0 $70
    ld de, $0016                                  ; $47a0: $11 $16 $00
    add hl, de                                    ; $47a3: $19
    ld [hl], b                                    ; $47a4: $70
    ret                                           ; $47a5: $c9


    push af                                       ; $47a6: $f5
    push hl                                       ; $47a7: $e5
    ld hl, $c292                                  ; $47a8: $21 $92 $c2
    ld a, [hl+]                                   ; $47ab: $2a
    ld h, [hl]                                    ; $47ac: $66
    ld l, a                                       ; $47ad: $6f
    ld a, l                                       ; $47ae: $7d
    ldh [$e0], a                                  ; $47af: $e0 $e0
    ld a, h                                       ; $47b1: $7c
    ldh [$e1], a                                  ; $47b2: $e0 $e1
    ld a, $04                                     ; $47b4: $3e $04
    ldh [$96], a                                  ; $47b6: $e0 $96
    ldh [rSVBK], a                                ; $47b8: $e0 $70
    ld hl, $ffe0                                  ; $47ba: $21 $e0 $ff
    ld a, [hl+]                                   ; $47bd: $2a
    ld h, [hl]                                    ; $47be: $66
    add $0e                                       ; $47bf: $c6 $0e
    ld l, a                                       ; $47c1: $6f
    ld [hl], c                                    ; $47c2: $71
    inc hl                                        ; $47c3: $23
    ld [hl], b                                    ; $47c4: $70
    pop hl                                        ; $47c5: $e1
    pop af                                        ; $47c6: $f1
    ret                                           ; $47c7: $c9


    push af                                       ; $47c8: $f5
    push bc                                       ; $47c9: $c5
    push de                                       ; $47ca: $d5
    push hl                                       ; $47cb: $e5
    add sp, -$04                                  ; $47cc: $e8 $fc
    ld hl, sp+$00                                 ; $47ce: $f8 $00
    ld [hl], c                                    ; $47d0: $71
    inc hl                                        ; $47d1: $23
    ld [hl], b                                    ; $47d2: $70
    inc hl                                        ; $47d3: $23
    ld [hl], e                                    ; $47d4: $73
    inc hl                                        ; $47d5: $23
    ld [hl], d                                    ; $47d6: $72
    ld hl, sp+$00                                 ; $47d7: $f8 $00
    ld b, h                                       ; $47d9: $44
    ld c, l                                       ; $47da: $4d
    ld d, a                                       ; $47db: $57
    ld hl, $c292                                  ; $47dc: $21 $92 $c2
    ld a, [hl+]                                   ; $47df: $2a
    ld h, [hl]                                    ; $47e0: $66
    ld l, a                                       ; $47e1: $6f
    ld a, l                                       ; $47e2: $7d
    ldh [$e0], a                                  ; $47e3: $e0 $e0
    ld a, h                                       ; $47e5: $7c
    ldh [$e1], a                                  ; $47e6: $e0 $e1
    ld a, $04                                     ; $47e8: $3e $04
    ldh [$96], a                                  ; $47ea: $e0 $96
    ldh [rSVBK], a                                ; $47ec: $e0 $70
    ld a, d                                       ; $47ee: $7a
    or a                                          ; $47ef: $b7
    jr nz, jr_00a_47f7                            ; $47f0: $20 $05

    call Call_00a_4445                            ; $47f2: $cd $45 $44
    jr jr_00a_4823                                ; $47f5: $18 $2c

jr_00a_47f7:
    push af                                       ; $47f7: $f5
    push bc                                       ; $47f8: $c5
    push de                                       ; $47f9: $d5
    push hl                                       ; $47fa: $e5
    ld c, $7f                                     ; $47fb: $0e $7f
    call Call_000_25a1                            ; $47fd: $cd $a1 $25
    call Call_000_2625                            ; $4800: $cd $25 $26
    pop hl                                        ; $4803: $e1
    pop de                                        ; $4804: $d1
    pop bc                                        ; $4805: $c1
    pop af                                        ; $4806: $f1
    ld a, l                                       ; $4807: $7d
    ldh [$e0], a                                  ; $4808: $e0 $e0
    ld a, h                                       ; $480a: $7c
    ldh [$e1], a                                  ; $480b: $e0 $e1
    call Call_00a_43f5                            ; $480d: $cd $f5 $43
    call Call_000_2e3b                            ; $4810: $cd $3b $2e
    rst $18                                       ; $4813: $df
    inc e                                         ; $4814: $1c
    dec b                                         ; $4815: $05
    ld b, $05                                     ; $4816: $06 $05
    call Call_000_2e3b                            ; $4818: $cd $3b $2e
    ld c, $7f                                     ; $481b: $0e $7f
    call Call_000_25af                            ; $481d: $cd $af $25
    call Call_000_2625                            ; $4820: $cd $25 $26

jr_00a_4823:
    add sp, $04                                   ; $4823: $e8 $04
    pop hl                                        ; $4825: $e1
    pop de                                        ; $4826: $d1
    pop bc                                        ; $4827: $c1
    pop af                                        ; $4828: $f1
    ret                                           ; $4829: $c9


    cp $ff                                        ; $482a: $fe $ff
    ret z                                         ; $482c: $c8

    push af                                       ; $482d: $f5
    push bc                                       ; $482e: $c5
    push de                                       ; $482f: $d5
    push hl                                       ; $4830: $e5
    push af                                       ; $4831: $f5
    ld a, $04                                     ; $4832: $3e $04
    ldh [$96], a                                  ; $4834: $e0 $96
    ldh [rSVBK], a                                ; $4836: $e0 $70
    pop af                                        ; $4838: $f1
    add sp, -$04                                  ; $4839: $e8 $fc
    ld hl, sp+$00                                 ; $483b: $f8 $00
    call Call_00a_42e0                            ; $483d: $cd $e0 $42
    ld a, l                                       ; $4840: $7d
    ldh [$e0], a                                  ; $4841: $e0 $e0
    ld a, h                                       ; $4843: $7c
    ldh [$e1], a                                  ; $4844: $e0 $e1
    ld hl, $ffe0                                  ; $4846: $21 $e0 $ff
    ld a, [hl+]                                   ; $4849: $2a
    ld h, [hl]                                    ; $484a: $66
    add $04                                       ; $484b: $c6 $04
    ld l, a                                       ; $484d: $6f
    ld a, b                                       ; $484e: $78
    ld c, [hl]                                    ; $484f: $4e
    inc hl                                        ; $4850: $23
    ld b, [hl]                                    ; $4851: $46
    inc hl                                        ; $4852: $23
    ld e, [hl]                                    ; $4853: $5e
    inc hl                                        ; $4854: $23
    ld d, [hl]                                    ; $4855: $56
    ld hl, sp+$00                                 ; $4856: $f8 $00
    ld [hl], c                                    ; $4858: $71
    inc hl                                        ; $4859: $23
    ld [hl], b                                    ; $485a: $70
    inc hl                                        ; $485b: $23
    ld [hl], e                                    ; $485c: $73
    inc hl                                        ; $485d: $23
    ld [hl], d                                    ; $485e: $72
    ld hl, sp+$00                                 ; $485f: $f8 $00
    ld b, h                                       ; $4861: $44
    ld c, l                                       ; $4862: $4d
    ld d, a                                       ; $4863: $57
    ld hl, $c292                                  ; $4864: $21 $92 $c2
    ld a, [hl+]                                   ; $4867: $2a
    ld h, [hl]                                    ; $4868: $66
    ld l, a                                       ; $4869: $6f
    ld a, l                                       ; $486a: $7d
    ldh [$e0], a                                  ; $486b: $e0 $e0
    ld a, h                                       ; $486d: $7c
    ldh [$e1], a                                  ; $486e: $e0 $e1
    ld a, d                                       ; $4870: $7a
    or a                                          ; $4871: $b7
    jr nz, jr_00a_4879                            ; $4872: $20 $05

    call Call_00a_4445                            ; $4874: $cd $45 $44
    jr jr_00a_48a5                                ; $4877: $18 $2c

jr_00a_4879:
    push af                                       ; $4879: $f5
    push bc                                       ; $487a: $c5
    push de                                       ; $487b: $d5
    push hl                                       ; $487c: $e5
    ld c, $7f                                     ; $487d: $0e $7f
    call Call_000_25a1                            ; $487f: $cd $a1 $25
    call Call_000_2625                            ; $4882: $cd $25 $26
    pop hl                                        ; $4885: $e1
    pop de                                        ; $4886: $d1
    pop bc                                        ; $4887: $c1
    pop af                                        ; $4888: $f1
    ld a, l                                       ; $4889: $7d
    ldh [$e0], a                                  ; $488a: $e0 $e0
    ld a, h                                       ; $488c: $7c
    ldh [$e1], a                                  ; $488d: $e0 $e1
    call Call_00a_43f5                            ; $488f: $cd $f5 $43
    call Call_000_2e3b                            ; $4892: $cd $3b $2e
    rst $18                                       ; $4895: $df
    inc e                                         ; $4896: $1c
    dec b                                         ; $4897: $05
    ld b, $05                                     ; $4898: $06 $05
    call Call_000_2e3b                            ; $489a: $cd $3b $2e
    ld c, $7f                                     ; $489d: $0e $7f
    call Call_000_25af                            ; $489f: $cd $af $25
    call Call_000_2625                            ; $48a2: $cd $25 $26

jr_00a_48a5:
    add sp, $04                                   ; $48a5: $e8 $04
    pop hl                                        ; $48a7: $e1
    pop de                                        ; $48a8: $d1
    pop bc                                        ; $48a9: $c1
    pop af                                        ; $48aa: $f1
    ret                                           ; $48ab: $c9


Call_00a_48ac:
    push af                                       ; $48ac: $f5
    push bc                                       ; $48ad: $c5
    push hl                                       ; $48ae: $e5
    ld bc, $0258                                  ; $48af: $01 $58 $02
    ld hl, $c292                                  ; $48b2: $21 $92 $c2
    ld a, [hl+]                                   ; $48b5: $2a
    ld h, [hl]                                    ; $48b6: $66
    ld l, a                                       ; $48b7: $6f
    ld a, l                                       ; $48b8: $7d
    ldh [$e0], a                                  ; $48b9: $e0 $e0
    ld a, h                                       ; $48bb: $7c
    ldh [$e1], a                                  ; $48bc: $e0 $e1
    ld a, $04                                     ; $48be: $3e $04
    ldh [$96], a                                  ; $48c0: $e0 $96
    ldh [rSVBK], a                                ; $48c2: $e0 $70
    ld hl, $ffe0                                  ; $48c4: $21 $e0 $ff
    ld a, [hl+]                                   ; $48c7: $2a
    ld h, [hl]                                    ; $48c8: $66
    add $12                                       ; $48c9: $c6 $12
    ld l, a                                       ; $48cb: $6f

jr_00a_48cc:
    ld a, $01                                     ; $48cc: $3e $01
    call Call_00a_410d                            ; $48ce: $cd $0d $41
    ld a, [hl]                                    ; $48d1: $7e
    and $01                                       ; $48d2: $e6 $01
    jr z, jr_00a_48db                             ; $48d4: $28 $05

    dec bc                                        ; $48d6: $0b
    ld a, c                                       ; $48d7: $79
    or b                                          ; $48d8: $b0
    jr nz, jr_00a_48cc                            ; $48d9: $20 $f1

jr_00a_48db:
    pop hl                                        ; $48db: $e1
    pop bc                                        ; $48dc: $c1
    pop af                                        ; $48dd: $f1
    ret                                           ; $48de: $c9


    push af                                       ; $48df: $f5
    push bc                                       ; $48e0: $c5
    push de                                       ; $48e1: $d5
    push hl                                       ; $48e2: $e5
    ld b, a                                       ; $48e3: $47
    ldh a, [$96]                                  ; $48e4: $f0 $96
    push af                                       ; $48e6: $f5
    ld a, b                                       ; $48e7: $78
    or a                                          ; $48e8: $b7
    jr z, jr_00a_4903                             ; $48e9: $28 $18

    push af                                       ; $48eb: $f5
    ld a, [$c363]                                 ; $48ec: $fa $63 $c3
    inc a                                         ; $48ef: $3c
    jr nz, jr_00a_48fa                            ; $48f0: $20 $08

    ld a, $01                                     ; $48f2: $3e $01
    ld hl, $4927                                  ; $48f4: $21 $27 $49
    call Call_000_23e8                            ; $48f7: $cd $e8 $23

jr_00a_48fa:
    pop af                                        ; $48fa: $f1
    cp $04                                        ; $48fb: $fe $04
    jr c, jr_00a_491a                             ; $48fd: $38 $1b

    ld a, $03                                     ; $48ff: $3e $03
    jr jr_00a_491a                                ; $4901: $18 $17

jr_00a_4903:
    ld a, [$c363]                                 ; $4903: $fa $63 $c3
    inc a                                         ; $4906: $3c
    ld a, $00                                     ; $4907: $3e $00
    jr z, jr_00a_491a                             ; $4909: $28 $0f

    xor a                                         ; $490b: $af
    ld [$c368], a                                 ; $490c: $ea $68 $c3
    ld [$c369], a                                 ; $490f: $ea $69 $c3
    ld hl, $4927                                  ; $4912: $21 $27 $49
    call Call_000_2449                            ; $4915: $cd $49 $24
    ld a, $ff                                     ; $4918: $3e $ff

jr_00a_491a:
    ld [$c363], a                                 ; $491a: $ea $63 $c3
    pop af                                        ; $491d: $f1
    ldh [$96], a                                  ; $491e: $e0 $96
    ldh [rSVBK], a                                ; $4920: $e0 $70
    pop hl                                        ; $4922: $e1
    pop de                                        ; $4923: $d1
    pop bc                                        ; $4924: $c1
    pop af                                        ; $4925: $f1
    ret                                           ; $4926: $c9


    push af                                       ; $4927: $f5
    push bc                                       ; $4928: $c5
    push de                                       ; $4929: $d5
    push hl                                       ; $492a: $e5
    ld a, [$c363]                                 ; $492b: $fa $63 $c3
    ld c, $00                                     ; $492e: $0e $00

jr_00a_4930:
    scf                                           ; $4930: $37
    rl c                                          ; $4931: $cb $11
    dec a                                         ; $4933: $3d
    jr nz, jr_00a_4930                            ; $4934: $20 $fa

    call Call_000_0a61                            ; $4936: $cd $61 $0a
    ld a, h                                       ; $4939: $7c
    and c                                         ; $493a: $a1
    jr nc, jr_00a_493f                            ; $493b: $30 $02

    cpl                                           ; $493d: $2f
    inc a                                         ; $493e: $3c

jr_00a_493f:
    ld [$c368], a                                 ; $493f: $ea $68 $c3
    ld a, l                                       ; $4942: $7d
    and c                                         ; $4943: $a1
    jr nc, jr_00a_4948                            ; $4944: $30 $02

    cpl                                           ; $4946: $2f
    inc a                                         ; $4947: $3c

jr_00a_4948:
    ld [$c369], a                                 ; $4948: $ea $69 $c3
    pop hl                                        ; $494b: $e1
    pop de                                        ; $494c: $d1
    pop bc                                        ; $494d: $c1
    pop af                                        ; $494e: $f1
    ret                                           ; $494f: $c9


    rst $30                                       ; $4950: $f7

    db $00, $04

    jr z, jr_00a_498b                             ; $4953: $28 $36

    ld hl, $c290                                  ; $4955: $21 $90 $c2
    ld a, [hl+]                                   ; $4958: $2a
    ld b, [hl]                                    ; $4959: $46
    ld c, a                                       ; $495a: $4f
    inc b                                         ; $495b: $04
    dec b                                         ; $495c: $05
    jr z, jr_00a_498b                             ; $495d: $28 $2c

    ld a, $04                                     ; $495f: $3e $04
    ldh [$96], a                                  ; $4961: $e0 $96
    ldh [rSVBK], a                                ; $4963: $e0 $70
    ld hl, $0004                                  ; $4965: $21 $04 $00
    add hl, bc                                    ; $4968: $09
    ld a, [hl+]                                   ; $4969: $2a
    ld h, [hl]                                    ; $496a: $66
    ld l, a                                       ; $496b: $6f
    push hl                                       ; $496c: $e5
    push de                                       ; $496d: $d5
    ld h, h                                       ; $496e: $64
    ld l, l                                       ; $496f: $6d
    ld de, $1000                                  ; $4970: $11 $00 $10
    call Call_000_22bc                            ; $4973: $cd $bc $22
    pop de                                        ; $4976: $d1
    pop hl                                        ; $4977: $e1
    ld hl, $0006                                  ; $4978: $21 $06 $00
    add hl, bc                                    ; $497b: $09
    ld a, [hl+]                                   ; $497c: $2a
    ld h, [hl]                                    ; $497d: $66
    ld l, a                                       ; $497e: $6f
    push hl                                       ; $497f: $e5
    push de                                       ; $4980: $d5
    ld h, h                                       ; $4981: $64
    ld l, l                                       ; $4982: $6d
    ld de, $1001                                  ; $4983: $11 $01 $10
    call Call_000_22bc                            ; $4986: $cd $bc $22
    pop de                                        ; $4989: $d1
    pop hl                                        ; $498a: $e1

jr_00a_498b:
    ret                                           ; $498b: $c9


    xor a                                         ; $498c: $af
    ld [$c4bf], a                                 ; $498d: $ea $bf $c4
    xor a                                         ; $4990: $af
    ld hl, $c290                                  ; $4991: $21 $90 $c2
    ld [hl+], a                                   ; $4994: $22
    ld [hl+], a                                   ; $4995: $22
    ld hl, $c292                                  ; $4996: $21 $92 $c2
    ld [hl+], a                                   ; $4999: $22
    ld [hl+], a                                   ; $499a: $22
    ld hl, $c294                                  ; $499b: $21 $94 $c2
    ld [hl+], a                                   ; $499e: $22
    ld [hl+], a                                   ; $499f: $22
    ld a, $ff                                     ; $49a0: $3e $ff
    ld [$c296], a                                 ; $49a2: $ea $96 $c2
    ld [$c297], a                                 ; $49a5: $ea $97 $c2
    ld [$c298], a                                 ; $49a8: $ea $98 $c2
    ld a, $ff                                     ; $49ab: $3e $ff
    ld [$c2a7], a                                 ; $49ad: $ea $a7 $c2
    rst $18                                       ; $49b0: $df

    db $0a, $01

jr_00a_49b3:
    call Call_000_23b6                            ; $49b3: $cd $b6 $23
    ld a, $01                                     ; $49b6: $3e $01
    ld hl, $4950                                  ; $49b8: $21 $50 $49
    call Call_000_23e8                            ; $49bb: $cd $e8 $23
    call Call_00a_4a21                            ; $49be: $cd $21 $4a
    call Call_00a_5146                            ; $49c1: $cd $46 $51
    jr jr_00a_49b3                                ; $49c4: $18 $ed

Call_00a_49c6:
    push de                                       ; $49c6: $d5
    push hl                                       ; $49c7: $e5
    call Call_00a_4cc5                            ; $49c8: $cd $c5 $4c
    and a                                         ; $49cb: $a7
    jr z, jr_00a_49e6                             ; $49cc: $28 $18

    ld hl, $c298                                  ; $49ce: $21 $98 $c2
    cp [hl]                                       ; $49d1: $be
    jr z, jr_00a_49e6                             ; $49d2: $28 $12

    ld d, a                                       ; $49d4: $57
    ld hl, $c45c                                  ; $49d5: $21 $5c $c4
    ld a, [hl+]                                   ; $49d8: $2a
    ld h, [hl]                                    ; $49d9: $66
    ld l, a                                       ; $49da: $6f
    ld a, [$c464]                                 ; $49db: $fa $64 $c4
    call Call_00a_4ec5                            ; $49de: $cd $c5 $4e
    ld a, h                                       ; $49e1: $7c
    or l                                          ; $49e2: $b5
    jr z, jr_00a_49e6                             ; $49e3: $28 $01

    ld a, d                                       ; $49e5: $7a

jr_00a_49e6:
    pop hl                                        ; $49e6: $e1
    pop de                                        ; $49e7: $d1
    ret                                           ; $49e8: $c9


Call_00a_49e9:
    push de                                       ; $49e9: $d5
    push hl                                       ; $49ea: $e5
    call Call_00a_4c9b                            ; $49eb: $cd $9b $4c
    and a                                         ; $49ee: $a7
    jr z, jr_00a_4a03                             ; $49ef: $28 $12

    ld d, a                                       ; $49f1: $57
    ld hl, $c45e                                  ; $49f2: $21 $5e $c4
    ld a, [hl+]                                   ; $49f5: $2a
    ld h, [hl]                                    ; $49f6: $66
    ld l, a                                       ; $49f7: $6f
    ld a, [$c464]                                 ; $49f8: $fa $64 $c4
    call Call_00a_4ea0                            ; $49fb: $cd $a0 $4e
    ld a, h                                       ; $49fe: $7c
    or l                                          ; $49ff: $b5
    jr z, jr_00a_4a03                             ; $4a00: $28 $01

    ld a, d                                       ; $4a02: $7a

jr_00a_4a03:
    pop hl                                        ; $4a03: $e1
    pop de                                        ; $4a04: $d1
    ret                                           ; $4a05: $c9


    push de                                       ; $4a06: $d5
    push hl                                       ; $4a07: $e5
    cp $fa                                        ; $4a08: $fe $fa
    jr z, jr_00a_4a1e                             ; $4a0a: $28 $12

    ld d, a                                       ; $4a0c: $57
    ld hl, $c458                                  ; $4a0d: $21 $58 $c4
    ld a, [hl+]                                   ; $4a10: $2a
    ld h, [hl]                                    ; $4a11: $66
    ld l, a                                       ; $4a12: $6f
    ld a, [$c464]                                 ; $4a13: $fa $64 $c4
    call Call_00a_4ea0                            ; $4a16: $cd $a0 $4e
    ld a, h                                       ; $4a19: $7c
    or l                                          ; $4a1a: $b5
    jr z, jr_00a_4a1e                             ; $4a1b: $28 $01

    ld a, d                                       ; $4a1d: $7a

jr_00a_4a1e:
    pop hl                                        ; $4a1e: $e1
    pop de                                        ; $4a1f: $d1
    ret                                           ; $4a20: $c9


Call_00a_4a21:
    push af                                       ; $4a21: $f5
    push bc                                       ; $4a22: $c5
    push de                                       ; $4a23: $d5
    push hl                                       ; $4a24: $e5
    ld c, $0c                                     ; $4a25: $0e $0c
    call Call_000_25a1                            ; $4a27: $cd $a1 $25
    ld a, $10                                     ; $4a2a: $3e $10
    ld [$c4bf], a                                 ; $4a2c: $ea $bf $c4
    call Call_00a_4b8c                            ; $4a2f: $cd $8c $4b
    call Call_00a_4b99                            ; $4a32: $cd $99 $4b
    call Call_00a_4bbc                            ; $4a35: $cd $bc $4b
    call Call_00a_4c0d                            ; $4a38: $cd $0d $4c
    call Call_000_2e3b                            ; $4a3b: $cd $3b $2e
    cp $ff                                        ; $4a3e: $fe $ff
    jr z, jr_00a_4a48                             ; $4a40: $28 $06

    ld a, [$c454]                                 ; $4a42: $fa $54 $c4
    call Call_000_2c19                            ; $4a45: $cd $19 $2c

jr_00a_4a48:
    ld a, $20                                     ; $4a48: $3e $20
    ld [$c4bf], a                                 ; $4a4a: $ea $bf $c4
    ld hl, $c45a                                  ; $4a4d: $21 $5a $c4
    ld a, [hl+]                                   ; $4a50: $2a
    ld h, [hl]                                    ; $4a51: $66
    ld l, a                                       ; $4a52: $6f
    ld a, [$c464]                                 ; $4a53: $fa $64 $c4
    call Call_00a_4f45                            ; $4a56: $cd $45 $4f
    rst $18                                       ; $4a59: $df

    db $46, $04

    rst $20                                       ; $4a5c: $e7

    db $80, $02

    call Call_000_2625                            ; $4a5f: $cd $25 $26
    rst $28                                       ; $4a62: $ef

    db $80, $02

    ld a, $30                                     ; $4a65: $3e $30
    ld [$c4bf], a                                 ; $4a67: $ea $bf $c4
    ld hl, $c466                                  ; $4a6a: $21 $66 $c4
    ld a, [hl+]                                   ; $4a6d: $2a
    ld d, [hl]                                    ; $4a6e: $56
    ld e, a                                       ; $4a6f: $5f
    ld hl, $c320                                  ; $4a70: $21 $20 $c3
    ld a, e                                       ; $4a73: $7b
    ld [hl+], a                                   ; $4a74: $22
    ld [hl], d                                    ; $4a75: $72
    ld hl, $c468                                  ; $4a76: $21 $68 $c4
    ld a, [hl+]                                   ; $4a79: $2a
    ld d, [hl]                                    ; $4a7a: $56
    ld e, a                                       ; $4a7b: $5f
    ld hl, $c322                                  ; $4a7c: $21 $22 $c3
    ld a, e                                       ; $4a7f: $7b
    ld [hl+], a                                   ; $4a80: $22
    ld [hl], d                                    ; $4a81: $72
    ld a, [$c451]                                 ; $4a82: $fa $51 $c4
    rst $18                                       ; $4a85: $df

    db $00, $0b

    ld a, $40                                     ; $4a88: $3e $40
    ld [$c4bf], a                                 ; $4a8a: $ea $bf $c4
    call Call_00a_4f71                            ; $4a8d: $cd $71 $4f
    ld hl, $c441                                  ; $4a90: $21 $41 $c4
    ld a, [hl]                                    ; $4a93: $7e
    and a                                         ; $4a94: $a7
    jr z, jr_00a_4a9f                             ; $4a95: $28 $08

    ld [hl], $00                                  ; $4a97: $36 $00
    ld [$c46b], a                                 ; $4a99: $ea $6b $c4
    jp Jump_00a_4b87                              ; $4a9c: $c3 $87 $4b


jr_00a_4a9f:
    ld c, $08                                     ; $4a9f: $0e $08
    call Call_000_25af                            ; $4aa1: $cd $af $25
    call Call_000_2625                            ; $4aa4: $cd $25 $26
    call Call_00a_4ddb                            ; $4aa7: $cd $db $4d

Jump_00a_4aaa:
    ld a, $04                                     ; $4aaa: $3e $04
    ldh [$96], a                                  ; $4aac: $e0 $96
    ldh [rSVBK], a                                ; $4aae: $e0 $70
    ld hl, $c290                                  ; $4ab0: $21 $90 $c2
    ld a, [hl+]                                   ; $4ab3: $2a
    ld h, [hl]                                    ; $4ab4: $66
    ld l, a                                       ; $4ab5: $6f
    rst $18                                       ; $4ab6: $df

    db $32, $04

    ld de, $0035                                  ; $4ab9: $11 $35 $00
    add hl, de                                    ; $4abc: $19
    ld [hl], $01                                  ; $4abd: $36 $01
    call Call_00a_4bac                            ; $4abf: $cd $ac $4b
    and a                                         ; $4ac2: $a7
    jp z, Jump_00a_4b6f                           ; $4ac3: $ca $6f $4b

    ld hl, $c440                                  ; $4ac6: $21 $40 $c4
    ld a, [hl]                                    ; $4ac9: $7e
    and a                                         ; $4aca: $a7
    jr z, jr_00a_4ad2                             ; $4acb: $28 $05

    ld [hl], $00                                  ; $4acd: $36 $00
    call Call_00a_50cb                            ; $4acf: $cd $cb $50

jr_00a_4ad2:
    ld hl, $c441                                  ; $4ad2: $21 $41 $c4
    ld a, [hl]                                    ; $4ad5: $7e
    and a                                         ; $4ad6: $a7
    jr z, jr_00a_4ae1                             ; $4ad7: $28 $08

    ld [hl], $00                                  ; $4ad9: $36 $00
    ld [$c46b], a                                 ; $4adb: $ea $6b $c4
    jp Jump_00a_4b87                              ; $4ade: $c3 $87 $4b


jr_00a_4ae1:
    ld hl, $c444                                  ; $4ae1: $21 $44 $c4
    ld a, [hl]                                    ; $4ae4: $7e
    and a                                         ; $4ae5: $a7
    jr z, jr_00a_4af2                             ; $4ae6: $28 $0a

    ld [hl], $00                                  ; $4ae8: $36 $00
    rst $08                                       ; $4aea: $cf
    ld h, d                                       ; $4aeb: $62
    call Call_00a_48ac                            ; $4aec: $cd $ac $48
    rst $18                                       ; $4aef: $df
    db $08                                        ; $4af0: $08
    ld b, c                                       ; $4af1: $41

jr_00a_4af2:
    rst $28                                       ; $4af2: $ef

    db $e0, $02

    ld hl, $c443                                  ; $4af5: $21 $43 $c4
    ld a, [hl]                                    ; $4af8: $7e
    and a                                         ; $4af9: $a7
    jr z, jr_00a_4b20                             ; $4afa: $28 $24

    ld [hl], $00                                  ; $4afc: $36 $00
    ld a, [$c28c]                                 ; $4afe: $fa $8c $c2
    and a                                         ; $4b01: $a7
    jr z, jr_00a_4b20                             ; $4b02: $28 $1c

    ld a, [$c28d]                                 ; $4b04: $fa $8d $c2
    ld b, a                                       ; $4b07: $47
    ld a, [$c28c]                                 ; $4b08: $fa $8c $c2
    cp b                                          ; $4b0b: $b8
    jr nz, jr_00a_4b20                            ; $4b0c: $20 $12

    ld hl, $c28e                                  ; $4b0e: $21 $8e $c2
    ld a, [hl]                                    ; $4b11: $7e
    cp $1e                                        ; $4b12: $fe $1e
    jr c, jr_00a_4b20                             ; $4b14: $38 $0a

    ld [hl], $00                                  ; $4b16: $36 $00
    rst $20                                       ; $4b18: $e7
    ldh [rSC], a                                  ; $4b19: $e0 $02
    ld hl, $c442                                  ; $4b1b: $21 $42 $c4
    ld [hl], $02                                  ; $4b1e: $36 $02

jr_00a_4b20:
    ld hl, $c442                                  ; $4b20: $21 $42 $c4
    ld a, [hl]                                    ; $4b23: $7e
    and a                                         ; $4b24: $a7
    jr z, jr_00a_4b6c                             ; $4b25: $28 $45

    ld b, [hl]                                    ; $4b27: $46
    ld [hl], $00                                  ; $4b28: $36 $00
    call Call_00a_49c6                            ; $4b2a: $cd $c6 $49
    and a                                         ; $4b2d: $a7
    jr z, jr_00a_4b35                             ; $4b2e: $28 $05

    call Call_00a_4f96                            ; $4b30: $cd $96 $4f
    jr jr_00a_4b6c                                ; $4b33: $18 $37

jr_00a_4b35:
    call Call_00a_49e9                            ; $4b35: $cd $e9 $49
    and a                                         ; $4b38: $a7
    jr z, jr_00a_4b40                             ; $4b39: $28 $05

    call Call_00a_5066                            ; $4b3b: $cd $66 $50
    jr jr_00a_4b6c                                ; $4b3e: $18 $2c

jr_00a_4b40:
    call Call_00a_4d1f                            ; $4b40: $cd $1f $4d
    and a                                         ; $4b43: $a7
    jr z, jr_00a_4b4b                             ; $4b44: $28 $05

    call Call_00a_5109                            ; $4b46: $cd $09 $51
    jr jr_00a_4b6c                                ; $4b49: $18 $21

jr_00a_4b4b:
    ld a, b                                       ; $4b4b: $78
    cp $02                                        ; $4b4c: $fe $02
    jr z, jr_00a_4b6c                             ; $4b4e: $28 $1c

    ldh a, [$9e]                                  ; $4b50: $f0 $9e
    and a                                         ; $4b52: $a7
    jr z, jr_00a_4b5d                             ; $4b53: $28 $08

    call Call_00a_48ac                            ; $4b55: $cd $ac $48
    rst $18                                       ; $4b58: $df
    ld h, b                                       ; $4b59: $60
    dec b                                         ; $4b5a: $05
    jr jr_00a_4b6c                                ; $4b5b: $18 $0f

jr_00a_4b5d:
    ld a, [$c450]                                 ; $4b5d: $fa $50 $c4
    cp $02                                        ; $4b60: $fe $02
    jr nz, jr_00a_4b6c                            ; $4b62: $20 $08

    rst $08                                       ; $4b64: $cf
    ld e, h                                       ; $4b65: $5c
    call Call_00a_48ac                            ; $4b66: $cd $ac $48
    rst $18                                       ; $4b69: $df
    ld e, d                                       ; $4b6a: $5a
    ld a, [bc]                                    ; $4b6b: $0a

jr_00a_4b6c:
    jp Jump_00a_4aaa                              ; $4b6c: $c3 $aa $4a


Jump_00a_4b6f:
    call Call_000_2625                            ; $4b6f: $cd $25 $26
    ld hl, $c290                                  ; $4b72: $21 $90 $c2
    ld a, [hl+]                                   ; $4b75: $2a
    ld h, [hl]                                    ; $4b76: $66
    ld l, a                                       ; $4b77: $6f
    rst $18                                       ; $4b78: $df

    db $34, $04

jr_00a_4b7b:
    call Call_000_2e3b                            ; $4b7b: $cd $3b $2e
    call Call_00a_4bac                            ; $4b7e: $cd $ac $4b
    and a                                         ; $4b81: $a7
    jr z, jr_00a_4b7b                             ; $4b82: $28 $f7

    jp Jump_00a_4aaa                              ; $4b84: $c3 $aa $4a


Jump_00a_4b87:
    pop hl                                        ; $4b87: $e1
    pop de                                        ; $4b88: $d1
    pop bc                                        ; $4b89: $c1
    pop af                                        ; $4b8a: $f1
    ret                                           ; $4b8b: $c9


Call_00a_4b8c:
    push af                                       ; $4b8c: $f5
    push hl                                       ; $4b8d: $e5
    ld hl, $c85c                                  ; $4b8e: $21 $5c $c8
    xor a                                         ; $4b91: $af
    ld [hl+], a                                   ; $4b92: $22
    ld [hl+], a                                   ; $4b93: $22
    ld [hl+], a                                   ; $4b94: $22
    ld [hl+], a                                   ; $4b95: $22
    pop hl                                        ; $4b96: $e1
    pop af                                        ; $4b97: $f1
    ret                                           ; $4b98: $c9


Call_00a_4b99:
    push af                                       ; $4b99: $f5
    push bc                                       ; $4b9a: $c5
    push de                                       ; $4b9b: $d5
    push hl                                       ; $4b9c: $e5
    ld hl, $c440                                  ; $4b9d: $21 $40 $c4
    ld b, $05                                     ; $4ba0: $06 $05
    xor a                                         ; $4ba2: $af

jr_00a_4ba3:
    ld [hl+], a                                   ; $4ba3: $22
    dec b                                         ; $4ba4: $05
    jr nz, jr_00a_4ba3                            ; $4ba5: $20 $fc

    pop hl                                        ; $4ba7: $e1
    pop de                                        ; $4ba8: $d1
    pop bc                                        ; $4ba9: $c1
    pop af                                        ; $4baa: $f1
    ret                                           ; $4bab: $c9


Call_00a_4bac:
    push bc                                       ; $4bac: $c5
    push hl                                       ; $4bad: $e5
    ld hl, $c440                                  ; $4bae: $21 $40 $c4
    ld b, $05                                     ; $4bb1: $06 $05
    xor a                                         ; $4bb3: $af

jr_00a_4bb4:
    add [hl]                                      ; $4bb4: $86
    inc hl                                        ; $4bb5: $23
    dec b                                         ; $4bb6: $05
    jr nz, jr_00a_4bb4                            ; $4bb7: $20 $fb

    pop hl                                        ; $4bb9: $e1
    pop bc                                        ; $4bba: $c1
    ret                                           ; $4bbb: $c9


Call_00a_4bbc:
    push af                                       ; $4bbc: $f5
    push bc                                       ; $4bbd: $c5
    push de                                       ; $4bbe: $d5
    push hl                                       ; $4bbf: $e5
    ld a, [$c450]                                 ; $4bc0: $fa $50 $c4
    call Call_00a_5303                            ; $4bc3: $cd $03 $53
    ld de, $c450                                  ; $4bc6: $11 $50 $c4
    ld bc, $0006                                  ; $4bc9: $01 $06 $00
    call Call_000_03d3                            ; $4bcc: $cd $d3 $03
    ld hl, $c452                                  ; $4bcf: $21 $52 $c4
    ld a, [hl+]                                   ; $4bd2: $2a
    ld h, [hl]                                    ; $4bd3: $66
    ld l, a                                       ; $4bd4: $6f
    call Call_000_063b                            ; $4bd5: $cd $3b $06
    ld [$c464], a                                 ; $4bd8: $ea $64 $c4
    ld de, $c456                                  ; $4bdb: $11 $56 $c4
    ld bc, $000e                                  ; $4bde: $01 $0e $00
    call Call_000_0654                            ; $4be1: $cd $54 $06
    ld a, [$c450]                                 ; $4be4: $fa $50 $c4
    rst $18                                       ; $4be7: $df

    db $56, $0a

    ld hl, $012c                                  ; $4bea: $21 $2c $01
    add l                                         ; $4bed: $85
    ld l, a                                       ; $4bee: $6f
    jr nc, jr_00a_4bf2                            ; $4bef: $30 $01

    inc h                                         ; $4bf1: $24

jr_00a_4bf2:
    ld a, l                                       ; $4bf2: $7d
    ld [$c4b4], a                                 ; $4bf3: $ea $b4 $c4
    ld a, h                                       ; $4bf6: $7c
    ld [$c4b5], a                                 ; $4bf7: $ea $b5 $c4
    pop hl                                        ; $4bfa: $e1
    pop de                                        ; $4bfb: $d1
    pop bc                                        ; $4bfc: $c1
    pop af                                        ; $4bfd: $f1
    ret                                           ; $4bfe: $c9


    push de                                       ; $4bff: $d5
    push hl                                       ; $4c00: $e5
    push hl                                       ; $4c01: $e5
    ld hl, $c450                                  ; $4c02: $21 $50 $c4
    add hl, de                                    ; $4c05: $19
    pop de                                        ; $4c06: $d1
    ld [hl], e                                    ; $4c07: $73
    inc hl                                        ; $4c08: $23
    ld [hl], d                                    ; $4c09: $72
    pop hl                                        ; $4c0a: $e1
    pop de                                        ; $4c0b: $d1
    ret                                           ; $4c0c: $c9


Call_00a_4c0d:
    push af                                       ; $4c0d: $f5
    push bc                                       ; $4c0e: $c5
    push de                                       ; $4c0f: $d5
    push hl                                       ; $4c10: $e5
    ld a, [$c46a]                                 ; $4c11: $fa $6a $c4
    cp $fa                                        ; $4c14: $fe $fa
    jr z, jr_00a_4c65                             ; $4c16: $28 $4d

    ld hl, $c46a                                  ; $4c18: $21 $6a $c4
    ld c, [hl]                                    ; $4c1b: $4e
    ld hl, $c464                                  ; $4c1c: $21 $64 $c4
    ld b, [hl]                                    ; $4c1f: $46
    ld hl, $c456                                  ; $4c20: $21 $56 $c4
    ld a, [hl+]                                   ; $4c23: $2a
    ld h, [hl]                                    ; $4c24: $66
    ld l, a                                       ; $4c25: $6f

jr_00a_4c26:
    ld a, b                                       ; $4c26: $78
    call Call_000_0611                            ; $4c27: $cd $11 $06
    cp $ff                                        ; $4c2a: $fe $ff
    jr z, jr_00a_4c37                             ; $4c2c: $28 $09

    cp c                                          ; $4c2e: $b9
    jr z, jr_00a_4c3d                             ; $4c2f: $28 $0c

    ld de, $0006                                  ; $4c31: $11 $06 $00
    add hl, de                                    ; $4c34: $19
    jr jr_00a_4c26                                ; $4c35: $18 $ef

jr_00a_4c37:
    ld hl, $c456                                  ; $4c37: $21 $56 $c4
    ld a, [hl+]                                   ; $4c3a: $2a
    ld h, [hl]                                    ; $4c3b: $66
    ld l, a                                       ; $4c3c: $6f

jr_00a_4c3d:
    ld a, b                                       ; $4c3d: $78
    ld de, $c400                                  ; $4c3e: $11 $00 $c4
    ld bc, $0006                                  ; $4c41: $01 $06 $00
    call Call_000_0654                            ; $4c44: $cd $54 $06
    ld hl, $c401                                  ; $4c47: $21 $01 $c4
    ld de, $c465                                  ; $4c4a: $11 $65 $c4
    ld a, [hl]                                    ; $4c4d: $7e
    ld [de], a                                    ; $4c4e: $12
    ld hl, $c402                                  ; $4c4f: $21 $02 $c4
    ld de, $c466                                  ; $4c52: $11 $66 $c4
    ld a, [hl+]                                   ; $4c55: $2a
    ld [de], a                                    ; $4c56: $12
    inc de                                        ; $4c57: $13
    ld a, [hl+]                                   ; $4c58: $2a
    ld [de], a                                    ; $4c59: $12
    ld hl, $c404                                  ; $4c5a: $21 $04 $c4
    ld de, $c468                                  ; $4c5d: $11 $68 $c4
    ld a, [hl+]                                   ; $4c60: $2a
    ld [de], a                                    ; $4c61: $12
    inc de                                        ; $4c62: $13
    ld a, [hl+]                                   ; $4c63: $2a
    ld [de], a                                    ; $4c64: $12

jr_00a_4c65:
    pop hl                                        ; $4c65: $e1
    pop de                                        ; $4c66: $d1
    pop bc                                        ; $4c67: $c1
    pop af                                        ; $4c68: $f1
    ret                                           ; $4c69: $c9


Call_00a_4c6a:
    push af                                       ; $4c6a: $f5
    push bc                                       ; $4c6b: $c5
    ld b, a                                       ; $4c6c: $47
    ld a, $04                                     ; $4c6d: $3e $04
    ldh [$96], a                                  ; $4c6f: $e0 $96
    ldh [rSVBK], a                                ; $4c71: $e0 $70
    ld a, b                                       ; $4c73: $78
    ld c, l                                       ; $4c74: $4d
    ld b, h                                       ; $4c75: $44
    ld hl, $0029                                  ; $4c76: $21 $29 $00
    add hl, bc                                    ; $4c79: $09
    add [hl]                                      ; $4c7a: $86
    ld l, e                                       ; $4c7b: $6b
    ld h, d                                       ; $4c7c: $62
    call Call_000_0af2                            ; $4c7d: $cd $f2 $0a
    push hl                                       ; $4c80: $e5
    ld hl, $0006                                  ; $4c81: $21 $06 $00
    add hl, bc                                    ; $4c84: $09
    ld a, [hl+]                                   ; $4c85: $2a
    ld h, [hl]                                    ; $4c86: $66
    ld l, a                                       ; $4c87: $6f
    add hl, de                                    ; $4c88: $19
    ld e, l                                       ; $4c89: $5d
    ld d, h                                       ; $4c8a: $54
    pop hl                                        ; $4c8b: $e1
    push de                                       ; $4c8c: $d5
    ld e, l                                       ; $4c8d: $5d
    ld d, h                                       ; $4c8e: $54
    ld hl, $0004                                  ; $4c8f: $21 $04 $00
    add hl, bc                                    ; $4c92: $09
    ld a, [hl+]                                   ; $4c93: $2a
    ld h, [hl]                                    ; $4c94: $66
    ld l, a                                       ; $4c95: $6f
    add hl, de                                    ; $4c96: $19
    pop de                                        ; $4c97: $d1
    pop bc                                        ; $4c98: $c1
    pop af                                        ; $4c99: $f1
    ret                                           ; $4c9a: $c9


Call_00a_4c9b:
    push bc                                       ; $4c9b: $c5
    push de                                       ; $4c9c: $d5
    push hl                                       ; $4c9d: $e5
    ld hl, $c290                                  ; $4c9e: $21 $90 $c2
    ld a, [hl+]                                   ; $4ca1: $2a
    ld h, [hl]                                    ; $4ca2: $66
    ld l, a                                       ; $4ca3: $6f
    ld a, $00                                     ; $4ca4: $3e $00
    ld de, $01c0                                  ; $4ca6: $11 $c0 $01
    call Call_00a_4c6a                            ; $4ca9: $cd $6a $4c
    ld e, d                                       ; $4cac: $5a
    ld d, h                                       ; $4cad: $54
    rst $18                                       ; $4cae: $df

    db $12, $0b

    ld d, a                                       ; $4cb1: $57
    ld e, $00                                     ; $4cb2: $1e $00
    and $0f                                       ; $4cb4: $e6 $0f
    cp $08                                        ; $4cb6: $fe $08
    jr nz, jr_00a_4cc0                            ; $4cb8: $20 $06

    ld a, d                                       ; $4cba: $7a
    swap a                                        ; $4cbb: $cb $37
    and $0f                                       ; $4cbd: $e6 $0f
    ld e, a                                       ; $4cbf: $5f

jr_00a_4cc0:
    ld a, e                                       ; $4cc0: $7b
    pop hl                                        ; $4cc1: $e1
    pop de                                        ; $4cc2: $d1
    pop bc                                        ; $4cc3: $c1
    ret                                           ; $4cc4: $c9


Call_00a_4cc5:
    push bc                                       ; $4cc5: $c5
    push de                                       ; $4cc6: $d5
    push hl                                       ; $4cc7: $e5
    ld a, $04                                     ; $4cc8: $3e $04
    ldh [$96], a                                  ; $4cca: $e0 $96
    ldh [rSVBK], a                                ; $4ccc: $e0 $70
    rst $18                                       ; $4cce: $df

    db $54, $04

    ld hl, $c290                                  ; $4cd1: $21 $90 $c2
    ld a, [hl+]                                   ; $4cd4: $2a
    ld b, [hl]                                    ; $4cd5: $46
    ld c, a                                       ; $4cd6: $4f
    ld l, c                                       ; $4cd7: $69
    ld h, b                                       ; $4cd8: $60
    ld a, $00                                     ; $4cd9: $3e $00
    ld de, $01c0                                  ; $4cdb: $11 $c0 $01
    call Call_00a_4c6a                            ; $4cde: $cd $6a $4c
    push de                                       ; $4ce1: $d5
    ld e, d                                       ; $4ce2: $5a
    ld d, h                                       ; $4ce3: $54
    rst $18                                       ; $4ce4: $df

    db $12, $0b

    and $0f                                       ; $4ce7: $e6 $0f
    pop de                                        ; $4ce9: $d1
    cp $0c                                        ; $4cea: $fe $0c
    jr nz, jr_00a_4cf8                            ; $4cec: $20 $0a

    ld l, c                                       ; $4cee: $69
    ld h, b                                       ; $4cef: $60
    ld a, $00                                     ; $4cf0: $3e $00
    ld de, $03c0                                  ; $4cf2: $11 $c0 $03
    call Call_00a_4c6a                            ; $4cf5: $cd $6a $4c

jr_00a_4cf8:
    rst $18                                       ; $4cf8: $df

    db $3e, $04

    and a                                         ; $4cfb: $a7
    jr nz, jr_00a_4d1b                            ; $4cfc: $20 $1d

    ld l, c                                       ; $4cfe: $69
    ld h, b                                       ; $4cff: $60
    ld a, $f0                                     ; $4d00: $3e $f0
    ld de, $0180                                  ; $4d02: $11 $80 $01
    call Call_00a_4c6a                            ; $4d05: $cd $6a $4c
    rst $18                                       ; $4d08: $df

    db $3e, $04

    and a                                         ; $4d0b: $a7
    jr nz, jr_00a_4d1b                            ; $4d0c: $20 $0d

    ld l, c                                       ; $4d0e: $69
    ld h, b                                       ; $4d0f: $60
    ld a, $10                                     ; $4d10: $3e $10
    ld de, $0180                                  ; $4d12: $11 $80 $01
    call Call_00a_4c6a                            ; $4d15: $cd $6a $4c
    rst $18                                       ; $4d18: $df

    db $3e, $04

jr_00a_4d1b:
    pop hl                                        ; $4d1b: $e1
    pop de                                        ; $4d1c: $d1
    pop bc                                        ; $4d1d: $c1
    ret                                           ; $4d1e: $c9


Call_00a_4d1f:
    push bc                                       ; $4d1f: $c5
    push de                                       ; $4d20: $d5
    push hl                                       ; $4d21: $e5
    ld hl, $c290                                  ; $4d22: $21 $90 $c2
    ld a, [hl+]                                   ; $4d25: $2a
    ld b, [hl]                                    ; $4d26: $46
    ld c, a                                       ; $4d27: $4f
    ld hl, $0005                                  ; $4d28: $21 $05 $00
    add hl, bc                                    ; $4d2b: $09
    ld d, [hl]                                    ; $4d2c: $56
    ld hl, $0007                                  ; $4d2d: $21 $07 $00
    add hl, bc                                    ; $4d30: $09
    ld e, [hl]                                    ; $4d31: $5e
    rst $18                                       ; $4d32: $df

    db $12, $0b

    ld e, a                                       ; $4d35: $5f
    ld d, $00                                     ; $4d36: $16 $00
    and $0f                                       ; $4d38: $e6 $0f
    cp $01                                        ; $4d3a: $fe $01
    jr nz, jr_00a_4d56                            ; $4d3c: $20 $18

    ld a, e                                       ; $4d3e: $7b
    swap a                                        ; $4d3f: $cb $37
    and $0f                                       ; $4d41: $e6 $0f
    ld d, a                                       ; $4d43: $57
    ld hl, $c460                                  ; $4d44: $21 $60 $c4
    ld a, [hl+]                                   ; $4d47: $2a
    ld h, [hl]                                    ; $4d48: $66
    ld l, a                                       ; $4d49: $6f
    ld a, [$c464]                                 ; $4d4a: $fa $64 $c4
    call Call_00a_4ea0                            ; $4d4d: $cd $a0 $4e
    ld a, h                                       ; $4d50: $7c
    or l                                          ; $4d51: $b5
    jr nz, jr_00a_4d56                            ; $4d52: $20 $02

    ld d, $00                                     ; $4d54: $16 $00

jr_00a_4d56:
    ld a, d                                       ; $4d56: $7a
    pop hl                                        ; $4d57: $e1
    pop de                                        ; $4d58: $d1
    pop bc                                        ; $4d59: $c1
    ret                                           ; $4d5a: $c9


    push af                                       ; $4d5b: $f5
    push bc                                       ; $4d5c: $c5
    push de                                       ; $4d5d: $d5
    push hl                                       ; $4d5e: $e5
    ld a, b                                       ; $4d5f: $78
    cp $ff                                        ; $4d60: $fe $ff
    jr z, jr_00a_4d6e                             ; $4d62: $28 $0a

    ld hl, $c960                                  ; $4d64: $21 $60 $c9
    ld [hl], b                                    ; $4d67: $70
    ld hl, $c961                                  ; $4d68: $21 $61 $c9
    ld [hl], c                                    ; $4d6b: $71
    jr jr_00a_4d85                                ; $4d6c: $18 $17

jr_00a_4d6e:
    ld a, [$c450]                                 ; $4d6e: $fa $50 $c4
    ld [$c960], a                                 ; $4d71: $ea $60 $c9
    ld hl, $c961                                  ; $4d74: $21 $61 $c9
    ld [hl], $ff                                  ; $4d77: $36 $ff
    ld hl, $c2a0                                  ; $4d79: $21 $a0 $c2
    ld de, $c962                                  ; $4d7c: $11 $62 $c9
    ld bc, $0005                                  ; $4d7f: $01 $05 $00
    call Call_000_03d3                            ; $4d82: $cd $d3 $03

jr_00a_4d85:
    pop hl                                        ; $4d85: $e1
    pop de                                        ; $4d86: $d1
    pop bc                                        ; $4d87: $c1
    pop af                                        ; $4d88: $f1
    ret                                           ; $4d89: $c9


    push af                                       ; $4d8a: $f5
    push bc                                       ; $4d8b: $c5
    push de                                       ; $4d8c: $d5
    push hl                                       ; $4d8d: $e5
    ld a, [$c961]                                 ; $4d8e: $fa $61 $c9
    cp $ff                                        ; $4d91: $fe $ff
    jr z, jr_00a_4da8                             ; $4d93: $28 $13

    ld a, $fa                                     ; $4d95: $3e $fa
    ld [$c441], a                                 ; $4d97: $ea $41 $c4
    ld a, [$c960]                                 ; $4d9a: $fa $60 $c9
    ld [$c450], a                                 ; $4d9d: $ea $50 $c4
    ld a, [$c961]                                 ; $4da0: $fa $61 $c9
    ld [$c46a], a                                 ; $4da3: $ea $6a $c4
    jr jr_00a_4dd6                                ; $4da6: $18 $2e

jr_00a_4da8:
    ld a, $fa                                     ; $4da8: $3e $fa
    ld [$c441], a                                 ; $4daa: $ea $41 $c4
    ld a, [$c960]                                 ; $4dad: $fa $60 $c9
    ld [$c450], a                                 ; $4db0: $ea $50 $c4
    ld a, $fa                                     ; $4db3: $3e $fa
    ld [$c46a], a                                 ; $4db5: $ea $6a $c4
    ld hl, $c966                                  ; $4db8: $21 $66 $c9
    ld de, $c465                                  ; $4dbb: $11 $65 $c4
    ld a, [hl]                                    ; $4dbe: $7e
    ld [de], a                                    ; $4dbf: $12
    ld hl, $c962                                  ; $4dc0: $21 $62 $c9
    ld de, $c466                                  ; $4dc3: $11 $66 $c4
    ld a, [hl+]                                   ; $4dc6: $2a
    ld [de], a                                    ; $4dc7: $12
    inc de                                        ; $4dc8: $13
    ld a, [hl+]                                   ; $4dc9: $2a
    ld [de], a                                    ; $4dca: $12
    ld hl, $c964                                  ; $4dcb: $21 $64 $c9
    ld de, $c468                                  ; $4dce: $11 $68 $c4
    ld a, [hl+]                                   ; $4dd1: $2a
    ld [de], a                                    ; $4dd2: $12
    inc de                                        ; $4dd3: $13
    ld a, [hl+]                                   ; $4dd4: $2a
    ld [de], a                                    ; $4dd5: $12

jr_00a_4dd6:
    pop hl                                        ; $4dd6: $e1
    pop de                                        ; $4dd7: $d1
    pop bc                                        ; $4dd8: $c1
    pop af                                        ; $4dd9: $f1
    ret                                           ; $4dda: $c9


Call_00a_4ddb:
    push af                                       ; $4ddb: $f5
    push bc                                       ; $4ddc: $c5
    push de                                       ; $4ddd: $d5
    push hl                                       ; $4dde: $e5
    ldh a, [$96]                                  ; $4ddf: $f0 $96
    push af                                       ; $4de1: $f5
    ld hl, $c4b4                                  ; $4de2: $21 $b4 $c4
    ld a, [hl+]                                   ; $4de5: $2a
    or [hl]                                       ; $4de6: $b6
    jr z, jr_00a_4e25                             ; $4de7: $28 $3c

    call Call_00a_48ac                            ; $4de9: $cd $ac $48
    ld a, $05                                     ; $4dec: $3e $05
    ldh [$96], a                                  ; $4dee: $e0 $96
    ldh [rSVBK], a                                ; $4df0: $e0 $70
    ld hl, $c82d                                  ; $4df2: $21 $2d $c8
    set 7, [hl]                                   ; $4df5: $cb $fe
    ld a, [$c4b4]                                 ; $4df7: $fa $b4 $c4
    ld l, a                                       ; $4dfa: $6f
    ld a, [$c4b5]                                 ; $4dfb: $fa $b5 $c4
    ld h, a                                       ; $4dfe: $67
    ld a, $83                                     ; $4dff: $3e $83
    rst $18                                       ; $4e01: $df

    db $48, $05

    ld b, $50                                     ; $4e04: $06 $50

jr_00a_4e06:
    call Call_000_2e3b                            ; $4e06: $cd $3b $2e
    ldh a, [$90]                                  ; $4e09: $f0 $90
    and a                                         ; $4e0b: $a7
    jr nz, jr_00a_4e11                            ; $4e0c: $20 $03

    dec b                                         ; $4e0e: $05
    jr nz, jr_00a_4e06                            ; $4e0f: $20 $f5

jr_00a_4e11:
    rst $18                                       ; $4e11: $df

    db $0e, $05

    rst $18                                       ; $4e14: $df

    db $1c, $05

    rst $18                                       ; $4e17: $df

    db $14, $05

    ld a, $05                                     ; $4e1a: $3e $05
    ldh [$96], a                                  ; $4e1c: $e0 $96
    ldh [rSVBK], a                                ; $4e1e: $e0 $70
    ld hl, $c82d                                  ; $4e20: $21 $2d $c8
    res 7, [hl]                                   ; $4e23: $cb $be

jr_00a_4e25:
    pop af                                        ; $4e25: $f1
    ldh [$96], a                                  ; $4e26: $e0 $96
    ldh [rSVBK], a                                ; $4e28: $e0 $70
    pop hl                                        ; $4e2a: $e1
    pop de                                        ; $4e2b: $d1
    pop bc                                        ; $4e2c: $c1
    pop af                                        ; $4e2d: $f1
    ret                                           ; $4e2e: $c9


Call_00a_4e2f:
    bit 7, d                                      ; $4e2f: $cb $7a
    jr nz, jr_00a_4e4b                            ; $4e31: $20 $18

    sla e                                         ; $4e33: $cb $23
    rl d                                          ; $4e35: $cb $12
    sla e                                         ; $4e37: $cb $23
    rl d                                          ; $4e39: $cb $12
    sla e                                         ; $4e3b: $cb $23
    rl d                                          ; $4e3d: $cb $12
    sla e                                         ; $4e3f: $cb $23
    rl d                                          ; $4e41: $cb $12
    sla e                                         ; $4e43: $cb $23
    rl d                                          ; $4e45: $cb $12
    call Call_000_2d10                            ; $4e47: $cd $10 $2d
    ret                                           ; $4e4a: $c9


jr_00a_4e4b:
    sla e                                         ; $4e4b: $cb $23
    rl d                                          ; $4e4d: $cb $12
    sla e                                         ; $4e4f: $cb $23
    rl d                                          ; $4e51: $cb $12
    sla e                                         ; $4e53: $cb $23
    rl d                                          ; $4e55: $cb $12
    sla e                                         ; $4e57: $cb $23
    rl d                                          ; $4e59: $cb $12
    sla e                                         ; $4e5b: $cb $23
    rl d                                          ; $4e5d: $cb $12
    call Call_000_2d10                            ; $4e5f: $cd $10 $2d
    jr z, jr_00a_4e68                             ; $4e62: $28 $04

    ld d, $01                                     ; $4e64: $16 $01
    dec d                                         ; $4e66: $15
    ret                                           ; $4e67: $c9


jr_00a_4e68:
    ld d, $00                                     ; $4e68: $16 $00
    dec d                                         ; $4e6a: $15
    ret                                           ; $4e6b: $c9


    db $10                                        ; $4e6c: $10
    add b                                         ; $4e6d: $80
    db $20                                        ; $4e6e: $20

    db $40

Call_00a_4e70:
    push bc                                       ; $4e70: $c5
    push hl                                       ; $4e71: $e5
    ld a, $04                                     ; $4e72: $3e $04
    ldh [$96], a                                  ; $4e74: $e0 $96
    ldh [rSVBK], a                                ; $4e76: $e0 $70
    ld c, $01                                     ; $4e78: $0e $01
    ld a, b                                       ; $4e7a: $78
    cp $ff                                        ; $4e7b: $fe $ff
    jr z, jr_00a_4e9c                             ; $4e7d: $28 $1d

    ld hl, $c290                                  ; $4e7f: $21 $90 $c2
    ld a, [hl+]                                   ; $4e82: $2a
    ld h, [hl]                                    ; $4e83: $66
    ld l, a                                       ; $4e84: $6f
    ld a, $10                                     ; $4e85: $3e $10
    add l                                         ; $4e87: $85
    ld l, a                                       ; $4e88: $6f
    ld a, [hl]                                    ; $4e89: $7e
    rlca                                          ; $4e8a: $07
    rlca                                          ; $4e8b: $07
    and $03                                       ; $4e8c: $e6 $03
    ld hl, $4e6c                                  ; $4e8e: $21 $6c $4e
    add l                                         ; $4e91: $85
    ld l, a                                       ; $4e92: $6f
    jr nc, jr_00a_4e96                            ; $4e93: $30 $01

    inc h                                         ; $4e95: $24

jr_00a_4e96:
    ld a, [hl]                                    ; $4e96: $7e
    and b                                         ; $4e97: $a0
    jr nz, jr_00a_4e9c                            ; $4e98: $20 $02

    ld c, $00                                     ; $4e9a: $0e $00

jr_00a_4e9c:
    ld a, c                                       ; $4e9c: $79
    pop hl                                        ; $4e9d: $e1
    pop bc                                        ; $4e9e: $c1
    ret                                           ; $4e9f: $c9


Call_00a_4ea0:
    push af                                       ; $4ea0: $f5
    push bc                                       ; $4ea1: $c5
    push de                                       ; $4ea2: $d5
    ld e, a                                       ; $4ea3: $5f

jr_00a_4ea4:
    ld a, e                                       ; $4ea4: $7b
    call Call_000_0626                            ; $4ea5: $cd $26 $06
    ld a, c                                       ; $4ea8: $79
    cp $ff                                        ; $4ea9: $fe $ff
    jr z, jr_00a_4ebe                             ; $4eab: $28 $11

    cp d                                          ; $4ead: $ba
    jr nz, jr_00a_4eb8                            ; $4eae: $20 $08

jr_00a_4eb0:
    call Call_00a_4e70                            ; $4eb0: $cd $70 $4e
    and a                                         ; $4eb3: $a7
    jr z, jr_00a_4eb8                             ; $4eb4: $28 $02

    jr jr_00a_4ec1                                ; $4eb6: $18 $09

jr_00a_4eb8:
    ld bc, $0008                                  ; $4eb8: $01 $08 $00
    add hl, bc                                    ; $4ebb: $09
    jr jr_00a_4ea4                                ; $4ebc: $18 $e6

jr_00a_4ebe:
    ld hl, $0000                                  ; $4ebe: $21 $00 $00

jr_00a_4ec1:
    pop de                                        ; $4ec1: $d1
    pop bc                                        ; $4ec2: $c1
    pop af                                        ; $4ec3: $f1
    ret                                           ; $4ec4: $c9


Call_00a_4ec5:
    push af                                       ; $4ec5: $f5
    push bc                                       ; $4ec6: $c5
    push de                                       ; $4ec7: $d5
    ld e, a                                       ; $4ec8: $5f

jr_00a_4ec9:
    ld a, e                                       ; $4ec9: $7b
    call Call_000_0626                            ; $4eca: $cd $26 $06
    ld a, c                                       ; $4ecd: $79
    cp $ff                                        ; $4ece: $fe $ff
    jr z, jr_00a_4ef8                             ; $4ed0: $28 $26

    cp d                                          ; $4ed2: $ba
    jr nz, jr_00a_4ef2                            ; $4ed3: $20 $1d

    call Call_00a_4e70                            ; $4ed5: $cd $70 $4e
    and a                                         ; $4ed8: $a7
    jr z, jr_00a_4ef2                             ; $4ed9: $28 $17

    ld a, e                                       ; $4edb: $7b
    inc hl                                        ; $4edc: $23
    inc hl                                        ; $4edd: $23
    call Call_000_0626                            ; $4ede: $cd $26 $06
    dec hl                                        ; $4ee1: $2b
    dec hl                                        ; $4ee2: $2b
    ld a, c                                       ; $4ee3: $79
    or b                                          ; $4ee4: $b0
    jr z, jr_00a_4ef0                             ; $4ee5: $28 $09

    push de                                       ; $4ee7: $d5
    ld e, c                                       ; $4ee8: $59
    ld d, b                                       ; $4ee9: $50
    call Call_00a_4e2f                            ; $4eea: $cd $2f $4e
    pop de                                        ; $4eed: $d1
    jr nz, jr_00a_4ef2                            ; $4eee: $20 $02

jr_00a_4ef0:
    jr jr_00a_4efb                                ; $4ef0: $18 $09

jr_00a_4ef2:
    ld bc, $0008                                  ; $4ef2: $01 $08 $00
    add hl, bc                                    ; $4ef5: $09
    jr jr_00a_4ec9                                ; $4ef6: $18 $d1

jr_00a_4ef8:
    ld hl, $0000                                  ; $4ef8: $21 $00 $00

jr_00a_4efb:
    pop de                                        ; $4efb: $d1
    pop bc                                        ; $4efc: $c1
    pop af                                        ; $4efd: $f1
    ret                                           ; $4efe: $c9


Call_00a_4eff:
    push af                                       ; $4eff: $f5
    push bc                                       ; $4f00: $c5
    push de                                       ; $4f01: $d5
    push hl                                       ; $4f02: $e5
    ld c, a                                       ; $4f03: $4f
    ldh a, [$96]                                  ; $4f04: $f0 $96
    push af                                       ; $4f06: $f5
    ld a, h                                       ; $4f07: $7c
    and $e0                                       ; $4f08: $e6 $e0
    jr nz, jr_00a_4f15                            ; $4f0a: $20 $09

    rst $18                                       ; $4f0c: $df
    inc a                                         ; $4f0d: $3c
    ld a, [bc]                                    ; $4f0e: $0a
    ld a, b                                       ; $4f0f: $78
    rst $18                                       ; $4f10: $df
    ld b, [hl]                                    ; $4f11: $46
    dec b                                         ; $4f12: $05
    jr jr_00a_4f3b                                ; $4f13: $18 $26

jr_00a_4f15:
    rst $18                                       ; $4f15: $df

    db $00, $0a

    push hl                                       ; $4f18: $e5
    ld a, $04                                     ; $4f19: $3e $04
    ldh [$96], a                                  ; $4f1b: $e0 $96
    ldh [rSVBK], a                                ; $4f1d: $e0 $70
    ld hl, $c290                                  ; $4f1f: $21 $90 $c2
    ld a, [hl+]                                   ; $4f22: $2a
    ld d, [hl]                                    ; $4f23: $56
    ld e, a                                       ; $4f24: $5f
    ld hl, $0033                                  ; $4f25: $21 $33 $00
    add hl, de                                    ; $4f28: $19
    ld [hl], $00                                  ; $4f29: $36 $00
    ld hl, $0010                                  ; $4f2b: $21 $10 $00
    add hl, de                                    ; $4f2e: $19
    ld a, [$c28a]                                 ; $4f2f: $fa $8a $c2
    ld [hl], a                                    ; $4f32: $77
    pop hl                                        ; $4f33: $e1
    ld a, c                                       ; $4f34: $79
    call Call_000_015e                            ; $4f35: $cd $5e $01
    rst $18                                       ; $4f38: $df

    db $02, $0a

jr_00a_4f3b:
    pop af                                        ; $4f3b: $f1
    ldh [$96], a                                  ; $4f3c: $e0 $96
    ldh [rSVBK], a                                ; $4f3e: $e0 $70
    pop hl                                        ; $4f40: $e1
    pop de                                        ; $4f41: $d1
    pop bc                                        ; $4f42: $c1
    pop af                                        ; $4f43: $f1
    ret                                           ; $4f44: $c9


Call_00a_4f45:
    push af                                       ; $4f45: $f5
    push bc                                       ; $4f46: $c5
    push de                                       ; $4f47: $d5
    push hl                                       ; $4f48: $e5
    rst $28                                       ; $4f49: $ef

    db $a0, $02

    rst $18                                       ; $4f4c: $df

    db $04, $04

    push af                                       ; $4f4f: $f5
    push hl                                       ; $4f50: $e5
    ld hl, $c465                                  ; $4f51: $21 $65 $c4
    ld c, [hl]                                    ; $4f54: $4e
    ld hl, $c468                                  ; $4f55: $21 $68 $c4
    ld a, [hl+]                                   ; $4f58: $2a
    ld d, [hl]                                    ; $4f59: $56
    ld e, a                                       ; $4f5a: $5f
    ld hl, $c466                                  ; $4f5b: $21 $66 $c4
    ld a, [hl+]                                   ; $4f5e: $2a
    ld h, [hl]                                    ; $4f5f: $66
    ld l, a                                       ; $4f60: $6f
    rst $18                                       ; $4f61: $df

    db $30, $04

    pop hl                                        ; $4f64: $e1
    pop af                                        ; $4f65: $f1
    rst $18                                       ; $4f66: $df

    db $2e, $04

    rst $18                                       ; $4f69: $df

    db $4e, $04

    pop hl                                        ; $4f6c: $e1
    pop de                                        ; $4f6d: $d1
    pop bc                                        ; $4f6e: $c1
    pop af                                        ; $4f6f: $f1
    ret                                           ; $4f70: $c9


Call_00a_4f71:
    push af                                       ; $4f71: $f5
    push bc                                       ; $4f72: $c5
    push de                                       ; $4f73: $d5
    push hl                                       ; $4f74: $e5
    ldh a, [$96]                                  ; $4f75: $f0 $96
    push af                                       ; $4f77: $f5
    ld a, $90                                     ; $4f78: $3e $90
    ldh [rWY], a                                  ; $4f7a: $e0 $4a
    ld hl, $c462                                  ; $4f7c: $21 $62 $c4
    ld a, [hl+]                                   ; $4f7f: $2a
    ld h, [hl]                                    ; $4f80: $66
    ld l, a                                       ; $4f81: $6f
    ld a, [$c296]                                 ; $4f82: $fa $96 $c2
    ld b, a                                       ; $4f85: $47
    ld a, [$c464]                                 ; $4f86: $fa $64 $c4
    call Call_00a_4eff                            ; $4f89: $cd $ff $4e
    pop af                                        ; $4f8c: $f1
    ldh [$96], a                                  ; $4f8d: $e0 $96
    ldh [rSVBK], a                                ; $4f8f: $e0 $70
    pop hl                                        ; $4f91: $e1
    pop de                                        ; $4f92: $d1
    pop bc                                        ; $4f93: $c1
    pop af                                        ; $4f94: $f1
    ret                                           ; $4f95: $c9


Call_00a_4f96:
    push af                                       ; $4f96: $f5
    push bc                                       ; $4f97: $c5
    push de                                       ; $4f98: $d5
    push hl                                       ; $4f99: $e5
    ld hl, $c298                                  ; $4f9a: $21 $98 $c2
    cp [hl]                                       ; $4f9d: $be
    jp z, Jump_00a_504a                           ; $4f9e: $ca $4a $50

    ld d, a                                       ; $4fa1: $57
    ld hl, $c45c                                  ; $4fa2: $21 $5c $c4
    ld a, [hl+]                                   ; $4fa5: $2a
    ld h, [hl]                                    ; $4fa6: $66
    ld l, a                                       ; $4fa7: $6f
    ld a, [$c464]                                 ; $4fa8: $fa $64 $c4
    call Call_00a_4ec5                            ; $4fab: $cd $c5 $4e
    ld a, h                                       ; $4fae: $7c
    or l                                          ; $4faf: $b5
    jp z, Jump_00a_5045                           ; $4fb0: $ca $45 $50

    ld a, [$c464]                                 ; $4fb3: $fa $64 $c4
    ld de, $c400                                  ; $4fb6: $11 $00 $c4
    ld bc, $0008                                  ; $4fb9: $01 $08 $00
    call Call_000_0654                            ; $4fbc: $cd $54 $06
    ld hl, $c406                                  ; $4fbf: $21 $06 $c4
    ld b, [hl]                                    ; $4fc2: $46
    ld a, $04                                     ; $4fc3: $3e $04
    ldh [$96], a                                  ; $4fc5: $e0 $96
    ldh [rSVBK], a                                ; $4fc7: $e0 $70
    ld hl, $c400                                  ; $4fc9: $21 $00 $c4
    ld a, [hl]                                    ; $4fcc: $7e
    call Call_00a_42e0                            ; $4fcd: $cd $e0 $42
    ld e, l                                       ; $4fd0: $5d
    ld d, h                                       ; $4fd1: $54
    ld hl, $0036                                  ; $4fd2: $21 $36 $00
    add hl, de                                    ; $4fd5: $19
    ld a, [hl]                                    ; $4fd6: $7e
    ld [$c29e], a                                 ; $4fd7: $ea $9e $c2
    ld [hl], $01                                  ; $4fda: $36 $01
    ld a, b                                       ; $4fdc: $78
    and $10                                       ; $4fdd: $e6 $10
    jr nz, jr_00a_4fe7                            ; $4fdf: $20 $06

    ld hl, $001a                                  ; $4fe1: $21 $1a $00
    add hl, de                                    ; $4fe4: $19
    ld [hl], $ff                                  ; $4fe5: $36 $ff

jr_00a_4fe7:
    ld a, b                                       ; $4fe7: $78
    and $08                                       ; $4fe8: $e6 $08
    jr z, jr_00a_4ffb                             ; $4fea: $28 $0f

    ld hl, $0031                                  ; $4fec: $21 $31 $00
    add hl, de                                    ; $4fef: $19
    ld a, [hl]                                    ; $4ff0: $7e
    ld [$c29f], a                                 ; $4ff1: $ea $9f $c2
    ld a, $01                                     ; $4ff4: $3e $01
    ld l, e                                       ; $4ff6: $6b
    ld h, d                                       ; $4ff7: $62
    rst $18                                       ; $4ff8: $df
    jr c, jr_00a_4fff                             ; $4ff9: $38 $04

jr_00a_4ffb:
    bit 0, b                                      ; $4ffb: $cb $40
    jr z, jr_00a_500a                             ; $4ffd: $28 $0b

jr_00a_4fff:
    ld hl, $0010                                  ; $4fff: $21 $10 $00
    add hl, de                                    ; $5002: $19
    ld c, [hl]                                    ; $5003: $4e
    ld a, [$c28a]                                 ; $5004: $fa $8a $c2
    add $80                                       ; $5007: $c6 $80
    ld [hl], a                                    ; $5009: $77

jr_00a_500a:
    push bc                                       ; $500a: $c5
    ld hl, $c404                                  ; $500b: $21 $04 $c4
    ld a, [hl+]                                   ; $500e: $2a
    ld h, [hl]                                    ; $500f: $66
    ld l, a                                       ; $5010: $6f
    ld a, [$c400]                                 ; $5011: $fa $00 $c4
    ld b, a                                       ; $5014: $47
    ld a, [$c464]                                 ; $5015: $fa $64 $c4
    call Call_00a_4eff                            ; $5018: $cd $ff $4e
    pop bc                                        ; $501b: $c1
    bit 1, b                                      ; $501c: $cb $48
    jr z, jr_00a_5025                             ; $501e: $28 $05

    ld hl, $0010                                  ; $5020: $21 $10 $00
    add hl, de                                    ; $5023: $19
    ld [hl], c                                    ; $5024: $71

jr_00a_5025:
    ld a, b                                       ; $5025: $78
    and $08                                       ; $5026: $e6 $08
    jr z, jr_00a_5032                             ; $5028: $28 $08

    ld a, [$c29f]                                 ; $502a: $fa $9f $c2
    ld l, e                                       ; $502d: $6b
    ld h, d                                       ; $502e: $62
    rst $18                                       ; $502f: $df
    jr c, @+$06                                   ; $5030: $38 $04

jr_00a_5032:
    ld a, b                                       ; $5032: $78
    and $10                                       ; $5033: $e6 $10
    jr nz, jr_00a_503d                            ; $5035: $20 $06

    ld hl, $001a                                  ; $5037: $21 $1a $00
    add hl, de                                    ; $503a: $19
    ld [hl], $00                                  ; $503b: $36 $00

jr_00a_503d:
    ld hl, $0036                                  ; $503d: $21 $36 $00
    add hl, de                                    ; $5040: $19
    ld a, [$c29e]                                 ; $5041: $fa $9e $c2
    ld [hl], a                                    ; $5044: $77

Jump_00a_5045:
jr_00a_5045:
    pop hl                                        ; $5045: $e1
    pop de                                        ; $5046: $d1
    pop bc                                        ; $5047: $c1
    pop af                                        ; $5048: $f1
    ret                                           ; $5049: $c9


Jump_00a_504a:
    push af                                       ; $504a: $f5
    ld hl, $5365                                  ; $504b: $21 $65 $53
    ld de, $c400                                  ; $504e: $11 $00 $c4
    ld bc, $0008                                  ; $5051: $01 $08 $00
    call Call_000_03d3                            ; $5054: $cd $d3 $03
    ld hl, $c404                                  ; $5057: $21 $04 $c4
    ld a, [hl+]                                   ; $505a: $2a
    ld h, [hl]                                    ; $505b: $66
    ld l, a                                       ; $505c: $6f
    pop af                                        ; $505d: $f1
    ld b, a                                       ; $505e: $47
    ldh a, [$95]                                  ; $505f: $f0 $95
    call Call_00a_4eff                            ; $5061: $cd $ff $4e
    jr jr_00a_5045                                ; $5064: $18 $df

Call_00a_5066:
    push af                                       ; $5066: $f5
    push bc                                       ; $5067: $c5
    push de                                       ; $5068: $d5
    push hl                                       ; $5069: $e5
    ld d, a                                       ; $506a: $57
    ld hl, $c45e                                  ; $506b: $21 $5e $c4
    ld a, [hl+]                                   ; $506e: $2a
    ld h, [hl]                                    ; $506f: $66
    ld l, a                                       ; $5070: $6f
    ld a, [$c464]                                 ; $5071: $fa $64 $c4
    call Call_00a_4ea0                            ; $5074: $cd $a0 $4e
    ld a, h                                       ; $5077: $7c
    or l                                          ; $5078: $b5
    jr z, jr_00a_50c6                             ; $5079: $28 $4b

    ld a, [$c464]                                 ; $507b: $fa $64 $c4
    ld de, $c400                                  ; $507e: $11 $00 $c4
    ld bc, $0008                                  ; $5081: $01 $08 $00
    call Call_000_0654                            ; $5084: $cd $54 $06
    ld hl, $c406                                  ; $5087: $21 $06 $c4
    ld a, [hl]                                    ; $508a: $7e
    cp $ff                                        ; $508b: $fe $ff
    jr z, jr_00a_508f                             ; $508d: $28 $00

jr_00a_508f:
    rst $20                                       ; $508f: $e7
    ld b, b                                       ; $5090: $40
    ld [bc], a                                    ; $5091: $02
    ld hl, $c402                                  ; $5092: $21 $02 $c4
    ld a, [hl+]                                   ; $5095: $2a
    ld d, [hl]                                    ; $5096: $56
    ld e, a                                       ; $5097: $5f
    ld a, e                                       ; $5098: $7b
    or d                                          ; $5099: $b2
    jr z, jr_00a_50a1                             ; $509a: $28 $05

    call Call_00a_4e2f                            ; $509c: $cd $2f $4e
    jr nz, jr_00a_50b9                            ; $509f: $20 $18

jr_00a_50a1:
    ld hl, $c404                                  ; $50a1: $21 $04 $c4
    ld a, [hl+]                                   ; $50a4: $2a
    ld h, [hl]                                    ; $50a5: $66
    ld l, a                                       ; $50a6: $6f
    ld a, h                                       ; $50a7: $7c
    and $f0                                       ; $50a8: $e6 $f0
    jr nz, jr_00a_50af                            ; $50aa: $20 $03

    rst $28                                       ; $50ac: $ef
    ld b, b                                       ; $50ad: $40
    ld [bc], a                                    ; $50ae: $02

jr_00a_50af:
    ld a, [$c296]                                 ; $50af: $fa $96 $c2
    ld b, a                                       ; $50b2: $47
    ld a, [$c464]                                 ; $50b3: $fa $64 $c4
    call Call_00a_4eff                            ; $50b6: $cd $ff $4e

jr_00a_50b9:
    rst $30                                       ; $50b9: $f7
    ld b, b                                       ; $50ba: $40
    ld [bc], a                                    ; $50bb: $02
    jr z, jr_00a_50c6                             ; $50bc: $28 $08

    ld hl, $c406                                  ; $50be: $21 $06 $c4
    ld a, [hl]                                    ; $50c1: $7e
    cp $ff                                        ; $50c2: $fe $ff
    jr z, jr_00a_50c6                             ; $50c4: $28 $00

jr_00a_50c6:
    pop hl                                        ; $50c6: $e1
    pop de                                        ; $50c7: $d1
    pop bc                                        ; $50c8: $c1
    pop af                                        ; $50c9: $f1
    ret                                           ; $50ca: $c9


Call_00a_50cb:
    push af                                       ; $50cb: $f5
    push bc                                       ; $50cc: $c5
    push de                                       ; $50cd: $d5
    push hl                                       ; $50ce: $e5
    ld d, a                                       ; $50cf: $57
    ld hl, $c460                                  ; $50d0: $21 $60 $c4
    ld a, [hl+]                                   ; $50d3: $2a
    ld h, [hl]                                    ; $50d4: $66
    ld l, a                                       ; $50d5: $6f
    ld a, [$c464]                                 ; $50d6: $fa $64 $c4
    call Call_00a_4ec5                            ; $50d9: $cd $c5 $4e
    ld a, h                                       ; $50dc: $7c
    or l                                          ; $50dd: $b5
    jr z, jr_00a_5104                             ; $50de: $28 $24

    ld a, [$c464]                                 ; $50e0: $fa $64 $c4
    ld de, $c400                                  ; $50e3: $11 $00 $c4
    ld bc, $0008                                  ; $50e6: $01 $08 $00
    call Call_000_0654                            ; $50e9: $cd $54 $06
    ld hl, $c406                                  ; $50ec: $21 $06 $c4
    ld a, [hl]                                    ; $50ef: $7e
    cp $01                                        ; $50f0: $fe $01
    jr z, jr_00a_5104                             ; $50f2: $28 $10

    ld hl, $c404                                  ; $50f4: $21 $04 $c4
    ld a, [hl+]                                   ; $50f7: $2a
    ld h, [hl]                                    ; $50f8: $66
    ld l, a                                       ; $50f9: $6f
    ld a, [$c296]                                 ; $50fa: $fa $96 $c2
    ld b, a                                       ; $50fd: $47
    ld a, [$c464]                                 ; $50fe: $fa $64 $c4
    call Call_00a_4eff                            ; $5101: $cd $ff $4e

jr_00a_5104:
    pop hl                                        ; $5104: $e1
    pop de                                        ; $5105: $d1
    pop bc                                        ; $5106: $c1
    pop af                                        ; $5107: $f1
    ret                                           ; $5108: $c9


Call_00a_5109:
    push af                                       ; $5109: $f5
    push bc                                       ; $510a: $c5
    push de                                       ; $510b: $d5
    push hl                                       ; $510c: $e5
    ld d, a                                       ; $510d: $57
    ld hl, $c460                                  ; $510e: $21 $60 $c4
    ld a, [hl+]                                   ; $5111: $2a
    ld h, [hl]                                    ; $5112: $66
    ld l, a                                       ; $5113: $6f
    ld a, [$c464]                                 ; $5114: $fa $64 $c4
    call Call_00a_4ec5                            ; $5117: $cd $c5 $4e
    ld a, h                                       ; $511a: $7c
    or l                                          ; $511b: $b5
    jr z, jr_00a_5141                             ; $511c: $28 $23

    ld a, [$c464]                                 ; $511e: $fa $64 $c4
    ld de, $c400                                  ; $5121: $11 $00 $c4
    ld bc, $0008                                  ; $5124: $01 $08 $00
    call Call_000_0654                            ; $5127: $cd $54 $06
    ld hl, $c406                                  ; $512a: $21 $06 $c4
    ld a, [hl]                                    ; $512d: $7e
    and a                                         ; $512e: $a7
    jr z, jr_00a_5141                             ; $512f: $28 $10

    ld hl, $c404                                  ; $5131: $21 $04 $c4
    ld a, [hl+]                                   ; $5134: $2a
    ld h, [hl]                                    ; $5135: $66
    ld l, a                                       ; $5136: $6f
    ld a, [$c296]                                 ; $5137: $fa $96 $c2
    ld b, a                                       ; $513a: $47
    ld a, [$c464]                                 ; $513b: $fa $64 $c4
    call Call_00a_4eff                            ; $513e: $cd $ff $4e

jr_00a_5141:
    pop hl                                        ; $5141: $e1
    pop de                                        ; $5142: $d1
    pop bc                                        ; $5143: $c1
    pop af                                        ; $5144: $f1
    ret                                           ; $5145: $c9


Call_00a_5146:
    push af                                       ; $5146: $f5
    push bc                                       ; $5147: $c5
    push de                                       ; $5148: $d5
    push hl                                       ; $5149: $e5
    ld a, [$c46b]                                 ; $514a: $fa $6b $c4
    cp $fa                                        ; $514d: $fe $fa
    jr z, jr_00a_5183                             ; $514f: $28 $32

    ld hl, $c46b                                  ; $5151: $21 $6b $c4
    ld d, [hl]                                    ; $5154: $56
    ld hl, $c458                                  ; $5155: $21 $58 $c4
    ld a, [hl+]                                   ; $5158: $2a
    ld h, [hl]                                    ; $5159: $66
    ld l, a                                       ; $515a: $6f
    ld a, [$c464]                                 ; $515b: $fa $64 $c4
    call Call_00a_4ec5                            ; $515e: $cd $c5 $4e
    ld a, h                                       ; $5161: $7c
    or l                                          ; $5162: $b5
    jr z, jr_00a_5183                             ; $5163: $28 $1e

    ld a, [$c464]                                 ; $5165: $fa $64 $c4
    ld de, $c400                                  ; $5168: $11 $00 $c4
    ld bc, $0008                                  ; $516b: $01 $08 $00
    call Call_000_0654                            ; $516e: $cd $54 $06
    ld hl, $c406                                  ; $5171: $21 $06 $c4
    ld de, $c450                                  ; $5174: $11 $50 $c4
    ld a, [hl]                                    ; $5177: $7e
    ld [de], a                                    ; $5178: $12
    ld hl, $c407                                  ; $5179: $21 $07 $c4
    ld de, $c46a                                  ; $517c: $11 $6a $c4
    ld a, [hl]                                    ; $517f: $7e
    ld [de], a                                    ; $5180: $12
    jr jr_00a_5183                                ; $5181: $18 $00

jr_00a_5183:
    pop hl                                        ; $5183: $e1
    pop de                                        ; $5184: $d1
    pop bc                                        ; $5185: $c1
    pop af                                        ; $5186: $f1
    ret                                           ; $5187: $c9


    db $00, $1e, $08, $32, $ff, $00, $01

    ld e, $1e                                     ; $518f: $1e $1e
    dec [hl]                                      ; $5191: $35
    rst $38                                       ; $5192: $ff
    nop                                           ; $5193: $00

    db $02

    inc d                                         ; $5195: $14
    ld [bc], a                                    ; $5196: $02
    inc [hl]                                      ; $5197: $34
    dec h                                         ; $5198: $25
    nop                                           ; $5199: $00

    db $03, $02, $0c, $32, $0f, $00, $04

    nop                                           ; $51a1: $00
    ld c, $32                                     ; $51a2: $0e $32
    rrca                                          ; $51a4: $0f
    nop                                           ; $51a5: $00

    db $05, $01, $10, $32, $26, $00, $06

    inc bc                                        ; $51ad: $03
    nop                                           ; $51ae: $00
    inc [hl]                                      ; $51af: $34
    rrca                                          ; $51b0: $0f
    nop                                           ; $51b1: $00

    db $07

    stop                                          ; $51b3: $10 $00
    dec [hl]                                      ; $51b5: $35
    rrca                                          ; $51b6: $0f
    nop                                           ; $51b7: $00

    db $08, $04, $00, $33, $ff, $00, $09

    inc b                                         ; $51bf: $04
    nop                                           ; $51c0: $00
    inc sp                                        ; $51c1: $33
    rst $38                                       ; $51c2: $ff
    nop                                           ; $51c3: $00

    db $0a

    inc b                                         ; $51c5: $04
    nop                                           ; $51c6: $00
    inc sp                                        ; $51c7: $33
    rst $38                                       ; $51c8: $ff
    nop                                           ; $51c9: $00

    db $0b

    inc b                                         ; $51cb: $04
    nop                                           ; $51cc: $00
    inc sp                                        ; $51cd: $33
    rst $38                                       ; $51ce: $ff
    nop                                           ; $51cf: $00

    db $0c

    rra                                           ; $51d1: $1f
    inc b                                         ; $51d2: $04
    ld sp, $0007                                  ; $51d3: $31 $07 $00

    db $0d, $21, $00, $30, $07, $00, $0e

    ld de, $3008                                  ; $51dd: $11 $08 $30
    rlca                                          ; $51e0: $07
    nop                                           ; $51e1: $00

    db $0f

    inc de                                        ; $51e3: $13
    ld b, $31                                     ; $51e4: $06 $31
    rlca                                          ; $51e6: $07
    nop                                           ; $51e7: $00

    db $10

    inc e                                         ; $51e9: $1c
    ld [bc], a                                    ; $51ea: $02
    jr nc, @+$09                                  ; $51eb: $30 $07

    nop                                           ; $51ed: $00

    db $11

    dec b                                         ; $51ef: $05
    ld [$0730], sp                                ; $51f0: $08 $30 $07
    nop                                           ; $51f3: $00

    db $12

    add hl, bc                                    ; $51f5: $09
    ld [$0731], sp                                ; $51f6: $08 $31 $07
    nop                                           ; $51f9: $00

    db $13

    ld [$3004], sp                                ; $51fb: $08 $04 $30
    rlca                                          ; $51fe: $07
    nop                                           ; $51ff: $00

    db $14

    ld b, $08                                     ; $5201: $06 $08
    jr nc, @+$09                                  ; $5203: $30 $07

    nop                                           ; $5205: $00

    db $15

    dec d                                         ; $5207: $15
    ld a, [bc]                                    ; $5208: $0a
    ld sp, $0007                                  ; $5209: $31 $07 $00

    db $16

    rlca                                          ; $520d: $07
    ld b, $30                                     ; $520e: $06 $30
    rlca                                          ; $5210: $07
    nop                                           ; $5211: $00

    db $17

    rrca                                          ; $5213: $0f
    ld [$0730], sp                                ; $5214: $08 $30 $07
    nop                                           ; $5217: $00

    db $18

    dec c                                         ; $5219: $0d
    ld c, $31                                     ; $521a: $0e $31
    rst $38                                       ; $521c: $ff
    nop                                           ; $521d: $00

    db $19

    dec c                                         ; $521f: $0d
    ld c, $31                                     ; $5220: $0e $31
    rst $38                                       ; $5222: $ff
    nop                                           ; $5223: $00

    db $1a

    dec c                                         ; $5225: $0d
    ld c, $31                                     ; $5226: $0e $31
    rst $38                                       ; $5228: $ff
    nop                                           ; $5229: $00

    db $1b

    dec c                                         ; $522b: $0d
    ld c, $31                                     ; $522c: $0e $31
    rst $38                                       ; $522e: $ff
    nop                                           ; $522f: $00

    db $1c

    dec bc                                        ; $5231: $0b
    ld [bc], a                                    ; $5232: $02
    inc sp                                        ; $5233: $33
    ld [bc], a                                    ; $5234: $02
    nop                                           ; $5235: $00

    db $1d

    inc c                                         ; $5237: $0c
    inc b                                         ; $5238: $04
    inc sp                                        ; $5239: $33
    rst $38                                       ; $523a: $ff
    nop                                           ; $523b: $00

    db $1e, $1e, $00, $31, $02, $00

    rra                                           ; $5242: $1f
    ld a, [bc]                                    ; $5243: $0a
    nop                                           ; $5244: $00
    ld [hl-], a                                   ; $5245: $32
    ld bc, $2000                                  ; $5246: $01 $00 $20
    dec bc                                        ; $5249: $0b
    ld [bc], a                                    ; $524a: $02
    ld [hl-], a                                   ; $524b: $32
    ld bc, $2100                                  ; $524c: $01 $00 $21
    ld d, $04                                     ; $524f: $16 $04
    ld [hl-], a                                   ; $5251: $32
    rst $38                                       ; $5252: $ff
    nop                                           ; $5253: $00
    ld [hl+], a                                   ; $5254: $22
    inc bc                                        ; $5255: $03
    ld b, $32                                     ; $5256: $06 $32
    inc bc                                        ; $5258: $03
    nop                                           ; $5259: $00
    inc hl                                        ; $525a: $23
    ld a, [bc]                                    ; $525b: $0a
    ld [bc], a                                    ; $525c: $02
    ld sp, $0001                                  ; $525d: $31 $01 $00
    inc h                                         ; $5260: $24
    ld e, $20                                     ; $5261: $1e $20
    dec [hl]                                      ; $5263: $35
    rst $38                                       ; $5264: $ff
    nop                                           ; $5265: $00
    dec h                                         ; $5266: $25
    ld c, $22                                     ; $5267: $0e $22
    dec [hl]                                      ; $5269: $35
    rst $38                                       ; $526a: $ff
    nop                                           ; $526b: $00
    ld h, $19                                     ; $526c: $26 $19
    ld b, $33                                     ; $526e: $06 $33
    rlca                                          ; $5270: $07
    nop                                           ; $5271: $00
    daa                                           ; $5272: $27
    jr @+$06                                      ; $5273: $18 $04

    inc [hl]                                      ; $5275: $34
    rlca                                          ; $5276: $07
    nop                                           ; $5277: $00
    jr z, jr_00a_529c                             ; $5278: $28 $22

    ld b, $34                                     ; $527a: $06 $34
    rlca                                          ; $527c: $07
    nop                                           ; $527d: $00
    add hl, hl                                    ; $527e: $29
    dec de                                        ; $527f: $1b
    ld [$0734], sp                                ; $5280: $08 $34 $07
    nop                                           ; $5283: $00
    ld a, [hl+]                                   ; $5284: $2a
    jr nz, jr_00a_5291                            ; $5285: $20 $0a

    jr nc, jr_00a_5290                            ; $5287: $30 $07

    nop                                           ; $5289: $00
    dec hl                                        ; $528a: $2b
    inc b                                         ; $528b: $04
    inc c                                         ; $528c: $0c
    jr nc, jr_00a_52b6                            ; $528d: $30 $27

    nop                                           ; $528f: $00

jr_00a_5290:
    inc l                                         ; $5290: $2c

jr_00a_5291:
    ld a, [de]                                    ; $5291: $1a
    ld a, [bc]                                    ; $5292: $0a
    inc [hl]                                      ; $5293: $34
    rlca                                          ; $5294: $07
    nop                                           ; $5295: $00
    dec l                                         ; $5296: $2d
    ld [de], a                                    ; $5297: $12
    inc c                                         ; $5298: $0c
    ld sp, $0007                                  ; $5299: $31 $07 $00

jr_00a_529c:
    ld l, $17                                     ; $529c: $2e $17
    ld [$0733], sp                                ; $529e: $08 $33 $07
    nop                                           ; $52a1: $00
    cpl                                           ; $52a2: $2f
    rla                                           ; $52a3: $17
    ld [$0733], sp                                ; $52a4: $08 $33 $07
    nop                                           ; $52a7: $00
    jr nc, jr_00a_52c7                            ; $52a8: $30 $1d

    inc c                                         ; $52aa: $0c
    inc [hl]                                      ; $52ab: $34
    ld b, $00                                     ; $52ac: $06 $00
    ld sp, $0201                                  ; $52ae: $31 $01 $02
    dec [hl]                                      ; $52b1: $35
    rst $38                                       ; $52b2: $ff
    nop                                           ; $52b3: $00
    ld [hl-], a                                   ; $52b4: $32
    nop                                           ; $52b5: $00

jr_00a_52b6:
    inc b                                         ; $52b6: $04
    dec [hl]                                      ; $52b7: $35
    rst $38                                       ; $52b8: $ff
    nop                                           ; $52b9: $00
    inc sp                                        ; $52ba: $33
    inc b                                         ; $52bb: $04
    ld b, $35                                     ; $52bc: $06 $35
    rst $38                                       ; $52be: $ff
    nop                                           ; $52bf: $00
    inc [hl]                                      ; $52c0: $34
    dec c                                         ; $52c1: $0d
    ld [$ff35], sp                                ; $52c2: $08 $35 $ff
    nop                                           ; $52c5: $00
    dec [hl]                                      ; $52c6: $35

jr_00a_52c7:
    jr jr_00a_52d3                                ; $52c7: $18 $0a

    dec [hl]                                      ; $52c9: $35
    rst $38                                       ; $52ca: $ff
    nop                                           ; $52cb: $00
    ld [hl], $1b                                  ; $52cc: $36 $1b
    inc c                                         ; $52ce: $0c
    dec [hl]                                      ; $52cf: $35
    rst $38                                       ; $52d0: $ff
    nop                                           ; $52d1: $00
    scf                                           ; $52d2: $37

jr_00a_52d3:
    ld b, $0e                                     ; $52d3: $06 $0e
    dec [hl]                                      ; $52d5: $35
    rst $38                                       ; $52d6: $ff
    nop                                           ; $52d7: $00
    jr c, jr_00a_52f7                             ; $52d8: $38 $1d

    db $10                                        ; $52da: $10
    dec [hl]                                      ; $52db: $35
    rst $38                                       ; $52dc: $ff
    nop                                           ; $52dd: $00
    add hl, sp                                    ; $52de: $39
    inc d                                         ; $52df: $14
    ld [de], a                                    ; $52e0: $12
    dec [hl]                                      ; $52e1: $35
    rst $38                                       ; $52e2: $ff
    nop                                           ; $52e3: $00
    ld a, [hl-]                                   ; $52e4: $3a
    dec bc                                        ; $52e5: $0b
    inc d                                         ; $52e6: $14
    dec [hl]                                      ; $52e7: $35
    rst $38                                       ; $52e8: $ff
    nop                                           ; $52e9: $00
    dec sp                                        ; $52ea: $3b
    dec b                                         ; $52eb: $05
    ld d, $35                                     ; $52ec: $16 $35
    rst $38                                       ; $52ee: $ff
    nop                                           ; $52ef: $00
    inc a                                         ; $52f0: $3c
    inc c                                         ; $52f1: $0c
    jr jr_00a_5329                                ; $52f2: $18 $35

    rst $38                                       ; $52f4: $ff
    nop                                           ; $52f5: $00
    dec a                                         ; $52f6: $3d

jr_00a_52f7:
    ld [bc], a                                    ; $52f7: $02
    ld a, [de]                                    ; $52f8: $1a
    dec [hl]                                      ; $52f9: $35
    rst $38                                       ; $52fa: $ff
    nop                                           ; $52fb: $00
    ld a, $14                                     ; $52fc: $3e $14
    inc e                                         ; $52fe: $1c
    dec [hl]                                      ; $52ff: $35
    rst $38                                       ; $5300: $ff
    nop                                           ; $5301: $00
    rst $38                                       ; $5302: $ff

Call_00a_5303:
    push af                                       ; $5303: $f5
    push bc                                       ; $5304: $c5
    push de                                       ; $5305: $d5
    ld b, a                                       ; $5306: $47
    ld hl, $5188                                  ; $5307: $21 $88 $51

jr_00a_530a:
    ld a, [hl]                                    ; $530a: $7e
    cp $ff                                        ; $530b: $fe $ff
    jr z, jr_00a_5318                             ; $530d: $28 $09

    cp b                                          ; $530f: $b8
    jr z, jr_00a_531b                             ; $5310: $28 $09

    ld de, $0006                                  ; $5312: $11 $06 $00
    add hl, de                                    ; $5315: $19
    jr jr_00a_530a                                ; $5316: $18 $f2

jr_00a_5318:
    ld hl, $5188                                  ; $5318: $21 $88 $51

jr_00a_531b:
    pop de                                        ; $531b: $d1
    pop bc                                        ; $531c: $c1
    pop af                                        ; $531d: $f1
    ret                                           ; $531e: $c9


    push bc                                       ; $531f: $c5
    push de                                       ; $5320: $d5
    push hl                                       ; $5321: $e5
    ld b, $ff                                     ; $5322: $06 $ff
    ld hl, $5188                                  ; $5324: $21 $88 $51

jr_00a_5327:
    ld a, [hl]                                    ; $5327: $7e
    inc b                                         ; $5328: $04

jr_00a_5329:
    ld de, $0006                                  ; $5329: $11 $06 $00
    add hl, de                                    ; $532c: $19
    cp $ff                                        ; $532d: $fe $ff
    jr nz, jr_00a_5327                            ; $532f: $20 $f6

    ld a, b                                       ; $5331: $78
    pop hl                                        ; $5332: $e1
    pop de                                        ; $5333: $d1
    pop bc                                        ; $5334: $c1
    ret                                           ; $5335: $c9


    push de                                       ; $5336: $d5
    push hl                                       ; $5337: $e5
    ld h, $00                                     ; $5338: $26 $00
    ld l, a                                       ; $533a: $6f
    ld e, l                                       ; $533b: $5d
    ld d, h                                       ; $533c: $54
    add hl, hl                                    ; $533d: $29
    add hl, de                                    ; $533e: $19
    add hl, hl                                    ; $533f: $29
    ld de, $5188                                  ; $5340: $11 $88 $51
    add hl, de                                    ; $5343: $19
    ld a, [hl]                                    ; $5344: $7e
    pop hl                                        ; $5345: $e1
    pop de                                        ; $5346: $d1
    ret                                           ; $5347: $c9


    push bc                                       ; $5348: $c5
    push de                                       ; $5349: $d5
    push hl                                       ; $534a: $e5
    ld c, a                                       ; $534b: $4f
    ld b, $ff                                     ; $534c: $06 $ff
    ld hl, $5188                                  ; $534e: $21 $88 $51

jr_00a_5351:
    inc b                                         ; $5351: $04
    ld a, [hl]                                    ; $5352: $7e
    ld de, $0006                                  ; $5353: $11 $06 $00
    add hl, de                                    ; $5356: $19
    cp c                                          ; $5357: $b9
    jr z, jr_00a_5360                             ; $5358: $28 $06

    cp $ff                                        ; $535a: $fe $ff
    jr nz, jr_00a_5351                            ; $535c: $20 $f3

    ld b, $00                                     ; $535e: $06 $00

jr_00a_5360:
    ld a, b                                       ; $5360: $78
    pop hl                                        ; $5361: $e1
    pop de                                        ; $5362: $d1
    pop bc                                        ; $5363: $c1
    ret                                           ; $5364: $c9


    ld [bc], a                                    ; $5365: $02
    rst $38                                       ; $5366: $ff
    nop                                           ; $5367: $00
    nop                                           ; $5368: $00
    ld l, [hl]                                    ; $5369: $6e
    ld d, e                                       ; $536a: $53
    inc bc                                        ; $536b: $03
    nop                                           ; $536c: $00
    rst $38                                       ; $536d: $ff
    ld a, $00                                     ; $536e: $3e $00
    ld b, a                                       ; $5370: $47
    ld a, [$c298]                                 ; $5371: $fa $98 $c2
    rst $18                                       ; $5374: $df
    ld l, $0a                                     ; $5375: $2e $0a
    ld hl, $0c46                                  ; $5377: $21 $46 $0c
    call Call_00a_53f0                            ; $537a: $cd $f0 $53
    ld a, $00                                     ; $537d: $3e $00
    rst $18                                       ; $537f: $df
    ld a, [bc]                                    ; $5380: $0a
    ld a, [bc]                                    ; $5381: $0a
    rst $18                                       ; $5382: $df
    ld [de], a                                    ; $5383: $12
    ld a, [bc]                                    ; $5384: $0a
    rst $18                                       ; $5385: $df
    inc c                                         ; $5386: $0c
    ld a, [bc]                                    ; $5387: $0a
    push af                                       ; $5388: $f5
    ld a, $05                                     ; $5389: $3e $05
    rst $18                                       ; $538b: $df
    inc b                                         ; $538c: $04
    ld a, [bc]                                    ; $538d: $0a
    pop af                                        ; $538e: $f1
    and a                                         ; $538f: $a7
    jr nz, jr_00a_53bc                            ; $5390: $20 $2a

    ld hl, $0c4a                                  ; $5392: $21 $4a $0c
    call Call_00a_53f0                            ; $5395: $cd $f0 $53
    ld a, $00                                     ; $5398: $3e $00
    rst $18                                       ; $539a: $df
    ld [$cd0a], sp                                ; $539b: $08 $0a $cd
    jp c, Jump_000_3e53                           ; $539e: $da $53 $3e

    ld a, [$41ea]                                 ; $53a1: $fa $ea $41
    call nz, $fa3e                                ; $53a4: $c4 $3e $fa
    ld [$c46a], a                                 ; $53a7: $ea $6a $c4
    ld hl, $c2a0                                  ; $53aa: $21 $a0 $c2
    ld de, $c466                                  ; $53ad: $11 $66 $c4
    ld bc, $0004                                  ; $53b0: $01 $04 $00
    call Call_000_03d3                            ; $53b3: $cd $d3 $03
    ld a, [$c2a4]                                 ; $53b6: $fa $a4 $c2
    ld [$c465], a                                 ; $53b9: $ea $65 $c4

jr_00a_53bc:
    ret                                           ; $53bc: $c9


    ld a, $fa                                     ; $53bd: $3e $fa
    ld [$c441], a                                 ; $53bf: $ea $41 $c4
    ld a, $fa                                     ; $53c2: $3e $fa
    ld [$c46a], a                                 ; $53c4: $ea $6a $c4
    ld hl, $c2a0                                  ; $53c7: $21 $a0 $c2
    ld de, $c466                                  ; $53ca: $11 $66 $c4
    ld bc, $0004                                  ; $53cd: $01 $04 $00
    call Call_000_03d3                            ; $53d0: $cd $d3 $03
    ld a, [$c2a4]                                 ; $53d3: $fa $a4 $c2
    ld [$c465], a                                 ; $53d6: $ea $65 $c4
    ret                                           ; $53d9: $c9


    rst $28                                       ; $53da: $ef
    nop                                           ; $53db: $00
    ld [de], a                                    ; $53dc: $12
    rst $28                                       ; $53dd: $ef
    jr nz, @+$14                                  ; $53de: $20 $12

    rst $28                                       ; $53e0: $ef
    ld b, b                                       ; $53e1: $40
    ld [de], a                                    ; $53e2: $12
    rst $28                                       ; $53e3: $ef
    ld h, b                                       ; $53e4: $60
    ld [de], a                                    ; $53e5: $12
    ld a, [$c298]                                 ; $53e6: $fa $98 $c2
    rst $18                                       ; $53e9: $df
    ld a, [de]                                    ; $53ea: $1a
    ld a, [bc]                                    ; $53eb: $0a
    rst $28                                       ; $53ec: $ef
    ret nz                                        ; $53ed: $c0

    ld c, $c9                                     ; $53ee: $0e $c9

Call_00a_53f0:
    call Call_00a_53fc                            ; $53f0: $cd $fc $53
    add l                                         ; $53f3: $85
    ld l, a                                       ; $53f4: $6f
    jr nc, jr_00a_53f8                            ; $53f5: $30 $01

    inc h                                         ; $53f7: $24

jr_00a_53f8:
    rst $18                                       ; $53f8: $df
    ld c, $0a                                     ; $53f9: $0e $0a
    ret                                           ; $53fb: $c9


Call_00a_53fc:
    ld a, [$c299]                                 ; $53fc: $fa $99 $c2
    cp $04                                        ; $53ff: $fe $04
    jp nz, Jump_00a_5408                          ; $5401: $c2 $08 $54

    ld a, $00                                     ; $5404: $3e $00
    jr jr_00a_5421                                ; $5406: $18 $19

Jump_00a_5408:
    cp $05                                        ; $5408: $fe $05
    jp nz, Jump_00a_5411                          ; $540a: $c2 $11 $54

    ld a, $01                                     ; $540d: $3e $01
    jr jr_00a_5421                                ; $540f: $18 $10

Jump_00a_5411:
    cp $06                                        ; $5411: $fe $06
    jp nz, Jump_00a_541a                          ; $5413: $c2 $1a $54

    ld a, $02                                     ; $5416: $3e $02
    jr jr_00a_5421                                ; $5418: $18 $07

Jump_00a_541a:
    cp $07                                        ; $541a: $fe $07
    jp nz, Jump_00a_5421                          ; $541c: $c2 $21 $54

    ld a, $03                                     ; $541f: $3e $03

Jump_00a_5421:
jr_00a_5421:
    ret                                           ; $5421: $c9


    ldh a, [$96]                                  ; $5422: $f0 $96
    push af                                       ; $5424: $f5
    ld a, $06                                     ; $5425: $3e $06
    ldh [$96], a                                  ; $5427: $e0 $96
    ldh [rSVBK], a                                ; $5429: $e0 $70
    xor a                                         ; $542b: $af
    ld hl, $d5e0                                  ; $542c: $21 $e0 $d5
    ld b, $10                                     ; $542f: $06 $10

jr_00a_5431:
    ld [hl+], a                                   ; $5431: $22
    dec b                                         ; $5432: $05
    jr nz, jr_00a_5431                            ; $5433: $20 $fc

    call Call_00a_5441                            ; $5435: $cd $41 $54

Call_00a_5438:
    call Call_00a_545e                            ; $5438: $cd $5e $54
    pop af                                        ; $543b: $f1
    ldh [$96], a                                  ; $543c: $e0 $96
    ldh [rSVBK], a                                ; $543e: $e0 $70
    ret                                           ; $5440: $c9


Call_00a_5441:
    ld hl, $c200                                  ; $5441: $21 $00 $c2
    ld de, $d540                                  ; $5444: $11 $40 $d5
    ld b, $80                                     ; $5447: $06 $80

jr_00a_5449:
    ld a, [hl+]                                   ; $5449: $2a
    ld [de], a                                    ; $544a: $12
    inc de                                        ; $544b: $13
    dec b                                         ; $544c: $05
    jr nz, jr_00a_5449                            ; $544d: $20 $fa

    ld hl, $c200                                  ; $544f: $21 $00 $c2
    ld de, $d4a0                                  ; $5452: $11 $a0 $d4
    ld b, $80                                     ; $5455: $06 $80

jr_00a_5457:
    ld a, [hl+]                                   ; $5457: $2a
    ld [de], a                                    ; $5458: $12
    inc de                                        ; $5459: $13
    dec b                                         ; $545a: $05
    jr nz, jr_00a_5457                            ; $545b: $20 $fa

    ret                                           ; $545d: $c9


Call_00a_545e:
    ld hl, $d4a0                                  ; $545e: $21 $a0 $d4
    ld de, $d5f2                                  ; $5461: $11 $f2 $d5
    ld b, $40                                     ; $5464: $06 $40

jr_00a_5466:
    push bc                                       ; $5466: $c5
    push hl                                       ; $5467: $e5
    ld a, [hl+]                                   ; $5468: $2a
    ld b, [hl]                                    ; $5469: $46
    ld c, a                                       ; $546a: $4f
    call Call_000_24eb                            ; $546b: $cd $eb $24
    ld [de], a                                    ; $546e: $12
    inc de                                        ; $546f: $13
    ld a, b                                       ; $5470: $78
    ld [de], a                                    ; $5471: $12
    inc de                                        ; $5472: $13
    ld a, c                                       ; $5473: $79
    ld [de], a                                    ; $5474: $12
    dec de                                        ; $5475: $1b
    dec de                                        ; $5476: $1b
    call Call_00a_5490                            ; $5477: $cd $90 $54
    inc de                                        ; $547a: $13
    inc de                                        ; $547b: $13
    ld a, [de]                                    ; $547c: $1a
    ld c, a                                       ; $547d: $4f
    dec de                                        ; $547e: $1b
    ld a, [de]                                    ; $547f: $1a
    ld b, a                                       ; $5480: $47
    dec de                                        ; $5481: $1b
    ld a, [de]                                    ; $5482: $1a
    call Call_000_2504                            ; $5483: $cd $04 $25
    pop hl                                        ; $5486: $e1
    ld a, c                                       ; $5487: $79
    ld [hl+], a                                   ; $5488: $22
    ld [hl], b                                    ; $5489: $70
    inc hl                                        ; $548a: $23
    pop bc                                        ; $548b: $c1
    dec b                                         ; $548c: $05
    jr nz, jr_00a_5466                            ; $548d: $20 $d7

    ret                                           ; $548f: $c9


Call_00a_5490:
    ld a, [de]                                    ; $5490: $1a
    inc de                                        ; $5491: $13
    ld c, a                                       ; $5492: $4f
    ld a, [de]                                    ; $5493: $1a
    inc de                                        ; $5494: $13
    add c                                         ; $5495: $81
    ld c, a                                       ; $5496: $4f
    ld a, [de]                                    ; $5497: $1a
    add c                                         ; $5498: $81
    ld c, a                                       ; $5499: $4f
    ld b, $00                                     ; $549a: $06 $00
    srl a                                         ; $549c: $cb $3f
    srl a                                         ; $549e: $cb $3f
    srl a                                         ; $54a0: $cb $3f
    ld [de], a                                    ; $54a2: $12
    dec de                                        ; $54a3: $1b
    ld h, b                                       ; $54a4: $60
    ld l, c                                       ; $54a5: $69
    add hl, hl                                    ; $54a6: $29
    srl h                                         ; $54a7: $cb $3c
    rr l                                          ; $54a9: $cb $1d
    srl h                                         ; $54ab: $cb $3c
    rr l                                          ; $54ad: $cb $1d
    srl h                                         ; $54af: $cb $3c
    rr l                                          ; $54b1: $cb $1d
    ld a, l                                       ; $54b3: $7d
    ld [de], a                                    ; $54b4: $12
    dec de                                        ; $54b5: $1b
    ld h, b                                       ; $54b6: $60
    ld l, c                                       ; $54b7: $69
    add hl, hl                                    ; $54b8: $29
    add hl, hl                                    ; $54b9: $29
    srl h                                         ; $54ba: $cb $3c
    rr l                                          ; $54bc: $cb $1d
    srl h                                         ; $54be: $cb $3c
    rr l                                          ; $54c0: $cb $1d
    srl h                                         ; $54c2: $cb $3c
    rr l                                          ; $54c4: $cb $1d
    ld a, l                                       ; $54c6: $7d
    bit 5, a                                      ; $54c7: $cb $6f
    jr z, jr_00a_54cd                             ; $54c9: $28 $02

    ld a, $1f                                     ; $54cb: $3e $1f

jr_00a_54cd:
    ld [de], a                                    ; $54cd: $12
    ret                                           ; $54ce: $c9


    ldh a, [$96]                                  ; $54cf: $f0 $96
    push af                                       ; $54d1: $f5
    ld a, $06                                     ; $54d2: $3e $06
    ldh [$96], a                                  ; $54d4: $e0 $96
    ldh [rSVBK], a                                ; $54d6: $e0 $70
    ld hl, $d5f0                                  ; $54d8: $21 $f0 $d5
    ld [hl], d                                    ; $54db: $72
    ld l, d                                       ; $54dc: $6a
    ld h, $00                                     ; $54dd: $26 $00
    ld de, $001f                                  ; $54df: $11 $1f $00
    call Call_000_09ae                            ; $54e2: $cd $ae $09
    ld a, l                                       ; $54e5: $7d
    ld [$d5f9], a                                 ; $54e6: $ea $f9 $d5
    ld hl, $d5e0                                  ; $54e9: $21 $e0 $d5
    bit 7, b                                      ; $54ec: $cb $78
    jr z, jr_00a_54f2                             ; $54ee: $28 $02

    ld [hl], $01                                  ; $54f0: $36 $01

jr_00a_54f2:
    inc hl                                        ; $54f2: $23
    bit 6, b                                      ; $54f3: $cb $70
    jr z, jr_00a_54f9                             ; $54f5: $28 $02

    ld [hl], $01                                  ; $54f7: $36 $01

jr_00a_54f9:
    inc hl                                        ; $54f9: $23
    bit 5, b                                      ; $54fa: $cb $68
    jr z, jr_00a_5500                             ; $54fc: $28 $02

    ld [hl], $01                                  ; $54fe: $36 $01

jr_00a_5500:
    inc hl                                        ; $5500: $23
    bit 4, b                                      ; $5501: $cb $60
    jr z, jr_00a_5507                             ; $5503: $28 $02

    ld [hl], $01                                  ; $5505: $36 $01

jr_00a_5507:
    inc hl                                        ; $5507: $23
    bit 3, b                                      ; $5508: $cb $58
    jr z, jr_00a_550e                             ; $550a: $28 $02

    ld [hl], $01                                  ; $550c: $36 $01

jr_00a_550e:
    inc hl                                        ; $550e: $23
    bit 2, b                                      ; $550f: $cb $50
    jr z, jr_00a_5515                             ; $5511: $28 $02

    ld [hl], $01                                  ; $5513: $36 $01

jr_00a_5515:
    inc hl                                        ; $5515: $23
    bit 1, b                                      ; $5516: $cb $48
    jr z, jr_00a_551c                             ; $5518: $28 $02

    ld [hl], $01                                  ; $551a: $36 $01

jr_00a_551c:
    inc hl                                        ; $551c: $23
    bit 0, b                                      ; $551d: $cb $40
    jr z, jr_00a_5523                             ; $551f: $28 $02

    ld [hl], $01                                  ; $5521: $36 $01

jr_00a_5523:
    inc hl                                        ; $5523: $23
    bit 7, c                                      ; $5524: $cb $79
    jr z, jr_00a_552a                             ; $5526: $28 $02

    ld [hl], $01                                  ; $5528: $36 $01

jr_00a_552a:
    inc hl                                        ; $552a: $23
    bit 6, c                                      ; $552b: $cb $71
    jr z, jr_00a_5531                             ; $552d: $28 $02

    ld [hl], $01                                  ; $552f: $36 $01

jr_00a_5531:
    inc hl                                        ; $5531: $23
    bit 5, c                                      ; $5532: $cb $69
    jr z, jr_00a_5538                             ; $5534: $28 $02

    ld [hl], $01                                  ; $5536: $36 $01

jr_00a_5538:
    inc hl                                        ; $5538: $23
    bit 4, c                                      ; $5539: $cb $61
    jr z, jr_00a_553f                             ; $553b: $28 $02

    ld [hl], $01                                  ; $553d: $36 $01

jr_00a_553f:
    inc hl                                        ; $553f: $23
    bit 3, c                                      ; $5540: $cb $59
    jr z, jr_00a_5546                             ; $5542: $28 $02

    ld [hl], $01                                  ; $5544: $36 $01

jr_00a_5546:
    inc hl                                        ; $5546: $23
    bit 2, c                                      ; $5547: $cb $51
    jr z, jr_00a_554d                             ; $5549: $28 $02

    ld [hl], $01                                  ; $554b: $36 $01

jr_00a_554d:
    inc hl                                        ; $554d: $23
    bit 1, c                                      ; $554e: $cb $49
    jr z, jr_00a_5554                             ; $5550: $28 $02

    ld [hl], $01                                  ; $5552: $36 $01

jr_00a_5554:
    inc hl                                        ; $5554: $23
    bit 0, c                                      ; $5555: $cb $41
    jr z, jr_00a_555b                             ; $5557: $28 $02

    ld [hl], $01                                  ; $5559: $36 $01

jr_00a_555b:
    pop af                                        ; $555b: $f1
    ldh [$96], a                                  ; $555c: $e0 $96
    ldh [rSVBK], a                                ; $555e: $e0 $70
    ret                                           ; $5560: $c9


    ldh a, [$96]                                  ; $5561: $f0 $96
    push af                                       ; $5563: $f5
    ld a, $06                                     ; $5564: $3e $06
    ldh [$96], a                                  ; $5566: $e0 $96
    ldh [rSVBK], a                                ; $5568: $e0 $70

jr_00a_556a:
    ld a, [$d5f9]                                 ; $556a: $fa $f9 $d5

jr_00a_556d:
    and a                                         ; $556d: $a7
    jr z, jr_00a_5576                             ; $556e: $28 $06

    call Call_000_2e3b                            ; $5570: $cd $3b $2e
    dec a                                         ; $5573: $3d
    jr jr_00a_556d                                ; $5574: $18 $f7

jr_00a_5576:
    ld de, $d5e0                                  ; $5576: $11 $e0 $d5
    ld b, $00                                     ; $5579: $06 $00

jr_00a_557b:
    push de                                       ; $557b: $d5
    push bc                                       ; $557c: $c5
    ld a, [de]                                    ; $557d: $1a
    and a                                         ; $557e: $a7
    jr z, jr_00a_5584                             ; $557f: $28 $03

    call Call_00a_55ac                            ; $5581: $cd $ac $55

jr_00a_5584:
    pop bc                                        ; $5584: $c1
    pop de                                        ; $5585: $d1
    inc de                                        ; $5586: $13
    inc b                                         ; $5587: $04
    ld a, b                                       ; $5588: $78
    cp $10                                        ; $5589: $fe $10
    jr nz, jr_00a_557b                            ; $558b: $20 $ee

    ld hl, $d540                                  ; $558d: $21 $40 $d5
    ld d, $00                                     ; $5590: $16 $00
    ld e, $10                                     ; $5592: $1e $10
    call Call_000_056c                            ; $5594: $cd $6c $05
    call Call_000_2e3b                            ; $5597: $cd $3b $2e
    ld hl, $d5f0                                  ; $559a: $21 $f0 $d5
    ld a, [hl]                                    ; $559d: $7e
    dec a                                         ; $559e: $3d
    ld [hl], a                                    ; $559f: $77
    and a                                         ; $55a0: $a7
    jr nz, jr_00a_556a                            ; $55a1: $20 $c7

    call Call_00a_562e                            ; $55a3: $cd $2e $56
    pop af                                        ; $55a6: $f1
    ldh [$96], a                                  ; $55a7: $e0 $96
    ldh [rSVBK], a                                ; $55a9: $e0 $70
    ret                                           ; $55ab: $c9


Call_00a_55ac:
    ld a, b                                       ; $55ac: $78
    ld [$d5f1], a                                 ; $55ad: $ea $f1 $d5
    ld hl, $d4a0                                  ; $55b0: $21 $a0 $d4
    call Call_00a_5675                            ; $55b3: $cd $75 $56
    ld d, h                                       ; $55b6: $54
    ld e, l                                       ; $55b7: $5d
    ld hl, $d540                                  ; $55b8: $21 $40 $d5
    ld a, [$d5f1]                                 ; $55bb: $fa $f1 $d5
    ld b, a                                       ; $55be: $47
    call Call_00a_5675                            ; $55bf: $cd $75 $56
    call Call_00a_55c6                            ; $55c2: $cd $c6 $55
    ret                                           ; $55c5: $c9


Call_00a_55c6:
    ld b, $04                                     ; $55c6: $06 $04

jr_00a_55c8:
    push bc                                       ; $55c8: $c5
    push de                                       ; $55c9: $d5
    push hl                                       ; $55ca: $e5
    ld a, [hl+]                                   ; $55cb: $2a
    ld b, [hl]                                    ; $55cc: $46
    ld c, a                                       ; $55cd: $4f
    call Call_000_24eb                            ; $55ce: $cd $eb $24
    ld hl, $d5f2                                  ; $55d1: $21 $f2 $d5
    ld [hl+], a                                   ; $55d4: $22
    ld a, b                                       ; $55d5: $78
    ld [hl+], a                                   ; $55d6: $22
    ld a, c                                       ; $55d7: $79
    ld [hl], a                                    ; $55d8: $77
    ld h, d                                       ; $55d9: $62
    ld l, e                                       ; $55da: $6b
    ld a, [hl+]                                   ; $55db: $2a
    ld b, [hl]                                    ; $55dc: $46
    ld c, a                                       ; $55dd: $4f
    call Call_000_24eb                            ; $55de: $cd $eb $24
    ld hl, $d5f5                                  ; $55e1: $21 $f5 $d5
    ld [hl+], a                                   ; $55e4: $22
    ld a, b                                       ; $55e5: $78
    ld [hl+], a                                   ; $55e6: $22
    ld a, c                                       ; $55e7: $79
    ld [hl], a                                    ; $55e8: $77
    ld hl, $d5f2                                  ; $55e9: $21 $f2 $d5
    ld de, $d5f5                                  ; $55ec: $11 $f5 $d5
    call Call_00a_561c                            ; $55ef: $cd $1c $56
    ld hl, $d5f3                                  ; $55f2: $21 $f3 $d5
    ld de, $d5f6                                  ; $55f5: $11 $f6 $d5
    call Call_00a_561c                            ; $55f8: $cd $1c $56
    ld hl, $d5f4                                  ; $55fb: $21 $f4 $d5
    ld de, $d5f7                                  ; $55fe: $11 $f7 $d5
    call Call_00a_561c                            ; $5601: $cd $1c $56
    ld hl, $d5f4                                  ; $5604: $21 $f4 $d5
    ld a, [hl-]                                   ; $5607: $3a
    ld c, a                                       ; $5608: $4f
    ld a, [hl-]                                   ; $5609: $3a
    ld b, a                                       ; $560a: $47
    ld a, [hl]                                    ; $560b: $7e
    call Call_000_2504                            ; $560c: $cd $04 $25
    pop hl                                        ; $560f: $e1
    ld a, c                                       ; $5610: $79
    ld [hl+], a                                   ; $5611: $22
    ld [hl], b                                    ; $5612: $70
    inc hl                                        ; $5613: $23
    pop de                                        ; $5614: $d1
    pop bc                                        ; $5615: $c1
    inc de                                        ; $5616: $13
    inc de                                        ; $5617: $13
    dec b                                         ; $5618: $05
    jr nz, jr_00a_55c8                            ; $5619: $20 $ad

    ret                                           ; $561b: $c9


Call_00a_561c:
    ld a, [de]                                    ; $561c: $1a
    ld b, [hl]                                    ; $561d: $46
    sub b                                         ; $561e: $90
    ret z                                         ; $561f: $c8

    jr c, jr_00a_5628                             ; $5620: $38 $06

    ld a, [hl]                                    ; $5622: $7e
    inc a                                         ; $5623: $3c
    and $1f                                       ; $5624: $e6 $1f
    ld [hl], a                                    ; $5626: $77
    ret                                           ; $5627: $c9


jr_00a_5628:
    ld a, [hl]                                    ; $5628: $7e
    dec a                                         ; $5629: $3d
    and $1f                                       ; $562a: $e6 $1f

jr_00a_562c:
    ld [hl], a                                    ; $562c: $77
    ret                                           ; $562d: $c9


Call_00a_562e:
    ld hl, $d5e0                                  ; $562e: $21 $e0 $d5
    ld b, $00                                     ; $5631: $06 $00

jr_00a_5633:
    push hl                                       ; $5633: $e5
    push bc                                       ; $5634: $c5
    ld a, [hl]                                    ; $5635: $7e
    and a                                         ; $5636: $a7
    jr z, jr_00a_5661                             ; $5637: $28 $28

    ld c, b                                       ; $5639: $48
    ld hl, $d4a0                                  ; $563a: $21 $a0 $d4
    call Call_00a_5675                            ; $563d: $cd $75 $56
    ld d, h                                       ; $5640: $54
    ld e, l                                       ; $5641: $5d
    ld b, c                                       ; $5642: $41
    ld hl, $d540                                  ; $5643: $21 $40 $d5
    call Call_00a_5675                            ; $5646: $cd $75 $56
    ld a, [de]                                    ; $5649: $1a
    ld [hl+], a                                   ; $564a: $22
    inc de                                        ; $564b: $13
    ld a, [de]                                    ; $564c: $1a
    ld [hl+], a                                   ; $564d: $22
    inc de                                        ; $564e: $13
    ld a, [de]                                    ; $564f: $1a
    ld [hl+], a                                   ; $5650: $22
    inc de                                        ; $5651: $13
    ld a, [de]                                    ; $5652: $1a
    ld [hl+], a                                   ; $5653: $22
    inc de                                        ; $5654: $13
    ld a, [de]                                    ; $5655: $1a
    ld [hl+], a                                   ; $5656: $22
    inc de                                        ; $5657: $13
    ld a, [de]                                    ; $5658: $1a
    ld [hl+], a                                   ; $5659: $22
    inc de                                        ; $565a: $13
    ld a, [de]                                    ; $565b: $1a
    ld [hl+], a                                   ; $565c: $22
    inc de                                        ; $565d: $13
    ld a, [de]                                    ; $565e: $1a
    ld [hl+], a                                   ; $565f: $22
    inc de                                        ; $5660: $13

jr_00a_5661:
    pop bc                                        ; $5661: $c1
    pop hl                                        ; $5662: $e1
    inc hl                                        ; $5663: $23
    inc b                                         ; $5664: $04
    ld a, b                                       ; $5665: $78
    cp $10                                        ; $5666: $fe $10
    jr nz, jr_00a_5633                            ; $5668: $20 $c9

    ld hl, $d540                                  ; $566a: $21 $40 $d5
    ld d, $00                                     ; $566d: $16 $00
    ld e, $10                                     ; $566f: $1e $10
    call Call_000_056c                            ; $5671: $cd $6c $05
    ret                                           ; $5674: $c9


Call_00a_5675:
jr_00a_5675:
    ld a, b                                       ; $5675: $78
    and a                                         ; $5676: $a7
    ret z                                         ; $5677: $c8

    ld a, $08                                     ; $5678: $3e $08
    add l                                         ; $567a: $85
    ld l, a                                       ; $567b: $6f
    jr nc, jr_00a_567f                            ; $567c: $30 $01

    inc h                                         ; $567e: $24

jr_00a_567f:
    dec b                                         ; $567f: $05
    jr jr_00a_5675                                ; $5680: $18 $f3

    ld sp, $3d01                                  ; $5682: $31 $01 $3d
    ld bc, $0132                                  ; $5685: $01 $32 $01
    inc sp                                        ; $5688: $33
    ld bc, HeaderTitle                            ; $5689: $01 $34 $01
    ld a, $01                                     ; $568c: $3e $01
    dec [hl]                                      ; $568e: $35
    ld bc, $0100                                  ; $568f: $01 $00 $01
    ld [hl], $01                                  ; $5692: $36 $01
    scf                                           ; $5694: $37
    ld bc, $0333                                  ; $5695: $01 $33 $03
    jr c, jr_00a_569b                             ; $5698: $38 $01

    add hl, sp                                    ; $569a: $39

jr_00a_569b:
    ld bc, $013a                                  ; $569b: $01 $3a $01
    inc a                                         ; $569e: $3c
    ld bc, $35ff                                  ; $569f: $01 $ff $35
    ld [bc], a                                    ; $56a2: $02
    dec sp                                        ; $56a3: $3b
    ld bc, $0236                                  ; $56a4: $01 $36 $02
    inc sp                                        ; $56a7: $33
    ld [bc], a                                    ; $56a8: $02
    add b                                         ; $56a9: $80
    jr jr_00a_562c                                ; $56aa: $18 $80

    jr @-$10                                      ; $56ac: $18 $ee

    db $10                                        ; $56ae: $10
    rst $38                                       ; $56af: $ff
    ld a, a                                       ; $56b0: $7f
    ld c, $04                                     ; $56b1: $0e $04
    call Call_000_25a1                            ; $56b3: $cd $a1 $25
    call Call_000_2625                            ; $56b6: $cd $25 $26
    push af                                       ; $56b9: $f5
    ld a, $78                                     ; $56ba: $3e $78
    rst $18                                       ; $56bc: $df
    inc b                                         ; $56bd: $04
    ld a, [bc]                                    ; $56be: $0a
    pop af                                        ; $56bf: $f1
    rst $08                                       ; $56c0: $cf
    dec d                                         ; $56c1: $15
    push af                                       ; $56c2: $f5
    ld a, $78                                     ; $56c3: $3e $78
    rst $18                                       ; $56c5: $df
    inc b                                         ; $56c6: $04
    ld a, [bc]                                    ; $56c7: $0a
    pop af                                        ; $56c8: $f1
    xor a                                         ; $56c9: $af
    ld hl, $c290                                  ; $56ca: $21 $90 $c2
    ld [hl+], a                                   ; $56cd: $22
    ld [hl+], a                                   ; $56ce: $22
    ld hl, $c292                                  ; $56cf: $21 $92 $c2
    ld [hl+], a                                   ; $56d2: $22
    ld [hl+], a                                   ; $56d3: $22
    ld hl, $c294                                  ; $56d4: $21 $94 $c2
    ld [hl+], a                                   ; $56d7: $22
    ld [hl+], a                                   ; $56d8: $22
    ld a, $ff                                     ; $56d9: $3e $ff
    ld [$c296], a                                 ; $56db: $ea $96 $c2
    ld [$c297], a                                 ; $56de: $ea $97 $c2
    ld [$c298], a                                 ; $56e1: $ea $98 $c2
    rst $18                                       ; $56e4: $df
    ld a, [bc]                                    ; $56e5: $0a
    ld bc, $a921                                  ; $56e6: $01 $21 $a9
    ld d, [hl]                                    ; $56e9: $56
    ld de, $0001                                  ; $56ea: $11 $01 $00
    call Call_000_0595                            ; $56ed: $cd $95 $05
    xor a                                         ; $56f0: $af
    ld [$c2ac], a                                 ; $56f1: $ea $ac $c2

jr_00a_56f4:
    call Call_000_23b6                            ; $56f4: $cd $b6 $23
    ld a, [$c2ac]                                 ; $56f7: $fa $ac $c2
    add a                                         ; $56fa: $87
    add $82                                       ; $56fb: $c6 $82
    ld l, a                                       ; $56fd: $6f
    adc $56                                       ; $56fe: $ce $56
    sub l                                         ; $5700: $95
    ld h, a                                       ; $5701: $67
    ld a, [hl+]                                   ; $5702: $2a
    cp $ff                                        ; $5703: $fe $ff
    jr z, jr_00a_5750                             ; $5705: $28 $49

    and a                                         ; $5707: $a7
    jr nz, jr_00a_5716                            ; $5708: $20 $0c

    ld a, [$c810]                                 ; $570a: $fa $10 $c8
    add a                                         ; $570d: $87
    add $a1                                       ; $570e: $c6 $a1
    ld l, a                                       ; $5710: $6f
    adc $56                                       ; $5711: $ce $56
    sub l                                         ; $5713: $95
    ld h, a                                       ; $5714: $67
    ld a, [hl+]                                   ; $5715: $2a

jr_00a_5716:
    ld [$c450], a                                 ; $5716: $ea $50 $c4
    ld a, [hl+]                                   ; $5719: $2a
    ld [$c46a], a                                 ; $571a: $ea $6a $c4
    rst $28                                       ; $571d: $ef
    nop                                           ; $571e: $00
    inc bc                                        ; $571f: $03
    call Call_00a_4a21                            ; $5720: $cd $21 $4a
    rst $20                                       ; $5723: $e7
    nop                                           ; $5724: $00
    inc bc                                        ; $5725: $03
    call $57a3                                    ; $5726: $cd $a3 $57
    rst $18                                       ; $5729: $df
    ld e, [hl]                                    ; $572a: $5e
    ld a, [bc]                                    ; $572b: $0a
    ld b, $3f                                     ; $572c: $06 $3f
    ld c, $3f                                     ; $572e: $0e $3f
    ld d, $1e                                     ; $5730: $16 $1e
    rst $18                                       ; $5732: $df
    ld h, b                                       ; $5733: $60
    ld a, [bc]                                    ; $5734: $0a
    rst $18                                       ; $5735: $df
    ld h, d                                       ; $5736: $62
    ld a, [bc]                                    ; $5737: $0a
    ld a, [$c2ac]                                 ; $5738: $fa $ac $c2
    rst $18                                       ; $573b: $df
    ld b, h                                       ; $573c: $44
    dec bc                                        ; $573d: $0b
    ld c, $04                                     ; $573e: $0e $04
    call Call_000_25a1                            ; $5740: $cd $a1 $25
    call Call_000_2625                            ; $5743: $cd $25 $26
    ld a, $90                                     ; $5746: $3e $90
    ldh [rWY], a                                  ; $5748: $e0 $4a
    ld hl, $c2ac                                  ; $574a: $21 $ac $c2
    inc [hl]                                      ; $574d: $34
    jr jr_00a_56f4                                ; $574e: $18 $a4

jr_00a_5750:
    rst $18                                       ; $5750: $df
    ld b, [hl]                                    ; $5751: $46
    dec bc                                        ; $5752: $0b
    ld c, $08                                     ; $5753: $0e $08
    call Call_000_25a1                            ; $5755: $cd $a1 $25
    call Call_000_2625                            ; $5758: $cd $25 $26
    xor a                                         ; $575b: $af
    ldh [$8b], a                                  ; $575c: $e0 $8b
    ldh [$8a], a                                  ; $575e: $e0 $8a
    call Call_00a_6747                            ; $5760: $cd $47 $67
    call Call_000_23b6                            ; $5763: $cd $b6 $23
    rst $28                                       ; $5766: $ef
    nop                                           ; $5767: $00
    inc bc                                        ; $5768: $03
    ld c, $08                                     ; $5769: $0e $08
    call Call_000_25af                            ; $576b: $cd $af $25
    call Call_000_2625                            ; $576e: $cd $25 $26
    call Call_000_2ed5                            ; $5771: $cd $d5 $2e
    ld e, $3e                                     ; $5774: $1e $3e
    ld bc, $0621                                  ; $5776: $01 $21 $06
    ld l, b                                       ; $5779: $68
    call Call_000_23e8                            ; $577a: $cd $e8 $23
    call Call_000_2ed5                            ; $577d: $cd $d5 $2e
    ldh a, [rSB]                                  ; $5780: $f0 $01
    db $10                                        ; $5782: $10
    ld c, $f0                                     ; $5783: $0e $f0
    sub b                                         ; $5785: $90
    and a                                         ; $5786: $a7
    jr nz, jr_00a_5791                            ; $5787: $20 $08

    call Call_000_2e3b                            ; $5789: $cd $3b $2e
    dec bc                                        ; $578c: $0b
    ld a, b                                       ; $578d: $78
    or c                                          ; $578e: $b1
    jr nz, @-$0b                                  ; $578f: $20 $f3

jr_00a_5791:
    ld c, $08                                     ; $5791: $0e $08
    call Call_000_25a1                            ; $5793: $cd $a1 $25
    call Call_000_2625                            ; $5796: $cd $25 $26
    ld hl, $6806                                  ; $5799: $21 $06 $68
    call Call_000_2449                            ; $579c: $cd $49 $24
    rst $18                                       ; $579f: $df
    ld a, [bc]                                    ; $57a0: $0a
    ld bc, $3ec9                                  ; $57a1: $01 $c9 $3e
    inc b                                         ; $57a4: $04
    ldh [$96], a                                  ; $57a5: $e0 $96
    ldh [rSVBK], a                                ; $57a7: $e0 $70
    ld de, $d000                                  ; $57a9: $11 $00 $d0
    ld c, $18                                     ; $57ac: $0e $18

Jump_00a_57ae:
    inc e                                         ; $57ae: $1c
    ld a, [de]                                    ; $57af: $1a
    dec e                                         ; $57b0: $1d
    or a                                          ; $57b1: $b7
    jp z, Jump_00a_57c1                           ; $57b2: $ca $c1 $57

    ld hl, $001a                                  ; $57b5: $21 $1a $00
    add hl, de                                    ; $57b8: $19
    ld [hl], $ff                                  ; $57b9: $36 $ff
    ld hl, $0034                                  ; $57bb: $21 $34 $00
    add hl, de                                    ; $57be: $19
    ld [hl], $01                                  ; $57bf: $36 $01

Jump_00a_57c1:
    ld hl, $0040                                  ; $57c1: $21 $40 $00
    add hl, de                                    ; $57c4: $19
    ld e, l                                       ; $57c5: $5d
    ld d, h                                       ; $57c6: $54
    dec c                                         ; $57c7: $0d
    jp nz, Jump_00a_57ae                          ; $57c8: $c2 $ae $57

    ret                                           ; $57cb: $c9


    db $ed                                        ; $57cc: $ed
    nop                                           ; $57cd: $00
    rst $38                                       ; $57ce: $ff
    ld a, [$0303]                                 ; $57cf: $fa $03 $03
    ldh [$e3], a                                  ; $57d2: $e0 $e3
    ld [bc], a                                    ; $57d4: $02
    ld [bc], a                                    ; $57d5: $02
    rrca                                          ; $57d6: $0f
    rst $08                                       ; $57d7: $cf
    rrca                                          ; $57d8: $0f
    rra                                           ; $57d9: $1f
    rra                                           ; $57da: $1f
    rst $38                                       ; $57db: $ff
    rst $38                                       ; $57dc: $ff
    ldh [$d0], a                                  ; $57dd: $e0 $d0
    db $e3                                        ; $57df: $e3
    add b                                         ; $57e0: $80
    add b                                         ; $57e1: $80
    rst $38                                       ; $57e2: $ff
    ld d, b                                       ; $57e3: $50
    ld d, b                                       ; $57e4: $50
    add sp, -$18                                  ; $57e5: $e8 $e8
    db $fd                                        ; $57e7: $fd
    db $fd                                        ; $57e8: $fd
    cp $fe                                        ; $57e9: $fe $fe
    ld [hl], $c0                                  ; $57eb: $36 $c0
    db $eb                                        ; $57ed: $eb
    adc d                                         ; $57ee: $8a
    adc d                                         ; $57ef: $8a
    or b                                          ; $57f0: $b0
    db $eb                                        ; $57f1: $eb
    add b                                         ; $57f2: $80
    add b                                         ; $57f3: $80
    and b                                         ; $57f4: $a0
    ei                                            ; $57f5: $fb
    rst $38                                       ; $57f6: $ff
    rst $38                                       ; $57f7: $ff
    db $fc                                        ; $57f8: $fc
    rst $38                                       ; $57f9: $ff
    rst $38                                       ; $57fa: $ff
    ld a, $f5                                     ; $57fb: $3e $f5
    rrca                                          ; $57fd: $0f
    nop                                           ; $57fe: $00
    ccf                                           ; $57ff: $3f
    ld b, $7f                                     ; $5800: $06 $7f
    rra                                           ; $5802: $1f
    cp $20                                        ; $5803: $fe $20
    push hl                                       ; $5805: $e5
    ld bc, $0f01                                  ; $5806: $01 $01 $0f
    rrca                                          ; $5809: $0f
    rst $38                                       ; $580a: $ff
    ccf                                           ; $580b: $3f
    rst $38                                       ; $580c: $ff
    cp l                                          ; $580d: $bd
    sbc a                                         ; $580e: $9f
    db $f4                                        ; $580f: $f4
    db $e3                                        ; $5810: $e3
    rlca                                          ; $5811: $07
    rlca                                          ; $5812: $07
    rst $08                                       ; $5813: $cf
    rst $08                                       ; $5814: $cf
    ld [hl-], a                                   ; $5815: $32
    pop hl                                        ; $5816: $e1
    rst $38                                       ; $5817: $ff
    rst $18                                       ; $5818: $df
    rst $38                                       ; $5819: $ff
    rra                                           ; $581a: $1f
    rra                                           ; $581b: $1f
    ccf                                           ; $581c: $3f
    ccf                                           ; $581d: $3f
    or $e3                                        ; $581e: $f6 $e3
    rst $38                                       ; $5820: $ff
    ldh a, [rIE]                                  ; $5821: $f0 $ff
    rst $38                                       ; $5823: $ff
    rst $00                                       ; $5824: $c7
    rst $38                                       ; $5825: $ff
    sbc a                                         ; $5826: $9f
    add d                                         ; $5827: $82
    add d                                         ; $5828: $82
    push de                                       ; $5829: $d5
    push de                                       ; $582a: $d5
    rst $38                                       ; $582b: $ff
    xor e                                         ; $582c: $ab
    xor e                                         ; $582d: $ab
    rst $18                                       ; $582e: $df
    rst $18                                       ; $582f: $df
    cp [hl]                                       ; $5830: $be
    cp [hl]                                       ; $5831: $be
    push de                                       ; $5832: $d5
    ld d, l                                       ; $5833: $55
    rst $28                                       ; $5834: $ef
    ldh [rP1], a                                  ; $5835: $e0 $00
    db $f4                                        ; $5837: $f4
    call nz, $e10c                                ; $5838: $c4 $0c $e1
    cp $fe                                        ; $583b: $fe $fe
    push de                                       ; $583d: $d5
    rst $38                                       ; $583e: $ff
    push de                                       ; $583f: $d5
    xor d                                         ; $5840: $aa
    xor d                                         ; $5841: $aa
    ld d, l                                       ; $5842: $55
    ld d, l                                       ; $5843: $55
    nop                                           ; $5844: $00
    nop                                           ; $5845: $00
    dec d                                         ; $5846: $15
    sbc a                                         ; $5847: $9f
    dec d                                         ; $5848: $15
    rst $28                                       ; $5849: $ef
    rst $28                                       ; $584a: $ef
    ld e, l                                       ; $584b: $5d
    ld e, l                                       ; $584c: $5d
    db $f4                                        ; $584d: $f4
    db $e3                                        ; $584e: $e3
    ldh a, [$e1]                                  ; $584f: $f0 $e1
    ld d, b                                       ; $5851: $50
    ld sp, hl                                     ; $5852: $f9
    ld d, b                                       ; $5853: $50
    ret c                                         ; $5854: $d8

    push bc                                       ; $5855: $c5
    cp b                                          ; $5856: $b8
    pop hl                                        ; $5857: $e1
    ld a, a                                       ; $5858: $7f
    ld a, a                                       ; $5859: $7f
    rst $38                                       ; $585a: $ff
    rst $38                                       ; $585b: $ff
    rlca                                          ; $585c: $07
    ld a, e                                       ; $585d: $7b
    rlca                                          ; $585e: $07
    rrca                                          ; $585f: $0f
    rst $38                                       ; $5860: $ff
    ldh [$5f], a                                  ; $5861: $e0 $5f
    ld e, a                                       ; $5863: $5f
    cp a                                          ; $5864: $bf
    cp a                                          ; $5865: $bf
    ld a, [c]                                     ; $5866: $f2
    pop hl                                        ; $5867: $e1
    or $ff                                        ; $5868: $f6 $ff
    rst $38                                       ; $586a: $ff
    ld e, a                                       ; $586b: $5f
    ld e, a                                       ; $586c: $5f
    call c, Call_00a_58eb                         ; $586d: $dc $eb $58
    ld e, b                                       ; $5870: $58
    cp h                                          ; $5871: $bc
    cp h                                          ; $5872: $bc
    or $ca                                        ; $5873: $f6 $ca
    push hl                                       ; $5875: $e5
    db $fd                                        ; $5876: $fd
    db $fd                                        ; $5877: $fd
    sub b                                         ; $5878: $90
    push bc                                       ; $5879: $c5
    and b                                         ; $587a: $a0
    and b                                         ; $587b: $a0
    reti                                          ; $587c: $d9


    reti                                          ; $587d: $d9


    cp a                                          ; $587e: $bf
    rst $20                                       ; $587f: $e7
    rst $20                                       ; $5880: $e7
    ld e, a                                       ; $5881: $5f
    ld e, a                                       ; $5882: $5f
    xor a                                         ; $5883: $af
    xor a                                         ; $5884: $af
    ld d, b                                       ; $5885: $50
    pop bc                                        ; $5886: $c1
    dec a                                         ; $5887: $3d
    rst $20                                       ; $5888: $e7
    dec a                                         ; $5889: $3d
    cp $fe                                        ; $588a: $fe $fe
    and [hl]                                      ; $588c: $a6
    push hl                                       ; $588d: $e5
    ld h, h                                       ; $588e: $64
    pop bc                                        ; $588f: $c1
    ld c, l                                       ; $5890: $4d
    ld c, l                                       ; $5891: $4d
    xor a                                         ; $5892: $af
    db $fd                                        ; $5893: $fd
    xor a                                         ; $5894: $af
    sub d                                         ; $5895: $92
    db $e3                                        ; $5896: $e3
    ld a, [$00fa]                                 ; $5897: $fa $fa $00
    nop                                           ; $589a: $00
    dec [hl]                                      ; $589b: $35
    dec [hl]                                      ; $589c: $35
    db $db                                        ; $589d: $db
    ld a, [hl]                                    ; $589e: $7e
    ld a, [hl]                                    ; $589f: $7e
    ld c, d                                       ; $58a0: $4a
    db $e3                                        ; $58a1: $e3
    ld a, a                                       ; $58a2: $7f
    ld a, a                                       ; $58a3: $7f
    ldh a, [$e1]                                  ; $58a4: $f0 $e1
    nop                                           ; $58a6: $00
    nop                                           ; $58a7: $00
    rst $38                                       ; $58a8: $ff
    add l                                         ; $58a9: $85
    add l                                         ; $58aa: $85
    ld l, [hl]                                    ; $58ab: $6e
    ld l, [hl]                                    ; $58ac: $6e
    db $fd                                        ; $58ad: $fd
    db $fd                                        ; $58ae: $fd
    ld [$ffea], a                                 ; $58af: $ea $ea $ff
    ld d, h                                       ; $58b2: $54
    ld d, h                                       ; $58b3: $54
    and b                                         ; $58b4: $a0
    and b                                         ; $58b5: $a0
    ld bc, $2a01                                  ; $58b6: $01 $01 $2a
    ld a, [hl+]                                   ; $58b9: $2a
    rst $38                                       ; $58ba: $ff
    ld [hl], h                                    ; $58bb: $74
    ld [hl], h                                    ; $58bc: $74
    add sp, -$18                                  ; $58bd: $e8 $e8
    ld b, b                                       ; $58bf: $40
    ld b, b                                       ; $58c0: $40
    add b                                         ; $58c1: $80
    add b                                         ; $58c2: $80
    rst $28                                       ; $58c3: $ef
    ld bc, $0201                                  ; $58c4: $01 $01 $02
    ld [bc], a                                    ; $58c7: $02
    ld hl, sp-$1e                                 ; $58c8: $f8 $e2
    nop                                           ; $58ca: $00
    inc bc                                        ; $58cb: $03
    ld [bc], a                                    ; $58cc: $02
    rst $38                                       ; $58cd: $ff
    rla                                           ; $58ce: $17
    ld d, $ef                                     ; $58cf: $16 $ef
    xor $f5                                       ; $58d1: $ee $f5
    db $f4                                        ; $58d3: $f4
    xor d                                         ; $58d4: $aa
    xor d                                         ; $58d5: $aa
    xor $dc                                       ; $58d6: $ee $dc
    ret nz                                        ; $58d8: $c0

    ccf                                           ; $58d9: $3f
    rst $38                                       ; $58da: $ff
    ld a, a                                       ; $58db: $7f
    cp $e8                                        ; $58dc: $fe $e8
    rst $08                                       ; $58de: $cf
    rst $38                                       ; $58df: $ff
    rst $28                                       ; $58e0: $ef
    rst $38                                       ; $58e1: $ff
    rst $38                                       ; $58e2: $ff
    rst $20                                       ; $58e3: $e7
    rst $38                                       ; $58e4: $ff
    rst $30                                       ; $58e5: $f7
    cp $f2                                        ; $58e6: $fe $f2
    db $fd                                        ; $58e8: $fd
    ld sp, hl                                     ; $58e9: $f9
    rst $28                                       ; $58ea: $ef

Call_00a_58eb:
    cp $f8                                        ; $58eb: $fe $f8
    cp $fc                                        ; $58ed: $fe $fc
    ld l, d                                       ; $58ef: $6a
    ldh [$fc], a                                  ; $58f0: $e0 $fc
    ei                                            ; $58f2: $fb
    ld a, [$57ff]                                 ; $58f3: $fa $ff $57
    ld d, h                                       ; $58f6: $54
    xor e                                         ; $58f7: $ab
    xor b                                         ; $58f8: $a8
    ld b, a                                       ; $58f9: $47

jr_00a_58fa:
    ld b, c                                       ; $58fa: $41
    rlca                                          ; $58fb: $07
    ld bc, $07f3                                  ; $58fc: $01 $f3 $07
    inc bc                                        ; $58ff: $03
    jp nc, $17e4                                  ; $5900: $d2 $e4 $17

    and $f0                                       ; $5903: $e6 $f0
    ldh [$f8], a                                  ; $5905: $e0 $f8
    ldh [$83], a                                  ; $5907: $e0 $83
    ld hl, sp-$10                                 ; $5909: $f8 $f0
    cp $e4                                        ; $590b: $fe $e4
    db $f4                                        ; $590d: $f4
    ldh [$58], a                                  ; $590e: $e0 $58
    db $dd                                        ; $5910: $dd
    sbc $cb                                       ; $5911: $de $cb
    jr z, jr_00a_58fa                             ; $5913: $28 $e5

    ei                                            ; $5915: $fb
    rra                                           ; $5916: $1f
    ei                                            ; $5917: $fb
    rst $10                                       ; $5918: $d7
    rst $10                                       ; $5919: $d7
    xor d                                         ; $591a: $aa
    xor d                                         ; $591b: $aa
    nop                                           ; $591c: $00
    pop hl                                        ; $591d: $e1
    call nc, Call_00a_60cb                        ; $591e: $d4 $cb $60
    ldh [$7e], a                                  ; $5921: $e0 $7e
    inc e                                         ; $5923: $1c
    ldh [$d5], a                                  ; $5924: $e0 $d5
    push de                                       ; $5926: $d5
    xor [hl]                                      ; $5927: $ae
    xor [hl]                                      ; $5928: $ae
    db $fd                                        ; $5929: $fd
    db $fd                                        ; $592a: $fd
    ld l, [hl]                                    ; $592b: $6e
    pop bc                                        ; $592c: $c1
    or $f0                                        ; $592d: $f6 $f0
    pop hl                                        ; $592f: $e1
    ei                                            ; $5930: $fb
    ei                                            ; $5931: $fb
    ld hl, sp-$1f                                 ; $5932: $f8 $e1
    ld d, b                                       ; $5934: $50
    ld d, b                                       ; $5935: $50
    xor d                                         ; $5936: $aa
    xor d                                         ; $5937: $aa
    cp a                                          ; $5938: $bf
    nop                                           ; $5939: $00
    nop                                           ; $593a: $00
    xor e                                         ; $593b: $ab
    xor b                                         ; $593c: $a8
    push af                                       ; $593d: $f5
    push af                                       ; $593e: $f5
    ld d, [hl]                                    ; $593f: $56
    pop bc                                        ; $5940: $c1
    xor b                                         ; $5941: $a8
    rst $38                                       ; $5942: $ff
    xor b                                         ; $5943: $a8
    inc bc                                        ; $5944: $03
    nop                                           ; $5945: $00
    sbc a                                         ; $5946: $9f
    add b                                         ; $5947: $80
    db $fc                                        ; $5948: $fc
    inc bc                                        ; $5949: $03
    ret nz                                        ; $594a: $c0

    rst $28                                       ; $594b: $ef
    ccf                                           ; $594c: $3f
    ld e, a                                       ; $594d: $5f
    ld e, a                                       ; $594e: $5f
    ld a, [$e052]                                 ; $594f: $fa $52 $e0
    cp a                                          ; $5952: $bf
    add b                                         ; $5953: $80
    cp $ff                                        ; $5954: $fe $ff
    ld bc, $3fc0                                  ; $5956: $01 $c0 $3f
    nop                                           ; $5959: $00
    rst $38                                       ; $595a: $ff
    nop                                           ; $595b: $00
    rst $38                                       ; $595c: $ff
    rst $18                                       ; $595d: $df
    ld a, a                                       ; $595e: $7f
    rst $18                                       ; $595f: $df
    cp a                                          ; $5960: $bf
    and b                                         ; $5961: $a0
    rst $38                                       ; $5962: $ff
    nop                                           ; $5963: $00
    ldh a, [rIF]                                  ; $5964: $f0 $0f
    db $f4                                        ; $5966: $f4
    pop hl                                        ; $5967: $e1
    rst $30                                       ; $5968: $f7
    ld d, l                                       ; $5969: $55
    xor d                                         ; $596a: $aa
    nop                                           ; $596b: $00
    sbc h                                         ; $596c: $9c
    ret nz                                        ; $596d: $c0

    cp $02                                        ; $596e: $fe $02
    rst $38                                       ; $5970: $ff
    nop                                           ; $5971: $00
    di                                            ; $5972: $f3
    rrca                                          ; $5973: $0f
    ldh a, [$f0]                                  ; $5974: $f0 $f0
    push hl                                       ; $5976: $e5
    call nz, $d5e1                                ; $5977: $c4 $e1 $d5
    dec d                                         ; $597a: $15
    db $fc                                        ; $597b: $fc
    nop                                           ; $597c: $00
    rst $38                                       ; $597d: $ff
    ccf                                           ; $597e: $3f
    ret nz                                        ; $597f: $c0

    inc bc                                        ; $5980: $03
    db $fc                                        ; $5981: $fc
    ld d, b                                       ; $5982: $50
    xor a                                         ; $5983: $af
    nop                                           ; $5984: $00
    rst $38                                       ; $5985: $ff
    cp $1e                                        ; $5986: $fe $1e
    push bc                                       ; $5988: $c5

jr_00a_5989:
    nop                                           ; $5989: $00
    nop                                           ; $598a: $00
    ret nz                                        ; $598b: $c0

    nop                                           ; $598c: $00
    ldh a, [rP1]                                  ; $598d: $f0 $00
    inc a                                         ; $598f: $3c
    rst $18                                       ; $5990: $df
    ret nz                                        ; $5991: $c0

    dec d                                         ; $5992: $15
    dec d                                         ; $5993: $15
    jr nz, jr_00a_59b6                            ; $5994: $20 $20

    call z, $1089                                 ; $5996: $cc $89 $10
    db $10                                        ; $5999: $10
    inc l                                         ; $599a: $2c
    jr nc, jr_00a_5989                            ; $599b: $30 $ec

    ret nz                                        ; $599d: $c0

    pop bc                                        ; $599e: $c1
    ccf                                           ; $599f: $3f
    ld a, a                                       ; $59a0: $7f
    cp $e1                                        ; $59a1: $fe $e1
    rra                                           ; $59a3: $1f
    cp $e1                                        ; $59a4: $fe $e1
    adc $c0                                       ; $59a6: $ce $c0
    ld h, a                                       ; $59a8: $67
    db $fc                                        ; $59a9: $fc
    rst $38                                       ; $59aa: $ff
    cp $fe                                        ; $59ab: $fe $fe
    ld [c], a                                     ; $59ad: $e2
    adc a                                         ; $59ae: $8f
    and d                                         ; $59af: $a2
    rrca                                          ; $59b0: $0f
    inc bc                                        ; $59b1: $03
    cp $e0                                        ; $59b2: $fe $e0
    rst $38                                       ; $59b4: $ff
    rlca                                          ; $59b5: $07

jr_00a_59b6:
    rra                                           ; $59b6: $1f
    rlca                                          ; $59b7: $07
    sbc a                                         ; $59b8: $9f
    rlca                                          ; $59b9: $07
    cp a                                          ; $59ba: $bf
    rrca                                          ; $59bb: $0f
    rst $38                                       ; $59bc: $ff
    db $fc                                        ; $59bd: $fc
    cp $e1                                        ; $59be: $fe $e1
    db $dd                                        ; $59c0: $dd
    xor h                                         ; $59c1: $ac
    ldh a, [$e0]                                  ; $59c2: $f0 $e0
    ldh a, [$c0]                                  ; $59c4: $f0 $c0
    ldh a, [$c0]                                  ; $59c6: $f0 $c0
    rst $38                                       ; $59c8: $ff
    ldh [$c0], a                                  ; $59c9: $e0 $c0
    ldh [$80], a                                  ; $59cb: $e0 $80
    ldh [$80], a                                  ; $59cd: $e0 $80
    ret nz                                        ; $59cf: $c0

    add b                                         ; $59d0: $80
    db $db                                        ; $59d1: $db
    pop bc                                        ; $59d2: $c1
    ld bc, $a542                                  ; $59d3: $01 $42 $a5
    inc bc                                        ; $59d6: $03
    inc bc                                        ; $59d7: $03
    ld a, [hl]                                    ; $59d8: $7e
    add c                                         ; $59d9: $81
    ld e, a                                       ; $59da: $5f
    ld e, a                                       ; $59db: $5f
    ld l, l                                       ; $59dc: $6d
    ld bc, $e0ff                                  ; $59dd: $01 $ff $e0
    ld [hl], e                                    ; $59e0: $73
    ld [hl], e                                    ; $59e1: $73
    xor b                                         ; $59e2: $a8
    and a                                         ; $59e3: $a7
    ld [hl], l                                    ; $59e4: $75
    ld [hl], l                                    ; $59e5: $75
    ld hl, sp-$3d                                 ; $59e6: $f8 $c3
    sbc d                                         ; $59e8: $9a
    nop                                           ; $59e9: $00
    db $e3                                        ; $59ea: $e3
    xor b                                         ; $59eb: $a8
    nop                                           ; $59ec: $00
    ld [c], a                                     ; $59ed: $e2
    ld b, b                                       ; $59ee: $40
    ld b, b                                       ; $59ef: $40
    db $f4                                        ; $59f0: $f4
    pop bc                                        ; $59f1: $c1
    ldh a, [$c1]                                  ; $59f2: $f0 $c1
    or c                                          ; $59f4: $b1
    db $fd                                        ; $59f5: $fd
    or c                                          ; $59f6: $b1
    call c, Call_000_00c1                         ; $59f7: $dc $c1 $00
    nop                                           ; $59fa: $00
    and d                                         ; $59fb: $a2
    and d                                         ; $59fc: $a2
    nop                                           ; $59fd: $00
    nop                                           ; $59fe: $00
    cp a                                          ; $59ff: $bf
    ld [hl], c                                    ; $5a00: $71
    ld [hl], c                                    ; $5a01: $71
    cp $fe                                        ; $5a02: $fe $fe
    db $fc                                        ; $5a04: $fc
    db $fc                                        ; $5a05: $fc
    ret c                                         ; $5a06: $d8

    pop bc                                        ; $5a07: $c1
    ld bc, $00ff                                  ; $5a08: $01 $ff $00
    and e                                         ; $5a0b: $a3
    and b                                         ; $5a0c: $a0
    ld c, $01                                     ; $5a0d: $0e $01
    add hl, de                                    ; $5a0f: $19
    rlca                                          ; $5a10: $07
    inc sp                                        ; $5a11: $33
    rst $38                                       ; $5a12: $ff
    inc c                                         ; $5a13: $0c
    ld l, a                                       ; $5a14: $6f
    inc de                                        ; $5a15: $13
    rra                                           ; $5a16: $1f
    nop                                           ; $5a17: $00
    ld a, c                                       ; $5a18: $79
    rlca                                          ; $5a19: $07
    jp z, Jump_000_3f7f                           ; $5a1a: $ca $7f $3f

    dec d                                         ; $5a1d: $15
    rst $38                                       ; $5a1e: $ff
    xor d                                         ; $5a1f: $aa
    rst $38                                       ; $5a20: $ff
    db $fd                                        ; $5a21: $fd
    inc bc                                        ; $5a22: $03
    ld d, [hl]                                    ; $5a23: $56
    ldh [rRP], a                                  ; $5a24: $e0 $56
    ld [$ffc1], a                                 ; $5a26: $ea $c1 $ff
    xor b                                         ; $5a29: $a8
    db $fc                                        ; $5a2a: $fc
    ldh [$aa], a                                  ; $5a2b: $e0 $aa
    db $fc                                        ; $5a2d: $fc
    ld [c], a                                     ; $5a2e: $e2
    push de                                       ; $5a2f: $d5
    call z, $c5c0                                 ; $5a30: $cc $c0 $c5
    ld b, b                                       ; $5a33: $40
    jp z, $50c0                                   ; $5a34: $ca $c0 $50

    db $fc                                        ; $5a37: $fc
    add sp, -$02                                  ; $5a38: $e8 $fe
    db $eb                                        ; $5a3a: $eb
    cp h                                          ; $5a3b: $bc
    pop bc                                        ; $5a3c: $c1
    ld bc, $b6fe                                  ; $5a3d: $01 $fe $b6
    ldh a, [$e9]                                  ; $5a40: $f0 $e9
    ld [bc], a                                    ; $5a42: $02

jr_00a_5a43:
    db $fd                                        ; $5a43: $fd
    xor b                                         ; $5a44: $a8
    pop bc                                        ; $5a45: $c1
    dec b                                         ; $5a46: $05
    ld a, [$e3e8]                                 ; $5a47: $fa $e8 $e3
    rrca                                          ; $5a4a: $0f
    rst $38                                       ; $5a4b: $ff
    ldh a, [$a3]                                  ; $5a4c: $f0 $a3
    ld e, h                                       ; $5a4e: $5c
    ld d, b                                       ; $5a4f: $50
    xor a                                         ; $5a50: $af
    xor b                                         ; $5a51: $a8
    ld d, a                                       ; $5a52: $57
    ld d, l                                       ; $5a53: $55
    rst $20                                       ; $5a54: $e7
    xor d                                         ; $5a55: $aa
    ld a, [bc]                                    ; $5a56: $0a
    push af                                       ; $5a57: $f5
    sub b                                         ; $5a58: $90
    pop bc                                        ; $5a59: $c1
    cp b                                          ; $5a5a: $b8
    pop bc                                        ; $5a5b: $c1
    ldh [rP1], a                                  ; $5a5c: $e0 $00
    ld [hl], b                                    ; $5a5e: $70
    rst $38                                       ; $5a5f: $ff
    add b                                         ; $5a60: $80
    jr jr_00a_5a43                                ; $5a61: $18 $e0

    adc h                                         ; $5a63: $8c
    ld [hl], b                                    ; $5a64: $70
    ld b, [hl]                                    ; $5a65: $46
    cp b                                          ; $5a66: $b8
    and e                                         ; $5a67: $a3
    cp l                                          ; $5a68: $bd
    ld e, h                                       ; $5a69: $5c
    add b                                         ; $5a6a: $80
    ld l, l                                       ; $5a6b: $6d
    ccf                                           ; $5a6c: $3f
    rra                                           ; $5a6d: $1f
    ccf                                           ; $5a6e: $3f
    rrca                                          ; $5a6f: $0f
    cp $e1                                        ; $5a70: $fe $e1
    rra                                           ; $5a72: $1f
    ld a, a                                       ; $5a73: $7f
    rrca                                          ; $5a74: $0f
    rra                                           ; $5a75: $1f
    ld b, $1f                                     ; $5a76: $06 $1f
    nop                                           ; $5a78: $00
    rra                                           ; $5a79: $1f
    ld bc, $86be                                  ; $5a7a: $01 $be $86
    cp e                                          ; $5a7d: $bb
    ldh [rIE], a                                  ; $5a7e: $e0 $ff
    sub h                                         ; $5a80: $94
    and c                                         ; $5a81: $a1
    rst $38                                       ; $5a82: $ff
    rst $38                                       ; $5a83: $ff
    sbc a                                         ; $5a84: $9f
    cp $e0                                        ; $5a85: $fe $e0
    rst $18                                       ; $5a87: $df
    ldh [rPCM34], a                               ; $5a88: $e0 $77
    ld h, c                                       ; $5a8a: $61
    ld d, d                                       ; $5a8b: $52
    pop hl                                        ; $5a8c: $e1
    res 4, e                                      ; $5a8d: $cb $a3
    and b                                         ; $5a8f: $a0
    ret nz                                        ; $5a90: $c0

    sbc d                                         ; $5a91: $9a
    pop bc                                        ; $5a92: $c1
    add hl, sp                                    ; $5a93: $39
    rst $38                                       ; $5a94: $ff
    adc c                                         ; $5a95: $89
    rst $38                                       ; $5a96: $ff
    rst $38                                       ; $5a97: $ff
    db $e3                                        ; $5a98: $e3
    jp nz, $8502                                  ; $5a99: $c2 $02 $85

    dec b                                         ; $5a9c: $05
    ld a, [$f302]                                 ; $5a9d: $fa $02 $f3
    cp $f0                                        ; $5aa0: $fe $f0
    adc d                                         ; $5aa2: $8a
    jp nz, Jump_00a_604f                          ; $5aa3: $c2 $4f $60

    cp a                                          ; $5aa6: $bf
    cp a                                          ; $5aa7: $bf
    ld l, [hl]                                    ; $5aa8: $6e
    ld l, [hl]                                    ; $5aa9: $6e
    ld hl, sp+$42                                 ; $5aaa: $f8 $42
    add c                                         ; $5aac: $81
    ld c, h                                       ; $5aad: $4c
    ld h, b                                       ; $5aae: $60
    ld a, $c0                                     ; $5aaf: $3e $c0
    ret nz                                        ; $5ab1: $c0

    nop                                           ; $5ab2: $00
    rst $18                                       ; $5ab3: $df
    rst $18                                       ; $5ab4: $df
    xor d                                         ; $5ab5: $aa
    rst $30                                       ; $5ab6: $f7
    xor d                                         ; $5ab7: $aa
    ld b, l                                       ; $5ab8: $45
    ld b, l                                       ; $5ab9: $45
    ld e, $69                                     ; $5aba: $1e $69
    ld d, l                                       ; $5abc: $55
    ld d, l                                       ; $5abd: $55
    xor a                                         ; $5abe: $af
    xor a                                         ; $5abf: $af
    ld a, [hl]                                    ; $5ac0: $7e
    ld h, $61                                     ; $5ac1: $26 $61
    ld a, l                                       ; $5ac3: $7d
    ld a, l                                       ; $5ac4: $7d
    ld a, [hl+]                                   ; $5ac5: $2a
    ld a, [hl+]                                   ; $5ac6: $2a
    ld d, h                                       ; $5ac7: $54
    ld d, h                                       ; $5ac8: $54
    inc a                                         ; $5ac9: $3c
    add c                                         ; $5aca: $81
    ei                                            ; $5acb: $fb
    cp $fe                                        ; $5acc: $fe $fe
    and d                                         ; $5ace: $a2
    and c                                         ; $5acf: $a1
    ld d, h                                       ; $5ad0: $54
    ld d, h                                       ; $5ad1: $54
    xor b                                         ; $5ad2: $a8
    xor b                                         ; $5ad3: $a8
    nop                                           ; $5ad4: $00
    rst $38                                       ; $5ad5: $ff
    nop                                           ; $5ad6: $00
    add sp, -$18                                  ; $5ad7: $e8 $e8
    ld d, c                                       ; $5ad9: $51
    ld d, b                                       ; $5ada: $50
    add e                                         ; $5adb: $83
    add b                                         ; $5adc: $80
    ld b, d                                       ; $5add: $42
    rst $38                                       ; $5ade: $ff
    ld b, c                                       ; $5adf: $41
    add [hl]                                      ; $5ae0: $86
    add c                                         ; $5ae1: $81
    inc b                                         ; $5ae2: $04
    inc bc                                        ; $5ae3: $03
    dec c                                         ; $5ae4: $0d
    ld [bc], a                                    ; $5ae5: $02
    add hl, bc                                    ; $5ae6: $09
    rst $38                                       ; $5ae7: $ff
    ld b, $df                                     ; $5ae8: $06 $df
    cpl                                           ; $5aea: $2f
    cp a                                          ; $5aeb: $bf
    ld e, a                                       ; $5aec: $5f
    ld a, a                                       ; $5aed: $7f
    cp a                                          ; $5aee: $bf
    ld h, a                                       ; $5aef: $67
    rst $38                                       ; $5af0: $ff
    cp a                                          ; $5af1: $bf
    pop hl                                        ; $5af2: $e1
    ld a, a                                       ; $5af3: $7f
    ldh [$7f], a                                  ; $5af4: $e0 $7f
    ldh [rIE], a                                  ; $5af6: $e0 $ff
    ld [c], a                                     ; $5af8: $e2
    cp $e3                                        ; $5af9: $fe $e3
    add b                                         ; $5afb: $80
    rst $00                                       ; $5afc: $c7
    rst $38                                       ; $5afd: $ff
    jp $81ff                                      ; $5afe: $c3 $ff $81


    rst $38                                       ; $5b01: $ff
    add b                                         ; $5b02: $80
    cp $a4                                        ; $5b03: $fe $a4
    and b                                         ; $5b05: $a0
    ld [$1cff], sp                                ; $5b06: $08 $ff $1c
    rst $38                                       ; $5b09: $ff
    add sp, -$21                                  ; $5b0a: $e8 $df
    push af                                       ; $5b0c: $f5
    rst $38                                       ; $5b0d: $ff
    rst $28                                       ; $5b0e: $ef
    ld hl, sp-$09                                 ; $5b0f: $f8 $f7
    db $fc                                        ; $5b11: $fc
    ei                                            ; $5b12: $fb
    db $fc                                        ; $5b13: $fc
    ei                                            ; $5b14: $fb
    ld a, [hl]                                    ; $5b15: $7e
    rrca                                          ; $5b16: $0f
    db $fd                                        ; $5b17: $fd
    ld a, $fd                                     ; $5b18: $3e $fd
    rra                                           ; $5b1a: $1f
    and $c0                                       ; $5b1b: $e6 $c0
    ret nz                                        ; $5b1d: $c0

    pop bc                                        ; $5b1e: $c1
    cp $ff                                        ; $5b1f: $fe $ff
    or $f5                                        ; $5b21: $f6 $f5
    and $5c                                       ; $5b23: $e6 $5c
    and c                                         ; $5b25: $a1
    dec d                                         ; $5b26: $15
    ld [$e3fc], a                                 ; $5b27: $ea $fc $e3
    xor h                                         ; $5b2a: $ac
    pop bc                                        ; $5b2b: $c1
    ld d, c                                       ; $5b2c: $51
    xor [hl]                                      ; $5b2d: $ae
    jr z, jr_00a_5b97                             ; $5b2e: $28 $67

    rst $10                                       ; $5b30: $d7
    ld d, h                                       ; $5b31: $54
    xor e                                         ; $5b32: $ab
    or h                                          ; $5b33: $b4
    pop bc                                        ; $5b34: $c1
    sbc b                                         ; $5b35: $98
    pop bc                                        ; $5b36: $c1
    ld [bc], a                                    ; $5b37: $02
    db $fd                                        ; $5b38: $fd
    ld a, [hl+]                                   ; $5b39: $2a
    pop hl                                        ; $5b3a: $e1
    ld l, a                                       ; $5b3b: $6f
    ld h, b                                       ; $5b3c: $60
    add b                                         ; $5b3d: $80
    jr nc, @-$3e                                  ; $5b3e: $30 $c0

    or b                                          ; $5b40: $b0
    push bc                                       ; $5b41: $c5
    rra                                           ; $5b42: $1f
    rlca                                          ; $5b43: $07
    ret nz                                        ; $5b44: $c0

    ret nz                                        ; $5b45: $c0

Call_00a_5b46:
    ld [hl], b                                    ; $5b46: $70

jr_00a_5b47:
    add [hl]                                      ; $5b47: $86
    and c                                         ; $5b48: $a1
    ld a, b                                       ; $5b49: $78
    and d                                         ; $5b4a: $a2
    ld h, [hl]                                    ; $5b4b: $66
    adc c                                         ; $5b4c: $89
    ld [hl], h                                    ; $5b4d: $74
    ld [hl], h                                    ; $5b4e: $74
    di                                            ; $5b4f: $f3
    rst $38                                       ; $5b50: $ff
    ld sp, hl                                     ; $5b51: $f9
    cp $e6                                        ; $5b52: $fe $e6
    ld sp, hl                                     ; $5b54: $f9
    di                                            ; $5b55: $f3
    ld d, $80                                     ; $5b56: $16 $80
    ld l, a                                       ; $5b58: $6f
    adc h                                         ; $5b59: $8c
    db $fc                                        ; $5b5a: $fc
    add b                                         ; $5b5b: $80
    rst $38                                       ; $5b5c: $ff
    sbc b                                         ; $5b5d: $98
    rst $38                                       ; $5b5e: $ff
    ld sp, hl                                     ; $5b5f: $f9
    sbc [hl]                                      ; $5b60: $9e
    adc d                                         ; $5b61: $8a
    ret nz                                        ; $5b62: $c0

    add sp, $64                                   ; $5b63: $e8 $64
    nop                                           ; $5b65: $00
    nop                                           ; $5b66: $00
    dec b                                         ; $5b67: $05
    dec b                                         ; $5b68: $05
    xor a                                         ; $5b69: $af
    rst $38                                       ; $5b6a: $ff
    cpl                                           ; $5b6b: $2f
    sbc a                                         ; $5b6c: $9f
    rra                                           ; $5b6d: $1f
    adc $0e                                       ; $5b6e: $ce $0e
    push de                                       ; $5b70: $d5
    sub l                                         ; $5b71: $95
    jp z, $8a37                                   ; $5b72: $ca $37 $8a

    ret nz                                        ; $5b75: $c0

    add b                                         ; $5b76: $80
    adc d                                         ; $5b77: $8a
    add c                                         ; $5b78: $81
    ld a, [hl+]                                   ; $5b79: $2a
    ld a, [hl+]                                   ; $5b7a: $2a
    cp d                                          ; $5b7b: $ba
    daa                                           ; $5b7c: $27
    call z, $fec1                                 ; $5b7d: $cc $c1 $fe
    xor h                                         ; $5b80: $ac
    add hl, hl                                    ; $5b81: $29
    add hl, de                                    ; $5b82: $19
    ld b, $19                                     ; $5b83: $06 $19
    ld b, $11                                     ; $5b85: $06 $11
    ld c, $31                                     ; $5b87: $0e $31
    cp $fe                                        ; $5b89: $fe $fe
    ldh [$30], a                                  ; $5b8b: $e0 $30
    rrca                                          ; $5b8d: $0f
    jr nc, jr_00a_5b9f                            ; $5b8e: $30 $0f

    ld sp, $e30e                                  ; $5b90: $31 $0e $e3
    db $fd                                        ; $5b93: $fd
    rst $38                                       ; $5b94: $ff
    cp $e6                                        ; $5b95: $fe $e6

jr_00a_5b97:
    ld a, h                                       ; $5b97: $7c
    rst $38                                       ; $5b98: $ff
    ld b, b                                       ; $5b99: $40
    di                                            ; $5b9a: $f3
    rrca                                          ; $5b9b: $0f
    cp [hl]                                       ; $5b9c: $be
    cp $dd                                        ; $5b9d: $fe $dd

jr_00a_5b9f:
    ld b, a                                       ; $5b9f: $47
    nop                                           ; $5ba0: $00
    add b                                         ; $5ba1: $80
    ld a, a                                       ; $5ba2: $7f
    db $fd                                        ; $5ba3: $fd
    rst $38                                       ; $5ba4: $ff
    rrca                                          ; $5ba5: $0f
    cp $9f                                        ; $5ba6: $fe $9f
    rlca                                          ; $5ba8: $07
    cp $8f                                        ; $5ba9: $fe $8f
    cp $df                                        ; $5bab: $fe $df
    adc $81                                       ; $5bad: $ce $81
    db $e3                                        ; $5baf: $e3
    ld h, b                                       ; $5bb0: $60
    ld d, h                                       ; $5bb1: $54
    ld a, b                                       ; $5bb2: $78
    sub b                                         ; $5bb3: $90
    xor b                                         ; $5bb4: $a8
    ldh a, [$e1]                                  ; $5bb5: $f0 $e1
    add d                                         ; $5bb7: $82
    xor c                                         ; $5bb8: $a9
    ldh [$1f], a                                  ; $5bb9: $e0 $1f
    ld a, a                                       ; $5bbb: $7f
    add b                                         ; $5bbc: $80
    add [hl]                                      ; $5bbd: $86
    xor c                                         ; $5bbe: $a9
    add b                                         ; $5bbf: $80
    ld [hl+], a                                   ; $5bc0: $22
    add c                                         ; $5bc1: $81
    jr z, jr_00a_5b47                             ; $5bc2: $28 $83

    ld e, h                                       ; $5bc4: $5c
    xor c                                         ; $5bc5: $a9
    ld a, b                                       ; $5bc6: $78
    and c                                         ; $5bc7: $a1
    db $fc                                        ; $5bc8: $fc
    jp hl                                         ; $5bc9: $e9


    inc e                                         ; $5bca: $1c
    add d                                         ; $5bcb: $82
    db $fc                                        ; $5bcc: $fc
    add sp, $51                                   ; $5bcd: $e8 $51
    sbc a                                         ; $5bcf: $9f
    xor [hl]                                      ; $5bd0: $ae
    xor c                                         ; $5bd1: $a9
    ld d, [hl]                                    ; $5bd2: $56
    ld d, h                                       ; $5bd3: $54
    xor e                                         ; $5bd4: $ab
    or l                                          ; $5bd5: $b5
    ld h, d                                       ; $5bd6: $62
    or c                                          ; $5bd7: $b1
    ld h, b                                       ; $5bd8: $60
    ld a, [hl+]                                   ; $5bd9: $2a
    push hl                                       ; $5bda: $e5
    push de                                       ; $5bdb: $d5
    inc b                                         ; $5bdc: $04
    ld l, d                                       ; $5bdd: $6a
    ld a, a                                       ; $5bde: $7f
    adc [hl]                                      ; $5bdf: $8e
    and d                                         ; $5be0: $a2
    ld e, l                                       ; $5be1: $5d
    adc [hl]                                      ; $5be2: $8e
    rst $38                                       ; $5be3: $ff
    ret nz                                        ; $5be4: $c0

    rst $38                                       ; $5be5: $ff
    pop hl                                        ; $5be6: $e1
    pop af                                        ; $5be7: $f1
    and b                                         ; $5be8: $a0
    and l                                         ; $5be9: $a5
    inc a                                         ; $5bea: $3c
    add b                                         ; $5beb: $80
    ret nc                                        ; $5bec: $d0

    ld b, c                                       ; $5bed: $41
    and [hl]                                      ; $5bee: $a6
    jr nz, @+$01                                  ; $5bef: $20 $ff

    ld c, a                                       ; $5bf1: $4f
    rst $38                                       ; $5bf2: $ff
    rst $10                                       ; $5bf3: $d7
    ld h, e                                       ; $5bf4: $63
    rst $38                                       ; $5bf5: $ff
    jr c, jr_00a_5c6c                             ; $5bf6: $38 $74

    and d                                         ; $5bf8: $a2
    db $fd                                        ; $5bf9: $fd
    or h                                          ; $5bfa: $b4
    call nz, $ff8f                                ; $5bfb: $c4 $8f $ff
    inc e                                         ; $5bfe: $1c
    call z, Call_000_2102                         ; $5bff: $cc $02 $21
    ld h, a                                       ; $5c02: $67
    rst $38                                       ; $5c03: $ff
    cp $c0                                        ; $5c04: $fe $c0
    ld a, [hl+]                                   ; $5c06: $2a
    add b                                         ; $5c07: $80
    db $fc                                        ; $5c08: $fc
    ldh [$72], a                                  ; $5c09: $e0 $72
    and b                                         ; $5c0b: $a0
    ld hl, sp-$02                                 ; $5c0c: $f8 $fe
    pop hl                                        ; $5c0e: $e1
    add d                                         ; $5c0f: $82
    dec c                                         ; $5c10: $0d
    ld de, $0383                                  ; $5c11: $11 $83 $03
    nop                                           ; $5c14: $00
    ld c, $01                                     ; $5c15: $0e $01
    add hl, sp                                    ; $5c17: $39
    rst $38                                       ; $5c18: $ff
    rlca                                          ; $5c19: $07
    ld h, a                                       ; $5c1a: $67
    rra                                           ; $5c1b: $1f
    jp z, $943f                                   ; $5c1c: $ca $3f $94

    ld a, a                                       ; $5c1f: $7f
    ccf                                           ; $5c20: $3f
    cp a                                          ; $5c21: $bf
    nop                                           ; $5c22: $00

jr_00a_5c23:
    ei                                            ; $5c23: $fb
    rlca                                          ; $5c24: $07
    sbc $3f                                       ; $5c25: $de $3f
    ld [hl], l                                    ; $5c27: $75
    ld l, h                                       ; $5c28: $6c
    add b                                         ; $5c29: $80
    ld b, b                                       ; $5c2a: $40
    rst $38                                       ; $5c2b: $ff
    rst $38                                       ; $5c2c: $ff
    inc bc                                        ; $5c2d: $03
    db $fc                                        ; $5c2e: $fc
    rra                                           ; $5c2f: $1f
    ldh [$be], a                                  ; $5c30: $e0 $be
    ld a, a                                       ; $5c32: $7f
    push af                                       ; $5c33: $f5
    db $fc                                        ; $5c34: $fc
    ld h, b                                       ; $5c35: $60
    add b                                         ; $5c36: $80
    adc h                                         ; $5c37: $8c
    add c                                         ; $5c38: $81
    ccf                                           ; $5c39: $3f
    ret nz                                        ; $5c3a: $c0

    db $fd                                        ; $5c3b: $fd
    ld [bc], a                                    ; $5c3c: $02
    xor d                                         ; $5c3d: $aa
    ld d, l                                       ; $5c3e: $55
    pop bc                                        ; $5c3f: $c1
    xor d                                         ; $5c40: $aa
    and b                                         ; $5c41: $a0
    and h                                         ; $5c42: $a4
    ld h, a                                       ; $5c43: $67

jr_00a_5c44:
    add c                                         ; $5c44: $81
    inc a                                         ; $5c45: $3c
    pop hl                                        ; $5c46: $e1
    xor e                                         ; $5c47: $ab
    push hl                                       ; $5c48: $e5
    ld d, h                                       ; $5c49: $54
    ld bc, $5555                                  ; $5c4a: $01 $55 $55
    sbc e                                         ; $5c4d: $9b
    cp a                                          ; $5c4e: $bf
    cp a                                          ; $5c4f: $bf
    add c                                         ; $5c50: $81
    ld b, c                                       ; $5c51: $41
    ld e, $1e                                     ; $5c52: $1e $1e
    ld [hl], h                                    ; $5c54: $74
    daa                                           ; $5c55: $27
    ld b, b                                       ; $5c56: $40
    dec b                                         ; $5c57: $05
    ld [$eaff], a                                 ; $5c58: $ea $ff $ea
    push af                                       ; $5c5b: $f5
    push af                                       ; $5c5c: $f5
    ld a, [$fffa]                                 ; $5c5d: $fa $fa $ff
    rst $38                                       ; $5c60: $ff
    ld e, $b7                                     ; $5c61: $1e $b7
    pop hl                                        ; $5c63: $e1
    inc bc                                        ; $5c64: $03
    db $fc                                        ; $5c65: $fc
    inc l                                         ; $5c66: $2c
    add e                                         ; $5c67: $83
    ld d, b                                       ; $5c68: $50
    xor a                                         ; $5c69: $af
    xor a                                         ; $5c6a: $af
    ld b, c                                       ; $5c6b: $41

jr_00a_5c6c:
    nop                                           ; $5c6c: $00
    rst $38                                       ; $5c6d: $ff
    rst $38                                       ; $5c6e: $ff
    add b                                         ; $5c6f: $80
    ld a, a                                       ; $5c70: $7f
    ldh [$1f], a                                  ; $5c71: $e0 $1f
    jr nc, jr_00a_5c44                            ; $5c73: $30 $cf

    jr jr_00a_5cf6                                ; $5c75: $18 $7f

    rst $20                                       ; $5c77: $e7
    inc c                                         ; $5c78: $0c
    di                                            ; $5c79: $f3
    xor h                                         ; $5c7a: $ac
    ld d, e                                       ; $5c7b: $53
    ld e, a                                       ; $5c7c: $5f
    and b                                         ; $5c7d: $a0
    add h                                         ; $5c7e: $84
    and l                                         ; $5c7f: $a5
    add [hl]                                      ; $5c80: $86
    ld a, b                                       ; $5c81: $78
    and e                                         ; $5c82: $a3
    add b                                         ; $5c83: $80
    ld a, a                                       ; $5c84: $7f
    ret nz                                        ; $5c85: $c0

    call $c1cc                                    ; $5c86: $cd $cc $c1
    db $fc                                        ; $5c89: $fc
    jp hl                                         ; $5c8a: $e9


    inc b                                         ; $5c8b: $04
    ld h, b                                       ; $5c8c: $60
    cp a                                          ; $5c8d: $bf
    rst $38                                       ; $5c8e: $ff
    ld a, a                                       ; $5c8f: $7f
    sbc a                                         ; $5c90: $9f
    cp a                                          ; $5c91: $bf
    ld e, a                                       ; $5c92: $5f
    ccf                                           ; $5c93: $3f
    rst $08                                       ; $5c94: $cf
    sbc a                                         ; $5c95: $9f
    ld l, a                                       ; $5c96: $6f
    cpl                                           ; $5c97: $2f
    ld e, a                                       ; $5c98: $5f
    and a                                         ; $5c99: $a7
    sbc a                                         ; $5c9a: $9f
    ld h, e                                       ; $5c9b: $63
    cp $1e                                        ; $5c9c: $fe $1e
    cp [hl]                                       ; $5c9e: $be
    jr nc, jr_00a_5c23                            ; $5c9f: $30 $82

    cp $e3                                        ; $5ca1: $fe $e3
    call nc, $026f                                ; $5ca3: $d4 $6f $02
    ld e, $80                                     ; $5ca6: $1e $80
    rst $08                                       ; $5ca8: $cf
    db $db                                        ; $5ca9: $db
    and b                                         ; $5caa: $a0
    ld hl, sp+$6a                                 ; $5cab: $f8 $6a
    inc b                                         ; $5cad: $04
    db $fc                                        ; $5cae: $fc
    cp $7f                                        ; $5caf: $fe $7f
    ld hl, sp-$04                                 ; $5cb1: $f8 $fc
    ldh a, [$f8]                                  ; $5cb3: $f0 $f8
    ret nz                                        ; $5cb5: $c0

    ldh a, [rP1]                                  ; $5cb6: $f0 $00
    db $ec                                        ; $5cb8: $ec
    ld b, c                                       ; $5cb9: $41
    db $fd                                        ; $5cba: $fd
    ret nz                                        ; $5cbb: $c0

    call Call_000_03ce                            ; $5cbc: $cd $ce $03
    nop                                           ; $5cbf: $00
    ld b, $01                                     ; $5cc0: $06 $01
    ld c, $01                                     ; $5cc2: $0e $01
    cp a                                          ; $5cc4: $bf
    inc c                                         ; $5cc5: $0c
    inc bc                                        ; $5cc6: $03
    inc e                                         ; $5cc7: $1c
    inc bc                                        ; $5cc8: $03
    jr jr_00a_5cd2                                ; $5cc9: $18 $07

    cp $e1                                        ; $5ccb: $fe $e1
    jr nz, @+$01                                  ; $5ccd: $20 $ff

    rst $38                                       ; $5ccf: $ff
    ld b, e                                       ; $5cd0: $43
    db $fc                                        ; $5cd1: $fc

jr_00a_5cd2:
    rrca                                          ; $5cd2: $0f
    ldh a, [rNR34]                                ; $5cd3: $f0 $1e
    pop hl                                        ; $5cd5: $e1
    dec a                                         ; $5cd6: $3d
    rst $38                                       ; $5cd7: $ff
    jp nz, $8f70                                  ; $5cd8: $c2 $70 $8f

    ld h, l                                       ; $5cdb: $65
    sbc d                                         ; $5cdc: $9a
    ld h, b                                       ; $5cdd: $60
    sbc a                                         ; $5cde: $9f
    db $fd                                        ; $5cdf: $fd
    rst $30                                       ; $5ce0: $f7
    ld [bc], a                                    ; $5ce1: $02
    ld [$2415], a                                 ; $5ce2: $ea $15 $24
    jp $f40b                                      ; $5ce5: $c3 $0b $f4


    ld d, a                                       ; $5ce8: $57
    xor b                                         ; $5ce9: $a8
    db $e3                                        ; $5cea: $e3
    inc bc                                        ; $5ceb: $03
    db $fc                                        ; $5cec: $fc
    rla                                           ; $5ced: $17
    jp $800e                                      ; $5cee: $c3 $0e $80


    ldh [$64], a                                  ; $5cf1: $e0 $64
    ld d, a                                       ; $5cf3: $57
    ld d, a                                       ; $5cf4: $57
    cp a                                          ; $5cf5: $bf

jr_00a_5cf6:
    ld d, c                                       ; $5cf6: $51
    cp a                                          ; $5cf7: $bf
    ld l, $c0                                     ; $5cf8: $2e $c0
    ld b, c                                       ; $5cfa: $41
    add c                                         ; $5cfb: $81
    pop hl                                        ; $5cfc: $e1
    ld hl, $b080                                  ; $5cfd: $21 $80 $b0
    ld h, b                                       ; $5d00: $60
    add e                                         ; $5d01: $83
    sub [hl]                                      ; $5d02: $96
    ld h, b                                       ; $5d03: $60
    ld a, [c]                                     ; $5d04: $f2
    cp $e3                                        ; $5d05: $fe $e3
    ld [bc], a                                    ; $5d07: $02
    cp $e0                                        ; $5d08: $fe $e0
    db $10                                        ; $5d0a: $10
    jp $ff87                                      ; $5d0b: $c3 $87 $ff


    rra                                           ; $5d0e: $1f

jr_00a_5d0f:
    db $fc                                        ; $5d0f: $fc
    di                                            ; $5d10: $f3
    ccf                                           ; $5d11: $3f
    ldh a, [$0c]                                  ; $5d12: $f0 $0c
    add b                                         ; $5d14: $80
    sub b                                         ; $5d15: $90
    ld h, b                                       ; $5d16: $60
    ld e, $ff                                     ; $5d17: $1e $ff
    rlca                                          ; $5d19: $07
    rst $38                                       ; $5d1a: $ff
    rst $38                                       ; $5d1b: $ff
    pop bc                                        ; $5d1c: $c1
    rst $38                                       ; $5d1d: $ff
    ldh a, [$1f]                                  ; $5d1e: $f0 $1f
    ld hl, sp+$0f                                 ; $5d20: $f8 $0f
    db $fc                                        ; $5d22: $fc
    rlca                                          ; $5d23: $07
    daa                                           ; $5d24: $27
    add [hl]                                      ; $5d25: $86
    ld [$4cea], a                                 ; $5d26: $ea $ea $4c
    ld [c], a                                     ; $5d29: $e2
    jp hl                                         ; $5d2a: $e9


    ld b, a                                       ; $5d2b: $47
    pop af                                        ; $5d2c: $f1
    ld [c], a                                     ; $5d2d: $e2
    and b                                         ; $5d2e: $a0
    db $db                                        ; $5d2f: $db
    ld c, b                                       ; $5d30: $48
    rst $38                                       ; $5d31: $ff
    pop hl                                        ; $5d32: $e1
    nop                                           ; $5d33: $00
    ld hl, sp+$40                                 ; $5d34: $f8 $40
    db $fc                                        ; $5d36: $fc
    ld [hl], b                                    ; $5d37: $70
    rst $38                                       ; $5d38: $ff

jr_00a_5d39:
    ld a, b                                       ; $5d39: $78
    ld e, a                                       ; $5d3a: $5f
    rst $18                                       ; $5d3b: $df
    ld a, [hl]                                    ; $5d3c: $7e
    cp a                                          ; $5d3d: $bf
    ld a, a                                       ; $5d3e: $7f
    rst $18                                       ; $5d3f: $df
    push hl                                       ; $5d40: $e5
    ret nz                                        ; $5d41: $c0

    ld d, l                                       ; $5d42: $55
    ldh a, [rP1]                                  ; $5d43: $f0 $00
    rst $38                                       ; $5d45: $ff
    ld d, l                                       ; $5d46: $55
    nop                                           ; $5d47: $00
    ld [bc], a                                    ; $5d48: $02
    nop                                           ; $5d49: $00
    sub l                                         ; $5d4a: $95
    nop                                           ; $5d4b: $00
    ld [$cf00], a                                 ; $5d4c: $ea $00 $cf
    push af                                       ; $5d4f: $f5
    ret nz                                        ; $5d50: $c0

    ld a, [$88e0]                                 ; $5d51: $fa $e0 $88
    and e                                         ; $5d54: $a3
    db $fc                                        ; $5d55: $fc
    rst $20                                       ; $5d56: $e7
    ld a, a                                       ; $5d57: $7f
    add c                                         ; $5d58: $81
    cp a                                          ; $5d59: $bf
    cp a                                          ; $5d5a: $bf
    ld c, h                                       ; $5d5b: $4c
    ld a, a                                       ; $5d5c: $7f
    sbc a                                         ; $5d5d: $9f
    rst $38                                       ; $5d5e: $ff
    rra                                           ; $5d5f: $1f
    db $fc                                        ; $5d60: $fc
    ld [c], a                                     ; $5d61: $e2
    adc a                                         ; $5d62: $8f
    inc bc                                        ; $5d63: $03
    cp a                                          ; $5d64: $bf
    ld b, a                                       ; $5d65: $47
    jp z, Jump_000_3a22                           ; $5d66: $ca $22 $3a

    sbc a                                         ; $5d69: $9f
    ld a, [de]                                    ; $5d6a: $1a
    add l                                         ; $5d6b: $85
    db $ec                                        ; $5d6c: $ec
    ld b, e                                       ; $5d6d: $43
    ldh a, [rLCDC]                                ; $5d6e: $f0 $40
    jp z, $f1c3                                   ; $5d70: $ca $c3 $f1

    ldh [rWY], a                                  ; $5d73: $e0 $4a
    jr nz, jr_00a_5d0f                            ; $5d75: $20 $98

    or c                                          ; $5d77: $b1
    ld l, e                                       ; $5d78: $6b
    rlca                                          ; $5d79: $07
    jr jr_00a_5d83                                ; $5d7a: $18 $07

    inc c                                         ; $5d7c: $0c
    inc bc                                        ; $5d7d: $03
    rst $30                                       ; $5d7e: $f7
    ld c, $01                                     ; $5d7f: $0e $01
    rlca                                          ; $5d81: $07
    add [hl]                                      ; $5d82: $86

jr_00a_5d83:
    and h                                         ; $5d83: $a4
    nop                                           ; $5d84: $00
    nop                                           ; $5d85: $00
    ld h, c                                       ; $5d86: $61
    sbc [hl]                                      ; $5d87: $9e
    cp $04                                        ; $5d88: $fe $04
    pop bc                                        ; $5d8a: $c1
    add b                                         ; $5d8b: $80
    ld a, a                                       ; $5d8c: $7f
    ldh a, [rIF]                                  ; $5d8d: $f0 $0f
    ccf                                           ; $5d8f: $3f
    nop                                           ; $5d90: $00
    rlca                                          ; $5d91: $07
    cp $44                                        ; $5d92: $fe $44
    nop                                           ; $5d94: $00
    ld d, a                                       ; $5d95: $57
    xor b                                         ; $5d96: $a8
    rlca                                          ; $5d97: $07
    ld hl, sp+$17                                 ; $5d98: $f8 $17
    add sp, $07                                   ; $5d9a: $e8 $07
    ld d, a                                       ; $5d9c: $57
    ld hl, sp+$07                                 ; $5d9d: $f8 $07
    ld hl, sp+$05                                 ; $5d9f: $f8 $05
    ld b, c                                       ; $5da1: $41
    inc bc                                        ; $5da2: $03
    ld d, b                                       ; $5da3: $50
    ld bc, $13c1                                  ; $5da4: $01 $c1 $13
    ld h, b                                       ; $5da7: $60
    rst $38                                       ; $5da8: $ff
    add e                                         ; $5da9: $83
    rst $38                                       ; $5daa: $ff
    rrca                                          ; $5dab: $0f
    db $fc                                        ; $5dac: $fc
    rra                                           ; $5dad: $1f
    ld hl, sp+$1f                                 ; $5dae: $f8 $1f
    ld hl, sp-$0b                                 ; $5db0: $f8 $f5
    ccf                                           ; $5db2: $3f
    rlca                                          ; $5db3: $07
    ld h, b                                       ; $5db4: $60
    ret nz                                        ; $5db5: $c0

    db $dd                                        ; $5db6: $dd
    jr nz, jr_00a_5d39                            ; $5db7: $20 $80

    rst $38                                       ; $5db9: $ff
    ldh [$3f], a                                  ; $5dba: $e0 $3f
    sub $ee                                       ; $5dbc: $d6 $ee
    ret nz                                        ; $5dbe: $c0

    rra                                           ; $5dbf: $1f
    sbc b                                         ; $5dc0: $98
    rst $18                                       ; $5dc1: $df
    dec l                                         ; $5dc2: $2d
    ldh [$d3], a                                  ; $5dc3: $e0 $d3
    add b                                         ; $5dc5: $80
    ret nz                                        ; $5dc6: $c0

    cp $ba                                        ; $5dc7: $fe $ba
    cp $e6                                        ; $5dc9: $fe $e6
    ld a, [hl]                                    ; $5dcb: $7e
    jr c, jr_00a_5df1                             ; $5dcc: $38 $23

    rra                                           ; $5dce: $1f
    rra                                           ; $5dcf: $1f
    ccf                                           ; $5dd0: $3f
    rst $38                                       ; $5dd1: $ff
    ld [c], a                                     ; $5dd2: $e2
    ld a, $f1                                     ; $5dd3: $3e $f1
    ccf                                           ; $5dd5: $3f
    adc d                                         ; $5dd6: $8a
    call nz, $e1fe                                ; $5dd7: $c4 $fe $e1
    rst $10                                       ; $5dda: $d7
    ldh [rIE], a                                  ; $5ddb: $e0 $ff
    ret nz                                        ; $5ddd: $c0

    ld bc, $fefe                                  ; $5dde: $01 $fe $fe
    cp $e1                                        ; $5de1: $fe $e1
    inc bc                                        ; $5de3: $03
    db $fd                                        ; $5de4: $fd
    inc bc                                        ; $5de5: $03
    db $fd                                        ; $5de6: $fd
    ld b, $fb                                     ; $5de7: $06 $fb
    ld b, $bf                                     ; $5de9: $06 $bf
    ei                                            ; $5deb: $fb
    inc c                                         ; $5dec: $0c
    rst $30                                       ; $5ded: $f7
    rst $18                                       ; $5dee: $df
    rst $38                                       ; $5def: $ff
    cp a                                          ; $5df0: $bf

jr_00a_5df1:
    add e                                         ; $5df1: $83
    ld h, d                                       ; $5df2: $62
    ld a, a                                       ; $5df3: $7f
    ld hl, sp-$08                                 ; $5df4: $f8 $f8
    ldh [$fc], a                                  ; $5df6: $e0 $fc
    pop hl                                        ; $5df8: $e1
    add d                                         ; $5df9: $82
    add b                                         ; $5dfa: $80
    ld hl, sp-$04                                 ; $5dfb: $f8 $fc
    di                                            ; $5dfd: $f3
    ld hl, sp-$19                                 ; $5dfe: $f8 $e7
    rst $38                                       ; $5e00: $ff
    ldh a, [$cf]                                  ; $5e01: $f0 $cf
    ldh [$df], a                                  ; $5e03: $e0 $df
    ldh [$9f], a                                  ; $5e05: $e0 $9f
    ret nz                                        ; $5e07: $c0

    cp a                                          ; $5e08: $bf
    rst $38                                       ; $5e09: $ff
    db $fd                                        ; $5e0a: $fd
    db $fd                                        ; $5e0b: $fd
    rst $38                                       ; $5e0c: $ff
    rlca                                          ; $5e0d: $07
    rst $10                                       ; $5e0e: $d7
    add hl, hl                                    ; $5e0f: $29
    xor e                                         ; $5e10: $ab
    ld d, h                                       ; $5e11: $54
    ld sp, hl                                     ; $5e12: $f9
    db $fd                                        ; $5e13: $fd
    ld a, [hl-]                                   ; $5e14: $3a
    nop                                           ; $5e15: $00
    ld b, b                                       ; $5e16: $40
    ret nz                                        ; $5e17: $c0

    ld [hl], b                                    ; $5e18: $70
    ccf                                           ; $5e19: $3f
    ccf                                           ; $5e1a: $3f
    ld a, a                                       ; $5e1b: $7f
    ld a, e                                       ; $5e1c: $7b
    cp $c4                                        ; $5e1d: $fe $c4
    and b                                         ; $5e1f: $a0
    ldh a, [rIE]                                  ; $5e20: $f0 $ff
    ld [hl], b                                    ; $5e22: $70
    rst $38                                       ; $5e23: $ff
    jr nc, @+$01                                  ; $5e24: $30 $ff

    jr nz, jr_00a_5e4f                            ; $5e26: $20 $27

    rst $38                                       ; $5e28: $ff
    ld h, b                                       ; $5e29: $60
    nop                                           ; $5e2a: $00
    ld d, e                                       ; $5e2b: $53
    add b                                         ; $5e2c: $80
    or l                                          ; $5e2d: $b5
    and b                                         ; $5e2e: $a0
    rra                                           ; $5e2f: $1f
    jp nz, Jump_00a_4520                          ; $5e30: $c2 $20 $45

    ld [hl+], a                                   ; $5e33: $22
    ld c, [hl]                                    ; $5e34: $4e
    jp nz, $ff66                                  ; $5e35: $c2 $66 $ff

    cp $7f                                        ; $5e38: $fe $7f
    jr c, @-$3e                                   ; $5e3a: $38 $c0

    xor h                                         ; $5e3c: $ac
    ld l, d                                       ; $5e3d: $6a
    ldh [rNR44], a                                ; $5e3e: $e0 $23
    add c                                         ; $5e40: $81
    ld sp, hl                                     ; $5e41: $f9
    ret nz                                        ; $5e42: $c0

    ld a, [hl]                                    ; $5e43: $7e
    nop                                           ; $5e44: $00
    cp $e0                                        ; $5e45: $fe $e0
    pop af                                        ; $5e47: $f1
    pop bc                                        ; $5e48: $c1
    pop hl                                        ; $5e49: $e1
    pop bc                                        ; $5e4a: $c1
    jp nz, $02f7                                  ; $5e4b: $c2 $f7 $02

    add h                                         ; $5e4e: $84

jr_00a_5e4f:
    inc b                                         ; $5e4f: $04
    push bc                                       ; $5e50: $c5
    pop bc                                        ; $5e51: $c1
    ld a, [hl-]                                   ; $5e52: $3a
    ld a, [hl-]                                   ; $5e53: $3a
    rst $38                                       ; $5e54: $ff
    rst $38                                       ; $5e55: $ff
    rst $28                                       ; $5e56: $ef
    xor $ee                                       ; $5e57: $ee $ee
    ld d, l                                       ; $5e59: $55
    ld d, l                                       ; $5e5a: $55
    inc h                                         ; $5e5b: $24
    ld h, e                                       ; $5e5c: $63
    ld d, b                                       ; $5e5d: $50
    ld d, b                                       ; $5e5e: $50
    jp hl                                         ; $5e5f: $e9


    rst $38                                       ; $5e60: $ff
    jp hl                                         ; $5e61: $e9


    call nc, $a0d4                                ; $5e62: $d4 $d4 $a0
    and b                                         ; $5e65: $a0
    dec b                                         ; $5e66: $05
    dec b                                         ; $5e67: $05
    ld a, [bc]                                    ; $5e68: $0a
    rlca                                          ; $5e69: $07
    ld a, [bc]                                    ; $5e6a: $0a
    nop                                           ; $5e6b: $00
    nop                                           ; $5e6c: $00
    nop                                           ; $5e6d: $00
    nop                                           ; $5e6e: $00
    nop                                           ; $5e6f: $00
    rst $38                                       ; $5e70: $ff
    nop                                           ; $5e71: $00
    ld bc, $0302                                  ; $5e72: $01 $02 $03
    inc b                                         ; $5e75: $04
    dec b                                         ; $5e76: $05
    ld b, $07                                     ; $5e77: $06 $07
    rst $38                                       ; $5e79: $ff
    ld [$0a09], sp                                ; $5e7a: $08 $09 $0a
    dec bc                                        ; $5e7d: $0b
    inc c                                         ; $5e7e: $0c
    dec c                                         ; $5e7f: $0d
    ld c, $0f                                     ; $5e80: $0e $0f
    rst $18                                       ; $5e82: $df
    db $10                                        ; $5e83: $10
    ld de, $1312                                  ; $5e84: $11 $12 $13
    nop                                           ; $5e87: $00
    rst $38                                       ; $5e88: $ff
    add sp, $14                                   ; $5e89: $e8 $14
    dec d                                         ; $5e8b: $15
    rst $38                                       ; $5e8c: $ff
    ld d, $17                                     ; $5e8d: $16 $17
    jr jr_00a_5eaa                                ; $5e8f: $18 $19

    ld a, [de]                                    ; $5e91: $1a
    dec de                                        ; $5e92: $1b
    inc e                                         ; $5e93: $1c
    dec e                                         ; $5e94: $1d
    rst $38                                       ; $5e95: $ff
    ld e, $1f                                     ; $5e96: $1e $1f
    jr nz, jr_00a_5ebb                            ; $5e98: $20 $21

    ld [hl+], a                                   ; $5e9a: $22
    inc hl                                        ; $5e9b: $23
    inc h                                         ; $5e9c: $24
    dec h                                         ; $5e9d: $25
    ei                                            ; $5e9e: $fb
    ld h, $27                                     ; $5e9f: $26 $27
    ldh [$e9], a                                  ; $5ea1: $e0 $e9
    jr z, jr_00a_5ece                             ; $5ea3: $28 $29

    ld a, [hl+]                                   ; $5ea5: $2a
    dec hl                                        ; $5ea6: $2b
    inc l                                         ; $5ea7: $2c
    rst $38                                       ; $5ea8: $ff
    dec l                                         ; $5ea9: $2d

jr_00a_5eaa:
    ld l, $2f                                     ; $5eaa: $2e $2f
    jr nc, jr_00a_5edf                            ; $5eac: $30 $31

    ld [hl-], a                                   ; $5eae: $32
    inc sp                                        ; $5eaf: $33
    inc [hl]                                      ; $5eb0: $34
    ld a, a                                       ; $5eb1: $7f
    dec [hl]                                      ; $5eb2: $35
    ld [hl], $37                                  ; $5eb3: $36 $37
    jr c, jr_00a_5ef0                             ; $5eb5: $38 $39

    ld a, [hl-]                                   ; $5eb7: $3a
    dec sp                                        ; $5eb8: $3b
    ret nz                                        ; $5eb9: $c0

    jp hl                                         ; $5eba: $e9


jr_00a_5ebb:
    rst $38                                       ; $5ebb: $ff
    inc a                                         ; $5ebc: $3c
    dec a                                         ; $5ebd: $3d
    ld a, $3f                                     ; $5ebe: $3e $3f
    ld b, b                                       ; $5ec0: $40
    ld b, c                                       ; $5ec1: $41
    ld b, d                                       ; $5ec2: $42
    ld b, e                                       ; $5ec3: $43
    rst $38                                       ; $5ec4: $ff
    ld b, h                                       ; $5ec5: $44
    ld b, l                                       ; $5ec6: $45
    ld b, [hl]                                    ; $5ec7: $46
    ld b, a                                       ; $5ec8: $47
    ld c, b                                       ; $5ec9: $48
    ld c, c                                       ; $5eca: $49
    ld c, d                                       ; $5ecb: $4a
    ld c, e                                       ; $5ecc: $4b
    rst $28                                       ; $5ecd: $ef

jr_00a_5ece:
    ld c, h                                       ; $5ece: $4c
    ld c, l                                       ; $5ecf: $4d
    ld c, [hl]                                    ; $5ed0: $4e
    ld c, a                                       ; $5ed1: $4f
    and b                                         ; $5ed2: $a0
    jp hl                                         ; $5ed3: $e9


    ld d, b                                       ; $5ed4: $50
    ld d, c                                       ; $5ed5: $51
    ld d, d                                       ; $5ed6: $52
    rst $38                                       ; $5ed7: $ff
    ld d, e                                       ; $5ed8: $53
    ld d, h                                       ; $5ed9: $54
    ld d, l                                       ; $5eda: $55
    ld d, [hl]                                    ; $5edb: $56
    ld d, a                                       ; $5edc: $57
    ld e, b                                       ; $5edd: $58
    ld e, c                                       ; $5ede: $59

jr_00a_5edf:
    ld e, d                                       ; $5edf: $5a
    rst $38                                       ; $5ee0: $ff
    ld e, e                                       ; $5ee1: $5b
    ld e, h                                       ; $5ee2: $5c
    ld e, l                                       ; $5ee3: $5d
    ld e, [hl]                                    ; $5ee4: $5e
    ld e, a                                       ; $5ee5: $5f
    ld h, b                                       ; $5ee6: $60
    ld h, c                                       ; $5ee7: $61
    ld h, d                                       ; $5ee8: $62
    db $fd                                        ; $5ee9: $fd
    ld h, e                                       ; $5eea: $63
    add b                                         ; $5eeb: $80
    jp hl                                         ; $5eec: $e9


    ld h, h                                       ; $5eed: $64
    ld h, l                                       ; $5eee: $65
    ld h, [hl]                                    ; $5eef: $66

jr_00a_5ef0:
    ld h, a                                       ; $5ef0: $67
    ld l, b                                       ; $5ef1: $68
    ld l, c                                       ; $5ef2: $69
    rst $38                                       ; $5ef3: $ff
    ld l, d                                       ; $5ef4: $6a
    ld l, e                                       ; $5ef5: $6b
    ld l, h                                       ; $5ef6: $6c
    ld l, l                                       ; $5ef7: $6d
    ld l, [hl]                                    ; $5ef8: $6e
    ld l, a                                       ; $5ef9: $6f
    ld [hl], b                                    ; $5efa: $70
    ld [hl], c                                    ; $5efb: $71
    cp a                                          ; $5efc: $bf
    ld [hl], d                                    ; $5efd: $72
    ld [hl], e                                    ; $5efe: $73
    ld [hl], h                                    ; $5eff: $74
    ld [hl], l                                    ; $5f00: $75
    halt                                          ; $5f01: $76
    ld [hl], a                                    ; $5f02: $77
    ld h, b                                       ; $5f03: $60
    jp hl                                         ; $5f04: $e9


    ld a, b                                       ; $5f05: $78
    rst $38                                       ; $5f06: $ff
    ld a, c                                       ; $5f07: $79
    ld a, d                                       ; $5f08: $7a
    ld a, e                                       ; $5f09: $7b
    ld a, h                                       ; $5f0a: $7c
    ld a, l                                       ; $5f0b: $7d
    ld a, [hl]                                    ; $5f0c: $7e
    ld a, a                                       ; $5f0d: $7f
    add b                                         ; $5f0e: $80
    rst $38                                       ; $5f0f: $ff
    add c                                         ; $5f10: $81
    add d                                         ; $5f11: $82
    add e                                         ; $5f12: $83
    add h                                         ; $5f13: $84
    add l                                         ; $5f14: $85
    add [hl]                                      ; $5f15: $86
    add a                                         ; $5f16: $87
    adc b                                         ; $5f17: $88
    rst $30                                       ; $5f18: $f7
    adc c                                         ; $5f19: $89
    adc d                                         ; $5f1a: $8a
    adc e                                         ; $5f1b: $8b
    ld b, b                                       ; $5f1c: $40
    jp hl                                         ; $5f1d: $e9


    adc h                                         ; $5f1e: $8c
    adc l                                         ; $5f1f: $8d
    adc [hl]                                      ; $5f20: $8e
    adc a                                         ; $5f21: $8f
    rst $38                                       ; $5f22: $ff
    sub b                                         ; $5f23: $90
    sub c                                         ; $5f24: $91
    sub d                                         ; $5f25: $92
    sub e                                         ; $5f26: $93
    sub h                                         ; $5f27: $94
    sub l                                         ; $5f28: $95
    sub [hl]                                      ; $5f29: $96
    sub a                                         ; $5f2a: $97
    rst $38                                       ; $5f2b: $ff
    sbc b                                         ; $5f2c: $98
    sbc c                                         ; $5f2d: $99
    sbc d                                         ; $5f2e: $9a
    sbc e                                         ; $5f2f: $9b
    sbc h                                         ; $5f30: $9c
    sbc l                                         ; $5f31: $9d
    sbc [hl]                                      ; $5f32: $9e
    sbc a                                         ; $5f33: $9f
    cp $20                                        ; $5f34: $fe $20
    jp hl                                         ; $5f36: $e9


    and b                                         ; $5f37: $a0
    and c                                         ; $5f38: $a1
    and d                                         ; $5f39: $a2
    and e                                         ; $5f3a: $a3

jr_00a_5f3b:
    and h                                         ; $5f3b: $a4
    and l                                         ; $5f3c: $a5
    and [hl]                                      ; $5f3d: $a6
    rst $38                                       ; $5f3e: $ff
    and a                                         ; $5f3f: $a7
    xor b                                         ; $5f40: $a8
    xor c                                         ; $5f41: $a9
    xor d                                         ; $5f42: $aa
    xor e                                         ; $5f43: $ab
    xor h                                         ; $5f44: $ac
    xor l                                         ; $5f45: $ad
    xor [hl]                                      ; $5f46: $ae
    rra                                           ; $5f47: $1f
    xor a                                         ; $5f48: $af
    or b                                          ; $5f49: $b0
    or c                                          ; $5f4a: $b1
    or d                                          ; $5f4b: $b2
    or e                                          ; $5f4c: $b3
    nop                                           ; $5f4d: $00
    jp hl                                         ; $5f4e: $e9


    nop                                           ; $5f4f: $00
    nop                                           ; $5f50: $00
    nop                                           ; $5f51: $00
    ld hl, $ff00                                  ; $5f52: $21 $00 $ff
    rst $38                                       ; $5f55: $ff
    rst $38                                       ; $5f56: $ff
    rst $38                                       ; $5f57: $ff
    rst $38                                       ; $5f58: $ff
    rst $38                                       ; $5f59: $ff
    cp $fd                                        ; $5f5a: $fe $fd
    jr nz, jr_00a_5f3b                            ; $5f5c: $20 $dd

    rst $38                                       ; $5f5e: $ff
    ld sp, hl                                     ; $5f5f: $f9
    ld hl, sp-$09                                 ; $5f60: $f8 $f7
    ld bc, $0101                                  ; $5f62: $01 $01 $01
    ld [c], a                                     ; $5f65: $e2
    ei                                            ; $5f66: $fb
    ld [bc], a                                    ; $5f67: $02
    ld [bc], a                                    ; $5f68: $02
    ld bc, $eb01                                  ; $5f69: $01 $01 $eb
    inc bc                                        ; $5f6c: $03
    inc bc                                        ; $5f6d: $03
    jp nz, $02f5                                  ; $5f6e: $c2 $f5 $02

    ldh [$e1], a                                  ; $5f71: $e0 $e1
    inc bc                                        ; $5f73: $03
    inc bc                                        ; $5f74: $03
    inc bc                                        ; $5f75: $03
    ld [bc], a                                    ; $5f76: $02
    ret c                                         ; $5f77: $d8

    pop hl                                        ; $5f78: $e1
    ld [bc], a                                    ; $5f79: $02
    sub d                                         ; $5f7a: $92
    db $ec                                        ; $5f7b: $ec
    nop                                           ; $5f7c: $00
    nop                                           ; $5f7d: $00
    nop                                           ; $5f7e: $00
    rst $38                                       ; $5f7f: $ff
    ld h, b                                       ; $5f80: $60
    ld h, b                                       ; $5f81: $60
    ld hl, sp-$08                                 ; $5f82: $f8 $f8
    cp $fe                                        ; $5f84: $fe $fe
    db $fd                                        ; $5f86: $fd
    db $fd                                        ; $5f87: $fd
    db $fd                                        ; $5f88: $fd
    rst $38                                       ; $5f89: $ff
    rst $38                                       ; $5f8a: $ff
    ldh [$ea], a                                  ; $5f8b: $e0 $ea
    ld [$5555], a                                 ; $5f8d: $ea $55 $55
    nop                                           ; $5f90: $00
    nop                                           ; $5f91: $00
    rst $38                                       ; $5f92: $ff
    ld d, h                                       ; $5f93: $54
    ld d, h                                       ; $5f94: $54
    cp d                                          ; $5f95: $ba
    cp d                                          ; $5f96: $ba
    push de                                       ; $5f97: $d5
    push de                                       ; $5f98: $d5
    add sp, -$18                                  ; $5f99: $e8 $e8
    ld a, a                                       ; $5f9b: $7f
    ld b, b                                       ; $5f9c: $40
    ld b, b                                       ; $5f9d: $40
    and b                                         ; $5f9e: $a0
    and b                                         ; $5f9f: $a0
    nop                                           ; $5fa0: $00
    nop                                           ; $5fa1: $00
    ld bc, $e0fe                                  ; $5fa2: $01 $fe $e0
    or e                                          ; $5fa5: $b3
    add c                                         ; $5fa6: $81
    add b                                         ; $5fa7: $80
    ld a, [$ffe1]                                 ; $5fa8: $fa $e1 $ff
    db $e3                                        ; $5fab: $e3
    ldh a, [$bf]                                  ; $5fac: $f0 $bf
    cp $e0                                        ; $5fae: $fe $e0
    cp [hl]                                       ; $5fb0: $be
    rst $38                                       ; $5fb1: $ff
    ldh a, [$9e]                                  ; $5fb2: $f0 $9e
    ld hl, sp-$62                                 ; $5fb4: $f8 $9e
    ld hl, sp-$22                                 ; $5fb6: $f8 $de
    ld hl, sp-$31                                 ; $5fb8: $f8 $cf
    rst $38                                       ; $5fba: $ff
    db $fc                                        ; $5fbb: $fc
    rst $08                                       ; $5fbc: $cf
    rrca                                          ; $5fbd: $0f
    inc c                                         ; $5fbe: $0c
    rrca                                          ; $5fbf: $0f
    inc c                                         ; $5fc0: $0c
    rra                                           ; $5fc1: $1f
    ld e, $f7                                     ; $5fc2: $1e $f7
    ccf                                           ; $5fc4: $3f
    ld a, $3f                                     ; $5fc5: $3e $3f
    rst $38                                       ; $5fc7: $ff
    ld [c], a                                     ; $5fc8: $e2
    dec e                                         ; $5fc9: $1d
    rra                                           ; $5fca: $1f
    rst $38                                       ; $5fcb: $ff
    nop                                           ; $5fcc: $00
    xor $fe                                       ; $5fcd: $ee $fe
    ld [$e080], a                                 ; $5fcf: $ea $80 $e0
    ld a, [hl]                                    ; $5fd2: $7e
    cp $e0                                        ; $5fd3: $fe $e0
    ccf                                           ; $5fd5: $3f
    ldh a, [$3f]                                  ; $5fd6: $f0 $3f
    rst $38                                       ; $5fd8: $ff
    ldh a, [$1f]                                  ; $5fd9: $f0 $1f
    ld hl, sp+$1f                                 ; $5fdb: $f8 $1f
    ld hl, sp+$0f                                 ; $5fdd: $f8 $0f
    db $fc                                        ; $5fdf: $fc
    rlca                                          ; $5fe0: $07
    ld a, [$e1d8]                                 ; $5fe1: $fa $d8 $e1
    rra                                           ; $5fe4: $1f
    rst $38                                       ; $5fe5: $ff
    ldh [rIF], a                                  ; $5fe6: $e0 $0f
    adc a                                         ; $5fe8: $8f
    rrca                                          ; $5fe9: $0f
    adc a                                         ; $5fea: $8f

jr_00a_5feb:
    rlca                                          ; $5feb: $07
    ld a, a                                       ; $5fec: $7f
    rst $00                                       ; $5fed: $c7
    inc bc                                        ; $5fee: $03
    jp $c0ff                                      ; $5fef: $c3 $ff $c0


    rst $38                                       ; $5ff2: $ff
    ldh [$fe], a                                  ; $5ff3: $e0 $fe
    add sp, -$01                                  ; $5ff5: $e8 $ff
    ret nz                                        ; $5ff7: $c0

    dec c                                         ; $5ff8: $0d
    rst $30                                       ; $5ff9: $f7
    jr jr_00a_5feb                                ; $5ffa: $18 $ef

    add hl, de                                    ; $5ffc: $19
    rst $28                                       ; $5ffd: $ef
    ld a, [de]                                    ; $5ffe: $1a
    rst $38                                       ; $5fff: $ff
    rst $28                                       ; $6000: $ef
    dec e                                         ; $6001: $1d
    rst $28                                       ; $6002: $ef
    rrca                                          ; $6003: $0f
    or $07                                        ; $6004: $f6 $07
    ld sp, hl                                     ; $6006: $f9
    ld [bc], a                                    ; $6007: $02
    db $d3                                        ; $6008: $d3
    db $fd                                        ; $6009: $fd
    ld a, a                                       ; $600a: $7f
    ld h, a                                       ; $600b: $67
    ldh [$fc], a                                  ; $600c: $e0 $fc
    ldh [$fe], a                                  ; $600e: $e0 $fe
    cp $e1                                        ; $6010: $fe $e1
    ld e, a                                       ; $6012: $5f
    cp $bf                                        ; $6013: $fe $bf
    cp a                                          ; $6015: $bf
    db $fc                                        ; $6016: $fc
    ret nz                                        ; $6017: $c0

    ccf                                           ; $6018: $3f
    add c                                         ; $6019: $81
    ld a, [hl]                                    ; $601a: $7e
    cp $e1                                        ; $601b: $fe $e1
    inc bc                                        ; $601d: $03
    rst $38                                       ; $601e: $ff
    db $fc                                        ; $601f: $fc
    inc bc                                        ; $6020: $03
    db $fc                                        ; $6021: $fc
    ld [bc], a                                    ; $6022: $02
    db $fd                                        ; $6023: $fd
    inc bc                                        ; $6024: $03
    db $fc                                        ; $6025: $fc
    rst $38                                       ; $6026: $ff
    rst $38                                       ; $6027: $ff
    add sp, -$01                                  ; $6028: $e8 $ff
    ret nc                                        ; $602a: $d0

    rst $38                                       ; $602b: $ff
    xor b                                         ; $602c: $a8
    rst $38                                       ; $602d: $ff
    ld d, b                                       ; $602e: $50
    rst $38                                       ; $602f: $ff
    rst $38                                       ; $6030: $ff
    and b                                         ; $6031: $a0
    rst $38                                       ; $6032: $ff
    ld d, c                                       ; $6033: $51
    rst $38                                       ; $6034: $ff
    and c                                         ; $6035: $a1
    rst $38                                       ; $6036: $ff
    pop bc                                        ; $6037: $c1
    rst $38                                       ; $6038: $ff
    ld [hl], a                                    ; $6039: $77
    ld h, b                                       ; $603a: $60
    rst $38                                       ; $603b: $ff
    ld b, b                                       ; $603c: $40
    xor h                                         ; $603d: $ac
    ldh [$c0], a                                  ; $603e: $e0 $c0

Jump_00a_6040:
    rst $38                                       ; $6040: $ff
    add b                                         ; $6041: $80
    cp $e2                                        ; $6042: $fe $e2
    db $fc                                        ; $6044: $fc
    ld [hl], d                                    ; $6045: $72
    db $eb                                        ; $6046: $eb
    ld a, [c]                                     ; $6047: $f2
    ldh a, [$fc]                                  ; $6048: $f0 $fc
    inc e                                         ; $604a: $1c
    db $fc                                        ; $604b: $fc
    inc l                                         ; $604c: $2c
    ld hl, sp+$18                                 ; $604d: $f8 $18

Jump_00a_604f:
    rst $38                                       ; $604f: $ff
    ld hl, sp+$38                                 ; $6050: $f8 $38
    ld hl, sp+$58                                 ; $6052: $f8 $58
    ldh a, [$30]                                  ; $6054: $f0 $30
    ldh a, [rSVBK]                                ; $6056: $f0 $70
    adc a                                         ; $6058: $8f
    ldh [$a0], a                                  ; $6059: $e0 $a0
    ld [$1708], sp                                ; $605b: $08 $08 $17
    db $e4                                        ; $605e: $e4
    rst $38                                       ; $605f: $ff
    rst $38                                       ; $6060: $ff
    xor $c2                                       ; $6061: $ee $c2
    xor [hl]                                      ; $6063: $ae
    sbc a                                         ; $6064: $9f
    xor [hl]                                      ; $6065: $ae
    ld [hl], l                                    ; $6066: $75
    ld [hl], l                                    ; $6067: $75
    xor b                                         ; $6068: $a8
    xor b                                         ; $6069: $a8
    ret c                                         ; $606a: $d8

    rst $38                                       ; $606b: $ff
    or [hl]                                       ; $606c: $b6
    ret nz                                        ; $606d: $c0

    ld bc, $03ff                                  ; $606e: $01 $ff $03
    inc bc                                        ; $6071: $03
    rlca                                          ; $6072: $07
    ld b, $fc                                     ; $6073: $06 $fc
    rst $28                                       ; $6075: $ef
    ld a, a                                       ; $6076: $7f
    ld h, a                                       ; $6077: $67
    rst $08                                       ; $6078: $cf
    ld a, a                                       ; $6079: $7f
    ld a, a                                       ; $607a: $7f
    ld a, a                                       ; $607b: $7f
    ld a, h                                       ; $607c: $7c
    ld a, [bc]                                    ; $607d: $0a
    ldh [$62], a                                  ; $607e: $e0 $62
    ldh [$eb], a                                  ; $6080: $e0 $eb
    inc d                                         ; $6082: $14
    db $e3                                        ; $6083: $e3
    rra                                           ; $6084: $1f
    sbc a                                         ; $6085: $9f
    add [hl]                                      ; $6086: $86
    pop bc                                        ; $6087: $c1
    adc $c9                                       ; $6088: $ce $c9
    ld b, [hl]                                    ; $608a: $46
    ldh [$f0], a                                  ; $608b: $e0 $f0
    rst $38                                       ; $608d: $ff
    db $fc                                        ; $608e: $fc
    ld a, e                                       ; $608f: $7b
    rst $38                                       ; $6090: $ff
    inc e                                         ; $6091: $1c
    or [hl]                                       ; $6092: $b6
    jp Jump_000_03fe                              ; $6093: $c3 $fe $03


    rst $38                                       ; $6096: $ff
    ld bc, $e0fe                                  ; $6097: $01 $fe $e0
    db $fd                                        ; $609a: $fd
    inc bc                                        ; $609b: $03
    xor b                                         ; $609c: $a8
    push bc                                       ; $609d: $c5
    rra                                           ; $609e: $1f
    cp $78                                        ; $609f: $fe $78
    rst $30                                       ; $60a1: $f7
    ld [c], a                                     ; $60a2: $e2
    db $dd                                        ; $60a3: $dd
    rst $18                                       ; $60a4: $df
    push de                                       ; $60a5: $d5
    ld a, [hl+]                                   ; $60a6: $2a
    xor a                                         ; $60a7: $af
    ld d, b                                       ; $60a8: $50
    ld a, a                                       ; $60a9: $7f
    ld [hl+], a                                   ; $60aa: $22
    pop hl                                        ; $60ab: $e1
    ld bc, $5dff                                  ; $60ac: $01 $ff $5d
    nop                                           ; $60af: $00
    ld hl, sp-$20                                 ; $60b0: $f8 $e0
    jr @+$01                                      ; $60b2: $18 $ff

    inc a                                         ; $60b4: $3c
    cp $e0                                        ; $60b5: $fe $e0
    ld a, [hl]                                    ; $60b7: $7e
    jp c, $ffc1                                   ; $60b8: $da $c1 $ff

    ld b, $fb                                     ; $60bb: $06 $fb
    ld b, $fb                                     ; $60bd: $06 $fb
    rlca                                          ; $60bf: $07
    ei                                            ; $60c0: $fb
    rlca                                          ; $60c1: $07
    ld sp, hl                                     ; $60c2: $f9
    rst $28                                       ; $60c3: $ef
    inc bc                                        ; $60c4: $03
    db $fc                                        ; $60c5: $fc
    ld bc, $75fe                                  ; $60c6: $01 $fe $75
    pop bc                                        ; $60c9: $c1
    ld e, [hl]                                    ; $60ca: $5e

Call_00a_60cb:
    db $fd                                        ; $60cb: $fd
    cp [hl]                                       ; $60cc: $be
    rst $38                                       ; $60cd: $ff
    db $fd                                        ; $60ce: $fd
    ld a, [hl]                                    ; $60cf: $7e
    ld sp, hl                                     ; $60d0: $f9
    db $fc                                        ; $60d1: $fc
    di                                            ; $60d2: $f3
    ld hl, sp-$39                                 ; $60d3: $f8 $c7
    ldh a, [$e1]                                  ; $60d5: $f0 $e1
    rrca                                          ; $60d7: $0f
    ld h, l                                       ; $60d8: $65
    pop bc                                        ; $60d9: $c1
    or [hl]                                       ; $60da: $b6
    ldh [$fe], a                                  ; $60db: $e0 $fe
    push hl                                       ; $60dd: $e5
    xor b                                         ; $60de: $a8
    pop hl                                        ; $60df: $e1
    nop                                           ; $60e0: $00
    rst $38                                       ; $60e1: $ff
    db $e3                                        ; $60e2: $e3
    rst $38                                       ; $60e3: $ff
    rst $38                                       ; $60e4: $ff
    ld b, e                                       ; $60e5: $43
    rst $38                                       ; $60e6: $ff
    add d                                         ; $60e7: $82
    rst $38                                       ; $60e8: $ff
    ld b, [hl]                                    ; $60e9: $46
    rst $38                                       ; $60ea: $ff
    add [hl]                                      ; $60eb: $86
    ccf                                           ; $60ec: $3f
    rst $38                                       ; $60ed: $ff
    inc b                                         ; $60ee: $04
    rst $38                                       ; $60ef: $ff
    adc h                                         ; $60f0: $8c
    rst $38                                       ; $60f1: $ff
    call z, $dece                                 ; $60f2: $cc $ce $de
    call z, $f7e1                                 ; $60f5: $cc $e1 $f7
    ld bc, $02ff                                  ; $60f8: $01 $ff $02
    ld l, h                                       ; $60fb: $6c
    ld [c], a                                     ; $60fc: $e2
    dec b                                         ; $60fd: $05
    rst $38                                       ; $60fe: $ff
    inc bc                                        ; $60ff: $03
    ldh [rIE], a                                  ; $6100: $e0 $ff
    ld h, b                                       ; $6102: $60
    ldh [$e0], a                                  ; $6103: $e0 $e0
    ret nz                                        ; $6105: $c0

    ld b, b                                       ; $6106: $40
    ret nz                                        ; $6107: $c0

    ret nz                                        ; $6108: $c0

    add b                                         ; $6109: $80
    and b                                         ; $610a: $a0
    rst $38                                       ; $610b: $ff
    ld [c], a                                     ; $610c: $e2
    ld a, [$ffdf]                                 ; $610d: $fa $df $ff
    rst $38                                       ; $6110: $ff
    db $ec                                        ; $6111: $ec
    db $eb                                        ; $6112: $eb
    and b                                         ; $6113: $a0
    and d                                         ; $6114: $a2

jr_00a_6115:
    jr jr_00a_6115                                ; $6115: $18 $fe

    rst $20                                       ; $6117: $e7
    push de                                       ; $6118: $d5
    ld a, a                                       ; $6119: $7f
    ld a, [hl+]                                   ; $611a: $2a
    ld [c], a                                     ; $611b: $e2
    dec e                                         ; $611c: $1d
    push de                                       ; $611d: $d5
    ld a, [hl+]                                   ; $611e: $2a
    db $eb                                        ; $611f: $eb

jr_00a_6120:
    inc d                                         ; $6120: $14
    ld h, $df                                     ; $6121: $26 $df
    cp [hl]                                       ; $6123: $be
    xor $ee                                       ; $6124: $ee $ee
    ld sp, $37ff                                  ; $6126: $31 $ff $37
    rst $38                                       ; $6129: $ff
    ccf                                           ; $612a: $3f
    or [hl]                                       ; $612b: $b6
    ret nz                                        ; $612c: $c0

    rlca                                          ; $612d: $07
    adc a                                         ; $612e: $8f
    rst $38                                       ; $612f: $ff
    rrca                                          ; $6130: $0f
    rst $38                                       ; $6131: $ff
    rra                                           ; $6132: $1f
    xor e                                         ; $6133: $ab
    and c                                         ; $6134: $a1
    add [hl]                                      ; $6135: $86
    jp nz, $a1a6                                  ; $6136: $c2 $a6 $a1

    db $fc                                        ; $6139: $fc
    add d                                         ; $613a: $82
    sub b                                         ; $613b: $90
    ret nz                                        ; $613c: $c0

    ld hl, sp-$74                                 ; $613d: $f8 $8c
    ret nz                                        ; $613f: $c0

    sbc d                                         ; $6140: $9a
    and c                                         ; $6141: $a1
    cp b                                          ; $6142: $b8
    rst $38                                       ; $6143: $ff
    ld hl, sp-$3b                                 ; $6144: $f8 $c5
    cp $e3                                        ; $6146: $fe $e3
    ld [$ffff], sp                                ; $6148: $08 $ff $ff
    ld a, b                                       ; $614b: $78
    rst $38                                       ; $614c: $ff
    ld hl, sp-$21                                 ; $614d: $f8 $df
    ret c                                         ; $614f: $d8

    sbc a                                         ; $6150: $9f
    sub b                                         ; $6151: $90
    cp a                                          ; $6152: $bf
    sbc a                                         ; $6153: $9f
    sub b                                         ; $6154: $90
    rra                                           ; $6155: $1f
    db $10                                        ; $6156: $10
    rra                                           ; $6157: $1f
    jr jr_00a_6120                                ; $6158: $18 $c6

    cp $07                                        ; $615a: $fe $07
    rst $38                                       ; $615c: $ff
    cp $0a                                        ; $615d: $fe $0a
    cp $06                                        ; $615f: $fe $06
    cp $0e                                        ; $6161: $fe $0e
    db $fc                                        ; $6163: $fc
    inc d                                         ; $6164: $14
    cp a                                          ; $6165: $bf
    db $fc                                        ; $6166: $fc
    inc c                                         ; $6167: $0c
    db $fc                                        ; $6168: $fc
    inc e                                         ; $6169: $1c
    ld hl, sp+$28                                 ; $616a: $f8 $28
    xor c                                         ; $616c: $a9
    add e                                         ; $616d: $83
    inc bc                                        ; $616e: $03
    rst $38                                       ; $616f: $ff
    nop                                           ; $6170: $00
    rrca                                          ; $6171: $0f
    nop                                           ; $6172: $00
    ld a, [hl-]                                   ; $6173: $3a
    dec b                                         ; $6174: $05
    ld [hl], l                                    ; $6175: $75
    ld a, [bc]                                    ; $6176: $0a
    ld [$15fd], a                                 ; $6177: $ea $fd $15
    sbc c                                         ; $617a: $99
    add c                                         ; $617b: $81
    rra                                           ; $617c: $1f
    nop                                           ; $617d: $00
    ldh [$1f], a                                  ; $617e: $e0 $1f
    ld b, b                                       ; $6180: $40
    cp a                                          ; $6181: $bf
    di                                            ; $6182: $f3
    add b                                         ; $6183: $80
    ld a, a                                       ; $6184: $7f
    or l                                          ; $6185: $b5
    add d                                         ; $6186: $82
    adc b                                         ; $6187: $88
    add b                                         ; $6188: $80

jr_00a_6189:
    ldh [rP1], a                                  ; $6189: $e0 $00
    ld e, $e0                                     ; $618b: $1e $e0
    or $32                                        ; $618d: $f6 $32
    jp $fc03                                      ; $618f: $c3 $03 $fc


    adc $c5                                       ; $6192: $ce $c5
    add b                                         ; $6194: $80
    nop                                           ; $6195: $00
    ld h, b                                       ; $6196: $60
    add b                                         ; $6197: $80
    rst $08                                       ; $6198: $cf
    ldh a, [rP1]                                  ; $6199: $f0 $00
    ld hl, sp-$20                                 ; $619b: $f8 $e0
    ret nz                                        ; $619d: $c0

    rst $18                                       ; $619e: $df
    ld e, [hl]                                    ; $619f: $5e
    add c                                         ; $61a0: $81
    rlca                                          ; $61a1: $07
    ld b, $1f                                     ; $61a2: $06 $1f
    rlca                                          ; $61a4: $07
    ld b, $03                                     ; $61a5: $06 $03
    inc bc                                        ; $61a7: $03
    ld bc, $803b                                  ; $61a8: $01 $3b $80
    ld h, d                                       ; $61ab: $62
    adc e                                         ; $61ac: $8b
    add d                                         ; $61ad: $82
    add b                                         ; $61ae: $80
    add h                                         ; $61af: $84
    jr jr_00a_6189                                ; $61b0: $18 $d7

    sub $c3                                       ; $61b2: $d6 $c3
    ld a, a                                       ; $61b4: $7f
    sub $c6                                       ; $61b5: $d6 $c6
    ld sp, hl                                     ; $61b7: $f9
    pop af                                        ; $61b8: $f1
    call z, $c0c3                                 ; $61b9: $cc $c3 $c0
    jp Jump_000_3cf0                              ; $61bc: $c3 $f0 $3c


    sub b                                         ; $61bf: $90
    sbc a                                         ; $61c0: $9f
    dec a                                         ; $61c1: $3d
    pop hl                                        ; $61c2: $e1
    rst $38                                       ; $61c3: $ff
    inc bc                                        ; $61c4: $03
    cp $02                                        ; $61c5: $fe $02
    cp $c0                                        ; $61c7: $fe $c0
    db $fc                                        ; $61c9: $fc
    pop bc                                        ; $61ca: $c1
    cp $fe                                        ; $61cb: $fe $fe
    ret nz                                        ; $61cd: $c0

    cpl                                           ; $61ce: $2f
    ld [$0c2f], sp                                ; $61cf: $08 $2f $0c
    rla                                           ; $61d2: $17
    ld b, $1b                                     ; $61d3: $06 $1b
    rst $08                                       ; $61d5: $cf
    inc bc                                        ; $61d6: $03
    dec c                                         ; $61d7: $0d
    ld bc, $9e02                                  ; $61d8: $01 $02 $9e
    ld h, d                                       ; $61db: $62
    ret nz                                        ; $61dc: $c0

    ld h, [hl]                                    ; $61dd: $66
    ret nz                                        ; $61de: $c0

    ld a, a                                       ; $61df: $7f
    rst $18                                       ; $61e0: $df
    ld [hl], b                                    ; $61e1: $70
    rra                                           ; $61e2: $1f
    inc e                                         ; $61e3: $1c
    rlca                                          ; $61e4: $07
    rlca                                          ; $61e5: $07
    or b                                          ; $61e6: $b0
    ld l, l                                       ; $61e7: $6d
    ld sp, hl                                     ; $61e8: $f9
    add hl, de                                    ; $61e9: $19
    rst $38                                       ; $61ea: $ff
    ld sp, hl                                     ; $61eb: $f9
    add hl, sp                                    ; $61ec: $39
    di                                            ; $61ed: $f3
    ld d, e                                       ; $61ee: $53
    di                                            ; $61ef: $f3
    inc sp                                        ; $61f0: $33
    ei                                            ; $61f1: $fb
    ld a, e                                       ; $61f2: $7b
    rst $38                                       ; $61f3: $ff
    cp $be                                        ; $61f4: $fe $be
    rst $38                                       ; $61f6: $ff
    ld a, a                                       ; $61f7: $7f
    cp $fe                                        ; $61f8: $fe $fe
    call nc, $ff2b                                ; $61fa: $d4 $2b $ff
    xor b                                         ; $61fd: $a8
    ld d, a                                       ; $61fe: $57
    ld d, h                                       ; $61ff: $54
    xor e                                         ; $6200: $ab
    xor b                                         ; $6201: $a8
    ld d, a                                       ; $6202: $57
    ld d, b                                       ; $6203: $50
    xor a                                         ; $6204: $af
    or $fc                                        ; $6205: $f6 $fc
    pop hl                                        ; $6207: $e1
    and a                                         ; $6208: $a7
    ld e, b                                       ; $6209: $58
    ld e, c                                       ; $620a: $59
    and [hl]                                      ; $620b: $a6
    cp $1e                                        ; $620c: $fe $1e
    pop hl                                        ; $620e: $e1
    pop hl                                        ; $620f: $e1
    rst $38                                       ; $6210: $ff
    ld e, $07                                     ; $6211: $1e $07
    ld hl, sp+$07                                 ; $6213: $f8 $07
    ei                                            ; $6215: $fb
    rrca                                          ; $6216: $0f
    rst $30                                       ; $6217: $f7
    ld c, $fe                                     ; $6218: $0e $fe
    cp $e0                                        ; $621a: $fe $e0
    cp $01                                        ; $621c: $fe $01
    ld bc, $c0fe                                  ; $621e: $01 $fe $c0
    ccf                                           ; $6221: $3f
    ldh [rIE], a                                  ; $6222: $e0 $ff
    rra                                           ; $6224: $1f
    inc a                                         ; $6225: $3c
    ldh a, [$3e]                                  ; $6226: $f0 $3e
    ld hl, sp+$7e                                 ; $6228: $f8 $7e
    ld hl, sp+$7d                                 ; $622a: $f8 $7d
    rst $38                                       ; $622c: $ff
    ld a, [$fa0d]                                 ; $622d: $fa $0d $fa
    call Call_00a_797a                            ; $6230: $cd $7a $79
    sub [hl]                                      ; $6233: $96
    ld a, [de]                                    ; $6234: $1a
    ld a, c                                       ; $6235: $79
    db $e4                                        ; $6236: $e4
    ld a, [hl]                                    ; $6237: $7e
    cp a                                          ; $6238: $bf
    db $ec                                        ; $6239: $ec
    db $eb                                        ; $623a: $eb
    ld a, a                                       ; $623b: $7f
    ld h, b                                       ; $623c: $60
    ccf                                           ; $623d: $3f
    jr c, jr_00a_6252                             ; $623e: $38 $12

    ld h, l                                       ; $6240: $65
    and b                                         ; $6241: $a0
    jr c, jr_00a_62a5                             ; $6242: $38 $61

    inc l                                         ; $6244: $2c
    jp $c8de                                      ; $6245: $c3 $de $c8


    and [hl]                                      ; $6248: $a6
    and a                                         ; $6249: $a7
    ret                                           ; $624a: $c9


    call Call_00a_6cfe                            ; $624b: $cd $fe $6c
    ld h, b                                       ; $624e: $60
    add e                                         ; $624f: $83
    cp $96                                        ; $6250: $fe $96

jr_00a_6252:
    and d                                         ; $6252: $a2
    pop af                                        ; $6253: $f1
    rst $38                                       ; $6254: $ff
    db $e3                                        ; $6255: $e3
    db $fc                                        ; $6256: $fc
    adc a                                         ; $6257: $8f
    ldh a, [$3f]                                  ; $6258: $f0 $3f
    rst $20                                       ; $625a: $e7
    ret nz                                        ; $625b: $c0

    rst $38                                       ; $625c: $ff
    ld [bc], a                                    ; $625d: $02
    sub b                                         ; $625e: $90
    and e                                         ; $625f: $a3
    ld d, b                                       ; $6260: $50
    ld h, b                                       ; $6261: $60
    ld a, a                                       ; $6262: $7f
    ldh [$7f], a                                  ; $6263: $e0 $7f
    sbc a                                         ; $6265: $9f
    ldh [$bf], a                                  ; $6266: $e0 $bf
    and b                                         ; $6268: $a0
    ccf                                           ; $6269: $3f
    jr nc, jr_00a_62dc                            ; $626a: $30 $70

    db $dd                                        ; $626c: $dd
    ld d, b                                       ; $626d: $50
    ld h, b                                       ; $626e: $60
    inc a                                         ; $626f: $3c
    rst $30                                       ; $6270: $f7
    db $fc                                        ; $6271: $fc
    ld a, h                                       ; $6272: $7c
    db $fc                                        ; $6273: $fc
    rst $38                                       ; $6274: $ff
    ldh [$d8], a                                  ; $6275: $e0 $d8
    ret c                                         ; $6277: $d8

    cp h                                          ; $6278: $bc
    cp h                                          ; $6279: $bc
    ld h, c                                       ; $627a: $61
    ld e, b                                       ; $627b: $58
    db $10                                        ; $627c: $10
    and $08                                       ; $627d: $e6 $08
    rst $20                                       ; $627f: $e7
    ld a, a                                       ; $6280: $7f
    ld c, e                                       ; $6281: $4b
    ldh [$61], a                                  ; $6282: $e0 $61
    rlca                                          ; $6284: $07
    ld hl, sp+$6b                                 ; $6285: $f8 $6b
    ld b, c                                       ; $6287: $41
    db $eb                                        ; $6288: $eb
    dec d                                         ; $6289: $15
    ld [$e1fc], a                                 ; $628a: $ea $fc $e1
    ei                                            ; $628d: $fb
    rst $38                                       ; $628e: $ff
    ldh [$f3], a                                  ; $628f: $e0 $f3
    di                                            ; $6291: $f3
    rlca                                          ; $6292: $07
    rst $38                                       ; $6293: $ff
    rlca                                          ; $6294: $07
    cpl                                           ; $6295: $2f
    inc l                                         ; $6296: $2c
    ld e, a                                       ; $6297: $5f
    ld e, h                                       ; $6298: $5c
    xor a                                         ; $6299: $af
    xor h                                         ; $629a: $ac
    ld e, a                                       ; $629b: $5f
    rst $38                                       ; $629c: $ff
    ld e, e                                       ; $629d: $5b
    ld e, h                                       ; $629e: $5c
    and b                                         ; $629f: $a0
    cp h                                          ; $62a0: $bc
    ld b, b                                       ; $62a1: $40
    ld a, h                                       ; $62a2: $7c
    add b                                         ; $62a3: $80
    db $fc                                        ; $62a4: $fc

jr_00a_62a5:
    rst $28                                       ; $62a5: $ef
    nop                                           ; $62a6: $00
    ld a, h                                       ; $62a7: $7c
    nop                                           ; $62a8: $00
    inc a                                         ; $62a9: $3c
    cp $e0                                        ; $62aa: $fe $e0
    ld e, $00                                     ; $62ac: $1e $00
    rst $08                                       ; $62ae: $cf
    ld sp, hl                                     ; $62af: $f9
    rst $08                                       ; $62b0: $cf
    or h                                          ; $62b1: $b4
    ld h, b                                       ; $62b2: $60
    sub a                                         ; $62b3: $97
    and c                                         ; $62b4: $a1
    inc b                                         ; $62b5: $04
    cp $0e                                        ; $62b6: $fe $0e
    cp $1e                                        ; $62b8: $fe $1e
    rst $38                                       ; $62ba: $ff
    or $1e                                        ; $62bb: $f6 $1e
    ldh a, [rIF]                                  ; $62bd: $f0 $0f
    ld a, h                                       ; $62bf: $7c

jr_00a_62c0:
    inc bc                                        ; $62c0: $03
    inc de                                        ; $62c1: $13
    nop                                           ; $62c2: $00
    cp a                                          ; $62c3: $bf
    sub b                                         ; $62c4: $90
    nop                                           ; $62c5: $00
    ret nz                                        ; $62c6: $c0

    add b                                         ; $62c7: $80
    ld h, b                                       ; $62c8: $60
    ret nz                                        ; $62c9: $c0

    cp $e1                                        ; $62ca: $fe $e1
    ld hl, sp-$11                                 ; $62cc: $f8 $ef
    cp $fc                                        ; $62ce: $fe $fc
    cp $fe                                        ; $62d0: $fe $fe
    ld l, [hl]                                    ; $62d2: $6e
    ld b, b                                       ; $62d3: $40
    add a                                         ; $62d4: $87
    ld a, a                                       ; $62d5: $7f
    inc bc                                        ; $62d6: $03
    ld e, a                                       ; $62d7: $5f
    rst $38                                       ; $62d8: $ff
    db $e3                                        ; $62d9: $e3
    rra                                           ; $62da: $1f
    inc sp                                        ; $62db: $33

jr_00a_62dc:
    rst $08                                       ; $62dc: $cf
    adc $cb                                       ; $62dd: $ce $cb
    ld b, b                                       ; $62df: $40
    ret nc                                        ; $62e0: $d0

    jr nz, jr_00a_62c0                            ; $62e1: $20 $dd

    inc bc                                        ; $62e3: $03
    call z, Call_000_0720                         ; $62e4: $cc $20 $07
    nop                                           ; $62e7: $00
    dec bc                                        ; $62e8: $0b
    db $fc                                        ; $62e9: $fc
    ldh [rNR22], a                                ; $62ea: $e0 $17
    nop                                           ; $62ec: $00
    db $dd                                        ; $62ed: $dd
    cpl                                           ; $62ee: $2f
    ld d, [hl]                                    ; $62ef: $56
    and d                                         ; $62f0: $a2
    and b                                         ; $62f1: $a0
    nop                                           ; $62f2: $00
    ret nz                                        ; $62f3: $c0

    inc a                                         ; $62f4: $3c
    and b                                         ; $62f5: $a0
    ret nz                                        ; $62f6: $c0

    nop                                           ; $62f7: $00
    sub a                                         ; $62f8: $97
    xor b                                         ; $62f9: $a8
    nop                                           ; $62fa: $00
    call nc, $a018                                ; $62fb: $d4 $18 $a0
    inc bc                                        ; $62fe: $03
    sbc e                                         ; $62ff: $9b
    jp z, Jump_000_2088                           ; $6300: $ca $88 $20

    ei                                            ; $6303: $fb
    cp a                                          ; $6304: $bf
    rst $38                                       ; $6305: $ff
    ldh a, [$3f]                                  ; $6306: $f0 $3f
    jr nc, jr_00a_6329                            ; $6308: $30 $1f

    jr jr_00a_6366                                ; $630a: $18 $5a

    and b                                         ; $630c: $a0
    rlca                                          ; $630d: $07
    db $eb                                        ; $630e: $eb
    inc bc                                        ; $630f: $03
    inc bc                                        ; $6310: $03
    ld l, [hl]                                    ; $6311: $6e
    add d                                         ; $6312: $82
    ld hl, sp-$06                                 ; $6313: $f8 $fa
    and a                                         ; $6315: $a7
    db $fc                                        ; $6316: $fc
    rrca                                          ; $6317: $0f

jr_00a_6318:
    ld hl, sp-$29                                 ; $6318: $f8 $d7
    ccf                                           ; $631a: $3f
    db $fc                                        ; $631b: $fc

jr_00a_631c:
    rst $38                                       ; $631c: $ff
    ld c, [hl]                                    ; $631d: $4e
    add b                                         ; $631e: $80
    rlca                                          ; $631f: $07
    ld d, d                                       ; $6320: $52
    ld h, d                                       ; $6321: $62
    nop                                           ; $6322: $00
    inc c                                         ; $6323: $0c
    rst $20                                       ; $6324: $e7
    db $fc                                        ; $6325: $fc
    jr nc, jr_00a_6318                            ; $6326: $30 $f0

    adc [hl]                                      ; $6328: $8e

jr_00a_6329:
    ld h, b                                       ; $6329: $60
    rst $38                                       ; $632a: $ff
    ld [c], a                                     ; $632b: $e2
    ldh [$e0], a                                  ; $632c: $e0 $e0
    ld hl, sp-$07                                 ; $632e: $f8 $f9
    jr c, @-$72                                   ; $6330: $38 $8c

    add b                                         ; $6332: $80
    cp $e4                                        ; $6333: $fe $e4
    ccf                                           ; $6335: $3f
    jr nz, jr_00a_6377                            ; $6336: $20 $3f

    jr nz, jr_00a_63b9                            ; $6338: $20 $7f

    ld sp, hl                                     ; $633a: $f9
    ld b, b                                       ; $633b: $40
    ld h, d                                       ; $633c: $62
    adc b                                         ; $633d: $88
    sub [hl]                                      ; $633e: $96
    and c                                         ; $633f: $a1
    ld b, $fe                                     ; $6340: $06 $fe
    ld a, $f5                                     ; $6342: $3e $f5
    ld [hl], l                                    ; $6344: $75
    di                                            ; $6345: $f3
    add sp, -$18                                  ; $6346: $e8 $e8
    ld h, b                                       ; $6348: $60
    ld h, c                                       ; $6349: $61
    ccf                                           ; $634a: $3f
    inc hl                                        ; $634b: $23
    sbc h                                         ; $634c: $9c
    ld h, e                                       ; $634d: $63
    jr @-$17                                      ; $634e: $18 $e7

    ccf                                           ; $6350: $3f
    inc e                                         ; $6351: $1c
    db $e3                                        ; $6352: $e3
    jr c, jr_00a_631c                             ; $6353: $38 $c7

    inc [hl]                                      ; $6355: $34
    set 7, h                                      ; $6356: $cb $fc
    db $e3                                        ; $6358: $e3
    ld c, a                                       ; $6359: $4f
    cp a                                          ; $635a: $bf
    cp a                                          ; $635b: $bf
    dec d                                         ; $635c: $15
    ld [$fd02], a                                 ; $635d: $ea $02 $fd
    ld d, l                                       ; $6360: $55
    xor d                                         ; $6361: $aa
    db $fc                                        ; $6362: $fc
    push hl                                       ; $6363: $e5
    ld sp, hl                                     ; $6364: $f9
    rst $38                                       ; $6365: $ff

jr_00a_6366:
    cp a                                          ; $6366: $bf
    ldh a, [$7f]                                  ; $6367: $f0 $7f
    ldh a, [$bf]                                  ; $6369: $f0 $bf
    db $e3                                        ; $636b: $e3
    ld a, a                                       ; $636c: $7f
    ldh [rIE], a                                  ; $636d: $e0 $ff
    rst $38                                       ; $636f: $ff
    ldh a, [$7f]                                  ; $6370: $f0 $7f
    ret nc                                        ; $6372: $d0

    rst $18                                       ; $6373: $df
    ret z                                         ; $6374: $c8

    rst $08                                       ; $6375: $cf
    sbc [hl]                                      ; $6376: $9e

jr_00a_6377:
    cp a                                          ; $6377: $bf
    nop                                           ; $6378: $00
    sbc a                                         ; $6379: $9f
    nop                                           ; $637a: $00
    sbc [hl]                                      ; $637b: $9e
    nop                                           ; $637c: $00
    adc h                                         ; $637d: $8c
    ld [hl], b                                    ; $637e: $70
    add b                                         ; $637f: $80
    add b                                         ; $6380: $80
    db $fc                                        ; $6381: $fc
    ld [$62e2], sp                                ; $6382: $08 $e2 $62
    ret nz                                        ; $6385: $c0

    inc a                                         ; $6386: $3c
    ld hl, sp+$39                                 ; $6387: $f8 $39
    ldh [rNR44], a                                ; $6389: $e0 $23
    ld sp, hl                                     ; $638b: $f9
    rst $30                                       ; $638c: $f7
    rra                                           ; $638d: $1f
    rst $38                                       ; $638e: $ff
    ld c, $24                                     ; $638f: $0e $24
    ld hl, $e13f                                  ; $6391: $21 $3f $e1
    ld a, a                                       ; $6394: $7f
    jp Jump_00a_7fcf                              ; $6395: $c3 $cf $7f


    jp $87fd                                      ; $6398: $c3 $fd $87


    inc c                                         ; $639b: $0c
    add c                                         ; $639c: $81
    ld a, [hl-]                                   ; $639d: $3a
    ld b, c                                       ; $639e: $41
    cp a                                          ; $639f: $bf
    rst $28                                       ; $63a0: $ef
    rst $38                                       ; $63a1: $ff
    jr jr_00a_63dc                                ; $63a2: $18 $38

    jr @+$3a                                      ; $63a4: $18 $38

    db $10                                        ; $63a6: $10
    jr nc, jr_00a_63c9                            ; $63a7: $30 $20

    ld h, b                                       ; $63a9: $60
    ld d, a                                       ; $63aa: $57
    jr nz, jr_00a_640d                            ; $63ab: $20 $60

    ld b, b                                       ; $63ad: $40
    jp z, Jump_00a_6040                           ; $63ae: $ca $40 $60

    db $ec                                        ; $63b1: $ec
    ret nz                                        ; $63b2: $c0

    ld sp, hl                                     ; $63b3: $f9
    add d                                         ; $63b4: $82
    ret nz                                        ; $63b5: $c0

    rst $38                                       ; $63b6: $ff
    cp c                                          ; $63b7: $b9
    nop                                           ; $63b8: $00

jr_00a_63b9:
    db $fc                                        ; $63b9: $fc
    nop                                           ; $63ba: $00
    ld a, [$fe00]                                 ; $63bb: $fa $00 $fe
    nop                                           ; $63be: $00
    ld a, a                                       ; $63bf: $7f
    ld a, a                                       ; $63c0: $7f
    nop                                           ; $63c1: $00
    ccf                                           ; $63c2: $3f
    nop                                           ; $63c3: $00
    ld e, a                                       ; $63c4: $5f
    nop                                           ; $63c5: $00
    rst $10                                       ; $63c6: $d7
    cp d                                          ; $63c7: $ba
    ld [bc], a                                    ; $63c8: $02

jr_00a_63c9:
    ld a, [$61ff]                                 ; $63c9: $fa $ff $61
    ld hl, sp-$02                                 ; $63cc: $f8 $fe
    ldh [$f4], a                                  ; $63ce: $e0 $f4
    nop                                           ; $63d0: $00
    add sp, $00                                   ; $63d1: $e8 $00
    db $fd                                        ; $63d3: $fd
    ld a, h                                       ; $63d4: $7c
    ld a, [c]                                     ; $63d5: $f2
    inc hl                                        ; $63d6: $23
    ld a, d                                       ; $63d7: $7a
    ld [bc], a                                    ; $63d8: $02
    ld [$1800], sp                                ; $63d9: $08 $00 $18

jr_00a_63dc:
    nop                                           ; $63dc: $00
    ld l, $50                                     ; $63dd: $2e $50
    ret nz                                        ; $63df: $c0

    rst $20                                       ; $63e0: $e7
    sbc $00                                       ; $63e1: $de $00
    cp [hl]                                       ; $63e3: $be
    ld c, a                                       ; $63e4: $4f
    xor [hl]                                      ; $63e5: $ae
    or h                                          ; $63e6: $b4
    ret nz                                        ; $63e7: $c0

    ld a, $0f                                     ; $63e8: $3e $0f
    rrca                                          ; $63ea: $0f
    ld hl, sp+$16                                 ; $63eb: $f8 $16
    add c                                         ; $63ed: $81
    and b                                         ; $63ee: $a0
    call nz, Call_000_0170                        ; $63ef: $c4 $70 $01
    ld hl, sp-$01                                 ; $63f2: $f8 $ff
    cp $07                                        ; $63f4: $fe $07
    rlca                                          ; $63f6: $07
    xor b                                         ; $63f7: $a8
    add b                                         ; $63f8: $80
    ld [hl+], a                                   ; $63f9: $22
    inc b                                         ; $63fa: $04
    ld h, c                                       ; $63fb: $61
    sbc b                                         ; $63fc: $98
    dec h                                         ; $63fd: $25
    ldh [$9a], a                                  ; $63fe: $e0 $9a
    jr nz, @+$01                                  ; $6400: $20 $ff

    ld c, h                                       ; $6402: $4c
    adc b                                         ; $6403: $88
    inc bc                                        ; $6404: $03
    rst $28                                       ; $6405: $ef
    rst $38                                       ; $6406: $ff
    rra                                           ; $6407: $1f
    cp $fe                                        ; $6408: $fe $fe
    ld h, [hl]                                    ; $640a: $66
    ld h, b                                       ; $640b: $60
    inc e                                         ; $640c: $1c

jr_00a_640d:
    ld hl, sp+$38                                 ; $640d: $f8 $38
    ei                                            ; $640f: $fb
    ldh a, [rSVBK]                                ; $6410: $f0 $70
    dec de                                        ; $6412: $1b
    ret nz                                        ; $6413: $c0

    rst $38                                       ; $6414: $ff
    ld e, a                                       ; $6415: $5f
    ld e, a                                       ; $6416: $5f
    xor [hl]                                      ; $6417: $ae
    xor [hl]                                      ; $6418: $ae
    cp $ee                                        ; $6419: $fe $ee
    add a                                         ; $641b: $87
    ret nz                                        ; $641c: $c0

    ret nz                                        ; $641d: $c0

    ld sp, hl                                     ; $641e: $f9
    ld sp, hl                                     ; $641f: $f9
    cp a                                          ; $6420: $bf
    cp a                                          ; $6421: $bf
    inc [hl]                                      ; $6422: $34
    rst $38                                       ; $6423: $ff
    bit 5, b                                      ; $6424: $cb $68
    sub a                                         ; $6426: $97
    ld [hl], b                                    ; $6427: $70
    adc a                                         ; $6428: $8f
    ld h, b                                       ; $6429: $60
    sbc a                                         ; $642a: $9f
    ret nc                                        ; $642b: $d0

    ld a, a                                       ; $642c: $7f
    cpl                                           ; $642d: $2f
    ldh [$1f], a                                  ; $642e: $e0 $1f
    ret nz                                        ; $6430: $c0

    ccf                                           ; $6431: $3f
    and b                                         ; $6432: $a0

jr_00a_6433:
    ld e, a                                       ; $6433: $5f
    rst $18                                       ; $6434: $df
    jr nc, jr_00a_6433                            ; $6435: $30 $fc

    adc b                                         ; $6437: $88
    jr nz, @-$02                                  ; $6438: $20 $fc

    rst $20                                       ; $643a: $e7
    ld a, [bc]                                    ; $643b: $0a
    push af                                       ; $643c: $f5
    ld d, l                                       ; $643d: $55
    xor d                                         ; $643e: $aa
    dec bc                                        ; $643f: $0b
    db $f4                                        ; $6440: $f4
    cp a                                          ; $6441: $bf
    ld d, l                                       ; $6442: $55
    xor d                                         ; $6443: $aa
    dec hl                                        ; $6444: $2b
    call nc, $a857                                ; $6445: $d4 $57 $a8
    db $fc                                        ; $6448: $fc
    pop hl                                        ; $6449: $e1
    inc bc                                        ; $644a: $03
    rst $18                                       ; $644b: $df
    call nz, $c300                                ; $644c: $c4 $00 $c3
    nop                                           ; $644f: $00
    add c                                         ; $6450: $81
    cp $e0                                        ; $6451: $fe $e0
    add e                                         ; $6453: $83
    nop                                           ; $6454: $00
    ccf                                           ; $6455: $3f
    rst $00                                       ; $6456: $c7
    nop                                           ; $6457: $00
    rst $08                                       ; $6458: $cf
    nop                                           ; $6459: $00
    rst $28                                       ; $645a: $ef
    rlca                                          ; $645b: $07
    ld b, $60                                     ; $645c: $06 $60
    cp $e1                                        ; $645e: $fe $e1
    add hl, sp                                    ; $6460: $39
    rlca                                          ; $6461: $07
    call z, $e6a0                                 ; $6462: $cc $a0 $e6
    and c                                         ; $6465: $a1
    ldh [rP1], a                                  ; $6466: $e0 $00
    ldh a, [$f8]                                  ; $6468: $f0 $f8
    jp nz, Jump_00a_4544                          ; $646a: $c2 $44 $45

    jp c, $876e                                   ; $646d: $da $6e $87

    add b                                         ; $6470: $80
    ld hl, sp+$40                                 ; $6471: $f8 $40
    rst $38                                       ; $6473: $ff
    nop                                           ; $6474: $00
    sub h                                         ; $6475: $94
    jr nz, jr_00a_64b8                            ; $6476: $20 $40

    ldh [$0d], a                                  ; $6478: $e0 $0d

jr_00a_647a:
    jr nz, jr_00a_647a                            ; $647a: $20 $fe

    pop hl                                        ; $647c: $e1
    ret nz                                        ; $647d: $c0

    ld b, b                                       ; $647e: $40
    sub b                                         ; $647f: $90
    ld hl, $6d8e                                  ; $6480: $21 $8e $6d

jr_00a_6483:
    bit 0, e                                      ; $6483: $cb $43

jr_00a_6485:
    ld b, $49                                     ; $6485: $06 $49
    push bc                                       ; $6487: $c5
    db $fc                                        ; $6488: $fc
    ld a, [$3d2a]                                 ; $6489: $fa $2a $3d
    call c, $a1e6                                 ; $648c: $dc $e6 $a1
    ld b, l                                       ; $648f: $45
    ld b, h                                       ; $6490: $44
    ld hl, $c0c0                                  ; $6491: $21 $c0 $c0
    rst $38                                       ; $6494: $ff
    inc h                                         ; $6495: $24
    inc h                                         ; $6496: $24
    ret                                           ; $6497: $c9


    ret                                           ; $6498: $c9


    or a                                          ; $6499: $b7
    or a                                          ; $649a: $b7
    rst $18                                       ; $649b: $df
    rst $18                                       ; $649c: $df
    cp $50                                        ; $649d: $fe $50
    add hl, bc                                    ; $649f: $09
    ld bc, $a301                                  ; $64a0: $01 $01 $a3
    and e                                         ; $64a3: $a3
    ld e, $01                                     ; $64a4: $1e $01
    jr c, jr_00a_6483                             ; $64a6: $38 $db

    rlca                                          ; $64a8: $07
    ld h, b                                       ; $64a9: $60
    ld d, $e0                                     ; $64aa: $16 $e0
    add b                                         ; $64ac: $80
    ld a, a                                       ; $64ad: $7f
    ld [hl], b                                    ; $64ae: $70
    ld b, e                                       ; $64af: $43
    rst $00                                       ; $64b0: $c7
    jr c, @+$01                                   ; $64b1: $38 $ff

    ret nz                                        ; $64b3: $c0

    ccf                                           ; $64b4: $3f
    pop bc                                        ; $64b5: $c1
    ld a, $c1                                     ; $64b6: $3e $c1

jr_00a_64b8:
    ld a, $c3                                     ; $64b8: $3e $c3
    inc a                                         ; $64ba: $3c
    rst $38                                       ; $64bb: $ff
    rst $00                                       ; $64bc: $c7
    jr c, jr_00a_6485                             ; $64bd: $38 $c6

    add hl, sp                                    ; $64bf: $39
    call $f532                                    ; $64c0: $cd $32 $f5
    ld a, [bc]                                    ; $64c3: $0a
    rst $38                                       ; $64c4: $ff
    ld a, [$bc05]                                 ; $64c5: $fa $05 $bc
    ld b, e                                       ; $64c8: $43
    ld e, b                                       ; $64c9: $58
    and a                                         ; $64ca: $a7
    cp b                                          ; $64cb: $b8
    ld b, a                                       ; $64cc: $47
    cp $fc                                        ; $64cd: $fe $fc
    pop hl                                        ; $64cf: $e1
    ld e, h                                       ; $64d0: $5c
    and e                                         ; $64d1: $a3
    ld d, a                                       ; $64d2: $57
    xor b                                         ; $64d3: $a8
    ld l, $d1                                     ; $64d4: $2e $d1
    ld b, $df                                     ; $64d6: $06 $df
    ld sp, hl                                     ; $64d8: $f9
    rlca                                          ; $64d9: $07
    ld hl, sp+$03                                 ; $64da: $f8 $03
    db $fc                                        ; $64dc: $fc
    cp $e3                                        ; $64dd: $fe $e3
    ld e, a                                       ; $64df: $5f
    and b                                         ; $64e0: $a0
    inc bc                                        ; $64e1: $03
    xor d                                         ; $64e2: $aa
    ld d, l                                       ; $64e3: $55
    dec h                                         ; $64e4: $25
    ld b, $bc                                     ; $64e5: $06 $bc
    ldh [$b6], a                                  ; $64e7: $e0 $b6
    pop hl                                        ; $64e9: $e1
    sbc a                                         ; $64ea: $9f
    inc e                                         ; $64eb: $1c
    ret nz                                        ; $64ec: $c0

    call nz, $2343                                ; $64ed: $c4 $43 $23
    adc a                                         ; $64f0: $8f
    ld l, $d1                                     ; $64f1: $2e $d1
    ld d, l                                       ; $64f3: $55
    xor d                                         ; $64f4: $aa
    db $fc                                        ; $64f5: $fc
    pop hl                                        ; $64f6: $e1
    cp b                                          ; $64f7: $b8
    pop bc                                        ; $64f8: $c1
    inc a                                         ; $64f9: $3c
    add c                                         ; $64fa: $81
    rst $20                                       ; $64fb: $e7
    rst $38                                       ; $64fc: $ff
    rst $20                                       ; $64fd: $e7
    ld a, [c]                                     ; $64fe: $f2
    ld [hl], e                                    ; $64ff: $73
    ld a, [c]                                     ; $6500: $f2
    or e                                          ; $6501: $b3
    ld a, [$fc5b]                                 ; $6502: $fa $5b $fc
    ld a, a                                       ; $6505: $7f
    cp a                                          ; $6506: $bf
    db $fc                                        ; $6507: $fc
    ld e, a                                       ; $6508: $5f
    db $fc                                        ; $6509: $fc
    xor a                                         ; $650a: $af
    cp $57                                        ; $650b: $fe $57
    ld [$f9a2], a                                 ; $650d: $ea $a2 $f9
    ld bc, $e3fe                                  ; $6510: $01 $fe $e3
    db $10                                        ; $6513: $10
    ld hl, $bfe1                                  ; $6514: $21 $e1 $bf
    pop af                                        ; $6517: $f1
    sbc a                                         ; $6518: $9f
    ld hl, sp-$01                                 ; $6519: $f8 $ff
    rrca                                          ; $651b: $0f
    cp $07                                        ; $651c: $fe $07
    ld hl, sp+$0f                                 ; $651e: $f8 $0f
    pop af                                        ; $6520: $f1
    ccf                                           ; $6521: $3f
    jp nz, $fefb                                  ; $6522: $c2 $fb $fe

    inc b                                         ; $6525: $04
    ld d, e                                       ; $6526: $53
    add b                                         ; $6527: $80
    cp $fe                                        ; $6528: $fe $fe
    db $fc                                        ; $652a: $fc
    db $fc                                        ; $652b: $fc
    ld hl, sp+$7d                                 ; $652c: $f8 $7d
    ld a, b                                       ; $652e: $78
    ld h, h                                       ; $652f: $64
    db $10                                        ; $6530: $10
    ld [$1c00], sp                                ; $6531: $08 $00 $1c
    nop                                           ; $6534: $00
    ld [$5f4e], sp                                ; $6535: $08 $4e $5f
    cp h                                          ; $6538: $bc
    cp $ff                                        ; $6539: $fe $ff
    sbc b                                         ; $653b: $98
    add hl, bc                                    ; $653c: $09
    ld a, [c]                                     ; $653d: $f2
    ld bc, $01f6                                  ; $653e: $01 $f6 $01
    dec b                                         ; $6541: $05
    pop hl                                        ; $6542: $e1
    ld hl, sp+$7f                                 ; $6543: $f8 $7f
    rlca                                          ; $6545: $07
    ldh a, [rIF]                                  ; $6546: $f0 $0f
    ldh a, [rIF]                                  ; $6548: $f0 $0f
    ldh [$1f], a                                  ; $654a: $e0 $1f
    ld a, l                                       ; $654c: $7d
    dec b                                         ; $654d: $05
    rst $28                                       ; $654e: $ef
    inc b                                         ; $654f: $04
    ei                                            ; $6550: $fb
    inc c                                         ; $6551: $0c
    di                                            ; $6552: $f3
    cp $e1                                        ; $6553: $fe $e1
    jp c, $f025                                   ; $6555: $da $25 $f0

    rst $20                                       ; $6558: $e7
    rrca                                          ; $6559: $0f
    ld h, b                                       ; $655a: $60
    sbc a                                         ; $655b: $9f
    ld h, a                                       ; $655c: $67
    rlca                                          ; $655d: $07
    ld [$0ce3], a                                 ; $655e: $ea $e3 $0c
    di                                            ; $6561: $f3
    ld b, $f1                                     ; $6562: $06 $f1
    ld sp, hl                                     ; $6564: $f9
    cp $e3                                        ; $6565: $fe $e3
    dec [hl]                                      ; $6567: $35
    db $e4                                        ; $6568: $e4
    dec l                                         ; $6569: $2d
    ldh [$03], a                                  ; $656a: $e0 $03
    db $fc                                        ; $656c: $fc
    rrca                                          ; $656d: $0f
    ldh a, [$c3]                                  ; $656e: $f0 $c3
    ld a, $c1                                     ; $6570: $3e $c1
    call z, $fec3                                 ; $6572: $cc $c3 $fe
    db $e3                                        ; $6575: $e3
    add $dd                                       ; $6576: $c6 $dd
    ld c, l                                       ; $6578: $4d
    inc de                                        ; $6579: $13
    dec b                                         ; $657a: $05
    ld a, [$ea7e]                                 ; $657b: $fa $7e $ea
    ld c, c                                       ; $657e: $49
    cpl                                           ; $657f: $2f
    ret nc                                        ; $6580: $d0

    ld d, a                                       ; $6581: $57
    xor b                                         ; $6582: $a8
    dec bc                                        ; $6583: $0b
    db $f4                                        ; $6584: $f4
    db $fc                                        ; $6585: $fc

jr_00a_6586:
    pop hl                                        ; $6586: $e1
    cp $2c                                        ; $6587: $fe $2c
    add e                                         ; $6589: $83
    rst $38                                       ; $658a: $ff
    nop                                           ; $658b: $00
    inc a                                         ; $658c: $3c
    jp $f7c9                                      ; $658d: $c3 $c9 $f7


    pop af                                        ; $6590: $f1
    rst $38                                       ; $6591: $ff
    rst $38                                       ; $6592: $ff
    ld a, e                                       ; $6593: $7b
    rst $38                                       ; $6594: $ff
    ld [hl], c                                    ; $6595: $71
    rst $38                                       ; $6596: $ff
    inc [hl]                                      ; $6597: $34
    rst $38                                       ; $6598: $ff
    inc l                                         ; $6599: $2c
    and a                                         ; $659a: $a7
    rst $38                                       ; $659b: $ff
    ldh [rNR23], a                                ; $659c: $e0 $18
    sub c                                         ; $659e: $91
    nop                                           ; $659f: $00
    rst $28                                       ; $65a0: $ef
    and c                                         ; $65a1: $a1
    db $ec                                        ; $65a2: $ec
    ld b, e                                       ; $65a3: $43

jr_00a_65a4:
    add b                                         ; $65a4: $80
    rst $38                                       ; $65a5: $ff
    cp a                                          ; $65a6: $bf
    ld h, b                                       ; $65a7: $60
    rst $38                                       ; $65a8: $ff
    nop                                           ; $65a9: $00
    stop                                          ; $65aa: $10 $00
    jr z, jr_00a_6586                             ; $65ac: $28 $d8

    ret nz                                        ; $65ae: $c0

    jr c, jr_00a_65a4                             ; $65af: $38 $f3

    nop                                           ; $65b1: $00
    ld a, l                                       ; $65b2: $7d
    ld h, a                                       ; $65b3: $67
    add b                                         ; $65b4: $80
    ld l, [hl]                                    ; $65b5: $6e
    ld bc, $003c                                  ; $65b6: $01 $3c $00
    ld e, d                                       ; $65b9: $5a
    nop                                           ; $65ba: $00
    rra                                           ; $65bb: $1f
    db $ed                                        ; $65bc: $ed
    nop                                           ; $65bd: $00
    ld a, [hl]                                    ; $65be: $7e
    nop                                           ; $65bf: $00
    cp a                                          ; $65c0: $bf
    and b                                         ; $65c1: $a0
    ld b, e                                       ; $65c2: $43
    nop                                           ; $65c3: $00
    nop                                           ; $65c4: $00
    nop                                           ; $65c5: $00
    rst $38                                       ; $65c6: $ff
    nop                                           ; $65c7: $00
    ld bc, $0302                                  ; $65c8: $01 $02 $03
    inc b                                         ; $65cb: $04
    dec b                                         ; $65cc: $05
    ld b, $07                                     ; $65cd: $06 $07
    rst $38                                       ; $65cf: $ff
    ld [$0a09], sp                                ; $65d0: $08 $09 $0a
    dec bc                                        ; $65d3: $0b
    inc c                                         ; $65d4: $0c
    dec c                                         ; $65d5: $0d
    ld c, $0f                                     ; $65d6: $0e $0f
    rst $18                                       ; $65d8: $df
    db $10                                        ; $65d9: $10
    ld de, $1312                                  ; $65da: $11 $12 $13
    nop                                           ; $65dd: $00
    rst $38                                       ; $65de: $ff
    add sp, $14                                   ; $65df: $e8 $14
    dec d                                         ; $65e1: $15
    rst $38                                       ; $65e2: $ff
    ld d, $17                                     ; $65e3: $16 $17
    jr jr_00a_6600                                ; $65e5: $18 $19

    ld a, [de]                                    ; $65e7: $1a
    dec de                                        ; $65e8: $1b
    inc e                                         ; $65e9: $1c
    dec e                                         ; $65ea: $1d
    rst $38                                       ; $65eb: $ff
    ld e, $1f                                     ; $65ec: $1e $1f
    jr nz, jr_00a_6611                            ; $65ee: $20 $21

    ld [hl+], a                                   ; $65f0: $22
    inc hl                                        ; $65f1: $23
    inc h                                         ; $65f2: $24
    dec h                                         ; $65f3: $25
    ei                                            ; $65f4: $fb
    ld h, $27                                     ; $65f5: $26 $27
    ldh [$e9], a                                  ; $65f7: $e0 $e9
    jr z, jr_00a_6624                             ; $65f9: $28 $29

    ld a, [hl+]                                   ; $65fb: $2a
    dec hl                                        ; $65fc: $2b
    inc l                                         ; $65fd: $2c
    rst $38                                       ; $65fe: $ff
    dec l                                         ; $65ff: $2d

jr_00a_6600:
    ld l, $2f                                     ; $6600: $2e $2f
    jr nc, jr_00a_6635                            ; $6602: $30 $31

    ld [hl-], a                                   ; $6604: $32
    inc sp                                        ; $6605: $33
    inc [hl]                                      ; $6606: $34
    ld a, a                                       ; $6607: $7f
    dec [hl]                                      ; $6608: $35
    ld [hl], $37                                  ; $6609: $36 $37
    jr c, jr_00a_6646                             ; $660b: $38 $39

    ld a, [hl-]                                   ; $660d: $3a
    dec sp                                        ; $660e: $3b
    ret nz                                        ; $660f: $c0

    jp hl                                         ; $6610: $e9


jr_00a_6611:
    rst $38                                       ; $6611: $ff
    inc a                                         ; $6612: $3c
    dec a                                         ; $6613: $3d
    ld a, $3f                                     ; $6614: $3e $3f
    ld b, b                                       ; $6616: $40
    ld b, c                                       ; $6617: $41
    ld b, d                                       ; $6618: $42
    ld b, e                                       ; $6619: $43
    rst $38                                       ; $661a: $ff
    ld b, h                                       ; $661b: $44
    ld b, l                                       ; $661c: $45
    ld b, [hl]                                    ; $661d: $46
    ld b, a                                       ; $661e: $47
    ld c, b                                       ; $661f: $48
    ld c, c                                       ; $6620: $49
    ld c, d                                       ; $6621: $4a
    ld c, e                                       ; $6622: $4b
    rst $28                                       ; $6623: $ef

jr_00a_6624:
    ld c, h                                       ; $6624: $4c
    ld c, l                                       ; $6625: $4d
    ld c, [hl]                                    ; $6626: $4e
    ld c, a                                       ; $6627: $4f
    and b                                         ; $6628: $a0
    jp hl                                         ; $6629: $e9


    ld d, b                                       ; $662a: $50
    ld d, c                                       ; $662b: $51
    ld d, d                                       ; $662c: $52
    rst $38                                       ; $662d: $ff
    ld d, e                                       ; $662e: $53
    ld d, h                                       ; $662f: $54
    ld d, l                                       ; $6630: $55
    ld d, [hl]                                    ; $6631: $56
    ld d, a                                       ; $6632: $57
    ld e, b                                       ; $6633: $58
    ld e, c                                       ; $6634: $59

jr_00a_6635:
    ld e, d                                       ; $6635: $5a
    rst $38                                       ; $6636: $ff
    ld e, e                                       ; $6637: $5b
    ld e, h                                       ; $6638: $5c
    ld e, l                                       ; $6639: $5d
    ld e, [hl]                                    ; $663a: $5e
    ld e, a                                       ; $663b: $5f
    ld h, b                                       ; $663c: $60
    ld h, c                                       ; $663d: $61
    ld h, d                                       ; $663e: $62
    db $fd                                        ; $663f: $fd
    ld h, e                                       ; $6640: $63
    add b                                         ; $6641: $80
    jp hl                                         ; $6642: $e9


    ld h, h                                       ; $6643: $64
    ld h, l                                       ; $6644: $65
    ld h, [hl]                                    ; $6645: $66

jr_00a_6646:
    ld h, a                                       ; $6646: $67
    ld l, b                                       ; $6647: $68
    ld l, c                                       ; $6648: $69
    rst $38                                       ; $6649: $ff
    ld l, d                                       ; $664a: $6a
    ld l, e                                       ; $664b: $6b
    ld l, h                                       ; $664c: $6c
    ld l, l                                       ; $664d: $6d
    ld l, [hl]                                    ; $664e: $6e
    ld l, a                                       ; $664f: $6f
    ld [hl], b                                    ; $6650: $70
    ld [hl], c                                    ; $6651: $71
    cp a                                          ; $6652: $bf
    ld [hl], d                                    ; $6653: $72
    ld [hl], e                                    ; $6654: $73
    ld [hl], h                                    ; $6655: $74
    ld [hl], l                                    ; $6656: $75
    halt                                          ; $6657: $76
    ld [hl], a                                    ; $6658: $77
    ld h, b                                       ; $6659: $60
    jp hl                                         ; $665a: $e9


    ld a, b                                       ; $665b: $78
    rst $38                                       ; $665c: $ff
    ld a, c                                       ; $665d: $79
    ld a, d                                       ; $665e: $7a
    ld a, e                                       ; $665f: $7b
    ld a, h                                       ; $6660: $7c
    ld a, l                                       ; $6661: $7d
    ld a, [hl]                                    ; $6662: $7e
    ld a, a                                       ; $6663: $7f
    add b                                         ; $6664: $80
    rst $38                                       ; $6665: $ff
    add c                                         ; $6666: $81
    add d                                         ; $6667: $82
    add e                                         ; $6668: $83
    add h                                         ; $6669: $84
    add l                                         ; $666a: $85
    add [hl]                                      ; $666b: $86
    add a                                         ; $666c: $87
    adc b                                         ; $666d: $88
    rst $30                                       ; $666e: $f7
    adc c                                         ; $666f: $89
    adc d                                         ; $6670: $8a
    adc e                                         ; $6671: $8b
    ld b, b                                       ; $6672: $40
    jp hl                                         ; $6673: $e9


    adc h                                         ; $6674: $8c
    adc l                                         ; $6675: $8d
    adc [hl]                                      ; $6676: $8e
    adc a                                         ; $6677: $8f
    rst $38                                       ; $6678: $ff
    sub b                                         ; $6679: $90
    sub c                                         ; $667a: $91
    sub d                                         ; $667b: $92
    sub e                                         ; $667c: $93
    sub h                                         ; $667d: $94
    sub l                                         ; $667e: $95
    sub [hl]                                      ; $667f: $96
    sub a                                         ; $6680: $97
    rst $38                                       ; $6681: $ff
    sbc b                                         ; $6682: $98
    sbc c                                         ; $6683: $99
    sbc d                                         ; $6684: $9a
    sbc e                                         ; $6685: $9b
    sbc h                                         ; $6686: $9c
    sbc l                                         ; $6687: $9d
    sbc [hl]                                      ; $6688: $9e
    sbc a                                         ; $6689: $9f
    cp $20                                        ; $668a: $fe $20
    jp hl                                         ; $668c: $e9


    and b                                         ; $668d: $a0
    and c                                         ; $668e: $a1
    and d                                         ; $668f: $a2
    and e                                         ; $6690: $a3
    and h                                         ; $6691: $a4
    and l                                         ; $6692: $a5
    and [hl]                                      ; $6693: $a6
    rst $38                                       ; $6694: $ff
    and a                                         ; $6695: $a7
    xor b                                         ; $6696: $a8
    xor c                                         ; $6697: $a9
    xor d                                         ; $6698: $aa
    xor e                                         ; $6699: $ab
    xor h                                         ; $669a: $ac
    xor l                                         ; $669b: $ad
    xor [hl]                                      ; $669c: $ae
    rra                                           ; $669d: $1f
    xor a                                         ; $669e: $af
    or b                                          ; $669f: $b0
    or c                                          ; $66a0: $b1
    or d                                          ; $66a1: $b2
    or e                                          ; $66a2: $b3
    nop                                           ; $66a3: $00
    jp hl                                         ; $66a4: $e9


    nop                                           ; $66a5: $00
    nop                                           ; $66a6: $00
    nop                                           ; $66a7: $00
    rst $28                                       ; $66a8: $ef
    ld [$0808], sp                                ; $66a9: $08 $08 $08
    ld a, [bc]                                    ; $66ac: $0a
    rst $38                                       ; $66ad: $ff
    pop hl                                        ; $66ae: $e1
    add hl, bc                                    ; $66af: $09
    dec bc                                        ; $66b0: $0b
    dec bc                                        ; $66b1: $0b
    ld h, c                                       ; $66b2: $61
    dec bc                                        ; $66b3: $0b
    rst $30                                       ; $66b4: $f7
    ld [c], a                                     ; $66b5: $e2
    rst $28                                       ; $66b6: $ef
    ldh [$fd], a                                  ; $66b7: $e0 $fd
    db $eb                                        ; $66b9: $eb
    pop hl                                        ; $66ba: $e1
    ld [c], a                                     ; $66bb: $e2
    ld a, [bc]                                    ; $66bc: $0a
    ld a, [bc]                                    ; $66bd: $0a
    pop hl                                        ; $66be: $e1
    db $e4                                        ; $66bf: $e4
    ret z                                         ; $66c0: $c8

    ldh [$f6], a                                  ; $66c1: $e0 $f6
    cp h                                          ; $66c3: $bc
    pop hl                                        ; $66c4: $e1
    or [hl]                                       ; $66c5: $b6
    ldh [$0c], a                                  ; $66c6: $e0 $0c
    rst $38                                       ; $66c8: $ff
    ldh [$e0], a                                  ; $66c9: $e0 $e0
    db $f4                                        ; $66cb: $f4
    add hl, bc                                    ; $66cc: $09
    add hl, bc                                    ; $66cd: $09
    add sp, -$21                                  ; $66ce: $e8 $df
    ldh [$e0], a                                  ; $66d0: $e0 $e0
    di                                            ; $66d2: $f3
    push hl                                       ; $66d3: $e5
    ld [c], a                                     ; $66d4: $e2
    add hl, bc                                    ; $66d5: $09
    ld [hl], h                                    ; $66d6: $74
    ldh [$09], a                                  ; $66d7: $e0 $09
    ld c, $0a                                     ; $66d9: $0e $0a
    db $d3                                        ; $66db: $d3
    ld c, $0d                                     ; $66dc: $0e $0d
    ld a, [hl]                                    ; $66de: $7e
    rst $28                                       ; $66df: $ef
    push bc                                       ; $66e0: $c5
    ldh [$09], a                                  ; $66e1: $e0 $09
    pop hl                                        ; $66e3: $e1
    pop hl                                        ; $66e4: $e1
    ld [$790f], sp                                ; $66e5: $08 $0f $79
    ld c, $5d                                     ; $66e8: $0e $5d
    di                                            ; $66ea: $f3
    ldh [$e5], a                                  ; $66eb: $e0 $e5
    dec c                                         ; $66ed: $0d
    ld c, $0e                                     ; $66ee: $0e $0e
    ld c, $3d                                     ; $66f0: $0e $3d
    xor $9e                                       ; $66f2: $ee $9e
    dec hl                                        ; $66f4: $2b
    add sp, $0f                                   ; $66f5: $e8 $0f
    dec c                                         ; $66f7: $0d
    rrca                                          ; $66f8: $0f
    ld a, [bc]                                    ; $66f9: $0a
    and b                                         ; $66fa: $a0
    xor $0d                                       ; $66fb: $ee $0d
    jp hl                                         ; $66fd: $e9


    dec c                                         ; $66fe: $0d
    nop                                           ; $66ff: $00
    rst $38                                       ; $6700: $ff
    ldh [$fd], a                                  ; $6701: $e0 $fd
    ret                                           ; $6703: $c9


    nop                                           ; $6704: $00
    nop                                           ; $6705: $00
    nop                                           ; $6706: $00
    ld a, [hl+]                                   ; $6707: $2a
    ld a, [hl]                                    ; $6708: $7e
    adc l                                         ; $6709: $8d
    nop                                           ; $670a: $00
    rra                                           ; $670b: $1f
    nop                                           ; $670c: $00
    rst $38                                       ; $670d: $ff
    ld a, a                                       ; $670e: $7f
    rra                                           ; $670f: $1f
    nop                                           ; $6710: $00
    sbc a                                         ; $6711: $9f
    ld [hl-], a                                   ; $6712: $32
    rst $38                                       ; $6713: $ff
    ld a, a                                       ; $6714: $7f
    adc l                                         ; $6715: $8d
    nop                                           ; $6716: $00
    ld a, [hl+]                                   ; $6717: $2a
    ld a, [hl]                                    ; $6718: $7e
    sbc a                                         ; $6719: $9f
    ld [hl-], a                                   ; $671a: $32
    rst $38                                       ; $671b: $ff
    ld a, a                                       ; $671c: $7f
    adc l                                         ; $671d: $8d
    nop                                           ; $671e: $00
    rra                                           ; $671f: $1f
    nop                                           ; $6720: $00
    adc l                                         ; $6721: $8d
    nop                                           ; $6722: $00
    sbc a                                         ; $6723: $9f
    ld [hl-], a                                   ; $6724: $32
    inc de                                        ; $6725: $13
    ld bc, $7e2a                                  ; $6726: $01 $2a $7e
    adc l                                         ; $6729: $8d
    nop                                           ; $672a: $00
    ret nz                                        ; $672b: $c0

    ld [bc], a                                    ; $672c: $02
    rst $38                                       ; $672d: $ff
    ld a, a                                       ; $672e: $7f
    ld a, [hl+]                                   ; $672f: $2a
    ld a, [hl]                                    ; $6730: $7e
    sbc a                                         ; $6731: $9f
    ld [hl-], a                                   ; $6732: $32
    adc l                                         ; $6733: $8d
    nop                                           ; $6734: $00
    ret nz                                        ; $6735: $c0

    ld [bc], a                                    ; $6736: $02
    sbc a                                         ; $6737: $9f
    ld [hl-], a                                   ; $6738: $32
    adc l                                         ; $6739: $8d
    nop                                           ; $673a: $00
    ret nz                                        ; $673b: $c0

    ld [bc], a                                    ; $673c: $02
    rst $38                                       ; $673d: $ff
    ld a, a                                       ; $673e: $7f
    ld a, [hl+]                                   ; $673f: $2a
    ld a, [hl]                                    ; $6740: $7e
    rra                                           ; $6741: $1f
    nop                                           ; $6742: $00
    sbc a                                         ; $6743: $9f
    ld [hl-], a                                   ; $6744: $32
    adc l                                         ; $6745: $8d
    nop                                           ; $6746: $00

Call_00a_6747:
    ld a, $01                                     ; $6747: $3e $01
    ldh [$96], a                                  ; $6749: $e0 $96
    ldh [rSVBK], a                                ; $674b: $e0 $70
    call Call_000_0341                            ; $674d: $cd $41 $03
    ld hl, $6707                                  ; $6750: $21 $07 $67
    ld de, $0008                                  ; $6753: $11 $08 $00
    call Call_000_0595                            ; $6756: $cd $95 $05
    ld hl, $57cc                                  ; $6759: $21 $cc $57
    ld de, $d000                                  ; $675c: $11 $00 $d0
    call Call_000_1f2f                            ; $675f: $cd $2f $1f
    ld a, $00                                     ; $6762: $3e $00
    ldh [rVBK], a                                 ; $6764: $e0 $4f
    ld hl, $d000                                  ; $6766: $21 $00 $d0
    ld de, $9000                                  ; $6769: $11 $00 $90
    ld c, $80                                     ; $676c: $0e $80
    call Call_000_2096                            ; $676e: $cd $96 $20
    ld hl, $d800                                  ; $6771: $21 $00 $d8
    ld de, $8800                                  ; $6774: $11 $00 $88
    ld c, $34                                     ; $6777: $0e $34
    call Call_000_2096                            ; $6779: $cd $96 $20
    ld hl, $5e70                                  ; $677c: $21 $70 $5e
    ld de, $d000                                  ; $677f: $11 $00 $d0
    call Call_000_1f2f                            ; $6782: $cd $2f $1f
    ld a, $00                                     ; $6785: $3e $00
    ldh [rVBK], a                                 ; $6787: $e0 $4f
    ld hl, $d000                                  ; $6789: $21 $00 $d0
    ld de, $9800                                  ; $678c: $11 $00 $98
    ld c, $12                                     ; $678f: $0e $12
    call Call_000_2096                            ; $6791: $cd $96 $20
    ld hl, $5f52                                  ; $6794: $21 $52 $5f
    ld de, $d000                                  ; $6797: $11 $00 $d0
    call Call_000_1f2f                            ; $679a: $cd $2f $1f
    ld a, $01                                     ; $679d: $3e $01
    ldh [rVBK], a                                 ; $679f: $e0 $4f
    ld hl, $d000                                  ; $67a1: $21 $00 $d0
    ld de, $9800                                  ; $67a4: $11 $00 $98
    ld c, $12                                     ; $67a7: $0e $12
    call Call_000_2096                            ; $67a9: $cd $96 $20
    ld hl, $5f7f                                  ; $67ac: $21 $7f $5f
    ld de, $d000                                  ; $67af: $11 $00 $d0
    call Call_000_1f2f                            ; $67b2: $cd $2f $1f
    ld a, $01                                     ; $67b5: $3e $01
    ldh [rVBK], a                                 ; $67b7: $e0 $4f
    ld hl, $d000                                  ; $67b9: $21 $00 $d0
    ld de, $9000                                  ; $67bc: $11 $00 $90
    ld c, $80                                     ; $67bf: $0e $80
    call Call_000_2096                            ; $67c1: $cd $96 $20
    ld hl, $d800                                  ; $67c4: $21 $00 $d8
    ld de, $8800                                  ; $67c7: $11 $00 $88
    ld c, $34                                     ; $67ca: $0e $34
    call Call_000_2096                            ; $67cc: $cd $96 $20
    ld hl, $65c6                                  ; $67cf: $21 $c6 $65
    ld de, $d000                                  ; $67d2: $11 $00 $d0
    call Call_000_1f2f                            ; $67d5: $cd $2f $1f
    ld a, $00                                     ; $67d8: $3e $00
    ldh [rVBK], a                                 ; $67da: $e0 $4f
    ld hl, $d000                                  ; $67dc: $21 $00 $d0
    ld de, $9920                                  ; $67df: $11 $20 $99
    ld c, $12                                     ; $67e2: $0e $12
    call Call_000_2096                            ; $67e4: $cd $96 $20
    ld hl, $66a8                                  ; $67e7: $21 $a8 $66
    ld de, $d000                                  ; $67ea: $11 $00 $d0
    call Call_000_1f2f                            ; $67ed: $cd $2f $1f
    ld a, $01                                     ; $67f0: $3e $01
    ldh [rVBK], a                                 ; $67f2: $e0 $4f
    ld hl, $d000                                  ; $67f4: $21 $00 $d0
    ld de, $9920                                  ; $67f7: $11 $20 $99
    ld c, $12                                     ; $67fa: $0e $12
    call Call_000_2096                            ; $67fc: $cd $96 $20
    rst $18                                       ; $67ff: $df
    ld [$cd79], sp                                ; $6800: $08 $79 $cd
    ld [hl], c                                    ; $6803: $71
    inc bc                                        ; $6804: $03
    ret                                           ; $6805: $c9


    rst $18                                       ; $6806: $df
    ld a, [bc]                                    ; $6807: $0a
    ld a, c                                       ; $6808: $79
    ret                                           ; $6809: $c9


    inc d                                         ; $680a: $14
    ld l, b                                       ; $680b: $68
    ld e, $68                                     ; $680c: $1e $68
    jr z, jr_00a_6878                             ; $680e: $28 $68

    inc [hl]                                      ; $6810: $34
    ld l, b                                       ; $6811: $68
    ld b, [hl]                                    ; $6812: $46
    ld l, b                                       ; $6813: $68
    ldh [rSB], a                                  ; $6814: $e0 $01
    ldh [rSB], a                                  ; $6816: $e0 $01
    ldh [rSB], a                                  ; $6818: $e0 $01
    ldh [rSB], a                                  ; $681a: $e0 $01
    ldh [rSB], a                                  ; $681c: $e0 $01
    nop                                           ; $681e: $00
    ld c, $00                                     ; $681f: $0e $00
    ld c, $00                                     ; $6821: $0e $00
    ld c, $00                                     ; $6823: $0e $00
    ld c, $00                                     ; $6825: $0e $00
    ld c, $20                                     ; $6827: $0e $20
    ld c, $20                                     ; $6829: $0e $20
    ld c, $20                                     ; $682b: $0e $20
    ld c, $20                                     ; $682d: $0e $20
    ld c, $20                                     ; $682f: $0e $20
    ld c, $40                                     ; $6831: $0e $40
    ld c, $40                                     ; $6833: $0e $40
    ld c, $40                                     ; $6835: $0e $40
    ld c, $40                                     ; $6837: $0e $40
    ld c, $40                                     ; $6839: $0e $40
    ld c, $40                                     ; $683b: $0e $40
    ld c, $c0                                     ; $683d: $0e $c0
    dec d                                         ; $683f: $15
    ldh [$15], a                                  ; $6840: $e0 $15
    add b                                         ; $6842: $80
    dec d                                         ; $6843: $15
    and b                                         ; $6844: $a0
    dec d                                         ; $6845: $15
    ldh [rSB], a                                  ; $6846: $e0 $01
    nop                                           ; $6848: $00
    ld a, [bc]                                    ; $6849: $0a
    ld b, b                                       ; $684a: $40
    ld a, [bc]                                    ; $684b: $0a
    add b                                         ; $684c: $80

jr_00a_684d:
    ld a, [de]                                    ; $684d: $1a
    add b                                         ; $684e: $80
    ld a, [bc]                                    ; $684f: $0a
    ret nz                                        ; $6850: $c0

    ld a, [bc]                                    ; $6851: $0a
    ld e, h                                       ; $6852: $5c
    ld l, b                                       ; $6853: $68
    ld l, b                                       ; $6854: $68
    ld l, b                                       ; $6855: $68
    ld [hl], h                                    ; $6856: $74
    ld l, b                                       ; $6857: $68
    add d                                         ; $6858: $82
    ld l, b                                       ; $6859: $68
    sub [hl]                                      ; $685a: $96
    ld l, b                                       ; $685b: $68
    ld b, b                                       ; $685c: $40
    inc d                                         ; $685d: $14
    ld h, b                                       ; $685e: $60
    inc d                                         ; $685f: $14
    nop                                           ; $6860: $00
    inc d                                         ; $6861: $14
    jr nz, jr_00a_6878                            ; $6862: $20 $14

    ld b, b                                       ; $6864: $40
    jr @+$01                                      ; $6865: $18 $ff

    rst $38                                       ; $6867: $ff
    ret nz                                        ; $6868: $c0

    inc d                                         ; $6869: $14
    ldh [rNR14], a                                ; $686a: $e0 $14
    add b                                         ; $686c: $80
    inc d                                         ; $686d: $14
    and b                                         ; $686e: $a0
    inc d                                         ; $686f: $14
    ld h, b                                       ; $6870: $60
    jr @+$01                                      ; $6871: $18 $ff

    rst $38                                       ; $6873: $ff
    ld b, b                                       ; $6874: $40
    dec d                                         ; $6875: $15
    ld h, b                                       ; $6876: $60
    dec d                                         ; $6877: $15

jr_00a_6878:
    nop                                           ; $6878: $00
    dec d                                         ; $6879: $15
    jr nz, jr_00a_6891                            ; $687a: $20 $15

    add b                                         ; $687c: $80
    jr jr_00a_68bf                                ; $687d: $18 $40

    inc de                                        ; $687f: $13
    rst $38                                       ; $6880: $ff
    rst $38                                       ; $6881: $ff
    ret nz                                        ; $6882: $c0

    dec d                                         ; $6883: $15
    ldh [$15], a                                  ; $6884: $e0 $15
    add b                                         ; $6886: $80
    dec d                                         ; $6887: $15
    and b                                         ; $6888: $a0
    dec d                                         ; $6889: $15
    and b                                         ; $688a: $a0
    jr jr_00a_684d                                ; $688b: $18 $c0

    dec de                                        ; $688d: $1b
    ldh [rNR31], a                                ; $688e: $e0 $1b
    add b                                         ; $6890: $80

jr_00a_6891:
    dec de                                        ; $6891: $1b
    and b                                         ; $6892: $a0
    dec de                                        ; $6893: $1b
    rst $38                                       ; $6894: $ff
    rst $38                                       ; $6895: $ff
    ret nz                                        ; $6896: $c0

    jr jr_00a_68d9                                ; $6897: $18 $40

    add hl, de                                    ; $6899: $19
    ld b, b                                       ; $689a: $40
    ld a, [de]                                    ; $689b: $1a
    jr nz, @+$1b                                  ; $689c: $20 $19

    ldh [rNR24], a                                ; $689e: $e0 $19
    nop                                           ; $68a0: $00
    ld a, [de]                                    ; $68a1: $1a
    rst $38                                       ; $68a2: $ff
    rst $38                                       ; $68a3: $ff
    ldh [$7f], a                                  ; $68a4: $e0 $7f
    rst $38                                       ; $68a6: $ff
    ld l, e                                       ; $68a7: $6b
    ld e, b                                       ; $68a8: $58
    ld e, $00                                     ; $68a9: $1e $00
    nop                                           ; $68ab: $00
    ld e, d                                       ; $68ac: $5a
    ld b, c                                       ; $68ad: $41
    sbc h                                         ; $68ae: $9c
    dec a                                         ; $68af: $3d
    sbc $39                                       ; $68b0: $de $39
    rra                                           ; $68b2: $1f
    ld [hl], $e0                                  ; $68b3: $36 $e0
    inc bc                                        ; $68b5: $03
    ld d, $33                                     ; $68b6: $16 $33

jr_00a_68b8:
    ld c, h                                       ; $68b8: $4c
    ld e, $08                                     ; $68b9: $1e $08
    dec h                                         ; $68bb: $25
    ld [$0825], sp                                ; $68bc: $08 $25 $08

jr_00a_68bf:
    dec h                                         ; $68bf: $25
    ld [$0825], sp                                ; $68c0: $08 $25 $08
    dec h                                         ; $68c3: $25

jr_00a_68c4:
    sbc [hl]                                      ; $68c4: $9e
    ld [hl+], a                                   ; $68c5: $22
    rst $38                                       ; $68c6: $ff
    ld l, e                                       ; $68c7: $6b
    ld a, [hl]                                    ; $68c8: $7e

jr_00a_68c9:
    ld hl, $0000                                  ; $68c9: $21 $00 $00
    ld a, a                                       ; $68cc: $7f
    ld [hl-], a                                   ; $68cd: $32
    rst $38                                       ; $68ce: $ff
    ld l, e                                       ; $68cf: $6b
    sbc a                                         ; $68d0: $9f
    ld bc, $0000                                  ; $68d1: $01 $00 $00
    ccf                                           ; $68d4: $3f

jr_00a_68d5:
    ld c, d                                       ; $68d5: $4a
    rst $38                                       ; $68d6: $ff
    ld l, e                                       ; $68d7: $6b
    rst $38                                       ; $68d8: $ff

jr_00a_68d9:
    jr nz, jr_00a_68db                            ; $68d9: $20 $00

jr_00a_68db:
    nop                                           ; $68db: $00
    rra                                           ; $68dc: $1f
    ld e, [hl]                                    ; $68dd: $5e
    rst $38                                       ; $68de: $ff
    ld l, e                                       ; $68df: $6b
    ret c                                         ; $68e0: $d8

    ld a, h                                       ; $68e1: $7c
    nop                                           ; $68e2: $00
    nop                                           ; $68e3: $00
    rst $28                                       ; $68e4: $ef
    db $fc                                        ; $68e5: $fc
    db $fd                                        ; $68e6: $fd

jr_00a_68e7:
    ld [bc], a                                    ; $68e7: $02
    inc bc                                        ; $68e8: $03

jr_00a_68e9:
    rst $38                                       ; $68e9: $ff
    ld [$fc04], a                                 ; $68ea: $ea $04 $fc
    db $fd                                        ; $68ed: $fd
    ld a, e                                       ; $68ee: $7b
    nop                                           ; $68ef: $00
    nop                                           ; $68f0: $00
    db $ec                                        ; $68f1: $ec

jr_00a_68f2:
    rst $20                                       ; $68f2: $e7
    cp $ff                                        ; $68f3: $fe $ff
    dec b                                         ; $68f5: $05
    jr nz, @+$01                                  ; $68f6: $20 $ff

    ld [$06ff], a                                 ; $68f8: $ea $ff $06
    cp $ff                                        ; $68fb: $fe $ff
    nop                                           ; $68fd: $00
    nop                                           ; $68fe: $00

jr_00a_68ff:
    dec b                                         ; $68ff: $05
    jr nz, jr_00a_68b8                            ; $6900: $20 $b6

    rst $38                                       ; $6902: $ff
    ret nz                                        ; $6903: $c0

    or [hl]                                       ; $6904: $b6
    push bc                                       ; $6905: $c5
    jr nz, jr_00a_697c                            ; $6906: $20 $74

    ld [hl], d                                    ; $6908: $72
    ld a, l                                       ; $6909: $7d
    db $fc                                        ; $690a: $fc
    rla                                           ; $690b: $17
    db $fd                                        ; $690c: $fd
    rlca                                          ; $690d: $07
    ld [$eaff], sp                                ; $690e: $08 $ff $ea
    add hl, bc                                    ; $6911: $09
    ret nz                                        ; $6912: $c0

    pop hl                                        ; $6913: $e1
    call z, $a2e7                                 ; $6914: $cc $e7 $a2
    db $ec                                        ; $6917: $ec
    db $fc                                        ; $6918: $fc
    sbc [hl]                                      ; $6919: $9e
    ld [c], a                                     ; $691a: $e2
    ret nz                                        ; $691b: $c0

    pop hl                                        ; $691c: $e1
    ld h, a                                       ; $691d: $67
    jr nz, @-$67                                  ; $691e: $20 $97

    jr nz, @-$6f                                  ; $6920: $20 $8f

    jr nz, jr_00a_68e7                            ; $6922: $20 $c3

    adc d                                         ; $6924: $8a
    jr nz, jr_00a_68c9                            ; $6925: $20 $a2

    db $ec                                        ; $6927: $ec
    sbc [hl]                                      ; $6928: $9e
    ld [c], a                                     ; $6929: $e2
    ret nz                                        ; $692a: $c0

    jp hl                                         ; $692b: $e9


    ldh [$f5], a                                  ; $692c: $e0 $f5
    ld l, b                                       ; $692e: $68
    jr nz, jr_00a_6950                            ; $692f: $20 $1f

    sbc b                                         ; $6931: $98
    jr nz, jr_00a_68c4                            ; $6932: $20 $90

    jr nz, @-$73                                  ; $6934: $20 $8b

    ret nz                                        ; $6936: $c0

    cp $62                                        ; $6937: $fe $62
    db $ec                                        ; $6939: $ec
    ld e, [hl]                                    ; $693a: $5e
    ld [c], a                                     ; $693b: $e2
    cp $40                                        ; $693c: $fe $40
    pop hl                                        ; $693e: $e1
    ld l, c                                       ; $693f: $69
    jr nz, jr_00a_68db                            ; $6940: $20 $99

    jr nz, jr_00a_68d5                            ; $6942: $20 $91

    jr nz, @-$72                                  ; $6944: $20 $8c

    ld h, a                                       ; $6946: $67
    jr nz, @-$02                                  ; $6947: $20 $fc

    db $fd                                        ; $6949: $fd
    cp $ef                                        ; $694a: $fe $ef
    ld b, b                                       ; $694c: $40
    jp hl                                         ; $694d: $e9


    cp $ff                                        ; $694e: $fe $ff

jr_00a_6950:
    cp $ef                                        ; $6950: $fe $ef
    cp $00                                        ; $6952: $fe $00
    pop hl                                        ; $6954: $e1
    ld l, d                                       ; $6955: $6a
    jr nz, jr_00a_68f2                            ; $6956: $20 $9a

    jr nz, @-$6c                                  ; $6958: $20 $92

    jr nz, jr_00a_68e9                            ; $695a: $20 $8d

    db $fc                                        ; $695c: $fc
    ret nz                                        ; $695d: $c0

    rst $38                                       ; $695e: $ff
    ret nz                                        ; $695f: $c0

    db $f4                                        ; $6960: $f4

jr_00a_6961:
    ld l, e                                       ; $6961: $6b
    jr nz, jr_00a_68ff                            ; $6962: $20 $9b

jr_00a_6964:
    jr nz, @-$6b                                  ; $6964: $20 $93

    jr nz, jr_00a_6961                            ; $6966: $20 $f9

    adc [hl]                                      ; $6968: $8e
    ret nz                                        ; $6969: $c0

    rst $38                                       ; $696a: $ff
    add b                                         ; $696b: $80
    di                                            ; $696c: $f3

jr_00a_696d:
    adc a                                         ; $696d: $8f
    sbc b                                         ; $696e: $98
    ld [hl], l                                    ; $696f: $75
    ld e, a                                       ; $6970: $5f
    ld e, a                                       ; $6971: $5f
    ld [hl], a                                    ; $6972: $77
    jr nz, @+$22                                  ; $6973: $20 $20

    sbc l                                         ; $6975: $9d
    ret nz                                        ; $6976: $c0

    or $00                                        ; $6977: $f6 $00
    nop                                           ; $6979: $00
    nop                                           ; $697a: $00
    ld b, b                                       ; $697b: $40

jr_00a_697c:
    ld a, [$e002]                                 ; $697c: $fa $02 $e0
    db $e3                                        ; $697f: $e3
    ld l, a                                       ; $6980: $6f
    ret nz                                        ; $6981: $c0

    rst $38                                       ; $6982: $ff
    nop                                           ; $6983: $00
    ld a, [c]                                     ; $6984: $f2
    inc c                                         ; $6985: $0c
    rst $00                                       ; $6986: $c7
    nop                                           ; $6987: $00
    nop                                           ; $6988: $00
    nop                                           ; $6989: $00
    rlca                                          ; $698a: $07
    ld bc, $0001                                  ; $698b: $01 $01 $00
    rst $38                                       ; $698e: $ff
    db $ec                                        ; $698f: $ec
    xor $eb                                       ; $6990: $ee $eb
    ldh [rIE], a                                  ; $6992: $e0 $ff
    ldh [$fb], a                                  ; $6994: $e0 $fb
    rst $38                                       ; $6996: $ff
    rst $38                                       ; $6997: $ff
    db $10                                        ; $6998: $10
    rst $38                                       ; $6999: $ff
    rst $38                                       ; $699a: $ff
    rst $38                                       ; $699b: $ff
    rst $38                                       ; $699c: $ff
    rst $38                                       ; $699d: $ff
    rst $38                                       ; $699e: $ff
    or $f5                                        ; $699f: $f6 $f5
    ld bc, $f0ff                                  ; $69a1: $01 $ff $f0
    ldh [rIE], a                                  ; $69a4: $e0 $ff
    ldh [rIE], a                                  ; $69a6: $e0 $ff

jr_00a_69a8:
    nop                                           ; $69a8: $00
    ldh [rIE], a                                  ; $69a9: $e0 $ff
    ldh [rIE], a                                  ; $69ab: $e0 $ff
    ldh [rIE], a                                  ; $69ad: $e0 $ff
    ldh [rIE], a                                  ; $69af: $e0 $ff
    ldh [rIE], a                                  ; $69b1: $e0 $ff
    ldh [rIE], a                                  ; $69b3: $e0 $ff
    ldh [$f9], a                                  ; $69b5: $e0 $f9
    nop                                           ; $69b7: $00
    nop                                           ; $69b8: $00
    nop                                           ; $69b9: $00
    dec b                                         ; $69ba: $05
    jr nz, jr_00a_69dd                            ; $69bb: $20 $20

    jr nz, jr_00a_69df                            ; $69bd: $20 $20

    jr nz, jr_00a_69e1                            ; $69bf: $20 $20

    jr nz, jr_00a_69e3                            ; $69c1: $20 $20

    jr nz, jr_00a_69e5                            ; $69c3: $20 $20

    jr nz, jr_00a_69e7                            ; $69c5: $20 $20

    jr nz, jr_00a_69e9                            ; $69c7: $20 $20

    jr nz, jr_00a_69eb                            ; $69c9: $20 $20

    jr nz, jr_00a_69ed                            ; $69cb: $20 $20

    ld b, $00                                     ; $69cd: $06 $00
    nop                                           ; $69cf: $00
    dec b                                         ; $69d0: $05
    jr nz, jr_00a_6a3b                            ; $69d1: $20 $68

    jr nz, jr_00a_696d                            ; $69d3: $20 $98

    jr nz, @-$6e                                  ; $69d5: $20 $90

    jr nz, jr_00a_6964                            ; $69d7: $20 $8b

    jr nz, @+$07                                  ; $69d9: $20 $05

    jr nz, @+$22                                  ; $69db: $20 $20

jr_00a_69dd:
    jr nz, @+$22                                  ; $69dd: $20 $20

jr_00a_69df:
    jr nz, jr_00a_6a01                            ; $69df: $20 $20

jr_00a_69e1:
    jr nz, @+$22                                  ; $69e1: $20 $20

jr_00a_69e3:
    jr nz, @+$22                                  ; $69e3: $20 $20

jr_00a_69e5:
    jr nz, jr_00a_6a07                            ; $69e5: $20 $20

jr_00a_69e7:
    jr nz, @+$22                                  ; $69e7: $20 $20

jr_00a_69e9:
    jr nz, @+$22                                  ; $69e9: $20 $20

jr_00a_69eb:
    jr nz, jr_00a_6a0d                            ; $69eb: $20 $20

jr_00a_69ed:
    ld b, $00                                     ; $69ed: $06 $00
    nop                                           ; $69ef: $00
    dec b                                         ; $69f0: $05
    jr nz, jr_00a_6a13                            ; $69f1: $20 $20

    jr nz, jr_00a_6a15                            ; $69f3: $20 $20

    jr nz, jr_00a_6a17                            ; $69f5: $20 $20

    jr nz, jr_00a_6a19                            ; $69f7: $20 $20

    jr nz, @+$09                                  ; $69f9: $20 $07

    ld [$0808], sp                                ; $69fb: $08 $08 $08
    ld [$0808], sp                                ; $69fe: $08 $08 $08

jr_00a_6a01:
    ld [$0808], sp                                ; $6a01: $08 $08 $08
    ld [$0808], sp                                ; $6a04: $08 $08 $08

jr_00a_6a07:
    ld [$0808], sp                                ; $6a07: $08 $08 $08
    ld [$0808], sp                                ; $6a0a: $08 $08 $08

jr_00a_6a0d:
    add hl, bc                                    ; $6a0d: $09
    nop                                           ; $6a0e: $00
    nop                                           ; $6a0f: $00
    dec b                                         ; $6a10: $05
    jr nz, jr_00a_6a7c                            ; $6a11: $20 $69

jr_00a_6a13:
    jr nz, @-$65                                  ; $6a13: $20 $99

jr_00a_6a15:
    jr nz, jr_00a_69a8                            ; $6a15: $20 $91

jr_00a_6a17:
    jr nz, @-$72                                  ; $6a17: $20 $8c

jr_00a_6a19:
    jr nz, jr_00a_6a1b                            ; $6a19: $20 $00

jr_00a_6a1b:
    nop                                           ; $6a1b: $00
    nop                                           ; $6a1c: $00
    nop                                           ; $6a1d: $00
    nop                                           ; $6a1e: $00
    nop                                           ; $6a1f: $00
    nop                                           ; $6a20: $00
    nop                                           ; $6a21: $00
    nop                                           ; $6a22: $00
    nop                                           ; $6a23: $00
    nop                                           ; $6a24: $00
    nop                                           ; $6a25: $00
    nop                                           ; $6a26: $00
    nop                                           ; $6a27: $00
    nop                                           ; $6a28: $00
    nop                                           ; $6a29: $00
    nop                                           ; $6a2a: $00
    nop                                           ; $6a2b: $00
    nop                                           ; $6a2c: $00
    nop                                           ; $6a2d: $00
    nop                                           ; $6a2e: $00
    nop                                           ; $6a2f: $00
    nop                                           ; $6a30: $00
    nop                                           ; $6a31: $00
    nop                                           ; $6a32: $00
    nop                                           ; $6a33: $00
    nop                                           ; $6a34: $00
    nop                                           ; $6a35: $00
    nop                                           ; $6a36: $00
    nop                                           ; $6a37: $00
    nop                                           ; $6a38: $00
    nop                                           ; $6a39: $00
    nop                                           ; $6a3a: $00

jr_00a_6a3b:
    nop                                           ; $6a3b: $00
    nop                                           ; $6a3c: $00
    nop                                           ; $6a3d: $00
    nop                                           ; $6a3e: $00
    nop                                           ; $6a3f: $00
    nop                                           ; $6a40: $00
    nop                                           ; $6a41: $00
    nop                                           ; $6a42: $00
    nop                                           ; $6a43: $00
    nop                                           ; $6a44: $00
    nop                                           ; $6a45: $00
    nop                                           ; $6a46: $00
    nop                                           ; $6a47: $00
    nop                                           ; $6a48: $00
    nop                                           ; $6a49: $00
    nop                                           ; $6a4a: $00
    nop                                           ; $6a4b: $00
    nop                                           ; $6a4c: $00
    nop                                           ; $6a4d: $00
    nop                                           ; $6a4e: $00
    nop                                           ; $6a4f: $00
    nop                                           ; $6a50: $00
    nop                                           ; $6a51: $00
    nop                                           ; $6a52: $00
    nop                                           ; $6a53: $00
    nop                                           ; $6a54: $00
    nop                                           ; $6a55: $00
    nop                                           ; $6a56: $00
    nop                                           ; $6a57: $00
    nop                                           ; $6a58: $00
    nop                                           ; $6a59: $00
    nop                                           ; $6a5a: $00
    nop                                           ; $6a5b: $00
    nop                                           ; $6a5c: $00
    nop                                           ; $6a5d: $00
    nop                                           ; $6a5e: $00
    nop                                           ; $6a5f: $00
    nop                                           ; $6a60: $00
    nop                                           ; $6a61: $00
    nop                                           ; $6a62: $00
    nop                                           ; $6a63: $00
    nop                                           ; $6a64: $00
    nop                                           ; $6a65: $00
    nop                                           ; $6a66: $00
    nop                                           ; $6a67: $00
    nop                                           ; $6a68: $00
    nop                                           ; $6a69: $00
    nop                                           ; $6a6a: $00
    nop                                           ; $6a6b: $00
    nop                                           ; $6a6c: $00
    nop                                           ; $6a6d: $00
    nop                                           ; $6a6e: $00
    nop                                           ; $6a6f: $00
    nop                                           ; $6a70: $00
    nop                                           ; $6a71: $00
    nop                                           ; $6a72: $00
    nop                                           ; $6a73: $00
    nop                                           ; $6a74: $00
    nop                                           ; $6a75: $00
    nop                                           ; $6a76: $00
    nop                                           ; $6a77: $00
    nop                                           ; $6a78: $00
    nop                                           ; $6a79: $00
    nop                                           ; $6a7a: $00
    nop                                           ; $6a7b: $00

jr_00a_6a7c:
    nop                                           ; $6a7c: $00
    nop                                           ; $6a7d: $00
    nop                                           ; $6a7e: $00
    nop                                           ; $6a7f: $00
    nop                                           ; $6a80: $00
    nop                                           ; $6a81: $00
    inc bc                                        ; $6a82: $03
    nop                                           ; $6a83: $00
    dec b                                         ; $6a84: $05
    inc bc                                        ; $6a85: $03
    ld b, $03                                     ; $6a86: $06 $03
    dec sp                                        ; $6a88: $3b
    ld b, $5d                                     ; $6a89: $06 $5d
    ld a, $6d                                     ; $6a8b: $3e $6d
    ld [hl-], a                                   ; $6a8d: $32
    ld d, a                                       ; $6a8e: $57
    ld a, [hl-]                                   ; $6a8f: $3a
    add hl, hl                                    ; $6a90: $29
    ld e, $17                                     ; $6a91: $1e $17
    inc c                                         ; $6a93: $0c
    ld a, [de]                                    ; $6a94: $1a
    dec c                                         ; $6a95: $0d
    dec l                                         ; $6a96: $2d
    dec de                                        ; $6a97: $1b
    ld [hl-], a                                   ; $6a98: $32
    rra                                           ; $6a99: $1f
    dec l                                         ; $6a9a: $2d
    ld e, $1e                                     ; $6a9b: $1e $1e
    nop                                           ; $6a9d: $00
    nop                                           ; $6a9e: $00
    nop                                           ; $6a9f: $00
    nop                                           ; $6aa0: $00
    nop                                           ; $6aa1: $00
    ret nz                                        ; $6aa2: $c0

    nop                                           ; $6aa3: $00
    and b                                         ; $6aa4: $a0
    ret nz                                        ; $6aa5: $c0

    ld h, b                                       ; $6aa6: $60
    ret nz                                        ; $6aa7: $c0

    call c, $ba60                                 ; $6aa8: $dc $60 $ba
    ld a, h                                       ; $6aab: $7c
    or [hl]                                       ; $6aac: $b6
    ld c, h                                       ; $6aad: $4c
    ld [$945c], a                                 ; $6aae: $ea $5c $94
    ld a, b                                       ; $6ab1: $78
    add sp, $30                                   ; $6ab2: $e8 $30
    ld e, b                                       ; $6ab4: $58
    or b                                          ; $6ab5: $b0
    or h                                          ; $6ab6: $b4
    ret c                                         ; $6ab7: $d8

    ld c, h                                       ; $6ab8: $4c
    ld hl, sp-$4c                                 ; $6ab9: $f8 $b4
    ld a, b                                       ; $6abb: $78
    ld a, b                                       ; $6abc: $78
    nop                                           ; $6abd: $00
    nop                                           ; $6abe: $00
    nop                                           ; $6abf: $00
    nop                                           ; $6ac0: $00
    nop                                           ; $6ac1: $00
    nop                                           ; $6ac2: $00
    nop                                           ; $6ac3: $00
    inc bc                                        ; $6ac4: $03
    nop                                           ; $6ac5: $00
    dec b                                         ; $6ac6: $05
    inc bc                                        ; $6ac7: $03
    ld b, $03                                     ; $6ac8: $06 $03
    dec sp                                        ; $6aca: $3b
    ld b, $5d                                     ; $6acb: $06 $5d
    ld a, $6f                                     ; $6acd: $3e $6f
    jr nc, jr_00a_6b26                            ; $6acf: $30 $55

    ld a, [hl-]                                   ; $6ad1: $3a
    ld a, [hl+]                                   ; $6ad2: $2a
    dec e                                         ; $6ad3: $1d
    add hl, de                                    ; $6ad4: $19
    rrca                                          ; $6ad5: $0f

jr_00a_6ad6:
    ld a, [de]                                    ; $6ad6: $1a
    rrca                                          ; $6ad7: $0f
    dec d                                         ; $6ad8: $15
    ld c, $0e                                     ; $6ad9: $0e $0e
    nop                                           ; $6adb: $00
    nop                                           ; $6adc: $00
    nop                                           ; $6add: $00
    nop                                           ; $6ade: $00
    nop                                           ; $6adf: $00
    nop                                           ; $6ae0: $00
    nop                                           ; $6ae1: $00
    nop                                           ; $6ae2: $00
    nop                                           ; $6ae3: $00
    add b                                         ; $6ae4: $80
    nop                                           ; $6ae5: $00
    ld b, b                                       ; $6ae6: $40
    add b                                         ; $6ae7: $80
    ret nz                                        ; $6ae8: $c0

    add b                                         ; $6ae9: $80
    cp b                                          ; $6aea: $b8
    ret nz                                        ; $6aeb: $c0

    ld [hl], h                                    ; $6aec: $74
    ld hl, sp-$14                                 ; $6aed: $f8 $ec
    jr @+$56                                      ; $6aef: $18 $54

    cp b                                          ; $6af1: $b8
    xor b                                         ; $6af2: $a8
    ld [hl], b                                    ; $6af3: $70
    jr nc, jr_00a_6ad6                            ; $6af4: $30 $e0

    or b                                          ; $6af6: $b0
    ldh [$50], a                                  ; $6af7: $e0 $50
    ldh [$e0], a                                  ; $6af9: $e0 $e0
    nop                                           ; $6afb: $00
    nop                                           ; $6afc: $00
    nop                                           ; $6afd: $00
    nop                                           ; $6afe: $00
    nop                                           ; $6aff: $00
    nop                                           ; $6b00: $00
    nop                                           ; $6b01: $00
    inc bc                                        ; $6b02: $03
    nop                                           ; $6b03: $00
    dec b                                         ; $6b04: $05
    inc bc                                        ; $6b05: $03
    ld b, $03                                     ; $6b06: $06 $03
    dec sp                                        ; $6b08: $3b
    ld b, $5d                                     ; $6b09: $06 $5d
    ld a, $6d                                     ; $6b0b: $3e $6d
    ld [hl-], a                                   ; $6b0d: $32
    ld d, a                                       ; $6b0e: $57
    ld a, [hl-]                                   ; $6b0f: $3a
    add hl, hl                                    ; $6b10: $29
    ld e, $17                                     ; $6b11: $1e $17
    inc c                                         ; $6b13: $0c
    ld a, [de]                                    ; $6b14: $1a
    dec c                                         ; $6b15: $0d
    dec l                                         ; $6b16: $2d
    dec de                                        ; $6b17: $1b
    ld [hl-], a                                   ; $6b18: $32
    rra                                           ; $6b19: $1f
    dec l                                         ; $6b1a: $2d
    ld e, $1e                                     ; $6b1b: $1e $1e
    nop                                           ; $6b1d: $00
    nop                                           ; $6b1e: $00
    nop                                           ; $6b1f: $00
    nop                                           ; $6b20: $00
    nop                                           ; $6b21: $00
    ret nz                                        ; $6b22: $c0

    nop                                           ; $6b23: $00
    and b                                         ; $6b24: $a0
    ret nz                                        ; $6b25: $c0

jr_00a_6b26:
    ld h, b                                       ; $6b26: $60
    ret nz                                        ; $6b27: $c0

    call c, $ba60                                 ; $6b28: $dc $60 $ba
    ld a, h                                       ; $6b2b: $7c
    or [hl]                                       ; $6b2c: $b6
    ld c, h                                       ; $6b2d: $4c
    ld [$945c], a                                 ; $6b2e: $ea $5c $94
    ld a, b                                       ; $6b31: $78
    add sp, $30                                   ; $6b32: $e8 $30
    ld e, b                                       ; $6b34: $58
    or b                                          ; $6b35: $b0
    or h                                          ; $6b36: $b4
    ret c                                         ; $6b37: $d8

    ld c, h                                       ; $6b38: $4c
    ld hl, sp-$4c                                 ; $6b39: $f8 $b4
    ld a, b                                       ; $6b3b: $78
    ld a, b                                       ; $6b3c: $78
    nop                                           ; $6b3d: $00
    nop                                           ; $6b3e: $00
    nop                                           ; $6b3f: $00
    inc bc                                        ; $6b40: $03
    nop                                           ; $6b41: $00
    dec b                                         ; $6b42: $05
    inc bc                                        ; $6b43: $03
    ld b, $03                                     ; $6b44: $06 $03
    dec bc                                        ; $6b46: $0b
    ld b, $75                                     ; $6b47: $06 $75
    ld c, $bf                                     ; $6b49: $0e $bf
    ld a, h                                       ; $6b4b: $7c
    db $dd                                        ; $6b4c: $dd
    ld h, d                                       ; $6b4d: $62
    xor a                                         ; $6b4e: $af
    ld [hl], d                                    ; $6b4f: $72
    ld d, l                                       ; $6b50: $55
    ld a, [hl-]                                   ; $6b51: $3a
    dec hl                                        ; $6b52: $2b
    inc e                                         ; $6b53: $1c
    ld a, [hl+]                                   ; $6b54: $2a
    dec e                                         ; $6b55: $1d
    inc [hl]                                      ; $6b56: $34
    dec de                                        ; $6b57: $1b
    ld d, c                                       ; $6b58: $51
    ccf                                           ; $6b59: $3f
    ld h, [hl]                                    ; $6b5a: $66
    ccf                                           ; $6b5b: $3f
    ld e, e                                       ; $6b5c: $5b
    inc a                                         ; $6b5d: $3c
    inc a                                         ; $6b5e: $3c
    nop                                           ; $6b5f: $00
    ret nz                                        ; $6b60: $c0

    nop                                           ; $6b61: $00
    and b                                         ; $6b62: $a0
    ret nz                                        ; $6b63: $c0

    ld h, b                                       ; $6b64: $60
    ret nz                                        ; $6b65: $c0

    ret nc                                        ; $6b66: $d0

    ld h, b                                       ; $6b67: $60
    xor [hl]                                      ; $6b68: $ae
    ld [hl], b                                    ; $6b69: $70
    db $fd                                        ; $6b6a: $fd
    ld a, $bb                                     ; $6b6b: $3e $bb
    ld b, [hl]                                    ; $6b6d: $46
    push af                                       ; $6b6e: $f5
    ld c, [hl]                                    ; $6b6f: $4e
    xor d                                         ; $6b70: $aa
    ld e, h                                       ; $6b71: $5c
    call nc, Call_00a_5438                        ; $6b72: $d4 $38 $54
    cp b                                          ; $6b75: $b8
    inc l                                         ; $6b76: $2c
    ret c                                         ; $6b77: $d8

    adc d                                         ; $6b78: $8a
    db $fc                                        ; $6b79: $fc
    ld h, [hl]                                    ; $6b7a: $66
    db $fc                                        ; $6b7b: $fc
    jp c, Jump_000_3c3c                           ; $6b7c: $da $3c $3c

    nop                                           ; $6b7f: $00
    rst $38                                       ; $6b80: $ff
    ld l, e                                       ; $6b81: $6b
    ld e, a                                       ; $6b82: $5f
    inc bc                                        ; $6b83: $03
    rst $18                                       ; $6b84: $df
    ld bc, $0048                                  ; $6b85: $01 $48 $00
    nop                                           ; $6b88: $00
    nop                                           ; $6b89: $00
    nop                                           ; $6b8a: $00
    nop                                           ; $6b8b: $00
    nop                                           ; $6b8c: $00
    nop                                           ; $6b8d: $00
    nop                                           ; $6b8e: $00
    nop                                           ; $6b8f: $00
    nop                                           ; $6b90: $00
    nop                                           ; $6b91: $00
    nop                                           ; $6b92: $00
    nop                                           ; $6b93: $00
    inc bc                                        ; $6b94: $03
    inc bc                                        ; $6b95: $03
    inc b                                         ; $6b96: $04
    rlca                                          ; $6b97: $07
    dec bc                                        ; $6b98: $0b
    inc c                                         ; $6b99: $0c
    rla                                           ; $6b9a: $17
    jr jr_00a_6bcc                                ; $6b9b: $18 $2f

    jr nc, jr_00a_6bfe                            ; $6b9d: $30 $5f

    ld h, b                                       ; $6b9f: $60
    cpl                                           ; $6ba0: $2f
    jr nc, @+$19                                  ; $6ba1: $30 $17

    jr jr_00a_6bb0                                ; $6ba3: $18 $0b

    inc c                                         ; $6ba5: $0c
    inc b                                         ; $6ba6: $04
    rlca                                          ; $6ba7: $07
    inc bc                                        ; $6ba8: $03
    inc bc                                        ; $6ba9: $03
    nop                                           ; $6baa: $00
    nop                                           ; $6bab: $00
    nop                                           ; $6bac: $00
    nop                                           ; $6bad: $00
    nop                                           ; $6bae: $00
    nop                                           ; $6baf: $00

jr_00a_6bb0:
    nop                                           ; $6bb0: $00
    nop                                           ; $6bb1: $00
    nop                                           ; $6bb2: $00
    nop                                           ; $6bb3: $00
    ret nz                                        ; $6bb4: $c0

    ret nz                                        ; $6bb5: $c0

    ld b, b                                       ; $6bb6: $40
    ret nz                                        ; $6bb7: $c0

    ld a, [hl]                                    ; $6bb8: $7e
    cp $02                                        ; $6bb9: $fe $02
    cp $fa                                        ; $6bbb: $fe $fa
    ld b, $fa                                     ; $6bbd: $06 $fa
    ld b, $fa                                     ; $6bbf: $06 $fa
    ld b, $02                                     ; $6bc1: $06 $02
    cp $7e                                        ; $6bc3: $fe $7e
    cp $40                                        ; $6bc5: $fe $40
    ret nz                                        ; $6bc7: $c0

    ret nz                                        ; $6bc8: $c0

    ret nz                                        ; $6bc9: $c0

    nop                                           ; $6bca: $00
    nop                                           ; $6bcb: $00

jr_00a_6bcc:
    nop                                           ; $6bcc: $00
    nop                                           ; $6bcd: $00
    nop                                           ; $6bce: $00
    nop                                           ; $6bcf: $00
    nop                                           ; $6bd0: $00
    nop                                           ; $6bd1: $00
    ld bc, $0201                                  ; $6bd2: $01 $01 $02
    inc bc                                        ; $6bd5: $03
    dec b                                         ; $6bd6: $05
    ld b, $0b                                     ; $6bd7: $06 $0b
    inc c                                         ; $6bd9: $0c
    rla                                           ; $6bda: $17
    jr jr_00a_6bed                                ; $6bdb: $18 $10

    rra                                           ; $6bdd: $1f
    rra                                           ; $6bde: $1f
    rra                                           ; $6bdf: $1f
    nop                                           ; $6be0: $00

jr_00a_6be1:
    nop                                           ; $6be1: $00
    nop                                           ; $6be2: $00
    nop                                           ; $6be3: $00
    nop                                           ; $6be4: $00
    nop                                           ; $6be5: $00
    nop                                           ; $6be6: $00
    nop                                           ; $6be7: $00
    nop                                           ; $6be8: $00
    nop                                           ; $6be9: $00
    nop                                           ; $6bea: $00
    nop                                           ; $6beb: $00
    nop                                           ; $6bec: $00

jr_00a_6bed:
    nop                                           ; $6bed: $00
    nop                                           ; $6bee: $00

jr_00a_6bef:
    nop                                           ; $6bef: $00
    add b                                         ; $6bf0: $80
    add b                                         ; $6bf1: $80
    ld b, b                                       ; $6bf2: $40
    ret nz                                        ; $6bf3: $c0

    and b                                         ; $6bf4: $a0
    ld h, b                                       ; $6bf5: $60
    ret nc                                        ; $6bf6: $d0

    jr nc, jr_00a_6be1                            ; $6bf7: $30 $e8

    jr jr_00a_6bef                                ; $6bf9: $18 $f4

    inc c                                         ; $6bfb: $0c
    inc b                                         ; $6bfc: $04
    db $fc                                        ; $6bfd: $fc

jr_00a_6bfe:
    db $fc                                        ; $6bfe: $fc
    db $fc                                        ; $6bff: $fc
    nop                                           ; $6c00: $00
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
    xor b                                         ; $6c10: $a8
    ld e, c                                       ; $6c11: $59
    add l                                         ; $6c12: $85
    ld a, [hl]                                    ; $6c13: $7e
    rst $38                                       ; $6c14: $ff
    ld a, a                                       ; $6c15: $7f
    nop                                           ; $6c16: $00
    nop                                           ; $6c17: $00
    ldh [$7f], a                                  ; $6c18: $e0 $7f
    rst $38                                       ; $6c1a: $ff
    ld l, e                                       ; $6c1b: $6b
    ld e, b                                       ; $6c1c: $58
    ld e, $00                                     ; $6c1d: $1e $00
    nop                                           ; $6c1f: $00
    ld a, a                                       ; $6c20: $7f
    daa                                           ; $6c21: $27
    sbc l                                         ; $6c22: $9d
    ld [hl-], a                                   ; $6c23: $32
    ld a, a                                       ; $6c24: $7f
    ld h, e                                       ; $6c25: $63
    dec de                                        ; $6c26: $1b
    ld a, [hl-]                                   ; $6c27: $3a
    ld e, a                                       ; $6c28: $5f
    inc bc                                        ; $6c29: $03
    rst $38                                       ; $6c2a: $ff
    ld l, e                                       ; $6c2b: $6b
    rst $18                                       ; $6c2c: $df
    ld bc, $0000                                  ; $6c2d: $01 $00 $00
    ld a, b                                       ; $6c30: $78
    ld a, [hl-]                                   ; $6c31: $3a
    rst $38                                       ; $6c32: $ff
    ld l, e                                       ; $6c33: $6b
    add b                                         ; $6c34: $80
    ld [de], a                                    ; $6c35: $12
    nop                                           ; $6c36: $00
    nop                                           ; $6c37: $00
    sbc [hl]                                      ; $6c38: $9e
    ld [hl+], a                                   ; $6c39: $22
    rst $38                                       ; $6c3a: $ff
    ld l, e                                       ; $6c3b: $6b
    ld a, [hl]                                    ; $6c3c: $7e
    ld hl, $0000                                  ; $6c3d: $21 $00 $00
    ld a, a                                       ; $6c40: $7f
    ld [hl-], a                                   ; $6c41: $32
    rst $38                                       ; $6c42: $ff
    ld l, e                                       ; $6c43: $6b
    sbc a                                         ; $6c44: $9f
    ld bc, $0000                                  ; $6c45: $01 $00 $00
    ccf                                           ; $6c48: $3f
    ld c, d                                       ; $6c49: $4a
    rst $38                                       ; $6c4a: $ff
    ld l, e                                       ; $6c4b: $6b
    rst $38                                       ; $6c4c: $ff
    jr nz, jr_00a_6c4f                            ; $6c4d: $20 $00

jr_00a_6c4f:
    nop                                           ; $6c4f: $00
    rra                                           ; $6c50: $1f
    ld e, [hl]                                    ; $6c51: $5e
    rst $38                                       ; $6c52: $ff
    ld l, e                                       ; $6c53: $6b
    ret c                                         ; $6c54: $d8

    ld a, h                                       ; $6c55: $7c
    nop                                           ; $6c56: $00
    nop                                           ; $6c57: $00

Call_00a_6c58:
    ld a, b                                       ; $6c58: $78
    add a                                         ; $6c59: $87
    add $05                                       ; $6c5a: $c6 $05
    add a                                         ; $6c5c: $87
    add a                                         ; $6c5d: $87
    add a                                         ; $6c5e: $87
    ld hl, $ff8a                                  ; $6c5f: $21 $8a $ff
    sub [hl]                                      ; $6c62: $96
    add $03                                       ; $6c63: $c6 $03
    ld e, a                                       ; $6c65: $5f
    ld d, $90                                     ; $6c66: $16 $90
    ldh a, [$8c]                                  ; $6c68: $f0 $8c
    rrca                                          ; $6c6a: $0f
    rrca                                          ; $6c6b: $0f
    rrca                                          ; $6c6c: $0f
    and $03                                       ; $6c6d: $e6 $03
    add a                                         ; $6c6f: $87
    add a                                         ; $6c70: $87
    add $00                                       ; $6c71: $c6 $00
    ld c, a                                       ; $6c73: $4f
    ld b, $0a                                     ; $6c74: $06 $0a
    call Call_000_26a4                            ; $6c76: $cd $a4 $26
    ret                                           ; $6c79: $c9


Call_00a_6c7a:
    ld a, $14                                     ; $6c7a: $3e $14
    ld hl, $ff8a                                  ; $6c7c: $21 $8a $ff
    sub [hl]                                      ; $6c7f: $96
    ld e, a                                       ; $6c80: $5f
    ldh a, [$8c]                                  ; $6c81: $f0 $8c
    rrca                                          ; $6c83: $0f
    rrca                                          ; $6c84: $0f
    and $07                                       ; $6c85: $e6 $07
    add $a7                                       ; $6c87: $c6 $a7
    ld l, a                                       ; $6c89: $6f
    adc $6c                                       ; $6c8a: $ce $6c
    sub l                                         ; $6c8c: $95
    ld h, a                                       ; $6c8d: $67
    ld d, [hl]                                    ; $6c8e: $56
    push de                                       ; $6c8f: $d5
    ld a, d                                       ; $6c90: $7a
    add $06                                       ; $6c91: $c6 $06
    ld d, a                                       ; $6c93: $57
    ld bc, $0910                                  ; $6c94: $01 $10 $09
    call Call_000_26a4                            ; $6c97: $cd $a4 $26
    pop de                                        ; $6c9a: $d1
    ld a, d                                       ; $6c9b: $7a
    cpl                                           ; $6c9c: $2f
    add $9a                                       ; $6c9d: $c6 $9a
    ld d, a                                       ; $6c9f: $57
    ld bc, $2910                                  ; $6ca0: $01 $10 $29
    call Call_000_26a4                            ; $6ca3: $cd $a4 $26
    ret                                           ; $6ca6: $c9


    nop                                           ; $6ca7: $00
    ld bc, $0302                                  ; $6ca8: $01 $02 $03
    inc b                                         ; $6cab: $04
    inc bc                                        ; $6cac: $03
    ld [bc], a                                    ; $6cad: $02
    ld bc, $e5d5                                  ; $6cae: $01 $d5 $e5
    ld a, [$c470]                                 ; $6cb1: $fa $70 $c4
    cp $03                                        ; $6cb4: $fe $03
    jr nz, jr_00a_6cbf                            ; $6cb6: $20 $07

    ld a, b                                       ; $6cb8: $78
    cp $05                                        ; $6cb9: $fe $05
    jr c, jr_00a_6cbf                             ; $6cbb: $38 $02

    jr jr_00a_6cdc                                ; $6cbd: $18 $1d

jr_00a_6cbf:
    ld a, [$c470]                                 ; $6cbf: $fa $70 $c4
    add a                                         ; $6cc2: $87
    add l                                         ; $6cc3: $85
    ld l, a                                       ; $6cc4: $6f
    jr nc, jr_00a_6cc8                            ; $6cc5: $30 $01

    inc h                                         ; $6cc7: $24

jr_00a_6cc8:
    ld a, [hl+]                                   ; $6cc8: $2a
    ld h, [hl]                                    ; $6cc9: $66
    ld l, a                                       ; $6cca: $6f
    ld a, b                                       ; $6ccb: $78
    add a                                         ; $6ccc: $87
    add l                                         ; $6ccd: $85
    ld l, a                                       ; $6cce: $6f
    jr nc, jr_00a_6cd2                            ; $6ccf: $30 $01

    inc h                                         ; $6cd1: $24

jr_00a_6cd2:
    ld e, [hl]                                    ; $6cd2: $5e
    inc hl                                        ; $6cd3: $23
    ld d, [hl]                                    ; $6cd4: $56
    inc hl                                        ; $6cd5: $23
    call Call_000_2d10                            ; $6cd6: $cd $10 $2d
    pop hl                                        ; $6cd9: $e1
    pop de                                        ; $6cda: $d1
    ret                                           ; $6cdb: $c9


jr_00a_6cdc:
    ld a, [$c470]                                 ; $6cdc: $fa $70 $c4
    add a                                         ; $6cdf: $87
    add l                                         ; $6ce0: $85
    ld l, a                                       ; $6ce1: $6f
    jr nc, jr_00a_6ce5                            ; $6ce2: $30 $01

    inc h                                         ; $6ce4: $24

jr_00a_6ce5:
    ld a, [hl+]                                   ; $6ce5: $2a
    ld h, [hl]                                    ; $6ce6: $66
    ld l, a                                       ; $6ce7: $6f
    ld a, b                                       ; $6ce8: $78
    add a                                         ; $6ce9: $87
    add l                                         ; $6cea: $85
    ld l, a                                       ; $6ceb: $6f
    jr nc, jr_00a_6cef                            ; $6cec: $30 $01

    inc h                                         ; $6cee: $24

jr_00a_6cef:
    ld e, [hl]                                    ; $6cef: $5e
    inc hl                                        ; $6cf0: $23
    ld d, [hl]                                    ; $6cf1: $56
    inc hl                                        ; $6cf2: $23
    call Call_000_2d10                            ; $6cf3: $cd $10 $2d
    jr z, @+$05                                   ; $6cf6: $28 $03

    rst $30                                       ; $6cf8: $f7
    ld h, b                                       ; $6cf9: $60
    ld de, $d1e1                                  ; $6cfa: $11 $e1 $d1
    ret                                           ; $6cfd: $c9


Call_00a_6cfe:
    ld d, $00                                     ; $6cfe: $16 $00
    ld b, $00                                     ; $6d00: $06 $00
    ld a, [$c471]                                 ; $6d02: $fa $71 $c4
    ld c, a                                       ; $6d05: $4f

jr_00a_6d06:
    ld hl, $680a                                  ; $6d06: $21 $0a $68
    call $6caf                                    ; $6d09: $cd $af $6c
    jr z, jr_00a_6d0f                             ; $6d0c: $28 $01

    inc d                                         ; $6d0e: $14

jr_00a_6d0f:
    inc b                                         ; $6d0f: $04
    dec c                                         ; $6d10: $0d
    jr nz, jr_00a_6d06                            ; $6d11: $20 $f3

    ld a, d                                       ; $6d13: $7a
    ret                                           ; $6d14: $c9


Call_00a_6d15:
    ld a, [$c470]                                 ; $6d15: $fa $70 $c4
    add a                                         ; $6d18: $87
    add $52                                       ; $6d19: $c6 $52
    ld l, a                                       ; $6d1b: $6f
    adc $68                                       ; $6d1c: $ce $68
    sub l                                         ; $6d1e: $95
    ld h, a                                       ; $6d1f: $67
    ld a, [hl+]                                   ; $6d20: $2a
    ld h, [hl]                                    ; $6d21: $66
    ld l, a                                       ; $6d22: $6f
    ld b, $ff                                     ; $6d23: $06 $ff

jr_00a_6d25:
    inc b                                         ; $6d25: $04
    ld a, [hl+]                                   ; $6d26: $2a
    ld a, [hl+]                                   ; $6d27: $2a
    cp $ff                                        ; $6d28: $fe $ff
    jr nz, jr_00a_6d25                            ; $6d2a: $20 $f9

    ld a, b                                       ; $6d2c: $78
    ld [$c471], a                                 ; $6d2d: $ea $71 $c4
    ld a, [$c471]                                 ; $6d30: $fa $71 $c4
    add a                                         ; $6d33: $87
    add $04                                       ; $6d34: $c6 $04
    sub $12                                       ; $6d36: $d6 $12
    jr nc, jr_00a_6d3b                            ; $6d38: $30 $01

    xor a                                         ; $6d3a: $af

jr_00a_6d3b:
    add a                                         ; $6d3b: $87
    add a                                         ; $6d3c: $87
    add a                                         ; $6d3d: $87
    ld [$c472], a                                 ; $6d3e: $ea $72 $c4
    ret                                           ; $6d41: $c9


Call_00a_6d42:
    ld de, $d080                                  ; $6d42: $11 $80 $d0
    ld a, [$c471]                                 ; $6d45: $fa $71 $c4
    ld b, a                                       ; $6d48: $47

jr_00a_6d49:
    push de                                       ; $6d49: $d5
    ld hl, $6a1a                                  ; $6d4a: $21 $1a $6a
    ld a, d                                       ; $6d4d: $7a
    add $04                                       ; $6d4e: $c6 $04
    ld d, a                                       ; $6d50: $57
    ld c, $04                                     ; $6d51: $0e $04
    call Call_000_03eb                            ; $6d53: $cd $eb $03
    pop de                                        ; $6d56: $d1
    ld hl, $69ba                                  ; $6d57: $21 $ba $69
    ld c, $04                                     ; $6d5a: $0e $04
    call Call_000_03eb                            ; $6d5c: $cd $eb $03
    dec b                                         ; $6d5f: $05
    jr nz, jr_00a_6d49                            ; $6d60: $20 $e7

    ld hl, $ffe0                                  ; $6d62: $21 $e0 $ff
    add hl, de                                    ; $6d65: $19
    ld e, l                                       ; $6d66: $5d
    ld d, h                                       ; $6d67: $54
    push de                                       ; $6d68: $d5
    ld hl, $6a5a                                  ; $6d69: $21 $5a $6a
    ld a, d                                       ; $6d6c: $7a
    add $04                                       ; $6d6d: $c6 $04
    ld d, a                                       ; $6d6f: $57
    ld c, $02                                     ; $6d70: $0e $02
    call Call_000_03eb                            ; $6d72: $cd $eb $03
    pop de                                        ; $6d75: $d1
    ld hl, $69fa                                  ; $6d76: $21 $fa $69
    ld c, $02                                     ; $6d79: $0e $02
    call Call_000_03eb                            ; $6d7b: $cd $eb $03
    ret                                           ; $6d7e: $c9


Call_00a_6d7f:
    rst $18                                       ; $6d7f: $df
    ld a, [de]                                    ; $6d80: $1a
    inc bc                                        ; $6d81: $03
    ld a, [$c470]                                 ; $6d82: $fa $70 $c4
    add $e1                                       ; $6d85: $c6 $e1
    ld l, a                                       ; $6d87: $6f
    adc $19                                       ; $6d88: $ce $19
    sub l                                         ; $6d8a: $95
    ld h, a                                       ; $6d8b: $67
    rst $18                                       ; $6d8c: $df
    inc a                                         ; $6d8d: $3c
    dec b                                         ; $6d8e: $05
    cpl                                           ; $6d8f: $2f
    inc a                                         ; $6d90: $3c
    add $14                                       ; $6d91: $c6 $14
    srl a                                         ; $6d93: $cb $3f
    ld de, $d020                                  ; $6d95: $11 $20 $d0
    add e                                         ; $6d98: $83
    ld e, a                                       ; $6d99: $5f
    jr nc, jr_00a_6d9d                            ; $6d9a: $30 $01

    inc d                                         ; $6d9c: $14

jr_00a_6d9d:
    ld a, [$c470]                                 ; $6d9d: $fa $70 $c4
    add $e1                                       ; $6da0: $c6 $e1
    ld l, a                                       ; $6da2: $6f
    adc $19                                       ; $6da3: $ce $19
    sub l                                         ; $6da5: $95
    ld h, a                                       ; $6da6: $67
    ld c, $20                                     ; $6da7: $0e $20
    rst $18                                       ; $6da9: $df
    ld [hl+], a                                   ; $6daa: $22
    dec b                                         ; $6dab: $05
    ld de, $d081                                  ; $6dac: $11 $81 $d0
    ld b, $00                                     ; $6daf: $06 $00
    ld a, [$c471]                                 ; $6db1: $fa $71 $c4
    ld c, a                                       ; $6db4: $4f

jr_00a_6db5:
    push bc                                       ; $6db5: $c5
    ld hl, $680a                                  ; $6db6: $21 $0a $68
    call $6caf                                    ; $6db9: $cd $af $6c
    jr z, jr_00a_6dd7                             ; $6dbc: $28 $19

    ld a, [$c470]                                 ; $6dbe: $fa $70 $c4
    add a                                         ; $6dc1: $87
    add $e4                                       ; $6dc2: $c6 $e4
    ld l, a                                       ; $6dc4: $6f
    adc $6d                                       ; $6dc5: $ce $6d
    sub l                                         ; $6dc7: $95
    ld h, a                                       ; $6dc8: $67
    ld a, [hl+]                                   ; $6dc9: $2a
    ld h, [hl]                                    ; $6dca: $66
    ld l, a                                       ; $6dcb: $6f
    ld a, b                                       ; $6dcc: $78
    add l                                         ; $6dcd: $85
    ld l, a                                       ; $6dce: $6f
    jr nc, jr_00a_6dd2                            ; $6dcf: $30 $01

    inc h                                         ; $6dd1: $24

jr_00a_6dd2:
    ld c, $20                                     ; $6dd2: $0e $20
    rst $18                                       ; $6dd4: $df
    ld [hl+], a                                   ; $6dd5: $22
    dec b                                         ; $6dd6: $05

jr_00a_6dd7:
    ld a, $40                                     ; $6dd7: $3e $40
    add e                                         ; $6dd9: $83
    ld e, a                                       ; $6dda: $5f
    jr nc, jr_00a_6dde                            ; $6ddb: $30 $01

    inc d                                         ; $6ddd: $14

jr_00a_6dde:
    pop bc                                        ; $6dde: $c1
    inc b                                         ; $6ddf: $04
    dec c                                         ; $6de0: $0d
    jr nz, jr_00a_6db5                            ; $6de1: $20 $d2

    ret                                           ; $6de3: $c9


    and $19                                       ; $6de4: $e6 $19
    db $eb                                        ; $6de6: $eb
    add hl, de                                    ; $6de7: $19
    ldh a, [rNR24]                                ; $6de8: $f0 $19
    or $19                                        ; $6dea: $f6 $19
    rst $38                                       ; $6dec: $ff
    add hl, de                                    ; $6ded: $19

Call_00a_6dee:
    ldh a, [$90]                                  ; $6dee: $f0 $90
    bit 6, a                                      ; $6df0: $cb $77
    jr z, jr_00a_6dff                             ; $6df2: $28 $0b

    ld a, $fe                                     ; $6df4: $3e $fe
    ld hl, $ff8a                                  ; $6df6: $21 $8a $ff
    add [hl]                                      ; $6df9: $86
    bit 7, a                                      ; $6dfa: $cb $7f
    jr nz, jr_00a_6dff                            ; $6dfc: $20 $01

    ld [hl], a                                    ; $6dfe: $77

jr_00a_6dff:
    ldh a, [$90]                                  ; $6dff: $f0 $90
    bit 7, a                                      ; $6e01: $cb $7f
    jr z, jr_00a_6e13                             ; $6e03: $28 $0e

    ld a, [$c472]                                 ; $6e05: $fa $72 $c4
    ld b, a                                       ; $6e08: $47
    ld a, $02                                     ; $6e09: $3e $02
    ld hl, $ff8a                                  ; $6e0b: $21 $8a $ff
    add [hl]                                      ; $6e0e: $86
    cp b                                          ; $6e0f: $b8
    jr nc, jr_00a_6e13                            ; $6e10: $30 $01

    ld [hl], a                                    ; $6e12: $77

jr_00a_6e13:
    ldh a, [$91]                                  ; $6e13: $f0 $91
    and $30                                       ; $6e15: $e6 $30
    jr z, jr_00a_6e46                             ; $6e17: $28 $2d

    ld b, a                                       ; $6e19: $47

jr_00a_6e1a:
    ld hl, $c470                                  ; $6e1a: $21 $70 $c4
    bit 4, b                                      ; $6e1d: $cb $60
    jr nz, jr_00a_6e25                            ; $6e1f: $20 $04

    bit 5, b                                      ; $6e21: $cb $68
    jr nz, jr_00a_6e28                            ; $6e23: $20 $03

jr_00a_6e25:
    inc [hl]                                      ; $6e25: $34
    jr jr_00a_6e29                                ; $6e26: $18 $01

jr_00a_6e28:
    dec [hl]                                      ; $6e28: $35

jr_00a_6e29:
    ld a, [hl]                                    ; $6e29: $7e
    bit 7, a                                      ; $6e2a: $cb $7f
    jr z, jr_00a_6e33                             ; $6e2c: $28 $05

    ld a, $05                                     ; $6e2e: $3e $05
    dec a                                         ; $6e30: $3d
    jr jr_00a_6e38                                ; $6e31: $18 $05

jr_00a_6e33:
    cp $05                                        ; $6e33: $fe $05
    jr c, jr_00a_6e38                             ; $6e35: $38 $01

    xor a                                         ; $6e37: $af

jr_00a_6e38:
    ld [hl], a                                    ; $6e38: $77
    push bc                                       ; $6e39: $c5
    call Call_00a_6cfe                            ; $6e3a: $cd $fe $6c
    pop bc                                        ; $6e3d: $c1
    and a                                         ; $6e3e: $a7
    jr z, jr_00a_6e1a                             ; $6e3f: $28 $d9

    rst $08                                       ; $6e41: $cf
    ld e, e                                       ; $6e42: $5b
    call Call_00a_6e47                            ; $6e43: $cd $47 $6e

jr_00a_6e46:
    ret                                           ; $6e46: $c9


Call_00a_6e47:
    ld c, $10                                     ; $6e47: $0e $10
    call Call_000_25a1                            ; $6e49: $cd $a1 $25
    call Call_00a_6d15                            ; $6e4c: $cd $15 $6d
    ld a, $01                                     ; $6e4f: $3e $01
    ldh [$96], a                                  ; $6e51: $e0 $96
    ldh [rSVBK], a                                ; $6e53: $e0 $70
    ld hl, $68e4                                  ; $6e55: $21 $e4 $68
    ld de, $d000                                  ; $6e58: $11 $00 $d0
    call Call_000_1f2f                            ; $6e5b: $cd $2f $1f
    ld hl, $698a                                  ; $6e5e: $21 $8a $69
    ld de, $d400                                  ; $6e61: $11 $00 $d4
    call Call_000_1f2f                            ; $6e64: $cd $2f $1f
    call Call_00a_6d42                            ; $6e67: $cd $42 $6d
    call Call_00a_6d7f                            ; $6e6a: $cd $7f $6d
    call Call_000_2625                            ; $6e6d: $cd $25 $26
    call Call_000_0341                            ; $6e70: $cd $41 $03
    xor a                                         ; $6e73: $af
    ldh [$8b], a                                  ; $6e74: $e0 $8b
    ldh [$8a], a                                  ; $6e76: $e0 $8a
    ld a, $01                                     ; $6e78: $3e $01
    ldh [rVBK], a                                 ; $6e7a: $e0 $4f
    ld hl, $d400                                  ; $6e7c: $21 $00 $d4
    ld de, $9800                                  ; $6e7f: $11 $00 $98
    ld c, $2c                                     ; $6e82: $0e $2c
    call Call_000_2096                            ; $6e84: $cd $96 $20
    ld a, $00                                     ; $6e87: $3e $00
    ldh [rVBK], a                                 ; $6e89: $e0 $4f
    ld hl, $d000                                  ; $6e8b: $21 $00 $d0
    ld de, $9800                                  ; $6e8e: $11 $00 $98
    ld c, $2c                                     ; $6e91: $0e $2c
    call Call_000_2096                            ; $6e93: $cd $96 $20
    rst $18                                       ; $6e96: $df
    inc d                                         ; $6e97: $14
    inc bc                                        ; $6e98: $03
    call Call_000_0371                            ; $6e99: $cd $71 $03
    ld c, $10                                     ; $6e9c: $0e $10
    call Call_000_25af                            ; $6e9e: $cd $af $25
    ret                                           ; $6ea1: $c9


Call_00a_6ea2:
    rst $20                                       ; $6ea2: $e7
    ldh [rSB], a                                  ; $6ea3: $e0 $01
    ld a, $90                                     ; $6ea5: $3e $90
    ldh [rWY], a                                  ; $6ea7: $e0 $4a
    xor a                                         ; $6ea9: $af
    ldh [$b9], a                                  ; $6eaa: $e0 $b9
    ldh [$b8], a                                  ; $6eac: $e0 $b8
    xor a                                         ; $6eae: $af
    ldh [$8b], a                                  ; $6eaf: $e0 $8b
    ldh [$8a], a                                  ; $6eb1: $e0 $8a
    xor a                                         ; $6eb3: $af
    ld [$c470], a                                 ; $6eb4: $ea $70 $c4
    call Call_00a_6d15                            ; $6eb7: $cd $15 $6d
    call Call_000_0341                            ; $6eba: $cd $41 $03
    ld a, $01                                     ; $6ebd: $3e $01
    ldh [$96], a                                  ; $6ebf: $e0 $96
    ldh [rSVBK], a                                ; $6ec1: $e0 $70
    ld hl, $68e4                                  ; $6ec3: $21 $e4 $68
    ld de, $d000                                  ; $6ec6: $11 $00 $d0
    call Call_000_1f2f                            ; $6ec9: $cd $2f $1f
    ld hl, $698a                                  ; $6ecc: $21 $8a $69
    ld de, $d400                                  ; $6ecf: $11 $00 $d4
    call Call_000_1f2f                            ; $6ed2: $cd $2f $1f
    call Call_00a_6d42                            ; $6ed5: $cd $42 $6d
    call Call_00a_6d7f                            ; $6ed8: $cd $7f $6d
    ld a, $01                                     ; $6edb: $3e $01
    ldh [rVBK], a                                 ; $6edd: $e0 $4f
    ld hl, $d400                                  ; $6edf: $21 $00 $d4
    ld de, $9800                                  ; $6ee2: $11 $00 $98
    ld c, $2c                                     ; $6ee5: $0e $2c
    call Call_000_2096                            ; $6ee7: $cd $96 $20
    ld a, $00                                     ; $6eea: $3e $00
    ldh [rVBK], a                                 ; $6eec: $e0 $4f
    ld hl, $d000                                  ; $6eee: $21 $00 $d0
    ld de, $9800                                  ; $6ef1: $11 $00 $98
    ld c, $2c                                     ; $6ef4: $0e $2c
    call Call_000_2096                            ; $6ef6: $cd $96 $20
    ld a, $01                                     ; $6ef9: $3e $01
    ldh [rVBK], a                                 ; $6efb: $e0 $4f
    ld hl, $6a80                                  ; $6efd: $21 $80 $6a
    ld de, $8000                                  ; $6f00: $11 $00 $80
    ld c, $10                                     ; $6f03: $0e $10
    call Call_000_2096                            ; $6f05: $cd $96 $20
    ld hl, $6b90                                  ; $6f08: $21 $90 $6b
    ld de, $8100                                  ; $6f0b: $11 $00 $81
    ld c, $04                                     ; $6f0e: $0e $04
    call Call_000_2096                            ; $6f10: $cd $96 $20
    ld hl, $6c20                                  ; $6f13: $21 $20 $6c
    ld de, $0101                                  ; $6f16: $11 $01 $01
    call Call_000_05a8                            ; $6f19: $cd $a8 $05
    ld hl, $6c10                                  ; $6f1c: $21 $10 $6c
    ld de, $0901                                  ; $6f1f: $11 $01 $09
    call Call_000_05a8                            ; $6f22: $cd $a8 $05
    ld hl, $6b80                                  ; $6f25: $21 $80 $6b
    ld de, $0a01                                  ; $6f28: $11 $01 $0a
    call Call_000_05a8                            ; $6f2b: $cd $a8 $05
    rst $18                                       ; $6f2e: $df
    inc d                                         ; $6f2f: $14
    inc bc                                        ; $6f30: $03
    call Call_000_0371                            ; $6f31: $cd $71 $03
    ret                                           ; $6f34: $c9


Call_00a_6f35:
    call Call_00a_6dee                            ; $6f35: $cd $ee $6d
    rst $18                                       ; $6f38: $df
    ld c, $0c                                     ; $6f39: $0e $0c
    call Call_00a_6c7a                            ; $6f3b: $cd $7a $6c
    ld b, $00                                     ; $6f3e: $06 $00
    ld a, [$c471]                                 ; $6f40: $fa $71 $c4
    ld c, a                                       ; $6f43: $4f

jr_00a_6f44:
    ld hl, $6852                                  ; $6f44: $21 $52 $68
    call $6caf                                    ; $6f47: $cd $af $6c
    jr z, jr_00a_6f51                             ; $6f4a: $28 $05

    push bc                                       ; $6f4c: $c5
    call Call_00a_6c58                            ; $6f4d: $cd $58 $6c
    pop bc                                        ; $6f50: $c1

jr_00a_6f51:
    inc b                                         ; $6f51: $04
    dec c                                         ; $6f52: $0d
    jr nz, jr_00a_6f44                            ; $6f53: $20 $ef

    ret                                           ; $6f55: $c9


    push af                                       ; $6f56: $f5
    push bc                                       ; $6f57: $c5
    push de                                       ; $6f58: $d5
    push hl                                       ; $6f59: $e5
    ldh a, [$96]                                  ; $6f5a: $f0 $96
    push af                                       ; $6f5c: $f5
    call Call_000_23b6                            ; $6f5d: $cd $b6 $23
    call Call_000_2e3b                            ; $6f60: $cd $3b $2e
    call Call_00a_6ea2                            ; $6f63: $cd $a2 $6e
    ld c, $10                                     ; $6f66: $0e $10
    call Call_000_25af                            ; $6f68: $cd $af $25

jr_00a_6f6b:
    ldh a, [$94]                                  ; $6f6b: $f0 $94
    and $02                                       ; $6f6d: $e6 $02
    jr nz, jr_00a_6f79                            ; $6f6f: $20 $08

    call Call_00a_6f35                            ; $6f71: $cd $35 $6f
    call Call_000_2e3b                            ; $6f74: $cd $3b $2e
    jr jr_00a_6f6b                                ; $6f77: $18 $f2

jr_00a_6f79:
    rst $08                                       ; $6f79: $cf
    ld e, l                                       ; $6f7a: $5d
    ld c, $10                                     ; $6f7b: $0e $10
    call Call_000_25a1                            ; $6f7d: $cd $a1 $25
    call Call_000_2625                            ; $6f80: $cd $25 $26
    ld a, $fa                                     ; $6f83: $3e $fa
    ld [$c441], a                                 ; $6f85: $ea $41 $c4
    ld a, $fa                                     ; $6f88: $3e $fa
    ld [$c46a], a                                 ; $6f8a: $ea $6a $c4
    ld hl, $c2a0                                  ; $6f8d: $21 $a0 $c2
    ld de, $c466                                  ; $6f90: $11 $66 $c4
    ld bc, $0004                                  ; $6f93: $01 $04 $00
    call Call_000_03d3                            ; $6f96: $cd $d3 $03
    ld a, [$c2a4]                                 ; $6f99: $fa $a4 $c2
    ld [$c465], a                                 ; $6f9c: $ea $65 $c4
    pop af                                        ; $6f9f: $f1
    ldh [$96], a                                  ; $6fa0: $e0 $96
    ldh [rSVBK], a                                ; $6fa2: $e0 $70
    pop hl                                        ; $6fa4: $e1
    pop de                                        ; $6fa5: $d1
    pop bc                                        ; $6fa6: $c1
    pop af                                        ; $6fa7: $f1
    ret                                           ; $6fa8: $c9


    xor e                                         ; $6fa9: $ab
    ld l, a                                       ; $6faa: $6f
    ldh [rSB], a                                  ; $6fab: $e0 $01
    ldh [rSB], a                                  ; $6fad: $e0 $01
    ldh [rSB], a                                  ; $6faf: $e0 $01
    ldh [rSB], a                                  ; $6fb1: $e0 $01
    and b                                         ; $6fb3: $a0
    rrca                                          ; $6fb4: $0f
    ldh [rSB], a                                  ; $6fb5: $e0 $01
    ld b, b                                       ; $6fb7: $40
    ld c, $e0                                     ; $6fb8: $0e $e0
    ld bc, $1a80                                  ; $6fba: $01 $80 $1a
    nop                                           ; $6fbd: $00
    ld a, [bc]                                    ; $6fbe: $0a
    ld b, b                                       ; $6fbf: $40
    ld a, [bc]                                    ; $6fc0: $0a
    add b                                         ; $6fc1: $80
    ld a, [bc]                                    ; $6fc2: $0a
    ret nz                                        ; $6fc3: $c0

    ld a, [bc]                                    ; $6fc4: $0a
    ldh [rSB], a                                  ; $6fc5: $e0 $01
    ret                                           ; $6fc7: $c9


    ld l, a                                       ; $6fc8: $6f
    ret nz                                        ; $6fc9: $c0

    ld bc, $01c0                                  ; $6fca: $01 $c0 $01

jr_00a_6fcd:
    ret nz                                        ; $6fcd: $c0

    ld bc, $01c0                                  ; $6fce: $01 $c0 $01
    ret nz                                        ; $6fd1: $c0

    ld bc, $01c0                                  ; $6fd2: $01 $c0 $01
    ret nz                                        ; $6fd5: $c0

    ld bc, $18c0                                  ; $6fd6: $01 $c0 $18
    jr nz, @+$1b                                  ; $6fd9: $20 $19

    ld b, b                                       ; $6fdb: $40
    add hl, de                                    ; $6fdc: $19
    ld b, b                                       ; $6fdd: $40
    ld a, [de]                                    ; $6fde: $1a
    ldh [rNR24], a                                ; $6fdf: $e0 $19
    nop                                           ; $6fe1: $00
    ld a, [de]                                    ; $6fe2: $1a
    ret nz                                        ; $6fe3: $c0

    ld bc, $fcef                                  ; $6fe4: $01 $ef $fc
    db $fd                                        ; $6fe7: $fd
    ld [bc], a                                    ; $6fe8: $02
    inc bc                                        ; $6fe9: $03
    rst $38                                       ; $6fea: $ff
    ld [$fc04], a                                 ; $6feb: $ea $04 $fc
    db $fd                                        ; $6fee: $fd
    ei                                            ; $6fef: $fb
    db $f4                                        ; $6ff0: $f4
    db $f4                                        ; $6ff1: $f4
    db $ec                                        ; $6ff2: $ec

jr_00a_6ff3:
    and $0e                                       ; $6ff3: $e6 $0e
    cp $ff                                        ; $6ff5: $fe $ff
    dec b                                         ; $6ff7: $05

jr_00a_6ff8:
    jr nz, jr_00a_6ff8                            ; $6ff8: $20 $fe

jr_00a_6ffa:
    rst $38                                       ; $6ffa: $ff
    ld [$fe06], a                                 ; $6ffb: $ea $06 $fe
    rst $38                                       ; $6ffe: $ff
    db $f4                                        ; $6fff: $f4
    db $f4                                        ; $7000: $f4
    dec b                                         ; $7001: $05
    jr nz, @+$01                                  ; $7002: $20 $ff

    ld [hl], h                                    ; $7004: $74
    ld [hl], d                                    ; $7005: $72
    ld a, l                                       ; $7006: $7d

jr_00a_7007:
    ld [hl], e                                    ; $7007: $73
    jr nz, @-$73                                  ; $7008: $20 $8b

    sub a                                         ; $700a: $97
    halt                                          ; $700b: $76
    rst $28                                       ; $700c: $ef
    db $fc                                        ; $700d: $fc
    db $fd                                        ; $700e: $fd

jr_00a_700f:
    rlca                                          ; $700f: $07
    ld [$eaff], sp                                ; $7010: $08 $ff $ea
    add hl, bc                                    ; $7013: $09

jr_00a_7014:
    db $fc                                        ; $7014: $fc
    db $fd                                        ; $7015: $fd
    jp $0000                                      ; $7016: $c3 $00 $00


    call z, $a2e7                                 ; $7019: $cc $e7 $a2

jr_00a_701c:
    db $ec                                        ; $701c: $ec
    sbc [hl]                                      ; $701d: $9e
    ld [c], a                                     ; $701e: $e2
    ldh [$e1], a                                  ; $701f: $e0 $e1

jr_00a_7021:
    and a                                         ; $7021: $a7
    jr nz, @+$41                                  ; $7022: $20 $3f

jr_00a_7024:
    rst $10                                       ; $7024: $d7
    jr nz, @-$2f                                  ; $7025: $20 $cf

    jr nz, jr_00a_6ff3                            ; $7027: $20 $ca

jr_00a_7029:
    jr nz, jr_00a_6fcd                            ; $7029: $20 $a2

    db $ec                                        ; $702b: $ec

jr_00a_702c:
    sbc [hl]                                      ; $702c: $9e
    ld [c], a                                     ; $702d: $e2

jr_00a_702e:
    db $fc                                        ; $702e: $fc
    ret nz                                        ; $702f: $c0

    jp hl                                         ; $7030: $e9


jr_00a_7031:
    ldh [$f4], a                                  ; $7031: $e0 $f4
    nop                                           ; $7033: $00
    xor b                                         ; $7034: $a8
    jr nz, jr_00a_700f                            ; $7035: $20 $d8

    jr nz, @-$2e                                  ; $7037: $20 $d0

    di                                            ; $7039: $f3
    jr nz, jr_00a_7007                            ; $703a: $20 $cb

    ldh [$f6], a                                  ; $703c: $e0 $f6
    ret nz                                        ; $703e: $c0

    db $fd                                        ; $703f: $fd
    xor c                                         ; $7040: $a9
    jr nz, jr_00a_701c                            ; $7041: $20 $d9

    jr nz, jr_00a_702c                            ; $7043: $20 $e7

    pop de                                        ; $7045: $d1
    jr nz, jr_00a_7014                            ; $7046: $20 $cc

    add b                                         ; $7048: $80
    rst $38                                       ; $7049: $ff
    ldh [$f4], a                                  ; $704a: $e0 $f4
    xor d                                         ; $704c: $aa
    jr nz, jr_00a_7029                            ; $704d: $20 $da

    rst $08                                       ; $704f: $cf
    jr nz, jr_00a_7024                            ; $7050: $20 $d2

    jr nz, jr_00a_7021                            ; $7052: $20 $cd

    ret nz                                        ; $7054: $c0

    rst $38                                       ; $7055: $ff
    ldh [$f4], a                                  ; $7056: $e0 $f4
    xor e                                         ; $7058: $ab
    jr nz, jr_00a_6ffa                            ; $7059: $20 $9f

    db $db                                        ; $705b: $db
    jr nz, jr_00a_7031                            ; $705c: $20 $d3

    jr nz, jr_00a_702e                            ; $705e: $20 $ce

    ret nz                                        ; $7060: $c0

    rst $38                                       ; $7061: $ff
    ldh [$f3], a                                  ; $7062: $e0 $f3
    adc a                                         ; $7064: $8f
    ld a, a                                       ; $7065: $7f
    sbc b                                         ; $7066: $98
    ld [hl], l                                    ; $7067: $75
    ld e, a                                       ; $7068: $5f
    ld e, a                                       ; $7069: $5f
    jr nz, @+$22                                  ; $706a: $20 $20

    db $dd                                        ; $706c: $dd
    ret nz                                        ; $706d: $c0

    or $13                                        ; $706e: $f6 $13
    nop                                           ; $7070: $00
    nop                                           ; $7071: $00
    db $fd                                        ; $7072: $fd
    jp $fbe0                                      ; $7073: $c3 $e0 $fb


    xor a                                         ; $7076: $af
    ret nz                                        ; $7077: $c0

jr_00a_7078:
    cp $22                                        ; $7078: $fe $22
    call z, $c21e                                 ; $707a: $cc $1e $c2
    inc bc                                        ; $707d: $03
    nop                                           ; $707e: $00
    nop                                           ; $707f: $00
    inc c                                         ; $7080: $0c
    rst $00                                       ; $7081: $c7
    nop                                           ; $7082: $00
    nop                                           ; $7083: $00
    nop                                           ; $7084: $00
    rlca                                          ; $7085: $07
    ld bc, $0001                                  ; $7086: $01 $01 $00
    rst $38                                       ; $7089: $ff
    db $ec                                        ; $708a: $ec
    xor $eb                                       ; $708b: $ee $eb
    ldh [rIE], a                                  ; $708d: $e0 $ff
    ldh [$fb], a                                  ; $708f: $e0 $fb
    rst $38                                       ; $7091: $ff
    rst $38                                       ; $7092: $ff
    nop                                           ; $7093: $00
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
    nop                                           ; $70a4: $00
    rst $38                                       ; $70a5: $ff
    rst $38                                       ; $70a6: $ff
    rst $38                                       ; $70a7: $ff

jr_00a_70a8:
    rst $38                                       ; $70a8: $ff
    rst $38                                       ; $70a9: $ff
    rst $38                                       ; $70aa: $ff
    rst $38                                       ; $70ab: $ff
    rst $38                                       ; $70ac: $ff
    rst $38                                       ; $70ad: $ff
    rst $38                                       ; $70ae: $ff
    rst $38                                       ; $70af: $ff
    pop hl                                        ; $70b0: $e1
    nop                                           ; $70b1: $00
    nop                                           ; $70b2: $00
    nop                                           ; $70b3: $00
    ld [bc], a                                    ; $70b4: $02
    inc bc                                        ; $70b5: $03
    inc bc                                        ; $70b6: $03
    inc bc                                        ; $70b7: $03
    inc bc                                        ; $70b8: $03
    inc bc                                        ; $70b9: $03
    inc bc                                        ; $70ba: $03
    inc bc                                        ; $70bb: $03
    inc bc                                        ; $70bc: $03
    inc bc                                        ; $70bd: $03
    inc bc                                        ; $70be: $03
    inc bc                                        ; $70bf: $03
    inc bc                                        ; $70c0: $03
    inc bc                                        ; $70c1: $03
    inc bc                                        ; $70c2: $03
    inc bc                                        ; $70c3: $03
    inc bc                                        ; $70c4: $03
    inc bc                                        ; $70c5: $03
    inc bc                                        ; $70c6: $03
    inc b                                         ; $70c7: $04
    nop                                           ; $70c8: $00
    nop                                           ; $70c9: $00
    ld [bc], a                                    ; $70ca: $02
    inc bc                                        ; $70cb: $03
    inc bc                                        ; $70cc: $03
    inc bc                                        ; $70cd: $03
    ld c, $03                                     ; $70ce: $0e $03
    inc bc                                        ; $70d0: $03
    inc bc                                        ; $70d1: $03
    inc bc                                        ; $70d2: $03
    inc bc                                        ; $70d3: $03
    dec b                                         ; $70d4: $05
    jr nz, @+$22                                  ; $70d5: $20 $20

    jr nz, @+$22                                  ; $70d7: $20 $20

    jr nz, jr_00a_70fb                            ; $70d9: $20 $20

    jr nz, @+$22                                  ; $70db: $20 $20

    jr nz, @+$22                                  ; $70dd: $20 $20

    jr nz, jr_00a_7101                            ; $70df: $20 $20

    jr nz, @+$22                                  ; $70e1: $20 $20

    jr nz, @+$22                                  ; $70e3: $20 $20

    jr nz, jr_00a_7107                            ; $70e5: $20 $20

    ld b, $00                                     ; $70e7: $06 $00
    nop                                           ; $70e9: $00
    dec b                                         ; $70ea: $05
    jr nz, jr_00a_7078                            ; $70eb: $20 $8b

    sub a                                         ; $70ed: $97
    halt                                          ; $70ee: $76
    add l                                         ; $70ef: $85
    jr nz, jr_00a_70a8                            ; $70f0: $20 $b6

    ret nz                                        ; $70f2: $c0

    or [hl]                                       ; $70f3: $b6
    rlca                                          ; $70f4: $07
    ld [$0808], sp                                ; $70f5: $08 $08 $08
    ld [$0808], sp                                ; $70f8: $08 $08 $08

jr_00a_70fb:
    ld [$0808], sp                                ; $70fb: $08 $08 $08
    ld [$0808], sp                                ; $70fe: $08 $08 $08

jr_00a_7101:
    ld [$0808], sp                                ; $7101: $08 $08 $08
    ld [$0808], sp                                ; $7104: $08 $08 $08

jr_00a_7107:
    add hl, bc                                    ; $7107: $09
    nop                                           ; $7108: $00
    nop                                           ; $7109: $00
    dec b                                         ; $710a: $05
    jr nz, jr_00a_712d                            ; $710b: $20 $20

    jr nz, jr_00a_712f                            ; $710d: $20 $20

    jr nz, jr_00a_7131                            ; $710f: $20 $20

    jr nz, jr_00a_7133                            ; $7111: $20 $20

    jr nz, jr_00a_7115                            ; $7113: $20 $00

jr_00a_7115:
    nop                                           ; $7115: $00
    nop                                           ; $7116: $00
    nop                                           ; $7117: $00
    nop                                           ; $7118: $00
    nop                                           ; $7119: $00
    nop                                           ; $711a: $00
    nop                                           ; $711b: $00
    nop                                           ; $711c: $00
    nop                                           ; $711d: $00
    nop                                           ; $711e: $00
    nop                                           ; $711f: $00
    nop                                           ; $7120: $00
    nop                                           ; $7121: $00
    nop                                           ; $7122: $00
    nop                                           ; $7123: $00
    nop                                           ; $7124: $00
    nop                                           ; $7125: $00
    nop                                           ; $7126: $00
    nop                                           ; $7127: $00
    nop                                           ; $7128: $00
    nop                                           ; $7129: $00
    nop                                           ; $712a: $00
    nop                                           ; $712b: $00
    nop                                           ; $712c: $00

jr_00a_712d:
    nop                                           ; $712d: $00
    nop                                           ; $712e: $00

jr_00a_712f:
    nop                                           ; $712f: $00
    nop                                           ; $7130: $00

jr_00a_7131:
    nop                                           ; $7131: $00
    nop                                           ; $7132: $00

jr_00a_7133:
    nop                                           ; $7133: $00
    nop                                           ; $7134: $00
    nop                                           ; $7135: $00
    nop                                           ; $7136: $00
    nop                                           ; $7137: $00
    nop                                           ; $7138: $00
    nop                                           ; $7139: $00
    nop                                           ; $713a: $00
    nop                                           ; $713b: $00
    nop                                           ; $713c: $00
    nop                                           ; $713d: $00
    nop                                           ; $713e: $00
    nop                                           ; $713f: $00
    nop                                           ; $7140: $00
    nop                                           ; $7141: $00
    nop                                           ; $7142: $00
    nop                                           ; $7143: $00
    nop                                           ; $7144: $00
    nop                                           ; $7145: $00
    nop                                           ; $7146: $00
    nop                                           ; $7147: $00
    nop                                           ; $7148: $00
    nop                                           ; $7149: $00
    nop                                           ; $714a: $00
    nop                                           ; $714b: $00
    nop                                           ; $714c: $00
    nop                                           ; $714d: $00
    nop                                           ; $714e: $00
    nop                                           ; $714f: $00
    nop                                           ; $7150: $00
    nop                                           ; $7151: $00
    nop                                           ; $7152: $00
    nop                                           ; $7153: $00
    nop                                           ; $7154: $00
    nop                                           ; $7155: $00
    nop                                           ; $7156: $00
    nop                                           ; $7157: $00
    nop                                           ; $7158: $00
    nop                                           ; $7159: $00
    nop                                           ; $715a: $00
    nop                                           ; $715b: $00
    nop                                           ; $715c: $00
    nop                                           ; $715d: $00
    nop                                           ; $715e: $00
    nop                                           ; $715f: $00
    nop                                           ; $7160: $00
    nop                                           ; $7161: $00
    nop                                           ; $7162: $00
    nop                                           ; $7163: $00
    nop                                           ; $7164: $00
    nop                                           ; $7165: $00
    nop                                           ; $7166: $00
    nop                                           ; $7167: $00
    nop                                           ; $7168: $00
    nop                                           ; $7169: $00
    nop                                           ; $716a: $00
    nop                                           ; $716b: $00
    nop                                           ; $716c: $00
    nop                                           ; $716d: $00
    nop                                           ; $716e: $00
    nop                                           ; $716f: $00
    nop                                           ; $7170: $00
    nop                                           ; $7171: $00
    nop                                           ; $7172: $00
    nop                                           ; $7173: $00
    push af                                       ; $7174: $f5
    push bc                                       ; $7175: $c5
    push de                                       ; $7176: $d5
    push hl                                       ; $7177: $e5
    ldh a, [$96]                                  ; $7178: $f0 $96
    push af                                       ; $717a: $f5
    rst $20                                       ; $717b: $e7
    ldh [rSB], a                                  ; $717c: $e0 $01
    ld a, $90                                     ; $717e: $3e $90
    ldh [rWY], a                                  ; $7180: $e0 $4a
    call Call_000_23b6                            ; $7182: $cd $b6 $23
    call Call_000_2e3b                            ; $7185: $cd $3b $2e
    call Call_000_0341                            ; $7188: $cd $41 $03
    xor a                                         ; $718b: $af
    ldh [$b9], a                                  ; $718c: $e0 $b9
    ldh [$b8], a                                  ; $718e: $e0 $b8
    xor a                                         ; $7190: $af
    ldh [$8b], a                                  ; $7191: $e0 $8b
    ldh [$8a], a                                  ; $7193: $e0 $8a
    ld hl, $6a80                                  ; $7195: $21 $80 $6a
    ld de, $a000                                  ; $7198: $11 $00 $a0
    ld c, $10                                     ; $719b: $0e $10
    call Call_000_0468                            ; $719d: $cd $68 $04
    ld hl, $6bd0                                  ; $71a0: $21 $d0 $6b
    ld de, $a100                                  ; $71a3: $11 $00 $a1
    ld c, $04                                     ; $71a6: $0e $04
    call Call_000_0468                            ; $71a8: $cd $68 $04
    ld hl, $6b80                                  ; $71ab: $21 $80 $6b
    ld de, $0a01                                  ; $71ae: $11 $01 $0a
    call Call_000_05a8                            ; $71b1: $cd $a8 $05
    ld hl, $6c10                                  ; $71b4: $21 $10 $6c
    ld de, $0901                                  ; $71b7: $11 $01 $09
    call Call_000_05a8                            ; $71ba: $cd $a8 $05
    ld hl, $6c20                                  ; $71bd: $21 $20 $6c
    ld de, $0101                                  ; $71c0: $11 $01 $01
    call Call_000_05a8                            ; $71c3: $cd $a8 $05
    ld de, $87c0                                  ; $71c6: $11 $c0 $87
    ld b, $00                                     ; $71c9: $06 $00
    rst $18                                       ; $71cb: $df
    inc c                                         ; $71cc: $0c
    ld bc, $eaaf                                  ; $71cd: $01 $af $ea
    ld [hl], b                                    ; $71d0: $70
    call nz, $73ea                                ; $71d1: $c4 $ea $73
    call nz, Call_00a_74ea                        ; $71d4: $c4 $ea $74
    call nz, Call_00a_76ea                        ; $71d7: $c4 $ea $76
    call nz, $d3cd                                ; $71da: $c4 $cd $d3
    ld [hl], e                                    ; $71dd: $73
    call Call_00a_73ed                            ; $71de: $cd $ed $73
    ld [$c475], a                                 ; $71e1: $ea $75 $c4
    call Call_00a_72bf                            ; $71e4: $cd $bf $72
    call Call_00a_7277                            ; $71e7: $cd $77 $72
    call Call_00a_7289                            ; $71ea: $cd $89 $72
    rst $18                                       ; $71ed: $df
    inc d                                         ; $71ee: $14
    inc bc                                        ; $71ef: $03
    call Call_000_04de                            ; $71f0: $cd $de $04
    call Call_000_0371                            ; $71f3: $cd $71 $03
    ld c, $10                                     ; $71f6: $0e $10
    call Call_000_25af                            ; $71f8: $cd $af $25

jr_00a_71fb:
    ldh a, [$94]                                  ; $71fb: $f0 $94
    and $02                                       ; $71fd: $e6 $02
    jr nz, jr_00a_7227                            ; $71ff: $20 $26

    ldh a, [$94]                                  ; $7201: $f0 $94
    and $01                                       ; $7203: $e6 $01
    jr nz, jr_00a_720f                            ; $7205: $20 $08

    call Call_00a_72d2                            ; $7207: $cd $d2 $72
    call Call_000_2e3b                            ; $720a: $cd $3b $2e
    jr jr_00a_71fb                                ; $720d: $18 $ec

jr_00a_720f:
    rst $08                                       ; $720f: $cf
    ld e, h                                       ; $7210: $5c
    ld a, [$c473]                                 ; $7211: $fa $73 $c4
    add $80                                       ; $7214: $c6 $80
    ld l, a                                       ; $7216: $6f
    adc $c4                                       ; $7217: $ce $c4
    sub l                                         ; $7219: $95
    ld h, a                                       ; $721a: $67
    ld a, [hl]                                    ; $721b: $7e
    cp $0d                                        ; $721c: $fe $0d
    jr nz, jr_00a_7222                            ; $721e: $20 $02

    ld a, $ff                                     ; $7220: $3e $ff

jr_00a_7222:
    ld [$c2a7], a                                 ; $7222: $ea $a7 $c2
    jr jr_00a_7229                                ; $7225: $18 $02

jr_00a_7227:
    rst $08                                       ; $7227: $cf
    ld e, l                                       ; $7228: $5d

jr_00a_7229:
    ld c, $10                                     ; $7229: $0e $10
    call Call_000_25a1                            ; $722b: $cd $a1 $25
    call Call_000_2625                            ; $722e: $cd $25 $26
    ld a, $fa                                     ; $7231: $3e $fa
    ld [$c441], a                                 ; $7233: $ea $41 $c4
    ld a, $fa                                     ; $7236: $3e $fa
    ld [$c46a], a                                 ; $7238: $ea $6a $c4
    ld hl, $c2a0                                  ; $723b: $21 $a0 $c2
    ld de, $c466                                  ; $723e: $11 $66 $c4
    ld bc, $0004                                  ; $7241: $01 $04 $00
    call Call_000_03d3                            ; $7244: $cd $d3 $03
    ld a, [$c2a4]                                 ; $7247: $fa $a4 $c2
    ld [$c465], a                                 ; $724a: $ea $65 $c4
    pop af                                        ; $724d: $f1
    ldh [$96], a                                  ; $724e: $e0 $96
    ldh [rSVBK], a                                ; $7250: $e0 $70
    pop hl                                        ; $7252: $e1
    pop de                                        ; $7253: $d1
    pop bc                                        ; $7254: $c1
    pop af                                        ; $7255: $f1
    ret                                           ; $7256: $c9


Call_00a_7257:
    ld a, $01                                     ; $7257: $3e $01
    ldh [$96], a                                  ; $7259: $e0 $96
    ldh [rSVBK], a                                ; $725b: $e0 $70
    ld hl, $6fe5                                  ; $725d: $21 $e5 $6f
    ld de, $d000                                  ; $7260: $11 $00 $d0
    call Call_000_1f2f                            ; $7263: $cd $2f $1f
    ret                                           ; $7266: $c9


Call_00a_7267:
    ld a, $01                                     ; $7267: $3e $01
    ldh [$96], a                                  ; $7269: $e0 $96
    ldh [rSVBK], a                                ; $726b: $e0 $70
    ld hl, $7085                                  ; $726d: $21 $85 $70
    ld de, $d400                                  ; $7270: $11 $00 $d4
    call Call_000_1f2f                            ; $7273: $cd $2f $1f
    ret                                           ; $7276: $c9


Call_00a_7277:
    ld a, $01                                     ; $7277: $3e $01
    ldh [$96], a                                  ; $7279: $e0 $96
    ldh [rSVBK], a                                ; $727b: $e0 $70
    ld hl, $d000                                  ; $727d: $21 $00 $d0
    ld de, $9800                                  ; $7280: $11 $00 $98
    ld c, $24                                     ; $7283: $0e $24
    call Call_000_0468                            ; $7285: $cd $68 $04
    ret                                           ; $7288: $c9


Call_00a_7289:
    ld a, $01                                     ; $7289: $3e $01
    ldh [$96], a                                  ; $728b: $e0 $96
    ldh [rSVBK], a                                ; $728d: $e0 $70
    ld hl, $d400                                  ; $728f: $21 $00 $d4
    ld de, $b800                                  ; $7292: $11 $00 $b8
    ld c, $24                                     ; $7295: $0e $24
    call Call_000_0468                            ; $7297: $cd $68 $04
    ret                                           ; $729a: $c9


Call_00a_729b:
    ld a, $01                                     ; $729b: $3e $01
    ldh [$96], a                                  ; $729d: $e0 $96
    ldh [rSVBK], a                                ; $729f: $e0 $70
    ld hl, $d080                                  ; $72a1: $21 $80 $d0
    ld de, $9880                                  ; $72a4: $11 $80 $98
    ld c, $1a                                     ; $72a7: $0e $1a
    call Call_000_0468                            ; $72a9: $cd $68 $04
    ret                                           ; $72ac: $c9


    ld a, $01                                     ; $72ad: $3e $01
    ldh [$96], a                                  ; $72af: $e0 $96
    ldh [rSVBK], a                                ; $72b1: $e0 $70
    ld hl, $d480                                  ; $72b3: $21 $80 $d4
    ld de, $b880                                  ; $72b6: $11 $80 $b8
    ld c, $1a                                     ; $72b9: $0e $1a
    call Call_000_0468                            ; $72bb: $cd $68 $04
    ret                                           ; $72be: $c9


Call_00a_72bf:
    call Call_00a_7257                            ; $72bf: $cd $57 $72
    call Call_00a_7267                            ; $72c2: $cd $67 $72
    ld a, $01                                     ; $72c5: $3e $01
    ldh [$96], a                                  ; $72c7: $e0 $96
    ldh [rSVBK], a                                ; $72c9: $e0 $70
    rst $18                                       ; $72cb: $df
    ld a, [de]                                    ; $72cc: $1a
    inc bc                                        ; $72cd: $03
    call Call_00a_7387                            ; $72ce: $cd $87 $73
    ret                                           ; $72d1: $c9


Call_00a_72d2:
    call Call_00a_73fc                            ; $72d2: $cd $fc $73
    rst $18                                       ; $72d5: $df
    ld c, $0c                                     ; $72d6: $0e $0c
    ld hl, $c480                                  ; $72d8: $21 $80 $c4
    ld a, [$c474]                                 ; $72db: $fa $74 $c4
    add l                                         ; $72de: $85
    ld l, a                                       ; $72df: $6f
    jr nc, jr_00a_72e3                            ; $72e0: $30 $01

    inc h                                         ; $72e2: $24

jr_00a_72e3:
    ld b, $00                                     ; $72e3: $06 $00
    ld c, $07                                     ; $72e5: $0e $07

jr_00a_72e7:
    ld a, [hl+]                                   ; $72e7: $2a
    cp $ff                                        ; $72e8: $fe $ff
    jr z, jr_00a_7304                             ; $72ea: $28 $18

    push bc                                       ; $72ec: $c5
    push hl                                       ; $72ed: $e5
    ld b, a                                       ; $72ee: $47
    ld hl, $6fc7                                  ; $72ef: $21 $c7 $6f
    call $6caf                                    ; $72f2: $cd $af $6c
    pop hl                                        ; $72f5: $e1
    pop bc                                        ; $72f6: $c1
    jr z, jr_00a_7300                             ; $72f7: $28 $07

    push bc                                       ; $72f9: $c5
    push hl                                       ; $72fa: $e5
    call Call_00a_6c58                            ; $72fb: $cd $58 $6c
    pop hl                                        ; $72fe: $e1
    pop bc                                        ; $72ff: $c1

jr_00a_7300:
    inc b                                         ; $7300: $04
    dec c                                         ; $7301: $0d
    jr nz, jr_00a_72e7                            ; $7302: $20 $e3

jr_00a_7304:
    call $7344                                    ; $7304: $cd $44 $73
    ld a, [$c476]                                 ; $7307: $fa $76 $c4
    add a                                         ; $730a: $87
    add $06                                       ; $730b: $c6 $06
    add a                                         ; $730d: $87
    add a                                         ; $730e: $87
    add a                                         ; $730f: $87
    add $08                                       ; $7310: $c6 $08
    ld e, a                                       ; $7312: $5f
    ldh a, [$8c]                                  ; $7313: $f0 $8c
    rrca                                          ; $7315: $0f
    and $07                                       ; $7316: $e6 $07
    ld hl, $733c                                  ; $7318: $21 $3c $73
    add l                                         ; $731b: $85
    ld l, a                                       ; $731c: $6f
    jr nc, jr_00a_7320                            ; $731d: $30 $01

    inc h                                         ; $731f: $24

jr_00a_7320:
    ld a, e                                       ; $7320: $7b
    sub [hl]                                      ; $7321: $96
    ld e, a                                       ; $7322: $5f
    ldh a, [$8c]                                  ; $7323: $f0 $8c
    rrca                                          ; $7325: $0f
    and $07                                       ; $7326: $e6 $07
    ld hl, $733c                                  ; $7328: $21 $3c $73
    add l                                         ; $732b: $85
    ld l, a                                       ; $732c: $6f
    jr nc, jr_00a_7330                            ; $732d: $30 $01

    inc h                                         ; $732f: $24

jr_00a_7330:
    ld a, [hl]                                    ; $7330: $7e
    add $03                                       ; $7331: $c6 $03
    ld d, a                                       ; $7333: $57
    ld b, $20                                     ; $7334: $06 $20
    ld c, $7c                                     ; $7336: $0e $7c
    call Call_000_26a4                            ; $7338: $cd $a4 $26
    ret                                           ; $733b: $c9


    nop                                           ; $733c: $00
    ld [bc], a                                    ; $733d: $02
    inc b                                         ; $733e: $04
    inc b                                         ; $733f: $04
    inc bc                                        ; $7340: $03
    inc bc                                        ; $7341: $03
    ld [bc], a                                    ; $7342: $02
    ld bc, $c5f5                                  ; $7343: $01 $f5 $c5
    push de                                       ; $7346: $d5
    push hl                                       ; $7347: $e5
    ld d, $4c                                     ; $7348: $16 $4c
    ldh a, [$8c]                                  ; $734a: $f0 $8c
    rrca                                          ; $734c: $0f
    rrca                                          ; $734d: $0f
    and $07                                       ; $734e: $e6 $07
    ld hl, $6ca7                                  ; $7350: $21 $a7 $6c
    add l                                         ; $7353: $85
    ld l, a                                       ; $7354: $6f
    jr nc, jr_00a_7358                            ; $7355: $30 $01

    inc h                                         ; $7357: $24

jr_00a_7358:
    ld a, [hl]                                    ; $7358: $7e
    ld e, a                                       ; $7359: $5f
    ld a, [$c474]                                 ; $735a: $fa $74 $c4
    and a                                         ; $735d: $a7
    jr z, jr_00a_736c                             ; $735e: $28 $0c

    push de                                       ; $7360: $d5
    ld a, e                                       ; $7361: $7b
    add $24                                       ; $7362: $c6 $24
    ld e, a                                       ; $7364: $5f
    ld bc, $0910                                  ; $7365: $01 $10 $09
    call Call_000_26a4                            ; $7368: $cd $a4 $26
    pop de                                        ; $736b: $d1

jr_00a_736c:
    ld hl, $c475                                  ; $736c: $21 $75 $c4
    ld a, [$c474]                                 ; $736f: $fa $74 $c4
    add $07                                       ; $7372: $c6 $07
    cp [hl]                                       ; $7374: $be
    jr nc, jr_00a_7382                            ; $7375: $30 $0b

    ld a, e                                       ; $7377: $7b
    cpl                                           ; $7378: $2f
    add $94                                       ; $7379: $c6 $94
    ld e, a                                       ; $737b: $5f
    ld bc, $4910                                  ; $737c: $01 $10 $49
    call Call_000_26a4                            ; $737f: $cd $a4 $26

jr_00a_7382:
    pop hl                                        ; $7382: $e1
    pop de                                        ; $7383: $d1
    pop bc                                        ; $7384: $c1
    pop af                                        ; $7385: $f1
    ret                                           ; $7386: $c9


Call_00a_7387:
    ld hl, $1a05                                  ; $7387: $21 $05 $1a
    rst $18                                       ; $738a: $df
    inc a                                         ; $738b: $3c
    dec b                                         ; $738c: $05
    cpl                                           ; $738d: $2f
    inc a                                         ; $738e: $3c
    add $14                                       ; $738f: $c6 $14
    srl a                                         ; $7391: $cb $3f
    ld de, $d020                                  ; $7393: $11 $20 $d0
    add e                                         ; $7396: $83
    ld e, a                                       ; $7397: $5f
    jr nc, jr_00a_739b                            ; $7398: $30 $01

    inc d                                         ; $739a: $14

jr_00a_739b:
    ld hl, $1a05                                  ; $739b: $21 $05 $1a
    ld c, $20                                     ; $739e: $0e $20
    rst $18                                       ; $73a0: $df
    ld [hl+], a                                   ; $73a1: $22
    dec b                                         ; $73a2: $05
    ld de, $d081                                  ; $73a3: $11 $81 $d0
    ld hl, $c480                                  ; $73a6: $21 $80 $c4
    ld a, [$c474]                                 ; $73a9: $fa $74 $c4
    add l                                         ; $73ac: $85
    ld l, a                                       ; $73ad: $6f
    jr nc, jr_00a_73b1                            ; $73ae: $30 $01

    inc h                                         ; $73b0: $24

jr_00a_73b1:
    ld c, $07                                     ; $73b1: $0e $07

jr_00a_73b3:
    ld a, [hl+]                                   ; $73b3: $2a
    cp $ff                                        ; $73b4: $fe $ff
    jr z, jr_00a_73d2                             ; $73b6: $28 $1a

    push bc                                       ; $73b8: $c5
    push hl                                       ; $73b9: $e5
    add $06                                       ; $73ba: $c6 $06
    ld l, a                                       ; $73bc: $6f
    adc $1a                                       ; $73bd: $ce $1a
    sub l                                         ; $73bf: $95
    ld h, a                                       ; $73c0: $67
    ld c, $20                                     ; $73c1: $0e $20
    rst $18                                       ; $73c3: $df
    ld [hl+], a                                   ; $73c4: $22
    dec b                                         ; $73c5: $05
    ld a, $40                                     ; $73c6: $3e $40
    add e                                         ; $73c8: $83
    ld e, a                                       ; $73c9: $5f
    jr nc, jr_00a_73cd                            ; $73ca: $30 $01

    inc d                                         ; $73cc: $14

jr_00a_73cd:
    pop hl                                        ; $73cd: $e1
    pop bc                                        ; $73ce: $c1
    dec c                                         ; $73cf: $0d
    jr nz, jr_00a_73b3                            ; $73d0: $20 $e1

jr_00a_73d2:
    ret                                           ; $73d2: $c9


    ld de, $c480                                  ; $73d3: $11 $80 $c4
    ld b, $00                                     ; $73d6: $06 $00
    ld c, $0e                                     ; $73d8: $0e $0e

jr_00a_73da:
    ld hl, $6fa9                                  ; $73da: $21 $a9 $6f
    call $6caf                                    ; $73dd: $cd $af $6c
    jr z, jr_00a_73e5                             ; $73e0: $28 $03

    ld a, b                                       ; $73e2: $78
    ld [de], a                                    ; $73e3: $12
    inc de                                        ; $73e4: $13

jr_00a_73e5:
    inc b                                         ; $73e5: $04
    dec c                                         ; $73e6: $0d
    jr nz, jr_00a_73da                            ; $73e7: $20 $f1

    ld a, $ff                                     ; $73e9: $3e $ff
    ld [de], a                                    ; $73eb: $12
    ret                                           ; $73ec: $c9


Call_00a_73ed:
    ld hl, $c480                                  ; $73ed: $21 $80 $c4
    ld b, $00                                     ; $73f0: $06 $00

jr_00a_73f2:
    ld a, [hl+]                                   ; $73f2: $2a
    cp $ff                                        ; $73f3: $fe $ff
    jr z, jr_00a_73fa                             ; $73f5: $28 $03

    inc b                                         ; $73f7: $04
    jr jr_00a_73f2                                ; $73f8: $18 $f8

jr_00a_73fa:
    ld a, b                                       ; $73fa: $78
    ret                                           ; $73fb: $c9


Call_00a_73fc:
    ldh a, [$91]                                  ; $73fc: $f0 $91
    bit 6, a                                      ; $73fe: $cb $77
    jr z, jr_00a_740c                             ; $7400: $28 $0a

    ld hl, $c473                                  ; $7402: $21 $73 $c4
    dec [hl]                                      ; $7405: $35
    ld hl, $c476                                  ; $7406: $21 $76 $c4
    dec [hl]                                      ; $7409: $35
    jr jr_00a_741d                                ; $740a: $18 $11

jr_00a_740c:
    ldh a, [$91]                                  ; $740c: $f0 $91
    bit 7, a                                      ; $740e: $cb $7f
    jr z, jr_00a_741c                             ; $7410: $28 $0a

    ld hl, $c473                                  ; $7412: $21 $73 $c4
    inc [hl]                                      ; $7415: $34
    ld hl, $c476                                  ; $7416: $21 $76 $c4
    inc [hl]                                      ; $7419: $34
    jr jr_00a_741d                                ; $741a: $18 $01

jr_00a_741c:
    ret                                           ; $741c: $c9


jr_00a_741d:
    rst $08                                       ; $741d: $cf
    ld e, e                                       ; $741e: $5b
    ld a, [$c475]                                 ; $741f: $fa $75 $c4
    ld b, a                                       ; $7422: $47
    ld hl, $c473                                  ; $7423: $21 $73 $c4
    ld a, [hl]                                    ; $7426: $7e
    bit 7, a                                      ; $7427: $cb $7f
    jr z, jr_00a_742e                             ; $7429: $28 $03

    xor a                                         ; $742b: $af
    jr jr_00a_7433                                ; $742c: $18 $05

jr_00a_742e:
    cp b                                          ; $742e: $b8
    jr c, jr_00a_7433                             ; $742f: $38 $02

    ld a, b                                       ; $7431: $78
    dec a                                         ; $7432: $3d

jr_00a_7433:
    ld [hl], a                                    ; $7433: $77
    ld hl, $c476                                  ; $7434: $21 $76 $c4
    ld a, [hl]                                    ; $7437: $7e
    bit 7, a                                      ; $7438: $cb $7f
    jr z, jr_00a_743f                             ; $743a: $28 $03

    xor a                                         ; $743c: $af
    jr jr_00a_7446                                ; $743d: $18 $07

jr_00a_743f:
    cp $07                                        ; $743f: $fe $07
    jr c, jr_00a_7446                             ; $7441: $38 $03

    ld a, $07                                     ; $7443: $3e $07
    dec a                                         ; $7445: $3d

jr_00a_7446:
    ld [hl], a                                    ; $7446: $77
    ld hl, $c476                                  ; $7447: $21 $76 $c4
    ld a, [$c473]                                 ; $744a: $fa $73 $c4
    sub [hl]                                      ; $744d: $96
    ld hl, $c474                                  ; $744e: $21 $74 $c4
    cp [hl]                                       ; $7451: $be
    jr z, jr_00a_7469                             ; $7452: $28 $15

    ld [hl], a                                    ; $7454: $77
    call Call_00a_72bf                            ; $7455: $cd $bf $72
    call Call_00a_729b                            ; $7458: $cd $9b $72
    call Call_000_2ed5                            ; $745b: $cd $d5 $2e
    ld bc, $adcd                                  ; $745e: $01 $cd $ad
    ld [hl], d                                    ; $7461: $72

jr_00a_7462:
    call Call_000_2ed5                            ; $7462: $cd $d5 $2e
    ld bc, $12df                                  ; $7465: $01 $df $12

jr_00a_7468:
    inc bc                                        ; $7468: $03

jr_00a_7469:
    ret                                           ; $7469: $c9


jr_00a_746a:
    nop                                           ; $746a: $00
    nop                                           ; $746b: $00
    nop                                           ; $746c: $00
    nop                                           ; $746d: $00
    nop                                           ; $746e: $00
    nop                                           ; $746f: $00
    nop                                           ; $7470: $00
    nop                                           ; $7471: $00
    ld bc, $0300                                  ; $7472: $01 $00 $03
    ld bc, $0306                                  ; $7475: $01 $06 $03
    inc c                                         ; $7478: $0c
    rlca                                          ; $7479: $07
    jr jr_00a_748b                                ; $747a: $18 $0f

jr_00a_747c:
    jr nc, @+$21                                  ; $747c: $30 $1f

    ld a, b                                       ; $747e: $78
    rlca                                          ; $747f: $07
    ld [$0807], sp                                ; $7480: $08 $07 $08
    rlca                                          ; $7483: $07
    ld [$0807], sp                                ; $7484: $08 $07 $08
    rlca                                          ; $7487: $07
    ld [$0f07], sp                                ; $7488: $08 $07 $0f

jr_00a_748b:
    nop                                           ; $748b: $00
    nop                                           ; $748c: $00
    nop                                           ; $748d: $00

jr_00a_748e:
    nop                                           ; $748e: $00
    nop                                           ; $748f: $00
    nop                                           ; $7490: $00
    nop                                           ; $7491: $00
    nop                                           ; $7492: $00
    nop                                           ; $7493: $00
    add b                                         ; $7494: $80
    nop                                           ; $7495: $00
    ret nz                                        ; $7496: $c0

    add b                                         ; $7497: $80

jr_00a_7498:
    ld h, b                                       ; $7498: $60
    ret nz                                        ; $7499: $c0

    jr nc, jr_00a_747c                            ; $749a: $30 $e0

    jr jr_00a_748e                                ; $749c: $18 $f0

    inc a                                         ; $749e: $3c
    ret nz                                        ; $749f: $c0

    jr nz, jr_00a_7462                            ; $74a0: $20 $c0

    jr nz, @-$3e                                  ; $74a2: $20 $c0

    jr nz, @-$3e                                  ; $74a4: $20 $c0

    jr nz, jr_00a_7468                            ; $74a6: $20 $c0

    jr nz, jr_00a_746a                            ; $74a8: $20 $c0

    ldh [rP1], a                                  ; $74aa: $e0 $00
    nop                                           ; $74ac: $00
    nop                                           ; $74ad: $00
    nop                                           ; $74ae: $00
    nop                                           ; $74af: $00
    nop                                           ; $74b0: $00
    nop                                           ; $74b1: $00
    nop                                           ; $74b2: $00
    nop                                           ; $74b3: $00
    ld bc, $0700                                  ; $74b4: $01 $00 $07
    ld bc, $071c                                  ; $74b7: $01 $1c $07

jr_00a_74ba:
    jr nc, jr_00a_74db                            ; $74ba: $30 $1f

    jr @+$09                                      ; $74bc: $18 $07

    ld [$1807], sp                                ; $74be: $08 $07 $18
    rrca                                          ; $74c1: $0f
    db $10                                        ; $74c2: $10
    rrca                                          ; $74c3: $0f
    jr nc, jr_00a_74e5                            ; $74c4: $30 $1f

    jr nc, jr_00a_74e7                            ; $74c6: $30 $1f

    inc e                                         ; $74c8: $1c
    rlca                                          ; $74c9: $07
    rlca                                          ; $74ca: $07
    ld bc, $0001                                  ; $74cb: $01 $01 $00
    nop                                           ; $74ce: $00
    nop                                           ; $74cf: $00
    nop                                           ; $74d0: $00
    nop                                           ; $74d1: $00
    ld b, b                                       ; $74d2: $40
    nop                                           ; $74d3: $00
    ldh [rLCDC], a                                ; $74d4: $e0 $40
    jr nz, jr_00a_7498                            ; $74d6: $20 $c0

    jr nc, jr_00a_74ba                            ; $74d8: $30 $e0

    db $10                                        ; $74da: $10

jr_00a_74db:
    ldh [rNR23], a                                ; $74db: $e0 $18
    ldh a, [$08]                                  ; $74dd: $f0 $08
    ldh a, [$3c]                                  ; $74df: $f0 $3c
    add sp, $2c                                   ; $74e1: $e8 $2c
    ret nz                                        ; $74e3: $c0

    ld h, b                                       ; $74e4: $60

jr_00a_74e5:
    ret nz                                        ; $74e5: $c0

    ld b, b                                       ; $74e6: $40

jr_00a_74e7:
    add b                                         ; $74e7: $80
    ret nz                                        ; $74e8: $c0

    add b                                         ; $74e9: $80

Call_00a_74ea:
    add b                                         ; $74ea: $80
    nop                                           ; $74eb: $00
    nop                                           ; $74ec: $00
    nop                                           ; $74ed: $00
    nop                                           ; $74ee: $00
    nop                                           ; $74ef: $00
    nop                                           ; $74f0: $00
    nop                                           ; $74f1: $00
    nop                                           ; $74f2: $00
    nop                                           ; $74f3: $00
    rra                                           ; $74f4: $1f
    nop                                           ; $74f5: $00
    inc c                                         ; $74f6: $0c
    rlca                                          ; $74f7: $07
    inc b                                         ; $74f8: $04
    inc bc                                        ; $74f9: $03
    inc b                                         ; $74fa: $04
    inc bc                                        ; $74fb: $03
    ld [$1007], sp                                ; $74fc: $08 $07 $10
    rrca                                          ; $74ff: $0f
    jr nz, jr_00a_7521                            ; $7500: $20 $1f

    ld b, b                                       ; $7502: $40
    ccf                                           ; $7503: $3f
    jr nz, jr_00a_7525                            ; $7504: $20 $1f

    ld de, $0a0e                                  ; $7506: $11 $0e $0a
    inc b                                         ; $7509: $04
    inc b                                         ; $750a: $04
    nop                                           ; $750b: $00
    nop                                           ; $750c: $00
    nop                                           ; $750d: $00
    nop                                           ; $750e: $00
    nop                                           ; $750f: $00
    nop                                           ; $7510: $00
    nop                                           ; $7511: $00
    nop                                           ; $7512: $00
    nop                                           ; $7513: $00
    ld hl, sp+$00                                 ; $7514: $f8 $00
    ld [$08f0], sp                                ; $7516: $08 $f0 $08
    ldh a, [$08]                                  ; $7519: $f0 $08
    ldh a, [$08]                                  ; $751b: $f0 $08
    ldh a, [$08]                                  ; $751d: $f0 $08
    ldh a, [$08]                                  ; $751f: $f0 $08

jr_00a_7521:
    ldh a, [$78]                                  ; $7521: $f0 $78
    sub b                                         ; $7523: $90
    sbc b                                         ; $7524: $98

jr_00a_7525:
    nop                                           ; $7525: $00
    ld [$0000], sp                                ; $7526: $08 $00 $00
    nop                                           ; $7529: $00
    nop                                           ; $752a: $00
    nop                                           ; $752b: $00
    nop                                           ; $752c: $00
    nop                                           ; $752d: $00
    nop                                           ; $752e: $00
    nop                                           ; $752f: $00
    nop                                           ; $7530: $00
    nop                                           ; $7531: $00
    ld b, $00                                     ; $7532: $06 $00
    rlca                                          ; $7534: $07
    ld [bc], a                                    ; $7535: $02
    ld [bc], a                                    ; $7536: $02
    ld bc, $0306                                  ; $7537: $01 $06 $03

jr_00a_753a:
    inc e                                         ; $753a: $1c
    rlca                                          ; $753b: $07
    ld [hl], b                                    ; $753c: $70
    rra                                           ; $753d: $1f
    ret nz                                        ; $753e: $c0

    ld a, a                                       ; $753f: $7f
    ld b, b                                       ; $7540: $40
    ccf                                           ; $7541: $3f
    ld h, b                                       ; $7542: $60
    ccf                                           ; $7543: $3f
    inc hl                                        ; $7544: $23
    ld e, $3e                                     ; $7545: $1e $3e
    jr jr_00a_7561                                ; $7547: $18 $18

    nop                                           ; $7549: $00
    nop                                           ; $754a: $00
    nop                                           ; $754b: $00
    nop                                           ; $754c: $00
    nop                                           ; $754d: $00
    nop                                           ; $754e: $00
    nop                                           ; $754f: $00
    nop                                           ; $7550: $00
    nop                                           ; $7551: $00
    nop                                           ; $7552: $00
    nop                                           ; $7553: $00
    add b                                         ; $7554: $80
    nop                                           ; $7555: $00
    ldh [$80], a                                  ; $7556: $e0 $80
    jr c, jr_00a_753a                             ; $7558: $38 $e0

    inc c                                         ; $755a: $0c
    ld hl, sp+$08                                 ; $755b: $f8 $08
    ldh a, [rNR23]                                ; $755d: $f0 $18
    ldh a, [rNR10]                                ; $755f: $f0 $10

jr_00a_7561:
    ldh [$30], a                                  ; $7561: $e0 $30
    ldh [$a0], a                                  ; $7563: $e0 $a0
    ld b, b                                       ; $7565: $40
    ldh [rLCDC], a                                ; $7566: $e0 $40
    ld b, b                                       ; $7568: $40
    nop                                           ; $7569: $00
    nop                                           ; $756a: $00
    nop                                           ; $756b: $00
    nop                                           ; $756c: $00
    nop                                           ; $756d: $00
    nop                                           ; $756e: $00
    nop                                           ; $756f: $00
    nop                                           ; $7570: $00
    nop                                           ; $7571: $00
    ld bc, $0100                                  ; $7572: $01 $00 $01
    nop                                           ; $7575: $00
    ld bc, $7f00                                  ; $7576: $01 $00 $7f
    nop                                           ; $7579: $00
    ld b, b                                       ; $757a: $40
    ccf                                           ; $757b: $3f

jr_00a_757c:
    ld b, b                                       ; $757c: $40
    ccf                                           ; $757d: $3f
    ld b, b                                       ; $757e: $40
    ccf                                           ; $757f: $3f
    ld b, b                                       ; $7580: $40
    ccf                                           ; $7581: $3f
    ld b, b                                       ; $7582: $40
    ccf                                           ; $7583: $3f
    ld a, a                                       ; $7584: $7f
    nop                                           ; $7585: $00
    ld bc, $0100                                  ; $7586: $01 $00 $01
    nop                                           ; $7589: $00
    ld bc, $0000                                  ; $758a: $01 $00 $00
    nop                                           ; $758d: $00

jr_00a_758e:
    nop                                           ; $758e: $00
    nop                                           ; $758f: $00
    nop                                           ; $7590: $00
    nop                                           ; $7591: $00
    nop                                           ; $7592: $00
    nop                                           ; $7593: $00
    add b                                         ; $7594: $80
    nop                                           ; $7595: $00
    ret nz                                        ; $7596: $c0

    add b                                         ; $7597: $80
    ld h, b                                       ; $7598: $60
    ret nz                                        ; $7599: $c0

    jr nc, jr_00a_757c                            ; $759a: $30 $e0

    jr jr_00a_758e                                ; $759c: $18 $f0

    inc c                                         ; $759e: $0c
    ld hl, sp+$18                                 ; $759f: $f8 $18
    ldh a, [$30]                                  ; $75a1: $f0 $30
    ldh [$60], a                                  ; $75a3: $e0 $60
    ret nz                                        ; $75a5: $c0

    ret nz                                        ; $75a6: $c0

    add b                                         ; $75a7: $80
    add b                                         ; $75a8: $80
    nop                                           ; $75a9: $00
    nop                                           ; $75aa: $00
    nop                                           ; $75ab: $00
    nop                                           ; $75ac: $00
    nop                                           ; $75ad: $00
    nop                                           ; $75ae: $00
    nop                                           ; $75af: $00
    nop                                           ; $75b0: $00
    nop                                           ; $75b1: $00
    nop                                           ; $75b2: $00
    nop                                           ; $75b3: $00
    jr jr_00a_75b6                                ; $75b4: $18 $00

jr_00a_75b6:
    ld a, $18                                     ; $75b6: $3e $18
    inc hl                                        ; $75b8: $23
    ld e, $60                                     ; $75b9: $1e $60
    ccf                                           ; $75bb: $3f

jr_00a_75bc:
    ld b, b                                       ; $75bc: $40
    ccf                                           ; $75bd: $3f
    ret nz                                        ; $75be: $c0

    ld a, a                                       ; $75bf: $7f
    ld [hl], b                                    ; $75c0: $70
    rra                                           ; $75c1: $1f
    inc e                                         ; $75c2: $1c
    rlca                                          ; $75c3: $07
    ld b, $03                                     ; $75c4: $06 $03
    ld [bc], a                                    ; $75c6: $02
    ld bc, $0207                                  ; $75c7: $01 $07 $02
    ld b, $00                                     ; $75ca: $06 $00
    nop                                           ; $75cc: $00
    nop                                           ; $75cd: $00
    nop                                           ; $75ce: $00
    nop                                           ; $75cf: $00
    nop                                           ; $75d0: $00
    nop                                           ; $75d1: $00
    nop                                           ; $75d2: $00
    nop                                           ; $75d3: $00
    ld b, b                                       ; $75d4: $40
    nop                                           ; $75d5: $00
    ldh [rLCDC], a                                ; $75d6: $e0 $40
    and b                                         ; $75d8: $a0
    ld b, b                                       ; $75d9: $40
    jr nc, jr_00a_75bc                            ; $75da: $30 $e0

    db $10                                        ; $75dc: $10
    ldh [rNR23], a                                ; $75dd: $e0 $18
    ldh a, [$08]                                  ; $75df: $f0 $08
    ldh a, [$0c]                                  ; $75e1: $f0 $0c
    ld hl, sp+$38                                 ; $75e3: $f8 $38
    ldh [$e0], a                                  ; $75e5: $e0 $e0
    add b                                         ; $75e7: $80
    add b                                         ; $75e8: $80
    nop                                           ; $75e9: $00
    nop                                           ; $75ea: $00
    nop                                           ; $75eb: $00
    nop                                           ; $75ec: $00
    nop                                           ; $75ed: $00
    nop                                           ; $75ee: $00
    nop                                           ; $75ef: $00
    nop                                           ; $75f0: $00
    nop                                           ; $75f1: $00
    inc b                                         ; $75f2: $04
    nop                                           ; $75f3: $00
    ld a, [bc]                                    ; $75f4: $0a
    inc b                                         ; $75f5: $04
    ld de, $200e                                  ; $75f6: $11 $0e $20
    rra                                           ; $75f9: $1f
    ld b, b                                       ; $75fa: $40
    ccf                                           ; $75fb: $3f
    jr nz, @+$21                                  ; $75fc: $20 $1f

    db $10                                        ; $75fe: $10
    rrca                                          ; $75ff: $0f
    ld [$0407], sp                                ; $7600: $08 $07 $04
    inc bc                                        ; $7603: $03
    inc b                                         ; $7604: $04
    inc bc                                        ; $7605: $03
    inc c                                         ; $7606: $0c
    rlca                                          ; $7607: $07
    rra                                           ; $7608: $1f
    nop                                           ; $7609: $00
    nop                                           ; $760a: $00
    nop                                           ; $760b: $00
    nop                                           ; $760c: $00
    nop                                           ; $760d: $00
    nop                                           ; $760e: $00
    nop                                           ; $760f: $00
    nop                                           ; $7610: $00
    nop                                           ; $7611: $00
    nop                                           ; $7612: $00
    nop                                           ; $7613: $00
    nop                                           ; $7614: $00
    nop                                           ; $7615: $00
    ld [$9800], sp                                ; $7616: $08 $00 $98
    nop                                           ; $7619: $00
    ld a, b                                       ; $761a: $78
    sub b                                         ; $761b: $90
    ld [$08f0], sp                                ; $761c: $08 $f0 $08
    ldh a, [$08]                                  ; $761f: $f0 $08
    ldh a, [$08]                                  ; $7621: $f0 $08
    ldh a, [$08]                                  ; $7623: $f0 $08
    ldh a, [$08]                                  ; $7625: $f0 $08
    ldh a, [$f8]                                  ; $7627: $f0 $f8
    nop                                           ; $7629: $00
    nop                                           ; $762a: $00
    nop                                           ; $762b: $00
    nop                                           ; $762c: $00
    nop                                           ; $762d: $00
    nop                                           ; $762e: $00
    nop                                           ; $762f: $00
    ld bc, $0700                                  ; $7630: $01 $00 $07
    ld bc, $071c                                  ; $7633: $01 $1c $07
    jr nc, jr_00a_7657                            ; $7636: $30 $1f

    jr nc, jr_00a_7659                            ; $7638: $30 $1f

    db $10                                        ; $763a: $10
    rrca                                          ; $763b: $0f
    jr jr_00a_764d                                ; $763c: $18 $0f

    ld [$1807], sp                                ; $763e: $08 $07 $18
    rlca                                          ; $7641: $07
    jr nc, jr_00a_7663                            ; $7642: $30 $1f

    inc e                                         ; $7644: $1c
    rlca                                          ; $7645: $07
    rlca                                          ; $7646: $07
    ld bc, $0001                                  ; $7647: $01 $01 $00
    nop                                           ; $764a: $00
    nop                                           ; $764b: $00
    nop                                           ; $764c: $00

jr_00a_764d:
    nop                                           ; $764d: $00
    nop                                           ; $764e: $00
    nop                                           ; $764f: $00
    nop                                           ; $7650: $00
    nop                                           ; $7651: $00
    add b                                         ; $7652: $80
    nop                                           ; $7653: $00
    ret nz                                        ; $7654: $c0

    add b                                         ; $7655: $80

jr_00a_7656:
    ld b, b                                       ; $7656: $40

jr_00a_7657:
    add b                                         ; $7657: $80

jr_00a_7658:
    ld h, b                                       ; $7658: $60

jr_00a_7659:
    ret nz                                        ; $7659: $c0

jr_00a_765a:
    inc l                                         ; $765a: $2c
    ret nz                                        ; $765b: $c0

jr_00a_765c:
    inc a                                         ; $765c: $3c
    add sp, $08                                   ; $765d: $e8 $08
    ldh a, [rNR23]                                ; $765f: $f0 $18
    ldh a, [rNR10]                                ; $7661: $f0 $10

jr_00a_7663:
    ldh [$30], a                                  ; $7663: $e0 $30
    ldh [rNR41], a                                ; $7665: $e0 $20
    ret nz                                        ; $7667: $c0

    ldh [rLCDC], a                                ; $7668: $e0 $40
    ld b, b                                       ; $766a: $40
    nop                                           ; $766b: $00
    nop                                           ; $766c: $00
    nop                                           ; $766d: $00
    nop                                           ; $766e: $00
    nop                                           ; $766f: $00
    nop                                           ; $7670: $00
    nop                                           ; $7671: $00
    rrca                                          ; $7672: $0f
    nop                                           ; $7673: $00
    ld [$0807], sp                                ; $7674: $08 $07 $08
    rlca                                          ; $7677: $07
    ld [$0807], sp                                ; $7678: $08 $07 $08
    rlca                                          ; $767b: $07
    ld [$7807], sp                                ; $767c: $08 $07 $78
    rlca                                          ; $767f: $07
    jr nc, @+$21                                  ; $7680: $30 $1f

    jr @+$11                                      ; $7682: $18 $0f

jr_00a_7684:
    inc c                                         ; $7684: $0c
    rlca                                          ; $7685: $07
    ld b, $03                                     ; $7686: $06 $03
    inc bc                                        ; $7688: $03
    ld bc, $0001                                  ; $7689: $01 $01 $00
    nop                                           ; $768c: $00
    nop                                           ; $768d: $00
    nop                                           ; $768e: $00
    nop                                           ; $768f: $00
    nop                                           ; $7690: $00
    nop                                           ; $7691: $00

jr_00a_7692:
    ldh [rP1], a                                  ; $7692: $e0 $00
    jr nz, jr_00a_7656                            ; $7694: $20 $c0

    jr nz, jr_00a_7658                            ; $7696: $20 $c0

    jr nz, jr_00a_765a                            ; $7698: $20 $c0

    jr nz, jr_00a_765c                            ; $769a: $20 $c0

    jr nz, @-$3e                                  ; $769c: $20 $c0

    inc a                                         ; $769e: $3c
    ret nz                                        ; $769f: $c0

    jr jr_00a_7692                                ; $76a0: $18 $f0

jr_00a_76a2:
    jr nc, jr_00a_7684                            ; $76a2: $30 $e0

    ld h, b                                       ; $76a4: $60
    ret nz                                        ; $76a5: $c0

    ret nz                                        ; $76a6: $c0

    add b                                         ; $76a7: $80
    add b                                         ; $76a8: $80
    nop                                           ; $76a9: $00
    nop                                           ; $76aa: $00
    nop                                           ; $76ab: $00
    nop                                           ; $76ac: $00
    nop                                           ; $76ad: $00
    nop                                           ; $76ae: $00
    nop                                           ; $76af: $00
    ld bc, $0300                                  ; $76b0: $01 $00 $03
    ld bc, $0306                                  ; $76b3: $01 $06 $03
    inc b                                         ; $76b6: $04
    inc bc                                        ; $76b7: $03
    inc c                                         ; $76b8: $0c
    rlca                                          ; $76b9: $07
    ld l, b                                       ; $76ba: $68
    rlca                                          ; $76bb: $07
    ld a, b                                       ; $76bc: $78
    cpl                                           ; $76bd: $2f
    jr nz, jr_00a_76df                            ; $76be: $20 $1f

    jr nc, @+$21                                  ; $76c0: $30 $1f

    db $10                                        ; $76c2: $10
    rrca                                          ; $76c3: $0f
    jr jr_00a_76d5                                ; $76c4: $18 $0f

    add hl, bc                                    ; $76c6: $09
    rlca                                          ; $76c7: $07

jr_00a_76c8:
    rrca                                          ; $76c8: $0f
    inc b                                         ; $76c9: $04

jr_00a_76ca:
    inc b                                         ; $76ca: $04
    nop                                           ; $76cb: $00
    nop                                           ; $76cc: $00
    nop                                           ; $76cd: $00
    nop                                           ; $76ce: $00
    nop                                           ; $76cf: $00
    nop                                           ; $76d0: $00
    nop                                           ; $76d1: $00
    ret nz                                        ; $76d2: $c0

    nop                                           ; $76d3: $00

jr_00a_76d4:
    ld [hl], b                                    ; $76d4: $70

jr_00a_76d5:
    ret nz                                        ; $76d5: $c0

    jr jr_00a_76c8                                ; $76d6: $18 $f0

    jr jr_00a_76ca                                ; $76d8: $18 $f0

    db $10                                        ; $76da: $10
    ldh [$30], a                                  ; $76db: $e0 $30
    ldh [rNR41], a                                ; $76dd: $e0 $20

jr_00a_76df:
    ret nz                                        ; $76df: $c0

    jr nc, jr_00a_76a2                            ; $76e0: $30 $c0

    jr jr_00a_76d4                                ; $76e2: $18 $f0

    ld [hl], b                                    ; $76e4: $70
    ret nz                                        ; $76e5: $c0

    ret nz                                        ; $76e6: $c0

    nop                                           ; $76e7: $00
    nop                                           ; $76e8: $00
    nop                                           ; $76e9: $00

Call_00a_76ea:
    nop                                           ; $76ea: $00
    nop                                           ; $76eb: $00
    nop                                           ; $76ec: $00
    nop                                           ; $76ed: $00
    nop                                           ; $76ee: $00
    nop                                           ; $76ef: $00
    nop                                           ; $76f0: $00
    nop                                           ; $76f1: $00
    nop                                           ; $76f2: $00
    nop                                           ; $76f3: $00
    nop                                           ; $76f4: $00
    nop                                           ; $76f5: $00
    ld hl, $3200                                  ; $76f6: $21 $00 $32
    ld bc, $133c                                  ; $76f9: $01 $3c $13
    jr nz, jr_00a_771d                            ; $76fc: $20 $1f

    jr nz, jr_00a_771f                            ; $76fe: $20 $1f

    jr nz, jr_00a_7721                            ; $7700: $20 $1f

    jr nz, jr_00a_7723                            ; $7702: $20 $1f

    jr nz, jr_00a_7725                            ; $7704: $20 $1f

    jr nz, jr_00a_7727                            ; $7706: $20 $1f

    ccf                                           ; $7708: $3f
    nop                                           ; $7709: $00
    nop                                           ; $770a: $00
    nop                                           ; $770b: $00
    nop                                           ; $770c: $00
    nop                                           ; $770d: $00
    nop                                           ; $770e: $00
    nop                                           ; $770f: $00
    nop                                           ; $7710: $00
    nop                                           ; $7711: $00
    ld b, b                                       ; $7712: $40
    nop                                           ; $7713: $00
    and b                                         ; $7714: $a0
    ld b, b                                       ; $7715: $40
    db $10                                        ; $7716: $10
    ldh [$08], a                                  ; $7717: $e0 $08
    ldh a, [rDIV]                                 ; $7719: $f0 $04
    ld hl, sp+$08                                 ; $771b: $f8 $08

jr_00a_771d:
    ldh a, [rNR10]                                ; $771d: $f0 $10

jr_00a_771f:
    ldh [rNR41], a                                ; $771f: $e0 $20

jr_00a_7721:
    ret nz                                        ; $7721: $c0

    ld b, b                                       ; $7722: $40

jr_00a_7723:
    add b                                         ; $7723: $80
    ld b, b                                       ; $7724: $40

jr_00a_7725:
    add b                                         ; $7725: $80
    ld h, b                                       ; $7726: $60

jr_00a_7727:
    ret nz                                        ; $7727: $c0

    ldh a, [rP1]                                  ; $7728: $f0 $00
    nop                                           ; $772a: $00
    nop                                           ; $772b: $00
    nop                                           ; $772c: $00
    nop                                           ; $772d: $00
    nop                                           ; $772e: $00
    nop                                           ; $772f: $00
    nop                                           ; $7730: $00
    nop                                           ; $7731: $00
    nop                                           ; $7732: $00
    nop                                           ; $7733: $00
    inc b                                         ; $7734: $04
    nop                                           ; $7735: $00
    ld c, $04                                     ; $7736: $0e $04
    dec bc                                        ; $7738: $0b
    inc b                                         ; $7739: $04
    jr jr_00a_774b                                ; $773a: $18 $0f

    db $10                                        ; $773c: $10
    rrca                                          ; $773d: $0f
    jr nc, jr_00a_775f                            ; $773e: $30 $1f

    jr nz, jr_00a_7761                            ; $7740: $20 $1f

    ld h, b                                       ; $7742: $60
    ccf                                           ; $7743: $3f
    jr c, @+$11                                   ; $7744: $38 $0f

    ld c, $03                                     ; $7746: $0e $03
    inc bc                                        ; $7748: $03
    nop                                           ; $7749: $00
    nop                                           ; $774a: $00

jr_00a_774b:
    nop                                           ; $774b: $00
    nop                                           ; $774c: $00
    nop                                           ; $774d: $00
    nop                                           ; $774e: $00
    nop                                           ; $774f: $00
    nop                                           ; $7750: $00
    nop                                           ; $7751: $00
    nop                                           ; $7752: $00
    nop                                           ; $7753: $00
    jr nc, jr_00a_7756                            ; $7754: $30 $00

jr_00a_7756:
    ld hl, sp+$30                                 ; $7756: $f8 $30
    adc b                                         ; $7758: $88
    ldh a, [$0c]                                  ; $7759: $f0 $0c
    ld hl, sp+$04                                 ; $775b: $f8 $04
    ld hl, sp+$06                                 ; $775d: $f8 $06

jr_00a_775f:
    db $fc                                        ; $775f: $fc
    inc e                                         ; $7760: $1c

jr_00a_7761:
    ldh a, [rSVBK]                                ; $7761: $f0 $70
    ret nz                                        ; $7763: $c0

    ret nz                                        ; $7764: $c0

    add b                                         ; $7765: $80
    add b                                         ; $7766: $80
    nop                                           ; $7767: $00
    ret nz                                        ; $7768: $c0

    add b                                         ; $7769: $80
    ret nz                                        ; $776a: $c0

    nop                                           ; $776b: $00
    nop                                           ; $776c: $00
    nop                                           ; $776d: $00
    nop                                           ; $776e: $00
    nop                                           ; $776f: $00
    nop                                           ; $7770: $00
    nop                                           ; $7771: $00
    ld bc, $0300                                  ; $7772: $01 $00 $03
    nop                                           ; $7775: $00
    rlca                                          ; $7776: $07
    ld [bc], a                                    ; $7777: $02
    dec c                                         ; $7778: $0d
    ld b, $18                                     ; $7779: $06 $18
    rrca                                          ; $777b: $0f
    jr nc, jr_00a_779d                            ; $777c: $30 $1f

    ld h, b                                       ; $777e: $60
    ccf                                           ; $777f: $3f
    jr nc, jr_00a_77a1                            ; $7780: $30 $1f

    jr jr_00a_7793                                ; $7782: $18 $0f

    dec c                                         ; $7784: $0d
    ld b, $07                                     ; $7785: $06 $07
    ld [bc], a                                    ; $7787: $02
    inc bc                                        ; $7788: $03
    nop                                           ; $7789: $00
    ld bc, $0000                                  ; $778a: $01 $00 $00
    nop                                           ; $778d: $00
    nop                                           ; $778e: $00
    nop                                           ; $778f: $00
    nop                                           ; $7790: $00
    nop                                           ; $7791: $00
    nop                                           ; $7792: $00

jr_00a_7793:
    nop                                           ; $7793: $00
    nop                                           ; $7794: $00
    nop                                           ; $7795: $00
    nop                                           ; $7796: $00
    nop                                           ; $7797: $00
    db $fc                                        ; $7798: $fc
    nop                                           ; $7799: $00
    inc b                                         ; $779a: $04
    ld hl, sp+$04                                 ; $779b: $f8 $04

jr_00a_779d:
    ld hl, sp+$04                                 ; $779d: $f8 $04
    ld hl, sp+$04                                 ; $779f: $f8 $04

jr_00a_77a1:
    ld hl, sp+$04                                 ; $77a1: $f8 $04
    ld hl, sp-$04                                 ; $77a3: $f8 $fc
    nop                                           ; $77a5: $00
    nop                                           ; $77a6: $00
    nop                                           ; $77a7: $00
    nop                                           ; $77a8: $00
    nop                                           ; $77a9: $00
    nop                                           ; $77aa: $00
    nop                                           ; $77ab: $00
    nop                                           ; $77ac: $00
    nop                                           ; $77ad: $00
    nop                                           ; $77ae: $00
    nop                                           ; $77af: $00
    nop                                           ; $77b0: $00
    nop                                           ; $77b1: $00
    nop                                           ; $77b2: $00
    nop                                           ; $77b3: $00
    inc bc                                        ; $77b4: $03
    nop                                           ; $77b5: $00
    ld c, $03                                     ; $77b6: $0e $03
    jr c, jr_00a_77c9                             ; $77b8: $38 $0f

    ld h, b                                       ; $77ba: $60
    ccf                                           ; $77bb: $3f
    jr nz, jr_00a_77dd                            ; $77bc: $20 $1f

    jr nc, jr_00a_77df                            ; $77be: $30 $1f

    db $10                                        ; $77c0: $10
    rrca                                          ; $77c1: $0f
    jr jr_00a_77d3                                ; $77c2: $18 $0f

    dec bc                                        ; $77c4: $0b
    inc b                                         ; $77c5: $04
    ld c, $04                                     ; $77c6: $0e $04
    inc b                                         ; $77c8: $04

jr_00a_77c9:
    nop                                           ; $77c9: $00
    nop                                           ; $77ca: $00
    nop                                           ; $77cb: $00
    nop                                           ; $77cc: $00
    nop                                           ; $77cd: $00
    nop                                           ; $77ce: $00
    nop                                           ; $77cf: $00
    nop                                           ; $77d0: $00
    nop                                           ; $77d1: $00
    ret nz                                        ; $77d2: $c0

jr_00a_77d3:
    nop                                           ; $77d3: $00
    ret nz                                        ; $77d4: $c0

    add b                                         ; $77d5: $80
    add b                                         ; $77d6: $80
    nop                                           ; $77d7: $00
    ret nz                                        ; $77d8: $c0

    add b                                         ; $77d9: $80
    ld [hl], b                                    ; $77da: $70
    ret nz                                        ; $77db: $c0

    inc e                                         ; $77dc: $1c

jr_00a_77dd:
    ldh a, [rTMA]                                 ; $77dd: $f0 $06

jr_00a_77df:
    db $fc                                        ; $77df: $fc
    inc b                                         ; $77e0: $04
    ld hl, sp+$0c                                 ; $77e1: $f8 $0c
    ld hl, sp-$78                                 ; $77e3: $f8 $88
    ldh a, [$f8]                                  ; $77e5: $f0 $f8
    jr nc, jr_00a_7819                            ; $77e7: $30 $30

    nop                                           ; $77e9: $00
    nop                                           ; $77ea: $00
    nop                                           ; $77eb: $00
    nop                                           ; $77ec: $00
    nop                                           ; $77ed: $00
    nop                                           ; $77ee: $00
    nop                                           ; $77ef: $00
    nop                                           ; $77f0: $00
    nop                                           ; $77f1: $00
    nop                                           ; $77f2: $00
    nop                                           ; $77f3: $00
    ccf                                           ; $77f4: $3f
    nop                                           ; $77f5: $00
    jr nz, jr_00a_7817                            ; $77f6: $20 $1f

    jr nz, jr_00a_7819                            ; $77f8: $20 $1f

    jr nz, jr_00a_781b                            ; $77fa: $20 $1f

    jr nz, @+$21                                  ; $77fc: $20 $1f

    jr nz, jr_00a_781f                            ; $77fe: $20 $1f

    jr nz, jr_00a_7821                            ; $7800: $20 $1f

    inc a                                         ; $7802: $3c
    inc de                                        ; $7803: $13
    ld [hl-], a                                   ; $7804: $32
    ld bc, $0021                                  ; $7805: $01 $21 $00
    nop                                           ; $7808: $00
    nop                                           ; $7809: $00
    nop                                           ; $780a: $00
    nop                                           ; $780b: $00
    nop                                           ; $780c: $00
    nop                                           ; $780d: $00
    nop                                           ; $780e: $00
    nop                                           ; $780f: $00
    nop                                           ; $7810: $00
    nop                                           ; $7811: $00
    nop                                           ; $7812: $00
    nop                                           ; $7813: $00
    ldh a, [rP1]                                  ; $7814: $f0 $00
    ld h, b                                       ; $7816: $60

jr_00a_7817:
    ret nz                                        ; $7817: $c0

    ld b, b                                       ; $7818: $40

jr_00a_7819:
    add b                                         ; $7819: $80
    ld b, b                                       ; $781a: $40

jr_00a_781b:
    add b                                         ; $781b: $80
    jr nz, @-$3e                                  ; $781c: $20 $c0

jr_00a_781e:
    db $10                                        ; $781e: $10

jr_00a_781f:
    ldh [$08], a                                  ; $781f: $e0 $08

jr_00a_7821:
    ldh a, [rDIV]                                 ; $7821: $f0 $04
    ld hl, sp+$08                                 ; $7823: $f8 $08
    ldh a, [rNR10]                                ; $7825: $f0 $10
    ldh [$a0], a                                  ; $7827: $e0 $a0
    ld b, b                                       ; $7829: $40
    ld b, b                                       ; $782a: $40
    nop                                           ; $782b: $00
    nop                                           ; $782c: $00
    nop                                           ; $782d: $00
    nop                                           ; $782e: $00
    nop                                           ; $782f: $00
    nop                                           ; $7830: $00
    nop                                           ; $7831: $00
    inc b                                         ; $7832: $04
    nop                                           ; $7833: $00
    rrca                                          ; $7834: $0f
    inc b                                         ; $7835: $04
    add hl, bc                                    ; $7836: $09
    rlca                                          ; $7837: $07
    jr @+$11                                      ; $7838: $18 $0f

    db $10                                        ; $783a: $10
    rrca                                          ; $783b: $0f
    jr nc, @+$21                                  ; $783c: $30 $1f

    jr nz, @+$21                                  ; $783e: $20 $1f

    ld a, b                                       ; $7840: $78
    cpl                                           ; $7841: $2f

jr_00a_7842:
    ld l, b                                       ; $7842: $68
    rlca                                          ; $7843: $07
    inc c                                         ; $7844: $0c
    rlca                                          ; $7845: $07
    inc b                                         ; $7846: $04
    inc bc                                        ; $7847: $03
    ld b, $03                                     ; $7848: $06 $03
    inc bc                                        ; $784a: $03
    ld bc, $0001                                  ; $784b: $01 $01 $00
    nop                                           ; $784e: $00
    nop                                           ; $784f: $00
    nop                                           ; $7850: $00
    nop                                           ; $7851: $00
    nop                                           ; $7852: $00
    nop                                           ; $7853: $00
    nop                                           ; $7854: $00
    nop                                           ; $7855: $00
    ret nz                                        ; $7856: $c0

    nop                                           ; $7857: $00
    ld [hl], b                                    ; $7858: $70
    ret nz                                        ; $7859: $c0

    jr @-$0e                                      ; $785a: $18 $f0

    jr nc, jr_00a_781e                            ; $785c: $30 $c0

    jr nz, @-$3e                                  ; $785e: $20 $c0

    jr nc, jr_00a_7842                            ; $7860: $30 $e0

    db $10                                        ; $7862: $10
    ldh [rNR23], a                                ; $7863: $e0 $18
    ldh a, [rNR23]                                ; $7865: $f0 $18
    ldh a, [rSVBK]                                ; $7867: $f0 $70
    ret nz                                        ; $7869: $c0

    ret nz                                        ; $786a: $c0

    nop                                           ; $786b: $00
    nop                                           ; $786c: $00
    nop                                           ; $786d: $00
    nop                                           ; $786e: $00
    nop                                           ; $786f: $00
    ldh [$03], a                                  ; $7870: $e0 $03
    nop                                           ; $7872: $00
    nop                                           ; $7873: $00
    ld h, b                                       ; $7874: $60
    ld a, a                                       ; $7875: $7f
    nop                                           ; $7876: $00
    ld e, [hl]                                    ; $7877: $5e
    ld a, $ff                                     ; $7878: $3e $ff
    ld [$c2a9], a                                 ; $787a: $ea $a9 $c2
    ld hl, $7870                                  ; $787d: $21 $70 $78
    ld de, $0901                                  ; $7880: $11 $01 $09
    call Call_000_05a8                            ; $7883: $cd $a8 $05
    ld de, $87c0                                  ; $7886: $11 $c0 $87
    ld b, $00                                     ; $7889: $06 $00
    rst $18                                       ; $788b: $df
    inc c                                         ; $788c: $0c
    ld bc, $bfcd                                  ; $788d: $01 $cd $bf
    ld a, c                                       ; $7890: $79
    ld a, $04                                     ; $7891: $3e $04
    ld hl, $78ce                                  ; $7893: $21 $ce $78
    call Call_000_23e8                            ; $7896: $cd $e8 $23
    ret                                           ; $7899: $c9


    jr z, jr_00a_789c                             ; $789a: $28 $00

jr_00a_789c:
    ld e, b                                       ; $789c: $58
    ld bc, $0028                                  ; $789d: $01 $28 $00
    cp b                                          ; $78a0: $b8
    nop                                           ; $78a1: $00
    ld [$5801], sp                                ; $78a2: $08 $01 $58
    ld bc, $00e8                                  ; $78a5: $01 $e8 $00
    sbc b                                         ; $78a8: $98
    nop                                           ; $78a9: $00
    xor b                                         ; $78aa: $a8
    nop                                           ; $78ab: $00
    adc b                                         ; $78ac: $88
    nop                                           ; $78ad: $00
    ld e, b                                       ; $78ae: $58
    nop                                           ; $78af: $00
    ret z                                         ; $78b0: $c8

    nop                                           ; $78b1: $00
    xor b                                         ; $78b2: $a8
    nop                                           ; $78b3: $00
    ld hl, sp+$00                                 ; $78b4: $f8 $00
    add sp, $00                                   ; $78b6: $e8 $00
    jr z, @+$03                                   ; $78b8: $28 $01

    add sp, $00                                   ; $78ba: $e8 $00
    jr z, jr_00a_78bf                             ; $78bc: $28 $01

    ld a, b                                       ; $78be: $78

jr_00a_78bf:
    nop                                           ; $78bf: $00
    ld l, b                                       ; $78c0: $68
    ld bc, $0058                                  ; $78c1: $01 $58 $00
    jr z, jr_00a_78c7                             ; $78c4: $28 $01

    ld a, b                                       ; $78c6: $78

jr_00a_78c7:
    nop                                           ; $78c7: $00
    cp b                                          ; $78c8: $b8
    nop                                           ; $78c9: $00
    jr jr_00a_78cd                                ; $78ca: $18 $01

    ret c                                         ; $78cc: $d8

jr_00a_78cd:
    nop                                           ; $78cd: $00
    ld a, [$c2a7]                                 ; $78ce: $fa $a7 $c2
    cp $ff                                        ; $78d1: $fe $ff
    jp z, Jump_00a_7966                           ; $78d3: $ca $66 $79

    ld a, [$c2a7]                                 ; $78d6: $fa $a7 $c2
    add a                                         ; $78d9: $87
    add a                                         ; $78da: $87
    add $9c                                       ; $78db: $c6 $9c
    ld l, a                                       ; $78dd: $6f
    adc $78                                       ; $78de: $ce $78
    sub l                                         ; $78e0: $95
    ld h, a                                       ; $78e1: $67
    ld a, [hl+]                                   ; $78e2: $2a
    ld d, [hl]                                    ; $78e3: $56
    ld e, a                                       ; $78e4: $5f
    ld hl, $c2a2                                  ; $78e5: $21 $a2 $c2
    ld a, [hl+]                                   ; $78e8: $2a
    ld h, [hl]                                    ; $78e9: $66
    ld l, a                                       ; $78ea: $6f
    srl h                                         ; $78eb: $cb $3c
    rr l                                          ; $78ed: $cb $1d
    srl h                                         ; $78ef: $cb $3c
    rr l                                          ; $78f1: $cb $1d
    srl h                                         ; $78f3: $cb $3c
    rr l                                          ; $78f5: $cb $1d
    srl h                                         ; $78f7: $cb $3c
    rr l                                          ; $78f9: $cb $1d
    srl h                                         ; $78fb: $cb $3c
    rr l                                          ; $78fd: $cb $1d
    ld a, l                                       ; $78ff: $7d
    sub e                                         ; $7900: $93
    ld l, a                                       ; $7901: $6f
    ld a, h                                       ; $7902: $7c
    sbc d                                         ; $7903: $9a
    ld h, a                                       ; $7904: $67
    push hl                                       ; $7905: $e5
    ld a, [$c2a7]                                 ; $7906: $fa $a7 $c2
    add a                                         ; $7909: $87
    add a                                         ; $790a: $87
    add $9a                                       ; $790b: $c6 $9a
    ld l, a                                       ; $790d: $6f
    adc $78                                       ; $790e: $ce $78
    sub l                                         ; $7910: $95
    ld h, a                                       ; $7911: $67
    ld a, [hl+]                                   ; $7912: $2a
    ld d, [hl]                                    ; $7913: $56
    ld e, a                                       ; $7914: $5f
    ld hl, $c2a0                                  ; $7915: $21 $a0 $c2
    ld a, [hl+]                                   ; $7918: $2a
    ld h, [hl]                                    ; $7919: $66
    ld l, a                                       ; $791a: $6f
    srl h                                         ; $791b: $cb $3c
    rr l                                          ; $791d: $cb $1d
    srl h                                         ; $791f: $cb $3c
    rr l                                          ; $7921: $cb $1d
    srl h                                         ; $7923: $cb $3c
    rr l                                          ; $7925: $cb $1d
    srl h                                         ; $7927: $cb $3c
    rr l                                          ; $7929: $cb $1d
    srl h                                         ; $792b: $cb $3c
    rr l                                          ; $792d: $cb $1d
    ld a, l                                       ; $792f: $7d
    sub e                                         ; $7930: $93
    ld l, a                                       ; $7931: $6f
    ld a, h                                       ; $7932: $7c
    sbc d                                         ; $7933: $9a
    ld h, a                                       ; $7934: $67
    pop de                                        ; $7935: $d1
    call Call_000_1a03                            ; $7936: $cd $03 $1a
    ld hl, $0000                                  ; $7939: $21 $00 $00
    ld a, l                                       ; $793c: $7d
    sub c                                         ; $793d: $91
    ld l, a                                       ; $793e: $6f
    ld a, h                                       ; $793f: $7c
    sbc b                                         ; $7940: $98
    ld h, a                                       ; $7941: $67
    ld bc, $0800                                  ; $7942: $01 $00 $08
    add hl, bc                                    ; $7945: $09
    ld a, h                                       ; $7946: $7c
    and $f0                                       ; $7947: $e6 $f0
    ld l, a                                       ; $7949: $6f
    ld h, $00                                     ; $794a: $26 $00
    add hl, hl                                    ; $794c: $29
    add hl, hl                                    ; $794d: $29
    ld de, $7470                                  ; $794e: $11 $70 $74
    add hl, de                                    ; $7951: $19
    ld de, $a000                                  ; $7952: $11 $00 $a0
    ld c, $04                                     ; $7955: $0e $04
    call Call_000_0468                            ; $7957: $cd $68 $04
    ld de, $0810                                  ; $795a: $11 $10 $08
    ld bc, $0900                                  ; $795d: $01 $00 $09
    call Call_000_26a4                            ; $7960: $cd $a4 $26
    call Call_00a_7967                            ; $7963: $cd $67 $79

Jump_00a_7966:
    ret                                           ; $7966: $c9


Call_00a_7967:
    ldh a, [$8c]                                  ; $7967: $f0 $8c
    rrca                                          ; $7969: $0f
    and $07                                       ; $796a: $e6 $07
    ld hl, $79b7                                  ; $796c: $21 $b7 $79
    add l                                         ; $796f: $85
    ld l, a                                       ; $7970: $6f
    jr nc, jr_00a_7974                            ; $7971: $30 $01

    inc h                                         ; $7973: $24

jr_00a_7974:
    ld b, [hl]                                    ; $7974: $46
    ld a, [$c2a7]                                 ; $7975: $fa $a7 $c2
    add a                                         ; $7978: $87
    add a                                         ; $7979: $87

Call_00a_797a:
    add $9c                                       ; $797a: $c6 $9c
    ld l, a                                       ; $797c: $6f
    adc $78                                       ; $797d: $ce $78
    sub l                                         ; $797f: $95
    ld h, a                                       ; $7980: $67
    ld a, [hl+]                                   ; $7981: $2a
    ld h, [hl]                                    ; $7982: $66
    ld l, a                                       ; $7983: $6f
    ld a, l                                       ; $7984: $7d
    sub b                                         ; $7985: $90
    ld l, a                                       ; $7986: $6f
    jr nc, jr_00a_798a                            ; $7987: $30 $01

    dec h                                         ; $7989: $25

jr_00a_798a:
    add hl, hl                                    ; $798a: $29
    add hl, hl                                    ; $798b: $29
    add hl, hl                                    ; $798c: $29
    add hl, hl                                    ; $798d: $29
    add hl, hl                                    ; $798e: $29
    push hl                                       ; $798f: $e5
    ld a, [$c2a7]                                 ; $7990: $fa $a7 $c2
    add a                                         ; $7993: $87
    add a                                         ; $7994: $87
    add $9a                                       ; $7995: $c6 $9a
    ld l, a                                       ; $7997: $6f
    adc $78                                       ; $7998: $ce $78
    sub l                                         ; $799a: $95
    ld h, a                                       ; $799b: $67
    ld a, [hl+]                                   ; $799c: $2a
    ld h, [hl]                                    ; $799d: $66
    ld l, a                                       ; $799e: $6f
    ld de, $fff8                                  ; $799f: $11 $f8 $ff
    add hl, de                                    ; $79a2: $19
    ld a, l                                       ; $79a3: $7d
    sub b                                         ; $79a4: $90
    ld l, a                                       ; $79a5: $6f
    jr nc, jr_00a_79a9                            ; $79a6: $30 $01

    dec h                                         ; $79a8: $25

jr_00a_79a9:
    add hl, hl                                    ; $79a9: $29
    add hl, hl                                    ; $79aa: $29
    add hl, hl                                    ; $79ab: $29
    add hl, hl                                    ; $79ac: $29
    add hl, hl                                    ; $79ad: $29
    pop de                                        ; $79ae: $d1
    ld b, $60                                     ; $79af: $06 $60
    ld c, $7c                                     ; $79b1: $0e $7c
    call Call_000_27b4                            ; $79b3: $cd $b4 $27
    ret                                           ; $79b6: $c9


    nop                                           ; $79b7: $00
    ld bc, $0302                                  ; $79b8: $01 $02 $03
    inc bc                                        ; $79bb: $03
    ld [bc], a                                    ; $79bc: $02
    ld bc, $fa00                                  ; $79bd: $01 $00 $fa
    and a                                         ; $79c0: $a7
    jp nz, $fffe                                  ; $79c1: $c2 $fe $ff

    jp z, Jump_00a_7a5d                           ; $79c4: $ca $5d $7a

    ld a, $78                                     ; $79c7: $3e $78
    ldh [rWY], a                                  ; $79c9: $e0 $4a
    ld a, $01                                     ; $79cb: $3e $01
    ldh [$96], a                                  ; $79cd: $e0 $96
    ldh [rSVBK], a                                ; $79cf: $e0 $70
    ld hl, $70b4                                  ; $79d1: $21 $b4 $70
    ld de, $de00                                  ; $79d4: $11 $00 $de
    ld c, $06                                     ; $79d7: $0e $06
    call Call_000_03eb                            ; $79d9: $cd $eb $03
    ld hl, $de22                                  ; $79dc: $21 $22 $de
    ld a, $f0                                     ; $79df: $3e $f0
    ld c, $10                                     ; $79e1: $0e $10

jr_00a_79e3:
    ld [hl+], a                                   ; $79e3: $22
    inc a                                         ; $79e4: $3c
    dec c                                         ; $79e5: $0d
    jr nz, jr_00a_79e3                            ; $79e6: $20 $fb

    ld hl, $7114                                  ; $79e8: $21 $14 $71
    ld de, $df00                                  ; $79eb: $11 $00 $df
    ld c, $60                                     ; $79ee: $0e $60

jr_00a_79f0:
    ld a, [hl+]                                   ; $79f0: $2a
    or $80                                        ; $79f1: $f6 $80
    ld [de], a                                    ; $79f3: $12
    inc de                                        ; $79f4: $13
    dec c                                         ; $79f5: $0d
    jr nz, jr_00a_79f0                            ; $79f6: $20 $f8

    ld a, [$c2a7]                                 ; $79f8: $fa $a7 $c2
    add $06                                       ; $79fb: $c6 $06
    ld l, a                                       ; $79fd: $6f
    adc $1a                                       ; $79fe: $ce $1a
    sub l                                         ; $7a00: $95
    ld h, a                                       ; $7a01: $67
    rst $18                                       ; $7a02: $df
    inc a                                         ; $7a03: $3c
    dec b                                         ; $7a04: $05
    cpl                                           ; $7a05: $2f
    inc a                                         ; $7a06: $3c
    add $14                                       ; $7a07: $c6 $14
    srl a                                         ; $7a09: $cb $3f
    ld de, $de20                                  ; $7a0b: $11 $20 $de
    add e                                         ; $7a0e: $83
    ld e, a                                       ; $7a0f: $5f
    jr nc, jr_00a_7a13                            ; $7a10: $30 $01

    inc d                                         ; $7a12: $14

jr_00a_7a13:
    ld hl, $dc00                                  ; $7a13: $21 $00 $dc
    ld c, $80                                     ; $7a16: $0e $80

jr_00a_7a18:
    ld a, $ff                                     ; $7a18: $3e $ff
    ld [hl+], a                                   ; $7a1a: $22
    xor a                                         ; $7a1b: $af
    ld [hl+], a                                   ; $7a1c: $22
    dec c                                         ; $7a1d: $0d
    jr nz, jr_00a_7a18                            ; $7a1e: $20 $f8

    ld a, [$c2a7]                                 ; $7a20: $fa $a7 $c2
    add $06                                       ; $7a23: $c6 $06
    ld l, a                                       ; $7a25: $6f
    adc $1a                                       ; $7a26: $ce $1a
    sub l                                         ; $7a28: $95
    ld h, a                                       ; $7a29: $67
    ld de, $c490                                  ; $7a2a: $11 $90 $c4
    rst $18                                       ; $7a2d: $df
    ld e, h                                       ; $7a2e: $5c
    dec b                                         ; $7a2f: $05
    ld hl, $c490                                  ; $7a30: $21 $90 $c4
    ld de, $dc00                                  ; $7a33: $11 $00 $dc
    rst $18                                       ; $7a36: $df
    ld h, $03                                     ; $7a37: $26 $03
    ld hl, $de00                                  ; $7a39: $21 $00 $de
    ld de, $9c00                                  ; $7a3c: $11 $00 $9c
    ld c, $06                                     ; $7a3f: $0e $06
    call Call_000_0468                            ; $7a41: $cd $68 $04
    ld hl, $df00                                  ; $7a44: $21 $00 $df
    ld de, $bc00                                  ; $7a47: $11 $00 $bc
    ld c, $06                                     ; $7a4a: $0e $06
    call Call_000_0468                            ; $7a4c: $cd $68 $04
    call Call_000_2e3b                            ; $7a4f: $cd $3b $2e
    ld hl, $dc00                                  ; $7a52: $21 $00 $dc
    ld de, $8f00                                  ; $7a55: $11 $00 $8f
    ld c, $10                                     ; $7a58: $0e $10
    call Call_000_0468                            ; $7a5a: $cd $68 $04

Jump_00a_7a5d:
    ret                                           ; $7a5d: $c9


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

Jump_00a_7fcf:
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
